@interface BrowserController
+ (WKProcessPool)newProcessPool;
+ (void)_sendABGroupIdentifierToProcessPool:(uint64_t)pool;
+ (void)_sendABTestingEnabledStateToProcessPool:(uint64_t)pool;
- (BOOL)_animationsAreEnabled;
- (BOOL)_canScrollToTopInView:(uint64_t)view;
- (BOOL)_hasPresentedViewController;
- (BOOL)_isInContinuousMode;
- (BOOL)_isScrolledToThresholdForContinuousPrefetching;
- (BOOL)_isTabBarShown;
- (BOOL)_isVerticallyConstrained;
- (BOOL)_shouldUseNarrowLayout;
- (BOOL)_showingTabDocumentWithURL;
- (BOOL)_stateForBookmarksViewSortOptionCommand:(uint64_t)command;
- (BOOL)_stateForSetBookmarksViewModeCompactCommand;
- (BOOL)_stateForSetBookmarksViewModeLargeCommand;
- (BOOL)_stateForToggleBookmarksViewFolderModeSeparatedCommand;
- (BOOL)_tabViewCanSearchTabs;
- (BOOL)activeTabIsBlank;
- (BOOL)activeWebExtensionWindowIsFocused;
- (BOOL)activeWindowIsForeground;
- (BOOL)addReadingListBookmarkForCurrentTab;
- (BOOL)areCustomTabGroupsEnabled;
- (BOOL)avoidSnapshotOfActiveTabIfPossible;
- (BOOL)backgroundColorInTabBarEnabled;
- (BOOL)browserViewControllerShouldTemporarilyHideBottomToolbar:(id)toolbar;
- (BOOL)canAddToBookmarks;
- (BOOL)canAddToQuickNote;
- (BOOL)canAddToReadingList;
- (BOOL)canAutoFocusURLField;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canFindOnPage;
- (BOOL)canFindOnTabWithUUID:(id)d;
- (BOOL)canHideBars;
- (BOOL)canMoveToTabGroup;
- (BOOL)canNavigateContinuousReadingListInDirection:(unint64_t)direction;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canPrintCurrentTab;
- (BOOL)canReadActiveLanguage;
- (BOOL)canReadThis;
- (BOOL)canShowProfileInNavigationBar;
- (BOOL)canTogglePinningTab;
- (BOOL)canToggleVisibilityForView:(unint64_t)view;
- (BOOL)catalogPopoverIsShowing;
- (BOOL)catalogViewControllerPresentingInPortraitAspectRatio:(id)ratio;
- (BOOL)catalogViewControllerShouldRequestNetworkedSuggestions:(id)suggestions;
- (BOOL)catalogViewControllerShouldSuppressPopover:(id)popover;
- (BOOL)catalogViewControllerShouldUsePopoverForCompletions:(id)completions;
- (BOOL)catalogViewControllerUnifiedFieldCanBecomeFirstResponder:(id)responder;
- (BOOL)containsTabWithUUID:(id)d;
- (BOOL)currentTabIsPinned;
- (BOOL)dynamicBarAnimator:(id)animator canTransitionToState:(int64_t)state byDraggingWithOffset:(double)offset;
- (BOOL)favoritesAreShowingInPopover;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)getContextForCurrentPageWithCompletionHandler:(id)handler;
- (BOOL)hasDedicatedDownloadsToolbarItem;
- (BOOL)hasDedicatedExtensionsButton;
- (BOOL)hasDedicatedMediaStateButton;
- (BOOL)hasMultipleProfiles;
- (BOOL)hasUnviewedDownloads;
- (BOOL)interfaceFillsScreen;
- (BOOL)isAnyPageLoaded;
- (BOOL)isContinuousReadingDocument:(id)document;
- (BOOL)isInDefaultProfile;
- (BOOL)isPresentingModalBookmarksController;
- (BOOL)isReaderAvailable;
- (BOOL)isShowingAppInfoOverlay;
- (BOOL)isShowingCompletionDetail;
- (BOOL)isShowingContinuousReadingList;
- (BOOL)isShowingInOneThirdMode;
- (BOOL)isShowingPrivateTabs;
- (BOOL)isShowingReader;
- (BOOL)isShowingStartPage;
- (BOOL)isViewVisible:(unint64_t)visible;
- (BOOL)previewController:(id)controller shouldOpenURL:(id)l forPreviewItem:(id)item;
- (BOOL)readerViewIsVisibleForMailContentProvider:(id)provider;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (BOOL)shouldDeferHistoryUpdatesForWKWebView:(id)view;
- (BOOL)shouldIncreaseTopSpacingForStartPageController:(id)controller;
- (BOOL)shouldReportUnifiedTabBarAnalytics;
- (BOOL)shouldShowRecentSearches;
- (BOOL)shouldShowTurnOnLockedPrivateBrowsingSheet;
- (BOOL)shouldSnapshotActiveTab;
- (BOOL)shouldStayInFocusedTabGroupForExternalLinks;
- (BOOL)showDemoModeFeatureDisabledAlert;
- (BOOL)tabBarIsCurrentlyScrollable;
- (BOOL)tabDocument:(id)document canShowDownload:(id)download;
- (BOOL)tabDocumentCanBecomeCurrentUserActivity:(id)activity;
- (BOOL)tabDocumentCanBeginInputSessionForStreamlinedLogin:(id)login;
- (BOOL)tabDocumentCanCloseWindow:(id)window;
- (BOOL)tabDocumentCanDisplayModalUI:(id)i;
- (BOOL)tabDocumentCanDownloadFile:(id)file;
- (BOOL)tabDocumentCanFindNextOrPrevious:(id)previous;
- (BOOL)tabDocumentCanRedirectToExternalApplication:(id)application;
- (BOOL)tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:(id)input;
- (BOOL)tabDocumentIsBackgroundPreloading:(id)preloading;
- (BOOL)tabDocumentShouldDeferAppBannerRemoval:(id)removal;
- (BOOL)tabDocumentShouldFillStringForFind:(id)find;
- (BOOL)tabDocumentShouldHandleAuthentication:(id)authentication;
- (BOOL)tabDocumentShouldHandleCertificateError:(id)error;
- (BookmarksNavigationController)_newModalBookmarksControllerWithCollection:(uint64_t)collection showsOnlyActiveCollection:;
- (BookmarksNavigationController)bookmarksNavigationController;
- (BrowserController)initWithStateData:(id)data browserWindowController:(id)controller savedState:(id)state controlledByAutomation:(BOOL)automation;
- (BrowserController)initWithUUID:(id)d sceneID:(id)iD browserWindowController:(id)controller tabGroupManager:(id)manager controlledByAutomation:(BOOL)automation;
- (BrowserController)initWithWindowState:(id)state browserWindowController:(id)controller tabGroupManager:(id)manager controlledByAutomation:(BOOL)automation;
- (BrowserWindowController)browserWindowController;
- (CGRect)webExtensionWindowGeometry;
- (CGSize)webExtensionTabSize;
- (CGSize)windowSize;
- (ContinuousReadingController)continuousReadingController;
- (LibraryConfiguration)_libraryConfiguration;
- (NSArray)preferredFocusEnvironments;
- (NSArray)tabDocumentsForActiveTabThatCanReceiveMessages;
- (NSArray)tabsWithSound;
- (NSArray)webExtensionWindows;
- (NSString)currentBookmarksCollection;
- (NSString)effectiveProfileIdentifier;
- (OneStepBookmarkingController)oneStepBookmarkingController;
- (SFSiriLinkCoordinator)siriLinkCoordinator;
- (TabBarManager)tabBarManager;
- (TabHoverPreview)tabHoverPreview;
- (UIAction)sidebarAction;
- (UIEdgeInsets)finalObscuredInsetsForScrollView:(id)view withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (UIFocusEnvironment)parentFocusEnvironment;
- (UIFocusItemContainer)focusItemContainer;
- (UIViewController)viewControllerToPresentFrom;
- (UIViewController)viewControllerToPresentFromNavigationBar;
- (UIWindowScene)scene;
- (UnifiedField)unifiedField;
- (UniversalSearchSession)universalSearchSession;
- (WBProfile)activeProfile;
- (WBProfile)effectiveProfile;
- (WBSAppReviewPromptManager)appReviewPromptManager;
- (WBSWebExtensionWindow)activeWebExtensionWindow;
- (WKProcessPool)processPool;
- (_SFActivityViewController)presentedActivityViewController;
- (_SFBrowserConfiguration)configuration;
- (_SFBrowserWindowStateData)windowStateData;
- (_SFPageFormatMenuController)pageFormatMenuController;
- (_SFPageZoomPreferenceManager)pageZoomManager;
- (_SFPerSitePreferencesVendor)perSitePreferencesVendor;
- (_SFSearchEngineInfo)activeSearchEngine;
- (double)_frameForCurrentPageBannerView;
- (double)_frameForScreenTimeOverlayViewControllerView;
- (double)_offsetToPositionToastViewControllerOffscreen:(uint64_t)offscreen;
- (double)_popoverPresentationVerticalOffset;
- (double)_refreshControlHeight;
- (double)_verticalOffsetForContinuousReadingBanner;
- (double)additionalContentHeightForBanners;
- (double)browserViewController:(id)controller adjustedBottomContentInset:(double)inset;
- (double)browserViewController:(id)controller adjustedBottomObscuredInset:(double)inset;
- (double)browserViewController:(id)controller adjustedTopObscuredInsetForBanners:(double)banners;
- (double)catalogViewControllerPopoverWidth:(id)width;
- (double)continuousReadingViewControllerNextWebViewLandingOffset:(id)offset includeBottomBar:(BOOL)bar;
- (double)dynamicBarAnimator:(id)animator minimumTopBarHeightForOffset:(double)offset;
- (double)verticalScrollOffsetForReaderViewInTabDocument:(id)document;
- (id)_addAllTabsToBookmarksLabel;
- (id)_cachedDocumentForContinuousReadingItem:(void *)item;
- (id)_catalogViewController;
- (id)_closeAllTabsLabel;
- (id)_closeAllTabsMatchingSearchLabel;
- (id)_discoverabilityTitleForCommandTapModifierFollowingUserPreference:(uint64_t)preference;
- (id)_findCommandTitle;
- (id)_formatMenuButtonPopoverSourceInfo;
- (id)_lastClosedTabStateData;
- (id)_navigationControllerForTabGroupPicker;
- (id)_nonBlankCurrentTabs;
- (id)_openURLNavigationIntentForSceneConnectionOptions:(uint64_t)options;
- (id)_participantsListForCollaborationView:(id *)view;
- (id)_screenTimeHostingViewControllerForTabDocument:(id)document;
- (id)_screenTimeOverlayViewControllerForTabDocument:(void *)document;
- (id)_sidebarViewController;
- (id)_stringByRemovingContentBetweenZeroWidthSpacesForText:(uint64_t)text;
- (id)_tabDocumentForNextContinuousItem;
- (id)_titleForToggleBookmarksKeyCommand;
- (id)_titleForToggleCloudTabsKeyCommand;
- (id)_titleForToggleFavoritesBarKeyCommand;
- (id)_titleForToggleHistoryKeyCommand;
- (id)_titleForToggleReadingListKeyCommand;
- (id)_titleForToggleSharedWithYouKeyCommand;
- (id)_titleForToggleWebpageStatusBar;
- (id)_topContinuousReadingBanner;
- (id)_topNavigationBar;
- (id)_updateContinuousReadingViewControllerFrame;
- (id)_visibleAppBanner;
- (id)activeLibraryType;
- (id)activeTabUUIDString;
- (id)activityItemsConfiguration;
- (id)barManager:(id)manager visibleBarItemsForLayout:(int64_t)layout availableItems:(id)items;
- (id)bookmarksNavigationControllerCurrentContinuousReadingItem:(id)item;
- (id)borrowContentViewControllerForTab:(id)tab;
- (id)catalogViewControllerStartPageVisualStyleProvider:(id)provider;
- (id)contentContainerView;
- (id)createCatalogViewControllerIfNeeded;
- (id)createNewTabGroupWithTitle:(id)title;
- (id)currentContentUUIDForNavigationBar:(id)bar;
- (id)detachFromScene;
- (id)downloadsViewControllerForActionPanel:(id)panel;
- (id)existingUnnamedTabGroupForProfileWithIdentifier:(id)identifier;
- (id)imageForNewDefaultWindowCommand;
- (id)itemProviderForNavigationBar:(id)bar;
- (id)itemTitleForCloudSharingController:(id)controller;
- (id)linkPreviewViewControllerForNavigationIntent:(id)intent;
- (id)linkPreviewViewControllerForURL:(id)l;
- (id)loadURLInNewTab:(id)tab inBackground:(BOOL)background;
- (id)loadURLInNewTab:(id)tab inBackground:(BOOL)background animated:(BOOL)animated;
- (id)loadURLInNewTab:(id)tab title:(id)title UUID:(id)d inBackground:(BOOL)background animated:(BOOL)animated restoringCloudTab:(BOOL)cloudTab;
- (id)makeSidebarButton;
- (id)makeTabOverview;
- (id)moveMenuOnPageMenuWithDismissHandler:(id)handler;
- (id)navigationBar:(id)bar mediaStateMuteButtonMenuElementsForItem:(id)item;
- (id)navigationBarURLForSharing:(id)sharing;
- (id)newCollaborationButton;
- (id)newCollaborationButtonWithActiveTabGroup:(id)group existingShare:(id)share;
- (id)nextResponder;
- (id)pageZoomPreferenceManagerForTabDocument:(id)document;
- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item;
- (id)printControllerForContentProvider:(id)provider;
- (id)readerControllerForMailContentProvider:(id)provider;
- (id)showTabGroupPicker:(id)picker;
- (id)sidebarContentViewControllerForSidebarUIProxy:(id)proxy;
- (id)sortOptionFromBookmarksViewSortOptionCommandPropertyList:(uint64_t)list;
- (id)tabContentContainerView;
- (id)titleForNewDefaultWindowCommand;
- (id)undoManager;
- (id)webExtensionWindowForTab:(id)tab;
- (id)webExtensionWindowWithID:(double)d;
- (id)webViewForMailContentProvider:(id)provider;
- (int64_t)analyticsLayoutProvenance;
- (int64_t)bookmarksPresentationStyleForViewOfSize:(CGSize)size;
- (int64_t)browserViewController:(id)controller sidebarStyleForViewSize:(CGSize)size;
- (int64_t)browserViewController:(id)controller toolbarPlacementForViewSize:(CGSize)size;
- (int64_t)dataOwnerForNavigationBar:(id)bar;
- (int64_t)idOfParsecQueryOriginatingFromSearchSuggestion;
- (int64_t)orderIndexForTab:(id)tab;
- (int64_t)overrideBarTintStyleForUnifiedBar;
- (int64_t)siriReaderPlaybackStateForActiveTab;
- (int64_t)tabBarDisplayMode;
- (int64_t)updatePolicyForStartPageController:(id)controller;
- (uint64_t)_bookmarksBarLabelButtonDisplayStyle;
- (uint64_t)_canPrintForTabDocument:(void *)document;
- (uint64_t)_canSaveWebpage;
- (uint64_t)_canUpdateInterfaceWithTabDocument:(uint64_t)document;
- (uint64_t)_commitSpeculativeLoadForURL:(uint64_t)l;
- (uint64_t)_currentBarContentMode;
- (uint64_t)_currentlyEditingText;
- (uint64_t)_dismissTransientUIAnimated:(uint64_t)animated dismissalOptions:(void *)options completionHandler:;
- (uint64_t)_isReaderModeFormatMenuItemAvailable;
- (uint64_t)_isShowingCollectionInSidebar:(id *)sidebar;
- (uint64_t)_isStartPageOverriddenByExtensionInTabDocument:(uint64_t)document;
- (uint64_t)_isTabDocumentFrontMostForDigitalHealth:(uint64_t)health;
- (uint64_t)_isWindowLockedForPrivateBrowsing;
- (uint64_t)_notFocusedEmbeddedState;
- (uint64_t)_obscuredInsetsIncludeRefreshControl;
- (uint64_t)_prefersShowingBookmarksBar;
- (uint64_t)_setShowingOverlayForBanner:(int)banner showing:;
- (uint64_t)_shareButtonEnabled;
- (uint64_t)_shouldHideBarsForSizeChange;
- (uint64_t)_shouldHideCatalogViewControllerForSizeChange;
- (uint64_t)_shouldPresentViewControllerUsingAdaptivePopover:(uint64_t)IsPad;
- (uint64_t)_shouldShowBarsForSizeChange;
- (uint64_t)_shouldShowBookmarksBar;
- (uint64_t)_shouldShowBookmarksBarForViewSize:(uint64_t)size;
- (uint64_t)_shouldShowCollectionInSidebar;
- (uint64_t)_shouldShowNewReadingListBehaviorAlert;
- (uint64_t)_shouldShowSidebarForSizeChange;
- (uint64_t)_shouldShowSidebarForSizeChangeToSize:(double)size;
- (uint64_t)_shouldUseTabBar;
- (uint64_t)_showOrHideSidebarInLandscapeIfNecessary;
- (uint64_t)_spawnNewTabFromPinnedTabIfNeededForSpeculativeDocument:(uint64_t)document;
- (uint64_t)_tabIndexForKeyCommand:(uint64_t)command;
- (uint64_t)_updateConfiguration;
- (uint64_t)_updateContinuousReadingViewControllerFrame;
- (uint64_t)_updateDisableBarHiding;
- (uint64_t)_updateLibraryTypeForNewDocument;
- (uint64_t)_wantsURLFieldAutoFocus;
- (uint64_t)effectiveNewDocumentShortcutBehavior;
- (uint64_t)handleOpenURLContextsForReadingListWidget:(void *)widget;
- (uint64_t)shouldShowSidebarInLandscape;
- (unint64_t)_shouldShowTabBar;
- (unint64_t)downloadsCount;
- (unint64_t)numberOfTabsInCurrentTabBar;
- (unint64_t)popUpPolicyForTabDocument:(id)document;
- (void)_ABGroupIdentifierDidChange:(id)change;
- (void)_actuallyPresentToastViewController:(uint64_t)controller;
- (void)_addBookmarkForCurrentTabKeyPressed:(id *)pressed;
- (void)_addBookmarkForCurrentTabKeyPressed:(void *)pressed title:;
- (void)_addBookmarkForCurrentTabKeyPressed:(void *)pressed title:(int)title addToFavorites:;
- (void)_addInteractionsForTabBar:(uint64_t)bar;
- (void)_automaticPasswordInputViewAutoFillContextProviderRequiredNotification:(id)notification;
- (void)_automaticPasswordInputViewNotification:(id)notification;
- (void)_backgroundImageFileModifiedRemotely:(id)remotely;
- (void)_backgroundImageNeedsCloudKitUpdate:(id)update;
- (void)_beganSharingTabGroup:(id)group;
- (void)_bookmarksDidReload:(id)reload;
- (void)_cancelContentScrollGestures;
- (void)_cancelPendingAutoFillInternalFeedbackToastDismissal;
- (void)_cancelSpeculativeLoadForDocument:(uint64_t)document;
- (void)_checkWebViewVisibilityAfterExitingTabView;
- (void)_clearNextContinuousItemDocument;
- (void)_clearPreviousContinuousItemDocument;
- (void)_closePreviewDocumentTimerFired:(id)fired;
- (void)_closeSpeculativelyLoadedDocument:(uint64_t)document;
- (void)_commitToSpeculativeLoad;
- (void)_commitToSpeculativeLoadForDocument:(id *)document;
- (void)_commitToTabDocumentForNextContinuousItem;
- (void)_commitToTabDocumentForPreviousContinuousItem;
- (void)_completionItem:(void *)item wasAcceptedForString:;
- (void)_contentBlockersPerSitePreferenceDidChange:(id)change;
- (void)_contentContainerViewFrameDidChange;
- (void)_debugAutoFillConsoleLoggingEnabledPreferenceDidChange:(id)change;
- (void)_defaultSearchEngineDidChange:(id)change;
- (void)_didChangePowerState;
- (void)_didChangeToFirstResponder:(id)responder;
- (void)_didDismissManageExtensionsViewController:(id)controller;
- (void)_dismissAutoFillInternalFeedbackToast:(id *)toast;
- (void)_doSearch:(void *)search;
- (void)_downloadManagerDidFinishLastDownload:(id)download;
- (void)_downloadsDidChange:(id)change;
- (void)_downloadsTotalProgressDidChange:(id)change;
- (void)_emailCurrentPageWithPreferredContentType:(uint64_t)type;
- (void)_enterYttriumStateTimerFired;
- (void)_extractTextFromReaderWebViewOfTab:(void *)tab withCompletion:;
- (void)_flushPendingSnapshotsDidComplete;
- (void)_focusNavigationBarForVoiceSearch:(void *)search completionHandler:;
- (void)_focusNavigationBarWithCompletionHandler:(uint64_t)handler;
- (void)_fullyRemoveDigitalHealthTreatmentForTabDocumentIfNecessary:(void *)necessary;
- (void)_goBackAllowingNewTabToSpawnIfNeeded:(id *)needed;
- (void)_goForwardAllowingNewTabToSpawnIfNeeded:(id *)needed;
- (void)_hasUnviewedDownloadsDidChange:(id)change;
- (void)_hideDigitalHealthOverlayForTabDocument:(id *)document;
- (void)_hideReaderForTabDocument:(char)document animated:(uint64_t)animated deactivationMode:(void *)mode completion:;
- (void)_initSubviews;
- (void)_insertScreenTimeLockoutShieldIntoContentViewForTab:(uint64_t)tab animated:;
- (void)_invalidatePreviewDocumentCloseTimer;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_loadAddressAsSpeculativeLoadIfNeeded:(void *)needed;
- (void)_loadIntentAsSpeculativeLoadIfNeeded:(void *)needed;
- (void)_loadPreviousContinuousDocumentIfNeeded;
- (void)_loadURL:(int)l inExternalApplication:(int)application forImageAttribution:;
- (void)_lockedPrivateBrowsingStateDidChange;
- (void)_logTabClosingWithEventSender:(uint64_t)sender tabClosingAction:(uint64_t)action numberOfTabsClosed:;
- (void)_logTabClosingWithKeyboardShortcut:(uint64_t)shortcut tabClosingAction:(uint64_t)action numberOfTabsClosed:;
- (void)_mailContentProvider;
- (void)_navigationGestureDidBegin;
- (void)_navigationGestureDidEndWithNavigation:(uint64_t)navigation;
- (void)_navigationGestureWillEndWithNavigationToBackForwardListItem:(uint64_t)item;
- (void)_newReadingListBehaviorAlertControllerWithCompletion:(void *)completion;
- (void)_observeInitializedWebKitFeatures;
- (void)_openDownload:(uint64_t)download;
- (void)_pasteAndNavigate;
- (void)_perSiteAutomaticReaderActivationPreferenceDidChange:(id)change;
- (void)_perSiteLockdownModePreferenceDidChange:(id)change;
- (void)_perSitePageZoomPreferenceDidChange:(id)change;
- (void)_perSitePreferencesDidChange:(id)change;
- (void)_postUserDidAcceptCloudKitShareActivityNoticeWithMetadata:(uint64_t)metadata;
- (void)_prepareExtensionsForEffectiveProfile;
- (void)_preparePreviousContinuousDocumentIfNeeded;
- (void)_prepareTabDocumentForNextContinuousItemIfNeeded;
- (void)_prepareToPresentActivityViewController;
- (void)_presentActionPanelIfReady;
- (void)_presentActivityViewController;
- (void)_presentAttributedSharedTabNoticeWithMessage:(void *)message forParticipantWithRecordID:(void *)d inSharedTabGroupWithUUID:;
- (void)_presentModalViewController:(uint64_t)controller fromBarItem:(uint64_t)item animated:(void *)animated completion:;
- (void)_presentModalViewController:(void *)controller;
- (void)_presentModalViewController:(void *)controller fromPopoverSource:(uint64_t)source useAdaptivePresentationInCompact:(uint64_t)compact animated:(void *)animated completion:;
- (void)_presentPendingViewControllerForActiveTab;
- (void)_presentReaderTriggeredAppReviewPromptIfNeeded;
- (void)_presentSaveWebpageViewController;
- (void)_presentSharedTabGroupErrorWithTitle:(void *)title message:;
- (void)_presentSharedTabGroupsPendingAcceptanceError;
- (void)_presentSharedTabGroupsUnsupportedError;
- (void)_presentToastViewControllerQueuingIfNecessary:(uint64_t)necessary;
- (void)_pressedNewTabKeyWithOptions:(char)options isKeyboardShortcut:;
- (void)_previewDownloadInQuickLook:(void *)look url:(uint64_t)url isContentManaged:;
- (void)_profileWallpaperDidChange:(id)change;
- (void)_readSavedState;
- (void)_readerButtonTapped;
- (void)_readerVisibilityDidChange;
- (void)_recentSearchesWereCleared:(id)cleared;
- (void)_recordIgnoredSiriSuggestedSitesWithURL:(uint64_t)l;
- (void)_reloadPresentedPreferencesListViewController;
- (void)_reloadProfileSwitcherIfNeeded;
- (void)_replaceActiveDocument:(void *)document withSpeculativeDocument:;
- (void)_requestActivationOfBrowserController:(id *)controller;
- (void)_requestQueryResultsOnTabDocument:(void *)document forText:(uint64_t)text contentType:(void *)type pageMetadata:;
- (void)_restoreDigitalHealthFunctionalityAfterAppTransition;
- (void)_rootViewControllerViewTransitionFromSize:(uint64_t)size includingSidebar:(int)sidebar animated:(uint64_t)animated;
- (void)_sceneSession;
- (void)_scheduleAutoFillInternalFeedbackToastDismissal;
- (void)_searchTabs;
- (void)_sendPDFRepresentationForScreenshotWithTabDocument:(void *)document;
- (void)_setContinuousReadingContentViewFromTabDocument:(int)document useReaderView:;
- (void)_setContinuousReadingPreviewView:(id *)view;
- (void)_setLibraryForCatalogViewController;
- (void)_setNeedsSnapshotUpdateForActiveTab;
- (void)_setPresentingModalBookmarksController:(int)controller exclusively:(void *)exclusively importHandler:(void *)handler withCollection:(void *)collection bookmarkUUIDString:(uint64_t)string animated:(void *)animated completion:;
- (void)_setProgressSuppressingDocument:(uint64_t)document;
- (void)_setReaderVisible:(void *)visible forTabDocument:(uint64_t)document deactivationMode:(char)mode animated:(void *)animated completion:;
- (void)_setSheetPresentationIfNeededForController:(uint64_t)controller;
- (void)_setShowBookmarksBar:(uint64_t)bar;
- (void)_setShowingAppBanner:(int)banner isShowing:;
- (void)_setShowingPrivateBrowsingPrivacyProtectionsBanner:(int)banner isShowing:;
- (void)_setShowingTabBar:(char)bar animated:;
- (void)_setSidebarUIProxy:(uint64_t)proxy;
- (void)_showDefaultBrowserSheetIfNecessary;
- (void)_showDigitalHealthOverlayForTabDocument:(uint64_t)document withPolicy:(uint64_t)policy animated:;
- (void)_showNoRecentSearchesView:(id)view;
- (void)_showPrivateBrowsingExplanationSheetIfNecessary;
- (void)_showReaderForTabDocument:(char)document animated:(void *)animated completion:;
- (void)_showSummarizeButtonIfNeeded;
- (void)_siriReadThisMenuInvocation;
- (void)_siriReadThisVocalInvocation;
- (void)_startLoadDocument:(void *)document continuousReadingItem:;
- (void)_switchTabsByRelativeIndex:(void *)index withKeyCommand:;
- (void)_switchToCollectionOrToggleSidebar:(id *)sidebar;
- (void)_tabViewPinch:(id)pinch;
- (void)_toggleDigitalHealthOverlayGivenOverlayStates:(void *)states forTabDocuments:;
- (void)_toggleVisibilityOfStartPageCollection:(uint64_t)collection;
- (void)_trialABGroupIdentifierDidChange:(id)change;
- (void)_unhideCapsuleFromPageMenu;
- (void)_updateAddTabMenuProvider;
- (void)_updateAppInfoOverlayFrame;
- (void)_updateBookmarksMenuProvider;
- (void)_updateButtonsAnimatingTabBar:(uint64_t)bar;
- (void)_updateCurrentContinuousReadingItem;
- (void)_updateCurrentPageBannerView;
- (void)_updateCurrentPageBannerViewBeforeContinuousTransition;
- (void)_updateCurrentPageBannerViewIfNeeded;
- (void)_updateDigitalHealthOverlayAfterExitingTabSwitcher;
- (void)_updateDigitalHealthOverlayForTabDocuments:(void *)documents;
- (void)_updateDigitalHealthViewFrame;
- (void)_updateMediaCaptureConfiguration;
- (void)_updateNavigationBarSeparator;
- (void)_updateParticipantsListForCollaborationButton:(void *)button contacts:;
- (void)_updatePrivateBrowsingAvailability:(BOOL)availability;
- (void)_updateRefreshControlHeight;
- (void)_updateSceneTitle;
- (void)_updateScribbleOverlayIfNeeded;
- (void)_updateScrollOffsetForReplacementWebView:(id *)view;
- (void)_updateSidebarStickinessAfterUserAction;
- (void)_updateSpeculativeLoadURL:(uint64_t)l;
- (void)_updateTabGroupBanner;
- (void)_updateUnifiedBar;
- (void)_updateUnifiedBarBackgroundVisibility;
- (void)_updateUsesNarrowLayout;
- (void)actionPanel:(id)panel prepareForMailActivityWithMailController:(id)controller completionHandler:(id)handler;
- (void)actionPanelAddTabDocumentToReadingList:(id)list activityDidFinish:(id)finish;
- (void)activateWebClipWithID:(id)d;
- (void)addAllTabsToBookmarks:(id)bookmarks;
- (void)addBookmarkActivityFailedToAcquireBookmarkLock:(id)lock;
- (void)addBookmarkFolderForCurrentTabs;
- (void)addBookmarkFolderForTabs:(id)tabs;
- (void)addBookmarkNavController:(id)controller didFinishWithResult:(BOOL)result bookmark:(id)bookmark;
- (void)addCurrentPageToHomeScreen:(id)screen;
- (void)addToBookmarks:(id)bookmarks;
- (void)addToFavorites;
- (void)addToQuickNote;
- (void)addToReadingList:(id)list;
- (void)adoptSceneID:(id)d;
- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item;
- (void)arrangeTabsByTitle:(id)title;
- (void)arrangeTabsByWebsite:(id)website;
- (void)attachToScene:(id)scene;
- (void)authenticateToUnlockPrivateBrowsing;
- (void)autoFillFormKeyPressed;
- (void)autoFillInternalFeedbackActivityNotice:(id)notice shouldPresentFeedbackForm:(BOOL)form;
- (void)barManager:(id)manager didReceiveLongPressForBarItem:(int64_t)item;
- (void)barManager:(id)manager didReceiveTapForBarItem:(int64_t)item;
- (void)barManager:(id)manager didReceiveTouchDownForBarItem:(int64_t)item;
- (void)barManager:(id)manager willRegisterBarWithToken:(id)token;
- (void)beginIgnoringUserInteraction:(id)interaction;
- (void)beginTrackingDropSessionForTabBarVisibility:(id)visibility;
- (void)bookmarksNavigationController:(id)controller updateReadingListUnreadFilterShowingAllBookmarks:(BOOL)bookmarks;
- (void)bookmarksNavigationControllerContentDidBecomeDirty:(id)dirty;
- (void)bookmarksNavigationControllerViewDidAppear:(id)appear;
- (void)bookmarksNavigationControllerViewDidDisappear:(id)disappear;
- (void)bookmarksViewSortOptionSelected:(id)selected;
- (void)browserViewController:(id)controller didChangeShowingSidebar:(BOOL)sidebar;
- (void)browserViewController:(id)controller didChangeSidebarStyle:(int64_t)style;
- (void)browserViewController:(id)controller didCreateNavigationBar:(id)bar;
- (void)browserViewController:(id)controller traitCollectionDidChange:(id)change;
- (void)browserViewControllerDidChangeBarInsets:(id)insets;
- (void)browserViewControllerDidChangeToolbarPlacement:(id)placement;
- (void)browserViewControllerDidLayOutSubviews:(id)subviews;
- (void)cancelFavoritesAnimated:(BOOL)animated;
- (void)cancelKeyPressed;
- (void)cancelSpeculativeLoad;
- (void)carrierBundledChanged;
- (void)catalogViewController:(id)controller cacheSearchQueryID:(int64_t)d;
- (void)catalogViewController:(id)controller completionItem:(id)item wasAcceptedForString:(id)string;
- (void)catalogViewController:(id)controller didFinishVoiceSearchWithNavigation:(BOOL)navigation;
- (void)catalogViewController:(id)controller didPasteText:(id)text;
- (void)catalogViewController:(id)controller didSelectAddress:(id)address;
- (void)catalogViewController:(id)controller didSelectSearch:(id)search;
- (void)catalogViewController:(id)controller focusNextKeyView:(BOOL)view;
- (void)catalogViewController:(id)controller loadURL:(id)l inExternalApplication:(BOOL)application forImageAttribution:(BOOL)attribution;
- (void)catalogViewController:(id)controller mightSelectCompletionItem:(id)item forString:(id)string;
- (void)catalogViewController:(id)controller presentViewControllerInPlatter:(id)platter animated:(BOOL)animated completionHandler:(id)handler;
- (void)catalogViewController:(id)controller presentViewControllerWithinPopover:(id)popover completionHandler:(id)handler;
- (void)catalogViewController:(id)controller willPresentCustomizationViewController:(id)viewController;
- (void)catalogViewController:(id)controller willPresentDetailViewController:(id)viewController;
- (void)catalogViewController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)catalogViewControllerDidAppear:(id)appear;
- (void)catalogViewControllerDidBeginEditing:(id)editing;
- (void)catalogViewControllerDidEndEditing:(id)editing;
- (void)catalogViewControllerDidScroll:(id)scroll animated:(BOOL)animated;
- (void)catalogViewControllerDidSelectFindOnPage:(id)page;
- (void)catalogViewControllerMakeWindowKey:(id)key;
- (void)catalogViewControllerPopoverWillDismiss:(id)dismiss dismissalReason:(int64_t)reason;
- (void)catalogViewControllerSuppressSelectedItemUnfocus:(id)unfocus;
- (void)catalogViewControllerWillUnfocusUnifiedField:(id)field showingRecentSearches:(BOOL)searches;
- (void)checkSummarizationStateToShowSummarizeButton;
- (void)clearBadgeOnPageFormatMenu;
- (void)clearCachedTabCompletionData;
- (void)clearContinuousItemDocuments;
- (void)clearDocumentForContinuousReading:(id)reading;
- (void)clearHistory:(id)history;
- (void)clearParsecQueryOriginatingFromSearchSuggestion;
- (void)clearParticipantsList;
- (void)clearReaderViews;
- (void)clearSpeculativeLoadDocument;
- (void)closeActiveTab:(id)tab;
- (void)closeAllTabs:(id)tabs;
- (void)closeAllTabsMatchingSearch:(id)search;
- (void)closeAllWindows:(id)windows;
- (void)closeOtherTabsKeyPressed;
- (void)closePreviewDocument;
- (void)closeStartPage;
- (void)closeTabGroupKeyPressed;
- (void)closeTabWithUUID:(id)d;
- (void)closeTabsWithUUIDs:(id)ds;
- (void)closeWindow;
- (void)cloudSharingController:(id)controller failedToSaveShareWithError:(id)error;
- (void)cloudTabsEnabledDidChange;
- (void)collectDiagnosticsForAutoFillWithCompletionHandler:(id)handler;
- (void)commitLinkPreviewViewController:(id)controller;
- (void)completionDetailViewControllerDidDismiss:(id)dismiss;
- (void)compressedNavigationBarWasTapped:(id)tapped;
- (void)configureMenuAndAdoptButton:(id)button;
- (void)continuousReadingViewController:(id)controller didCommitToLoadItem:(id)item;
- (void)continuousReadingViewController:(id)controller scrollViewDidScroll:(id)scroll;
- (void)continuousReadingViewControllerCommitToLoadPreviousItem:(id)item;
- (void)continuousReadingViewControllerWillCommitToLoadNextItem:(id)item;
- (void)createNewBookmarkWithTitle:(id)title;
- (void)createNewTabWithCompletionHandler:(id)handler;
- (void)createNewTabWithURL:(id)l isPrivate:(BOOL)private completionHandler:(id)handler;
- (void)createProfileWindow;
- (void)dealloc;
- (void)decreaseSize:(id)size;
- (void)didAddTabWithUUID:(id)d title:(id)title inSharedTabGroupWithUUID:(id)iD byParticipantWithRecordID:(id)recordID;
- (void)didBecomeActive;
- (void)didBecomeLastTouchedScene;
- (void)didCancelDismissingTabOverview;
- (void)didChangeBackgroundImageInSharedTabGroupWithUUID:(id)d byParticipantWithRecordID:(id)iD;
- (void)didChangeContinuousReadingItemInActiveDocument;
- (void)didChangeScopedFavoritesInSharedTabGroupWithUUID:(id)d byParticipantWithRecordID:(id)iD;
- (void)didCloseBrowserWindow;
- (void)didCompleteScrolling;
- (void)didEnterBackground;
- (void)didFocusTabGroup:(id)group;
- (void)didNavigateInTabWithUUID:(id)d title:(id)title inSharedTabGroupWithUUID:(id)iD byParticipantWithRecordID:(id)recordID;
- (void)didReceiveMemoryWarning;
- (void)didRemoveTabWithUUID:(id)d title:(id)title inSharedTabGroupWithUUID:(id)iD byParticipantWithRecordID:(id)recordID;
- (void)dismissAutoFillInternalFeedbackToastImmediately:(BOOL)immediately;
- (void)dismissCatalogViewController:(id)controller;
- (void)dismissCompletionDetail;
- (void)dismissToastViewController:(id)controller;
- (void)dispatchNavigationIntent:(id)intent;
- (void)document:(id)document willMakeReaderVisible:(BOOL)visible;
- (void)duplicateCurrentTab:(id)tab;
- (void)dynamicBarAnimatorStateDidChange:(id)change;
- (void)dynamicBarAnimatorWillEnterSteadyState:(id)state;
- (void)editBookmark:(id)bookmark;
- (void)editBookmarksKeyPressed;
- (void)editTabBar;
- (void)endIgnoringUserInteraction:(id)interaction;
- (void)endTrackingDropSessionForTabBarVisibility:(id)visibility;
- (void)exportBrowsingData:(id)data;
- (void)fastAddBookmark;
- (void)fastAddBookmarkForTabDocument:(id)document;
- (void)filteredArticleTextDidBecomeReadyInTabDocument:(id)document;
- (void)find:(id)find;
- (void)findString:(id)string onTabWithUUID:(id)d;
- (void)focusAddressFieldKeyPressed;
- (void)fraudWarningsToggled;
- (void)handleNavigationIntent:(id)intent completion:(id)completion;
- (void)handleSearchResult:(id)result;
- (void)hideBarsForRotation;
- (void)hideTabGroupPicker;
- (void)importBrowsingData:(id)data;
- (void)increaseSize:(id)size;
- (void)invalidateSourceApplication;
- (void)linkPreviewProviderWillDismissPreview;
- (void)loadBackgroundImageIfNeededForIdentifier:(id)identifier;
- (void)loadCloudTabsForDeviceRestoration:(id)restoration;
- (void)loadNextContinuousDocumentIfNeeded;
- (void)loadURL:(id)l;
- (void)makeSpaceForTabWithPrivateBrowsing:(BOOL)browsing resultHandler:(id)handler;
- (void)manageProfiles:(id)profiles;
- (void)markReadingListBookmark:(id)bookmark asRead:(BOOL)read postNotification:(BOOL)notification;
- (void)mergeAllWindows:(id)windows;
- (void)moveCurrentTabToNewWindow:(id)window;
- (void)navigateContinuousReadingListToDirection:(unint64_t)direction;
- (void)navigationBar:(id)bar didCreateLeadingToolbar:(id)toolbar trailingToolbar:(id)trailingToolbar;
- (void)navigationBar:(id)bar didFinishShowingAvailabilityLabelOfType:(int64_t)type;
- (void)navigationBar:(id)bar extensionButtonTapped:(id)tapped extension:(id)extension;
- (void)navigationBar:(id)bar multipleExtensionsButtonTapped:(id)tapped;
- (void)navigationBarCancelButtonWasTapped:(id)tapped;
- (void)navigationBarFormatMenuButtonBecameUnavailable:(id)unavailable;
- (void)navigationBarFormatMenuButtonStartedInteraction:(id)interaction;
- (void)navigationBarFormatMenuButtonWasTapped:(id)tapped;
- (void)navigationBarMediaStateMuteButtonWasTapped:(id)tapped forItem:(id)item;
- (void)navigationBarMetricsDidChange:(id)change;
- (void)navigationBarReaderButtonWasTapped:(id)tapped;
- (void)navigationBarReloadButtonWasTapped:(id)tapped;
- (void)navigationBarStopLoadingButtonWasTapped:(id)tapped;
- (void)navigationBarTranslateButtonWasTapped:(id)tapped;
- (void)navigationBarTranslateButtonWasTappedWithSourceInfo:(id)info;
- (void)newTabAlternativeKeyPressed;
- (void)newTabGroupKeyPressed;
- (void)newTabWithAlternativeOrderingKeyPressed;
- (void)nextReadingListItemKeyPressed;
- (void)nextTabGroupKeyPressed;
- (void)nextTabKeyPressed:(id)pressed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openBookmark:(id)bookmark;
- (void)openBookmarkWithUUIDString:(id)string inTabWithUUID:(id)d;
- (void)openClearHistoryViewControllerFor:(id)for;
- (void)openDownload:(id)download;
- (void)openHistoryURL:(id)l;
- (void)openNewNormalTab:(id)tab;
- (void)openNewPrivateTab:(id)tab;
- (void)openNewPrivateWindow:(id)window;
- (void)openNewTab:(id)tab;
- (void)openNewTabOrWindow:(id)window;
- (void)openNewWindow:(id)window;
- (void)openNewWindowInFrontmostProfile:(id)profile;
- (void)openNewWindowInProfile:(id)profile;
- (void)openRecentlyClosedTab:(id)tab;
- (void)openStartPage;
- (void)openTabGroupOfKind:(int64_t)kind uuidString:(id)string;
- (void)openTabWithUUID:(id)d;
- (void)overlayDidHide:(id)hide;
- (void)participants:(id)participants didJoinSharedTabGroupWithUUID:(id)d;
- (void)participants:(id)participants didLeaveSharedTabGroupWithUUID:(id)d;
- (void)performSearchUsingQuery:(id)query;
- (void)performTabSearchUsingQuery:(id)query;
- (void)performWebExtensionCommandForKeyCommand:(id)command;
- (void)playbackContentIdentifierDidChangeForSiriReaderPlaybackController:(id)controller;
- (void)playbackStateDidChangeForSiriReaderPlaybackController:(id)controller;
- (void)policyDidChangeForDigitalHealthManager:(id)manager;
- (void)prefetchNextContinuousItemIfNeeded;
- (void)prepareForTabDocumentWebViewFullscreenMayReturnToInline:;
- (void)prepareForTabDocumentWebViewFullscreenMayReturnToInline:(id)inline;
- (void)prepareIntentInteractionWithCompletionHandler:(id)handler;
- (void)prepareToNavigateInTabDocument:(id)document;
- (void)presentAutoFillInternalFeedbackToastWithDiagnosticsDataWithoutPageContents:(id)contents;
- (void)presentAutomaticTabClosingAlertController;
- (void)presentBookmarkPickerWithImportHandler:(id)handler;
- (void)presentCloudTabsPickerWithPrimaryDeviceUUID:(id)d;
- (void)presentDownloadsViewController;
- (void)presentPrintControllerForCurrentTab;
- (void)presentPrintControllerForTabDocument:(id)document frame:(id)frame initiatedByWebContent:(BOOL)content;
- (void)presentPrivacyReport;
- (void)presentPromptForAppReviewPromptManager:(id)manager;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)previewControllerDidDismiss:(id)dismiss;
- (void)previousReadingListItemKeyPressed;
- (void)previousTabGroupKeyPressed;
- (void)previousTabKeyPressed:(id)pressed;
- (void)profileWindow:(id)window selectProfile:(id)profile;
- (void)profileWindow:(id)window selectTabGroup:(id)group;
- (void)reinsertBorrowedContentViewForTab:(id)tab;
- (void)reloadFromOriginKeyPressed;
- (void)reloadKeyPressed;
- (void)reloadSidebarAnimated:(BOOL)animated;
- (void)removeAppBannerFromTabDocument:(id)document animated:(BOOL)animated;
- (void)removeCachedSearchStateForActiveTabDocument;
- (void)renameTabGroupKeyPressed;
- (void)reopenLastClosedTabPressed;
- (void)reportScribbleFeedbackForSelectedRowIndex:(int64_t)index;
- (void)reportWebCompatibilityFeedbackForActiveTabDocumentWithIssueCategory:(int64_t)category subCategory:(int64_t)subCategory;
- (void)resetPageZoomLevelAndFontSize;
- (void)resetPendingAutoFillInternalFeedbackToastDismissalTimer;
- (void)resetWhatsNewInPrivateBrowsingStartPageModule;
- (void)restoreInterfaceAfterElementFullscreen;
- (void)rootViewControllerViewDidTransitionFromSize:(CGSize)size animated:(BOOL)animated;
- (void)rootViewControllerViewTransitionFromSize:(CGSize)size includingSidebar:(BOOL)sidebar animated:(BOOL)animated;
- (void)rootViewControllerViewWillTransitionToSize:(CGSize)size;
- (void)saveToFilesOperation:(id)operation didFinishWithSuccess:(BOOL)success;
- (void)saveToFilesOperation:(id)operation presentViewController:(id)controller;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)scene:openURLContexts:;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)screenshotService:(id)service generatePDFRepresentationWithCompletion:(id)completion;
- (void)scribbleDoneKeyPressed;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setActiveAudioPlayingTabWithUUID:(id)d tabGroupUUID:(id)iD;
- (void)setActiveProfileIdentifier:(id)identifier;
- (void)setAppBannerPinnedToTop:(BOOL)top forTabDocument:(id)document;
- (void)setCookiePolicyMessageReceived;
- (void)setCurrentBookmarksCollection:(id)collection;
- (void)setCurrentContinuousReadingItem:(id *)item;
- (void)setFavoritesAreEmbedded:(BOOL)embedded animated:(BOOL)animated;
- (void)setFavoritesFieldFocused:(BOOL)focused forVoiceSearch:(BOOL)search animated:(BOOL)animated completionHandler:(id)handler;
- (void)setFavoritesState:(int64_t)state forVoiceSearch:(BOOL)search animated:(BOOL)animated completionHandler:(id)handler;
- (void)setKeepBarsMinimized:(BOOL)minimized;
- (void)setNeedsFocusUpdate;
- (void)setNeedsSnapshotUpdateForActiveTabIfTabIsBlank;
- (void)setPrivateBrowsingEnabled:(BOOL)enabled;
- (void)setReaderShouldBeShownIfPossible:(BOOL)possible;
- (void)setShowingCrashBanner:(BOOL)banner animated:(BOOL)animated;
- (void)setShowingReader:(BOOL)reader animated:(BOOL)animated;
- (void)setShowingReader:(BOOL)reader animated:(BOOL)animated forTabDocument:(id)document completion:(id)completion;
- (void)setUpWithURL:(id)l launchOptions:(id)options;
- (void)setUsesNarrowLayout:(BOOL)layout;
- (void)setView:(unint64_t)view visible:(BOOL)visible;
- (void)setWebView:(uint64_t)view;
- (void)setWebViewFromTabDocument:(void *)document;
- (void)shareCurrentPage:(id)page;
- (void)shareDidUpdateForTabGroupWithUUID:(id)d;
- (void)showBars;
- (void)showBookmarksPanelWithNonAnimatedTransitionWithCollection:(id)collection;
- (void)showBookmarksViewModeCompactSelected;
- (void)showBookmarksViewModeLargeSelected;
- (void)showCrashBanner:(id)banner animated:(BOOL)animated;
- (void)showExtensionPermissionBannerForExtensions:(id)extensions;
- (void)showManageExtensions:(id)extensions;
- (void)showPopupOrPerSitePermissionsForWebExtension:(id)extension forTab:(id)tab;
- (void)showReadingListAutomaticArchiveAlertIfNeededWithCompletion:(id)completion;
- (void)showSettingsForCurrentPage:(id)page;
- (void)siriReadThisMenuInvocation;
- (void)siriReadThisVocalInvocation;
- (void)snapshotTabDocument:(id)document size:(CGSize)size options:(unint64_t)options completion:(id)completion;
- (void)statusBarHeightChanged;
- (void)switchFromTabDocument:(id)document toTabDocument:(id)tabDocument;
- (void)switchToProfileKeyPressed:(id)pressed;
- (void)switchToTabKeyPressed:(id)pressed;
- (void)switchToTabWithUUID:(id)d inWindowWithUUID:(id)iD forTabGroupWithUUID:(id)uID;
- (void)tabBarManager:(id)manager didCreateTabBar:(id)bar;
- (void)tabBarManagerDidUpdateDisplayMode:(id)mode;
- (void)tabCollectionViewDidDismiss:(id)dismiss;
- (void)tabCollectionViewWillDismiss:(id)dismiss;
- (void)tabCollectionViewWillPresent:(id)present;
- (void)tabController:(id)controller didSwitchFromTabDocument:(id)document toTabDocument:(id)tabDocument;
- (void)tabController:(id)controller didSwitchFromTabGroup:(id)group;
- (void)tabControllerDocumentCountDidChange:(id)change;
- (void)tabDocument:(id)document didChangePIPState:(BOOL)state;
- (void)tabDocument:(id)document didClearLibraryType:(id)type;
- (void)tabDocument:(id)document didCreateNewTabDocument:(id)tabDocument;
- (void)tabDocument:(id)document didCreatePreviewDocument:(id)previewDocument;
- (void)tabDocument:(id)document didDetectReaderAvailability:(BOOL)availability;
- (void)tabDocument:(id)document didExtractArticleText:(id)text withMetadata:(id)metadata;
- (void)tabDocument:(id)document didFinishLoadingWithError:(BOOL)error;
- (void)tabDocument:(id)document didReceiveAssistantContentOptions:(unint64_t)options;
- (void)tabDocument:(id)document dismissViewControllerAnimated:(id)animated;
- (void)tabDocument:(id)document presentViewControllerAnimated:(id)animated;
- (void)tabDocumentCommitPreviewedDocument:(id)document;
- (void)tabDocumentCommitPreviewedDocumentAsNewTab:(id)tab inBackground:(BOOL)background;
- (void)tabDocumentDidAddAlert:(id)alert;
- (void)tabDocumentDidCancelRedirectToExternalApplication:(id)application;
- (void)tabDocumentDidChangeCanStopLoadingState:(id)state;
- (void)tabDocumentDidChangeMediaState:(id)state needsUpdateGlobalAudioState:(BOOL)audioState;
- (void)tabDocumentDidChangeSafeAreaShouldAffectObscuredInsets:(id)insets;
- (void)tabDocumentDidCommitNavigation:(id)navigation;
- (void)tabDocumentDidCompleteCheckForAppBanner:(id)banner;
- (void)tabDocumentDidDimissPreviewedDocument:(id)document;
- (void)tabDocumentDidStartLoading:(id)loading;
- (void)tabDocumentDidUpdateBackForward:(id)forward;
- (void)tabDocumentDidUpdateIsScribbling:(id)scribbling;
- (void)tabDocumentDidUpdateShowingContinuous:(id)continuous;
- (void)tabDocumentDidUpdateTabCollectionItem:(id)item;
- (void)tabDocumentDidUpdateTitle:(id)title;
- (void)tabDocumentDidUpdateURL:(id)l;
- (void)tabDocumentFluidProgressRocketAnimationDidComplete:(id)complete;
- (void)tabDocumentShouldBecomeActive:(id)active;
- (void)tabDocumentShouldCloseAndSwitchToParentTab:(id)tab;
- (void)tabDocumentWillBeginDragSession:(id)session;
- (void)tabDocumentWillDisableLinkPreview;
- (void)tabDocumentWillDismissInlineDialog:(id)dialog;
- (void)tabDocumentWillEndDragSession:(id)session;
- (void)tabDocumentWillShowInlineDialog:(id)dialog;
- (void)tabGroupManager:(id)manager didFinishAcceptingTabGroupShareWithMetadata:(id)metadata result:(int64_t)result;
- (void)tabGroupManager:(id)manager didUpadateActiveParticipants:(id)participants inTabGroupWithUUID:(id)d;
- (void)tabGroupManager:(id)manager didUpdateProfileWithIdentifier:(id)identifier difference:(id)difference;
- (void)tabGroupManager:(id)manager didUpdateTabGroupWithUUID:(id)d;
- (void)tabGroupManager:(id)manager selectProfileIdentifierForShareMetadata:(id)metadata completionHandler:(id)handler;
- (void)takeFindStringKeyPressed;
- (void)toggleAllPrivateWindowsLocked:(id)locked;
- (void)toggleAlwaysShowBookmarksBarMessageReceived;
- (void)toggleBookmarksPresentationWithCollection:(void *)collection completion:;
- (void)toggleBookmarksViewFolderModeSeparatedSelected;
- (void)toggleContentBlockers:(id)blockers;
- (void)toggleDownloadsKeyPressed;
- (void)togglePinningCurrentTab;
- (void)togglePrivateBrowsingEnabled;
- (void)toggleShowWebpageStatusBar;
- (void)toggleShowingFavoritesBarKeyPressed;
- (void)toggleShowingReaderForUserAction;
- (void)toggleTabMediaState:(id)state;
- (void)toggleTabView;
- (void)toggleVoiceSearch;
- (void)unhideCapsuleFromPageMenuIfNeeded;
- (void)updateApplePayPreferences;
- (void)updateCollaborationButton;
- (void)updateContinuousPreviewViewFrame;
- (void)updateDynamicBarGeometry;
- (void)updateExposedScrollViewRect;
- (void)updateFavoritesForNewDocument;
- (void)updateFirstResponderOrFocus;
- (void)updateFocusForTab:(id)tab webViewCanTakeFocus:(BOOL)focus;
- (void)updateFocusIfNeeded;
- (void)updateInsetsForBackgroundWebView:(id)view;
- (void)updateInterface;
- (void)updateJavaScriptPreferences;
- (void)updatePopoverPositionAfterSizeTransition;
- (void)updatePresenceForActiveUser;
- (void)updatePrivateBrowsingAvailabilityWithCompletionHandler:(id)handler;
- (void)updatePullToRefreshIsEnabled;
- (void)updateScrollToTopView;
- (void)updateSearchEngineIfNeeded;
- (void)updateShowingTabBarAnimated:(BOOL)animated;
- (void)updateSpeculativeLoadingPreferences;
- (void)updateTabGroupButtonsVisibility;
- (void)updateTabGroupHeading;
- (void)updateTabOverviewButton;
- (void)updateTabViewPinchRecognizer;
- (void)updateUnifiedBarVisibility;
- (void)updateUsesTabBar;
- (void)updateViewsAfterStatusBarChange;
- (void)updateWebViewObscuredInsets;
- (void)userDefaultsDidChangeValueForKey:(id)key;
- (void)validateCommand:(id)command;
- (void)validateExtensionToolbarItemsInWindow:(id)window;
- (void)webClipCacheDidChange;
- (void)webExtensionButtonTapped:(id)tapped extension:(id)extension;
- (void)webExtensionWasRemotelyEnabled:(id)enabled;
- (void)webExtensionsButtonTapped:(id)tapped;
- (void)webViewDidFirstVisuallyNonEmptyLayoutForTabDocument:(id)document;
- (void)willDismissBrowsingAssistantInSheet:(BOOL)sheet;
- (void)willEnterForeground;
- (void)willPresentBrowsingAssistantInSheet:(BOOL)sheet;
- (void)willResignActive;
- (void)willStartLoadFromUserTap:(id)tap;
- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
- (void)windowScene:(id)scene userDidAcceptCloudKitShareWithMetadata:(id)metadata;
- (void)writePrivateBrowsingEnabled:(BOOL)enabled;
@end

@implementation BrowserController

+ (WKProcessPool)newProcessPool
{
  v18[1] = *MEMORY[0x277D85DE8];
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = objc_alloc_init(MEMORY[0x277CE3890]);
  safari_safariInjectedBundleURL = [MEMORY[0x277CCA8D8] safari_safariInjectedBundleURL];
  [v4 setInjectedBundleURL:safari_safariInjectedBundleURL];

  v18[0] = *MEMORY[0x277CDB9F0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [v4 setCachePartitionedURLSchemes:v6];

  [v4 setShouldCaptureAudioInUIProcess:{objc_msgSend(safari_browserDefaults, "BOOLForKey:", *MEMORY[0x277D29298])}];
  [v4 setPrewarmsProcessesAutomatically:1];
  [v4 setUsesWebProcessCache:1];
  [v4 setJITEnabled:{objc_msgSend(safari_browserDefaults, "BOOLForKey:", *MEMORY[0x277D4A198]) ^ 1}];
  v7 = [objc_alloc(MEMORY[0x277CE3820]) _initWithConfiguration:v4];
  mEMORY[0x277D7B590] = [MEMORY[0x277D7B590] sharedWebFilterSettings];
  isWebFilterEnabled = [mEMORY[0x277D7B590] isWebFilterEnabled];

  if (isWebFilterEnabled)
  {
    mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
    engines = [mEMORY[0x277CDB8A8] engines];
    [(WKProcessPool *)v7 _setObject:engines forBundleParameter:*MEMORY[0x277D4A9E8]];
  }

  if ([*MEMORY[0x277D76620] launchedToTest])
  {
    [(WKProcessPool *)v7 _setObject:MEMORY[0x277CBEC38] forBundleParameter:@"launchedToTest"];
  }

  SafariShared::ReaderAvailabilityController::configureProcessPool(v7, v12);
  v13 = [safari_browserDefaults stringForKey:@"JavaScriptConsoleOutputPath"];
  if (v13)
  {
    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13 isDirectory:0];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:0];
      [(WKProcessPool *)v7 _setObject:v16 forBundleParameter:@"JavaScriptConsoleOutputURLBookmarkData"];
    }
  }

  else
  {
    v15 = 0;
  }

  [(BrowserController *)self _sendABGroupIdentifierToProcessPool:v7];

  return v7;
}

- (void)updateSpeculativeLoadingPreferences
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (![standardUserDefaults BOOLForKey:@"SpeculativeLoading"])
  {
    self->_isSpeculativeLoadingEnabled = 0;
    goto LABEL_5;
  }

  configuration = [(BrowserController *)self configuration];
  self->_isSpeculativeLoadingEnabled = [configuration allowsSpeculativeLoading];

  if (!self->_isSpeculativeLoadingEnabled)
  {
LABEL_5:
    [(BrowserController *)self clearSpeculativeLoadDocument];
  }
}

- (_SFBrowserConfiguration)configuration
{
  cachedConfiguration = self->_cachedConfiguration;
  if (!cachedConfiguration)
  {
    v4 = [objc_alloc(MEMORY[0x277CDB768]) initWithPrivateBrowsingEnabled:self->_privateBrowsingEnabled traitEnvironment:self->_rootViewController controlledByAutomation:self->_controlledByAutomation];
    v5 = self->_cachedConfiguration;
    self->_cachedConfiguration = v4;

    cachedConfiguration = self->_cachedConfiguration;
  }

  return cachedConfiguration;
}

- (void)_updateMediaCaptureConfiguration
{
  if (self)
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [*(self + 856) _setMockCaptureDevicesEnabled:{objc_msgSend(safari_browserDefaults, "BOOLForKey:", *MEMORY[0x277D29210])}];
    [*(self + 856) _setMediaCaptureRequiresSecureConnection:{objc_msgSend(safari_browserDefaults, "BOOLForKey:", *MEMORY[0x277D291A8]) ^ 1}];
    [*(self + 856) _setEnumeratingAllNetworkInterfacesEnabled:{objc_msgSend(safari_browserDefaults, "BOOLForKey:", *MEMORY[0x277D29200])}];
    [*(self + 856) _setICECandidateFilteringEnabled:{objc_msgSend(safari_browserDefaults, "BOOLForKey:", *MEMORY[0x277D291F8]) ^ 1}];
  }
}

- (UIViewController)viewControllerToPresentFrom
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained viewControllerToPresentFromForBrowserController:self];
  }

  else
  {
    v4 = self->_rootViewController;
  }

  v5 = v4;

  return v5;
}

- (BOOL)shouldSnapshotActiveTab
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  LOBYTE(selfCopy) = [WeakRetained browserControllerShouldUpdateSnapshotForActiveTab:selfCopy];

  return selfCopy;
}

- (void)_updateAddTabMenuProvider
{
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = *(val + 106);
    v3 = MEMORY[0x277D75710];
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __46__BrowserController__updateAddTabMenuProvider__block_invoke;
    v8 = &unk_2781D68B8;
    objc_copyWeak(&v9, &location);
    v4 = [v3 safari_menuWithUncachedChildrenProvider:&v5];
    [v2 setBarItem:7 menu:{v4, v5, v6, v7, v8}];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_updateBookmarksMenuProvider
{
  if (!self)
  {
    return;
  }

  if ((_SFDeviceIsPad() & 1) == 0)
  {
    v3 = *(self + 848);
    goto LABEL_6;
  }

  tabBarManager = [self tabBarManager];
  displayMode = [tabBarManager displayMode];

  v3 = *(self + 848);
  if (!displayMode)
  {
LABEL_6:
    sf_bookmarkMenu = [MEMORY[0x277D75710] sf_bookmarkMenu];
    goto LABEL_7;
  }

  sf_bookmarkMenu = [*(self + 328) tabGroupsMenuForTabGroupButton:0];
LABEL_7:
  v6 = sf_bookmarkMenu;
  [v3 setBarItem:3 menu:sf_bookmarkMenu];
}

- (TabBarManager)tabBarManager
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  v4 = [WeakRetained browserControllerTabBarManager:self];

  return v4;
}

- (uint64_t)_updateConfiguration
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 48);
    *(result + 48) = 0;

    configuration = [v1 configuration];
    allowsKeyboardCorrectionLearning = [configuration allowsKeyboardCorrectionLearning];
    activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
    [activeKeyboard setCorrectionLearningAllowed:allowsKeyboardCorrectionLearning];

    configuration2 = [v1 configuration];
    [v1[33] setConfiguration:configuration2];

    return [v1 updateSpeculativeLoadingPreferences];
  }

  return result;
}

- (int64_t)overrideBarTintStyleForUnifiedBar
{
  if (![(BrowserController *)self isShowingFavorites]|| [(BrowserController *)self favoritesAreShowingInPopover])
  {
    return 0;
  }

  defaultManager = [MEMORY[0x277D4A820] defaultManager];
  startPageBackgroundImageIdentifier = [(TabController *)self->_tabController startPageBackgroundImageIdentifier];
  activeProfile = [(BrowserController *)self activeProfile];
  v7 = [defaultManager imageForIdentifier:startPageBackgroundImageIdentifier forProfile:activeProfile];

  if (v7)
  {
    configuration = [(BrowserController *)self configuration];
    [configuration barTintStyle];

    if ([defaultManager appearanceForImageWithIdentifier:startPageBackgroundImageIdentifier forProfile:activeProfile] == 2)
    {
      v9 = _SFDarkTintStyleForStyle();
    }

    else
    {
      v9 = _SFLightTintStyleForStyle();
    }

    v3 = v9;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateJavaScriptPreferences
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  -[WKPreferences setJavaScriptEnabled:](self->_wkPreferences, "setJavaScriptEnabled:", [safari_browserDefaults safari_isJavaScriptEnabled]);
  -[WKPreferences setJavaScriptCanOpenWindowsAutomatically:](self->_wkPreferences, "setJavaScriptCanOpenWindowsAutomatically:", [safari_browserDefaults safari_javaScriptCanOpenWindowsAutomatically]);
}

- (void)_observeInitializedWebKitFeatures
{
  v17 = *MEMORY[0x277D85DE8];
  if (self)
  {
    safari_standardUserDefaultsWithOptimizedKeyValueObserving = [MEMORY[0x277CBEBD0] safari_standardUserDefaultsWithOptimizedKeyValueObserving];
    v11 = [safari_standardUserDefaultsWithOptimizedKeyValueObserving safari_resetWebKitExperimentalFeaturesIfNeeded:0];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    _features = [MEMORY[0x277CE3818] _features];
    v4 = [_features countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = *v13;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(_features);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          if ([MEMORY[0x277CBEBD0] safari_shouldObserveWebKitFeature:v7])
          {
            v8 = [MEMORY[0x277CBEBD0] safari_keyForWebKitFeature:v7];
            if ((v11 & 1) == 0)
            {
              v9 = [safari_standardUserDefaultsWithOptimizedKeyValueObserving objectForKey:v8];
              v10 = v9 == 0;

              if (!v10)
              {
                [*(self + 856) _setEnabled:objc_msgSend(safari_standardUserDefaultsWithOptimizedKeyValueObserving forFeature:{"BOOLForKey:", v8), v7}];
              }
            }

            [safari_standardUserDefaultsWithOptimizedKeyValueObserving addObserver:self forKeyPath:v8 options:1 context:webFeatureObserverContext];
          }
        }

        v4 = [_features countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }
  }
}

- (void)updateApplePayPreferences
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  -[WKPreferences _setApplePayCapabilityDisclosureAllowed:](self->_wkPreferences, "_setApplePayCapabilityDisclosureAllowed:", [safari_browserDefaults BOOLForKey:*MEMORY[0x277D291B0]]);
}

- (_SFPerSitePreferencesVendor)perSitePreferencesVendor
{
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  perSitePreferencesVendor = [WeakRetained perSitePreferencesVendor];

  return perSitePreferencesVendor;
}

- (void)createProfileWindow
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 744));
    v2 = objc_alloc(MEMORY[0x277D7B550]);
    windowState = [self windowState];
    v4 = *(self + 792);
    frontmostProfileIdentifier = [WeakRetained frontmostProfileIdentifier];
    v6 = [v2 initWithWindowState:windowState tabGroupManager:v4 preferredProfileIdentifier:frontmostProfileIdentifier];
    v7 = *(self + 232);
    *(self + 232) = v6;

    [*(self + 232) setCanSwitchProfiles:1];
    [*(self + 232) setDelegate:self];
    unnamedTabGroupDisplayTitleProvider = [*(self + 328) unnamedTabGroupDisplayTitleProvider];
    [*(self + 232) setUnnamedTabGroupDisplayTitleProvider:unnamedTabGroupDisplayTitleProvider];

    [WeakRetained setFrontmostProfileIdentifier:0];
  }
}

- (BOOL)isInDefaultProfile
{
  activeProfileIdentifier = [(BrowserController *)self activeProfileIdentifier];
  v3 = [activeProfileIdentifier isEqualToString:*MEMORY[0x277D49BD8]];

  return v3;
}

- (WBProfile)effectiveProfile
{
  tabGroupManager = self->_tabGroupManager;
  effectiveProfileIdentifier = [(BrowserController *)self effectiveProfileIdentifier];
  v4 = [(WBTabGroupManager *)tabGroupManager profileWithIdentifier:effectiveProfileIdentifier];

  return v4;
}

- (void)_readSavedState
{
  if (self)
  {
    v2 = +[Application sharedApplication];
    if ([v2 isRunningPPT] && !objc_msgSend(v2, "shouldRestoreStateForPPT"))
    {
      [*(self + 328) openInitialBlankTabDocumentIfNeeded];
    }

    else
    {
      *(self + 89) = [*(self + 328) readState];
    }
  }
}

- (unint64_t)_shouldShowTabBar
{
  selfCopy = self;
  if (self)
  {
    if ((self[709] & 1) != 0 || ([self tabBarManager], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "standaloneTabBar"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
    {
      currentTabs = [*(selfCopy + 328) currentTabs];
      selfCopy = [currentTabs count] > 1 || objc_msgSend(*(selfCopy + 104), "count") != 0;
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (void)clearCachedTabCompletionData
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = +[Application sharedApplication];
  [v3 clearCachedTabCompletionData];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  browserWindowController = [(BrowserController *)self browserWindowController];
  browserControllers = [browserWindowController browserControllers];

  v6 = [browserControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(browserControllers);
        }

        _catalogViewController = [(BrowserController *)*(*(&v10 + 1) + 8 * v8) _catalogViewController];
        [_catalogViewController clearCachedTabCompletionData];

        ++v8;
      }

      while (v6 != v8);
      v6 = [browserControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BrowserWindowController)browserWindowController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);

  return WeakRetained;
}

- (void)updateCollaborationButton
{
  v3 = +[LaunchStateController sharedController];
  hasCompletedLaunch = [v3 hasCompletedLaunch];

  if (hasCompletedLaunch)
  {
    activeTabGroupOrTabGroupVisibleInSwitcher = [(TabController *)self->_tabController activeTabGroupOrTabGroupVisibleInSwitcher];
    if ([activeTabGroupOrTabGroupVisibleInSwitcher isSyncable])
    {
      tabGroupManager = self->_tabGroupManager;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __46__BrowserController_updateCollaborationButton__block_invoke;
      v7[3] = &unk_2781D6AE8;
      v7[4] = self;
      v8 = activeTabGroupOrTabGroupVisibleInSwitcher;
      [(WBTabGroupManager *)tabGroupManager shareRecordForTabGroup:v8 completionHandler:v7];
    }

    else
    {
      [(_SFBarManager *)self->_barManager setBarItem:16 hidden:1];
    }
  }
}

- (WKProcessPool)processPool
{
  v3 = +[Application sharedApplication];
  effectiveProfileIdentifier = [(BrowserController *)self effectiveProfileIdentifier];
  v5 = [v3 processPoolForProfileIdentifier:effectiveProfileIdentifier];

  return v5;
}

- (void)_prepareExtensionsForEffectiveProfile
{
  if (self)
  {
    effectiveProfile = [self effectiveProfile];
    v1 = +[Application sharedApplication];
    identifierForExtensions = [effectiveProfile identifierForExtensions];
    v3 = [v1 webExtensionsControllerForProfileServerID:identifierForExtensions];
    mEMORY[0x277D28BF0] = [MEMORY[0x277D28BF0] sharedProvider];
    [mEMORY[0x277D28BF0] setWebExtensionsController:v3];

    v5 = +[Application sharedApplication];
    [v5 loadExtensionsInProfileIfNecessary:effectiveProfile];
  }
}

- (NSString)effectiveProfileIdentifier
{
  if (self->_privateBrowsingEnabled)
  {
    activeProfileIdentifier = *MEMORY[0x277D49BD8];
  }

  else
  {
    activeProfileIdentifier = [(BrowserController *)self activeProfileIdentifier];
  }

  return activeProfileIdentifier;
}

- (_SFBrowserWindowStateData)windowStateData
{
  v3 = objc_alloc(MEMORY[0x277D28F10]);
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  sceneID = self->_sceneID;
  activeProfileIdentifier = [(BrowserController *)self activeProfileIdentifier];
  v7 = [v3 initWithUUIDString:uUIDString sceneID:sceneID profileIdentifier:activeProfileIdentifier];

  return v7;
}

- (void)updateViewsAfterStatusBarChange
{
  if (self)
  {
    viewIfLoaded = [self[33] viewIfLoaded];
    if (viewIfLoaded)
    {
      v2 = self[36];
      [v2 bounds];
      [v2 convertRect:0 toView:?];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      [viewIfLoaded setNeedsLayout];
      [viewIfLoaded layoutIfNeeded];
      [(BrowserController *)self _contentContainerViewFrameDidChange];
      if (([self[117] _isInFullscreen] & 1) == 0)
      {
        [self[36] bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        [self[36] convertRect:0 fromView:{v4, v6, v8, v10}];
        v20 = v19;
        v22 = v21;
        [self[36] contentInset];
        v25 = -v24;
        if (-(v20 - v12 * 2.0) >= -v24)
        {
          v25 = -(v20 - v12 * 2.0);
        }

        v26 = -v23;
        if (-(v22 - v14 * 2.0) >= -v23)
        {
          v26 = -(v22 - v14 * 2.0);
        }

        [self[36] setBounds:{v25, v26, v16, v18}];
      }

      [(BrowserController *)self _updateContinuousReadingViewControllerFrame];
      [(BrowserController *)self _updateCurrentPageBannerViewIfNeeded];
      [self updateExposedScrollViewRect];
      [(BrowserController *)self _updateAppInfoOverlayFrame];
      navigationBar = [self[33] navigationBar];
      [navigationBar layoutIfNeeded];

      WeakRetained = objc_loadWeakRetained(self + 46);
      [WeakRetained browserControllerLayOutCatalogView:self];

      _catalogViewController = [(BrowserController *)self _catalogViewController];
      view = [_catalogViewController view];
      [view layoutIfNeeded];
    }
  }
}

- (void)statusBarHeightChanged
{
  self->_statusBarHeightChangedWhilePerformingRootViewControllerSizeTransition = [(BrowserRootViewController *)self->_rootViewController isPerformingSizeTransition];
  if (![(BrowserRootViewController *)self->_rootViewController isPerformingSizeTransition])
  {
    [(BrowserController *)&self->super.super.super.isa updateViewsAfterStatusBarChange];
  }

  [(BrowserController *)self updateScrollToTopView];
}

- (void)updateScrollToTopView
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  statusBarManager = [WeakRetained statusBarManager];
  if ((([statusBarManager isStatusBarHidden] & 1) != 0 || self->_scrollingStatusBar) && -[BrowserController _canScrollToTopInView:](self, self->_scrollView))
  {
    v4 = [(BrowserController *)self isShowingFavorites]^ 1;
  }

  else
  {
    v4 = 0;
  }

  [(BrowserRootViewController *)self->_rootViewController setNeedsScrollToTopView:v4];
}

- (void)didBecomeLastTouchedScene
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  activeProfileIdentifier = [(BrowserController *)self activeProfileIdentifier];
  [safari_browserDefaults setObject:activeProfileIdentifier forKey:*MEMORY[0x277D29030]];

  setPrimaryWindowEntityFromBrowserController(self);
  mEMORY[0x277D28BF0] = [MEMORY[0x277D28BF0] sharedProvider];
  [mEMORY[0x277D28BF0] clearCachedMenuForPersona:0];

  if (!self->_suppressWebExtensionEvents)
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    webExtensionsController = [activeTabDocument webExtensionsController];
    activeWebExtensionWindow = [(BrowserController *)self activeWebExtensionWindow];
    [webExtensionsController didActivateWindow:activeWebExtensionWindow];
  }
}

- (void)_updateTabGroupBanner
{
  if (self)
  {
    v2 = +[LaunchStateController sharedController];
    hasCompletedLaunch = [v2 hasCompletedLaunch];

    if (hasCompletedLaunch)
    {
      activeTabGroup = [self[41] activeTabGroup];
      capsuleCollectionViewLayout = [self[33] capsuleCollectionViewLayout];
      if (capsuleCollectionViewLayout && (v6 = [activeTabGroup isNamed], capsuleCollectionViewLayout, (v6 & 1) != 0))
      {
        tabGroupBanner = [self[98] tabGroupBanner];
        if (!tabGroupBanner)
        {
          tabGroupBanner = objc_alloc_init(MEMORY[0x277D28D80]);
          [self[98] setTabGroupBanner:? animated:?];
        }

        [tabGroupBanner setTabGroup:activeTabGroup];
        objc_initWeak(&location, self);
        v8 = MEMORY[0x277D750C8];
        v9 = *MEMORY[0x277D29128];
        v14 = MEMORY[0x277D85DD0];
        v15 = 3221225472;
        v16 = __42__BrowserController__updateTabGroupBanner__block_invoke;
        v17 = &unk_2781D6528;
        objc_copyWeak(&v18, &location);
        v10 = [v8 actionWithTitle:&stru_2827BF158 image:0 identifier:v9 handler:&v14];
        [tabGroupBanner setTabGroupTapAction:{v10, v14, v15, v16, v17}];

        v11 = +[FeatureManager sharedFeatureManager];
        LOBYTE(v9) = [v11 areSharedTabGroupsEnabled];

        if (v9)
        {
          collaborationButton = [tabGroupBanner collaborationButton];

          if (!collaborationButton)
          {
            newCollaborationButton = [self newCollaborationButton];
            [tabGroupBanner setCollaborationButton:newCollaborationButton];
          }
        }

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      else
      {
        [self[98] setTabGroupBanner:0 animated:0];
      }
    }
  }
}

- (void)updateTabOverviewButton
{
  capsuleCollectionViewLayout = [(BrowserRootViewController *)self->_rootViewController capsuleCollectionViewLayout];
  if (capsuleCollectionViewLayout && (v9 = capsuleCollectionViewLayout, v4 = [(TabController *)self->_tabController hasUnreadTab], v9, v4))
  {
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"square.on.square.badge"];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x277D755B8] sf_imageNamed:@"square.on.square.badge"];
    }

    v10 = v7;

    v8 = v10;
  }

  else
  {
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"square.on.square"];
  }

  v11 = v8;
  [(_SFBarManager *)self->_barManager setImage:v8 forBarItem:8];
}

- (void)updateDynamicBarGeometry
{
  if (![(BrowserRootViewController *)self->_rootViewController usingLoweredBar])
  {
    [(BrowserRootViewController *)self->_rootViewController navigationBarDesiredHeight];
    v4 = v3;
    dynamicBarAnimator = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__BrowserController_updateDynamicBarGeometry__block_invoke;
    v7[3] = &unk_2781D6270;
    v7[4] = self;
    v8 = dynamicBarAnimator;
    v9 = v4;
    v6 = dynamicBarAnimator;
    [v6 performBatchUpdates:v7];
  }
}

- (void)_initSubviews
{
  [(BrowserRootViewController *)self->_rootViewController safari_updateApplicationBackgroundStyle];
  contentContainerView = [(BrowserRootViewController *)self->_rootViewController contentContainerView];
  [contentContainerView setNextResponder:self parentFocusEnvironment:self];
  v3 = objc_alloc_init(ContinuousReadingViewController);
  continuousReadingViewController = self->_continuousReadingViewController;
  self->_continuousReadingViewController = v3;

  [(ContinuousReadingViewController *)self->_continuousReadingViewController setDelegate:self];
  view = [(ContinuousReadingViewController *)self->_continuousReadingViewController view];
  [view setClipsToBounds:0];
  documentAndTopBarsContainerView = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerView];
  if (![(BrowserController *)self _shouldUseNarrowLayout])
  {
    [documentAndTopBarsContainerView bounds];
    [view setFrame:?];
  }

  [documentAndTopBarsContainerView addSubview:view];
  dynamicBarAnimator = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
  [dynamicBarAnimator setDelegate:self];

  [(BrowserController *)self _updateDisableBarHiding];
  [(BrowserController *)self updateDynamicBarGeometry];
  self->_usesNarrowLayout = [(BrowserController *)self _shouldUseNarrowLayout];
  [(BrowserController *)self updateUsesTabBar];
  [(BrowserController *)&self->super.super.super.isa _updateUnifiedBar];
  [(BrowserController *)self _updateUsesNarrowLayout];
  [(BrowserController *)self _contentContainerViewFrameDidChange];
  [(BrowserController *)&self->super.super.super.isa _updateContinuousReadingViewControllerFrame];
  [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
  [(BrowserRootViewController *)self->_rootViewController updateUsesLockdownStatusBar];
  [(BrowserRootViewController *)self->_rootViewController updateWebViewSizeAttributes];
}

- (BOOL)_shouldUseNarrowLayout
{
  view = [(BrowserRootViewController *)self->_rootViewController view];
  [view bounds];
  IsNarrow = SFWidthIsNarrow();

  return IsNarrow;
}

- (uint64_t)_updateDisableBarHiding
{
  OUTLINED_FUNCTION_8(self);
  v3 = [MEMORY[0x277D28C70] isHideBarsWhileScrollingEnabled] ^ 1;
  if (v2 == 2)
  {
    LOBYTE(v3) = 1;
  }

  v1[392] = v3;
  v1[706] = v2 == 1;

  return [v1 updateDynamicBarGeometry];
}

- (void)updateUsesTabBar
{
  if (self)
  {
    if ([*(self + 264) isViewLoaded])
    {
      [*(self + 264) updateSuppressesStandaloneTabBar];
      shouldUseTab = [(BrowserController *)self _shouldUseTabBar];
      if (*(self + 709) != shouldUseTab)
      {
        v3 = shouldUseTab;
        *(self + 709) = shouldUseTab;
        if (shouldUseTab)
        {
          v4 = objc_alloc_init(TabBar);
        }

        else
        {
          v4 = 0;
        }

        v9 = v4;
        [*(self + 264) setTabBar:?];
        [*(self + 944) setTabBar:v9];
        [self updateShowingTabBarAnimated:0];
        if (v3)
        {
          tabDragDropController = [*(self + 944) tabDragDropController];
          v6 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:tabDragDropController];
          [(TabBar *)v9 addInteraction:v6];

          v7 = [objc_alloc(MEMORY[0x277D75468]) initWithDelegate:tabDragDropController];
          [v7 setEnabled:1];
          [(TabBar *)v9 addInteraction:v7];

          v8 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:tabDragDropController];
          [(TabBar *)v9 addInteraction:v8];
        }
      }
    }
  }
}

- (uint64_t)_shouldUseTabBar
{
  if (!self)
  {
    return 0;
  }

  mEMORY[0x277D28C70] = [MEMORY[0x277D28C70] sharedFeatureManager];
  if (![mEMORY[0x277D28C70] showRectangularTabsInSeparateBar])
  {
    goto LABEL_8;
  }

  tabBarDisplayMode = [self tabBarDisplayMode];

  if (tabBarDisplayMode != 2)
  {
    return 0;
  }

  IsPad = _SFDeviceIsPad();
  if ((IsPad & 1) != 0 || ([MEMORY[0x277CBEBD0] standardUserDefaults], mEMORY[0x277D28C70] = objc_claimAutoreleasedReturnValue(), objc_msgSend(mEMORY[0x277D28C70], "BOOLForKey:", *MEMORY[0x277D29098])))
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v8 = isScreenSizeCurrentlyBigEnoughForTabBar(v6, v7);

    if (IsPad)
    {
      return v8;
    }

    goto LABEL_9;
  }

LABEL_8:
  v8 = 0;
LABEL_9:

  return v8;
}

- (void)_updateUnifiedBar
{
  if (self)
  {
    if ([self[33] usingUnifiedBar])
    {
      tabBarDisplayMode = [self tabBarDisplayMode];
      tabBarManager = [self tabBarManager];
      [tabBarManager setDisplayMode:tabBarDisplayMode];
    }

    [(BrowserController *)self _updateUnifiedBarBackgroundVisibility];
  }
}

- (void)_updateUnifiedBarBackgroundVisibility
{
  if (self)
  {
    if (([MEMORY[0x277D4A888] isLockdownModeEnabledForSafari] & 1) != 0 || (objc_msgSend(self, "isShowingFavorites") & 1) == 0)
    {
      isSolariumEnabled = [MEMORY[0x277D49A08] isSolariumEnabled];
    }

    else
    {
      favoritesAreShowingInPopover = [self favoritesAreShowingInPopover];
      isSolariumEnabled2 = [MEMORY[0x277D49A08] isSolariumEnabled];
      isSolariumEnabled = isSolariumEnabled2;
      if ((isSolariumEnabled2 & 1) == 0 && (favoritesAreShowingInPopover & 1) == 0)
      {
        tabBarManager = [self tabBarManager];
        displayMode = [tabBarManager displayMode];

        isSolariumEnabled = 2 * (displayMode < 2);
      }
    }

    unifiedBar = [self[33] unifiedBar];
    [unifiedBar setBackgroundVisibility:isSolariumEnabled];
  }
}

- (void)_updateUsesNarrowLayout
{
  if (self)
  {
    view = [*(self + 264) view];
    [view setNeedsLayout];

    contentContainerView = [(BrowserController *)self contentContainerView];
    if (!*(self + 832))
    {
      v4 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel__tabViewPinch_];
      v5 = *(self + 832);
      *(self + 832) = v4;

      [*(self + 832) setDelegate:self];
      [*(self + 832) _setEndsOnSingleTouch:1];
      [contentContainerView addGestureRecognizer:*(self + 832)];
      WeakRetained = objc_loadWeakRetained((self + 368));
      [WeakRetained updateTabViewPinchRecognizerForBrowserController:self];
    }

    navigationBar = [*(self + 264) navigationBar];
    v8 = MEMORY[0x277D75D18];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __44__BrowserController__updateUsesNarrowLayout__block_invoke;
    v13 = &unk_2781D61F8;
    selfCopy = self;
    v9 = navigationBar;
    v15 = v9;
    [v8 performWithoutAnimation:&v10];
    [v9 setUsesNarrowLayout:{*(self + 708), v10, v11, v12, v13, selfCopy}];
  }
}

- (id)contentContainerView
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 46);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserControllerContentContainerView:selfCopy];
    }

    else
    {
      [selfCopy[33] contentContainerView];
    }
    selfCopy = ;
  }

  return selfCopy;
}

void __44__BrowserController__updateUsesNarrowLayout__block_invoke(uint64_t a1)
{
  v9 = [*(*(a1 + 32) + 944) tabThumbnailCollectionView];
  [*(*(a1 + 32) + 944) setTabThumbnailCollectionViewStyle:1];
  v2 = [*(*(a1 + 32) + 944) tabThumbnailCollectionView];
  if (v9 != v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v2 addPresentationObserver:*(a1 + 32)];
  }

  v3 = [*(*(a1 + 32) + 944) tabThumbnailCollectionView];
  [*(*(a1 + 32) + 264) setTabThumbnailCollectionView:v3];
  [*(a1 + 32) updateShowingTabBarAnimated:0];
  [*(a1 + 40) setUnifiedFieldShowsProgressView:1];
  [*(a1 + 32) updatePrivateBrowsingAvailabilityWithCompletionHandler:0];
  if (v9 != v3)
  {
    v4 = [*(*(a1 + 32) + 944) tabDragDropController];
    if ([TabDragDropInteractionController canDelegateDragDropForTabCollectionView:v3])
    {
      v5 = [v3 view];
      v6 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:v4];
      [v5 addInteraction:v6];

      v7 = [objc_alloc(MEMORY[0x277D75468]) initWithDelegate:v4];
      [v7 setEnabled:1];
      [v5 addInteraction:v7];
      [TabCollectionViewSpringLoadingBehavior addSpringLoadedInteractionToTabView:v3];
      v8 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:v4];
      [v5 addInteraction:v8];
    }
  }
}

- (id)makeTabOverview
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained createTabOverviewForBrowserController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_contentContainerViewFrameDidChange
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 368));
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserControllerContentContainerViewFrameDidChange:self];
    }
  }
}

- (BOOL)isShowingReader
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  isShowingReader = [activeTabDocument isShowingReader];

  return isShowingReader;
}

- (BOOL)interfaceFillsScreen
{
  if ([(ContinuousReadingViewController *)self->_continuousReadingViewController isScrollingToNextContinuousDocument]|| [(BrowserRootViewController *)self->_rootViewController keepBarsMinimized])
  {
    return 0;
  }

  if ([(BrowserRootViewController *)self->_rootViewController usingLoweredBar])
  {
    capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    capsuleCollectionView = [capsuleViewController capsuleCollectionView];
    minimizationStyle = [capsuleCollectionView minimizationStyle];

    if (minimizationStyle == 1)
    {
      viewController = [(_SFPageFormatMenuController *)self->_pageFormatMenuController viewController];
      presentingViewController = [viewController presentingViewController];

      if (!presentingViewController)
      {
        return 1;
      }
    }
  }

  if ([(BrowserRootViewController *)self->_rootViewController isInYttriumMode]|| [(BrowserController *)self fullScreenInPortrait]|| [(BrowserController *)self _isVerticallyConstrained])
  {
    return 1;
  }

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  isShowingReader = [activeTabDocument isShowingReader];

  return isShowingReader;
}

- (BOOL)_isVerticallyConstrained
{
  if (!self)
  {
    return 0;
  }

  traitCollection = [*(self + 264) traitCollection];
  v2 = [traitCollection verticalSizeClass] == 1;

  return v2;
}

- (double)additionalContentHeightForBanners
{
  if (!self)
  {
    return 0.0;
  }

  topBannerView = [*(self + 80) topBannerView];
  [topBannerView bounds];
  Height = CGRectGetHeight(v4);

  return Height;
}

- (BOOL)isShowingInOneThirdMode
{
  if (!_SFDeviceIsPad())
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_scene);
  if (!WeakRetained || (objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained _enhancedWindowingEnabled] & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    [(BrowserRootViewController *)self->_rootViewController contentFrameInPageView];
    v4 = CGRectGetWidth(v6) <= 375.0;
  }

  return v4;
}

- (UIWindowScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (id)_updateContinuousReadingViewControllerFrame
{
  if (result)
  {
    v1 = result;
    [(BrowserController *)result tabContentContainerView];
    [objc_claimAutoreleasedReturnValue() bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    view = [v1[10] view];
    [view setFrame:{v3, v5, v7, v9}];
    return [(BrowserController *)view _updateContinuousReadingViewControllerFrame];
  }

  return result;
}

- (id)tabContentContainerView
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 46);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserControllerTabContentContainerView:selfCopy];
    }

    else
    {
      [selfCopy[33] contentContainerView];
    }
    selfCopy = ;
  }

  return selfCopy;
}

- (uint64_t)_updateContinuousReadingViewControllerFrame
{
  OUTLINED_FUNCTION_8(self);

  [v1[10] updateOuterScrollView];

  return [v1 updateContinuousPreviewViewFrame];
}

- (void)updateContinuousPreviewViewFrame
{
  previewView = [(ContinuousReadingViewController *)self->_continuousReadingViewController previewView];
  if (previewView)
  {
    [(UIScrollView *)self->_scrollView bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    rootViewController = self->_rootViewController;
    [(UIScrollView *)self->_scrollView bounds];
    [(BrowserRootViewController *)rootViewController sidebarObscuredInsetsForRect:self->_scrollView inCoordinateSpace:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UIScrollView *)self->_scrollView contentSize];
    v19 = v18;
    [(UIScrollView *)self->_scrollView bounds];
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    [previewView setFrame:{v4 + v13, v21, v6 - (v13 + v17), v8 - (v11 + v15)}];
  }
}

- (void)_updateCurrentPageBannerViewIfNeeded
{
  if (self)
  {
    currentItem = [self[10] currentItem];

    if (currentItem)
    {

      [(BrowserController *)self _updateCurrentPageBannerView];
    }
  }
}

- (BOOL)canShowProfileInNavigationBar
{
  hasMultipleProfiles = [(BrowserController *)self hasMultipleProfiles];
  if (hasMultipleProfiles)
  {
    LOBYTE(hasMultipleProfiles) = ![(BrowserController *)self isPrivateBrowsingEnabled];
  }

  return hasMultipleProfiles;
}

- (BOOL)hasMultipleProfiles
{
  if (![MEMORY[0x277D49A08] isSafariProfilesEnabled])
  {
    return 0;
  }

  profiles = [(WBTabGroupManager *)self->_tabGroupManager profiles];
  v4 = [profiles count] > 1;

  return v4;
}

- (void)updateTabGroupButtonsVisibility
{
  v10 = +[FeatureManager sharedFeatureManager];
  isTabGroupButtonEnabled = [v10 isTabGroupButtonEnabled];

  if (isTabGroupButtonEnabled)
  {
    if ([(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar])
    {
      v4 = [(SidebarUIProxy *)self->_sidebarUIProxy sidebarStyle]!= 0;
    }

    else
    {
      v4 = 1;
    }

    view = [(BrowserRootViewController *)self->_rootViewController view];
    _sf_hasLandscapeAspectRatio = [view _sf_hasLandscapeAspectRatio];
    v6 = ([(TabController *)self->_tabController isPrivateBrowsingEnabled]& _sf_hasLandscapeAspectRatio) == 1 && [(BrowserController *)self tabBarDisplayMode]!= 2;
    canShowProfileInNavigationBar = [(TabController *)self->_tabController canRenameActiveTabGroup]|| v6 || [(BrowserController *)self canShowProfileInNavigationBar];
    [(_SFBarManager *)self->_barManager setBarItem:2 hidden:!v4 || !canShowProfileInNavigationBar];
    barManager = self->_barManager;
    v9 = !v4 && [(BrowserRootViewController *)self->_rootViewController toolbarPlacement]== 0;
    [(_SFBarManager *)barManager setBarItem:3 hidden:v9];
  }
}

- (void)updateTabGroupHeading
{
  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [_catalogViewController updateTabGroupHeading];
}

- (id)_catalogViewController
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 46);
    selfCopy = [WeakRetained browserControllerCatalogViewController:selfCopy];
  }

  return selfCopy;
}

- (BOOL)_animationsAreEnabled
{
  if (!self)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 904));
  areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
  if (WeakRetained)
  {
    v3 = areAnimationsEnabled;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 == 1 && [WeakRetained activationState] == 0;

  return v4;
}

- (void)_updateSceneTitle
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 904));
    if (WeakRetained)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __38__BrowserController__updateSceneTitle__block_invoke;
      v4[3] = &unk_2781D6A98;
      v4[4] = self;
      v3 = __38__BrowserController__updateSceneTitle__block_invoke(v4);
      [WeakRetained setTitle:v3];
    }
  }
}

id __38__BrowserController__updateSceneTitle__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 720) == 1)
  {
    v2 = _WBSLocalizedString();
    goto LABEL_30;
  }

  v4 = [*(v1 + 328) activeTabDocument];
  v5 = [v4 URL];
  v6 = [v5 safari_highLevelDomain];
  v7 = v6;
  if (!v6)
  {
    v7 = [v4 title];
  }

  v2 = [v7 safari_stringByAddingSoftBreaksBeforePeriods];
  if (!v6)
  {
  }

  v8 = [*(*(a1 + 32) + 328) currentTabs];
  v9 = [v8 count];

  v10 = [*(*(a1 + 32) + 328) activeTabGroup];
  v11 = [*(*(a1 + 32) + 328) activeProfile];
  v12 = [v11 title];
  v13 = *(a1 + 32);
  v14 = *(v13 + 616);
  *(v13 + 616) = v12;

  v15 = v9 - 1;
  if ([*(a1 + 32) hasMultipleProfiles] && (objc_msgSend(v10, "isNamed") & 1) == 0)
  {
    v26 = MEMORY[0x277CCACA8];
    if (v9 == 1)
    {
      v16 = _WBSLocalizedString();
      v25 = [v26 localizedStringWithFormat:v16, *(*(a1 + 32) + 616), v2];
      goto LABEL_27;
    }

    v16 = _WBSLocalizedString();
    if (v9 == 2)
    {
      [v26 localizedStringWithFormat:v16, *(*(a1 + 32) + 616), v2];
    }

    else
    {
      [v26 localizedStringWithFormat:v16, *(*(a1 + 32) + 616), v2, v9 - 1];
    }

    v25 = LABEL_17:;
LABEL_27:
    v27 = v25;
LABEL_28:

    v2 = v27;
    goto LABEL_29;
  }

  if ([v10 isNamed])
  {
    v16 = [v10 displayTitle];
    v17 = *(a1 + 32);
    v18 = *(v17 + 616);
    *(v17 + 616) = 0;

    v19 = MEMORY[0x277CCACA8];
    if (v9 == 1)
    {
      v20 = _WBSLocalizedString();
      v21 = [v19 localizedStringWithFormat:v20, v16, v2];
    }

    else
    {
      _WBSLocalizedString();
      if (v9 == 2)
        v20 = {;
        [v19 localizedStringWithFormat:v20, v16, v2];
      }

      else
        v20 = {;
        [v19 localizedStringWithFormat:v20, v16, v2, v15];
      }
      v21 = ;
    }

    v27 = v21;

    goto LABEL_28;
  }

  v22 = *(a1 + 32);
  v23 = *(v22 + 616);
  *(v22 + 616) = 0;

  if (v9 != 1)
  {
    v24 = MEMORY[0x277CCACA8];
    v16 = _WBSLocalizedString();
    if (v9 == 2)
    {
      [v24 localizedStringWithFormat:v16, v2];
    }

    else
    {
      [v24 localizedStringWithFormat:v16, v2, v9 - 1];
    }

    goto LABEL_17;
  }

LABEL_29:

LABEL_30:

  return v2;
}

- (WBProfile)activeProfile
{
  tabGroupManager = self->_tabGroupManager;
  activeProfileIdentifier = [(BrowserController *)self activeProfileIdentifier];
  v4 = [(WBTabGroupManager *)tabGroupManager profileWithIdentifier:activeProfileIdentifier];

  return v4;
}

- (void)updateFavoritesForNewDocument
{
  if (![(TabController *)self->_tabController updatingTabGroupTabs])
  {
    [(BrowserController *)&self->super.super.super.isa _setLibraryForCatalogViewController];
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
    if ([(BrowserController *)self isControlledByAutomation])
    {
      [(BrowserController *)self setFavoritesState:0];
    }

    else
    {
      if ([activeTabDocument isBlank] && (objc_msgSend(activeTabDocument, "isPreparingForNewUserActivity") & 1) == 0)
      {
        [_catalogViewController resetFavorites];
        if (([(BrowserController *)&self->super.super.super.isa _wantsURLFieldAutoFocus]& 1) != 0 || [(BrowserController *)self isFavoritesFieldFocused])
        {
          v4 = 3;
        }

        else
        {
          v4 = 4;
        }

        if ([(BrowserController *)self _isStartPageOverriddenByExtensionInTabDocument:activeTabDocument])
        {
          libraryType = [activeTabDocument libraryType];
          if (libraryType)
          {
          }

          else if ([activeTabDocument isShowingStartPageOverriddenByExtension])
          {
            v4 = 0;
          }
        }

        libraryType2 = [activeTabDocument libraryType];
        if (libraryType2 || ![activeTabDocument isShowingManagedNewTabPage])
        {
        }

        else
        {
          mEMORY[0x277D49A60] = [MEMORY[0x277D49A60] sharedController];
          managedNewTabPageState = [mEMORY[0x277D49A60] managedNewTabPageState];

          if (managedNewTabPageState != 1)
          {
            v4 = 0;
          }
        }

        tabBarManager = [(BrowserController *)self tabBarManager];
        if ([tabBarManager displayMode] == 1)
        {
          v10 = 1;
        }

        else
        {
          tabBarManager2 = [(BrowserController *)self tabBarManager];
          v10 = [tabBarManager2 displayMode] == 2;
        }

        [(BrowserController *)self setFavoritesState:v4 animated:v10];
      }

      else
      {
        [(BrowserController *)self setFavoritesState:0];
      }

      if (!self->_isMakingFirstActiveTabDocumentActive)
      {
        [(BrowserController *)self _showOrHideSidebarInLandscapeIfNecessary];
      }
    }
  }
}

- (void)_setLibraryForCatalogViewController
{
  if (self)
  {
    _catalogViewController = [(BrowserController *)self _catalogViewController];
    activeTabDocument = [self[41] activeTabDocument];
    libraryType = [activeTabDocument libraryType];
    cloudTabDeviceID = [activeTabDocument cloudTabDeviceID];
    [_catalogViewController setLibraryType:libraryType cloudTabDeviceID:cloudTabDeviceID];
  }
}

- (uint64_t)_wantsURLFieldAutoFocus
{
  if (!self || ![self canAutoFocusURLField] || !objc_msgSend(MEMORY[0x277D75658], "isInHardwareKeyboardMode") || (objc_msgSend(self[114], "isSelectingItem") & 1) != 0)
  {
    return 0;
  }

  return _SFDeviceIsPad();
}

- (BOOL)canAutoFocusURLField
{
  if ([(BrowserRootViewController *)self->_rootViewController isShowingPrivateBrowsingExplanationSheet]|| [(BrowserController *)self isPrivateBrowsingEnabled]&& [(BrowserController *)self shouldShowWhatsNewInPrivateBrowsingSheet])
  {
    return 0;
  }

  if ([(BrowserController *)self isPrivateBrowsingEnabled]&& [(BrowserController *)self shouldShowTurnOnLockedPrivateBrowsingSheet])
  {
    return 0;
  }

  if ([(BrowserRootViewController *)self->_rootViewController isShowingDefaultBrowserSheet])
  {
    return 0;
  }

  if (self->_eligibilityCheckBlockingWindow)
  {
    mEMORY[0x277CDB6E0] = [MEMORY[0x277CDB6E0] sharedController];
    shouldPerformPromptCheck = [mEMORY[0x277CDB6E0] shouldPerformPromptCheck];

    if (shouldPerformPromptCheck)
    {
      return 0;
    }
  }

  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  v5 = [tabThumbnailCollectionView presentationState] == 0;

  return v5;
}

- (void)clearSpeculativeLoadDocument
{
  [(BrowserController *)self cancelSpeculativeLoad];
  [(BrowserController *)self _closeSpeculativelyLoadedDocument:?];
  speculativeLoadDocument = self->_speculativeLoadDocument;
  self->_speculativeLoadDocument = 0;

  speculativeLoadURL = self->_speculativeLoadURL;
  self->_speculativeLoadURL = 0;

  objc_storeWeak(&self->_backForwardListItemNeedingSnapshot, 0);
}

- (void)cancelSpeculativeLoad
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_speculativeLoadURL)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      speculativeLoadURL = self->_speculativeLoadURL;
      v6 = 141558275;
      v7 = 1752392040;
      v8 = 2117;
      v9 = speculativeLoadURL;
      _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_INFO, "Cancelling speculative load: %{sensitive, mask.hash}@", &v6, 0x16u);
    }

    [(BrowserController *)self _cancelSpeculativeLoadForDocument:?];
    [(TabDocument *)self->_speculativeLoadDocument endSuppressingProgressAnimation];
    v5 = self->_speculativeLoadURL;
    self->_speculativeLoadURL = 0;
  }
}

- (id)_topNavigationBar
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 46);
    selfCopy = [WeakRetained browserControllerNavigationBar:selfCopy];
  }

  return selfCopy;
}

- (BOOL)favoritesAreShowingInPopover
{
  if ([(BrowserController *)self favoritesAreEmbedded])
  {
    return 0;
  }

  else
  {
    return ![(BrowserController *)self _shouldUseNarrowLayout];
  }
}

- (BOOL)shouldShowRecentSearches
{
  if ([(BrowserController *)self skipShowingRecentSearches])
  {
    return 0;
  }

  favoritesState = self->_favoritesState;
  v4 = favoritesState > 5;
  v5 = (1 << favoritesState) & 0x2E;
  if (v4 || v5 == 0)
  {
    return 0;
  }

  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v8 = [safari_browserDefaults safari_BOOLForKey:@"ShowRecentSearches" defaultValue:1];

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (_SFDeviceIsPad())
  {
    return 0;
  }

  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  v10 = [(BrowserController *)self catalogViewControllerShouldUsePopoverForCompletions:_catalogViewController];

  if (v10)
  {
    return 0;
  }

  v13 = +[RecentWebSearchesController sharedController];
  recentWebSearchEntriesFilteredByTimeIntervalForDisplayInMainRecentSearchesView = [v13 recentWebSearchEntriesFilteredByTimeIntervalForDisplayInMainRecentSearchesView];

  if ([recentWebSearchEntriesFilteredByTimeIntervalForDisplayInMainRecentSearchesView count] && (-[TabController activeTabDocument](self->_tabController, "activeTabDocument"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "haveRestoredCompletionList"), v15, (v16 & 1) == 0))
  {
    _catalogViewController2 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
    queryString = [_catalogViewController2 queryString];
    safari_whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
    v20 = [queryString stringByTrimmingCharactersInSet:safari_whitespaceAndNewlineCharacterSet];
    v11 = [v20 length] == 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)createCatalogViewControllerIfNeeded
{
  cachedCatalogViewController = self->_cachedCatalogViewController;
  if (cachedCatalogViewController)
  {
    [cachedCatalogViewController startPageUpdatePolicyDidChange];
    v4 = self->_cachedCatalogViewController;
  }

  else
  {
    v4 = [[CatalogViewController alloc] initWithDelegate:self browserController:self];
    [(CatalogViewController *)v4 setLoadProgressObserver:self->_spinnerController];
    objc_storeStrong(&self->_cachedCatalogViewController, v4);
  }

  return v4;
}

- (uint64_t)_showOrHideSidebarInLandscapeIfNecessary
{
  if (result)
  {
    v1 = result;
    result = [MEMORY[0x277D49A08] isSolariumEnabled];
    if ((result & 1) == 0)
    {
      result = [v1 _bookmarksPresentationStyle];
      if (result == 2)
      {
        v2[0] = MEMORY[0x277D85DD0];
        v2[1] = 3221225472;
        v2[2] = __61__BrowserController__showOrHideSidebarInLandscapeIfNecessary__block_invoke;
        v2[3] = &unk_2781D60B8;
        v2[4] = v1;
        return [MEMORY[0x277D75D18] performWithoutAnimation:v2];
      }
    }
  }

  return result;
}

- (void)_showDefaultBrowserSheetIfNecessary
{
  if (self)
  {
    mEMORY[0x277CDB6E0] = [MEMORY[0x277CDB6E0] sharedController];
    if ([mEMORY[0x277CDB6E0] shouldPerformPromptCheck])
    {
      if (!*(self + 696))
      {
        WeakRetained = objc_loadWeakRetained((self + 904));
        v4 = [objc_alloc(MEMORY[0x277D75DA0]) initWithWindowScene:WeakRetained];
        v5 = *(self + 696);
        *(self + 696) = v4;

        systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
        [*(self + 696) setBackgroundColor:systemBackgroundColor];

        [*(self + 696) setWindowLevel:*MEMORY[0x277D772B8] + -1.0];
        [*(self + 696) makeKeyAndVisible];
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __56__BrowserController__showDefaultBrowserSheetIfNecessary__block_invoke;
        v7[3] = &unk_2781D6890;
        v7[4] = self;
        v8 = mEMORY[0x277CDB6E0];
        [v8 determineIfBrowserSheetNeedsDisplayWithCompletionHandler:v7];
      }
    }
  }
}

- (void)willEnterForeground
{
  v18 = *MEMORY[0x277D85DE8];
  self->_backgrounded = 0;
  [(BrowserController *)&self->super.super.super.isa _restoreDigitalHealthFunctionalityAfterAppTransition];
  v3 = +[MediaCaptureStatusBarManager sharedManager];
  [v3 browserControllerWillEnterForeground:self];

  [(TabController *)self->_tabController updateFocusProfileEnteringForeground];
  [(TabController *)self->_tabController updateFocusedTabGroupEnteringForeground];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = +[Application sharedApplication];
  allWebExtensionsControllers = [v4 allWebExtensionsControllers];

  v6 = [allWebExtensionsControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allWebExtensionsControllers);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
        [v9 setViewControllerToPresentDialogsFrom:viewControllerToPresentFrom];

        ++v8;
      }

      while (v6 != v8);
      v6 = [allWebExtensionsControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  navigationIntentPendingProfileUpdate = self->_navigationIntentPendingProfileUpdate;
  if (navigationIntentPendingProfileUpdate)
  {
    [(BrowserController *)self handleNavigationIntent:navigationIntentPendingProfileUpdate completion:0];
    v12 = self->_navigationIntentPendingProfileUpdate;
    self->_navigationIntentPendingProfileUpdate = 0;
  }
}

- (void)_restoreDigitalHealthFunctionalityAfterAppTransition
{
  if (self)
  {
    [self[109] startObserving];
    activeTabDocument = [self[41] activeTabDocument];
    if (activeTabDocument)
    {
      [self updatePrivateBrowsingAvailabilityWithCompletionHandler:0];
      if ([activeTabDocument shouldObscureForDigitalHealth])
      {
        -[BrowserController _showDigitalHealthOverlayForTabDocument:withPolicy:animated:](self, activeTabDocument, [activeTabDocument policy], 1);
      }

      [self[41] updateUsageTrackingInformationIfNecessary];
      v2 = MEMORY[0x277CBEB98];
      activeTabDocument2 = [self[41] activeTabDocument];
      v4 = [v2 setWithObject:activeTabDocument2];
      [(BrowserController *)self _updateDigitalHealthOverlayForTabDocuments:v4];
    }
  }
}

- (id)nextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained browserControllerNextResponder:self];
  }

  else
  {
    v4 = self->_rootViewController;
  }

  v5 = v4;

  return v5;
}

- (BOOL)isShowingPrivateTabs
{
  activeTabGroupOrTabGroupVisibleInSwitcher = [(TabController *)self->_tabController activeTabGroupOrTabGroupVisibleInSwitcher];
  isPrivateBrowsing = [activeTabGroupOrTabGroupVisibleInSwitcher isPrivateBrowsing];

  return isPrivateBrowsing;
}

- (LibraryConfiguration)_libraryConfiguration
{
  if (self)
  {
    v2 = objc_alloc_init(LibraryConfiguration);
    [(LibraryConfiguration *)v2 setNavigationIntentHandler:self];
    [(LibraryConfiguration *)v2 setLinkPreviewProvider:self];
    [(LibraryConfiguration *)v2 setTabGroupProvider:self[41]];
    [(LibraryConfiguration *)v2 setLibraryItemOpenHandler:self[41]];
    [(LibraryConfiguration *)v2 setBookmarksNavigationControllerDelegate:self];
    WeakRetained = objc_loadWeakRetained(self + 93);
    pinnedTabsManager = [WeakRetained pinnedTabsManager];
    [(LibraryConfiguration *)v2 setPinnedTabsManager:pinnedTabsManager];

    iconPool = [self[118] iconPool];
    [(LibraryConfiguration *)v2 setTabIconPool:iconPool];

    undoManager = [self[41] undoManager];
    [(LibraryConfiguration *)v2 setUndoManager:undoManager];

    v7 = self[41];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __42__BrowserController__libraryConfiguration__block_invoke;
    v16[3] = &unk_2781D6A20;
    v8 = v7;
    v17 = v8;
    [(LibraryConfiguration *)v2 setTabDocumentProvider:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__BrowserController__libraryConfiguration__block_invoke_2;
    v14[3] = &unk_2781D6A48;
    v9 = v8;
    v15 = v9;
    [(LibraryConfiguration *)v2 setCollectionViewTabProvider:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__BrowserController__libraryConfiguration__block_invoke_3;
    v12[3] = &unk_2781D6A70;
    v10 = v9;
    v13 = v10;
    [(LibraryConfiguration *)v2 setActiveTabProvider:v12];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)makeSidebarButton
{
  sidebarAction = [(BrowserController *)self sidebarAction];
  v3 = [BarButton sidebarButtonWithPrimaryAction:sidebarAction];

  return v3;
}

- (UIAction)sidebarAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__BrowserController_sidebarAction__block_invoke;
  v5[3] = &unk_2781D6528;
  objc_copyWeak(&v6, &location);
  v3 = [v2 actionWithHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)_updateDigitalHealthViewFrame
{
  if (self)
  {
    screenTimeOverlayViewController = [self[33] screenTimeOverlayViewController];
    if (screenTimeOverlayViewController)
    {
      _frameForScreenTimeOverlayViewControllerView = [(BrowserController *)self _frameForScreenTimeOverlayViewControllerView];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      view = [screenTimeOverlayViewController view];
      [view setFrame:{_frameForScreenTimeOverlayViewControllerView, v4, v6, v8}];

      shouldShowTab = [(BrowserController *)self _shouldShowTabBar];
      v11 = 0.0;
      if (shouldShowTab)
      {
        +[TabBar defaultHeight];
      }

      [screenTimeOverlayViewController setAdditionalVerticalSafeAreaMargin:v11];
      capsuleViewController = [self[33] capsuleViewController];
      capsuleCollectionView = [capsuleViewController capsuleCollectionView];
      [capsuleCollectionView obscuredInsets];
      [screenTimeOverlayViewController setAdditionalSafeAreaInsets:?];
    }
  }
}

- (void)_updateAppInfoOverlayFrame
{
  if (self)
  {
    activeTabDocument = [*(self + 328) activeTabDocument];
    appBanner = [activeTabDocument appBanner];

    overlayProvider = [appBanner overlayProvider];
    overlayViewController = [overlayProvider overlayViewController];
    view = [overlayViewController view];

    if (view)
    {
      [*(self + 288) bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = *(self + 264);
      [*(self + 936) bounds];
      [v14 obscuredInsetsWithComponents:10 forRect:*(self + 936) inCoordinateSpace:?];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      if ([MEMORY[0x277D49A08] isSolariumEnabled])
      {
        [view setLayoutMargins:{v16, v18, v20, v22}];
      }

      else
      {
        v7 = v7 + v18;
        v9 = v9 + v16;
        v11 = v11 - (v18 + v22);
        v13 = v13 - (v16 + v20);
      }

      [view setFrame:{v7, v9, v11, v13}];
    }
  }
}

- (void)updatePopoverPositionAfterSizeTransition
{
  viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
  presentedViewController = [viewControllerToPresentFrom presentedViewController];

  popoverPresentationController = [presentedViewController popoverPresentationController];
  delegate = [popoverPresentationController delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [delegate updatePopoverPosition];
  }
}

- (uint64_t)_shouldShowBookmarksBar
{
  selfCopy = self;
  if (self)
  {
    contentContainerView = [(BrowserController *)self contentContainerView];
    [contentContainerView bounds];
    v4 = v3;
    IsPad = _SFDeviceIsPad();
    if (v4 > *MEMORY[0x277D29130])
    {
      v6 = IsPad;
    }

    else
    {
      v6 = 0;
    }

    if (v6 == 1)
    {
      selfCopy = [(BrowserController *)selfCopy _prefersShowingBookmarksBar];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)updateExposedScrollViewRect
{
  if (([(_SFWebView *)self->_webView _isInFullscreen]& 1) == 0)
  {
    [(BrowserController *)self updateWebViewObscuredInsets];
    continuousReadingViewController = self->_continuousReadingViewController;

    [(ContinuousReadingViewController *)continuousReadingViewController updateContinuousPreviewViewSizeAttributes];
  }
}

- (void)updateWebViewObscuredInsets
{
  if (self && ([*(self + 936) _isInFullscreen] & 1) == 0)
  {
    activeTabDocument = [*(self + 328) activeTabDocument];
    view = [activeTabDocument view];

    [view setWebViewGeometryNeedsUpdate];
    if ((*(self + 114) & 1) != 0 || *(self + 152) == 1)
    {
      [view layoutIfNeeded];
    }
  }
}

- (void)setNeedsSnapshotUpdateForActiveTabIfTabIsBlank
{
  v2 = self->_needsSnapshotUpdateForBlankTabs || !self->_needsSnapshotUpdateForActiveTab;
  self->_needsSnapshotUpdateForBlankTabs = v2;
  [(BrowserController *)self _setNeedsSnapshotUpdateForActiveTab];
}

- (void)_setNeedsSnapshotUpdateForActiveTab
{
  if (self)
  {
    if ((*(self + 153) & 1) == 0)
    {
      *(self + 153) = 1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__BrowserController__setNeedsSnapshotUpdateForActiveTab__block_invoke;
      block[3] = &unk_2781D60B8;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (_SFSearchEngineInfo)activeSearchEngine
{
  mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
  v4 = [mEMORY[0x277CDB8A8] defaultSearchEngineForPrivateBrowsing:self->_privateBrowsingEnabled];

  return v4;
}

id __42__BrowserController__libraryConfiguration__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) activeTabDocument];
  v2 = [v1 wbTab];

  return v2;
}

- (BookmarksNavigationController)bookmarksNavigationController
{
  _bookmarksPresentationStyle = [(BrowserController *)self _bookmarksPresentationStyle];
  if (_bookmarksPresentationStyle - 1 >= 2)
  {
    if (!_bookmarksPresentationStyle)
    {
      if ([(BrowserController *)self isPresentingModalBookmarksController]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        modalBookmarksController = self->_modalBookmarksController;
      }

      else
      {
        modalBookmarksController = 0;
      }

      _bookmarksPresentationStyle = modalBookmarksController;
    }
  }

  else if ([(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar])
  {
    _bookmarksPresentationStyle = [(BrowserController *)self _sidebarViewController];
  }

  else
  {
    _bookmarksPresentationStyle = 0;
  }

  return _bookmarksPresentationStyle;
}

- (BOOL)isPresentingModalBookmarksController
{
  presentingViewController = [(ModalBookmarksPresenting *)self->_modalBookmarksController presentingViewController];
  v3 = presentingViewController != 0;

  return v3;
}

void __56__BrowserController__setNeedsSnapshotUpdateForActiveTab__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 153) = 0;
  if ([*(a1 + 32) shouldSnapshotActiveTab])
  {
    v4 = [*(*(a1 + 32) + 328) activeTabDocument];
    v2 = [v4 isBlank];
    v3 = *(a1 + 32);
    if ((v2 & 1) != 0 || (*(v3 + 154) & 1) == 0)
    {
      *(v3 + 154) = 0;
      [v4 setNeedsNewTabSnapshot];
    }
  }
}

- (void)updateFirstResponderOrFocus
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [BrowserController updateFocusForTab:"updateFocusForTab:webViewCanTakeFocus:" webViewCanTakeFocus:?];
}

- (BOOL)_hasPresentedViewController
{
  selfCopy = self;
  if (self)
  {
    viewControllerToPresentFrom = [self viewControllerToPresentFrom];
    presentedViewController = [viewControllerToPresentFrom presentedViewController];
    if (presentedViewController)
    {
      selfCopy = 1;
    }

    else
    {
      viewControllerToPresentFromNavigationBar = [selfCopy viewControllerToPresentFromNavigationBar];
      presentedViewController2 = [viewControllerToPresentFromNavigationBar presentedViewController];
      selfCopy = presentedViewController2 != 0;
    }
  }

  return selfCopy;
}

- (UIViewController)viewControllerToPresentFromNavigationBar
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained viewControllerToPresentFromNavigationBarForBrowserController:self];
  }

  else
  {
    v4 = self->_rootViewController;
  }

  v5 = v4;

  return v5;
}

- (void)didBecomeActive
{
  [(TabCollectionViewProviding *)self->_tabCollectionViewProvider setSnapshotsEnabled:1];
  [(TabCollectionViewProviding *)self->_tabCollectionViewProvider setPostponedSnapshotInvalidationCondition:0];
  [(UIScrollView *)self->_scrollView flashScrollIndicators];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [(NSDate *)self->_resignActiveDate timeIntervalSinceNow];
  if (v3 < -480.0)
  {
    [(BrowserController *)self showBars];
    tabBar = [(BrowserRootViewController *)self->_rootViewController tabBar];
    tabBarItem = [activeTabDocument tabBarItem];
    [tabBar scrollToItem:tabBarItem animated:0];

    [activeTabDocument stopAdvertisingProactiveActivityContent];
  }

  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [_catalogViewController resume];

  [(BrowserController *)&self->super.super.super.isa _restoreDigitalHealthFunctionalityAfterAppTransition];
  appBanner = [activeTabDocument appBanner];
  [(BrowserController *)self _setShowingAppBanner:appBanner isShowing:1];

  if (!self->_suppressWebExtensionEvents)
  {
    webExtensionsController = [activeTabDocument webExtensionsController];
    activeWebExtensionWindow = [(BrowserController *)self activeWebExtensionWindow];
    [webExtensionsController didActivateWindow:activeWebExtensionWindow];
  }

  [(BrowserController *)self updatePresenceForActiveUser];
}

- (uint64_t)_isWindowLockedForPrivateBrowsing
{
  if (!self || ![self isShowingPrivateTabs])
  {
    return 0;
  }

  v1 = +[Application sharedApplication];
  isPrivateBrowsingLocked = [v1 isPrivateBrowsingLocked];

  return isPrivateBrowsingLocked;
}

- (BOOL)canBecomeFirstResponder
{
  isWindowLockedForPrivate = [(BrowserController *)self _isWindowLockedForPrivateBrowsing];
  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState] == 1)
  {

LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  presentationState = [tabThumbnailCollectionView presentationState];

  if (presentationState == 2)
  {
    goto LABEL_6;
  }

  webView = self->_webView;
  if (!webView)
  {
    goto LABEL_6;
  }

  v7 = [(_SFWebView *)webView canBecomeFirstResponder]| isWindowLockedForPrivate;
LABEL_7:

  return v7 & 1;
}

- (void)_updateNavigationBarSeparator
{
  if (self)
  {
    _visibleAppBanner = [(BrowserController *)self _visibleAppBanner];
    [*(self + 264) setUsesFaintTopSeparator:_visibleAppBanner != 0];
  }
}

- (id)_visibleAppBanner
{
  if (self)
  {
    activeTabDocument = [*(self + 328) activeTabDocument];
    appBanner = [activeTabDocument appBanner];

    overlayProvider = [appBanner overlayProvider];
    if ([overlayProvider isAvailable])
    {
      v4 = 0;
    }

    else
    {
      v4 = appBanner;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updatePresenceForActiveUser
{
  tabGroupManager = self->_tabGroupManager;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  uuid = [activeTabDocument uuid];
  uUIDString = [uuid UUIDString];
  [(WBTabGroupManager *)tabGroupManager movePresenceForParticipantToTabWithUUID:uUIDString];
}

- (int64_t)siriReaderPlaybackStateForActiveTab
{
  mEMORY[0x277D28D50] = [MEMORY[0x277D28D50] sharedVoiceUtilities];
  activeSiriReaderSessionIdentifier = [mEMORY[0x277D28D50] activeSiriReaderSessionIdentifier];

  mEMORY[0x277D28D50]2 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
  activeSiriReaderSessionURL = [mEMORY[0x277D28D50]2 activeSiriReaderSessionURL];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  readerContext = [activeTabDocument readerContext];
  readerURL = [readerContext readerURL];
  LOBYTE(self) = WBSIsEqual();

  if (self)
  {
    mEMORY[0x277D28D48] = [MEMORY[0x277D28D48] sharedPlaybackController];
    nowPlayingContentIdentifier = [mEMORY[0x277D28D48] nowPlayingContentIdentifier];
    v12 = [nowPlayingContentIdentifier isEqualToString:activeSiriReaderSessionIdentifier];

    if (v12)
    {
      mEMORY[0x277D28D48]2 = [MEMORY[0x277D28D48] sharedPlaybackController];
      currentPlaybackState = [mEMORY[0x277D28D48]2 currentPlaybackState];

      mEMORY[0x277D28D48]3 = [MEMORY[0x277D28D48] sharedPlaybackController];
      nowPlayingContentIdentifier2 = [mEMORY[0x277D28D48]3 nowPlayingContentIdentifier];
      v17 = [nowPlayingContentIdentifier2 isEqualToString:activeSiriReaderSessionIdentifier];
      if (currentPlaybackState == 3)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        currentPlaybackState = 1;
      }

      else
      {
        if (currentPlaybackState == 3)
        {
          v19 = 3;
        }

        else
        {
          v19 = 0;
        }

        if ((currentPlaybackState - 1) >= 2)
        {
          currentPlaybackState = v19;
        }
      }
    }

    else
    {
      currentPlaybackState = 3;
    }
  }

  else
  {
    currentPlaybackState = 0;
  }

  return currentPlaybackState;
}

- (SFSiriLinkCoordinator)siriLinkCoordinator
{
  siriLinkCoordinator = self->_siriLinkCoordinator;
  if (!siriLinkCoordinator)
  {
    v4 = objc_alloc_init(MEMORY[0x277D28D40]);
    v5 = self->_siriLinkCoordinator;
    self->_siriLinkCoordinator = v4;

    [(SFSiriLinkCoordinator *)self->_siriLinkCoordinator setActionPerformer:self];
    siriLinkCoordinator = self->_siriLinkCoordinator;
  }

  return siriLinkCoordinator;
}

- (UnifiedField)unifiedField
{
  capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  unifiedField = [capsuleViewController unifiedField];
  v5 = unifiedField;
  if (unifiedField)
  {
    textField = unifiedField;
  }

  else
  {
    _topNavigationBar = [(BrowserController *)&self->super.super.super.isa _topNavigationBar];
    textField = [_topNavigationBar textField];
  }

  return textField;
}

- (BOOL)hasDedicatedExtensionsButton
{
  IsPad = _SFDeviceIsPad();
  if (IsPad)
  {
    IsPad = [(BrowserRootViewController *)self->_rootViewController usingUnifiedBar];
    if (IsPad)
    {
      LOBYTE(IsPad) = [(BrowserController *)self tabBarDisplayMode]!= 1;
    }
  }

  return IsPad;
}

- (void)showBars
{
  if (![(BrowserRootViewController *)self->_rootViewController isInYttriumState])
  {
    capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    capsuleCollectionView = [capsuleViewController capsuleCollectionView];
    selectedItemIsMinimized = [capsuleCollectionView selectedItemIsMinimized];

    if (selectedItemIsMinimized)
    {
      [capsuleViewController transitionToState:0 animated:1 completionHandler:0];
    }

    tabBarManager = [(BrowserController *)self tabBarManager];
    inlineTabBar = [tabBarManager inlineTabBar];
    [inlineTabBar revealActiveItemIfNeeded];

    dynamicBarAnimator = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
    [dynamicBarAnimator attemptTransitionToState:1 animated:1];
  }
}

- (id)activeLibraryType
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  libraryType = [activeTabDocument libraryType];

  return libraryType;
}

- (id)_topContinuousReadingBanner
{
  if (self)
  {
    self = [self[10] topBannerView];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)_obscuredInsetsIncludeRefreshControl
{
  if (result)
  {
    if ((*(result + 322) & 1) != 0 || ![OUTLINED_FUNCTION_6_0() _isVerticalBouncing])
    {
      return 1;
    }

    else
    {
      return [OUTLINED_FUNCTION_6_0() isDragging] ^ 1;
    }
  }

  return result;
}

- (double)_refreshControlHeight
{
  if (!self)
  {
    return 0.0;
  }

  refreshControl = [*(self + 264) refreshControl];
  if (refreshControl)
  {
    [*(self + 288) contentOffset];
    v4 = v3;
    [*(self + 288) adjustedContentInset];
    v6 = -v4 - v5;
    if ([refreshControl isRefreshing])
    {
      [refreshControl bounds];
      v6 = v6 + CGRectGetHeight(v9);
    }

    v7 = fmax(v6, 0.0);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (BOOL)_isInContinuousMode
{
  if (!self)
  {
    return 0;
  }

  currentItem = [*(self + 80) currentItem];
  v2 = currentItem != 0;

  return v2;
}

- (void)_updateRefreshControlHeight
{
  if (self)
  {
    if ((*(self + 322) & 1) != 0 || ![OUTLINED_FUNCTION_6_0() _isVerticalBouncing] || (v2 = objc_msgSend(OUTLINED_FUNCTION_6_0(), "isDragging"), refreshed = 0.0, (v2 & 1) == 0))
    {
      refreshed = [(BrowserController *)self _refreshControlHeight];
    }

    if (refreshed != *(self + 128))
    {
      *(self + 128) = refreshed;

      [(BrowserController *)self updateWebViewObscuredInsets];
    }
  }
}

- (void)_updateScribbleOverlayIfNeeded
{
  if (self)
  {
    activeTabDocument = [self[41] activeTabDocument];
    sfScribbleControllerIfLoaded = [activeTabDocument sfScribbleControllerIfLoaded];
    isScribbling = [sfScribbleControllerIfLoaded isScribbling];

    if (isScribbling)
    {
      sfScribbleControllerIfLoaded2 = [activeTabDocument sfScribbleControllerIfLoaded];
      webView = [self webView];
      scrollView = [webView scrollView];
      [sfScribbleControllerIfLoaded2 updateOverlayInScrollView:scrollView];
    }
  }
}

- (void)updateInterface
{
  if ([(BrowserRootViewController *)self->_rootViewController isViewLoaded])
  {
    [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerView];
    [(BrowserController *)&self->super.super.super.isa _updateCurrentContinuousReadingItem];
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    [activeTabDocument updateTabTitle];
    _animationsAreEnabled = [(BrowserController *)self _animationsAreEnabled];
    [(BrowserController *)self _updateButtonsAnimatingTabBar:_animationsAreEnabled];
    [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
    [(BrowserController *)self _updateAppInfoOverlayFrame];
    [(BrowserRootViewController *)self->_rootViewController safari_updateApplicationBackgroundStyle];
    navigationBarItem = [activeTabDocument navigationBarItem];
    tabBarManager = [(BrowserRootViewController *)self->_rootViewController tabBarManager];
    lockdownStatusBar = [tabBarManager lockdownStatusBar];
    [lockdownStatusBar setNavigationBarItem:navigationBarItem];

    activeTabDocument2 = [(TabController *)self->_tabController activeTabDocument];
    -[BrowserRootViewController setInYttriumMode:](self->_rootViewController, "setInYttriumMode:", [activeTabDocument2 inWebClipScope]);

    if ([(NSTimer *)self->_enterYttriumStateTimer isValid])
    {
      view = [activeTabDocument view];
      [view setInteractionHintPresented:0 animated:0];
    }
  }
}

- (void)_updateCurrentPageBannerView
{
  if (self)
  {
    previousItemPreviewView = [self[10] previousItemPreviewView];
    currentItem = [self[10] currentItem];
    v3 = self[10];
    if (currentItem)
    {
      topBannerView = [v3 topBannerView];
      continuousReadingItem = [topBannerView continuousReadingItem];
      v6 = [continuousReadingItem isEqual:currentItem];

      if ((v6 & 1) == 0)
      {
        previousContinuousItemDocument = [self previousContinuousItemDocument];
        [self clearDocumentForContinuousReading:previousContinuousItemDocument];

        v8 = [[ContinuousReadingPreviewView alloc] initWithContinuousReadingItem:currentItem previewingNextDocument:0];
        [self[10] setPreviousItemPreviewView:v8];

        [(BrowserController *)self _preparePreviousContinuousDocumentIfNeeded];
      }

      previousItemPreviewView2 = [self[10] previousItemPreviewView];
      superview = [previousItemPreviewView2 superview];
      v11 = self[36];

      if (superview != v11)
      {
        [self[36] addSubview:previousItemPreviewView2];
      }

      [previousItemPreviewView2 setFrame:-[BrowserController _frameForCurrentPageBannerView](self)];
    }

    else
    {
      [v3 setPreviousItemPreviewView:0];
    }

    previousItemPreviewView3 = [self[10] previousItemPreviewView];

    if (previousItemPreviewView != previousItemPreviewView3)
    {
      [self[33] updateWebViewSizeAttributes];
      [self[10] updateOuterScrollView];
    }
  }
}

- (void)_updateCurrentContinuousReadingItem
{
  if (self)
  {
    activeTabDocument = [self[41] activeTabDocument];
    continuousReadingController = [self continuousReadingController];
    if ([activeTabDocument isShowingContinuous])
    {
      currentReadingListItem = [continuousReadingController currentReadingListItem];
      [continuousReadingController nextReadingListItem];
      v5 = v4 = currentReadingListItem;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    [(BrowserController *)self setCurrentContinuousReadingItem:v4];
    previewView = [self[10] previewView];
    continuousReadingItem = [previewView continuousReadingItem];
    v8 = [continuousReadingItem isEqual:v5];

    if ((v8 & 1) == 0)
    {
      nextContinuousItemDocument = [self nextContinuousItemDocument];
      [self clearDocumentForContinuousReading:nextContinuousItemDocument];

      if (v5)
      {
        v10 = [[ContinuousReadingPreviewView alloc] initWithContinuousReadingItem:v5 previewingNextDocument:1];
      }

      else
      {
        v10 = 0;
      }

      [(BrowserController *)self _setContinuousReadingPreviewView:v10];
      [(BrowserController *)self _prepareTabDocumentForNextContinuousItemIfNeeded];
    }
  }
}

- (ContinuousReadingController)continuousReadingController
{
  continuousReadingController = self->_continuousReadingController;
  if (!continuousReadingController)
  {
    v4 = [[ContinuousReadingController alloc] initWithTabController:self->_tabController];
    v5 = self->_continuousReadingController;
    self->_continuousReadingController = v4;

    continuousReadingController = self->_continuousReadingController;
  }

  return continuousReadingController;
}

- (void)_prepareTabDocumentForNextContinuousItemIfNeeded
{
  if (self && !self[20])
  {
    continuousReadingController = [self continuousReadingController];
    nextReadingListItem = [continuousReadingController nextReadingListItem];

    v3 = nextReadingListItem;
    if (nextReadingListItem)
    {
      v4 = [nextReadingListItem URL];
      if (v4)
      {
        v5 = [(BrowserController *)self _cachedDocumentForContinuousReadingItem:nextReadingListItem];
        v6 = self[20];
        self[20] = v5;

        v7 = self[20];
        if (!v7)
        {
          v8 = [[TabDocument alloc] initForBackgroundLoadingWithBrowserController:self relatedWebView:0 webViewToCloneSessionStorageFrom:0];
          v9 = self[20];
          self[20] = v8;

          v7 = self[20];
        }

        [v7 beginSuppressingProgressAnimation];
        [self[20] setAllowsRemoteInspection:0];
        if ([self readerShouldBeShownIfPossible] && (objc_msgSend(self[20], "readerWebView"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          readerWebView = [self[20] readerWebView];
        }

        else
        {
          readerWebView = [self[20] webView];
        }

        [self[10] didCreateWebViewForNextDocument:readerWebView];
        if (([self[20] suppressWebExtensionEvents] & 1) == 0)
        {
          webExtensionsController = [self[20] webExtensionsController];
          [webExtensionsController didOpenTab:self[20]];
        }
      }

      v3 = nextReadingListItem;
    }
  }
}

- (uint64_t)_updateLibraryTypeForNewDocument
{
  if (result)
  {
    v1 = result;
    result = [*(result + 328) updatingTabGroupTabs];
    if ((result & 1) == 0)
    {
      [(BrowserController *)v1 _setLibraryForCatalogViewController];

      return [v1 updateUnifiedBarVisibility];
    }
  }

  return result;
}

- (void)updateUnifiedBarVisibility
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserControllerShouldUpdateUnifiedBarVisibility:self];
  }
}

- (void)updateTabViewPinchRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained updateTabViewPinchRecognizerForBrowserController:self];
}

- (void)_presentPendingViewControllerForActiveTab
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Trying to present pending view controller when it is already presented by: %{public}@", v5);
}

- (BOOL)isShowingStartPage
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if ([(BrowserController *)self _isStartPageOverriddenByExtensionInTabDocument:activeTabDocument])
  {
    if (![activeTabDocument isBlank])
    {
      v5 = 0;
      goto LABEL_7;
    }

    isShowingStartPageOverriddenByExtension = [activeTabDocument isShowingStartPageOverriddenByExtension];
  }

  else
  {
    isShowingStartPageOverriddenByExtension = [activeTabDocument isBlank];
  }

  v5 = isShowingStartPageOverriddenByExtension;
LABEL_7:

  return v5;
}

- (WBSWebExtensionWindow)activeWebExtensionWindow
{
  if (self->_privateBrowsingEnabled && self->_privateBrowsingAvailable)
  {
    v2 = &OBJC_IVAR___BrowserController__privateExtensionWindow;
  }

  else
  {
    v2 = &OBJC_IVAR___BrowserController__normalExtensionWindow;
  }

  return *(&self->super.super.super.isa + *v2);
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  [(TabController *)self->_tabController clearBrowserController];
  tabController = self->_tabController;
  self->_tabController = 0;

  tabCollectionViewProvider = self->_tabCollectionViewProvider;
  self->_tabCollectionViewProvider = 0;

  [(_SFBarManager *)self->_barManager cancelCoalescedUpdates];
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self];

  [(WKWebpagePreferences *)self->_defaultWebpagePreferences removeObserver:self forKeyPath:*MEMORY[0x277D4A278]];
  safari_standardUserDefaultsWithOptimizedKeyValueObserving = [MEMORY[0x277CBEBD0] safari_standardUserDefaultsWithOptimizedKeyValueObserving];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = observableWebKitFeaturesByDefaultsKey();
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [safari_standardUserDefaultsWithOptimizedKeyValueObserving removeObserver:self forKeyPath:*(*(&v14 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(NSTimer *)self->_lastTimerForDelayingSpeculativelyPreloadingTopHit invalidate];
  lastTimerForDelayingSpeculativelyPreloadingTopHit = self->_lastTimerForDelayingSpeculativelyPreloadingTopHit;
  self->_lastTimerForDelayingSpeculativelyPreloadingTopHit = 0;

  v13.receiver = self;
  v13.super_class = BrowserController;
  [(BrowserController *)&v13 dealloc];
}

- (void)restoreInterfaceAfterElementFullscreen
{
  if (![(BrowserRootViewController *)self->_rootViewController isPerformingSizeTransition])
  {
    self->_isRestoringInterfaceAfterElementFullscreen = 1;
    view = [(BrowserRootViewController *)self->_rootViewController view];
    [view frame];
    v5 = v4;
    v7 = v6;

    [(BrowserController *)self rootViewControllerViewWillTransitionToSize:v5, v7];
    [(BrowserController *)self rootViewControllerViewTransitionFromSize:1 includingSidebar:0 animated:v5, v7];
    [(BrowserController *)self rootViewControllerViewDidTransitionFromSize:0 animated:v5, v7];
    self->_isRestoringInterfaceAfterElementFullscreen = 0;
  }
}

- (BOOL)_canScrollToTopInView:(uint64_t)view
{
  v3 = a2;
  v4 = v3;
  if (view)
  {
    [v3 contentOffset];
    v6 = v5;
    [v4 contentInset];
    if (v6 > -v7)
    {
      v9 = 1;
    }

    else
    {
      dynamicBarAnimator = [*(view + 264) dynamicBarAnimator];
      v9 = [dynamicBarAnimator state] == 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)willResignActive
{
  date = [MEMORY[0x277CBEAA8] date];
  resignActiveDate = self->_resignActiveDate;
  self->_resignActiveDate = date;

  [(WBTabGroupManager *)self->_tabGroupManager movePresenceForParticipantToTabWithUUID:0];
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  [WeakRetained saveBrowserState];
}

- (void)didEnterBackground
{
  objc_initWeak(&location, self);
  self->_backgrounded = 1;
  [(BrowserRootViewController *)self->_rootViewController setInYttriumState:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__BrowserController_didEnterBackground__block_invoke;
  v14[3] = &unk_2781D60B8;
  v14[4] = self;
  [MEMORY[0x277D75D18] safari_performWithoutRetargetingAnimations:v14];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = *MEMORY[0x277D767B0];
  v3 = *MEMORY[0x277D76620];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__BrowserController_didEnterBackground__block_invoke_2;
  v9[3] = &unk_2781D60E0;
  v9[4] = &v10;
  v4 = [v3 beginBackgroundTaskWithName:@"com.apple.mobilesafari.FlushTabSnapshots" expirationHandler:v9];
  v11[3] = v4;
  tabCollectionViewProvider = self->_tabCollectionViewProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__BrowserController_didEnterBackground__block_invoke_75;
  v7[3] = &unk_2781D6108;
  objc_copyWeak(&v8, &location);
  v7[4] = &v10;
  [(TabCollectionViewProviding *)tabCollectionViewProvider flushPendingSnapshotsWithCompletion:v7];
  [(TabController *)self->_tabController closeTabsAutomaticallyIfNecessary];
  [(TabController *)self->_tabController deactivateAllUsageTrackingInformationIfNecessary];
  if (!self->_tabDocumentPlayingPIPVideo)
  {
    [(WBSDigitalHealthManager *)self->_digitalHealthManager stopObservingWithCompletionHandler:0];
  }

  v6 = +[MediaCaptureStatusBarManager sharedManager];
  [v6 browserControllerDidEnterBackground:self];

  objc_destroyWeak(&v8);
  _Block_object_dispose(&v10, 8);
  objc_destroyWeak(&location);
}

uint64_t __39__BrowserController_didEnterBackground__block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __39__BrowserController_didEnterBackground__block_invoke_2_cold_1();
  }

  return [*MEMORY[0x277D76620] endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

uint64_t __39__BrowserController_didEnterBackground__block_invoke_75(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [(BrowserController *)WeakRetained _flushPendingSnapshotsDidComplete];
  }

  v4 = *MEMORY[0x277D76620];
  v5 = *(*(*(a1 + 32) + 8) + 24);

  return [v4 endBackgroundTask:v5];
}

- (void)_flushPendingSnapshotsDidComplete
{
  if (val)
  {
    objc_initWeak(&location, val);
    if (*(val + 719) == 1)
    {
      traitCollection = [val[33] traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __54__BrowserController__flushPendingSnapshotsDidComplete__block_invoke;
      v4[3] = &unk_2781D6130;
      objc_copyWeak(v5, &location);
      v5[1] = userInterfaceStyle;
      [val[118] setPostponedSnapshotInvalidationCondition:v4];
      [val[118] setSnapshotsEnabled:0];
      objc_destroyWeak(v5);
    }

    objc_destroyWeak(&location);
  }
}

BOOL __54__BrowserController__flushPendingSnapshotsDidComplete__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[33] traitCollection];
    v5 = [v4 userInterfaceStyle] != *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)invalidateSourceApplication
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  allTabDocuments = [(TabController *)self->_tabController allTabDocuments];
  v3 = [allTabDocuments countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(allTabDocuments);
        }

        [*(*(&v6 + 1) + 8 * v5++) invalidateSourceApplication];
      }

      while (v3 != v5);
      v3 = [allTabDocuments countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (BOOL)isAnyPageLoaded
{
  windowState = [(TabController *)self->_tabController windowState];
  localTabGroup = [windowState localTabGroup];
  tabs = [localTabGroup tabs];
  if ([tabs safari_containsObjectPassingTest:&__block_literal_global_8])
  {
    v5 = 1;
  }

  else
  {
    privateTabGroup = [windowState privateTabGroup];
    tabs2 = [privateTabGroup tabs];
    v5 = [tabs2 safari_containsObjectPassingTest:&__block_literal_global_8];
  }

  return v5;
}

BOOL __36__BrowserController_isAnyPageLoaded__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];
  v3 = v2 != 0;

  return v3;
}

- (void)_setShowingAppBanner:(int)banner isShowing:
{
  v6 = a2;
  if (self)
  {
    [(BrowserController *)self _updateNavigationBarSeparator];
    if (v6)
    {
      if (([(BrowserController *)self _setShowingOverlayForBanner:v6 showing:banner]& 1) == 0)
      {
        if (banner)
        {
          v5 = v6;
        }

        else
        {
          v5 = 0;
        }

        [*(self + 784) setAppBanner:v5 animated:0];
      }
    }
  }
}

- (void)_showDigitalHealthOverlayForTabDocument:(uint64_t)document withPolicy:(uint64_t)policy animated:
{
  v14 = a2;
  if (self)
  {
    [v14 addMediaSuspensionReason:1];
    if ((*(self + 710) & 1) == 0)
    {
      tabThumbnailCollectionView = [*(self + 944) tabThumbnailCollectionView];
      if ([tabThumbnailCollectionView presentationState] == 1)
      {
        v8 = tabThumbnailCollectionView;
        goto LABEL_5;
      }

      presentationState = [tabThumbnailCollectionView presentationState];

      if (presentationState == 2)
      {
        goto LABEL_8;
      }

      v10 = [(BrowserController *)self _isTabDocumentFrontMostForDigitalHealth:v14];

      if (v10)
      {
        v8 = [v14 URL];
        if (!v8)
        {
          goto LABEL_6;
        }

        [self showBars];
        firstResponder = [*(self + 936) firstResponder];
        [firstResponder resignFirstResponder];

        tabThumbnailCollectionView = [(BrowserController *)self _screenTimeHostingViewControllerForTabDocument:v14];
        screenTimeOverlayViewController = [tabThumbnailCollectionView screenTimeOverlayViewController];
        if (!screenTimeOverlayViewController)
        {
          screenTimeOverlayViewController = objc_alloc_init(MEMORY[0x277D28D30]);
          [tabThumbnailCollectionView setScreenTimeOverlayViewController:screenTimeOverlayViewController];
        }

        [(BrowserController *)self _updateDigitalHealthViewFrame];
        v13 = [screenTimeOverlayViewController showBlockingViewControllerForURL:v8 withPolicy:document animated:policy];
        [v14 setAssociatedBlockingViewController:v13];
        if (v13)
        {
          [(BrowserController *)self _insertScreenTimeLockoutShieldIntoContentViewForTab:v14 animated:policy];
        }

        [v14 dismissSiriReaderMediaSessionImmediately:0];

LABEL_5:
LABEL_6:
        tabThumbnailCollectionView = v8;
LABEL_8:
      }
    }
  }
}

- (void)_updateDigitalHealthOverlayForTabDocuments:(void *)documents
{
  v35 = *MEMORY[0x277D85DE8];
  v20 = a2;
  if (documents && [v20 count])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v4 = [MEMORY[0x277CBEB58] set];
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v29 = 0u;
    v5 = v20;
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v6)
    {
      v7 = *v30;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          v10 = [v9 URL];
          safari_canonicalURL = [v10 safari_canonicalURL];

          if (safari_canonicalURL)
          {
            [v3 addObject:safari_canonicalURL];
            [v4 addObject:v9];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v6);
    }

    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v14)
    {
      v15 = *v26;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [weakObjectsPointerArray addPointer:{*(*(&v25 + 1) + 8 * j), v20}];
        }

        v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v14);
    }

    objc_initWeak(&location, documents);
    v17 = documents[109];
    allObjects = [v3 allObjects];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__BrowserController__updateDigitalHealthOverlayForTabDocuments___block_invoke;
    v21[3] = &unk_2781D7088;
    objc_copyWeak(&v23, &location);
    v19 = weakObjectsPointerArray;
    v22 = v19;
    [v17 getOverlayStateForURLs:allObjects withCompletionHandler:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

- (void)loadURL:(id)l
{
  lCopy = l;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  v5 = [activeTabDocument loadURL:lCopy userDriven:0];
}

- (BOOL)showDemoModeFeatureDisabledAlert
{
  isRunningInStoreDemoMode = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  if (isRunningInStoreDemoMode && !self->_showingDemoModeAlert)
  {
    self->_showingDemoModeAlert = 1;
    v4 = MEMORY[0x277D75110];
    v5 = _WBSLocalizedString();
    v6 = [v4 alertControllerWithTitle:v5 message:0 preferredStyle:1];

    v7 = MEMORY[0x277D750F8];
    v8 = _WBSLocalizedString();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__BrowserController_showDemoModeFeatureDisabledAlert__block_invoke;
    v12[3] = &unk_2781D6158;
    v12[4] = self;
    v9 = [v7 actionWithTitle:v8 style:1 handler:v12];
    [v6 addAction:v9];

    viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
    [viewControllerToPresentFrom presentViewController:v6 animated:1 completion:0];
  }

  return isRunningInStoreDemoMode;
}

- (_SFPageFormatMenuController)pageFormatMenuController
{
  pageFormatMenuController = self->_pageFormatMenuController;
  if (!pageFormatMenuController)
  {
    v4 = [objc_alloc(MEMORY[0x277CDB830]) initWithBrowserContentController:self];
    v5 = self->_pageFormatMenuController;
    self->_pageFormatMenuController = v4;

    pageFormatMenuController = self->_pageFormatMenuController;
  }

  return pageFormatMenuController;
}

- (void)_setShowingTabBar:(char)bar animated:
{
  if (self)
  {
    if ([self[33] isShowingTabBar] != a2)
    {
      [self[33] willToggleTabBar];
      tabBar = [self[33] tabBar];
      _catalogViewController = [(BrowserController *)self _catalogViewController];
      view = [_catalogViewController view];

      [view layoutIfNeeded];
      navigationBar = [self[33] navigationBar];
      [navigationBar layoutIfNeeded];
      [self[33] setShowingTabBar:a2];
      [tabBar setHidesTitles:a2 ^ 1];
      [self[117] layoutIfNeeded];
      v10 = MEMORY[0x277D75D18];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __48__BrowserController__setShowingTabBar_animated___block_invoke;
      v17 = &unk_2781D6180;
      selfCopy = self;
      v11 = tabBar;
      v19 = v11;
      v12 = navigationBar;
      v20 = v12;
      v13 = view;
      v21 = v13;
      [(UIView *)0.25 safari_animate:v10 withDuration:bar animations:&v14];
      [self[33] didToggleTabBar];
    }
  }
}

uint64_t __48__BrowserController__setShowingTabBar_animated___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  [*(a1 + 32) updateDynamicBarGeometry];
  v2 = [*(*v1 + 264) view];
  [v2 layoutIfNeeded];
  return __48__BrowserController__setShowingTabBar_animated___block_invoke_cold_1(v2);
}

- (void)setShowingCrashBanner:(BOOL)banner animated:(BOOL)animated
{
  animatedCopy = animated;
  bannerCopy = banner;
  crashBanner = [(BannerController *)self->_bannerController crashBanner];
  v8 = crashBanner;
  if (crashBanner)
  {
    v9 = 0;
  }

  else
  {
    v9 = !bannerCopy;
  }

  if (!v9)
  {
    v10 = !crashBanner || !bannerCopy;
    v13 = crashBanner;
    if (v10 || (v11 = [crashBanner messageType], v8 = v13, v11))
    {
      if (bannerCopy)
      {
        v12 = objc_alloc_init(MEMORY[0x277D28C30]);
      }

      else
      {
        v12 = 0;
      }

      [(BrowserController *)self showCrashBanner:v12 animated:animatedCopy];

      v8 = v13;
    }
  }
}

- (void)showCrashBanner:(id)banner animated:(BOOL)animated
{
  animatedCopy = animated;
  bannerCopy = banner;
  crashBanner = [(BannerController *)self->_bannerController crashBanner];
  if ((bannerCopy == 0) == (crashBanner != 0) || (v7 = [bannerCopy messageType], v7 != objc_msgSend(crashBanner, "messageType")))
  {
    v8 = _SFBackdropGroupNameForOwner();
    [bannerCopy setBackdropGroupName:v8];

    closeButton = [bannerCopy closeButton];
    [closeButton addTarget:self action:sel__hideCrashBanner forControlEvents:64];

    [(BannerController *)self->_bannerController setCrashBanner:bannerCopy animated:animatedCopy];
  }
}

- (int64_t)bookmarksPresentationStyleForViewOfSize:(CGSize)size
{
  result = 0;
  if (size.width > *MEMORY[0x277D29130] && size.height >= 441.0)
  {
    if (size.width <= 1366.0)
    {
      if (size.width / size.height <= 1.3)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (BOOL)canHideBars
{
  dynamicBarAnimator = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
  v3 = [dynamicBarAnimator canTransitionToState:0];

  return v3;
}

- (void)setUsesNarrowLayout:(BOOL)layout
{
  if (self->_usesNarrowLayout == !layout)
  {
    self->_usesNarrowLayout = layout;
    [(BrowserController *)self _updateUsesNarrowLayout];
  }
}

- (uint64_t)_shouldHideCatalogViewControllerForSizeChange
{
  selfCopy = self;
  if (self)
  {
    v2 = self[105];
    if (v2 <= 5)
    {
      if (((1 << v2) & 0x19) != 0)
      {
        _catalogViewController = [(BrowserController *)self _catalogViewController];
        if ([_catalogViewController isShowingCompletions])
        {
          LOBYTE(selfCopy) = 1;
        }

        else
        {
          unifiedField = [selfCopy unifiedField];
          LOBYTE(selfCopy) = [unifiedField isFirstResponder];
        }
      }

      else
      {
        LOBYTE(selfCopy) = *(self + 473);
      }
    }
  }

  return selfCopy & 1;
}

- (void)_downloadsTotalProgressDidChange:(id)change
{
  mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
  [mEMORY[0x277CDB7A8] totalProgress];
  v5 = v4;

  [(_SFBarManager *)self->_barManager setDownloadsItemProgress:v5];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  unifiedTabBarItem = [activeTabDocument unifiedTabBarItem];
  [unifiedTabBarItem setDownloadProgress:1 animated:v5];
}

- (void)_downloadManagerDidFinishLastDownload:(id)download
{
  capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  if ([capsuleViewController capsuleIsMinimized])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__BrowserController__downloadManagerDidFinishLastDownload___block_invoke;
    v5[3] = &unk_2781D60B8;
    v5[4] = self;
    [capsuleViewController transitionToState:0 animated:1 completionHandler:v5];
  }

  else
  {
    [(_SFBarManager *)self->_barManager pulseDownloadsItem];
  }
}

- (void)_hasUnviewedDownloadsDidChange:(id)change
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument updateMenuButtonShowsBadge];

  [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
}

- (void)_updateButtonsAnimatingTabBar:(uint64_t)bar
{
  if (bar)
  {
    LODWORD(v2) = a2;
    tabThumbnailCollectionView = [*(bar + 944) tabThumbnailCollectionView];
    presentationState = [tabThumbnailCollectionView presentationState];

    if (presentationState)
    {
      v2 = 0;
    }

    else
    {
      v2 = v2;
    }

    [*(bar + 944) updateTabViewsAnimatingTabBar:v2];
    activeTabDocument = [*(bar + 328) activeTabDocument];
    v7 = *(bar + 848);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__BrowserController__updateButtonsAnimatingTabBar___block_invoke;
    v9[3] = &unk_2781D61F8;
    v10 = activeTabDocument;
    barCopy = bar;
    v8 = activeTabDocument;
    [v7 performCoalescedUpdatesAnimated:v2 updates:v9];
  }
}

- (uint64_t)_shouldShowSidebarForSizeChange
{
  selfCopy = self;
  if (self)
  {
    view = [*(self + 264) view];
    [view bounds];
    selfCopy = [(BrowserController *)selfCopy _shouldShowSidebarForSizeChangeToSize:v3, v4];
  }

  return selfCopy;
}

- (uint64_t)_shouldShowSidebarForSizeChangeToSize:(double)size
{
  if (result)
  {
    v5 = result;
    tabThumbnailCollectionView = [*(result + 944) tabThumbnailCollectionView];
    if ([tabThumbnailCollectionView presentationState] == 1)
    {

      return 0;
    }

    presentationState = [tabThumbnailCollectionView presentationState];

    if (presentationState == 2)
    {
      return 0;
    }

    v8 = [v5 bookmarksPresentationStyleForViewOfSize:{a2, size}];
    if ([*(v5 + 768) isShowingSidebar])
    {
      if (!v8)
      {
        return 0;
      }

      if (*(v5 + 464) == v8)
      {
        return 1;
      }

      if (v8 != 2)
      {
        return 0;
      }

      return [(BrowserController *)v5 shouldShowSidebarInLandscape];
    }

    else
    {
      if (a2 <= size)
      {
        return 0;
      }

      LODWORD(result) = [(BrowserController *)v5 shouldShowSidebarInLandscape];
      if (v8 == 2)
      {
        return result;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (uint64_t)shouldShowSidebarInLandscape
{
  if (!self || ([self usesNarrowLayout] & 1) != 0)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [standardUserDefaults BOOLForKey:@"ShowSidebar"];

  return v1;
}

- (uint64_t)_shouldShowBarsForSizeChange
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  viewControllerToPresentFrom = [self viewControllerToPresentFrom];
  presentedViewController = [viewControllerToPresentFrom presentedViewController];
  childViewControllers = [presentedViewController childViewControllers];

  v4 = [childViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(childViewControllers);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = 1;
          goto LABEL_12;
        }
      }

      v4 = [childViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (uint64_t)_shouldHideBarsForSizeChange
{
  selfCopy = self;
  if (self)
  {
    if ([*(self + 264) isInYttriumMode])
    {
      return 0;
    }

    v2 = *(selfCopy + 848);
    viewControllerToPresentFrom = [selfCopy viewControllerToPresentFrom];
    presentedViewController = [viewControllerToPresentFrom presentedViewController];
    popoverPresentationController = [presentedViewController popoverPresentationController];
    LOBYTE(v2) = [v2 anyBarIsSourceForPopover:popoverPresentationController];

    if (v2)
    {
      return 0;
    }

    else
    {
      activeTabDocument = [*(selfCopy + 328) activeTabDocument];
      if ([activeTabDocument isBlank] & 1) != 0 || (objc_msgSend(activeTabDocument, "hasQuickLookContent") & 1) != 0 || (objc_msgSend(activeTabDocument, "shouldObscureForDigitalHealth"))
      {
        selfCopy = 0;
      }

      else
      {
        webView = [activeTabDocument webView];
        scrollView = [webView scrollView];

        selfCopy = ([scrollView isScrollEnabled] & 1) != 0 && (objc_msgSend(scrollView, "contentSize"), v11 = v10, objc_msgSend(scrollView, "bounds"), v13 = v12, v15 = v14, v17 = v16, v19 = v18, objc_msgSend(scrollView, "contentInset"), v21 = v15 + v20, v24 = v17 - (v22 + v23), v26.size.height = v19 - (v20 + v25), v26.origin.x = v13 + v22, v26.origin.y = v21, v26.size.width = v24, v11 > CGRectGetHeight(v26)) && *(selfCopy + 456) != 1 && -[BrowserController _isVerticallyConstrained](selfCopy);
      }
    }
  }

  return selfCopy;
}

- (void)_rootViewControllerViewTransitionFromSize:(uint64_t)size includingSidebar:(int)sidebar animated:(uint64_t)animated
{
  if (size)
  {
    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      _shouldUseNarrowLayout = [size _shouldUseNarrowLayout];
      v7 = _shouldUseNarrowLayout ^ SFWidthIsNarrow();
    }

    else
    {
      v7 = 1;
    }

    WeakRetained = objc_loadWeakRetained((size + 368));
    view = [*(size + 264) view];
    [view frame];
    v10 = v9;
    v12 = v11;

    if ([size isPresentingModalBookmarksController] && objc_msgSend(size, "bookmarksPresentationStyleForViewOfSize:", v10, v12) && (objc_msgSend(*(size + 144), "importHandler"), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
    {
      [size setPresentingModalBookmarksController:0 withExclusiveCollection:0 bookmarkUUIDString:0 animated:animated];
    }

    else if (([(BrowserController *)size _shouldHideCatalogViewControllerForSizeChange]& v7) == 1)
    {
      v14 = objc_alloc_init(CatalogViewControllerState);
      v15 = *(size + 440);
      *(size + 440) = v14;

      [*(size + 440) setFavoritesState:*(size + 840)];
      _catalogViewController = [(BrowserController *)size _catalogViewController];
      [_catalogViewController beginTransitionToNewSizeClassWithState:*(size + 440)];
      if ([size favoritesAreEmbedded])
      {
        [_catalogViewController dismissCompletionsForSizeClassTransition];
      }

      else
      {
        [size setFavoritesState:0];
        [WeakRetained browserController:size setCatalogViewController:0];
      }
    }

    if ((_SFDeviceIsPad() & 1) == 0)
    {
      [*(size + 168) dismissMenu];
    }

    v17 = objc_loadWeakRetained((size + 352));
    navigationController = [v17 navigationController];
    presentationController = [navigationController presentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v17 dismissViewControllerAnimated:1 completion:0];
    }

    view2 = [*(size + 264) view];
    [view2 layoutIfNeeded];

    [size setUsesNarrowLayout:{objc_msgSend(size, "_shouldUseNarrowLayout")}];
    tabContentContainerView = [(BrowserController *)size tabContentContainerView];
    [tabContentContainerView bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = *(size + 264);
    contentContainerView = [v31 contentContainerView];
    [v31 sidebarObscuredInsetsForRect:contentContainerView inCoordinateSpace:{v24, v26, v28, v30}];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    activeTabDocument = [*(size + 328) activeTabDocument];
    view3 = [activeTabDocument view];
    [view3 setFrame:{v24 + v36, v26 + v34, v28 - (v36 + v40), v30 - (v34 + v38)}];

    if (sidebar && ([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
    {
      [*(size + 768) setShowingSidebar:-[BrowserController _shouldShowSidebarForSizeChange](size) completion:0];
    }

    [size updateContinuousPreviewViewFrame];
    [size updateDynamicBarGeometry];
    if ([(BrowserController *)size _shouldShowBarsForSizeChange])
    {
      [size showBars];
    }

    else if ([(BrowserController *)size _shouldHideBarsForSizeChange])
    {
      [(BrowserController *)size hideBarsForRotation];
    }

    [(BrowserController *)size _updateCurrentPageBannerViewIfNeeded];
    [(BrowserController *)size _updateContinuousReadingViewControllerFrame];
    [size updateExposedScrollViewRect];
    [*(size + 264) updateWebViewSizeAttributes];
    v43 = *(size + 709);
    [(BrowserController *)size updateUsesTabBar];
    [(BrowserController *)size _updateUnifiedBar];
    [size updateCollaborationButton];
    [WeakRetained browserControllerLayOutCatalogView:size];
    _catalogViewController2 = [(BrowserController *)size _catalogViewController];
    [_catalogViewController2 updatePreferredContentSize];
    [_catalogViewController2 didUpdateObscuredInsetsForSizeTransition];
    view4 = [_catalogViewController2 view];
    [view4 layoutIfNeeded];

    _topNavigationBar = [(BrowserController *)size _topNavigationBar];
    if (_topNavigationBar)
    {
      [_catalogViewController2 setNavigationBar:_topNavigationBar];
    }

    [_catalogViewController2 updateStartPageTopSpacing];
    [(BrowserController *)size _updateButtonsAnimatingTabBar:v43];
    view5 = [*(size + 264) view];
    [view5 layoutMargins];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    activeTabDocument2 = [*(size + 328) activeTabDocument];
    appBanner = [activeTabDocument2 appBanner];
    [appBanner setLayoutMargins:{v49, v51, v53, v55}];

    [(BrowserController *)size _updateAppInfoOverlayFrame];
    [size updateScrollToTopView];
    tabBar = [*(size + 264) tabBar];
    activeTabDocument3 = [*(size + 328) activeTabDocument];
    tabBarItem = [activeTabDocument3 tabBarItem];
    [tabBar scrollToItem:tabBarItem animated:0];

    if (([size _shouldUseNarrowLayout] & 1) == 0 && objc_msgSend(size, "isShowingReader"))
    {
      [(BrowserController *)size _contentContainerViewFrameDidChange];
    }

    [(BrowserController *)size _updateDigitalHealthViewFrame];
    contentContainerView2 = [*(size + 264) contentContainerView];
    [contentContainerView2 layoutIfNeeded];

    [(BrowserController *)size updateWebViewObscuredInsets];
    [(BrowserController *)size _updateScribbleOverlayIfNeeded];
  }
}

- (void)hideBarsForRotation
{
  if (self)
  {
    dynamicBarAnimator = [*(self + 264) dynamicBarAnimator];
    [dynamicBarAnimator setMinimumTopBarHeight:-1.79769313e308];
    [dynamicBarAnimator attemptTransitionToState:0 animated:0];
  }
}

- (void)rootViewControllerViewWillTransitionToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  self->_freezeWebViewUpdatesForSizeTransition = 1;
  v6 = [(BrowserController *)self _shouldShowBookmarksBarForViewSize:?];
  [(BrowserController *)self _setShowBookmarksBar:v6];
  objb = [(BrowserRootViewController *)self->_rootViewController traitCollection];
  self->_rootViewControllerVerticalSizeClassBeforeSizeTransition = [objb verticalSizeClass];

  self->_bookmarksPresentationStyleBeforeSizeTransition = [(BrowserController *)self _bookmarksPresentationStyle];
  obj = [(BrowserRootViewController *)self->_rootViewController view];
  [obj bounds];
  v8 = width != v7;
  if (height != v9)
  {
    v8 = 1;
  }

  self->_rootViewWillChangeDimensions = v8;

  queryStringWhilePerformingRootViewControllerSizeTransition = self->_queryStringWhilePerformingRootViewControllerSizeTransition;
  self->_queryStringWhilePerformingRootViewControllerSizeTransition = 0;

  catalogViewController = [(BrowserRootViewController *)self->_rootViewController catalogViewController];
  obja = [catalogViewController queryString];

  if ([obja length] && self->_rootViewWillChangeDimensions)
  {
    objc_storeStrong(&self->_queryStringWhilePerformingRootViewControllerSizeTransition, obja);
  }

  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [_catalogViewController willUpdateObscuredInsetsForSizeTransition];

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument webViewWillChangeSize];

  contentContainerView = [(BrowserRootViewController *)self->_rootViewController contentContainerView];
  [contentContainerView layoutIfNeeded];
}

- (void)_setShowBookmarksBar:(uint64_t)bar
{
  if (bar)
  {
    bookmarksBar = [*(bar + 264) bookmarksBar];
    v5 = bookmarksBar;
    if (((bookmarksBar == 0) ^ a2))
    {
      v7 = bookmarksBar;
    }

    else if (a2)
    {
      v6 = [BookmarksBarView alloc];
      v7 = [(BookmarksBarView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

      [(BookmarksBarView *)v7 setDelegate:bar];
      [(BookmarksBarView *)v7 setLinkPreviewProvider:bar];
      [(BookmarksBarView *)v7 setNavigationIntentHandler:bar];
      [(BookmarksBarView *)v7 setBrowserController:bar];
      [(BookmarksBarView *)v7 setButtonStyle:[(BrowserController *)bar _bookmarksBarLabelButtonDisplayStyle]];
      [*(bar + 264) setBookmarksBar:?];
    }

    else
    {
      [*(bar + 264) setBookmarksBar:0];
      v7 = v5;
    }
  }
}

- (void)rootViewControllerViewTransitionFromSize:(CGSize)size includingSidebar:(BOOL)sidebar animated:(BOOL)animated
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__BrowserController_rootViewControllerViewTransitionFromSize_includingSidebar_animated___block_invoke;
  v12[3] = &unk_2781D61A8;
  v12[4] = self;
  sizeCopy = size;
  sidebarCopy = sidebar;
  animatedCopy = animated;
  v6 = _Block_copy(v12);
  view = [(BrowserRootViewController *)self->_rootViewController view];
  window = [view window];
  if (!window)
  {
    goto LABEL_4;
  }

  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState] == 1)
  {

LABEL_4:
    goto LABEL_5;
  }

  presentationState = [tabThumbnailCollectionView presentationState];

  if (presentationState != 2)
  {
    self->_isTrackingWebViewAnimatedResize = 1;
    webView = [(BrowserController *)self webView];
    [webView _beginAnimatedResizeWithUpdates:v6];
    goto LABEL_6;
  }

LABEL_5:
  webView = [(BrowserController *)self webView];
  [webView _resizeWhileHidingContentWithUpdates:v6];
LABEL_6:
}

void __88__BrowserController_rootViewControllerViewTransitionFromSize_includingSidebar_animated___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 112) = 0;
  [BrowserController _rootViewControllerViewTransitionFromSize:*(a1 + 56) includingSidebar:*(a1 + 57) animated:?];
  *(*(a1 + 32) + 112) = 1;
}

- (void)rootViewControllerViewDidTransitionFromSize:(CGSize)size animated:(BOOL)animated
{
  if (self->_isTrackingWebViewAnimatedResize)
  {
    self->_isTrackingWebViewAnimatedResize = 0;
    v9 = [(BrowserController *)self webView:animated];
    [v9 _endAnimatedResize];
  }

  [BrowserController rootViewControllerViewDidTransitionFromSize:? animated:?];
  [(BrowserController *)self _contentContainerViewFrameDidChange];
  [(BrowserController *)&self->super.super.super.isa _updateDigitalHealthViewFrame];
  [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  appBanner = [activeTabDocument appBanner];
  [appBanner invalidateBannerLayout];

  [(BrowserController *)self _updateAppInfoOverlayFrame];
  [(BrowserRootViewController *)self->_rootViewController layOutTopBars];
  [(BrowserController *)&self->super.super.super.isa _updateTabGroupBanner];
  [(BrowserController *)self updateTabOverviewButton];
  [(BrowserRootViewController *)self->_rootViewController updateWebViewSizeAttributes];
  self->_freezeWebViewUpdatesForSizeTransition = 0;
  catalogViewControllerStateForSizeChange = self->_catalogViewControllerStateForSizeChange;
  if (catalogViewControllerStateForSizeChange)
  {
    [(BrowserController *)self setFavoritesState:[(CatalogViewControllerState *)catalogViewControllerStateForSizeChange favoritesState]];
    _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
    [_catalogViewController endTransitionToNewSizeClassWithState:self->_catalogViewControllerStateForSizeChange];
    v7 = self->_catalogViewControllerStateForSizeChange;
    self->_catalogViewControllerStateForSizeChange = 0;
  }

  if ([(BrowserController *)self favoritesFieldShouldBeExpanded])
  {
    if (self->_queryStringWhilePerformingRootViewControllerSizeTransition)
    {
      unifiedField = [(BrowserController *)self unifiedField];
      [unifiedField setText:self->_queryStringWhilePerformingRootViewControllerSizeTransition];

      queryStringWhilePerformingRootViewControllerSizeTransition = self->_queryStringWhilePerformingRootViewControllerSizeTransition;
      self->_queryStringWhilePerformingRootViewControllerSizeTransition = 0;
    }

    unifiedField2 = [(BrowserController *)self unifiedField];
    [unifiedField2 becomeFirstResponder];
  }

  activeTabDocument2 = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument2 webViewDidChangeSize];
}

- (CGSize)windowSize
{
  viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
  view = [viewControllerToPresentFrom view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (TabHoverPreview)tabHoverPreview
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  v4 = [WeakRetained browserControllerTabHoverPreview:self];

  return v4;
}

- (void)updateShowingTabBarAnimated:(BOOL)animated
{
  shouldShowTab = [(BrowserController *)self _shouldShowTabBar];

  [(BrowserController *)&self->super.super.super.isa _setShowingTabBar:animated animated:?];
}

- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self animateLinkImage:image fromRect:viewCopy inView:item toBarItem:{x, y, width, height}];
  }
}

- (id)_formatMenuButtonPopoverSourceInfo
{
  if (val)
  {
    objc_initWeak(&location, val);
    v1 = objc_alloc(MEMORY[0x277D28BD8]);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __55__BrowserController__formatMenuButtonPopoverSourceInfo__block_invoke;
    v4[3] = &unk_2781D61D0;
    objc_copyWeak(&v5, &location);
    v2 = [v1 initWithSourceInfoProvider:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __55__BrowserController__formatMenuButtonPopoverSourceInfo__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[33] primaryNavigationBar];
    v4 = [v3 formatMenuButtonPopoverSourceInfo];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updatePrivateBrowsingAvailabilityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v5 = +[FeatureManager sharedFeatureManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__BrowserController_updatePrivateBrowsingAvailabilityWithCompletionHandler___block_invoke;
  v7[3] = &unk_2781D6248;
  objc_copyWeak(&v9, &location);
  v6 = handlerCopy;
  v8 = v6;
  [v5 determineIfPrivateBrowsingIsAvailableWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __76__BrowserController_updatePrivateBrowsingAvailabilityWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__BrowserController_updatePrivateBrowsingAvailabilityWithCompletionHandler___block_invoke_2;
  block[3] = &unk_2781D6220;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  v7 = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v6);
}

void __76__BrowserController_updatePrivateBrowsingAvailabilityWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (a1 + 48);
    goto LABEL_6;
  }

  v3 = (a1 + 48);
  [WeakRetained _updatePrivateBrowsingAvailability:*(a1 + 48)];
  v4 = *(a1 + 32);
  if (v4)
  {
LABEL_6:
    (*(v4 + 16))(v4, *v3);
  }

LABEL_7:
}

- (void)_updatePrivateBrowsingAvailability:(BOOL)availability
{
  if (self->_privateBrowsingAvailable != availability)
  {
    self->_privateBrowsingAvailable = availability;
    [(TabController *)self->_tabController privateBrowsingAvailabilityDidChange];
    if (self->_privateBrowsingAvailable)
    {
      v5 = +[LaunchStateController sharedController];
      if ([v5 hasCompletedLaunch])
      {
        firedExtensionOpenEventForPrivateWindow = self->_firedExtensionOpenEventForPrivateWindow;

        if (!firedExtensionOpenEventForPrivateWindow)
        {
          v7 = +[Application sharedApplication];
          defaultWebExtensionsController = [v7 defaultWebExtensionsController];
          [defaultWebExtensionsController didOpenWindow:self->_privateExtensionWindow];

          self->_firedExtensionOpenEventForPrivateWindow = 1;
        }
      }

      else
      {
      }
    }

    if (!availability && self->_privateBrowsingEnabled)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Will switch to local tab group because current browsing mode is unavailable.", v14, 2u);
      }

      [(TabController *)self->_tabController selectLocalTabGroup];
    }

    [(BrowserController *)self reloadSidebarAnimated:1];
    tabSwitcherViewController = [(BrowserRootViewController *)self->_rootViewController tabSwitcherViewController];
    activeTabGroup = [(TabController *)self->_tabController activeTabGroup];
    [tabSwitcherViewController setNeedsScrollToTabGroup:activeTabGroup];

    bookmarksNavigationController = [(BrowserController *)self bookmarksNavigationController];
    topHistoryViewController = [bookmarksNavigationController topHistoryViewController];
    [topHistoryViewController updateClearHistoryButtonEnabled];
  }
}

void __45__BrowserController_updateDynamicBarGeometry__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 904));
  v3 = [WeakRetained statusBarManager];
  [v3 defaultStatusBarHeightInOrientation:{objc_msgSend(WeakRetained, "interfaceOrientation")}];
  v5 = v4;

  [*(a1 + 40) setTopBarHeight:1 forState:*(a1 + 48)];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) interfaceFillsScreen];
  v8 = *(*(a1 + 32) + 264);
  if (v7)
  {
    v1 = [v8 view];
    [v1 safeAreaInsets];
    if (v9 <= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v9;
    }

    v11 = -v10;
  }

  else
  {
    [v8 navigationBarSquishedHeight];
  }

  [v6 setTopBarHeight:0 forState:v11];
  if (v7)
  {
  }

  [*(a1 + 40) setBottomBarOffset:1 forState:0.0];
  v12 = *(a1 + 40);
  [*(*(a1 + 32) + 264) maximumHeightObscuredByBottomToolbar];
  v14 = v13;
  _SFOnePixel();
  [v12 setBottomBarOffset:0 forState:v14 + v15];
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  [v16[33] offsetForDynamicBarAnimator];
  [v16 dynamicBarAnimator:v17 minimumTopBarHeightForOffset:?];
  [*(a1 + 40) setMinimumTopBarHeight:?];
}

- (double)dynamicBarAnimator:(id)animator minimumTopBarHeightForOffset:(double)offset
{
  [(BrowserRootViewController *)self->_rootViewController navigationBarDesiredHeight];
  v7 = v6;
  if ([(BrowserRootViewController *)self->_rootViewController toolbarPlacement]!= 1)
  {
    if ([(BrowserRootViewController *)self->_rootViewController keepBarsMinimized])
    {
      return -9999.0;
    }

    else if (![(BrowserController *)self isShowingFavorites]&& (!self->_disableBarHiding || [(BrowserController *)self interfaceFillsScreen]))
    {
      if ([(BrowserRootViewController *)self->_rootViewController isInYttriumMode])
      {
        return -1.79769313e308;
      }

      else
      {
        [(UIScrollView *)self->_scrollView contentInset];
        return v7 - v8 - offset;
      }
    }
  }

  return v7;
}

- (BOOL)dynamicBarAnimator:(id)animator canTransitionToState:(int64_t)state byDraggingWithOffset:(double)offset
{
  animatorCopy = animator;
  if (state == 1)
  {
    v5 = ![(BrowserRootViewController *)self->_rootViewController keepBarsMinimized];
  }

  else if (!state)
  {
    if ([(BrowserRootViewController *)self->_rootViewController isInteractivelyMinimizingBars])
    {
      v5 = 1;
    }

    else
    {
      [(UIScrollView *)self->_scrollView contentSize];
      v11 = v10;
      [(UIScrollView *)self->_scrollView contentInset];
      v13 = v12;
      [(UIScrollView *)self->_scrollView bounds];
      MaxY = CGRectGetMaxY(v17);
      [(BrowserRootViewController *)self->_rootViewController maximumHeightObscuredByBottomToolbar];
      v5 = v11 + v13 - MaxY - offset > v15;
    }
  }

  return v5 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_tabViewPinchRecognizer == recognizer)
  {
    panGestureRecognizer = [(UIScrollView *)self->_scrollView panGestureRecognizer];
    if (panGestureRecognizer == gestureRecognizerCopy)
    {
      v7 = 1;
    }

    else
    {
      pinchGestureRecognizer = [(UIScrollView *)self->_scrollView pinchGestureRecognizer];

      if (pinchGestureRecognizer == gestureRecognizerCopy)
      {
        v7 = 1;
        goto LABEL_10;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_2;
      }

      panGestureRecognizer = [gestureRecognizerCopy view];
      _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
      view = [_catalogViewController view];
      v7 = [panGestureRecognizer isDescendantOfView:view];
    }

    goto LABEL_10;
  }

LABEL_2:
  v7 = 0;
LABEL_10:

  return v7;
}

- (void)updateSearchEngineIfNeeded
{
  if (([BrowserController updateSearchEngineIfNeeded]::didInit & 1) == 0)
  {
    [BrowserController updateSearchEngineIfNeeded]::didInit = 1;
  }
}

- (void)_defaultSearchEngineDidChange:(id)change
{
  v5 = +[Application sharedApplication];
  activeSearchEngine = [(BrowserController *)self activeSearchEngine];
  [v5 setObject:activeSearchEngine forInjectedBundleParameter:*MEMORY[0x277D4A9E0]];
}

- (void)_ABGroupIdentifierDidChange:(id)change
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [Application sharedApplication:change];
  allProcessPools = [v3 allProcessPools];

  v5 = [allProcessPools countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allProcessPools);
        }

        [BrowserController _sendABGroupIdentifierToProcessPool:?];
      }

      while (v5 != v7);
      v5 = [allProcessPools countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (void)_sendABGroupIdentifierToProcessPool:(uint64_t)pool
{
  v5 = a2;
  objc_opt_self();
  if ([MEMORY[0x277D49A08] defaultSearchEngineMatchesExperiment])
  {
    v2 = MEMORY[0x277CCABB0];
    mEMORY[0x277D4A0A0] = [MEMORY[0x277D4A0A0] shared];
    v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(mEMORY[0x277D4A0A0], "trialABGroupIdentifier")}];
    [v5 _setObject:v4 forBundleParameter:*MEMORY[0x277D4A9D0]];
  }

  else
  {
    [v5 _setObject:0 forBundleParameter:*MEMORY[0x277D4A9D0]];
  }
}

+ (void)_sendABTestingEnabledStateToProcessPool:(uint64_t)pool
{
  v4 = a2;
  objc_opt_self();
  defaultSearchEngineMatchesExperiment = [MEMORY[0x277D49A08] defaultSearchEngineMatchesExperiment];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:defaultSearchEngineMatchesExperiment];
  [v4 _setObject:v3 forBundleParameter:*MEMORY[0x277D4A9D8]];
}

- (void)_trialABGroupIdentifierDidChange:(id)change
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [Application sharedApplication:change];
  allProcessPools = [v3 allProcessPools];

  v5 = [allProcessPools countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allProcessPools);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [BrowserController _sendABGroupIdentifierToProcessPool:v8];
        [BrowserController _sendABTestingEnabledStateToProcessPool:v8];
      }

      v5 = [allProcessPools countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_tabViewPinch:(id)pinch
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained handleTabViewPinchForBrowserController:self];
}

- (void)_updateScrollOffsetForReplacementWebView:(id *)view
{
  v6 = a2;
  if (view)
  {
    dynamicBarAnimator = [view[33] dynamicBarAnimator];
    [dynamicBarAnimator attemptTransitionToState:1 animated:0];

    tabContentContainerView = [(BrowserController *)view tabContentContainerView];
    [view[33] navigationBarFrameInCoordinateSpace:tabContentContainerView];
    CGRectGetMaxY(v8);
    [tabContentContainerView frame];
    CGRectGetMinY(v9);
    scrollView = [v6 scrollView];
    [scrollView contentOffset];
    [scrollView setContentOffset:?];
  }
}

- (UIEdgeInsets)finalObscuredInsetsForScrollView:(id)view withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  viewCopy = view;
  [(BrowserController *)self scrollViewWillEndDragging:viewCopy withVelocity:offset targetContentOffset:x, y];
  [(BrowserRootViewController *)self->_rootViewController obscuredScrollViewInsetsConsideringTargetState:1 insetsDueToSafeArea:0];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (double)browserViewController:(id)controller adjustedBottomObscuredInset:(double)inset
{
  previewView = [(ContinuousReadingViewController *)self->_continuousReadingViewController previewView];
  if (previewView)
  {
    v7 = previewView;
    isCommittingToContinuousDocument = [(ContinuousReadingViewController *)self->_continuousReadingViewController isCommittingToContinuousDocument];

    if (!isCommittingToContinuousDocument)
    {
      [(_SFWebView *)self->_webView bounds];
      MaxY = CGRectGetMaxY(v24);
      webView = self->_webView;
      previewView2 = [(ContinuousReadingViewController *)self->_continuousReadingViewController previewView];
      [previewView2 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      previewView3 = [(ContinuousReadingViewController *)self->_continuousReadingViewController previewView];
      [(_SFWebView *)webView convertRect:previewView3 fromView:v13, v15, v17, v19];
      v21 = MaxY - CGRectGetMinY(v25);

      if (v21 >= inset)
      {
        return v21;
      }

      else
      {
        return inset;
      }
    }
  }

  return inset;
}

- (uint64_t)_isStartPageOverriddenByExtensionInTabDocument:(uint64_t)document
{
  v3 = a2;
  if (document)
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    webExtensionsController = [v3 webExtensionsController];
    if ([v3 isPrivateBrowsingEnabled] && (objc_msgSend(webExtensionsController, "tabOverridePreferencesManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "shouldNewTabPageOverriddenByAnEnabledExtensionApplyInPrivateBrowsingWithUserDefaults:", safari_browserDefaults), v6, (v7 & 1) == 0))
    {
      v9 = 0;
    }

    else
    {
      tabOverridePreferencesManager = [webExtensionsController tabOverridePreferencesManager];
      v9 = [tabOverridePreferencesManager isNewTabPageOverriddenByAnEnabledExtensionInUserDefaults:safari_browserDefaults];

      [safari_browserDefaults setBool:v9 ^ 1 forKey:*MEMORY[0x277D29088]];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)_notFocusedEmbeddedState
{
  if (!self)
  {
    return 0;
  }

  _catalogViewController = [(BrowserController *)self _catalogViewController];
  if ([_catalogViewController isShowingCompletions])
  {
    v2 = 5;
  }

  else
  {
    v2 = 4;
  }

  return v2;
}

- (void)setFavoritesAreEmbedded:(BOOL)embedded animated:(BOOL)animated
{
  animatedCopy = animated;
  embeddedCopy = embedded;
  if ([(BrowserController *)self favoritesAreEmbedded]!= embedded)
  {
    if ([(BrowserController *)self isFavoritesFieldFocused])
    {
      if (embeddedCopy)
      {
        _notFocusedEmbeddedState = 3;
      }

      else
      {
        _notFocusedEmbeddedState = 1;
      }
    }

    else if (embeddedCopy)
    {
      _notFocusedEmbeddedState = [(BrowserController *)&self->super.super.super.isa _notFocusedEmbeddedState];
    }

    else
    {
      _notFocusedEmbeddedState = 0;
    }

    [(BrowserController *)self setFavoritesState:_notFocusedEmbeddedState animated:animatedCopy];
  }
}

- (void)setFavoritesFieldFocused:(BOOL)focused forVoiceSearch:(BOOL)search animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  searchCopy = search;
  focusedCopy = focused;
  handlerCopy = handler;
  if ([(BrowserController *)self isFavoritesFieldFocused]== focusedCopy)
  {
    if (handlerCopy)
    {
      handlerCopy[2]();
    }
  }

  else
  {
    if ([(BrowserController *)self favoritesAreEmbedded])
    {
      if (focusedCopy)
      {
        _notFocusedEmbeddedState = 3;
      }

      else
      {
        _notFocusedEmbeddedState = [(BrowserController *)&self->super.super.super.isa _notFocusedEmbeddedState];
      }
    }

    else if (focusedCopy)
    {
      _notFocusedEmbeddedState = 1;
    }

    else
    {
      _notFocusedEmbeddedState = 2;
    }

    [(BrowserController *)self setFavoritesState:_notFocusedEmbeddedState forVoiceSearch:searchCopy animated:animatedCopy completionHandler:handlerCopy];
    _catalogViewController = +[Application sharedApplication];
    if ((([_catalogViewController isRunningPPT] | !focusedCopy) & 1) == 0 && !searchCopy && !+[UniversalSearchFirstTimeExperienceViewController hasShownParsecFirstTimeUserExperience](UniversalSearchFirstTimeExperienceViewController, "hasShownParsecFirstTimeUserExperience"))
    {
      v12 = +[(WBSParsecDSession *)UniversalSearchSession];
      v13 = [v12 bag];
      isEnabled = [v13 isEnabled];

      if (!isEnabled)
      {
        goto LABEL_17;
      }

      _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
      [_catalogViewController showUniversalSearchFirstTimeExperienceIfNotShowing];
    }
  }

LABEL_17:
}

- (void)cancelFavoritesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(BrowserController *)self favoritesAreEmbedded])
  {
    if ([(BrowserController *)self favoritesState]== 3 && self->_shouldKeepKeyboardFocused)
    {
      selfCopy3 = self;
      v6 = 3;
    }

    else
    {
      selfCopy3 = self;
      v6 = 4;
    }
  }

  else
  {
    selfCopy3 = self;
    v6 = 0;
  }

  [(BrowserController *)selfCopy3 setFavoritesState:v6 animated:animatedCopy];
}

- (void)_bookmarksDidReload:(id)reload
{
  if (!self->_favoritesState)
  {
    [(BrowserController *)self updateFavoritesForNewDocument];
  }
}

- (void)_recentSearchesWereCleared:(id)cleared
{
  v35 = *MEMORY[0x277D85DE8];
  userInfo = [cleared userInfo];
  v20 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D4A358]];

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  history = [activeTabDocument history];

  array = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v20;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v22 = *v30;
    do
    {
      v24 = v7;
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        activeSearchEngine = [(BrowserController *)self activeSearchEngine];
        searchString = [v9 searchString];
        v12 = [activeSearchEngine searchURLForUserTypedString:searchString];

        absoluteString = [v12 absoluteString];
        v14 = [history itemForURLString:absoluteString];

        [array safari_addObjectUnlessNil:v14];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        uRLStrings = [v9 URLStrings];
        v16 = [uRLStrings countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v16)
        {
          v17 = *v26;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(uRLStrings);
              }

              v19 = [history itemForURLString:*(*(&v25 + 1) + 8 * j)];
              [array safari_addObjectUnlessNil:v19];
            }

            v16 = [uRLStrings countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v16);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  [history removeItemsInResponseToUserAction:array];
  [(SearchStateCache *)self->_searchStateCache clearAllCachedSearchState];
}

- (void)_showNoRecentSearchesView:(id)view
{
  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [_catalogViewController showNoRecentSearchesViewIfNotShowing];
}

- (void)tabGroupManager:(id)manager didUpdateTabGroupWithUUID:(id)d
{
  dCopy = d;
  activeTabGroupUUID = [(TabController *)self->_tabController activeTabGroupUUID];
  v6 = WBSIsEqual();

  if (v6)
  {
    [(BrowserController *)&self->super.super.super.isa _updateTabGroupBanner];
  }
}

- (void)participants:(id)participants didJoinSharedTabGroupWithUUID:(id)d
{
  participantsCopy = participants;
  dCopy = d;
  activeTabGroup = [(TabController *)self->_tabController activeTabGroup];
  uuid = [activeTabGroup uuid];
  v9 = [dCopy isEqual:uuid];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D28C80]);
    anyObject = [participantsCopy anyObject];
    safari_contact = [anyObject safari_contact];
    v13 = [v10 initWithContact:safari_contact];

    v14 = MEMORY[0x277CCACA8];
    v15 = _WBSLocalizedString();
    title = [activeTabGroup title];
    v17 = [v14 stringWithFormat:v15, title];
    [v13 setMessageText:v17];

    v18 = [objc_alloc(MEMORY[0x277D28E48]) initWithContentViewController:v13];
    [v18 setDelegate:self];
    [(BrowserController *)self _presentToastViewControllerQueuingIfNecessary:v18];
  }
}

- (void)_presentToastViewControllerQueuingIfNecessary:(uint64_t)necessary
{
  v3 = a2;
  if (necessary)
  {
    if (*(necessary + 544))
    {
      [*(necessary + 552) addObject:v3];
    }

    else
    {
      [(BrowserController *)necessary _actuallyPresentToastViewController:v3];
    }
  }
}

- (void)participants:(id)participants didLeaveSharedTabGroupWithUUID:(id)d
{
  participantsCopy = participants;
  dCopy = d;
  activeTabGroup = [(TabController *)self->_tabController activeTabGroup];
  uuid = [activeTabGroup uuid];
  v9 = [dCopy isEqual:uuid];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D28C80]);
    anyObject = [participantsCopy anyObject];
    safari_contact = [anyObject safari_contact];
    v13 = [v10 initWithContact:safari_contact];

    v14 = MEMORY[0x277CCACA8];
    v15 = _WBSLocalizedString();
    title = [activeTabGroup title];
    v17 = [v14 stringWithFormat:v15, title];
    [v13 setMessageText:v17];

    v18 = [objc_alloc(MEMORY[0x277D28E48]) initWithContentViewController:v13];
    [v18 setDelegate:self];
    [(BrowserController *)self _presentToastViewControllerQueuingIfNecessary:v18];
  }
}

- (void)tabGroupManager:(id)manager didUpadateActiveParticipants:(id)participants inTabGroupWithUUID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  dCopy = d;
  if ([(NSMapTable *)self->_cachedParticipantLists count])
  {
    activeTabGroup = [(TabController *)self->_tabController activeTabGroup];
    uuid = [activeTabGroup uuid];
    v11 = [dCopy isEqual:uuid];

    if (v11)
    {
      allObjects = [participantsCopy allObjects];
      v13 = [allObjects safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_146];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      objectEnumerator = [(NSMapTable *)self->_cachedParticipantLists objectEnumerator];
      v15 = [objectEnumerator countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v15)
      {
        v16 = *v31;
        do
        {
          v17 = 0;
          do
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            [*(*(&v30 + 1) + 8 * v17++) setContacts:v13];
          }

          while (v15 != v17);
          v15 = [objectEnumerator countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v15);
      }

      collaborationButton = [(_SFBarManager *)self->_barManager collaborationButton];
      [(BrowserController *)&self->super.super.super.isa _updateParticipantsListForCollaborationButton:collaborationButton contacts:v13];

      tabGroupBanner = [(BannerController *)self->_bannerController tabGroupBanner];
      collaborationButton2 = [tabGroupBanner collaborationButton];
      [(BrowserController *)&self->super.super.super.isa _updateParticipantsListForCollaborationButton:collaborationButton2 contacts:v13];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v21 = [(TabController *)self->_tabController cachedTabSwitcherShareConfigurationForTabGroup:activeTabGroup, 0];
      allCollaborationButtons = [v21 allCollaborationButtons];

      v23 = [allCollaborationButtons countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v23)
      {
        v24 = *v27;
        do
        {
          v25 = 0;
          do
          {
            if (*v27 != v24)
            {
              objc_enumerationMutation(allCollaborationButtons);
            }

            [(BrowserController *)&self->super.super.super.isa _updateParticipantsListForCollaborationButton:v13 contacts:?];
          }

          while (v23 != v25);
          v23 = [allCollaborationButtons countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v23);
      }
    }
  }
}

id __85__BrowserController_tabGroupManager_didUpadateActiveParticipants_inTabGroupWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 safari_contact];

  return v2;
}

- (void)_updateParticipantsListForCollaborationButton:(void *)button contacts:
{
  v7 = a2;
  buttonCopy = button;
  if (self)
  {
    v6 = [(BrowserController *)self _participantsListForCollaborationView:v7];
    [v7 setDetailViewListContent:v6];
    [v6 setContacts:buttonCopy];
  }
}

- (void)_actuallyPresentToastViewController:(uint64_t)controller
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (controller)
  {
    objc_storeStrong((controller + 544), a2);
    [*(controller + 264) addToastViewController:v4];
    view = [v4 view];
    [view layoutIfNeeded];

    usingUnifiedBar = [*(controller + 264) usingUnifiedBar];
    v7 = *(controller + 264);
    if (usingUnifiedBar)
    {
      unifiedBar = [v7 unifiedBar];
      bottomAnchor = [unifiedBar bottomAnchor];
      centerXAnchor = [unifiedBar centerXAnchor];
    }

    else
    {
      if (![v7 usingLoweredBar])
      {
        bottomAnchor = 0;
        centerXAnchor = 0;
        goto LABEL_9;
      }

      view2 = [*(controller + 264) view];
      unifiedBar = [view2 safeAreaLayoutGuide];

      centerXAnchor = [unifiedBar centerXAnchor];
      capsuleCollectionViewLayout = [*(controller + 264) capsuleCollectionViewLayout];
      integerValue = [capsuleCollectionViewLayout integerValue];

      if (integerValue == 2)
      {
        topBackdrop = [*(controller + 264) topBackdrop];
        bottomAnchor = [topBackdrop bottomAnchor];
      }

      else
      {
        bottomAnchor = [unifiedBar topAnchor];
      }
    }

LABEL_9:
    view3 = [v4 view];
    topAnchor = [view3 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:{-[BrowserController _offsetToPositionToastViewControllerOffscreen:](controller, v4)}];
    v18 = *(controller + 560);
    *(controller + 560) = v17;

    v19 = MEMORY[0x277CCAAD0];
    v26[0] = *(controller + 560);
    view4 = [v4 view];
    centerXAnchor2 = [view4 centerXAnchor];
    v22 = [centerXAnchor2 constraintEqualToAnchor:centerXAnchor];
    v26[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    [v19 activateConstraints:v23];

    view5 = [*(controller + 264) view];
    [view5 layoutIfNeeded];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __57__BrowserController__actuallyPresentToastViewController___block_invoke;
    v25[3] = &unk_2781D60B8;
    v25[4] = controller;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:1 response:v25 tracking:0 dampingRatioSmoothing:0.9 responseSmoothing:0.6 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.99];
  }
}

- (double)_offsetToPositionToastViewControllerOffscreen:(uint64_t)offscreen
{
  v3 = a2;
  v4 = v3;
  if (offscreen)
  {
    view = [v3 view];
    [view frame];
    v7 = v6;

    capsuleCollectionViewLayout = [*(offscreen + 264) capsuleCollectionViewLayout];
    integerValue = [capsuleCollectionViewLayout integerValue];

    v10 = *(offscreen + 264);
    if (integerValue == 1)
    {
      view2 = [v10 view];
      [view2 safeAreaInsets];
      v13 = -v12;
    }

    else
    {
      usingUnifiedBar = [v10 usingUnifiedBar];
      v15 = *(offscreen + 264);
      if (usingUnifiedBar)
      {
        [v15 unifiedBar];
      }

      else
      {
        [v15 topBackdrop];
      }
      v16 = ;
      [v16 frame];
      v18 = v17;
      v20 = v19;

      v13 = -v20 - v18;
    }

    v21 = v13 - v7;
  }

  else
  {
    v21 = 0.0;
  }

  return v21;
}

void __57__BrowserController__actuallyPresentToastViewController___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 560) setConstant:12.0];
  v2 = [*(*(a1 + 32) + 264) view];
  [v2 layoutIfNeeded];
}

- (void)didAddTabWithUUID:(id)d title:(id)title inSharedTabGroupWithUUID:(id)iD byParticipantWithRecordID:(id)recordID
{
  titleCopy = title;
  iDCopy = iD;
  recordIDCopy = recordID;
  v11 = MEMORY[0x277CCACA8];
  v12 = _WBSLocalizedString();
  titleCopy = [v11 stringWithFormat:v12, titleCopy];
  [(BrowserController *)self _presentAttributedSharedTabNoticeWithMessage:titleCopy forParticipantWithRecordID:recordIDCopy inSharedTabGroupWithUUID:iDCopy];
}

- (void)_presentAttributedSharedTabNoticeWithMessage:(void *)message forParticipantWithRecordID:(void *)d inSharedTabGroupWithUUID:
{
  v7 = a2;
  messageCopy = message;
  dCopy = d;
  if (self)
  {
    activeTabGroup = [*(self + 328) activeTabGroup];
    uuid = [activeTabGroup uuid];
    v12 = [dCopy isEqual:uuid];

    if (v12)
    {
      v13 = *(self + 792);
      activeTabGroup2 = [*(self + 328) activeTabGroup];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __118__BrowserController__presentAttributedSharedTabNoticeWithMessage_forParticipantWithRecordID_inSharedTabGroupWithUUID___block_invoke;
      v15[3] = &unk_2781D62E0;
      v16 = messageCopy;
      v17 = v7;
      selfCopy = self;
      [v13 shareRecordForTabGroup:activeTabGroup2 completionHandler:v15];
    }
  }
}

- (void)didNavigateInTabWithUUID:(id)d title:(id)title inSharedTabGroupWithUUID:(id)iD byParticipantWithRecordID:(id)recordID
{
  dCopy = d;
  titleCopy = title;
  iDCopy = iD;
  recordIDCopy = recordID;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  uuid = [activeTabDocument uuid];
  uUIDString = [uuid UUIDString];
  v16 = [uUIDString isEqualToString:dCopy];

  if (v16)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = _WBSLocalizedString();
    titleCopy = [v17 stringWithFormat:v18, titleCopy];
    [(BrowserController *)self _presentAttributedSharedTabNoticeWithMessage:titleCopy forParticipantWithRecordID:recordIDCopy inSharedTabGroupWithUUID:iDCopy];
  }
}

- (void)didRemoveTabWithUUID:(id)d title:(id)title inSharedTabGroupWithUUID:(id)iD byParticipantWithRecordID:(id)recordID
{
  titleCopy = title;
  iDCopy = iD;
  recordIDCopy = recordID;
  v11 = MEMORY[0x277CCACA8];
  v12 = _WBSLocalizedString();
  titleCopy = [v11 stringWithFormat:v12, titleCopy];
  [(BrowserController *)self _presentAttributedSharedTabNoticeWithMessage:titleCopy forParticipantWithRecordID:recordIDCopy inSharedTabGroupWithUUID:iDCopy];
}

- (void)didChangeScopedFavoritesInSharedTabGroupWithUUID:(id)d byParticipantWithRecordID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = _WBSLocalizedString();
  [(BrowserController *)self _presentAttributedSharedTabNoticeWithMessage:v7 forParticipantWithRecordID:iDCopy inSharedTabGroupWithUUID:dCopy];
}

- (void)didChangeBackgroundImageInSharedTabGroupWithUUID:(id)d byParticipantWithRecordID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = _WBSLocalizedString();
  [(BrowserController *)self _presentAttributedSharedTabNoticeWithMessage:v7 forParticipantWithRecordID:iDCopy inSharedTabGroupWithUUID:dCopy];
}

void __118__BrowserController__presentAttributedSharedTabNoticeWithMessage_forParticipantWithRecordID_inSharedTabGroupWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __118__BrowserController__presentAttributedSharedTabNoticeWithMessage_forParticipantWithRecordID_inSharedTabGroupWithUUID___block_invoke_2;
  v7[3] = &unk_2781D6180;
  v8 = v3;
  v9 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __118__BrowserController__presentAttributedSharedTabNoticeWithMessage_forParticipantWithRecordID_inSharedTabGroupWithUUID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) participants];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __118__BrowserController__presentAttributedSharedTabNoticeWithMessage_forParticipantWithRecordID_inSharedTabGroupWithUUID___block_invoke_3;
  v10[3] = &unk_2781D62B8;
  v11 = *(a1 + 40);
  v3 = [v2 safari_firstObjectPassingTest:v10];

  if (v3)
  {
    v4 = [*(a1 + 32) currentUserParticipant];
    v5 = [v3 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      v6 = objc_alloc(MEMORY[0x277D28C80]);
      v7 = [v3 safari_contact];
      v8 = [v6 initWithContact:v7];

      [v8 setMessageText:*(a1 + 48)];
      v9 = [objc_alloc(MEMORY[0x277D28E48]) initWithContentViewController:v8];
      [v9 setDelegate:*(a1 + 56)];
      [(BrowserController *)*(a1 + 56) _presentToastViewControllerQueuingIfNecessary:v9];
    }
  }
}

uint64_t __118__BrowserController__presentAttributedSharedTabNoticeWithMessage_forParticipantWithRecordID_inSharedTabGroupWithUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 userIdentity];
  v4 = [v3 userRecordID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (void)dismissToastViewController:(id)controller
{
  controllerCopy = controller;
  v5 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__BrowserController_dismissToastViewController___block_invoke;
  v9[3] = &unk_2781D61F8;
  v9[4] = self;
  v10 = controllerCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__BrowserController_dismissToastViewController___block_invoke_2;
  v7[3] = &unk_2781D6308;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [v5 _animateUsingSpringWithDampingRatio:1 response:v9 tracking:v7 dampingRatioSmoothing:0.9 responseSmoothing:0.6 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.99];
}

void __48__BrowserController_dismissToastViewController___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 560) setConstant:{-[BrowserController _offsetToPositionToastViewControllerOffscreen:](*(a1 + 32), *(a1 + 40))}];
  v2 = [*(*(a1 + 32) + 264) view];
  [v2 layoutIfNeeded];
}

void __48__BrowserController_dismissToastViewController___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 264) removeToastViewController:*(a1 + 40)];
  if ([*(*(a1 + 32) + 552) count])
  {
    v2 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__BrowserController_dismissToastViewController___block_invoke_3;
    block[3] = &unk_2781D60B8;
    block[4] = *(a1 + 32);
    dispatch_after(v2, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 544);
    *(v3 + 544) = 0;
  }
}

void __48__BrowserController_dismissToastViewController___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 552) firstObject];
  [*(*(a1 + 32) + 552) removeObjectAtIndex:0];
  [(BrowserController *)*(a1 + 32) _actuallyPresentToastViewController:v2];
}

- (id)itemTitleForCloudSharingController:(id)controller
{
  activeTabGroup = [(TabController *)self->_tabController activeTabGroup];
  title = [activeTabGroup title];

  return title;
}

- (void)cloudSharingController:(id)controller failedToSaveShareWithError:(id)error
{
  errorCopy = error;
  v5 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [errorCopy safari_privacyPreservingDescription];
    objc_claimAutoreleasedReturnValue();
    [BrowserController cloudSharingController:failedToSaveShareWithError:];
  }
}

- (void)_setProgressSuppressingDocument:(uint64_t)document
{
  v5 = a2;
  if (document)
  {
    v4 = *(document + 240);
    if (v4 != v5)
    {
      [v4 endSuppressingProgressAnimation];
      objc_storeStrong((document + 240), a2);
      [*(document + 240) beginSuppressingProgressAnimation];
    }
  }
}

- (void)setFavoritesState:(int64_t)state forVoiceSearch:(BOOL)search animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  searchCopy = search;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke;
  aBlock[3] = &unk_2781D6330;
  v10 = handlerCopy;
  v147 = v10;
  v11 = _Block_copy(aBlock);
  if (self->_favoritesState == state)
  {
    v12 = v11;
    (*(v11 + 2))();
    goto LABEL_119;
  }

  v87 = v11;
  v88 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self willChangeToFavoritesState:state];
  }

  favoritesState = self->_favoritesState;
  v15 = objc_alloc_init(MEMORY[0x277D49B60]);
  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_2;
  v142[3] = &unk_2781D6270;
  v91 = WeakRetained;
  v143 = v91;
  selfCopy = self;
  v145 = favoritesState;
  v89 = v15;
  [v15 setHandler:v142];
  v16 = objc_loadWeakRetained(&self->_scene);
  v103 = 0;
  v90 = v16;
  if (animatedCopy && v16)
  {
    v103 = [v16 activationState] == 0;
  }

  v17 = [(BrowserController *)self browserViewControllerShouldTemporarilyHideBottomToolbar:self->_rootViewController];
  isShowingFavorites = [(BrowserController *)self isShowingFavorites];
  isFavoritesFieldFocused = [(BrowserController *)self isFavoritesFieldFocused];
  favoritesFieldShouldBeExpanded = [(BrowserController *)self favoritesFieldShouldBeExpanded];
  self->_favoritesState = state;
  v18 = [(BrowserController *)self browserViewControllerShouldTemporarilyHideBottomToolbar:self->_rootViewController];
  isShowingFavorites2 = [(BrowserController *)self isShowingFavorites];
  isFavoritesFieldFocused2 = [(BrowserController *)self isFavoritesFieldFocused];
  favoritesFieldShouldBeExpanded2 = [(BrowserController *)self favoritesFieldShouldBeExpanded];
  if (state < 6)
  {
    self->_wantsUnifiedFieldFocused = 0x1000100uLL >> (8 * state);
  }

  group = dispatch_group_create();
  if (v17 != v18)
  {
    view = [(BrowserRootViewController *)self->_rootViewController view];
    [view setNeedsLayout];
  }

  if (!favoritesFieldShouldBeExpanded2)
  {
    [(BrowserController *)self clearSpeculativeLoadDocument];
  }

  if (isFavoritesFieldFocused2)
  {
    dispatch_group_enter(group);
    v140[0] = MEMORY[0x277D85DD0];
    v140[1] = 3221225472;
    v140[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_3;
    v140[3] = &unk_2781D60B8;
    v141 = group;
    [(BrowserController *)self _dismissTransientUIAnimated:v103 dismissalOptions:1 completionHandler:v140];
  }

  _topNavigationBar = [(BrowserController *)&self->super.super.super.isa _topNavigationBar];
  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  view2 = [_catalogViewController view];
  popoverIsDismissing = [_catalogViewController popoverIsDismissing];
  _shouldUseNarrowLayout = [(BrowserController *)self _shouldUseNarrowLayout];
  favoritesAreShowingInPopover = [(BrowserController *)self favoritesAreShowingInPopover];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  sfScribbleControllerIfLoaded = [activeTabDocument sfScribbleControllerIfLoaded];
  isScribbling = [sfScribbleControllerIfLoaded isScribbling];

  if (isScribbling)
  {
    sfScribbleControllerIfLoaded2 = [activeTabDocument sfScribbleControllerIfLoaded];
    [sfScribbleControllerIfLoaded2 endScribblingAndSaveChanges:0];
  }

  if (((state != 4) & isShowingFavorites2) != 0)
  {
    v26 = activeTabDocument;
  }

  else
  {
    v26 = 0;
  }

  [(BrowserController *)self _setProgressSuppressingDocument:v26];
  if ([(BrowserController *)self shouldShowRecentSearches])
  {
    isShowingCompletions = [_catalogViewController isShowingCompletions];
    v28 = isShowingCompletions;
    if (isShowingFavorites == isShowingFavorites2)
    {
      if (isShowingCompletions)
      {
LABEL_31:
        v31 = 0;
        v30 = 0;
        goto LABEL_65;
      }

LABEL_29:
      if ([(BrowserController *)self shouldShowRecentSearches])
      {
        [_catalogViewController showRecentSearches];
        v30 = 0;
        v31 = 1;
        goto LABEL_65;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (isShowingFavorites == isShowingFavorites2)
    {
      goto LABEL_29;
    }

    v28 = 0;
  }

  if (_catalogViewController)
  {
    v29 = favoritesAreShowingInPopover ^ [_catalogViewController usesPopoverStyleForFavorites];
  }

  else
  {
    v29 = 1;
  }

  if ((isShowingFavorites2 & v29) == 1)
  {
    if ([self->_cachedCatalogViewController usesPopoverStyleForFavorites]|| favoritesAreShowingInPopover)
    {
      cachedCatalogViewController = self->_cachedCatalogViewController;
      self->_cachedCatalogViewController = 0;
    }

    createCatalogViewControllerIfNeeded = [(BrowserController *)self createCatalogViewControllerIfNeeded];

    [createCatalogViewControllerIfNeeded setUsesPopoverStyleForFavorites:favoritesAreShowingInPopover];
    [v91 browserController:self setCatalogViewController:createCatalogViewControllerIfNeeded];
    view3 = [createCatalogViewControllerIfNeeded view];

    view2 = view3;
    _catalogViewController = createCatalogViewControllerIfNeeded;
  }

  if (isShowingFavorites2)
  {
    [_catalogViewController resetFavorites];
    startPageController = [_catalogViewController startPageController];
    [startPageController updatePrivacyReportIfEnabled];

    [_catalogViewController setNavigationBar:_topNavigationBar];
    [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
    if (!favoritesAreShowingInPopover)
    {
      documentAndTopBarsContainerView = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerView];
      [documentAndTopBarsContainerView addSubview:view2];
    }

    [v91 browserControllerLayOutCatalogView:self];
    v37 = [(SearchStateCache *)self->_searchStateCache cachedCompletionListForTabDocument:activeTabDocument];
    if (v37)
    {
      activeTabDocument2 = [(TabController *)self->_tabController activeTabDocument];
      [activeTabDocument2 setHaveRestoredCompletionList:1];

      if ([v37 shouldRestoreCachedCompletions])
      {
        v39 = WBS_LOG_CHANNEL_PREFIXOther();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_215819000, v39, OS_LOG_TYPE_INFO, "Restoring completions from the cache", buf, 2u);
        }

        [v37 setDelegate:_catalogViewController];
        [v37 restoreCachedCompletions];
        [_catalogViewController setShowingCompletions:1];
        [_catalogViewController setCompletionList:v37];
        currentSearchQuery = [activeTabDocument currentSearchQuery];
        if (currentSearchQuery)
        {
          v30 = 0;
        }

        else
        {
          currentSearchQueryAllowingQueryThatLooksLikeURL = [activeTabDocument currentSearchQueryAllowingQueryThatLooksLikeURL];
          v30 = currentSearchQueryAllowingQueryThatLooksLikeURL != 0;
        }
      }

      else
      {
        v45 = WBS_LOG_CHANNEL_PREFIXOther();
        v30 = 1;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_215819000, v45, OS_LOG_TYPE_INFO, "Completions from the cache were no longer valid, update and show new completions", buf, 2u);
        }
      }

      v31 = 0;
    }

    else if ((v28 & 1) == 0 && -[BrowserController shouldShowRecentSearches](self, "shouldShowRecentSearches") && [activeTabDocument isShowingStartPageOverriddenByExtension])
    {
      [_catalogViewController showRecentSearches];
      v30 = 0;
      v31 = 1;
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    [view2 setAlpha:!v103];
  }

  else
  {
    [_catalogViewController setHasScheduledCompletionListDismissal:1];
    if (((_shouldUseNarrowLayout | popoverIsDismissing) & 1) == 0)
    {
      [_catalogViewController stopCompleting];
    }

    dispatch_group_enter(group);
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_177;
    v131[3] = &unk_2781D6358;
    v138 = popoverIsDismissing;
    v132 = _catalogViewController;
    selfCopy2 = self;
    v134 = group;
    v41 = view2;
    v135 = v41;
    v136 = _topNavigationBar;
    v137 = v91;
    v42 = _Block_copy(v131);
    v43 = v42;
    if (v103)
    {
      v44 = MEMORY[0x277D75D18];
      v129[0] = MEMORY[0x277D85DD0];
      v129[1] = 3221225472;
      v129[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_2_178;
      v129[3] = &unk_2781D60B8;
      v130 = v41;
      v127[0] = MEMORY[0x277D85DD0];
      v127[1] = 3221225472;
      v127[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_3_179;
      v127[3] = &unk_2781D6380;
      v128 = v43;
      [v44 animateWithDuration:5 delay:v129 options:v127 animations:0.3 completion:0.0];
    }

    else
    {
      (*(v42 + 2))(v42);
    }

    v31 = 0;
    v30 = 0;
    v37 = v132;
  }

  [(BrowserRootViewController *)self->_rootViewController updateThemeColorIfNeededAnimated:v103];
  if ((v103 & isShowingFavorites2 & 1) == 0)
  {
    [(BrowserController *)&self->super.super.super.isa _updateUnifiedBarBackgroundVisibility];
  }

LABEL_65:
  v47 = MEMORY[0x277D75D18];
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_4;
  v121[3] = &unk_2781D63A8;
  stateCopy = state;
  v125 = popoverIsDismissing;
  v48 = group;
  v122 = v48;
  v49 = _catalogViewController;
  v123 = v49;
  v126 = v31;
  [v47 performWithoutAnimation:v121];
  capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  if (capsuleViewController)
  {
    dispatch_group_enter(v48);
    if (favoritesFieldShouldBeExpanded2)
    {
      v51 = 2;
    }

    else
    {
      v51 = 0;
    }

    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_7;
    v119[3] = &unk_2781D60B8;
    v120 = v48;
    [capsuleViewController transitionToState:v51 animated:v103 completionHandler:v119];
  }

  if (((v31 | (![(BrowserController *)self _animationsAreEnabled]|| !isFavoritesFieldFocused2)) & 1) == 0)
  {
    [view2 layoutIfNeeded];
  }

  textField = [_topNavigationBar textField];
  capsuleViewController2 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  unifiedField = [capsuleViewController2 unifiedField];

  if (unifiedField)
  {
    v54 = unifiedField;

    [v49 setTextField:v54];
    textField = v54;
  }

  if (v30)
  {
    currentSearchQuery2 = [activeTabDocument currentSearchQuery];
    currentSearchQueryAllowingQueryThatLooksLikeURL2 = currentSearchQuery2;
    if (!currentSearchQuery2)
    {
      currentSearchQueryAllowingQueryThatLooksLikeURL2 = [activeTabDocument currentSearchQueryAllowingQueryThatLooksLikeURL];
    }

    [v49 setQueryString:currentSearchQueryAllowingQueryThatLooksLikeURL2 forUpdatingCompletionListOnRestore:1];
    if (!currentSearchQuery2)
    {
    }
  }

  tabBarManager = [(BrowserController *)self tabBarManager];
  displayMode = [tabBarManager displayMode];
  itemArrangement = [tabBarManager itemArrangement];
  activeItem = [itemArrangement activeItem];
  activeTabDocument3 = [(TabController *)self->_tabController activeTabDocument];
  unifiedTabBarItem = [activeTabDocument3 unifiedTabBarItem];

  if (displayMode && ((favoritesFieldShouldBeExpanded ^ favoritesFieldShouldBeExpanded2 ^ 1) & 1) == 0 && activeItem == unifiedTabBarItem)
  {
    v63 = v89;
    if (favoritesFieldShouldBeExpanded2)
    {
      [tabBarManager setCompletionItemIcon:0];
    }

    dispatch_group_enter(v48);
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_8;
    v117[3] = &unk_2781D60B8;
    v118 = v48;
    [tabBarManager setActiveItemIsExpanded:favoritesFieldShouldBeExpanded2 animated:v103 completionHandler:v117];
    v64 = v118;
    goto LABEL_103;
  }

  if (displayMode)
  {
    v65 = 0;
  }

  else
  {
    v65 = favoritesFieldShouldBeExpanded ^ favoritesFieldShouldBeExpanded2;
  }

  v63 = v89;
  if (v65 == 1)
  {
    navigationBar = [(BrowserRootViewController *)self->_rootViewController navigationBar];
    v64 = navigationBar;
    if (v103)
    {
      item = [navigationBar item];
      textWhenExpanded = [item textWhenExpanded];

      if (favoritesFieldShouldBeExpanded2)
      {
        v69 = [textWhenExpanded length];
        v70 = 0;
      }

      else
      {
        v86 = textWhenExpanded;
        text = [textField text];
        v74 = [text isEqualToString:textWhenExpanded];

        if (v74)
        {
          selectedTextRange = [textField selectedTextRange];
          beginningOfDocument = [textField beginningOfDocument];
          start = [selectedTextRange start];
          v70 = [textField offsetFromPosition:beginningOfDocument toPosition:start];

          beginningOfDocument2 = [textField beginningOfDocument];
          v78 = [selectedTextRange end];
          v79 = [textField offsetFromPosition:beginningOfDocument2 toPosition:v78];

          v69 = v79 - v70;
        }

        else
        {
          v69 = 0;
          v70 = 0x7FFFFFFFFFFFFFFFLL;
        }

        textWhenExpanded = v86;
      }

      if (!v64)
      {
        goto LABEL_102;
      }

      dispatch_group_enter(v48);
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_9;
      v115[3] = &unk_2781D60B8;
      v116 = v48;
      [v64 setExpanded:favoritesFieldShouldBeExpanded2 textFieldSelectionRange:v70 completionHandler:v69, v115];
      v72 = &v116;
    }

    else
    {
      if (!navigationBar)
      {
LABEL_103:

        goto LABEL_104;
      }

      dispatch_group_enter(v48);
      v71 = MEMORY[0x277D75D18];
      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_10;
      v111[3] = &unk_2781D63D0;
      v112 = v64;
      v114 = favoritesFieldShouldBeExpanded2;
      v113 = v48;
      [v71 performWithoutAnimation:v111];
      v72 = &v112;
    }

LABEL_102:
    v63 = v89;
    goto LABEL_103;
  }

LABEL_104:
  if (favoritesAreShowingInPopover || !v103 || isShowingFavorites & 1 | ((isShowingFavorites2 & 1) == 0) && (isFavoritesFieldFocused || !isFavoritesFieldFocused2))
  {
    if (searchCopy)
    {
      [v49 toggleVoiceSearch];
    }

    else if (isFavoritesFieldFocused2)
    {
      [textField becomeFirstResponder];
    }

    else
    {
      [textField resignFirstResponder];
    }
  }

  else
  {
    dispatch_group_enter(v48);
    v80 = dispatch_time(0, 10000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_12;
    block[3] = &unk_2781D6420;
    v108 = isFavoritesFieldFocused;
    block[4] = self;
    v109 = searchCopy;
    v105 = textField;
    v110 = isShowingFavorites;
    v106 = view2;
    v107 = v48;
    dispatch_after(v80, MEMORY[0x277D85CD0], block);
  }

  [(BrowserController *)self updateDynamicBarGeometry];
  [(BrowserController *)self updateScrollToTopView];
  [(BrowserController *)self _updateButtonsAnimatingTabBar:v103];
  if ([(BrowserRootViewController *)self->_rootViewController usingUnifiedBar]&& self->_usesNarrowLayout)
  {
    [(_SFBarManager *)self->_barManager performCoalescedUpdatesNowAnimated:v103];
  }

  if ((isShowingFavorites2 & 1) == 0)
  {
    [activeTabDocument presentNextDialogIfNeeded];
  }

  v81 = MEMORY[0x277D85CD0];
  v82 = MEMORY[0x277D85CD0];
  v12 = v87;
  dispatch_group_notify(v48, v81, v87);

  v10 = v88;
LABEL_119:
}

uint64_t __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 browserController:v4 didChangeFromFavoritesState:v5];
  }

  return result;
}

- (uint64_t)_dismissTransientUIAnimated:(uint64_t)animated dismissalOptions:(void *)options completionHandler:
{
  optionsCopy = options;
  if (!self)
  {
    isDisplayingPrintUI = 0;
    v34 = optionsCopy;
    goto LABEL_31;
  }

  group = dispatch_group_create();
  tabThumbnailCollectionView = [*(self + 944) tabThumbnailCollectionView];
  v6 = [tabThumbnailCollectionView presentationState] == 1 || objc_msgSend(tabThumbnailCollectionView, "presentationState") == 2;

  if ((animated & 2) == 0)
  {
    [tabThumbnailCollectionView dismissAnimated:a2];
  }

  activeTabDocument = [*(self + 328) activeTabDocument];
  hideFindOnPage = [activeTabDocument hideFindOnPage];

  favoritesAreEmbedded = [self favoritesAreEmbedded];
  favoritesFieldShouldBeExpanded = [self favoritesFieldShouldBeExpanded];
  v11 = hideFindOnPage | v6;
  if ((animated & 1) == 0)
  {
    v12 = favoritesFieldShouldBeExpanded;
    if ((favoritesAreEmbedded ^ 1 | favoritesFieldShouldBeExpanded))
    {
      if (favoritesAreEmbedded)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      dispatch_group_enter(group);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke;
      v53[3] = &unk_2781D60B8;
      v14 = group;
      v54 = v14;
      [self setFavoritesState:v13 animated:a2 completionHandler:v53];
      [*(self + 440) setFavoritesState:0];
      v11 |= v12;
      if (((favoritesAreEmbedded | v11) & 1) == 0)
      {
        capsuleViewController = [*(self + 264) capsuleViewController];

        if (capsuleViewController)
        {
          dispatch_group_enter(v14);
          capsuleViewController2 = [*(self + 264) capsuleViewController];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke_2;
          v51[3] = &unk_2781D60B8;
          v52 = v14;
          LOBYTE(v11) = [capsuleViewController2 transitionToState:0 animated:a2 completionHandler:v51];
        }

        else
        {
          LOBYTE(v11) = 0;
        }
      }
    }
  }

  _catalogViewController = [(BrowserController *)self _catalogViewController];
  [_catalogViewController dismissUniversalSearchFirstTimeExperienceViewControllerIfNeeded];

  if ((*(self + 570) & 1) == 0 && [*(self + 768) isShowingSidebar] && objc_msgSend(*(self + 768), "sidebarStyle") == 1)
  {
    dispatch_group_enter(group);
    v18 = *(self + 768);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke_3;
    v49[3] = &unk_2781D63F8;
    v50 = group;
    [v18 setShowingSidebar:0 completion:v49];

    LOBYTE(v11) = 1;
  }

  activeTabDocument2 = [*(self + 328) activeTabDocument];
  dialogController = [activeTabDocument2 dialogController];

  presentedDialog = [dialogController presentedDialog];
  v22 = presentedDialog;
  if (presentedDialog && [presentedDialog presentationStyle] == 1)
  {
    [dialogController cancelPresentedDialogIfNeeded];
  }

  else if ((v11 & 1) == 0)
  {
    isPresentingModalBookmarksController = [self isPresentingModalBookmarksController];
    goto LABEL_27;
  }

  isPresentingModalBookmarksController = 1;
LABEL_27:
  dispatch_group_enter(group);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke_4;
  v47[3] = &unk_2781D60B8;
  v24 = group;
  v48 = v24;
  [(BrowserController *)self _setPresentingModalBookmarksController:0 exclusively:0 importHandler:0 withCollection:0 bookmarkUUIDString:a2 animated:v47 completion:?];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke_5;
  aBlock[3] = &unk_2781D6B38;
  animatedCopy = animated;
  v25 = v24;
  v44 = v25;
  v46 = a2;
  v26 = _Block_copy(aBlock);
  viewControllerToPresentFrom = [self viewControllerToPresentFrom];
  v28 = v26[2](v26, viewControllerToPresentFrom);

  viewControllerToPresentFromNavigationBar = [self viewControllerToPresentFromNavigationBar];
  v30 = v26[2](v26, viewControllerToPresentFromNavigationBar);

  activeTabDocument3 = [*(self + 328) activeTabDocument];
  printController = [activeTabDocument3 printController];

  if (((v30 | v28) | isPresentingModalBookmarksController))
  {
    isDisplayingPrintUI = 1;
  }

  else
  {
    isDisplayingPrintUI = [printController isDisplayingPrintUI];
  }

  [printController dismissPrintInteractionControllerAnimated:1];
  [*(self + 264) dismissAddedBookmarkToast];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke_7;
  block[3] = &unk_2781D6B60;
  block[4] = self;
  animatedCopy2 = animated;
  v34 = optionsCopy;
  v41 = optionsCopy;
  dispatch_group_notify(v25, MEMORY[0x277D85CD0], block);

LABEL_31:
  return isDisplayingPrintUI;
}

void __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_177(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    [*(a1 + 32) stopCompleting];
  }

  if (!*(*(a1 + 40) + 840))
  {
    [*(a1 + 56) removeFromSuperview];
    [*(a1 + 32) setNavigationBar:0];
    [*(a1 + 64) resignFirstResponder];
    v2 = [(BrowserController *)*(a1 + 40) _catalogViewController];
    v3 = *(a1 + 32);

    if (v2 == v3)
    {
      [*(a1 + 72) browserController:*(a1 + 40) setCatalogViewController:0];
      [(BrowserController *)*(a1 + 40) _updateCurrentPageBannerViewIfNeeded];
      v5 = *(a1 + 40);
      v6 = MEMORY[0x277CBEB98];
      v7 = [*(v5 + 328) activeTabDocument];
      v8 = [v6 setWithObjects:{v7, 0}];
      [(BrowserController *)v5 _updateDigitalHealthOverlayForTabDocuments:v8];
    }
  }

  v4 = *(a1 + 48);

  dispatch_group_leave(v4);
}

void __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 != 5)
  {
    if (v2 == 4 && (*(a1 + 56) & 1) == 0)
    {
      dispatch_group_enter(*(a1 + 32));
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_5;
      v8[3] = &unk_2781D60B8;
      v3 = &v9;
      v5 = *(a1 + 40);
      v9 = *(a1 + 32);
      [v5 setShowingCompletions:0 completionHandler:v8];
      goto LABEL_7;
    }

    if (*(a1 + 57) != 1)
    {
      return;
    }
  }

  dispatch_group_enter(*(a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_6;
  v6[3] = &unk_2781D60B8;
  v3 = &v7;
  v4 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v4 setShowingCompletions:1 completionHandler:v6];
LABEL_7:
}

void __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_11;
  v3[3] = &unk_2781D60B8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 setExpanded:v1 completionHandler:v3];
}

void __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_12(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0 && [*(a1 + 32) isFavoritesFieldFocused])
  {
    if (*(a1 + 65) == 1)
    {
      v2 = [(BrowserController *)*(a1 + 32) _catalogViewController];
      [v2 toggleVoiceSearch];
    }

    else
    {
      [*(a1 + 40) becomeFirstResponder];
    }
  }

  if ((*(a1 + 66) & 1) == 0 && [*(a1 + 32) isShowingFavorites])
  {
    [*(a1 + 48) layoutBelowIfNeeded];
    [*(a1 + 48) setAlpha:0.0];
    dispatch_group_enter(*(a1 + 56));
    v3 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_13;
    v10[3] = &unk_2781D60B8;
    v11 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_14;
    v8[3] = &unk_2781D63F8;
    v9 = *(a1 + 56);
    [v3 animateWithDuration:327682 delay:v10 options:v8 animations:0.2 completion:0.0];
    if (([*(a1 + 32) favoritesAreShowingInPopover] & 1) == 0)
    {
      dispatch_group_enter(*(a1 + 56));
      v4 = MEMORY[0x277D75D18];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_15;
      v7[3] = &unk_2781D60B8;
      v7[4] = *(a1 + 32);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_16;
      v5[3] = &unk_2781D63F8;
      v6 = *(a1 + 56);
      [v4 animateWithDuration:327680 delay:v7 options:v5 animations:0.2 completion:0.1];
    }

    if (UIAccessibilityIsReduceMotionEnabled())
    {
      dispatch_group_leave(*(a1 + 56));

      return;
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

- (void)_focusNavigationBarWithCompletionHandler:(uint64_t)handler
{
  v3 = a2;
  if (handler)
  {
    [(BrowserController *)handler _focusNavigationBarForVoiceSearch:v3 completionHandler:?];
  }
}

- (void)toggleVoiceSearch
{
  [(BrowserController *)self setSkipShowingRecentSearches:1];
  v3 = objc_alloc_init(MEMORY[0x277D49B60]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__BrowserController_toggleVoiceSearch__block_invoke;
  v10[3] = &unk_2781D60B8;
  v10[4] = self;
  [v3 setHandler:v10];
  if (-[BrowserController isFavoritesFieldFocused](self, "isFavoritesFieldFocused") || (-[BrowserRootViewController capsuleViewController](self->_rootViewController, "capsuleViewController"), v4 = objc_claimAutoreleasedReturnValue(), [v4 capsuleCollectionView], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "selectedItemState"), v5, v4, v6 == 2))
  {
    _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
    [_catalogViewController toggleVoiceSearch];
  }

  else
  {
    mEMORY[0x277D28EB8] = [MEMORY[0x277D28EB8] sharedManager];
    presentDictationDiscoveryAlertIfNeeded = [mEMORY[0x277D28EB8] presentDictationDiscoveryAlertIfNeeded];

    if (presentDictationDiscoveryAlertIfNeeded)
    {
      goto LABEL_5;
    }

    if (![(BrowserRootViewController *)self->_rootViewController usingLoweredBar])
    {
      [(BrowserController *)self _focusNavigationBarForVoiceSearch:0 completionHandler:?];
      goto LABEL_5;
    }

    _catalogViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    [_catalogViewController transitionToState:2 options:1 animated:1 completionHandler:0];
  }

LABEL_5:
}

- (void)_focusNavigationBarForVoiceSearch:(void *)search completionHandler:
{
  searchCopy = search;
  v6 = searchCopy;
  if (self)
  {
    if (*(self + 715))
    {
      WeakRetained = objc_loadWeakRetained((self + 368));
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained browserControllerCanFocusURLBar:self] & 1) == 0)
      {
        if (v6)
        {
          v6[2](v6);
        }
      }

      else
      {
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __73__BrowserController__focusNavigationBarForVoiceSearch_completionHandler___block_invoke;
        v8[3] = &unk_2781D6330;
        v9 = v6;
        [self setFavoritesFieldFocused:1 forVoiceSearch:a2 animated:1 completionHandler:v8];
      }
    }

    else if (searchCopy)
    {
      searchCopy[2](searchCopy);
    }
  }
}

- (void)prepareForTabDocumentWebViewFullscreenMayReturnToInline:(id)inline
{
  inlineCopy = inline;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];

  if (activeTabDocument == inlineCopy)
  {
    selfCopy = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    [(BrowserController *)selfCopy dismissAnimated:1];
LABEL_12:

    goto LABEL_13;
  }

  if (-[BrowserController isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled") || ![inlineCopy isPrivateBrowsingEnabled] || (+[Application sharedApplication](Application, "sharedApplication"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isPrivateBrowsingLocked"), v6, (v7 & 1) == 0))
  {
    selfCopy = self;
    v17[0] = selfCopy;
    v9 = inlineCopy;
    v17[1] = v9;
    tabThumbnailCollectionView = [(TabCollectionViewProviding *)selfCopy->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([tabThumbnailCollectionView presentationState] == 1)
    {
    }

    else
    {
      presentationState = [tabThumbnailCollectionView presentationState];

      if (presentationState != 2)
      {
        v12 = MEMORY[0x277D75D18];
        view = [(BrowserRootViewController *)selfCopy->_rootViewController view];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3321888768;
        v14[2] = __77__BrowserController_prepareForTabDocumentWebViewFullscreenMayReturnToInline___block_invoke;
        v14[3] = &__block_descriptor_48_ea8_32c89_ZTSZ77__BrowserController_prepareForTabDocumentWebViewFullscreenMayReturnToInline__E3__0_e5_v8__0l;
        v15 = selfCopy;
        v16 = v9;
        [v12 transitionWithView:view duration:5242880 options:v14 animations:0 completion:0.2];

        goto LABEL_11;
      }
    }

    [BrowserController prepareForTabDocumentWebViewFullscreenMayReturnToInline:]::$_0::operator()(v17, 1);
LABEL_11:

    goto LABEL_12;
  }

LABEL_13:
}

- (void)prepareForTabDocumentWebViewFullscreenMayReturnToInline:
{
  tabGroupTab = [self[1] tabGroupTab];
  tabGroupUUID = [tabGroupTab tabGroupUUID];

  activeTabGroupUUID = [*(*self + 41) activeTabGroupUUID];
  v7 = WBSIsEqual();

  if ((v7 & 1) == 0)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Will switch tab group for change to web view fullscreen.", v10, 2u);
    }

    [*(*self + 41) setActiveTabGroupUUID:tabGroupUUID];
  }

  [*(*self + 41) setActiveTabDocument:self[1] animated:a2];
  tabThumbnailCollectionView = [*(*self + 118) tabThumbnailCollectionView];
  [tabThumbnailCollectionView dismissAnimated:a2];
}

- (void)_didChangePowerState
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__BrowserController__didChangePowerState__block_invoke;
    block[3] = &unk_2781D60B8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __41__BrowserController__didChangePowerState__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 920) isLoading])
  {
    [*(a1 + 32) clearSpeculativeLoadDocument];
  }

  if ([*(*(a1 + 32) + 208) isLoading])
  {
    [(BrowserController *)*(a1 + 32) _clearPreviousContinuousItemDocument];
  }

  if ([*(*(a1 + 32) + 160) isLoading])
  {
    v2 = *(a1 + 32);

    [(BrowserController *)v2 _clearNextContinuousItemDocument];
  }
}

- (void)_clearPreviousContinuousItemDocument
{
  if (self)
  {
    v2 = *(self + 208);
    if (v2)
    {
      [(BrowserController *)self _cancelSpeculativeLoadForDocument:v2];
      previousItemPreviewView = [*(self + 80) previousItemPreviewView];
      [previousItemPreviewView replaceContentViewWithItsSnapshot];
      [previousItemPreviewView setContentView:0];
      [previousItemPreviewView setPrefetchingDisabled:1];
      [(BrowserController *)self _closeSpeculativelyLoadedDocument:?];
      v3 = *(self + 208);
      *(self + 208) = 0;
    }
  }
}

- (void)_clearNextContinuousItemDocument
{
  if (self)
  {
    v2 = *(self + 160);
    if (v2)
    {
      [(BrowserController *)self _cancelSpeculativeLoadForDocument:v2];
      previewView = [*(self + 80) previewView];
      [previewView replaceContentViewWithItsSnapshot];
      [previewView setContentView:0];
      [previewView setPrefetchingDisabled:1];
      [(BrowserController *)self _closeSpeculativelyLoadedDocument:?];
      v3 = *(self + 160);
      *(self + 160) = 0;
    }
  }
}

- (void)_completionItem:(void *)item wasAcceptedForString:
{
  v9 = a2;
  itemCopy = item;
  if (self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v9;
      if ([v6 matchLocation] != 9)
      {
        v7 = +[History sharedHistory];
        originalURLString = [v6 originalURLString];
        [v7 addAutocompleteTrigger:itemCopy forURLString:originalURLString];
      }
    }
  }
}

- (void)catalogViewController:(id)controller didSelectSearch:(id)search
{
  searchCopy = search;
  [(BrowserController *)self clearSpeculativeLoadDocument];
  [(BrowserController *)self clearContinuousItemDocuments];
  [(BrowserController *)self _doSearch:searchCopy];
  [(BrowserController *)self setFavoritesState:0 animated:1];
}

- (void)_doSearch:(void *)search
{
  v5 = a2;
  if (search)
  {
    builder = [MEMORY[0x277D28F40] builder];
    v4 = [builder navigationIntentWithSearchText:v5];

    [v4 setProvenance:1];
    [search dispatchNavigationIntent:v4];
  }
}

- (int64_t)idOfParsecQueryOriginatingFromSearchSuggestion
{
  searchStateCache = self->_searchStateCache;
  if (!searchStateCache)
  {
    return 0;
  }

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  v4 = [(SearchStateCache *)searchStateCache idOfParsecQueryOriginatingFromSearchSuggestionInTabDocument:activeTabDocument];

  return v4;
}

- (void)clearParsecQueryOriginatingFromSearchSuggestion
{
  searchStateCache = self->_searchStateCache;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [(SearchStateCache *)searchStateCache clearParsecQueryOriginatingFromSearchSuggestionInTabDocument:?];
}

- (void)removeCachedSearchStateForActiveTabDocument
{
  searchStateCache = self->_searchStateCache;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [(SearchStateCache *)searchStateCache removeCachedSearchStateForTabDocument:?];
}

- (void)catalogViewControllerDidSelectFindOnPage:(id)page
{
  self->_shouldFillStringForFind = 0;
  [(BrowserController *)self setFavoritesState:0 animated:1];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument showFindOnPage];

  [(BrowserController *)self clearSpeculativeLoadDocument];

  [(BrowserController *)self clearContinuousItemDocuments];
}

- (void)catalogViewController:(id)controller didSelectAddress:(id)address
{
  addressCopy = address;
  [(BrowserController *)self _loadAddressAsSpeculativeLoadIfNeeded:addressCopy];
  [(BrowserController *)self setFavoritesState:0 animated:1];
}

- (void)_loadAddressAsSpeculativeLoadIfNeeded:(void *)needed
{
  v3 = a2;
  v8 = v3;
  if (needed)
  {
    if (([v3 _web_isUserVisibleURL] & 1) == 0)
    {
      safari_bestURLForUserTypedString = [v8 safari_bestURLForUserTypedString];
      safari_userVisibleString = [safari_bestURLForUserTypedString safari_userVisibleString];

      v8 = safari_userVisibleString;
    }

    builder = [MEMORY[0x277D28F40] builder];
    v7 = [builder navigationIntentWithText:v8];

    [v7 setProvenance:1];
    [(BrowserController *)needed _loadIntentAsSpeculativeLoadIfNeeded:v7];
  }
}

- (void)catalogViewController:(id)controller loadURL:(id)l inExternalApplication:(BOOL)application forImageAttribution:(BOOL)attribution
{
  attributionCopy = attribution;
  applicationCopy = application;
  lCopy = l;
  [(BrowserController *)self _loadURL:lCopy inExternalApplication:applicationCopy forImageAttribution:attributionCopy];
  if (applicationCopy)
  {
    mEMORY[0x277D4A808] = [MEMORY[0x277D4A808] sharedRecorder];
    [mEMORY[0x277D4A808] didActualizeImpressionForURL:lCopy provenance:1];
  }
}

- (void)_loadURL:(int)l inExternalApplication:(int)application forImageAttribution:
{
  v10 = a2;
  if (self)
  {
    if (l)
    {
      WeakRetained = objc_loadWeakRetained((self + 904));
      [WeakRetained openURL:v10 options:0 completionHandler:0];
      v8 = WeakRetained;
    }

    else
    {
      [MEMORY[0x277D28F40] builder];
      if (application)
        v9 = {;
        [v9 navigationIntentWithImageAttributionURL:v10];
      }

      else
        v9 = {;
        [v9 navigationIntentWithURL:v10];
      }
      v8 = ;

      [v8 setProvenance:1];
      [(BrowserController *)self _loadIntentAsSpeculativeLoadIfNeeded:v8];
      [self setFavoritesState:0 animated:1];
    }
  }
}

- (void)_loadIntentAsSpeculativeLoadIfNeeded:(void *)needed
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (needed)
  {
    if ([v3 policy])
    {
LABEL_3:
      [needed clearSpeculativeLoadDocument];
      [needed dispatchNavigationIntent:v4];
      goto LABEL_9;
    }

    v5 = [v4 URL];
    safari_userVisibleString = [v5 safari_userVisibleString];
    v7 = [(BrowserController *)needed _commitSpeculativeLoadForURL:safari_userVisibleString];

    if (v7)
    {
      mEMORY[0x277D4A808] = [MEMORY[0x277D4A808] sharedRecorder];
      text3 = [v4 URL];
      [mEMORY[0x277D4A808] didActualizeImpressionForURL:text3 provenance:{objc_msgSend(v4, "provenance")}];
    }

    else
    {
      text = [v4 text];
      v11 = [(BrowserController *)needed _commitSpeculativeLoadForURL:text];

      if (!v11)
      {
        v14 = WBS_LOG_CHANNEL_PREFIXTabs();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = needed[54];
          v16 = needed[115];
          v17 = [v4 URL];
          safari_userVisibleString2 = [v17 safari_userVisibleString];
          text2 = [v4 text];
          v20 = 138740739;
          v21 = v15;
          v22 = 2117;
          v23 = v16;
          v24 = 2117;
          v25 = safari_userVisibleString2;
          v26 = 2117;
          v27 = text2;
          _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_INFO, "Cached speculative load URL %{sensitive}@ or document %{sensitive}@ doesn't match either expectation %{sensitive}@ or %{sensitive}@", &v20, 0x2Au);
        }

        goto LABEL_3;
      }

      mEMORY[0x277D4A808] = [MEMORY[0x277D4A808] sharedRecorder];
      v12 = MEMORY[0x277CBEBC0];
      text3 = [v4 text];
      v13 = [v12 URLWithString:text3];
      [mEMORY[0x277D4A808] didActualizeImpressionForURL:v13 provenance:{objc_msgSend(v4, "provenance")}];
    }
  }

LABEL_9:
}

- (double)catalogViewControllerPopoverWidth:(id)width
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained browserControllerCatalogViewPopoverWidth:self];
  v6 = v5;

  return v6;
}

- (void)catalogViewController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  _topNavigationBar = [(BrowserController *)&self->super.super.super.isa _topNavigationBar];
  uRLOutlinePopoverSourceInfo = [_topNavigationBar URLOutlinePopoverSourceInfo];

  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v10 = _SFContextInfoWithComment();
  _SFPopoverSourceInfoUnwrap();

  *view = v12[5];
  _Block_object_dispose(&v11, 8);
}

void __78__BrowserController_catalogViewController_willRepositionPopoverToRect_inView___block_invoke(uint64_t *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = [(BrowserController *)a1[4] _popoverPresentationVerticalOffset];
  v13 = a1[6];
  *v13 = a3;
  v13[1] = a4 + v12;
  v13[2] = a5;
  v13[3] = a6;
  v14 = *(a1[5] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v11;
}

- (double)_popoverPresentationVerticalOffset
{
  if (!self)
  {
    return 0.0;
  }

  WeakRetained = objc_loadWeakRetained((self + 904));
  statusBarManager = [WeakRetained statusBarManager];
  if ([statusBarManager isStatusBarHidden])
  {
    v3 = 7.0;
  }

  else
  {
    v3 = 10.0;
  }

  return v3;
}

- (void)catalogViewController:(id)controller mightSelectCompletionItem:(id)item forString:(id)string
{
  itemCopy = item;
  stringCopy = string;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [itemCopy shouldPrefetchWithMatchLength:{objc_msgSend(stringCopy, "length")}])
  {
    userVisibleURLString = [itemCopy userVisibleURLString];
  }

  else
  {
    userVisibleURLString = 0;
  }

  objc_initWeak(&location, self);
  v10 = MEMORY[0x277CBEBB8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__BrowserController_catalogViewController_mightSelectCompletionItem_forString___block_invoke;
  v15[3] = &unk_2781D64B0;
  objc_copyWeak(&v17, &location);
  v11 = userVisibleURLString;
  v16 = v11;
  v12 = [v10 timerWithTimeInterval:0 repeats:v15 block:0.2];
  lastTimerForDelayingSpeculativelyPreloadingTopHit = self->_lastTimerForDelayingSpeculativelyPreloadingTopHit;
  self->_lastTimerForDelayingSpeculativelyPreloadingTopHit = v12;

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:self->_lastTimerForDelayingSpeculativelyPreloadingTopHit forMode:*MEMORY[0x277CBE738]];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __79__BrowserController_catalogViewController_mightSelectCompletionItem_forString___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[75] == v6)
  {
    [(BrowserController *)WeakRetained _updateSpeculativeLoadURL:?];
    v5 = v4[75];
    v4[75] = 0;
  }
}

- (void)_updateSpeculativeLoadURL:(uint64_t)l
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (l)
  {
    if (*(l + 424) == 1)
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

      if ((isLowPowerModeEnabled & 1) == 0 && ([*(l + 432) isEqualToString:v3] & 1) == 0)
      {
        tabController = [l tabController];
        activeTabDocument = [tabController activeTabDocument];
        webView = [activeTabDocument webView];

        if (!webView || ([webView _isBeingInspected] & 1) == 0)
        {
          [l cancelSpeculativeLoad];
          v9 = [v3 copy];
          v10 = *(l + 432);
          *(l + 432) = v9;

          if (*(l + 432))
          {
            v11 = [MEMORY[0x277CBEBC0] URLWithString:?];
            if ([v11 safari_isHTTPFamilyURL])
            {
              v12 = webView;
              v13 = *(l + 920);
              if (v13)
              {
                v14 = [v13 URL];
                host = [v14 host];
                safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

                host2 = [v11 host];
                safari_highLevelDomainFromHost2 = [host2 safari_highLevelDomainFromHost];

                webView2 = v12;
                if (safari_highLevelDomainFromHost2)
                {
                  webView2 = v12;
                  if (![safari_highLevelDomainFromHost2 caseInsensitiveCompare:safari_highLevelDomainFromHost])
                  {
                    v19 = WBS_LOG_CHANNEL_PREFIXPageLoading();
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_215819000, v19, OS_LOG_TYPE_INFO, "Using the related web view off the speculative load TabDocument", buf, 2u);
                    }

                    webView2 = [*(l + 920) webView];
                  }
                }

                v20 = *(l + 920);
              }

              else
              {
                v20 = 0;
                webView2 = v12;
              }

              v22 = v20;
              v23 = [[TabDocument alloc] initForBackgroundLoadingWithBrowserController:l relatedWebView:webView2 webViewToCloneSessionStorageFrom:v12];
              v24 = *(l + 920);
              *(l + 920) = v23;

              [*(l + 920) setShouldKeepIgnoredSiriSuggestedSitesOnLoad:1];
              unifiedField = [l unifiedField];
              text = [unifiedField text];
              v27 = text == 0;

              if (!v27)
              {
                text2 = [unifiedField text];
                personalizationData = [*(l + 920) personalizationData];
                [personalizationData setSearchQuery:text2];

                personalizationData2 = [*(l + 920) personalizationData];
                [personalizationData2 setPosition:0];
              }

              webView3 = [*(l + 920) webView];
              [l updateInsetsForBackgroundWebView:webView3];

              [*(l + 920) setAllowsRemoteInspection:0];
              activeTabDocument2 = [*(l + 328) activeTabDocument];
              sessionState = [activeTabDocument2 sessionState];

              [*(l + 920) restoreSessionState:sessionState andNavigate:0];
              _backForwardList = [*(l + 920) _backForwardList];
              currentItem = [_backForwardList currentItem];
              objc_storeWeak((l + 32), currentItem);

              v36 = googleSearchEngine();
              v37 = [v36 urlAttributingToSafariIfValidSearchURL:v11];

              v11 = v37;
              v38 = WBS_LOG_CHANNEL_PREFIXPageLoading();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                *buf = 141558275;
                v42 = 1752392040;
                v43 = 2117;
                v44 = v37;
                _os_log_impl(&dword_215819000, v38, OS_LOG_TYPE_INFO, "Speculatively load URL: %{sensitive, mask.hash}@", buf, 0x16u);
              }

              v39 = [*(l + 920) loadURL:v37 userDriven:1];
              [*(l + 920) beginSuppressingProgressAnimation];
              if (v22)
              {
                [(BrowserController *)l _closeSpeculativelyLoadedDocument:v22];
              }
            }

            else
            {
              v21 = *(l + 432);
              *(l + 432) = 0;
            }
          }
        }
      }
    }
  }
}

- (void)catalogViewController:(id)controller completionItem:(id)item wasAcceptedForString:(id)string
{
  controllerCopy = controller;
  itemCopy = item;
  stringCopy = string;
  if (!self->_searchStateCache)
  {
    v10 = objc_alloc_init(SearchStateCache);
    searchStateCache = self->_searchStateCache;
    self->_searchStateCache = v10;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [itemCopy restoresSearchState])
  {
    v12 = self->_searchStateCache;
    completionList = [controllerCopy completionList];
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    [(SearchStateCache *)v12 cacheAcceptanceOfCompletionItem:itemCopy withCompletionList:completionList forTabDocument:activeTabDocument];
  }

  else
  {
    [(BrowserController *)self removeCachedSearchStateForActiveTabDocument];
  }

  [(BrowserController *)self _completionItem:itemCopy wasAcceptedForString:stringCopy];
}

- (void)catalogViewControllerSuppressSelectedItemUnfocus:(id)unfocus
{
  capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  capsuleCollectionView = [capsuleViewController capsuleCollectionView];
  [capsuleCollectionView setSuppressesSelectedItemUnfocus:1];
}

- (void)catalogViewController:(id)controller cacheSearchQueryID:(int64_t)d
{
  controllerCopy = controller;
  searchStateCache = self->_searchStateCache;
  if (!searchStateCache)
  {
    v7 = objc_alloc_init(SearchStateCache);
    v8 = self->_searchStateCache;
    self->_searchStateCache = v7;

    searchStateCache = self->_searchStateCache;
  }

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [(SearchStateCache *)searchStateCache cacheSearchQueryID:d forTab:activeTabDocument];
}

- (void)catalogViewControllerDidBeginEditing:(id)editing
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument clearFindOnPageMatchesCounter];

  [(BrowserController *)self setFavoritesFieldFocused:1 animated:1];
}

- (void)catalogViewControllerDidEndEditing:(id)editing
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument clearFindOnPageMatchesCounter];

  [(BrowserController *)self setFavoritesFieldFocused:0 animated:1];
}

- (void)catalogViewControllerPopoverWillDismiss:(id)dismiss dismissalReason:(int64_t)reason
{
  dismissCopy = dismiss;
  [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self catalogViewController:dismissCopy willDismissPopoverWithReason:reason];
  }

  if (reason >= 2)
  {
    [(BrowserController *)self cancelFavorites];
  }
}

- (void)catalogViewController:(id)controller presentViewControllerWithinPopover:(id)popover completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  popoverCopy = popover;
  handlerCopy = handler;
  viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
  presentedViewController = [viewControllerToPresentFrom presentedViewController];

  if (presentedViewController)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      viewControllerToPresentFrom2 = [(BrowserController *)self viewControllerToPresentFrom];
      presentedViewController2 = [viewControllerToPresentFrom2 presentedViewController];
      [(BrowserController *)presentedViewController2 catalogViewController:v38 presentViewControllerWithinPopover:v11 completionHandler:viewControllerToPresentFrom2];
    }
  }

  presentingViewController = [popoverCopy presentingViewController];
  v15 = presentingViewController == 0;

  if (!v15)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [popoverCopy presentingViewController];
      objc_claimAutoreleasedReturnValue();
      [BrowserController catalogViewController:presentViewControllerWithinPopover:completionHandler:];
    }
  }

  popoverPresentationController = [popoverCopy popoverPresentationController];
  [popoverPresentationController setPermittedArrowDirections:1];
  v18 = *(MEMORY[0x277CBF398] + 16);
  v37.origin = *MEMORY[0x277CBF398];
  v37.size = v18;
  v36 = 0;
  [(BrowserController *)self catalogViewController:controllerCopy willRepositionPopoverToRect:&v37 inView:&v36];
  v19 = v36;
  v20 = dispatch_group_create();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__BrowserController_catalogViewController_presentViewControllerWithinPopover_completionHandler___block_invoke;
  aBlock[3] = &unk_2781D6330;
  v21 = handlerCopy;
  v35 = v21;
  v22 = _Block_copy(aBlock);
  if (!v19)
  {
    v24 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      [BrowserController catalogViewController:presentViewControllerWithinPopover:completionHandler:];
    }

    goto LABEL_15;
  }

  if (CGRectIsNull(v37))
  {
    v23 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [BrowserController catalogViewController:presentViewControllerWithinPopover:completionHandler:];
    }

LABEL_15:
    v22[2](v22);
    goto LABEL_19;
  }

  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self catalogViewController:controllerCopy willPresentViewControllerWithinPopover:popoverCopy];
  }

  [popoverPresentationController setSourceRect:{*&v37.origin, *&v37.size}];
  [popoverPresentationController setSourceView:v19];
  _topNavigationBar = [(BrowserController *)&self->super.super.super.isa _topNavigationBar];
  popoverPassthroughViews = [_topNavigationBar popoverPassthroughViews];
  [popoverPresentationController setPassthroughViews:popoverPassthroughViews];

  dispatch_group_enter(v20);
  viewControllerToPresentFrom3 = [(BrowserController *)self viewControllerToPresentFrom];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __96__BrowserController_catalogViewController_presentViewControllerWithinPopover_completionHandler___block_invoke_209;
  v32[3] = &unk_2781D60B8;
  v29 = v20;
  v33 = v29;
  [viewControllerToPresentFrom3 presentViewController:popoverCopy animated:0 completion:v32];

  [popoverPresentationController _setShouldHideArrow:1];
  [popoverPresentationController _setIgnoresKeyboardNotifications:1];
  [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
  dispatch_group_notify(v29, MEMORY[0x277D85CD0], v22);

LABEL_19:
}

uint64_t __96__BrowserController_catalogViewController_presentViewControllerWithinPopover_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)catalogViewController:(id)controller presentViewControllerInPlatter:(id)platter animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  platterCopy = platter;
  handlerCopy = handler;
  viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
  presentedViewController = [viewControllerToPresentFrom presentedViewController];

  if (presentedViewController)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      viewControllerToPresentFrom2 = [(BrowserController *)self viewControllerToPresentFrom];
      presentedViewController2 = [viewControllerToPresentFrom2 presentedViewController];
      [BrowserController catalogViewController:presentedViewController2 presentViewControllerInPlatter:v26 animated:v15 completionHandler:viewControllerToPresentFrom2];
    }
  }

  presentingViewController = [platterCopy presentingViewController];
  v19 = presentingViewController == 0;

  if (!v19)
  {
    v20 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [platterCopy presentingViewController];
      objc_claimAutoreleasedReturnValue();
      [BrowserController catalogViewController:presentViewControllerInPlatter:animated:completionHandler:];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self catalogViewController:controllerCopy willPresentViewControllerWithinPopover:platterCopy];
  }

  viewControllerToPresentFrom3 = [(BrowserController *)self viewControllerToPresentFrom];
  [viewControllerToPresentFrom3 presentViewController:platterCopy animated:animatedCopy completion:handlerCopy];
  transitionCoordinator = [viewControllerToPresentFrom3 transitionCoordinator];
  tabBarManager = [(BrowserController *)self tabBarManager];
  inlineTabBar = [tabBarManager inlineTabBar];
  [inlineTabBar setTransitionCoordinator:transitionCoordinator];

  [(BrowserController *)self _updateButtonsAnimatingTabBar:animatedCopy];
}

- (BOOL)catalogViewControllerShouldRequestNetworkedSuggestions:(id)suggestions
{
  if (!self->_canPerformPostLaunchActions)
  {
    return 0;
  }

  configuration = [(BrowserController *)self configuration];
  allowsNetworkedSearchSuggestions = [configuration allowsNetworkedSearchSuggestions];

  if ((allowsNetworkedSearchSuggestions & 1) == 0)
  {
    return 0;
  }

  mEMORY[0x277D7B590] = [MEMORY[0x277D7B590] sharedWebFilterSettings];
  isWebFilterEnabled = [mEMORY[0x277D7B590] isWebFilterEnabled];

  return isWebFilterEnabled ^ 1;
}

- (void)catalogViewController:(id)controller focusNextKeyView:(BOOL)view
{
  viewCopy = view;
  if ([(BrowserController *)self favoritesAreShowingInPopover])
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    frontWebView = [activeTabDocument frontWebView];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__BrowserController_catalogViewController_focusNextKeyView___block_invoke;
    v8[3] = &unk_2781D63F8;
    v8[4] = self;
    [frontWebView _becomeFirstResponderWithSelectionMovingForward:viewCopy completionHandler:v8];
  }
}

uint64_t __60__BrowserController_catalogViewController_focusNextKeyView___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) cancelFavoritesAnimated:0];
  }

  return result;
}

- (void)catalogViewControllerMakeWindowKey:(id)key
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained browserControllerMakeKey:self];
}

- (BOOL)catalogViewControllerShouldSuppressPopover:(id)popover
{
  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  v4 = [tabThumbnailCollectionView presentationState] == 1 || objc_msgSend(tabThumbnailCollectionView, "presentationState") == 2;

  return v4;
}

- (void)catalogViewController:(id)controller didPasteText:(id)text
{
  textCopy = text;
  builder = [MEMORY[0x277D28F40] builder];
  v6 = [builder navigationIntentWithText:textCopy];
  [(BrowserController *)self dispatchNavigationIntent:v6];
}

- (id)catalogViewControllerStartPageVisualStyleProvider:(id)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained browserControllerStartPageVisualStyleProvider:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)catalogViewControllerDidScroll:(id)scroll animated:(BOOL)animated
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__BrowserController_catalogViewControllerDidScroll_animated___block_invoke;
  v4[3] = &unk_2781D60B8;
  v4[4] = self;
  [MEMORY[0x277D75D18] sf_animate:animated usingDefaultTimingWithOptions:50331648 animations:v4 completion:0];
}

- (void)dismissCatalogViewController:(id)controller
{
  if ([(BrowserController *)self favoritesAreShowingInPopover])
  {
    unifiedField = [(BrowserController *)self unifiedField];
    [unifiedField resignFirstResponder];
  }

  else
  {

    [(BrowserController *)self cancelFavorites];
  }
}

- (BOOL)catalogViewControllerUnifiedFieldCanBecomeFirstResponder:(id)responder
{
  if (self->_contentBorrowedForTab)
  {
    return [(BrowserController *)&self->super.super.super.isa _wantsURLFieldAutoFocus]^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)catalogViewControllerWillUnfocusUnifiedField:(id)field showingRecentSearches:(BOOL)searches
{
  searchesCopy = searches;
  capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if ([activeTabDocument isShowingSystemStartPage])
  {
    unifiedField = [capsuleViewController unifiedField];
    text = [unifiedField text];
    v9 = [text length];

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = !searchesCopy;
    }

    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  capsuleCollectionView = [capsuleViewController capsuleCollectionView];
  [capsuleCollectionView setSuppressesSelectedItemUnfocus:1];

LABEL_10:
}

- (BOOL)catalogViewControllerPresentingInPortraitAspectRatio:(id)ratio
{
  view = [(BrowserRootViewController *)self->_rootViewController view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  return v5 <= v7;
}

- (void)catalogViewController:(id)controller willPresentDetailViewController:(id)viewController
{
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self willPresentAutocompletionDetailViewController:viewControllerCopy];
  }
}

- (void)catalogViewController:(id)controller willPresentCustomizationViewController:(id)viewController
{
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self willPresentStartPageCustomizationViewController:viewControllerCopy];
  }
}

- (void)catalogViewController:(id)controller didFinishVoiceSearchWithNavigation:(BOOL)navigation
{
  navigationCopy = navigation;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self didFinishVoiceSearchWithNavigation:navigationCopy];
  }
}

- (void)catalogViewControllerDidAppear:(id)appear
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserControllerStartPageUpdatePolicyDidChange:self];
  }
}

- (BOOL)catalogViewControllerShouldUsePopoverForCompletions:(id)completions
{
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    return ![(BrowserController *)self _shouldUseNarrowLayout];
  }

  else
  {
    viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
    traitCollection = [viewControllerToPresentFrom traitCollection];
    LOBYTE(v4) = [traitCollection horizontalSizeClass] != 1;
  }

  return v4;
}

- (void)beginTrackingDropSessionForTabBarVisibility:(id)visibility
{
  visibilityCopy = visibility;
  dropSessionsForTabBarVisibility = self->_dropSessionsForTabBarVisibility;
  v9 = visibilityCopy;
  if (dropSessionsForTabBarVisibility)
  {
    [(NSMutableSet *)dropSessionsForTabBarVisibility addObject:visibilityCopy];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB58] setWithObject:visibilityCopy];
    v7 = self->_dropSessionsForTabBarVisibility;
    self->_dropSessionsForTabBarVisibility = v6;
  }

  -[BrowserController updateShowingTabBarAnimated:](self, "updateShowingTabBarAnimated:", [MEMORY[0x277D75D18] areAnimationsEnabled]);
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self tabBarExpansionViewDidBeginTrackingDropSession:v9];
  }
}

- (void)endTrackingDropSessionForTabBarVisibility:(id)visibility
{
  visibilityCopy = visibility;
  [(NSMutableSet *)self->_dropSessionsForTabBarVisibility removeObject:?];
  -[BrowserController updateShowingTabBarAnimated:](self, "updateShowingTabBarAnimated:", [MEMORY[0x277D75D18] areAnimationsEnabled]);
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self tabBarExpansionViewDidEndTrackingDropSession:visibilityCopy];
  }
}

- (void)tabDocumentWillBeginDragSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self tabDocumentWillBeginDragSession:sessionCopy];
  }
}

- (void)tabDocumentWillEndDragSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self tabDocumentWillEndDragSession:sessionCopy];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__BrowserController_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_2781D6270;
  selfCopy = self;
  contextCopy = context;
  v11 = pathCopy;
  v9 = pathCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __68__BrowserController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == lockdownModeObserverContext)
  {
    if ([*(a1 + 32) isEqualToString:*MEMORY[0x277D4A278]])
    {
      [*(*(a1 + 40) + 264) updateUsesLockdownStatusBar];
      v3 = *(a1 + 40);

      [v3 updateDynamicBarGeometry];
      return;
    }

    v2 = *(a1 + 48);
  }

  if (v2 == webFeatureObserverContext)
  {
    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = observableWebKitFeaturesByDefaultsKey();
    v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

    v6 = [v9 objectForKey:*(a1 + 32)];
    if (v6)
    {
      v7 = [v9 BOOLForKey:*(a1 + 32)];
    }

    else
    {
      v7 = [v5 defaultValue];
    }

    v8 = v7;

    [*(*(a1 + 40) + 856) _setEnabled:v8 forFeature:v5];
  }
}

- (int64_t)analyticsLayoutProvenance
{
  IsPad = _SFDeviceIsPad();
  rootViewController = self->_rootViewController;
  if (IsPad)
  {
    capsuleViewController = [(BrowserRootViewController *)rootViewController capsuleViewController];

    if (capsuleViewController)
    {
      return 3;
    }

    else
    {
      safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      safari_enableStandaloneTabBar = [safari_browserDefaults safari_enableStandaloneTabBar];

      if (safari_enableStandaloneTabBar)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else if ([(BrowserRootViewController *)rootViewController usingLoweredBar])
  {
    capsuleViewController2 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    capsuleCollectionView = [capsuleViewController2 capsuleCollectionView];
    layoutStyle = [capsuleCollectionView layoutStyle];

    if (layoutStyle == 1)
    {
      return 5;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    return 2;
  }
}

- (int64_t)tabBarDisplayMode
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  safari_enableStandaloneTabBar = [safari_browserDefaults safari_enableStandaloneTabBar];

  if (safari_enableStandaloneTabBar)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_addInteractionsForTabBar:(uint64_t)bar
{
  v3 = a2;
  if (bar && v3)
  {
    v9 = v3;
    tabDragDropController = [*(bar + 944) tabDragDropController];
    v5 = [objc_alloc(MEMORY[0x277D75468]) initWithDelegate:tabDragDropController];
    [v9 addInteraction:v5];

    v6 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:tabDragDropController];
    [v9 addInteraction:v6];

    v7 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:tabDragDropController];
    v8 = *(bar + 344);
    *(bar + 344) = v7;

    [v9 addInteraction:*(bar + 344)];
    [TabCollectionViewSpringLoadingBehavior addSpringLoadedInteractionToTabView:v9];

    v3 = v9;
  }
}

- (id)_sidebarViewController
{
  if (self)
  {
    sidebarViewController = [*(self + 264) sidebarViewController];
    contentViewController = [sidebarViewController contentViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = contentViewController;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)reloadSidebarAnimated:(BOOL)animated
{
  [(LibraryController *)self->_libraryController setNeedsReloadSectionControllersAnimated:animated];
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupPickerViewController);
  [WeakRetained setNeedsReloadData];
}

- (void)_reloadProfileSwitcherIfNeeded
{
  if (self)
  {
    profilesInSwitcherMenu = [*(self + 912) profilesInSwitcherMenu];
    profiles = [*(self + 328) profiles];
    v4 = [profilesInSwitcherMenu count];
    if (v4 == [profiles count])
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __51__BrowserController__reloadProfileSwitcherIfNeeded__block_invoke;
      v5[3] = &unk_2781D64D8;
      v5[4] = self;
      [profilesInSwitcherMenu safari_enumerateZippedValuesWithArray:profiles withBlock:v5];
    }

    else
    {
      [*(self + 912) setNeedsReloadForProfileSwitcher];
    }
  }
}

void __51__BrowserController__reloadProfileSwitcherIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v14 = a2;
  v8 = a3;
  v9 = [v14 title];
  v10 = [v8 title];
  if (([v9 isEqualToString:v10] & 1) == 0)
  {

    goto LABEL_5;
  }

  v11 = [v14 symbolImageName];
  v12 = [v8 symbolImageName];
  v13 = [v11 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
LABEL_5:
    [*(*(a1 + 32) + 912) setNeedsReloadForProfileSwitcher];
    *a5 = 1;
  }
}

- (void)_profileWallpaperDidChange:(id)change
{
  defaultManager = [MEMORY[0x277D4A820] defaultManager];
  tabGroupManager = self->_tabGroupManager;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__BrowserController__profileWallpaperDidChange___block_invoke;
  v7[3] = &unk_2781D61F8;
  v7[4] = self;
  v8 = defaultManager;
  v6 = defaultManager;
  [(WBTabGroupManager *)tabGroupManager reloadTabGroupsFromDatabaseWithCompletionHandler:v7];
}

void __48__BrowserController__profileWallpaperDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 792) profiles];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__BrowserController__profileWallpaperDidChange___block_invoke_2;
  v3[3] = &unk_2781D6500;
  v4 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v3];
}

void __48__BrowserController__profileWallpaperDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 identifier];
  if ([v3 isEqualToString:*MEMORY[0x277D49BD8]])
  {
    v4 = &stru_2827BF158;
  }

  else
  {
    v4 = [v5 identifier];
  }

  [*(a1 + 32) loadImageFromDiskForIdentifier:v4];
}

void __34__BrowserController_sidebarAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained barManager:WeakRetained[106] didReceiveTapForBarItem:3];
  }
}

- (id)_navigationControllerForTabGroupPicker
{
  selfCopy = self;
  if (self)
  {
    v2 = [[TabGroupPickerViewController alloc] initWithTabGroupProvider:self[41]];
    objc_storeWeak(selfCopy + 44, v2);
    selfCopy = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v2];
  }

  return selfCopy;
}

- (void)hideTabGroupPicker
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupPickerViewController);
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (id)showTabGroupPicker:(id)picker
{
  v40[2] = *MEMORY[0x277D85DE8];
  pickerCopy = picker;
  _navigationControllerForTabGroupPicker = [(BrowserController *)&self->super.super.super.isa _navigationControllerForTabGroupPicker];
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupPickerViewController);
  if (![(BrowserController *)self usesNarrowLayout])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = pickerCopy;
      superview = [v6 superview];
      if (!superview)
      {

        goto LABEL_21;
      }

      [_navigationControllerForTabGroupPicker setModalPresentationStyle:7];
      popoverPresentationController = [_navigationControllerForTabGroupPicker popoverPresentationController];
      [popoverPresentationController setSourceView:superview];
      [v6 frame];
      [popoverPresentationController setSourceRect:?];
      [popoverPresentationController setPermittedArrowDirections:3];
    }
  }

  presentationController = [_navigationControllerForTabGroupPicker presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = presentationController;
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [v10 _setLargeBackground:systemGroupedBackgroundColor];

    if ([(BrowserController *)self hasMultipleProfiles])
    {
      _mediumDetent = objc_alloc_init(MEMORY[0x277D75318]);
      defaultContentConfiguration = [_mediumDetent defaultContentConfiguration];
      [_mediumDetent setContentConfiguration:defaultContentConfiguration];

      [_mediumDetent systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
      v15 = v14;
      tabGroupProvider = [(BrowserController *)self tabGroupProvider];
      tabGroups = [tabGroupProvider tabGroups];
      v18 = [tabGroups count];

      tabGroupProvider2 = [(BrowserController *)self tabGroupProvider];
      moveLocalTabsToNewGroupTitle = [tabGroupProvider2 moveLocalTabsToNewGroupTitle];

      if (moveLocalTabsToNewGroupTitle)
      {
        v21 = v15 + (v18 - 1) * v15 + 54.0 + (v15 + 24.0) * 3.0 + 48.0;
      }

      else
      {
        v21 = (v18 - 1) * v15 + 54.0 + (v15 + 24.0) * 3.0 + 48.0;
      }

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __40__BrowserController_showTabGroupPicker___block_invoke;
      v36[3] = &__block_descriptor_40_e16_d16__0__UIView_8l;
      *&v36[4] = v21;
      _largeDetent3 = [MEMORY[0x277D76238] _detentWithContainerViewBlock:v36];
      view = [(BrowserRootViewController *)self->_rootViewController view];
      [view bounds];
      v25 = v24;

      view2 = [(BrowserRootViewController *)self->_rootViewController view];
      [view2 bounds];
      v28 = v27;

      if (v21 >= v25 * 0.5)
      {
        if (v21 <= v28 * 0.935)
        {
          v38[0] = _largeDetent3;
          _largeDetent = [MEMORY[0x277D76238] _largeDetent];
          v38[1] = _largeDetent;
          [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
        }

        else
        {
          _largeDetent = [MEMORY[0x277D76238] _largeDetent];
          v39 = _largeDetent;
          [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
        }
        _largeDetent2 = ;
        [v10 _setDetents:_largeDetent2];
      }

      else
      {
        _largeDetent = [MEMORY[0x277D76238] _mediumDetent];
        v40[0] = _largeDetent;
        _largeDetent2 = [MEMORY[0x277D76238] _largeDetent];
        v40[1] = _largeDetent2;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
        [v10 _setDetents:v31];
      }
    }

    else
    {
      _mediumDetent = [MEMORY[0x277D76238] _mediumDetent];
      v37[0] = _mediumDetent;
      _largeDetent3 = [MEMORY[0x277D76238] _largeDetent];
      v37[1] = _largeDetent3;
      _largeDetent = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
      [v10 _setDetents:_largeDetent];
    }
  }

  view3 = [_navigationControllerForTabGroupPicker view];
  [view3 layoutIfNeeded];

  viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
  [viewControllerToPresentFrom presentViewController:_navigationControllerForTabGroupPicker animated:1 completion:0];

LABEL_21:

  return WeakRetained;
}

- (void)setUpWithURL:(id)l launchOptions:(id)options
{
  lCopy = l;
  optionsCopy = options;
  settings = [MEMORY[0x277D28F08] settings];
  uUID = [(BrowserController *)self UUID];
  v8 = [settings privateBrowsingEnabledForWindowWithUUID:uUID];

  [(BrowserController *)self _initSubviews];
  [(BrowserController *)self setPrivateBrowsingEnabled:v8];
  navigationBar = [(BrowserRootViewController *)self->_rootViewController navigationBar];
  [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
  view = [(BrowserRootViewController *)self->_rootViewController view];
  [view safeAreaInsets];
  [navigationBar setContentUnderStatusBarHeight:?];

  [(TabController *)self->_tabController openInitialBlankTabDocumentIfNeeded];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  navigationBarItem = [activeTabDocument navigationBarItem];
  [navigationBar setItem:navigationBarItem];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
  [defaultCenter addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  [defaultCenter addObserver:self selector:sel__didChangePowerState name:*MEMORY[0x277CCA5E8] object:0];
  [defaultCenter addObserver:self selector:sel__bookmarksDidReload_ name:*MEMORY[0x277D7B608] object:0];
  [defaultCenter addObserver:self selector:sel__bookmarksDidReload_ name:@"bookmarkCollectionHasBecomeAvailableNotification" object:0];
  [defaultCenter addObserver:self selector:sel__perSiteAutomaticReaderActivationPreferenceDidChange_ name:*MEMORY[0x277D4A2F8] object:0];
  [defaultCenter addObserver:self selector:sel__recentSearchesWereCleared_ name:*MEMORY[0x277D4A350] object:0];
  [defaultCenter addObserver:self selector:sel__showNoRecentSearchesView_ name:*MEMORY[0x277D4A480] object:0];
  [defaultCenter addObserver:self selector:sel__perSitePageZoomPreferenceDidChange_ name:*MEMORY[0x277D4A2A0] object:0];
  [defaultCenter addObserver:self selector:sel__downloadsDidChange_ name:*MEMORY[0x277CDB9C0] object:0];
  [defaultCenter addObserver:self selector:sel__downloadsTotalProgressDidChange_ name:*MEMORY[0x277CDB9B8] object:0];
  [defaultCenter addObserver:self selector:sel__downloadManagerDidFinishLastDownload_ name:*MEMORY[0x277CDB9A8] object:0];
  [defaultCenter addObserver:self selector:sel__hasUnviewedDownloadsDidChange_ name:*MEMORY[0x277CDB9B0] object:0];
  v12 = +[Application sharedApplication];
  isRunningPPT = [v12 isRunningPPT];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v15 = [standardUserDefaults BOOLForKey:@"disableFavoritesGridForPurpleTests"];

  v16 = +[Application sharedApplication];
  shouldRestoreStateForPPT = [v16 shouldRestoreStateForPPT];

  if (((isRunningPPT ^ 1 | v15 | shouldRestoreStateForPPT) & 1) == 0)
  {
    [(BrowserController *)self updateFavoritesForNewDocument];
LABEL_8:
    if (!v8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if (((isRunningPPT ^ 1 | shouldRestoreStateForPPT) & 1) == 0)
  {
    goto LABEL_8;
  }

  v31 = lCopy;
  if (self->_didRestoreState)
  {
    _backForwardList = [activeTabDocument _backForwardList];
    currentItem = [_backForwardList currentItem];
    [activeTabDocument goToBackForwardListItem:currentItem];
  }

  if (self->_usesTabBar)
  {
    [(TabCollectionViewProviding *)self->_tabCollectionViewProvider updateTabBarAnimated:0];
  }

  else if (self->_didRestoreState)
  {
    [(TabCollectionViewProviding *)self->_tabCollectionViewProvider updateTabViewsAnimatingTabBar:0];
  }

  v23 = [optionsCopy safari_dictionaryForKey:*MEMORY[0x277D766A8]];
  v24 = [v23 safari_stringForKey:*MEMORY[0x277D766B0]];
  v25 = [v24 isEqualToString:*MEMORY[0x277CCA850]];

  activeTabDocument2 = [(TabController *)self->_tabController activeTabDocument];
  v27 = activeTabDocument2;
  if (v25)
  {
    [activeTabDocument2 setPreparingForNewUserActivity:1];
  }

  [(BrowserController *)self updateFavoritesForNewDocument];
  if (v25)
  {
    [v27 setPreparingForNewUserActivity:0];
  }

  if (!v31)
  {
    settings2 = [MEMORY[0x277D28F08] settings];
    uUID2 = [(BrowserController *)self UUID];
    v30 = [settings2 isShowingTabViewForWindowWithUUID:uUID2];

    if (v30)
    {
      [(TabCollectionViewProviding *)self->_tabCollectionViewProvider setSnapshotsEnabled:1];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __48__BrowserController_setUpWithURL_launchOptions___block_invoke;
      v37[3] = &unk_2781D60B8;
      v37[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v37];
    }
  }

  if (v8)
  {
LABEL_9:
    v20 = +[FeatureManager sharedFeatureManager];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __48__BrowserController_setUpWithURL_launchOptions___block_invoke_2;
    v36[3] = &unk_2781D63F8;
    v36[4] = self;
    [v20 determineIfPrivateBrowsingIsAvailableWithCompletionHandler:v36];

    v21 = +[Application sharedApplication];
    isPrivateBrowsingLocked = [v21 isPrivateBrowsingLocked];

    if (isPrivateBrowsingLocked)
    {
      [(BrowserRootViewController *)self->_rootViewController showLockedPrivateBrowsingView];
    }
  }

LABEL_21:
  [MEMORY[0x277CDB880] registerReaderCustomProtocols];
}

void __48__BrowserController_setUpWithURL_launchOptions___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 944) tabThumbnailCollectionView];
  [v1 presentAnimated:0];
}

void __48__BrowserController_setUpWithURL_launchOptions___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__BrowserController_setUpWithURL_launchOptions___block_invoke_3;
    block[3] = &unk_2781D60B8;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)userDefaultsDidChangeValueForKey:(id)key
{
  v17 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([keyCopy isEqualToString:*MEMORY[0x277D292A8]])
  {
    [(BrowserController *)self fraudWarningsToggled];
  }

  if (([keyCopy isEqualToString:*MEMORY[0x277D29190]] & 1) == 0)
  {
    if ([keyCopy isEqualToString:*MEMORY[0x277D28F70]])
    {
      [(BrowserController *)self toggleAlwaysShowBookmarksBarMessageReceived];
      goto LABEL_13;
    }

    if ([keyCopy isEqualToString:@"SpeculativeLoading"])
    {
      [(BrowserController *)self updateSpeculativeLoadingPreferences];
      goto LABEL_13;
    }

    if ([keyCopy isEqualToString:*MEMORY[0x277D29098]])
    {
      [(BrowserController *)self updateUsesTabBar];
      goto LABEL_13;
    }

    if (([keyCopy isEqualToString:*MEMORY[0x277D29230]] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", *MEMORY[0x277D29228]))
    {
      [(BrowserController *)self updateJavaScriptPreferences];
      goto LABEL_13;
    }

    if ([keyCopy isEqualToString:*MEMORY[0x277D7B860]])
    {
      [(BrowserController *)self setCookiePolicyMessageReceived];
      goto LABEL_13;
    }

    if ([keyCopy isEqualToString:*MEMORY[0x277D291B0]])
    {
      [(BrowserController *)self updateApplePayPreferences];
      goto LABEL_13;
    }

    if (([keyCopy isEqualToString:*MEMORY[0x277D29160]] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", *MEMORY[0x277D29180]) & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", *MEMORY[0x277D29170]) & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", *MEMORY[0x277D29158]) & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", *MEMORY[0x277D29178]) & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", *MEMORY[0x277D29168]) & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", *MEMORY[0x277D29150]) & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", *MEMORY[0x277D29140]) & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", *MEMORY[0x277D29148]))
    {
      tabBarManager = [(BrowserController *)self tabBarManager];
      inlineTabBar = [tabBarManager inlineTabBar];
      [inlineTabBar updateLayout];

      standaloneTabBar = [tabBarManager standaloneTabBar];
      [standaloneTabBar updateLayout];
LABEL_28:

LABEL_29:
      goto LABEL_13;
    }

    if (([keyCopy isEqualToString:*MEMORY[0x277D29000]] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", *MEMORY[0x277D29010]) & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", *MEMORY[0x277D29008]))
    {
      [(BrowserRootViewController *)self->_rootViewController updateThemeColorIfNeededAnimated:0];
      goto LABEL_13;
    }

    if ([keyCopy isEqualToString:*MEMORY[0x277D29048]])
    {
      tabBarManager = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
      standaloneTabBar = [tabBarManager capsuleCollectionView];
      [standaloneTabBar updateVerticalSwipeThreshold];
      goto LABEL_28;
    }

    if ([keyCopy isEqualToString:*MEMORY[0x277D29040]])
    {
      capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
      [capsuleViewController updateAdditionalBottomObscuredInset];

      tabBarManager = [(BrowserRootViewController *)self->_rootViewController view];
      [tabBarManager setNeedsLayout];
      goto LABEL_29;
    }

    if ([keyCopy isEqualToString:*MEMORY[0x277D29090]])
    {
      v9 = WBS_LOG_CHANNEL_PREFIXLayout();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = stringForCurrentCapsuleLayoutPreference();
        v15 = 138543362;
        v16 = v10;
        _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Changing Capsule Layout to: %{public}@", &v15, 0xCu);
      }

      [(BrowserRootViewController *)self->_rootViewController capsuleLayoutStyleChanged];
    }

    else if ([keyCopy isEqualToString:*MEMORY[0x277D29018]])
    {
      v11 = WBS_LOG_CHANNEL_PREFIXLayout();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = stringForCurrentTabBarLayoutPreference();
        v15 = 138543362;
        v16 = v12;
        _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_DEFAULT, "Changing Tab Bar Layout to: %{public}@", &v15, 0xCu);
      }

      [(BrowserController *)self updateUsesTabBar];
      [(BrowserController *)&self->super.super.super.isa _updateUnifiedBar];
      [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
      [(BrowserRootViewController *)self->_rootViewController updateThemeColorIfNeededAnimated:0];
      _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
      [_catalogViewController updateStartPageTopSpacing];
    }

    else
    {
      if ([keyCopy isEqualToString:*MEMORY[0x277D290A0]])
      {
        [(BrowserRootViewController *)self->_rootViewController updateUsesWebpageStatusBar];
        goto LABEL_13;
      }

      if ([keyCopy isEqualToString:*MEMORY[0x277D29080]])
      {
        tabBarManager = [MEMORY[0x277D28BF0] sharedProvider];
        [tabBarManager clearCachedMenuForPersona:0];
        goto LABEL_29;
      }

      if ([keyCopy isEqualToString:*MEMORY[0x277D28F78]])
      {
        _bookmarksBarLabelButtonDisplayStyle = [(BrowserController *)self _bookmarksBarLabelButtonDisplayStyle];
        tabBarManager = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
        [tabBarManager setButtonStyle:_bookmarksBarLabelButtonDisplayStyle];
        goto LABEL_29;
      }

      if (([keyCopy isEqualToString:*MEMORY[0x277D29028]] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"DebugBarCollapsingBehavior"))
      {
        [(BrowserController *)self _updateDisableBarHiding];
      }
    }
  }

LABEL_13:
}

- (uint64_t)_bookmarksBarLabelButtonDisplayStyle
{
  if (!self)
  {
    return 0;
  }

  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v2 = [safari_browserDefaults objectForKey:*MEMORY[0x277D28F78]];
  intValue = [v2 intValue];

  return intValue;
}

- (void)carrierBundledChanged
{
  v2 = [BookmarkImporter alloc];
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v4 = [(BookmarkImporter *)v2 initWithBookmarkCollection:mainBookmarkCollection];

  [(BookmarkImporter *)v4 importBuiltinBookmarks];
}

- (void)didFocusTabGroup:(id)group
{
  groupCopy = group;
  v4 = +[Application sharedApplication];
  if ([groupCopy isPrivateBrowsing] && objc_msgSend(v4, "isPrivateBrowsingLocked"))
  {
    shouldShowWhatsNewInPrivateBrowsingSheet = [(BrowserController *)self shouldShowWhatsNewInPrivateBrowsingSheet];
    if (self)
    {
      v6 = shouldShowWhatsNewInPrivateBrowsingSheet;
      if (![(BrowserRootViewController *)self->_rootViewController isShowingLockedPrivateBrowsingView])
      {
        [(BrowserRootViewController *)self->_rootViewController showLockedPrivateBrowsingView];
      }

      if (!v6)
      {
        [(BrowserController *)self authenticateToUnlockPrivateBrowsing];
      }
    }
  }

  else
  {
    isPrivateBrowsing = [groupCopy isPrivateBrowsing];
    if (self)
    {
      v8 = isPrivateBrowsing;
    }

    else
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0 && [(BrowserRootViewController *)self->_rootViewController isShowingLockedPrivateBrowsingView])
    {
      [(BrowserRootViewController *)self->_rootViewController hideLockedPrivateBrowsingView];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained updateTabViewPinchRecognizerForBrowserController:self];

  [v4 updateShouldLockPrivateBrowsingWithTimerIfNecessary];
  if ([groupCopy isPrivateBrowsing])
  {
    [(BrowserController *)self _showPrivateBrowsingExplanationSheetIfNecessary];
  }

  [(LibraryController *)self->_libraryController updateSelection];
}

- (void)_showPrivateBrowsingExplanationSheetIfNecessary
{
  if (val)
  {
    objc_initWeak(&location, val);
    v1 = *MEMORY[0x277D76620];
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __68__BrowserController__showPrivateBrowsingExplanationSheetIfNecessary__block_invoke;
    v2[3] = &unk_2781D6840;
    objc_copyWeak(&v3, &location);
    [v1 _performBlockAfterCATransactionCommits:v2];
    objc_destroyWeak(&v3);
    objc_destroyWeak(&location);
  }
}

- (void)setPrivateBrowsingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  activeTabGroup = [(TabController *)self->_tabController activeTabGroup];
  v15 = activeTabGroup;
  if (enabledCopy)
  {
    if (([activeTabGroup isPrivateBrowsing] & 1) == 0)
    {
      [(TabController *)self->_tabController selectPrivateTabGroup];
    }
  }

  else if ([activeTabGroup isPrivateBrowsing])
  {
    [(TabController *)self->_tabController selectLocalTabGroup];
  }

  if (self->_privateBrowsingEnabled != enabledCopy)
  {
    [(BrowserController *)self writePrivateBrowsingEnabled:enabledCopy];
    self->_privateBrowsingEnabled = enabledCopy;
    [(BrowserController *)self _updateConfiguration];
    [(BrowserController *)self _updateAddTabMenuProvider];
    v6 = +[Application sharedApplication];
    -[_SFBrowserSavedState setSecureDeleteEnabled:](self->_savedState, "setSecureDeleteEnabled:", [v6 usesPrivateBrowsingModeInAnyWindow]);
    [(TabController *)self->_tabController setPrivateBrowsingEnabled:enabledCopy];
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didSetPrivateBrowsingEnabled:enabledCopy];

    [(BrowserController *)self _updateSceneTitle];
    cachedCatalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
    v9 = cachedCatalogViewController;
    if (!cachedCatalogViewController)
    {
      cachedCatalogViewController = self->_cachedCatalogViewController;
    }

    [cachedCatalogViewController didTogglePrivateBrowsing];

    [(BrowserController *)self _prepareExtensionsForEffectiveProfile];
    if (!self->_suppressWebExtensionEvents)
    {
      effectiveProfileIdentifier = [(BrowserController *)self effectiveProfileIdentifier];
      v11 = [v6 webExtensionsControllerForProfileServerID:effectiveProfileIdentifier];

      activeWebExtensionWindow = [(BrowserController *)self activeWebExtensionWindow];
      [v11 didActivateWindow:activeWebExtensionWindow];
    }

    bookmarksBar = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
    [bookmarksBar setNeedsReloadData];

    unifiedField = [(BrowserController *)self unifiedField];
    [unifiedField clearUserTypedText];
  }
}

- (void)togglePrivateBrowsingEnabled
{
  v3 = [(BrowserController *)self isPrivateBrowsingEnabled]^ 1;

  [(BrowserController *)self setPrivateBrowsingEnabled:v3];
}

- (void)writePrivateBrowsingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  settings = [MEMORY[0x277D28F08] settings];
  uUID = [(BrowserController *)self UUID];
  [settings setPrivateBrowsingEnabled:enabledCopy forWindowWithUUID:uUID];
}

- (BOOL)activeWindowIsForeground
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained activationState] < 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_lockedPrivateBrowsingStateDidChange
{
  v3 = +[Application sharedApplication];
  isPrivateBrowsingLocked = [v3 isPrivateBrowsingLocked];

  [(TabController *)self->_tabController updateLockedBrowsingState];
  [(LibraryController *)self->_libraryController setNeedsReloadSectionControllersAnimated:0];
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained updateTabViewPinchRecognizerForBrowserController:self];

  tabSwitcherViewController = [(BrowserRootViewController *)self->_rootViewController tabSwitcherViewController];
  [tabSwitcherViewController setNeedsApplyContentAnimated:isPrivateBrowsingLocked ^ 1u];

  if (isPrivateBrowsingLocked)
  {
    tabSwitcherViewController2 = [(BrowserRootViewController *)self->_rootViewController tabSwitcherViewController];
    [tabSwitcherViewController2 applyContentIfNeeded];
  }

  if (self->_privateBrowsingEnabled)
  {
    [(BrowserRootViewController *)self->_rootViewController updateUsesWebpageStatusBar];
    if (isPrivateBrowsingLocked)
    {
      [(BrowserController *)self dismissTransientUIAnimated:0 options:2];
      [(_SFWebView *)self->_webView resignFirstResponder];
      if (![(BrowserRootViewController *)self->_rootViewController isShowingLockedPrivateBrowsingView])
      {
        rootViewController = self->_rootViewController;

        [(BrowserRootViewController *)rootViewController showLockedPrivateBrowsingView];
      }
    }

    else
    {
      if ([(BrowserRootViewController *)self->_rootViewController isShowingLockedPrivateBrowsingView])
      {
        [(BrowserRootViewController *)self->_rootViewController hideLockedPrivateBrowsingView];
      }

      [(BrowserController *)self becomeFirstResponder];
    }
  }
}

- (void)authenticateToUnlockPrivateBrowsing
{
  v2 = +[Application sharedApplication];
  [v2 authenticateToUnlockPrivateBrowsingWithCompletionHandler:0];
}

- (void)cloudTabsEnabledDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  if ([WeakRetained cloudTabsEnabled])
  {
LABEL_6:

    goto LABEL_7;
  }

  v4 = [(BrowserController *)&self->super.super.super.isa _isShowingCollectionInSidebar:?];

  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Will switch tab group for change to cloud tabs enabled.", v6, 2u);
    }

    WeakRetained = [(TabController *)self->_tabController activeTabGroupUUID];
    [(TabController *)self->_tabController setActiveTabGroupUUID:WeakRetained];
    goto LABEL_6;
  }

LABEL_7:
  [(BrowserController *)self reloadSidebarAnimated:1];
}

- (uint64_t)_isShowingCollectionInSidebar:(id *)sidebar
{
  v3 = a2;
  if (sidebar && (([sidebar isPresentingModalBookmarksController] & 1) != 0 || (objc_msgSend(sidebar[96], "isShowingSidebar") & 1) != 0))
  {
    currentCollection = [sidebar[114] currentCollection];
    v5 = [currentCollection isEqualToString:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __51__BrowserController__updateButtonsAnimatingTabBar___block_invoke(uint64_t a1)
{
  v16 = [*(a1 + 32) webExtensionsController];
  v3 = [v16 extensions];
  v4 = [v3 count];

  v5 = a1 + 40;
  [*(*(a1 + 40) + 848) setBarItem:0 enabled:{objc_msgSend(*(a1 + 32), "canGoBack")}];
  [*(*(a1 + 40) + 848) setBarItem:1 enabled:{objc_msgSend(*(a1 + 32), "canGoForward")}];
  v6 = *(*(a1 + 40) + 848);
  v17 = [*(a1 + 32) urlForSharing];
  [v6 setBarItem:5 enabled:(v17 | v4) != 0];

  v7 = *(*(a1 + 40) + 848);
  [v7 setBarItem:6 enabled:-[BrowserController _shareButtonEnabled](*(a1 + 40))];
  v8 = *(*(a1 + 40) + 848);
  v18 = [MEMORY[0x277D28EB8] sharedManager];
  v9 = [v18 availability];
  if (v9)
  {
    v7 = [*(a1 + 32) URL];
    if (v7)
    {
      v1 = [*(a1 + 32) navigationBarItem];
      v11 = [v1 showsSearchIndicator];
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  [v8 setBarItem:4 enabled:v11];
  if (v10)
  {
  }

  if (v9)
  {
  }

  v12 = *(a1 + 32);
  v13 = *(*(a1 + 40) + 848);
  v19 = [v12 navigationBarItem];
  [v13 setBarItem:5 selected:{objc_msgSend(v19, "menuButtonSelected")}];
  __51__BrowserController__updateButtonsAnimatingTabBar___block_invoke_cold_1(v19);
  [*(*v5 + 848) setState:v21];
  v20 = [*(*v5 + 328) activeTabDocument];
  v14 = [v20 navigationBarItem];
  v15 = [v14 overlayConfiguration];
  [*(*v5 + 848) setAllBarItemsAreDisabled:v15 != 0];
}

- (uint64_t)_shareButtonEnabled
{
  selfCopy = self;
  if (self)
  {
    activeTabDocument = [*(self + 328) activeTabDocument];
    if ([activeTabDocument isBlank])
    {
      urlForSharing = +[FeatureManager sharedFeatureManager];
      if ([urlForSharing areSharedTabGroupsEnabled])
      {
        activeTabGroup = [*(selfCopy + 328) activeTabGroup];
        selfCopy = [activeTabGroup isNamed];
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      urlForSharing = [activeTabDocument urlForSharing];
      selfCopy = [urlForSharing sf_isEligibleForSharing];
    }
  }

  return selfCopy;
}

- (uint64_t)_currentBarContentMode
{
  if (result)
  {
    v1 = result;
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    safari_enableStandaloneTabBar = [safari_browserDefaults safari_enableStandaloneTabBar];

    IsPad = _SFDeviceIsPad();
    if (safari_enableStandaloneTabBar)
    {
      if (IsPad)
      {
        return v1[708];
      }

      v5 = [v1 usesNarrowLayout] == 0;
      v6 = 2;
    }

    else
    {
      if (!IsPad)
      {
        return 6;
      }

      v5 = v1[708] == 0;
      v6 = 4;
    }

    if (v5)
    {
      return v6;
    }

    else
    {
      return v6 + 1;
    }
  }

  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  self->_scrollViewIsDragging = 1;
  currentBarAnimator = [(BrowserRootViewController *)self->_rootViewController currentBarAnimator];
  [draggingCopy contentOffset];
  [currentBarAnimator beginDraggingWithOffset:v5];

  _sf_isScrolledToOrPastBottom = [draggingCopy _sf_isScrolledToOrPastBottom];
  self->_shouldShowBarsAfterDraggingDownward = _sf_isScrolledToOrPastBottom;
  if (_sf_isScrolledToOrPastBottom)
  {
    keepBarsMinimized = [(BrowserRootViewController *)self->_rootViewController keepBarsMinimized];
    self->_shouldShowBarsAfterDraggingDownward = !keepBarsMinimized;
    if (keepBarsMinimized)
    {
      v8 = 0;
    }

    else
    {
      v8 = ![(BrowserRootViewController *)self->_rootViewController usingLoweredBar];
    }
  }

  else
  {
    v8 = 0;
    self->_shouldShowBarsAfterDraggingDownward = 0;
  }

  self->_shouldShowBarsAfterDraggingDownward = v8;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument userDidManipulateVisibleRegion];

  [(ContinuousReadingViewController *)self->_continuousReadingViewController setSuppressingAutoScroll:0];
}

- (void)prefetchNextContinuousItemIfNeeded
{
  if (self)
  {
    currentItem = [self[10] currentItem];
    if (currentItem)
    {
      previewView = [self[10] previewView];

      if (previewView)
      {
        previewView2 = [self[10] previewView];
        contentView = [previewView2 contentView];

        if (contentView)
        {

          [(BrowserController *)self loadNextContinuousDocumentIfNeeded];
        }

        else
        {
          nextContinuousItemDocument = [self nextContinuousItemDocument];
          [self clearDocumentForContinuousReading:?];

          continuousReadingController = [self continuousReadingController];
          nextReadingListItem = [continuousReadingController nextReadingListItem];

          if (nextReadingListItem)
          {
            _tabDocumentForNextContinuousItem = [(BrowserController *)self _tabDocumentForNextContinuousItem];
            [(BrowserController *)self _setContinuousReadingContentViewFromTabDocument:_tabDocumentForNextContinuousItem useReaderView:0];

            [(BrowserController *)self loadNextContinuousDocumentIfNeeded];
          }
        }
      }
    }
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  if (self->_scrollViewIsDragging)
  {
    y = velocity.y;
    self->_scrollViewIsDragging = 0;
    v7 = [(BrowserRootViewController *)self->_rootViewController currentBarAnimator:dragging];
    [v7 endDraggingWithTargetOffset:offset->y velocity:y * 1000.0];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (decelerate)
  {
    v5 = [(BrowserController *)self _refreshControlHeight]!= 0.0;
  }

  else
  {
    [(BrowserController *)self didCompleteScrolling];
    v5 = 0;
  }

  self->_obscuredInsetsIncludeRefreshControlDuringBounce = v5;
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
  if ([(ContinuousReadingViewController *)self->_continuousReadingViewController interceptsScrollToTopTap])
  {
    goto LABEL_2;
  }

  scrollView = self->_scrollView;
  if (scrollView == topCopy)
  {
    tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    presentationState = [tabThumbnailCollectionView presentationState];

    if (presentationState)
    {
LABEL_2:
      v5 = 0;
      goto LABEL_17;
    }

    scrollView = self->_scrollView;
  }

  if (scrollView == topCopy)
  {
    _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];

    if (_catalogViewController)
    {
      goto LABEL_2;
    }
  }

  if ([(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar]&& [(SidebarUIProxy *)self->_sidebarUIProxy sidebarStyle]== 1)
  {
    scrollView = [(_SFWebView *)self->_webView scrollView];
    v5 = scrollView != topCopy;
  }

  else
  {
    scrollView = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    capsuleCollectionView = [(UIScrollView *)scrollView capsuleCollectionView];
    if (-[BrowserRootViewController usingLoweredBar](self->_rootViewController, "usingLoweredBar") && [capsuleCollectionView selectedItemIsMinimized] && (-[UIScrollView transitionToState:animated:completionHandler:](scrollView, "transitionToState:animated:completionHandler:", 0, 1, 0), objc_msgSend(capsuleCollectionView, "layoutStyle") != 1))
    {
      v5 = 0;
    }

    else
    {
      dynamicBarAnimator = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
      if (-[BrowserRootViewController usingLoweredBar](self->_rootViewController, "usingLoweredBar") || [dynamicBarAnimator state])
      {
        activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
        [activeTabDocument setSuppressingProgressAnimationForNavigationGesture:0];

        v5 = 1;
      }

      else
      {
        [(BrowserController *)self showBars];
        v5 = 0;
      }
    }
  }

LABEL_17:
  return v5;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (![(BrowserRootViewController *)self->_rootViewController isPerformingSizeTransition])
  {
    [(BrowserController *)self updateDynamicBarGeometry];
  }

  crashBanner = [(BannerController *)self->_bannerController crashBanner];
  isDragging = [(UIScrollView *)self->_scrollView isDragging];
  if (crashBanner)
  {
    v7 = isDragging;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    documentAndTopBarsContainerView = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerView];
    [crashBanner bounds];
    [crashBanner convertRect:documentAndTopBarsContainerView toView:?];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(BrowserRootViewController *)self->_rootViewController navigationBarFrameInCoordinateSpace:documentAndTopBarsContainerView];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v31.origin.x = v10;
    v31.origin.y = v12;
    v31.size.width = v14;
    v31.size.height = v16;
    MaxY = CGRectGetMaxY(v31);
    v32.origin.x = v18;
    v32.origin.y = v20;
    v32.size.width = v22;
    v32.size.height = v24;
    if (MaxY <= CGRectGetMinY(v32))
    {
      [(BrowserController *)self setShowingCrashBanner:0 animated:0];
    }
  }

  if (self->_scrollViewIsDragging)
  {
    if (self->_shouldShowBarsAfterDraggingDownward)
    {
      if (-[BrowserRootViewController toolbarPlacement](self->_rootViewController, "toolbarPlacement") == 1 && [scrollCopy _sf_isScrolledToOrPastBottom] && !-[BrowserController _isInContinuousMode](self))
      {
        [(BrowserController *)self showBars];
      }

      self->_shouldShowBarsAfterDraggingDownward = 0;
    }

    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    [activeTabDocument webViewDidScroll];
  }

  if (![(BrowserRootViewController *)self->_rootViewController isInteractivelyMinimizingBars]&& !self->_isUpdatingBarAnimatorDragOffset)
  {
    self->_isUpdatingBarAnimatorDragOffset = 1;
    currentBarAnimator = [(BrowserRootViewController *)self->_rootViewController currentBarAnimator];
    [scrollCopy contentOffset];
    [currentBarAnimator updateDraggingWithOffset:v28];

    self->_isUpdatingBarAnimatorDragOffset = 0;
  }

  [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
  [(BrowserController *)self _updateAppInfoOverlayFrame];
  if ([WeakRetained browserControllerShouldUpdateWebViewGeometryOnScroll:self])
  {
    [(BrowserController *)self updateExposedScrollViewRect];
  }

  [WeakRetained browserController:self scrollViewDidScroll:scrollCopy];
  [(BrowserController *)self updateScrollToTopView];
  if ([(BrowserController *)self _isInContinuousMode])
  {
    [(BrowserController *)self updateContinuousPreviewViewFrame];
    [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerView];
  }

  [WeakRetained updateTabViewPinchRecognizerForBrowserController:self];
  [(ContinuousReadingViewController *)self->_continuousReadingViewController innerScrollViewDidScroll:scrollCopy];
  [(BrowserController *)self _updateRefreshControlHeight];
  [(BrowserController *)&self->super.super.super.isa _updateScribbleOverlayIfNeeded];
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  zoomingCopy = zooming;
  [(BrowserController *)self updatePullToRefreshIsEnabled];
  [(ContinuousReadingViewController *)self->_continuousReadingViewController setSuppressingAutoScroll:1];
  [Application postTestNotificationName:@"ScrollViewWillBeginZoomingNotification" object:self];
  [zoomingCopy zoomScale];
  self->_scrollViewStartZoomScale = v5;
  [(BrowserController *)&self->super.super.super.isa _updateScribbleOverlayIfNeeded];
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  [(BrowserController *)self updatePullToRefreshIsEnabled:zooming];
  [(ContinuousReadingViewController *)self->_continuousReadingViewController setSuppressingAutoScroll:0];
  [Application postTestNotificationName:@"ScrollViewDidEndZoomingNotification" object:self];
  if (self->_scrollViewStartZoomScale < scale)
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    [activeTabDocument webViewDidIncreaseZoom];
  }
}

- (void)_goBackAllowingNewTabToSpawnIfNeeded:(id *)needed
{
  if (needed)
  {
    [needed dismissTransientUIAnimated:1];
    activeTabDocument = [needed[41] activeTabDocument];
    [activeTabDocument goBackAllowingNewTabToSpawnIfNeeded:a2];

    [(BrowserController *)needed _presentReaderTriggeredAppReviewPromptIfNeeded];
  }
}

- (void)_presentReaderTriggeredAppReviewPromptIfNeeded
{
  if (self && [self isShowingReader])
  {
    appReviewPromptManager = [self appReviewPromptManager];
    [*(self + 288) contentOffset];
    v3 = v2;
    [*(self + 288) contentSize];
    [appReviewPromptManager didDismissReaderWithScrollPercentage:*(self + 576) dateReaderOpened:v3 / v4];
  }
}

- (void)_goForwardAllowingNewTabToSpawnIfNeeded:(id *)needed
{
  if (needed)
  {
    [needed dismissTransientUIAnimated:1];
    activeTabDocument = [needed[41] activeTabDocument];
    [activeTabDocument goForwardAllowingNewTabToSpawnIfNeeded:a2];
  }
}

- (uint64_t)_commitSpeculativeLoadForURL:(uint64_t)l
{
  v3 = a2;
  if (l)
  {
    v4 = googleSearchEngine();
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v3];
    v6 = [v4 urlAttributingToSafariIfValidSearchURL:v5];
    absoluteString = [v6 absoluteString];

    uRLString = [*(l + 920) URLString];
    LODWORD(v5) = [uRLString isEqualToString:absoluteString];

    if ((([*(l + 432) isEqualToString:v3] | v5) & 1) != 0 && *(l + 432))
    {
      [(BrowserController *)l _commitToSpeculativeLoad];
      l = 1;
    }

    else
    {
      l = 0;
    }
  }

  return l;
}

- (void)_commitToSpeculativeLoad
{
  if (self)
  {
    v10 = [*(self + 920) url];
    [(BrowserController *)self _recordIgnoredSiriSuggestedSitesWithURL:v10];

    if ((*(self + 720) & 1) == 0)
    {
      mEMORY[0x277D49F90] = [MEMORY[0x277D49F90] sharedController];
      v2 = [*(self + 920) url];
      host = [v2 host];
      activeProfileIdentifier = [self activeProfileIdentifier];
      [mEMORY[0x277D49F90] removeIgnoredSiriSuggestedSitesWithURLHost:host inProfile:activeProfileIdentifier];
    }

    v12 = *(self + 920);
    v5 = *(self + 920);
    *(self + 920) = 0;

    v6 = *(self + 432);
    *(self + 432) = 0;

    v7 = *(self + 328);
    v8 = [v12 URL];
    LODWORD(v7) = [v7 trySwitchingToPinnedTabOnNavigationToURL:v8];

    if (v7)
    {
      [(BrowserController *)self _cancelSpeculativeLoadForDocument:v12];
    }

    else if (([(BrowserController *)self _spawnNewTabFromPinnedTabIfNeededForSpeculativeDocument:v12]& 1) == 0)
    {
      activeTabDocument = [*(self + 328) activeTabDocument];
      [(BrowserController *)self _commitToSpeculativeLoadForDocument:v12];
      [activeTabDocument willClose];
    }
  }
}

- (void)didReceiveMemoryWarning
{
  [(BrowserController *)self clearReaderViews];

  [(BrowserController *)self clearSpeculativeLoadDocument];
}

- (void)clearReaderViews
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allTabDocuments = [(TabController *)self->_tabController allTabDocuments];
  v3 = [allTabDocuments countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(allTabDocuments);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isShowingReader])
        {
          readerContext = [v6 readerContext];
          if ([readerContext isLoadingNextPage])
          {
            [readerContext stopLoadingNextPage];
          }
        }

        else
        {
          [v6 clearReaderView];
        }
      }

      v3 = [allTabDocuments countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (void)_cancelSpeculativeLoadForDocument:(uint64_t)document
{
  v3 = a2;
  if (document)
  {
    v5 = v3;
    [v3 stopLoading];
    [v5 clearBackForwardList];
    [v5 setAppBanner:0];
    v4 = +[History sharedHistory];
    [v4 cancelDeferredUpdates];

    v3 = v5;
  }
}

- (void)_closeSpeculativelyLoadedDocument:(uint64_t)document
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (document)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(document + 432);
      v6 = 141558275;
      v7 = 1752392040;
      v8 = 2117;
      v9 = v5;
      _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_INFO, "Closing speculative load TabDocument: %{sensitive, mask.hash}@", &v6, 0x16u);
    }

    [v3 setClosed:1];
    [v3 willClose];
  }
}

- (void)_recordIgnoredSiriSuggestedSitesWithURL:(uint64_t)l
{
  v5 = a2;
  if (l && (*(l + 720) & 1) == 0)
  {
    _catalogViewController = [(BrowserController *)l _catalogViewController];
    completionList = [_catalogViewController completionList];
    [completionList recordIgnoredSiriSuggestedSitesWithURL:v5];
  }
}

- (uint64_t)_spawnNewTabFromPinnedTabIfNeededForSpeculativeDocument:(uint64_t)document
{
  v3 = a2;
  if (document)
  {
    activeTabDocument = [*(document + 328) activeTabDocument];
    v5 = [v3 URL];
    v6 = [activeTabDocument shouldSpawnNewTabOnNavigationFromPinnedTabWithDestinationURL:v5];

    if (v6)
    {
      [v3 setUpBackClosesSpawnedTabWithParent:activeTabDocument];
      [v3 updateAncestryWithParentTab:activeTabDocument];
      [v3 setAllowsRemoteInspection:1];
      [v3 setSuppressWebExtensionEvents:0];
      [*(document + 328) insertNewTabDocument:v3 forcingOrderAfterTabDocument:activeTabDocument inBackground:0 animated:1];
      history = [activeTabDocument history];
      [history commitDeferredUpdates];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_commitToSpeculativeLoadForDocument:(id *)document
{
  v3 = a2;
  if (document)
  {
    v11 = v3;
    [v3 setAllowsRemoteInspection:1];
    activeTabDocument = [document[41] activeTabDocument];
    WeakRetained = objc_loadWeakRetained(document + 4);
    if (WeakRetained)
    {
      webView = [activeTabDocument webView];
      [webView _saveBackForwardSnapshotForItem:WeakRetained];

      objc_storeWeak(document + 4, 0);
    }

    libraryType = [activeTabDocument libraryType];

    if (libraryType)
    {
      v8 = document[41];
      libraryType2 = [activeTabDocument libraryType];
      [v8 openTab:v11 navigatedFromLibraryType:libraryType2];
    }

    else
    {
      [(BrowserController *)document _replaceActiveDocument:activeTabDocument withSpeculativeDocument:v11];
    }

    [document updateDynamicBarGeometry];
    tabDocumentPendingUserActivityPayload = [document[111] tabDocumentPendingUserActivityPayload];

    if (tabDocumentPendingUserActivityPayload == activeTabDocument)
    {
      [document[111] setTabDocumentPendingUserActivityPayload:0];
    }

    v3 = v11;
  }
}

- (void)_replaceActiveDocument:(void *)document withSpeculativeDocument:
{
  v8 = a2;
  documentCopy = document;
  if (self)
  {
    [self setFavoritesState:0 animated:1];
    [*(self + 328) replaceTabDocument:v8 withTabDocument:documentCopy committingSpeculativeLoad:1];
    navigationBar = [*(self + 264) navigationBar];
    [navigationBar setNeedsLayout];
    [navigationBar layoutIfNeeded];
    [v8 hideFindOnPage];
    if (*(self + 184) != documentCopy)
    {
      [documentCopy endSuppressingProgressAnimation];
      [documentCopy animateProgressForCompletedDocument];
    }

    [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
    history = [v8 history];
    [history commitDeferredUpdates];
  }
}

- (void)setCookiePolicyMessageReceived
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    [(WKPreferences *)self->_wkPreferences sf_applySafariStorageBlockingPolicy];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  safari_allPersistentDataStores = [MEMORY[0x277CE3868] safari_allPersistentDataStores];
  v3 = [safari_allPersistentDataStores countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(safari_allPersistentDataStores);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        httpCookieStore = [v6 httpCookieStore];
        [httpCookieStore sf_applySafariCookieStoragePolicy];

        mEMORY[0x277CBAB38] = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
        [v6 _setResourceLoadStatisticsEnabled:{objc_msgSend(mEMORY[0x277CBAB38], "webui_trackerProtectionEnabled")}];
      }

      v3 = [safari_allPersistentDataStores countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  nonPersistentDataStore = [MEMORY[0x277CE3868] nonPersistentDataStore];
  mEMORY[0x277CBAB38]2 = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
  [nonPersistentDataStore _setResourceLoadStatisticsEnabled:{objc_msgSend(mEMORY[0x277CBAB38]2, "webui_trackerProtectionEnabled")}];
}

- (void)toggleAlwaysShowBookmarksBarMessageReceived
{
  shouldShowBookmarks = [(BrowserController *)&self->super.super.super.isa _shouldShowBookmarksBar];
  bookmarksBar = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
  if (((shouldShowBookmarks ^ (bookmarksBar == 0)) & 1) == 0)
  {
    [(BrowserController *)self _setShowBookmarksBar:?];
    [(BrowserController *)self _contentContainerViewFrameDidChange];
    [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
    [(BrowserController *)self updateDynamicBarGeometry];
  }
}

- (uint64_t)_prefersShowingBookmarksBar
{
  if (!self)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D28F70]];

  return v2;
}

- (void)setCurrentBookmarksCollection:(id)collection
{
  collectionCopy = collection;
  shouldShowCollectionIn = [(BrowserController *)self _shouldShowCollectionInSidebar];
  v5 = &OBJC_IVAR___BrowserController__modalBookmarksController;
  if (shouldShowCollectionIn)
  {
    v5 = &OBJC_IVAR___BrowserController__libraryController;
  }

  [*(&self->super.super.super.isa + *v5) setCurrentCollection:collectionCopy];
}

- (OneStepBookmarkingController)oneStepBookmarkingController
{
  oneStepBookmarkingController = self->_oneStepBookmarkingController;
  if (!oneStepBookmarkingController)
  {
    objc_initWeak(&location, self);
    v4 = [OneStepBookmarkingController alloc];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __49__BrowserController_oneStepBookmarkingController__block_invoke;
    v11 = &unk_2781D6570;
    objc_copyWeak(&v12, &location);
    v5 = [(OneStepBookmarkingController *)v4 initWithCurrentTabProvider:&v8];
    v6 = self->_oneStepBookmarkingController;
    self->_oneStepBookmarkingController = v5;

    [(OneStepBookmarkingController *)self->_oneStepBookmarkingController setSyntheticBookmarkProvider:self->_tabController, v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    oneStepBookmarkingController = self->_oneStepBookmarkingController;
  }

  return oneStepBookmarkingController;
}

id __49__BrowserController_oneStepBookmarkingController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[41] activeTabDocument];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)sortOptionFromBookmarksViewSortOptionCommandPropertyList:(uint64_t)list
{
  v3 = a2;
  v4 = v3;
  if (list)
  {
    v5 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D28F98]];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      if (isKindOfClass)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6;
      }
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

- (BOOL)_stateForSetBookmarksViewModeLargeCommand
{
  if (!self)
  {
    return 0;
  }

  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v2 = [safari_browserDefaults integerForKey:*MEMORY[0x277D28F80]] == 0;

  return v2;
}

- (BOOL)_stateForSetBookmarksViewModeCompactCommand
{
  if (!self)
  {
    return 0;
  }

  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v2 = [safari_browserDefaults integerForKey:*MEMORY[0x277D28F80]] == 1;

  return v2;
}

- (BOOL)_stateForToggleBookmarksViewFolderModeSeparatedCommand
{
  if (!self)
  {
    return 0;
  }

  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v2 = [safari_browserDefaults integerForKey:*MEMORY[0x277D28F88]] == 1;

  return v2;
}

- (BOOL)_stateForBookmarksViewSortOptionCommand:(uint64_t)command
{
  v3 = a2;
  v4 = v3;
  if (command)
  {
    propertyList = [v3 propertyList];
    v6 = [(BrowserController *)command sortOptionFromBookmarksViewSortOptionCommandPropertyList:propertyList];

    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v8 = [safari_browserDefaults integerForKey:*MEMORY[0x277D28F90]];
    v9 = v8 == [v6 integerValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_titleForToggleWebpageStatusBar
{
  if (self)
  {
    statusBarView = [*(self + 264) statusBarView];
    v2 = _WBSLocalizedString();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_downloadsDidChange:(id)change
{
  object = [change object];
  downloads = [object downloads];
  v5 = [downloads count];

  if (v5)
  {
    navigationBar = [(BrowserRootViewController *)self->_rootViewController navigationBar];
    [navigationBar setHasToolbar:1];
  }

  [(_SFBarManager *)self->_barManager setBarItem:11 hidden:v5 == 0];
}

- (void)loadBackgroundImageIfNeededForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  defaultManager = [MEMORY[0x277D4A820] defaultManager];
  if (([defaultManager isCorrectBackgroundImageLoadedForIdentifier:identifierCopy] & 1) == 0)
  {
    [defaultManager loadImageFromDiskForIdentifier:identifierCopy];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D4A960] object:defaultManager];
}

- (void)_backgroundImageFileModifiedRemotely:(id)remotely
{
  remotelyCopy = remotely;
  userInfo = [remotelyCopy userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D7B5C0]];

  if (v4)
  {
    userInfo2 = [remotelyCopy userInfo];
    v6 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D7B5D0]];

    defaultManager = [MEMORY[0x277D4A820] defaultManager];
    if (v6)
    {
      [defaultManager reloadProfileSpecificBackgroundImageFromDisk:v4];
    }

    else
    {
      [defaultManager reloadTabGroupSpecificBackgroundImageFromDisk:v4];
    }
  }
}

- (void)_backgroundImageNeedsCloudKitUpdate:(id)update
{
  updateCopy = update;
  userInfo = [updateCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D4A970]];

  if (v5 && [v5 length])
  {
    userInfo2 = [updateCopy userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D4A920]];

    tabController = self->_tabController;
    if (v7)
    {
      [(TabController *)tabController updateBackgroundImageForProfile:v5];
    }

    else
    {
      [(TabController *)tabController updateBackgroundImageForTabGroup:v5];
    }
  }
}

- (void)setShowingReader:(BOOL)reader animated:(BOOL)animated
{
  animatedCopy = animated;
  readerCopy = reader;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [(BrowserController *)self setShowingReader:readerCopy animated:animatedCopy forTabDocument:?];
}

- (void)setShowingReader:(BOOL)reader animated:(BOOL)animated forTabDocument:(id)document completion:(id)completion
{
  documentCopy = document;
  completionCopy = completion;
  if (!reader)
  {
    [(BrowserController *)&self->super.super.super.isa _hideReaderForTabDocument:documentCopy animated:animated deactivationMode:1 completion:completionCopy];
    dateReaderOpened = [(BrowserController *)self appReviewPromptManager];
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    readerViewTopScrollOffset = [activeTabDocument readerViewTopScrollOffset];
    [(UIScrollView *)self->_scrollView contentSize];
    [dateReaderOpened didDismissReaderWithScrollPercentage:self->_dateReaderOpened dateReaderOpened:readerViewTopScrollOffset / v16];

LABEL_7:
    [documentCopy updateAccessibilityIdentifier];
    goto LABEL_8;
  }

  [documentCopy prepareToUseReader];
  readerContext = [documentCopy readerContext];
  if ([readerContext isReaderAvailable])
  {

    v12 = documentCopy;
LABEL_6:
    [(BrowserController *)&self->super.super.super.isa _showReaderForTabDocument:v12 animated:animated completion:completionCopy];
    v18 = [MEMORY[0x277CBEAA8] now];
    dateReaderOpened = self->_dateReaderOpened;
    self->_dateReaderOpened = v18;
    goto LABEL_7;
  }

  activeTabDocument2 = [(TabController *)self->_tabController activeTabDocument];

  v12 = documentCopy;
  if (activeTabDocument2 != documentCopy)
  {
    goto LABEL_6;
  }

  navigationBar = [(BrowserRootViewController *)self->_rootViewController navigationBar];
  item = [navigationBar item];
  [item setShowsReaderButton:0];

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }

LABEL_8:
}

- (void)_hideReaderForTabDocument:(char)document animated:(uint64_t)animated deactivationMode:(void *)mode completion:
{
  v10 = a2;
  modeCopy = mode;
  if (self)
  {
    [(BrowserController *)self _setReaderVisible:v10 forTabDocument:animated deactivationMode:document animated:modeCopy completion:?];
    [self updatePullToRefreshIsEnabled];
  }
}

- (void)_showReaderForTabDocument:(char)document animated:(void *)animated completion:
{
  v8 = a2;
  animatedCopy = animated;
  if (self)
  {
    [(BrowserController *)self _setReaderVisible:v8 forTabDocument:0 deactivationMode:document animated:animatedCopy completion:?];
  }
}

- (void)_readerButtonTapped
{
  if (self)
  {
    isShowingReader = [self isShowingReader];
    v3 = isShowingReader;
    [self setShowingReader:isShowingReader ^ 1u animated:1];
    if ((v3 & 1) == 0)
    {
      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] didActivateReaderWithTrigger:0];
    }
  }
}

- (void)_readerVisibilityDidChange
{
  if (self)
  {
    [(BrowserController *)self _contentContainerViewFrameDidChange];
    [self updateInterface];
    [self[33] updateThemeColorIfNeededAnimated:1];
    [self updatePullToRefreshIsEnabled];
    viewController = [self[21] viewController];
    if ([MEMORY[0x277D49A08] isBrowsingAssistantEnabled])
    {
      [viewController readerVisibilityDidChange];
    }

    else
    {
      [viewController dismissViewControllerAnimated:1 completion:0];
    }

    activeTabDocument = [self[41] activeTabDocument];
    assistantController = [activeTabDocument assistantController];
    readerContext = [activeTabDocument readerContext];
    webpageIdentifier = [assistantController webpageIdentifier];
    [readerContext setWebpageIdentifier:webpageIdentifier];

    if ([activeTabDocument isShowingReader])
    {
      [self checkSummarizationStateToShowSummarizeButton];
      if ([activeTabDocument allowsBrowsingAssistant])
      {
        isSummaryAvailable = [assistantController isSummaryAvailable];
        if (isSummaryAvailable & 1) != 0 || ([assistantController result], webpageIdentifier = objc_claimAutoreleasedReturnValue(), (objc_msgSend(webpageIdentifier, "tableOfContentsAvailable")))
        {
          userConsentState = [MEMORY[0x277D49E58] userConsentState];
          if ((isSummaryAvailable & 1) == 0)
          {
          }

          if (userConsentState == 1)
          {
            assistantController2 = [activeTabDocument assistantController];
            v10 = [activeTabDocument url];
            v11[0] = MEMORY[0x277D85DD0];
            v11[1] = 3221225472;
            v11[2] = __47__BrowserController__readerVisibilityDidChange__block_invoke;
            v11[3] = &unk_2781D6598;
            v12 = readerContext;
            v13 = assistantController;
            v14 = activeTabDocument;
            [assistantController2 fetchAssistantContentFromPegasusForURL:v10 withCompletionHandler:v11];
          }
        }

        else
        {
        }
      }
    }
  }
}

void __47__BrowserController__readerVisibilityDidChange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = [*(a1 + 40) summary];
  v3 = _WBSLocalizedString();
  v4 = _WBSLocalizedString();
  v5 = MEMORY[0x277CCACA8];
  v6 = [*(a1 + 48) URLString];
  v7 = [v5 safari_readerURLStringForString:v6];
  v8 = [*(a1 + 40) tableOfContentsTitles];
  v9 = [*(a1 + 40) tableOfContentsPaths];
  v10 = [*(a1 + 40) tableOfContentsTrailingTexts];
  LODWORD(v11) = [*(a1 + 40) tableOfContentsType];
  [v2 setArticleSummary:v12 withSummaryHeader:v3 tableOfContentsHeader:v4 readerURLString:v7 titles:v8 paths:v9 trailingText:v10 tableOfContentsType:v11 attribution:0];
}

- (void)checkSummarizationStateToShowSummarizeButton
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  readerContext = [activeTabDocument readerContext];
  assistantController = [activeTabDocument assistantController];
  if ([assistantController isSummaryAvailable])
  {
  }

  else
  {
    isOnDeviceSummarizationEnabled = [MEMORY[0x277D49A08] isOnDeviceSummarizationEnabled];

    if (isOnDeviceSummarizationEnabled)
    {
      readerTextForSummarization = [readerContext readerTextForSummarization];
      v8 = [readerTextForSummarization length];

      if (v8)
      {
        [(BrowserController *)self _showSummarizeButtonIfNeeded];
      }

      else
      {
        readerWebView = [activeTabDocument readerWebView];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __65__BrowserController_checkSummarizationStateToShowSummarizeButton__block_invoke;
        v10[3] = &unk_2781D65C0;
        v11 = readerContext;
        selfCopy = self;
        [readerWebView _getContentsAsStringWithCompletionHandler:v10];
      }
    }
  }
}

- (void)_showSummarizeButtonIfNeeded
{
  if (self)
  {
    *a2 = MEMORY[0x277D85DD0];
    a2[1] = 3221225472;
    a2[2] = __49__BrowserController__showSummarizeButtonIfNeeded__block_invoke;
    a2[3] = &unk_2781D60B8;
    a2[4] = a3;
    dispatch_async(MEMORY[0x277D85CD0], a2);
  }
}

void __65__BrowserController_checkSummarizationStateToShowSummarizeButton__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__BrowserController_checkSummarizationStateToShowSummarizeButton__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) setReaderTextForSummarization:v5];
    [(BrowserController *)*(a1 + 40) _showSummarizeButtonIfNeeded];
  }
}

void __49__BrowserController__showSummarizeButtonIfNeeded__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) readerContext];
  v2 = _WBSLocalizedString();
  [v1 setOnDeviceSummaryButtonWithTitle:v2];

  v3 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_INFO, "Safari displayed summarize button", v4, 2u);
  }
}

- (void)_setReaderVisible:(void *)visible forTabDocument:(uint64_t)document deactivationMode:(char)mode animated:(void *)animated completion:
{
  visibleCopy = visible;
  animatedCopy = animated;
  if (!self)
  {
    goto LABEL_21;
  }

  activeTabDocument = [self[41] activeTabDocument];

  if (activeTabDocument == visibleCopy)
  {
    [visibleCopy hideFindOnPage];
  }

  if (a2)
  {
    [visibleCopy createBrowserReaderViewIfNeeded];
    if (activeTabDocument == visibleCopy)
    {
      [self[36] contentOffset];
      [visibleCopy setScrollPoint:?];
    }
  }

  else
  {
    readerContext = [visibleCopy readerContext];
    [readerContext deactivateReaderNow:document];

    if ([visibleCopy shouldRestoreReader])
    {
      [self verticalScrollOffsetForReaderViewInTabDocument:visibleCopy];
      [visibleCopy setReaderViewTopScrollOffset:v15];
    }

    if (document == 2)
    {
      goto LABEL_11;
    }
  }

  [visibleCopy setShowingReader:a2];
LABEL_11:
  [self document:visibleCopy willMakeReaderVisible:a2];
  WeakRetained = objc_loadWeakRetained(self + 46);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self didChangeReaderVisibilityForTabDocument:visibleCopy];
  }

  if (activeTabDocument == visibleCopy)
  {
    objc_initWeak(&location, self);
    if (a2 && ([self[10] isCommittingToContinuousDocument] & 1) == 0)
    {
      [self[36] contentOffset];
      [self[36] setContentOffset:{v17, objc_msgSend(visibleCopy, "readerViewTopScrollOffset")}];
    }

    window = [self[117] window];
    [window setUserInteractionEnabled:0];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __91__BrowserController__setReaderVisible_forTabDocument_deactivationMode_animated_completion___block_invoke;
    v26 = &unk_2781D65E8;
    v19 = window;
    v27 = v19;
    v20 = visibleCopy;
    v28 = v20;
    v31 = a2;
    modeCopy = mode;
    v29 = animatedCopy;
    objc_copyWeak(&v30, &location);
    v21 = _Block_copy(&v23);
    readerContext2 = [v20 readerContext];
    [readerContext2 setUpReaderWebViewIfNeededAndPerformBlock:v21];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else if (animatedCopy)
  {
    (*(animatedCopy + 2))(animatedCopy, 1);
  }

LABEL_21:
}

- (double)verticalScrollOffsetForReaderViewInTabDocument:(id)document
{
  documentCopy = document;
  if ([documentCopy isShowingReader])
  {
    readerWebView = [documentCopy readerWebView];
    scrollView = [readerWebView scrollView];
    [scrollView contentOffset];
    v7 = v6;
  }

  else
  {
    if ([documentCopy shouldRestoreReader])
    {
      readerViewTopScrollOffset = [documentCopy readerViewTopScrollOffset];
    }

    else
    {
      readerViewTopScrollOffset = 0;
    }

    v7 = readerViewTopScrollOffset;
  }

  return v7;
}

void __91__BrowserController__setReaderVisible_forTabDocument_deactivationMode_animated_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setUserInteractionEnabled:1];
  v6 = [*(a1 + 40) view];
  [v6 setShowingReader:*(a1 + 64) animated:*(a1 + 65) completion:&__block_literal_global_349];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [(BrowserController *)WeakRetained _readerVisibilityDidChange];
}

- (void)setReaderShouldBeShownIfPossible:(BOOL)possible
{
  if (self->_readerShouldBeShownIfPossible == possible)
  {
    return;
  }

  self->_readerShouldBeShownIfPossible = possible;
  if (![(BrowserController *)self _isInContinuousMode])
  {
    return;
  }

  nextContinuousItemDocument = [(BrowserController *)self nextContinuousItemDocument];
  previousContinuousItemDocument = [(BrowserController *)self previousContinuousItemDocument];
  if (!self->_readerShouldBeShownIfPossible)
  {
    goto LABEL_9;
  }

  if (![nextContinuousItemDocument isReaderAvailable])
  {
    if ([previousContinuousItemDocument isReaderAvailable])
    {
      [previousContinuousItemDocument createBrowserReaderViewIfNeeded];
      v5 = 1;
      v6 = previousContinuousItemDocument;
      goto LABEL_10;
    }

LABEL_9:
    [(BrowserController *)&self->super.super.super.isa _setContinuousReadingContentViewFromTabDocument:nextContinuousItemDocument useReaderView:0];
    v5 = 0;
    v6 = previousContinuousItemDocument;
    goto LABEL_10;
  }

  [nextContinuousItemDocument createBrowserReaderViewIfNeeded];
  v5 = 1;
  v6 = nextContinuousItemDocument;
LABEL_10:
  [(BrowserController *)&self->super.super.super.isa _setContinuousReadingContentViewFromTabDocument:v6 useReaderView:v5];
}

- (void)_setContinuousReadingContentViewFromTabDocument:(int)document useReaderView:
{
  v6 = a2;
  if (self)
  {
    if (document)
    {
      [v6 readerWebView];
    }

    else
    {
      [v6 webView];
    }
    v5 = ;
    if (self[26] == v6)
    {
      [self[10] didCreateWebViewForPreviousDocument:v5];
    }

    else if (self[20] == v6)
    {
      [self[10] didCreateWebViewForNextDocument:v5];
    }
  }
}

- (void)_perSiteAutomaticReaderActivationPreferenceDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__BrowserController__perSiteAutomaticReaderActivationPreferenceDidChange___block_invoke;
  v6[3] = &unk_2781D61F8;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __74__BrowserController__perSiteAutomaticReaderActivationPreferenceDidChange___block_invoke(uint64_t a1)
{
  v9 = [*(*(a1 + 32) + 328) activeTabDocument];
  if ([v9 isReaderAvailable])
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 safari_stringForKey:*MEMORY[0x277D4A1E0]];
    v4 = [*(*(a1 + 32) + 328) activeTabDocument];
    v5 = [v4 URLForPerSitePreferences];
    v6 = [v5 safari_userVisibleHostWithoutWWWSubdomain];

    if ([v6 isEqualToString:v3])
    {
      v7 = [v2 safari_BOOLForKey:*MEMORY[0x277D4A660]];
      if (v7 != [*(a1 + 32) isShowingReader])
      {
        [*(a1 + 32) setShowingReader:v7 animated:1];
        if (v7)
        {
          v8 = [MEMORY[0x277D499B8] sharedLogger];
          [v8 didActivateReaderWithTrigger:1];
        }
      }
    }
  }
}

- (void)_perSitePageZoomPreferenceDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__BrowserController__perSitePageZoomPreferenceDidChange___block_invoke;
  v6[3] = &unk_2781D61F8;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __57__BrowserController__perSitePageZoomPreferenceDidChange___block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) userInfo];
  v2 = [*(*(a1 + 40) + 328) activeTabDocument];
  v3 = [*(a1 + 32) object];
  v4 = [*(a1 + 40) pageZoomPreferenceManagerForTabDocument:v2];

  if (v3 == v4 && ([v2 isShowingSystemStartPage] & 1) == 0)
  {
    v5 = [v11 safari_stringForKey:*MEMORY[0x277D4A1D8]];
    v6 = [v2 URLForPerSitePreferences];
    v7 = [v6 safari_userVisibleHostWithoutWWWSubdomain];

    if ([v7 isEqualToString:v5])
    {
      v8 = [v11 safari_numberForKey:*MEMORY[0x277D4A298]];
      [v8 doubleValue];
      v10 = v9;

      [v2 setPageZoomFactor:v10];
      [(BrowserController *)*(a1 + 40) _reloadPresentedPreferencesListViewController];
    }
  }
}

- (void)_reloadPresentedPreferencesListViewController
{
  if (self)
  {
    viewControllerToPresentFrom = [self viewControllerToPresentFrom];
    presentedViewController = [viewControllerToPresentFrom presentedViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      viewControllers = [presentedViewController viewControllers];
      firstObject = [viewControllers firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [firstObject reloadPreferences];
      }
    }
  }
}

- (BOOL)addReadingListBookmarkForCurrentTab
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if ([activeTabDocument isBlank])
  {
    v4 = 0;
  }

  else
  {
    _sidebarViewController = [(BrowserController *)self _sidebarViewController];
    topReadingListViewController = [_sidebarViewController topReadingListViewController];

    hasDoneReaderDetection = [activeTabDocument hasDoneReaderDetection];
    mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    titleForNewBookmark = [activeTabDocument titleForNewBookmark];
    cachedCanonicalURLOrURLForSharing = [activeTabDocument cachedCanonicalURLOrURLForSharing];
    v4 = [(WebBookmarkCollection *)mainBookmarkCollection saveReadingListBookmarkWithTitle:titleForNewBookmark address:cachedCanonicalURLOrURLForSharing previewText:0 thumbnailURL:0 siteName:0 tabDocument:activeTabDocument didFetchPage:hasDoneReaderDetection updateController:topReadingListViewController savedBookmarkID:0 shouldFetchMetadata:1];
  }

  return v4;
}

- (void)showReadingListAutomaticArchiveAlertIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  if (([(BrowserController *)self _shouldShowNewReadingListBehaviorAlert]& 1) != 0)
  {
    v4 = [(BrowserController *)self _newReadingListBehaviorAlertControllerWithCompletion:completionCopy];
    [(BrowserController *)self presentModalViewController:v4 completion:&__block_literal_global_351];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (uint64_t)_shouldShowNewReadingListBehaviorAlert
{
  if (!self)
  {
    return 0;
  }

  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  if (([safari_browserDefaults BOOLForKey:@"HasShownAutomaticReadingListArchivingAlert"] & 1) == 0)
  {
    if (![safari_browserDefaults safari_shouldAutomaticallyDownloadReadingListItems])
    {
      v2 = 1;
      goto LABEL_7;
    }

    [safari_browserDefaults setBool:1 forKey:@"HasShownAutomaticReadingListArchivingAlert"];
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (void)_newReadingListBehaviorAlertControllerWithCompletion:(void *)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = MEMORY[0x277D75110];
    v5 = _WBSLocalizedString();
    completion = [v4 alertControllerWithTitle:0 message:v5 preferredStyle:1];

    v6 = MEMORY[0x277D750F8];
    v7 = _WBSLocalizedString();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__BrowserController__newReadingListBehaviorAlertControllerWithCompletion___block_invoke;
    v19[3] = &unk_2781D6610;
    v8 = v3;
    v20 = v8;
    v9 = [v6 actionWithTitle:v7 style:0 handler:v19];

    v10 = MEMORY[0x277D750F8];
    v11 = _WBSLocalizedString();
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __74__BrowserController__newReadingListBehaviorAlertControllerWithCompletion___block_invoke_2;
    v17 = &unk_2781D6610;
    v18 = v8;
    v12 = [v10 actionWithTitle:v11 style:1 handler:&v14];

    [completion addAction:{v9, v14, v15, v16, v17}];
    [completion addAction:v12];
  }

  return completion;
}

void __80__BrowserController_showReadingListAutomaticArchiveAlertIfNeededWithCompletion___block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [v0 setBool:1 forKey:@"HasShownAutomaticReadingListArchivingAlert"];
}

uint64_t __74__BrowserController__newReadingListBehaviorAlertControllerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [v2 safari_setShouldAutomaticallyDownloadReadingListItems:1];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __74__BrowserController__newReadingListBehaviorAlertControllerWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)snapshotTabDocument:(id)document size:(CGSize)size options:(unint64_t)options completion:(id)completion
{
  height = size.height;
  width = size.width;
  documentCopy = document;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  v14 = objc_alloc_init(MEMORY[0x277D49B60]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __65__BrowserController_snapshotTabDocument_size_options_completion___block_invoke;
  v37[3] = &unk_2781D60B8;
  v37[4] = self;
  [v14 setHandler:v37];
  if (!documentCopy)
  {
    v20 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [BrowserController snapshotTabDocument:size:options:completion:];
    }

    v21 = 2;
    goto LABEL_16;
  }

  v15 = [WeakRetained browserController:self tabSnapshotContentProviderForTabDocument:documentCopy];
  if (!v15)
  {
    v21 = 1;
LABEL_16:
    completionCopy[2](completionCopy, 0, v21);
    goto LABEL_31;
  }

  v36 = objc_alloc_init(TabSnapshotGenerator);
  v16 = [WeakRetained tabSnapshotGeneratorDelegateForBrowserController:self];
  [(TabSnapshotGenerator *)v36 setDelegate:v16];

  if (![documentCopy isActive] || (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v15, "checkAndResetIfNextSnapshotRequiresScreenUpdates"))
  {
    options |= 0x20uLL;
  }

  if ([documentCopy isShowingSystemStartPage] && -[BrowserRootViewController usingLoweredBar](self->_rootViewController, "usingLoweredBar"))
  {
    options |= 0x40uLL;
  }

  tabCollectionViewManager = [(TabController *)self->_tabController tabCollectionViewManager];
  tabThumbnailCollectionView = [tabCollectionViewManager tabThumbnailCollectionView];

  v35 = tabThumbnailCollectionView;
  if (objc_opt_respondsToSelector())
  {
    isPerformingReducedMotionTransition = [tabThumbnailCollectionView isPerformingReducedMotionTransition];
  }

  else
  {
    isPerformingReducedMotionTransition = 0;
  }

  isShowingSystemStartPage = [documentCopy isShowingSystemStartPage];
  optionsCopy2 = options | 0x20;
  if (isPerformingReducedMotionTransition)
  {
    optionsCopy2 = options;
  }

  if (!isShowingSystemStartPage)
  {
    optionsCopy2 = options;
  }

  if (self->_shouldAwaitAnimationCompletionForNextSnapshot)
  {
    v24 = optionsCopy2 | 0x100;
  }

  else
  {
    v24 = optionsCopy2;
  }

  v25 = [TabSnapshotRequest alloc];
  uuid = [documentCopy uuid];
  height = [(TabSnapshotRequest *)v25 initWithSize:v24 options:uuid identifier:width, height];

  v28 = objc_alloc(MEMORY[0x277D28DA8]);
  uuid2 = [documentCopy uuid];
  v30 = [v28 initWithIdentifier:uuid2];

  if ([MEMORY[0x277D49A08] isSolariumEnabled] && _SFDeviceIsPad())
  {
    [(_SFWebView *)self->_webView safeAreaInsets];
    UIEdgeInsetsMax();
    [v30 setHorizontalObscuredInsets:?];
  }

  [(BrowserController *)self windowSize];
  [v30 setWindowSize:?];
  uUID = [(BrowserController *)self UUID];
  [v30 setWindowUUID:uUID];

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];

  if (activeTabDocument == documentCopy)
  {
    v33 = MEMORY[0x277CCABB0];
    [(BrowserRootViewController *)self->_rootViewController bannerHeightIncludedInSnapshot];
    v34 = [v33 numberWithDouble:?];
    [v30 setIncludedBannerHeight:v34];
  }

  [(TabSnapshotRequest *)height setMetadata:v30];
  [(TabSnapshotGenerator *)v36 snapshotWithRequest:height contentProvider:v15 completion:completionCopy];

LABEL_31:
}

- (BOOL)avoidSnapshotOfActiveTabIfPossible
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  isBlank = [activeTabDocument isBlank];

  return isBlank;
}

- (void)_cancelContentScrollGestures
{
  if (self)
  {
    [*MEMORY[0x277D76620] _cancelGestureRecognizersForView:*(self + 288)];
    _catalogViewController = [(BrowserController *)self _catalogViewController];
    [_catalogViewController cancelFavoritesGestures];
  }
}

- (void)tabCollectionViewWillPresent:(id)present
{
  presentCopy = present;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];

  if (!_catalogViewController)
  {
    createCatalogViewControllerIfNeeded = [(BrowserController *)self createCatalogViewControllerIfNeeded];
    [WeakRetained browserController:self setCatalogViewController:createCatalogViewControllerIfNeeded];
  }

  firstResponder = [(_SFWebView *)self->_webView firstResponder];
  [firstResponder resignFirstResponder];

  settings = [MEMORY[0x277D28F08] settings];
  uUID = [(BrowserController *)self UUID];
  [settings setIsShowingTabView:1 forWindowWithUUID:uUID];

  [(BrowserRootViewController *)self->_rootViewController tabCollectionViewWillPresent:presentCopy];
  [WeakRetained updateTabViewPinchRecognizerForBrowserController:self];
  [(BrowserController *)self _cancelContentScrollGestures];
  [WeakRetained browserControllerMakeKey:self];
  v10 = +[MediaCaptureStatusBarManager sharedManager];
  [v10 browserControllerWillEnterTabView:self];

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserControllerStartPageUpdatePolicyDidChange:self];
  }
}

- (void)tabCollectionViewWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  settings = [MEMORY[0x277D28F08] settings];
  uUID = [(BrowserController *)self UUID];
  [settings setIsShowingTabView:0 forWindowWithUUID:uUID];

  [(BrowserRootViewController *)self->_rootViewController tabCollectionViewWillDismiss:dismissCopy];
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained updateTabViewPinchRecognizerForBrowserController:self];
  [(UIScrollView *)self->_scrollView flashScrollIndicators];
  [WeakRetained browserControllerMakeKey:self];
}

- (void)tabCollectionViewDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if (-[BrowserController _wantsURLFieldAutoFocus](&self->super.super.super.isa) && [activeTabDocument isBlank])
  {
    v5 = [activeTabDocument URL];
    if (v5)
    {
    }

    else
    {
      libraryType = [activeTabDocument libraryType];

      if (!libraryType)
      {
        [(BrowserController *)self setFavoritesFieldFocused:1 animated:1];
      }
    }
  }

  [(BrowserController *)&self->super.super.super.isa _updateDigitalHealthOverlayAfterExitingTabSwitcher];
  [(BrowserRootViewController *)self->_rootViewController tabCollectionViewDidDismiss:dismissCopy];
  if (([(BrowserController *)self sf_inResponderChain]& 1) == 0)
  {
    [(BrowserController *)self becomeFirstResponder];
  }

  [activeTabDocument presentNextDialogIfNeeded];
  [(BrowserController *)&self->super.super.super.isa _presentPendingViewControllerForActiveTab];
  v7 = +[MediaCaptureStatusBarManager sharedManager];
  [v7 browserControllerWillExitTabView:self];

  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (![(BrowserController *)self isShowingFavorites])
  {
    [WeakRetained browserController:self setCatalogViewController:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserControllerStartPageUpdatePolicyDidChange:self];
  }

  [(BrowserController *)&self->super.super.super.isa _checkWebViewVisibilityAfterExitingTabView];
}

- (void)_updateDigitalHealthOverlayAfterExitingTabSwitcher
{
  if (self)
  {
    if ([self isShowingFavorites])
    {
      tabDocumentBeingActivated = [self[41] tabDocumentBeingActivated];
      [(BrowserController *)self _hideDigitalHealthOverlayForTabDocument:tabDocumentBeingActivated];
    }

    else
    {
      v2 = MEMORY[0x277CBEB98];
      tabDocumentBeingActivated = [self[41] activeTabDocument];
      tabDocumentBeingActivated2 = [self[41] tabDocumentBeingActivated];
      v4 = [v2 setWithObjects:{tabDocumentBeingActivated, tabDocumentBeingActivated2, 0}];
      [(BrowserController *)self _updateDigitalHealthOverlayForTabDocuments:v4];
    }
  }
}

- (void)_checkWebViewVisibilityAfterExitingTabView
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_hideDigitalHealthOverlayForTabDocument:(id *)document
{
  v3 = a2;
  if (document)
  {
    v8 = v3;
    v4 = [(BrowserController *)document _isTabDocumentFrontMostForDigitalHealth:v3];
    v3 = v8;
    if (v4)
    {
      v5 = [(BrowserController *)document _screenTimeOverlayViewControllerForTabDocument:v8];
      v6 = v5;
      if (v5)
      {
        [v5 willMoveToParentViewController:0];
        view = [v6 view];
        [view removeFromSuperview];

        [v6 removeFromParentViewController];
        if (([document[41] hasTabsThatShouldBeObscuredForDigitalHealth] & 1) == 0)
        {

          v6 = 0;
        }

        [v8 removeMediaSuspensionReason:1];
      }

      v3 = v8;
    }
  }
}

- (void)didCancelDismissingTabOverview
{
  settings = [MEMORY[0x277D28F08] settings];
  uUID = [(BrowserController *)self UUID];
  [settings setIsShowingTabView:1 forWindowWithUUID:uUID];

  rootViewController = self->_rootViewController;
  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  [(BrowserRootViewController *)rootViewController tabCollectionViewDidCancelDismissal:tabThumbnailCollectionView];

  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained updateTabViewPinchRecognizerForBrowserController:self];

  [(BrowserController *)self _cancelContentScrollGestures];
}

- (id)borrowContentViewControllerForTab:(id)tab
{
  tabCopy = tab;
  self->_contentBorrowedForTab = 1;
  if (objc_opt_respondsToSelector())
  {
    [(_SFWebView *)self->_webView _exitFullScreenImmediately];
  }

  navigationBar = [(BrowserRootViewController *)self->_rootViewController navigationBar];
  [navigationBar setBackdropGroupDisabled:1];

  [(BrowserRootViewController *)self->_rootViewController setDocumentSafeAreaInsetsFrozen:1];
  if ([tabCopy shouldObscureForDigitalHealth])
  {
    [(BrowserController *)self _insertScreenTimeLockoutShieldIntoContentViewForTab:tabCopy animated:1];
  }

  documentAndTopBarsContainerView = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerView];
  [documentAndTopBarsContainerView setHidden:0];
  capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  capsuleCollectionView = [capsuleViewController capsuleCollectionView];

  if (capsuleCollectionView)
  {
    lockdownStatusBar = [capsuleCollectionView lockdownStatusBar];
    if (lockdownStatusBar && [capsuleCollectionView layoutStyle] == 2)
    {
      [lockdownStatusBar bounds];
      [documentAndTopBarsContainerView convertRect:lockdownStatusBar fromView:?];
      [lockdownStatusBar setFrame:?];
      [documentAndTopBarsContainerView addSubview:lockdownStatusBar];
    }

    minimizedProgressView = [capsuleCollectionView minimizedProgressView];
    [minimizedProgressView bounds];
    [documentAndTopBarsContainerView convertRect:minimizedProgressView toView:?];
    [minimizedProgressView setFrame:?];
    [documentAndTopBarsContainerView addSubview:minimizedProgressView];
  }

  [documentAndTopBarsContainerView setUserInteractionEnabled:0];
  [documentAndTopBarsContainerView setUserInteractionEnabled:1];
  documentAndTopBarsContainerViewController = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerViewController];

  return documentAndTopBarsContainerViewController;
}

- (void)_insertScreenTimeLockoutShieldIntoContentViewForTab:(uint64_t)tab animated:
{
  v5 = a2;
  if (self)
  {
    v11 = v5;
    v6 = [(BrowserController *)self _screenTimeHostingViewControllerForTabDocument:v5];
    screenTimeOverlayViewController = [v6 screenTimeOverlayViewController];
    v8 = [v11 URL];
    v9 = v8;
    if (screenTimeOverlayViewController && v8)
    {
      v10 = [screenTimeOverlayViewController showBlockingViewControllerForURL:v8 withPolicy:objc_msgSend(v11 animated:{"policy"), tab}];
      [v6 displayHostedScreenTimeView];
    }

    v5 = v11;
  }
}

- (void)reinsertBorrowedContentViewForTab:(id)tab
{
  v32 = *MEMORY[0x277D85DE8];
  self->_contentBorrowedForTab = 0;
  if (objc_opt_respondsToSelector())
  {
    [(_SFWebView *)self->_webView _exitFullScreenImmediately];
  }

  navigationBar = [(BrowserRootViewController *)self->_rootViewController navigationBar];
  [navigationBar setBackdropGroupDisabled:0];

  [(BrowserRootViewController *)self->_rootViewController setDocumentSafeAreaInsetsFrozen:0];
  documentAndTopBarsContainerView = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerView];
  v25 = documentAndTopBarsContainerView;
  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  v26 = tabThumbnailCollectionView;
  [documentAndTopBarsContainerView setHidden:{objc_msgSend(tabThumbnailCollectionView, "presentationState") != 0}];
  isShowingSidebar = [(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar];
  bottomToolbar = [(BrowserRootViewController *)self->_rootViewController bottomToolbar];
  v23 = bottomToolbar;
  [bottomToolbar _setSafeAreaInsetsFrozen:0];
  view = [tabThumbnailCollectionView view];
  v24 = view;
  documentAndTopBarsContainerViewController = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerViewController];
  parentViewController = [documentAndTopBarsContainerViewController parentViewController];
  contentContainerViewController = [(BrowserRootViewController *)self->_rootViewController contentContainerViewController];

  if (parentViewController != contentContainerViewController)
  {
    tabThumbnailCollectionView = [(BrowserRootViewController *)self->_rootViewController contentContainerViewController];
    [tabThumbnailCollectionView addChildViewController:documentAndTopBarsContainerViewController];
  }

  superview = [view superview];
  if (superview)
  {
    v13 = view;
  }

  else
  {
    v13 = 0;
  }

  v28[0] = v13;
  v28[1] = documentAndTopBarsContainerView;
  v28[2] = bottomToolbar;
  if (isShowingSidebar)
  {
    tabThumbnailCollectionView = [(BrowserRootViewController *)self->_rootViewController sidebarContentDimmingView];
    v29 = tabThumbnailCollectionView;
    documentAndTopBarsContainerView = [(BrowserRootViewController *)self->_rootViewController sidebarViewController];
    view2 = [documentAndTopBarsContainerView view];
  }

  else
  {
    view2 = 0;
    v29 = 0;
  }

  v30 = view2;
  v15 = +[FeatureManager sharedFeatureManager];
  if ([v15 isFloatingSidebarButtonEnabled])
  {
    floatingSidebarButton = [(BrowserRootViewController *)self->_rootViewController floatingSidebarButton];
  }

  else
  {
    floatingSidebarButton = 0;
  }

  if (isShowingSidebar)
  {
  }

  contentContainerView = [(BrowserRootViewController *)self->_rootViewController contentContainerView];
  [contentContainerView _sf_setOrderedSubviews:v28 count:6];

  if (parentViewController != contentContainerViewController)
  {
    contentContainerViewController2 = [(BrowserRootViewController *)self->_rootViewController contentContainerViewController];
    [documentAndTopBarsContainerViewController didMoveToParentViewController:contentContainerViewController2];
  }

  capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  capsuleCollectionView = [capsuleViewController capsuleCollectionView];
  [capsuleCollectionView reattachControls];

  view3 = [(BrowserRootViewController *)self->_rootViewController view];
  [view3 setNeedsLayout];

  [(BrowserController *)self updateExposedScrollViewRect];
  if (self->_wantsUnifiedFieldFocused && [(BrowserController *)&self->super.super.super.isa _wantsURLFieldAutoFocus])
  {
    primaryNavigationBar = [(BrowserRootViewController *)self->_rootViewController primaryNavigationBar];
    textField = [primaryNavigationBar textField];
    [textField becomeFirstResponder];
  }
}

- (void)_navigationGestureDidBegin
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 368));
    [WeakRetained browserControllerWillBeginNavigationGesture:self];

    activeTabDocument = [*(self + 328) activeTabDocument];
    [activeTabDocument freezeForNavigationGesture];

    dynamicBarAnimator = [*(self + 264) dynamicBarAnimator];
    *(self + 400) = [dynamicBarAnimator state];

    *(self + 361) = 1;
    activeTabDocument2 = [*(self + 328) activeTabDocument];
    appBanner = [activeTabDocument2 appBanner];
    overlayProvider = [appBanner overlayProvider];

    [overlayProvider webViewBackforwardGestureNavigationWillBegin];
  }
}

- (void)_navigationGestureWillEndWithNavigationToBackForwardListItem:(uint64_t)item
{
  v6 = a2;
  if (item)
  {
    [(BrowserController *)item _presentReaderTriggeredAppReviewPromptIfNeeded];
    if (v6)
    {
      activeTabDocument = [*(item + 328) activeTabDocument];
      v4 = [activeTabDocument mustShowBarsForBackForwardListItem:v6];

      if (v4)
      {
        [item showBars];
      }
    }

    else
    {
      dynamicBarAnimator = [*(item + 264) dynamicBarAnimator];
      [dynamicBarAnimator attemptTransitionToState:*(item + 400) animated:1];
    }
  }
}

- (void)_navigationGestureDidEndWithNavigation:(uint64_t)navigation
{
  if (navigation)
  {
    WeakRetained = objc_loadWeakRetained((navigation + 368));
    [WeakRetained browserControllerDidEndNavigationGesture:navigation];

    activeTabDocument = [*(navigation + 328) activeTabDocument];
    appBanner = [activeTabDocument appBanner];
    overlayProvider = [appBanner overlayProvider];

    [overlayProvider webViewBackforwardGestureNavigationDidEnd];
    if (a2)
    {
      appBanner2 = [activeTabDocument appBanner];

      if (appBanner2)
      {
        [navigation removeAppBannerFromTabDocument:activeTabDocument animated:0];
      }
    }

    [activeTabDocument unfreezeAfterNavigationGesture:a2];
    *(navigation + 361) = 0;
  }
}

- (void)updatePullToRefreshIsEnabled
{
  v3 = ![(BrowserRootViewController *)self->_rootViewController isInYttriumMode]&& ![(BrowserController *)self isShowingReader]&& ![(BrowserController *)self _isInContinuousMode]&& ![(UIScrollView *)self->_scrollView isZooming]&& [(_SFWebView *)self->_webView fullscreenState]== 0;
  rootViewController = self->_rootViewController;

  [(BrowserRootViewController *)rootViewController setPullToRefreshIsEnabled:v3];
}

- (void)clearDocumentForContinuousReading:(id)reading
{
  readingCopy = reading;
  if ([(BrowserController *)self isContinuousReadingDocument:?])
  {
    if (self->_previousContinuousItemDocument == readingCopy)
    {
      [(BrowserController *)self _clearPreviousContinuousItemDocument];
    }

    else if (self->_nextContinuousItemDocument == readingCopy)
    {
      [(BrowserController *)self _clearNextContinuousItemDocument];
    }
  }
}

- (void)clearContinuousItemDocuments
{
  [(BrowserController *)self _clearNextContinuousItemDocument];

  [(BrowserController *)self _clearPreviousContinuousItemDocument];
}

- (BOOL)isContinuousReadingDocument:(id)document
{
  documentCopy = document;
  if (documentCopy)
  {
    v5 = self->_previousContinuousItemDocument == documentCopy || self->_nextContinuousItemDocument == documentCopy;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didChangeContinuousReadingItemInActiveDocument
{
  if ([MEMORY[0x277D49A08] isSolariumEnabled] && objc_msgSend(MEMORY[0x277D49A08], "isSaveForLaterEnabled"))
  {
    [(LibraryController *)self->_libraryController updateAndScrollToCurrentSelectedItem];
  }

  else
  {
    _sidebarViewController = [(BrowserController *)self _sidebarViewController];
    topReadingListViewController = [_sidebarViewController topReadingListViewController];

    [topReadingListViewController updateAndScrollToCurrentSelectedItemIfNeeded:1];
  }

  [(BrowserController *)self updatePullToRefreshIsEnabled];
}

- (double)browserViewController:(id)controller adjustedBottomContentInset:(double)inset
{
  previewView = [(ContinuousReadingViewController *)self->_continuousReadingViewController previewView];
  [previewView rubberBandingHeight];
  v7 = v6 + inset;

  return v7;
}

- (void)updateFocusForTab:(id)tab webViewCanTakeFocus:(BOOL)focus
{
  tabCopy = tab;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  uuid = [activeTabDocument uuid];
  uuid2 = [tabCopy uuid];
  v9 = WBSIsEqual();

  if ((v9 & 1) == 0 || [(BrowserController *)self isFavoritesFieldFocused]|| [(BrowserController *)self _hasPresentedViewController])
  {
    goto LABEL_19;
  }

  isWindowLockedForPrivate = [(BrowserController *)self _isWindowLockedForPrivateBrowsing];
  if (self->_webView)
  {
    v11 = isWindowLockedForPrivate;
    tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([tabThumbnailCollectionView presentationState] == 1)
    {
    }

    else
    {
      presentationState = [tabThumbnailCollectionView presentationState];

      if (presentationState != 2)
      {
        v13 = ([activeTabDocument isShowingSystemStartPage] | v11) ^ 1;
        goto LABEL_11;
      }
    }

    LOBYTE(v13) = 0;
LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(v13) = 0;
LABEL_12:
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  focusSystem = [WeakRetained focusSystem];
  if (focusSystem)
  {

    if ((v13 & focus & 1) == 0)
    {
      parentFocusEnvironment = [(BrowserController *)self parentFocusEnvironment];
      [parentFocusEnvironment setNeedsFocusUpdate];

      goto LABEL_19;
    }
  }

  else
  {
  }

  if (v13)
  {
    [(_SFWebView *)self->_webView becomeFirstResponder];
  }

  else
  {
    [(BrowserController *)self becomeFirstResponder];
  }

LABEL_19:
}

- (void)_didChangeToFirstResponder:(id)responder
{
  responderCopy = responder;
  v7.receiver = self;
  v7.super_class = BrowserController;
  [(BrowserController *)&v7 _didChangeToFirstResponder:responderCopy];
  tabController = self->_tabController;
  activeTabDocument = [(TabController *)tabController activeTabDocument];
  [(TabController *)tabController saveTabDocumentUserActivitySoon:activeTabDocument];
}

- (id)undoManager
{
  if (self->_overridesUndoManagerForClosedTabs)
  {
    undoManager = [(TabController *)self->_tabController undoManager];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = BrowserController;
    undoManager = [(BrowserController *)&v4 undoManager];
  }

  return undoManager;
}

- (NSArray)preferredFocusEnvironments
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  v4 = [WeakRetained browserControllerPreferredFocusEnvironments:self];

  return v4;
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  v4 = [WeakRetained browserControllerParentFocusEnvironment:self];

  return v4;
}

- (UIFocusItemContainer)focusItemContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  v4 = [WeakRetained browserControllerFocusItemContainer:self];

  return v4;
}

- (void)setNeedsFocusUpdate
{
  v3 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
}

- (void)updateFocusIfNeeded
{
  v2 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
  [v2 updateFocusIfNeeded];
}

- (void)setActiveProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activeProfileIdentifier = [(BrowserController *)self activeProfileIdentifier];
  v5 = [activeProfileIdentifier isEqualToString:identifierCopy];

  if ((v5 & 1) == 0)
  {
    [(BrowserController *)self clearContinuousItemDocuments];
    [(BrowserController *)self clearSpeculativeLoadDocument];
    activeProfile = [(BrowserController *)self activeProfile];
    identifier = [activeProfile identifier];

    [(TabController *)self->_tabController willSelectProfileWithIdentifier:identifierCopy];
    [(WBProfileWindow *)self->_profileWindow setActiveProfileIdentifier:identifierCopy];
    [(TabController *)self->_tabController didSelectProfileWithIdentifier:identifierCopy previousProfileIdentifier:identifier];
    [(LibraryController *)self->_libraryController didSwitchProfile];
    bookmarksBar = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
    [bookmarksBar setNeedsReloadData];

    [(BrowserController *)self _prepareExtensionsForEffectiveProfile];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ProfileDidChange" object:self];

    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    activeProfileIdentifier2 = [(BrowserController *)self activeProfileIdentifier];
    [safari_browserDefaults setObject:activeProfileIdentifier2 forKey:*MEMORY[0x277D29030]];

    mEMORY[0x277D28BF0] = [MEMORY[0x277D28BF0] sharedProvider];
    [mEMORY[0x277D28BF0] clearCachedMenuForPersona:0];
  }
}

- (id)existingUnnamedTabGroupForProfileWithIdentifier:(id)identifier
{
  v3 = [(WBProfileWindow *)self->_profileWindow existingUnnamedTabGroupForProfileWithIdentifier:identifier];

  return v3;
}

- (void)tabGroupManager:(id)manager didUpdateProfileWithIdentifier:(id)identifier difference:(id)difference
{
  identifierCopy = identifier;
  differenceCopy = difference;
  activeProfileIdentifier = [(BrowserController *)self activeProfileIdentifier];
  v9 = [activeProfileIdentifier isEqualToString:identifierCopy];

  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

  if ([(BrowserController *)self hasMultipleProfiles])
  {
    activeTabGroup = [(TabController *)self->_tabController activeTabGroup];
    v11 = [activeTabGroup isNamed] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  profileTitleInScene = self->_profileTitleInScene;
  activeProfile = [(BrowserController *)self activeProfile];
  title = [activeProfile title];
  if (![(NSString *)profileTitleInScene isEqualToString:title]|| !((self->_profileTitleInScene == 0) | v11 & 1))
  {

    goto LABEL_10;
  }

  v15 = (self->_profileTitleInScene == 0) & v11;

  if (v15)
  {
LABEL_10:
    [(BrowserController *)self _updateSceneTitle];
  }

  if (([differenceCopy result] & 3) != 0 || !objc_msgSend(differenceCopy, "result"))
  {
    [(TabController *)self->_tabController updateSelectedTabGroupName];
  }

  activeProfile2 = [(BrowserController *)self activeProfile];
  customFavoritesFolderServerID = [activeProfile2 customFavoritesFolderServerID];
  bookmarksBar = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
  currentRootBookmark = [bookmarksBar currentRootBookmark];
  serverID = [currentRootBookmark serverID];
  v21 = WBSIsEqual();

  if ((v21 & 1) == 0 && ([differenceCopy result] & 4) != 0)
  {
    bookmarksBar2 = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
    [bookmarksBar2 setNeedsReloadData];
  }

LABEL_17:
}

- (uint64_t)_currentlyEditingText
{
  if (!self)
  {
    return 0;
  }

  activeTabDocument = [*(self + 328) activeTabDocument];
  webView = [activeTabDocument webView];
  if ([webView sf_inResponderChain])
  {
    hasFormControlInteraction = [activeTabDocument hasFormControlInteraction];
  }

  else
  {
    activeInstance = [MEMORY[0x277D75678] activeInstance];
    inputDelegate = [activeInstance inputDelegate];
    hasFormControlInteraction = inputDelegate != 0;
  }

  return hasFormControlInteraction;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  isWindowLockedForPrivate = [(BrowserController *)self _isWindowLockedForPrivateBrowsing];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x277D28BF0] = [MEMORY[0x277D28BF0] sharedProvider];
    if ([mEMORY[0x277D28BF0] commandConflictsWithTextEditing:senderCopy])
    {
      _currentlyEditingText = [(BrowserController *)self _currentlyEditingText];

      if (_currentlyEditingText)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  v12 = [tabThumbnailCollectionView presentationState] == 1 || objc_msgSend(tabThumbnailCollectionView, "presentationState") == 2;

  if (sel_focusAddressFieldKeyPressed == action || sel_focusAddressFieldAlternativeKeyPressed == action)
  {
    if (!v12)
    {
      activeLibraryType = [(BrowserController *)self activeLibraryType];
      LOBYTE(v16) = (activeLibraryType == 0) & (isWindowLockedForPrivate ^ 1);
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (sel_toggleBookmarksKeyPressed == action || sel_editBookmarksKeyPressed == action)
  {
LABEL_36:
    LOBYTE(v16) = (v12 | isWindowLockedForPrivate) ^ 1;
    goto LABEL_47;
  }

  if (sel_toggleShowingFavoritesBarKeyPressed == action)
  {
    if (v12)
    {
      goto LABEL_35;
    }

    contentContainerView = [(BrowserController *)&self->super.super.super.isa contentContainerView];
    [contentContainerView bounds];
    v20 = v19;
    IsPad = _SFDeviceIsPad();
    if (v20 > *MEMORY[0x277D29130])
    {
      v22 = IsPad;
    }

    else
    {
      v22 = 0;
    }

    LOBYTE(v16) = v22 & (isWindowLockedForPrivate ^ 1);
LABEL_44:

    goto LABEL_47;
  }

  if (sel_reloadKeyPressed == action || sel_reloadFromOriginKeyPressed == action || sel_takeFindStringKeyPressed == action)
  {
    _showingTabDocumentWithURL = [(BrowserController *)self _showingTabDocumentWithURL];
    goto LABEL_46;
  }

  if (sel_printKeyPressed == action)
  {
    if (v12)
    {
      goto LABEL_35;
    }

    _showingTabDocumentWithURL = [(BrowserController *)self _canPrintForTabDocument:activeTabDocument];
LABEL_46:
    LOBYTE(v16) = _showingTabDocumentWithURL & (isWindowLockedForPrivate ^ 1);
    goto LABEL_47;
  }

  if (sel_find_ == action)
  {
    if (![(BrowserController *)self canFindOnPage]&& ![(BrowserController *)self _tabViewCanSearchTabs])
    {
      goto LABEL_35;
    }

LABEL_52:
    LOBYTE(v16) = isWindowLockedForPrivate ^ 1;
    goto LABEL_47;
  }

  if (sel_navigateBackKeyPressed == action)
  {
    if (v12)
    {
      goto LABEL_35;
    }

    _showingTabDocumentWithURL = [activeTabDocument canGoBack];
    goto LABEL_46;
  }

  if (sel_navigateForwardKeyPressed == action)
  {
    if (v12)
    {
      goto LABEL_35;
    }

    _showingTabDocumentWithURL = [activeTabDocument canGoForward];
    goto LABEL_46;
  }

  if (sel_toggleReaderKeyPressed == action)
  {
    goto LABEL_52;
  }

  if (sel_closeActiveTab_ == action)
  {
    _showingTabDocumentWithURL = [(TabController *)self->_tabController canCloseTab];
    goto LABEL_46;
  }

  if (sel_closeOtherTabsKeyPressed == action)
  {
    _showingTabDocumentWithURL = [(TabController *)self->_tabController canCloseOtherTabs];
    goto LABEL_46;
  }

  if (sel_nextTabKeyPressed_ == action || sel_previousTabKeyPressed_ == action || sel_switchToTabKeyPressed_ == action)
  {
    goto LABEL_36;
  }

  if (sel_addToBookmarks_ == action)
  {
    goto LABEL_59;
  }

  if (sel_addToReadingList_ == action)
  {
    _showingTabDocumentWithURL = [(BrowserController *)self canAddToReadingList];
    goto LABEL_46;
  }

  if (sel_fastAddBookmark == action)
  {
LABEL_59:
    _showingTabDocumentWithURL = [(BrowserController *)self canAddToBookmarks];
    goto LABEL_46;
  }

  if (sel_previousReadingListItemKeyPressed == action)
  {
    if (v12 || ![(BrowserController *)self _isInContinuousMode])
    {
      goto LABEL_35;
    }

    contentContainerView = [(BrowserController *)self continuousReadingController];
    previousReadingListItem = [contentContainerView previousReadingListItem];
LABEL_68:
    LOBYTE(v16) = (previousReadingListItem != 0) & (isWindowLockedForPrivate ^ 1);

    goto LABEL_44;
  }

  if (sel_nextReadingListItemKeyPressed == action)
  {
    if (v12 || ![(BrowserController *)self _isInContinuousMode])
    {
      goto LABEL_35;
    }

    contentContainerView = [(BrowserController *)self continuousReadingController];
    previousReadingListItem = [contentContainerView nextReadingListItem];
    goto LABEL_68;
  }

  v13 = [(_SFBarManager *)self->_barManager isBarItemEnabled:7];
  v57 = isWindowLockedForPrivate ^ 1;
  if (SFEnhancedTabOverviewEnabled())
  {
    tabController = self->_tabController;
    activeTabGroupOrTabGroupVisibleInSwitcher = [(TabController *)tabController activeTabGroupOrTabGroupVisibleInSwitcher];
    v16 = [(TabController *)tabController canAddNewTabInTabGroup:activeTabGroupOrTabGroupVisibleInSwitcher]& v57;
  }

  else
  {
    v16 = v13 & (isWindowLockedForPrivate ^ 1);
  }

  if (sel_reopenLastClosedTabPressed == action)
  {
    if (!v16)
    {
      goto LABEL_47;
    }

    if ([(BrowserController *)self isPrivateBrowsingEnabled])
    {
      goto LABEL_35;
    }

    activeLibraryType = [(BrowserController *)self _lastClosedTabStateData];
    LOBYTE(v16) = activeLibraryType != 0;
    goto LABEL_38;
  }

  v26 = !v12;
  if (sel_openNewTab_ == action)
  {
    if (!v16)
    {
      goto LABEL_47;
    }

    goto LABEL_137;
  }

  if (sel_newTabAlternativeKeyPressed != action && sel_newTabWithAlternativeOrderingKeyPressed != action)
  {
    if (sel_openNewPrivateTab_ == action)
    {
      if ([(TabController *)self->_tabController canAddNewTabForPrivateBrowsing:1])
      {
        objc_opt_class();
        LOBYTE(v16) = (objc_opt_isKindOfClass() | v26) & v57;
        goto LABEL_47;
      }

      goto LABEL_35;
    }

    if (sel_openNewNormalTab_ != action)
    {
      if (sel_toggleTabViewKeyPressed != action)
      {
        v56 = +[FeatureManager sharedFeatureManager];
        if (sel_newTabGroupKeyPressed == action || sel_previousTabGroupKeyPressed == action || sel_nextTabGroupKeyPressed == action)
        {
          LOBYTE(v57) = [v56 isCustomTabGroupsEnabled];
          goto LABEL_157;
        }

        if (sel_closeTabGroupKeyPressed == action || sel_renameTabGroupKeyPressed == action)
        {
          v31 = SFEnhancedTabOverviewEnabled();
          v32 = self->_tabController;
          if (!v31)
          {
            canSave = [(TabController *)v32 canRenameActiveTabGroup];
            goto LABEL_151;
          }

          activeTabGroupOrTabGroupVisibleInSwitcher2 = [(TabController *)v32 activeTabGroupOrTabGroupVisibleInSwitcher];
          isNamed = [activeTabGroupOrTabGroupVisibleInSwitcher2 isNamed];
        }

        else
        {
          if (sel_emptySelectorForOpenInNewTabModifierLinkTap == action || sel_emptySelectorForOpenInNewTabOppositePreferenceModifierLinkTap == action)
          {
            LOBYTE(v35) = v26 & v16;
            goto LABEL_156;
          }

          if (sel_emptySelectorForAddLinkToReadingListModifierLinkTap != action)
          {
            if (sel_emptySelectorForDownloadModifierLinkTap == action)
            {
              goto LABEL_155;
            }

            if (sel_showBookmarksCollectionKeyPressed == action)
            {
              generalPasteboard = +[FeatureManager sharedFeatureManager];
              isBookmarksAvailable = [generalPasteboard isBookmarksAvailable];
            }

            else
            {
              if (sel_showReadingListCollectionKeyPressed != action)
              {
                if (sel_showHistoryCollectionKeyPressed != action && sel_showHistoryCollectionAlternativeKeyPressed != action)
                {
                  if (sel_showSharedWithYouCollectionKeyPressed == action)
                  {
                    if (v12)
                    {
                      goto LABEL_154;
                    }

                    isPresentingModalBookmarksController = [(BrowserController *)self isPresentingModalBookmarksController];
LABEL_165:
                    LOBYTE(v35) = isPresentingModalBookmarksController | isWindowLockedForPrivate;
                    goto LABEL_166;
                  }

                  if (sel_showCloudTabsCollectionKeyPressed == action)
                  {
                    activeTabGroupOrTabGroupVisibleInSwitcher2 = +[CloudTabStore sharedCloudTabStore];
                    syncedCloudTabDevices = [activeTabGroupOrTabGroupVisibleInSwitcher2 syncedCloudTabDevices];
                    v42 = [syncedCloudTabDevices count] != 0;
                    goto LABEL_168;
                  }

                  if (sel_toggleShowWebpageStatusBar == action)
                  {
                    canSave = [MEMORY[0x277D28C70] supportsWebpageStatusBar];
                    goto LABEL_151;
                  }

                  if (sel_emailCurrentPage == action)
                  {
                    if (CPCanSendMail() == 0 || v12)
                    {
                      goto LABEL_154;
                    }

LABEL_172:
                    isPresentingModalBookmarksController = [activeTabDocument isBlank];
                    goto LABEL_165;
                  }

                  if (sel_increaseSize_ == action || sel_decreaseSize_ == action || sel_resetPageZoomLevelAndFontSize == action)
                  {
                    if (!v12)
                    {
                      v44 = [activeTabDocument URL];
                      LOBYTE(v57) = (v44 != 0) & v57;

                      goto LABEL_157;
                    }

                    goto LABEL_154;
                  }

                  if (sel_toggleDownloadsKeyPressed != action)
                  {
                    if (sel_saveKeyPressed != action && sel_saveWebpageAlternativeKeyPressed != action)
                    {
                      if (sel_autoFillFormKeyPressed != action)
                      {
                        if (sel_closeAllTabsMatchingSearch_ == action)
                        {
                          goto LABEL_154;
                        }

                        numberOfTabsForCloseAllAction = [(TabController *)self->_tabController numberOfTabsForCloseAllAction];
                        if (sel_closeAllTabs_ == action)
                        {
                          v45 = numberOfTabsForCloseAllAction > 1 || v12 && numberOfTabsForCloseAllAction != 0;
                          LOBYTE(v35) = v45 & v57;
                          goto LABEL_156;
                        }

                        if (sel_addAllTabsToBookmarks_ != action)
                        {
                          mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
                          supportsMultipleScenes = [mEMORY[0x277D75128] supportsMultipleScenes];

                          if (sel_openNewWindow_ == action)
                          {
                            goto LABEL_185;
                          }

                          if (sel_openNewPrivateWindow_ == action)
                          {
                            if (supportsMultipleScenes)
                            {
                              if (self->_privateBrowsingEnabled)
                              {
                                goto LABEL_157;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                goto LABEL_157;
                              }
                            }

                            goto LABEL_154;
                          }

                          if (sel_openNewTabOrWindow_ == action)
                          {
                            effectiveNewDocumentShortcutBehavior = [(BrowserController *)self effectiveNewDocumentShortcutBehavior];
                            if (effectiveNewDocumentShortcutBehavior == 1)
                            {
                              v47 = supportsMultipleScenes;
                            }

                            else
                            {
                              v47 = 0;
                            }

                            if ((v47 & 1) == 0)
                            {
                              if (effectiveNewDocumentShortcutBehavior)
                              {
                                LOBYTE(v35) = 0;
                              }

                              else
                              {
                                LOBYTE(v35) = v16;
                              }

                              goto LABEL_156;
                            }

                            goto LABEL_197;
                          }

                          if (sel_mergeAllWindows_ == action)
                          {
                            if (supportsMultipleScenes)
                            {
                              activeTabGroupOrTabGroupVisibleInSwitcher2 = [MEMORY[0x277D75128] sharedApplication];
                              openSessions = [activeTabGroupOrTabGroupVisibleInSwitcher2 openSessions];
                              if ([openSessions count] < 2)
                              {
                                LOBYTE(v57) = 0;
                              }

                              else
                              {
                                browserWindowController = [(BrowserController *)self browserWindowController];
                                browserControllers = [browserWindowController browserControllers];
                                LOBYTE(v57) = ([browserControllers count] > 1) & v57;
                              }

                              goto LABEL_148;
                            }

                            goto LABEL_154;
                          }

                          if (sel_pasteAndGo_ != action && sel_pasteAndSearch_ != action)
                          {
                            if (sel_performWebExtensionCommandForKeyCommand_ == action)
                            {
                              goto LABEL_157;
                            }

                            if (sel_switchToProfileKeyPressed_ != action)
                            {
                              if (sel_openNewWindowInFrontmostProfile_ != action)
                              {
                                if (sel_openNewWindowInProfile_ != action)
                                {
                                  if (sel_scribbleDoneKeyPressed == action)
                                  {
                                    activeTabGroupOrTabGroupVisibleInSwitcher2 = [activeTabDocument sfScribbleControllerIfLoaded];
                                    LOBYTE(v57) = [activeTabGroupOrTabGroupVisibleInSwitcher2 isScribbling];
                                    goto LABEL_148;
                                  }

                                  if (sel_addCurrentPageToHomeScreen_ == action)
                                  {
                                    goto LABEL_219;
                                  }

                                  if (sel_openNewTabGroupWithCurrentTabs_ != action)
                                  {
                                    if (sel_shareCurrentPage_ != action && sel_showSettingsForCurrentPage_ != action)
                                    {
                                      if (sel_toggleCurrentTabIsPinned_ != action)
                                      {
                                        if (sel_toggleTabMediaState_ != action)
                                        {
                                          if (sel_duplicateCurrentTab_ != action)
                                          {
                                            if (sel_arrangeTabsByTitle_ == action || sel_arrangeTabsByWebsite_ == action)
                                            {
                                              goto LABEL_157;
                                            }

                                            if (sel_reportAutoFillIssue_ != action && sel_moveCurrentTabToNewWindow_ != action && sel_fileTranslationRadar_ != action && sel_reportTranslationIssue_ != action && sel_toggleTranslation_ != action)
                                            {
                                              if (sel_cancelKeyPressed != action)
                                              {
                                                if (sel_openRecentlyClosedTab_ != action)
                                                {
                                                  v29 = SFBrowserContentControllerCanPerformActionWithSender();
                                                  activeTabGroupOrTabGroupVisibleInSwitcher2 = v29;
                                                  if (v29)
                                                  {
                                                    LOBYTE(v57) = [v29 BOOLValue];
                                                  }

                                                  else
                                                  {
                                                    v58.receiver = self;
                                                    v58.super_class = BrowserController;
                                                    LOBYTE(v57) = [(BrowserController *)&v58 canPerformAction:action withSender:senderCopy];
                                                  }

                                                  goto LABEL_148;
                                                }

                                                v35 = ![(BrowserController *)self isPrivateBrowsingEnabled];
LABEL_156:
                                                LOBYTE(v57) = v35;
                                              }

LABEL_157:

                                              LOBYTE(v16) = v57;
                                              goto LABEL_47;
                                            }
                                          }

                                          LOBYTE(v35) = isWindowLockedForPrivate | v12;
LABEL_166:
                                          LOBYTE(v35) = v35 ^ 1;
                                          goto LABEL_156;
                                        }

                                        if (![activeTabDocument mediaStateIcon])
                                        {
                                          LOBYTE(v57) = [activeTabDocument atLeastOneOtherTabPlayingAudio];
                                          goto LABEL_157;
                                        }

LABEL_197:
                                        LOBYTE(v35) = 1;
                                        goto LABEL_156;
                                      }

                                      canSave = [(BrowserController *)self canTogglePinningTab];
                                      v37 = (isWindowLockedForPrivate | v12) ^ 1;
LABEL_152:
                                      LOBYTE(v35) = canSave & v37;
                                      goto LABEL_156;
                                    }

LABEL_219:
                                    v35 = [activeTabDocument isBlank] | isWindowLockedForPrivate | v12;
                                    goto LABEL_166;
                                  }

                                  activeTabGroupOrTabGroupVisibleInSwitcher2 = [(TabController *)self->_tabController currentTabs];
                                  v34 = ([activeTabGroupOrTabGroupVisibleInSwitcher2 count] > 1) & v57;
                                  goto LABEL_147;
                                }

                                if (supportsMultipleScenes)
                                {
                                  if (!self->_privateBrowsingEnabled)
                                  {
                                    goto LABEL_197;
                                  }

                                  goto LABEL_187;
                                }

                                goto LABEL_154;
                              }

LABEL_185:
                              if (supportsMultipleScenes)
                              {
                                if (!self->_privateBrowsingEnabled)
                                {
                                  goto LABEL_197;
                                }

LABEL_187:
                                objc_opt_class();
                                LOBYTE(v57) = objc_opt_isKindOfClass();
                                goto LABEL_157;
                              }

LABEL_154:
                              LOBYTE(v57) = 0;
                              goto LABEL_157;
                            }

                            if (![(BrowserController *)self hasMultipleProfiles])
                            {
                              goto LABEL_154;
                            }

                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              goto LABEL_154;
                            }

                            activeTabGroupOrTabGroupVisibleInSwitcher2 = senderCopy;
                            propertyList = [activeTabGroupOrTabGroupVisibleInSwitcher2 propertyList];
                            v53 = [propertyList objectForKeyedSubscript:*MEMORY[0x277D28FA0]];
                            unsignedIntegerValue = [v53 unsignedIntegerValue];

                            syncedCloudTabDevices = [(TabController *)self->_tabController profiles];
                            v43 = unsignedIntegerValue < [syncedCloudTabDevices count];
LABEL_169:
                            LOBYTE(v57) = v43;

                            goto LABEL_148;
                          }

                          generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
                          safari_preferredPasteAndNavigateCommand = [generalPasteboard safari_preferredPasteAndNavigateCommand];
                          if (([safari_preferredPasteAndNavigateCommand action] != action) | isWindowLockedForPrivate & 1)
                          {
                            LOBYTE(v57) = 0;
                          }

                          else
                          {
                            objc_opt_class();
                            LOBYTE(v57) = objc_opt_isKindOfClass();
                          }

LABEL_162:
                          goto LABEL_157;
                        }

                        activeTabGroupOrTabGroupVisibleInSwitcher2 = +[FeatureManager sharedFeatureManager];
                        if (![activeTabGroupOrTabGroupVisibleInSwitcher2 isBookmarksAvailable])
                        {
                          LOBYTE(v57) = 0;
                          goto LABEL_148;
                        }

                        syncedCloudTabDevices = [(BrowserController *)self _nonBlankCurrentTabs];
                        v42 = [syncedCloudTabDevices count] > 1;
LABEL_168:
                        v43 = v42 & v57;
                        goto LABEL_169;
                      }

                      if (v12)
                      {
                        goto LABEL_154;
                      }

                      goto LABEL_172;
                    }

                    if (v12)
                    {
                      goto LABEL_154;
                    }

                    canSave = [(BrowserController *)self _canSaveWebpage];
LABEL_151:
                    v37 = isWindowLockedForPrivate ^ 1;
                    goto LABEL_152;
                  }
                }

LABEL_155:
                LOBYTE(v35) = v26 & v57;
                goto LABEL_156;
              }

              generalPasteboard = +[FeatureManager sharedFeatureManager];
              isBookmarksAvailable = [generalPasteboard isReadingListAvailable];
            }

            LOBYTE(v57) = isBookmarksAvailable & ((v12 | isWindowLockedForPrivate) ^ 1);
            goto LABEL_162;
          }

          if (v12)
          {
            goto LABEL_154;
          }

          activeTabGroupOrTabGroupVisibleInSwitcher2 = +[FeatureManager sharedFeatureManager];
          isNamed = [activeTabGroupOrTabGroupVisibleInSwitcher2 isReadingListAvailable];
        }

        v34 = isNamed & v57;
LABEL_147:
        LOBYTE(v57) = v34;
LABEL_148:

        goto LABEL_157;
      }

      activeLibraryType = [(BrowserController *)self activeLibraryType];
      LOBYTE(v16) = (activeLibraryType == 0) & v57;
LABEL_38:

      goto LABEL_47;
    }

    if ([(TabController *)self->_tabController canAddNewTabForPrivateBrowsing:0])
    {
LABEL_137:
      objc_opt_class();
      LOBYTE(v16) = objc_opt_isKindOfClass() | v26;
      goto LABEL_47;
    }

LABEL_35:
    LOBYTE(v16) = 0;
  }

LABEL_47:

  return v16 & 1;
}

- (BOOL)_showingTabDocumentWithURL
{
  if (!self)
  {
    return 0;
  }

  tabThumbnailCollectionView = [*(self + 944) tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState] == 1)
  {
    v3 = 0;
    activeTabDocument = tabThumbnailCollectionView;
LABEL_7:

    goto LABEL_8;
  }

  presentationState = [tabThumbnailCollectionView presentationState];

  if (presentationState != 2)
  {
    activeTabDocument = [*(self + 328) activeTabDocument];
    v6 = [activeTabDocument URL];
    v3 = v6 != 0;

    goto LABEL_7;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (uint64_t)_canPrintForTabDocument:(void *)document
{
  v3 = a2;
  if (document)
  {
    isWindowLockedForPrivate = [(BrowserController *)document _isWindowLockedForPrivateBrowsing];
    v5 = [v3 URL];
    if (v5)
    {
      v6 = ([v3 shouldObscureForDigitalHealth] | isWindowLockedForPrivate) ^ 1;
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

  return v6 & 1;
}

- (BOOL)_tabViewCanSearchTabs
{
  if (!self)
  {
    return 0;
  }

  tabThumbnailCollectionView = [*(self + 944) tabThumbnailCollectionView];
  v2 = [tabThumbnailCollectionView presentationState] == 1 || objc_msgSend(tabThumbnailCollectionView, "presentationState") == 2;

  return v2;
}

- (id)_lastClosedTabStateData
{
  if (self)
  {
    mEMORY[0x277D28F00] = [MEMORY[0x277D28F00] sharedBrowserSavedState];
    tabController = [self tabController];
    activeProfile = [tabController activeProfile];
    identifier = [activeProfile identifier];
    v6 = [mEMORY[0x277D28F00] recentlyClosedTabsForProfileWithIdentifier:identifier];
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (uint64_t)_canSaveWebpage
{
  if (!self || *(self + 280) || ([(BrowserController *)self _isWindowLockedForPrivateBrowsing]& 1) != 0)
  {
    return 0;
  }

  activeTabDocument = [*(self + 328) activeTabDocument];
  if ([activeTabDocument shouldObscureForDigitalHealth])
  {
    v2 = 0;
  }

  else
  {
    v2 = [activeTabDocument isBlank] ^ 1;
  }

  return v2;
}

- (id)_nonBlankCurrentTabs
{
  if (self)
  {
    currentTabs = [*(self + 328) currentTabs];
    v2 = [currentTabs safari_filterObjectsUsingBlock:&__block_literal_global_1067];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)effectiveNewDocumentShortcutBehavior
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 368));
    if (objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained browserControllerIsFullscreen:selfCopy])
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = [MEMORY[0x277D28C70] preferredNewDocumentShortcutBehavior];
    }
  }

  return selfCopy;
}

- (void)performWebExtensionCommandForKeyCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    webExtensionsController = [activeTabDocument webExtensionsController];
    [webExtensionsController performCommandForKeyCommand:commandCopy];
  }
}

- (uint64_t)_isReaderModeFormatMenuItemAvailable
{
  if (!self)
  {
    return 0;
  }

  isWindowLockedForPrivate = [(BrowserController *)self _isWindowLockedForPrivateBrowsing];
  tabThumbnailCollectionView = [self[118] tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState] == 1)
  {
    v4 = 0;
    activeTabDocument = tabThumbnailCollectionView;
LABEL_7:

    goto LABEL_8;
  }

  presentationState = [tabThumbnailCollectionView presentationState];

  if (presentationState != 2)
  {
    activeTabDocument = [self[41] activeTabDocument];
    v4 = [activeTabDocument canShowPageFormatMenu] & (isWindowLockedForPrivate ^ 1);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (BOOL)canAddToBookmarks
{
  isWindowLockedForPrivate = [(BrowserController *)self _isWindowLockedForPrivateBrowsing];
  v4 = +[FeatureManager sharedFeatureManager];
  if ([v4 isBookmarksAvailable])
  {
    tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([tabThumbnailCollectionView presentationState] == 1)
    {
      v6 = 0;
      activeTabDocument = tabThumbnailCollectionView;
    }

    else
    {
      presentationState = [tabThumbnailCollectionView presentationState];

      if (presentationState == 2)
      {
        v6 = 0;
LABEL_9:

        goto LABEL_10;
      }

      activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
      v6 = ([activeTabDocument isBlank] | isWindowLockedForPrivate) ^ 1;
    }

    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6 & 1;
}

- (BOOL)canAddToReadingList
{
  isWindowLockedForPrivate = [(BrowserController *)self _isWindowLockedForPrivateBrowsing];
  v4 = +[FeatureManager sharedFeatureManager];
  if ([v4 isReadingListAvailable])
  {
    tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([tabThumbnailCollectionView presentationState] == 1)
    {
      v6 = 0;
      activeTabDocument = tabThumbnailCollectionView;
    }

    else
    {
      presentationState = [tabThumbnailCollectionView presentationState];

      if (presentationState == 2)
      {
        v6 = 0;
LABEL_9:

        goto LABEL_10;
      }

      activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
      v6 = ([activeTabDocument isBlank] | isWindowLockedForPrivate) ^ 1;
    }

    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6 & 1;
}

- (id)titleForNewDefaultWindowCommand
{
  if (self)
  {
    if ([self hasMultipleProfiles])
    {
      v2 = MEMORY[0x277CCACA8];
      v3 = _WBSLocalizedString();
      activeProfile = [self activeProfile];
      title = [activeProfile title];
      v6 = [v2 localizedStringWithFormat:v3, title];
    }

    else
    {
      v6 = _WBSLocalizedString();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageForNewDefaultWindowCommand
{
  selfCopy = self;
  if (self)
  {
    activeProfile = [self activeProfile];
    symbolImage = [activeProfile symbolImage];

    hasMultipleProfiles = [selfCopy hasMultipleProfiles];
    if (symbolImage)
    {
      v5 = hasMultipleProfiles;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == 1)
    {
      v6 = symbolImage;
    }

    else
    {
      v6 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.rectangle"];
    }

    selfCopy = v6;
  }

  return selfCopy;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  v55.receiver = self;
  v55.super_class = BrowserController;
  [(BrowserController *)&v55 validateCommand:commandCopy];
  action = [commandCopy action];
  effectiveNewDocumentShortcutBehavior = [(BrowserController *)self effectiveNewDocumentShortcutBehavior];
  if (action == sel_closeAllTabsMatchingSearch_)
  {
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)self _closeAllTabsMatchingSearchLabel];
    [commandCopy setTitle:_closeAllTabsMatchingSearchLabel];
LABEL_42:

    goto LABEL_43;
  }

  if (action == sel_closeAllTabs_)
  {
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)self _closeAllTabsLabel];
    [commandCopy setTitle:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_addAllTabsToBookmarks_)
  {
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)self _addAllTabsToBookmarksLabel];
    [commandCopy setTitle:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_find_)
  {
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)self _findCommandTitle];
    [commandCopy setDiscoverabilityTitle:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_saveKeyPressed)
  {
    _closeAllTabsMatchingSearchLabel = _WBSLocalizedString();
    [commandCopy setDiscoverabilityTitle:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_toggleBookmarksKeyPressed)
  {
    if ([(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar])
    {
      WBSLocalizedStringWithValue(@"Hide Sidebar", v8);
    }

    else
    {
      WBSLocalizedStringWithValue(@"Show Sidebar", v8);
    }

    goto LABEL_41;
  }

  if (action == sel_toggleShowingFavoritesBarKeyPressed)
  {
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)self _titleForToggleFavoritesBarKeyCommand];
    [commandCopy setDiscoverabilityTitle:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_toggleReaderKeyPressed)
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    if ([activeTabDocument isShowingReader])
    {
      WBSLocalizedStringWithValue(@"Hide Reader", v11);
    }

    else
    {
      WBSLocalizedStringWithValue(@"Show Reader", v11);
    }
    v13 = ;
    [commandCopy setDiscoverabilityTitle:v13];

    if ([(BrowserController *)self isReaderAvailable])
    {
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  if (action == sel_toggleTabViewKeyPressed)
  {
    if ([(TabCollectionViewProviding *)self->_tabCollectionViewProvider isShowingTabView])
    {
      WBSLocalizedStringWithValue(@"Hide Tab Overview", v12);
    }

    else
    {
      WBSLocalizedStringWithValue(@"Show Tab Overview", v12);
    }

    v9 = LABEL_41:;
    [commandCopy setDiscoverabilityTitle:v9];
    _closeAllTabsMatchingSearchLabel = v9;
    goto LABEL_42;
  }

  if (action == sel_emptySelectorForOpenInNewTabModifierLinkTap)
  {
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)self _discoverabilityTitleForCommandTapModifierFollowingUserPreference:?];
    [commandCopy setDiscoverabilityTitle:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_emptySelectorForOpenInNewTabOppositePreferenceModifierLinkTap)
  {
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)self _discoverabilityTitleForCommandTapModifierFollowingUserPreference:?];
    [commandCopy setDiscoverabilityTitle:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_showBookmarksCollectionKeyPressed)
  {
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)&self->super.super.super.isa _titleForToggleBookmarksKeyCommand];
    [commandCopy setTitle:_closeAllTabsMatchingSearchLabel];
    [commandCopy setDiscoverabilityTitle:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_showBookmarksViewModeLargeSelected)
  {
    _stateForSetBookmarksViewModeLargeCommand = [(BrowserController *)self _stateForSetBookmarksViewModeLargeCommand];
LABEL_61:
    [commandCopy setState:_stateForSetBookmarksViewModeLargeCommand];
    goto LABEL_43;
  }

  if (action == sel_showBookmarksViewModeCompactSelected)
  {
    _stateForSetBookmarksViewModeLargeCommand = [(BrowserController *)self _stateForSetBookmarksViewModeCompactCommand];
    goto LABEL_61;
  }

  if (action == sel_toggleBookmarksViewFolderModeSeparatedSelected)
  {
    _stateForSetBookmarksViewModeLargeCommand = [(BrowserController *)self _stateForToggleBookmarksViewFolderModeSeparatedCommand];
    goto LABEL_61;
  }

  if (action == sel_bookmarksViewSortOptionSelected_)
  {
    _stateForSetBookmarksViewModeLargeCommand = [(BrowserController *)self _stateForBookmarksViewSortOptionCommand:commandCopy];
    goto LABEL_61;
  }

  if (action == sel_showReadingListCollectionKeyPressed)
  {
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)&self->super.super.super.isa _titleForToggleReadingListKeyCommand];
    [commandCopy setDiscoverabilityTitle:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_showHistoryCollectionKeyPressed)
  {
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)&self->super.super.super.isa _titleForToggleHistoryKeyCommand];
    [commandCopy setDiscoverabilityTitle:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_showSharedWithYouCollectionKeyPressed)
  {
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)&self->super.super.super.isa _titleForToggleSharedWithYouKeyCommand];
    [commandCopy setTitle:_closeAllTabsMatchingSearchLabel];
    [commandCopy setDiscoverabilityTitle:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_showCloudTabsCollectionKeyPressed)
  {
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)&self->super.super.super.isa _titleForToggleCloudTabsKeyCommand];
    [commandCopy setDiscoverabilityTitle:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_toggleShowWebpageStatusBar)
  {
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)self _titleForToggleWebpageStatusBar];
    [commandCopy setDiscoverabilityTitle:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_toggleDownloadsKeyPressed)
  {
    WeakRetained = objc_loadWeakRetained(&self->_downloadsViewController);
    presentingViewController = [WeakRetained presentingViewController];
    if (presentingViewController)
    {
      WBSLocalizedStringWithValue(@"Hide Downloads", v17);
    }

    else
    {
      WBSLocalizedStringWithValue(@"Show Downloads", v17);
    }
    v28 = ;
    [commandCopy setDiscoverabilityTitle:v28];

    mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
    downloads = [mEMORY[0x277CDB7A8] downloads];
    v31 = [downloads count];

    if (v31)
    {
      goto LABEL_50;
    }

LABEL_51:
    v14 = [commandCopy attributes] | 1;
    goto LABEL_52;
  }

  if (action == sel_switchToProfileKeyPressed_)
  {
    profiles = [(TabController *)self->_tabController profiles];
    propertyList = [commandCopy propertyList];
    v21 = [propertyList objectForKeyedSubscript:*MEMORY[0x277D28FA0]];
    _closeAllTabsMatchingSearchLabel = [profiles objectAtIndexedSubscript:{objc_msgSend(v21, "unsignedIntegerValue")}];

    v22 = MEMORY[0x277CCACA8];
    v24 = WBSLocalizedStringWithValue(@"Show %@ Profile", v23);
    title = [_closeAllTabsMatchingSearchLabel title];
    v26 = [v22 localizedStringWithFormat:v24, title];
    [commandCopy setDiscoverabilityTitle:v26];

    symbolImage = [_closeAllTabsMatchingSearchLabel symbolImage];
    [commandCopy setImage:symbolImage];
LABEL_70:

    goto LABEL_42;
  }

  if (action == sel_openNewWindowInFrontmostProfile_)
  {
    if (!effectiveNewDocumentShortcutBehavior)
    {
LABEL_79:
      imageForNewDefaultWindowCommand = [(BrowserController *)self imageForNewDefaultWindowCommand];
      [commandCopy setImage:imageForNewDefaultWindowCommand];

      titleForNewDefaultWindowCommand = [(BrowserController *)self titleForNewDefaultWindowCommand];
      [commandCopy setTitle:titleForNewDefaultWindowCommand];

LABEL_50:
      v14 = 0;
LABEL_52:
      [commandCopy setAttributes:v14];
      goto LABEL_43;
    }

LABEL_80:
    v14 = [commandCopy attributes] | 4;
    goto LABEL_52;
  }

  if (action == sel_openNewTabOrWindow_)
  {
    if (effectiveNewDocumentShortcutBehavior == 1)
    {
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  if (action == sel_openNewTabGroupWithCurrentTabs_)
  {
    v32 = MEMORY[0x277D4A088];
    _closeAllTabsMatchingSearchLabel = [(BrowserController *)self tabGroupProvider];
    symbolImage = [v32 menuTitleCreateGroupWithTheseTabs:{objc_msgSend(_closeAllTabsMatchingSearchLabel, "newTabGroupTabCount")}];
    [commandCopy setTitle:symbolImage];
    goto LABEL_70;
  }

  if (action == sel_showSettingsForCurrentPage_)
  {
    _closeAllTabsMatchingSearchLabel = [(TabController *)self->_tabController activeTabDocument];
    symbolImage = [_closeAllTabsMatchingSearchLabel URLForPerSitePreferences];
    safari_perSitePreferencesMenuBarTitle = [symbolImage safari_perSitePreferencesMenuBarTitle];
    [commandCopy setTitle:safari_perSitePreferencesMenuBarTitle];
LABEL_82:

    goto LABEL_70;
  }

  if (action == sel_toggleCurrentTabIsPinned_)
  {
    currentTabIsPinned = [(BrowserController *)self currentTabIsPinned];
    if (currentTabIsPinned)
    {
      WBSLocalizedStringWithValue(@"Unpin Tab", v36);
    }

    else
    {
      WBSLocalizedStringWithValue(@"Pin Tab", v36);
    }
    v42 = ;
    [commandCopy setTitle:v42];
    if (currentTabIsPinned)
    {
      v43 = @"pin.slash";
    }

    else
    {
      v43 = @"pin";
    }

    _closeAllTabsMatchingSearchLabel = [MEMORY[0x277D755B8] systemImageNamed:v43];
    [commandCopy setImage:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  if (action == sel_toggleTabMediaState_)
  {
    activeTabDocument2 = [(TabController *)self->_tabController activeTabDocument];
    mediaStateIcon = [activeTabDocument2 mediaStateIcon];

    if (mediaStateIcon)
    {
      v40 = SFTitleForTogglingMediaStateIcon();
      [commandCopy setTitle:v40];

      v41 = MEMORY[0x277D755B8];
      _closeAllTabsMatchingSearchLabel = SFUnfilledSystemImageNameForTogglingMediaStateIcon();
      symbolImage = [v41 systemImageNamed:_closeAllTabsMatchingSearchLabel];
      [commandCopy setImage:symbolImage];
      goto LABEL_70;
    }

    _closeAllTabsMatchingSearchLabel = SFBrowserContentControllerOtherTabWithSound();
    [_closeAllTabsMatchingSearchLabel isMuted];
    v52 = SFOtherTabsTitleForTogglingMediaStateIcon();
    [commandCopy setTitle:v52];

    v53 = MEMORY[0x277D755B8];
    symbolImage = SFUnfilledSystemImageNameForTogglingMediaStateIcon();
    safari_perSitePreferencesMenuBarTitle = [v53 systemImageNamed:symbolImage];
    [commandCopy setImage:safari_perSitePreferencesMenuBarTitle];
    goto LABEL_82;
  }

  if (action == sel_toggleAllPrivateWindowsLocked_)
  {
    activeTabGroupOrTabGroupVisibleInSwitcher = [(TabController *)self->_tabController activeTabGroupOrTabGroupVisibleInSwitcher];
    isPrivateBrowsing = [activeTabGroupOrTabGroupVisibleInSwitcher isPrivateBrowsing];

    v46 = +[Application sharedApplication];
    v47 = [v46 privateBrowsingRequiresAuthentication] & isPrivateBrowsing;

    if ((v47 & 1) == 0)
    {
      [commandCopy setAttributes:{objc_msgSend(commandCopy, "attributes") | 5}];
      goto LABEL_43;
    }

    [commandCopy setAttributes:0];
    v48 = +[Application sharedApplication];
    isPrivateBrowsingLocked = [v48 isPrivateBrowsingLocked];

    if (isPrivateBrowsingLocked)
    {
      v51 = WBSLocalizedStringWithValue(@"Unlock All Private Windows (Menu)", v50);
      [commandCopy setDiscoverabilityTitle:v51];

      [MEMORY[0x277D755B8] systemImageNamed:@"lock.open"];
    }

    else
    {
      v54 = WBSLocalizedStringWithValue(@"Lock All Private Windows (Menu)", v50);
      [commandCopy setDiscoverabilityTitle:v54];

      [MEMORY[0x277D755B8] systemImageNamed:@"lock"];
    }
    _closeAllTabsMatchingSearchLabel = ;
    [commandCopy setImage:_closeAllTabsMatchingSearchLabel];
    goto LABEL_42;
  }

  SFBrowserContentControllerValidateCommand();
LABEL_43:
}

- (id)_closeAllTabsMatchingSearchLabel
{
  if (self)
  {
    tabsMatchingSearchTerm = [*(self + 328) tabsMatchingSearchTerm];
    v2 = [tabsMatchingSearchTerm count];

    if (v2 == 1)
    {
      v3 = MEMORY[0x277CCACA8];
      v4 = _WBSLocalizedString();
      v5 = [v3 stringWithFormat:v4, 0];
    }

    else
    {
      v6 = MEMORY[0x277CCABB8];
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
      v4 = [v6 localizedStringFromNumber:v7 numberStyle:1];

      v8 = MEMORY[0x277CCACA8];
      v9 = _WBSLocalizedString();
      v5 = [v8 stringWithFormat:v9, v4, 0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_closeAllTabsLabel
{
  if (self)
  {
    numberOfTabsForCloseAllAction = [*(self + 328) numberOfTabsForCloseAllAction];
    if (numberOfTabsForCloseAllAction <= 1 || (v2 = numberOfTabsForCloseAllAction, numberOfTabsForCloseAllAction == 2))
    {
      v3 = _WBSLocalizedString();
    }

    else
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = _WBSLocalizedString();
      v3 = [v4 localizedStringWithFormat:v5, v2];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_addAllTabsToBookmarksLabel
{
  if (self)
  {
    _nonBlankCurrentTabs = [(BrowserController *)self _nonBlankCurrentTabs];
    v2 = [_nonBlankCurrentTabs count];

    if (v2 > 1)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = _WBSLocalizedString();
      v3 = [v4 localizedStringWithFormat:v5, v2];
    }

    else
    {
      v3 = _WBSLocalizedString();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_discoverabilityTitleForCommandTapModifierFollowingUserPreference:(uint64_t)preference
{
  if (preference)
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v4 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D29270]];

    v5 = _WBSLocalizedString();
    v6 = _WBSLocalizedString();
    v7 = v6;
    if (v4 != a2)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)switchToTabKeyPressed:(id)pressed
{
  v4 = [(BrowserController *)self _tabIndexForKeyCommand:pressed];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    currentTabs = [(TabController *)self->_tabController currentTabs];
    v8 = [currentTabs objectAtIndexedSubscript:v5];

    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];

    if (v8 != activeTabDocument)
    {
      [(TabController *)self->_tabController setActiveTab:v8 animated:1 deferActivation:1];
    }
  }
}

- (uint64_t)_tabIndexForKeyCommand:(uint64_t)command
{
  v3 = a2;
  v4 = v3;
  if (command)
  {
    input = [v3 input];
    integerValue = [input integerValue];

    currentTabs = [*(command + 328) currentTabs];
    v8 = [currentTabs count];
    v9 = integerValue - 1;

    v10 = v8 - 1;
    if (v9 < v8 && v9 != 8)
    {
      v10 = v9;
    }

    if (v10 >= v8)
    {
      command = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      command = v10;
    }
  }

  return command;
}

- (void)switchToProfileKeyPressed:(id)pressed
{
  pressedCopy = pressed;
  propertyList = [pressedCopy propertyList];
  v5 = [propertyList objectForKeyedSubscript:*MEMORY[0x277D28FA0]];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  profiles = [(TabController *)self->_tabController profiles];
  v8 = [profiles objectAtIndexedSubscript:unsignedIntegerValue];
  identifier = [v8 identifier];
  [(TabController *)self->_tabController setActiveProfileIdentifier:identifier];
}

- (void)showBookmarksViewModeLargeSelected
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [safari_browserDefaults setInteger:0 forKey:*MEMORY[0x277D28F80]];

  libraryController = self->_libraryController;

  [(LibraryController *)libraryController reloadBookmarks];
}

- (void)showBookmarksViewModeCompactSelected
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [safari_browserDefaults setInteger:1 forKey:*MEMORY[0x277D28F80]];

  libraryController = self->_libraryController;

  [(LibraryController *)libraryController reloadBookmarks];
}

- (void)toggleBookmarksViewFolderModeSeparatedSelected
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [safari_browserDefaults setInteger:objc_msgSend(safari_browserDefaults forKey:{"integerForKey:", *MEMORY[0x277D28F88]) != 1, *MEMORY[0x277D28F88]}];
  [(LibraryController *)self->_libraryController reloadBookmarks];
}

- (void)bookmarksViewSortOptionSelected:(id)selected
{
  propertyList = [selected propertyList];
  v7 = [(BrowserController *)self sortOptionFromBookmarksViewSortOptionCommandPropertyList:propertyList];

  if (v7)
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    integerValue = [v7 integerValue];
    [safari_browserDefaults setInteger:integerValue forKey:*MEMORY[0x277D28F90]];

    [(LibraryController *)self->_libraryController reloadBookmarks];
  }
}

- (void)_switchToCollectionOrToggleSidebar:(id *)sidebar
{
  v5 = a2;
  if (sidebar)
  {
    if ((([sidebar isPresentingModalBookmarksController] & 1) != 0 || objc_msgSend(sidebar[96], "isShowingSidebar")) && (objc_msgSend(sidebar, "currentBookmarksCollection"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", v5), v3, (v4 & 1) == 0))
    {
      [sidebar setCurrentBookmarksCollection:v5];
    }

    else
    {
      [(BrowserController *)sidebar toggleBookmarksPresentationWithCollection:v5 completion:0];
    }
  }
}

- (void)_toggleVisibilityOfStartPageCollection:(uint64_t)collection
{
  v3 = a2;
  if (collection)
  {
    currentBookmarksCollection = [collection currentBookmarksCollection];
    if (*(collection + 720) == 1)
    {
      [*(collection + 328) selectPrivateTabGroup];
    }

    else
    {
      v5 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Will switch to local tab group because start page collection visibility was toggled.", v8, 2u);
      }

      [*(collection + 328) selectLocalTabGroup];
    }

    if (WBSIsEqual())
    {
      v6 = 0;
    }

    else
    {
      isShowingSidebar = [*(collection + 768) isShowingSidebar];
      v6 = v3;
      if (!isShowingSidebar)
      {
        if ([collection _bookmarksPresentationStyle])
        {
          [(BrowserController *)collection toggleBookmarksPresentationWithCollection:v3 completion:0];
        }

        goto LABEL_11;
      }
    }

    [collection setCurrentBookmarksCollection:v6];
LABEL_11:
  }
}

- (void)toggleBookmarksPresentationWithCollection:(void *)collection completion:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  collectionCopy = collection;
  if (self)
  {
    if ([*(self + 768) isShowingSidebar])
    {
      isPresentingModalBookmarksController = 1;
    }

    else
    {
      isPresentingModalBookmarksController = [self isPresentingModalBookmarksController];
    }

    _bookmarksPresentationStyle = [self _bookmarksPresentationStyle];
    if (isPresentingModalBookmarksController)
    {
      v9 = 0;
    }

    else
    {
      v10 = *(self + 360);
      *(self + 360) = 1;
      v11 = WBS_LOG_CHANNEL_PREFIXSignposts();
      if (os_signpost_enabled(v11))
      {
        v12 = @"modal";
        if (_bookmarksPresentationStyle == 1)
        {
          v12 = @"overlay";
        }

        if (_bookmarksPresentationStyle == 2)
        {
          v12 = @"embedded";
        }

        v13 = v12;
        v14 = @"YES";
        if (v10)
        {
          v14 = @"NO";
        }

        v15 = v14;
        *buf = 138412546;
        v26 = v13;
        v27 = 2112;
        v28 = v15;
        _os_signpost_emit_with_name_impl(&dword_215819000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ShowBookmarks", "presentationStyle=%@; firstPresentation=%@", buf, 0x16u);
      }

      v9 = &__block_literal_global_1049;
    }

    [(UIResponder *)self safari_becomeFirstResponderIfNeeded];
    if ((_bookmarksPresentationStyle - 1) >= 2)
    {
      if (!_bookmarksPresentationStyle)
      {
        -[BrowserController _setPresentingModalBookmarksController:exclusively:importHandler:withCollection:bookmarkUUIDString:animated:completion:](self, [self isPresentingModalBookmarksController] ^ 1, 0, 0, v5, 0, 1, v9);
        if (collectionCopy)
        {
          collectionCopy[2](collectionCopy, 1);
        }
      }
    }

    else
    {
      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __74__BrowserController_toggleBookmarksPresentationWithCollection_completion___block_invoke_1050;
      aBlock[3] = &unk_2781D6BD8;
      objc_copyWeak(&v24, buf);
      v23 = v5;
      v16 = _Block_copy(aBlock);
      v17 = *(self + 768);
      isShowingSidebar = [v17 isShowingSidebar];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __74__BrowserController_toggleBookmarksPresentationWithCollection_completion___block_invoke_2;
      v19[3] = &unk_2781D6C00;
      v20 = v9;
      v21 = collectionCopy;
      [v17 setShowingSidebar:isShowingSidebar ^ 1u completion:v19];
      v16[2](v16);

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }
}

- (void)addToBookmarks:(id)bookmarks
{
  v13 = *MEMORY[0x277D85DE8];
  bookmarksCopy = bookmarks;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      sf_commandSource = [bookmarksCopy sf_commandSource];
    }

    else
    {
      sf_commandSource = @"Unknown";
    }

    v9 = 138543618;
    v10 = @"Add to Bookmarks";
    v11 = 2114;
    v12 = sf_commandSource;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ via %{public}@", &v9, 0x16u);
    if (v6)
    {
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  [(BrowserController *)&self->super.super.super.isa _addBookmarkForCurrentTabKeyPressed:?];
}

- (void)_addBookmarkForCurrentTabKeyPressed:(id *)pressed
{
  if (pressed)
  {
    activeTabDocument = [pressed[41] activeTabDocument];
    titleForNewBookmark = [activeTabDocument titleForNewBookmark];
    [(BrowserController *)pressed _addBookmarkForCurrentTabKeyPressed:a2 title:titleForNewBookmark];
  }
}

- (void)focusAddressFieldKeyPressed
{
  if ([(BrowserController *)self isFavoritesFieldFocused])
  {
    _topNavigationBar = [(BrowserController *)&self->super.super.super.isa _topNavigationBar];
    textField = [_topNavigationBar textField];
    [textField selectAll:0];
  }

  else
  {

    [(BrowserController *)self setFavoritesFieldFocused:1 animated:1];
  }
}

- (void)toggleShowingFavoritesBarKeyPressed
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:-[BrowserController _prefersShowingBookmarksBar](self) ^ 1 forKey:*MEMORY[0x277D28F70]];
}

- (void)toggleTabView
{
  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState] == 1)
  {

LABEL_4:
    [tabThumbnailCollectionView dismissAnimated:1];
    goto LABEL_6;
  }

  presentationState = [tabThumbnailCollectionView presentationState];

  if (presentationState == 2)
  {
    goto LABEL_4;
  }

  [(BrowserController *)self cancelFavoritesAnimated:0];
  [(BrowserController *)self becomeFirstResponder];
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didEnterTabViewWithMethod:2];

  [tabThumbnailCollectionView presentAnimated:1];
LABEL_6:
}

- (void)addToReadingList:(id)list
{
  v15 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      sf_commandSource = [listCopy sf_commandSource];
    }

    else
    {
      sf_commandSource = @"Unknown";
    }

    *buf = 138543618;
    v12 = @"Add to Reading List";
    v13 = 2114;
    v14 = sf_commandSource;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ via %{public}@", buf, 0x16u);
    if (v6)
    {
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__BrowserController_addToReadingList___block_invoke;
  v9[3] = &unk_2781D61F8;
  v9[4] = self;
  v8 = listCopy;
  v10 = v8;
  [(BrowserController *)self showReadingListAutomaticArchiveAlertIfNeededWithCompletion:v9];
}

void __38__BrowserController_addToReadingList___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) addReadingListBookmarkForCurrentTab])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    v7 = [MEMORY[0x277D499B8] sharedLogger];
    [v7 didAddReadingListItemWithMethod:v2];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 368));
  v3 = (a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*v3 window];
    if (!v4)
    {
      v3 = (*(a1 + 32) + 936);
    }

    v5 = *v3;
  }

  else
  {
    v5 = *(*(a1 + 32) + 936);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = *(a1 + 32);
    [v5 bounds];
    UIRectGetCenter();
    [WeakRetained browserController:v6 animateSafariIconLinkFromPoint:v5 inView:?];
  }
}

- (void)nextReadingListItemKeyPressed
{
  continuousReadingController = [(BrowserController *)self continuousReadingController];
  nextReadingListItem = [continuousReadingController nextReadingListItem];

  if (nextReadingListItem)
  {
    continuousReadingViewController = self->_continuousReadingViewController;

    [(ContinuousReadingViewController *)continuousReadingViewController loadNextItem];
  }
}

- (void)previousReadingListItemKeyPressed
{
  continuousReadingController = [(BrowserController *)self continuousReadingController];
  previousReadingListItem = [continuousReadingController previousReadingListItem];

  if (previousReadingListItem)
  {
    continuousReadingViewController = self->_continuousReadingViewController;

    [(ContinuousReadingViewController *)continuousReadingViewController loadPreviousItem];
  }
}

- (void)_pressedNewTabKeyWithOptions:(char)options isKeyboardShortcut:
{
  if (self)
  {
    [self cancelFavoritesAnimated:0];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__BrowserController__pressedNewTabKeyWithOptions_isKeyboardShortcut___block_invoke;
    aBlock[3] = &unk_2781D6638;
    optionsCopy = options;
    aBlock[4] = self;
    v6 = _Block_copy(aBlock);
    v7 = a2 & 3;
    if ((a2 & 3) == 0 || *(self + 720) == (v7 == 2))
    {
      goto LABEL_9;
    }

    v8 = *(self + 328);
    if (v7 == 2)
    {
      [v8 selectPrivateTabGroup];
    }

    else
    {
      [v8 selectLocalTabGroup];
    }

    activeTabDocument = [*(self + 328) activeTabDocument];
    isBlank = [activeTabDocument isBlank];

    if (isBlank)
    {
      v6[2](v6);
    }

    else
    {
LABEL_9:
      v11 = *(self + 328);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __69__BrowserController__pressedNewTabKeyWithOptions_isKeyboardShortcut___block_invoke_2;
      v12[3] = &unk_2781D6380;
      v13 = v6;
      [v11 openNewTabWithOptions:a2 & 0xC | (2 * (v7 == 2)) completionHandler:v12];
    }
  }
}

void __69__BrowserController__pressedNewTabKeyWithOptions_isKeyboardShortcut___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = [MEMORY[0x277D499B8] sharedLogger];
  [v7 didOpenNewBlankTabWithTrigger:v2 ^ 1 tabCollectionViewType:{objc_msgSend(*(*(a1 + 32) + 944), "visibleTabCollectionViewType")}];

  v3 = [*(*(a1 + 32) + 328) activeTabDocument];
  v8 = [v3 webExtensionsController];

  v4 = [v8 extensionOverriddenStartPageURL];

  v5 = [(BrowserController *)*(a1 + 32) _wantsURLFieldAutoFocus];
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v6 == 1)
  {
    [*(a1 + 32) setFavoritesFieldFocused:1 animated:0];
  }
}

uint64_t __69__BrowserController__pressedNewTabKeyWithOptions_isKeyboardShortcut___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)openNewTab:(id)tab
{
  v14 = *MEMORY[0x277D85DE8];
  tabCopy = tab;
  [(TabController *)self->_tabController switchToTabGroupVisibleInSwitcherIfNeeded];
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      sf_commandSource = [tabCopy sf_commandSource];
    }

    else
    {
      sf_commandSource = @"Unknown";
    }

    v10 = 138543618;
    v11 = @"Open new tab";
    v12 = 2114;
    v13 = sf_commandSource;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ via %{public}@", &v10, 0x16u);
    if (v6)
    {
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((tabCopy == 0) | isKindOfClass & 1)
  {
    v9 = 4;
  }

  else
  {
    v9 = 8;
  }

  [(BrowserController *)self _pressedNewTabKeyWithOptions:v9 isKeyboardShortcut:isKindOfClass & 1];
}

- (void)newTabAlternativeKeyPressed
{
  v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Open new tab via alternate keyboard shortcut", v4, 2u);
  }

  [(BrowserController *)self _pressedNewTabKeyWithOptions:1 isKeyboardShortcut:?];
}

- (void)openNewPrivateTab:(id)tab
{
  v16 = *MEMORY[0x277D85DE8];
  tabCopy = tab;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      sf_commandSource = [tabCopy sf_commandSource];
    }

    else
    {
      sf_commandSource = @"Unknown";
    }

    v12 = 138543618;
    v13 = @"Open new Private tab";
    v14 = 2114;
    v15 = sf_commandSource;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "%{public}@ via %{public}@", &v12, 0x16u);
    if (v6)
    {
    }
  }

  if ([(BrowserController *)self isPrivateBrowsingAvailable])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    [(BrowserController *)self _pressedNewTabKeyWithOptions:isKindOfClass & 1 isKeyboardShortcut:?];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277D4A740]);
    viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
    v11 = [v9 initWithPresenter:viewControllerToPresentFrom];

    [v11 displayPrivateBrowsingDenialAlert];
  }
}

- (void)openNewNormalTab:(id)tab
{
  v13 = *MEMORY[0x277D85DE8];
  tabCopy = tab;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      sf_commandSource = [tabCopy sf_commandSource];
    }

    else
    {
      sf_commandSource = @"Unknown";
    }

    v9 = 138543618;
    v10 = @"Open new normal tab";
    v11 = 2114;
    v12 = sf_commandSource;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "%{public}@ via %{public}@", &v9, 0x16u);
    if (v6)
    {
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  [(BrowserController *)self _pressedNewTabKeyWithOptions:isKindOfClass & 1 isKeyboardShortcut:?];
}

- (void)newTabGroupKeyPressed
{
  v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Create new Empty Tab Group via keyboard shortcut", buf, 2u);
  }

  tabController = self->_tabController;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__BrowserController_newTabGroupKeyPressed__block_invoke;
  v5[3] = &unk_2781D6660;
  v5[4] = self;
  [(TabController *)tabController createTabGroupFromExistingTabs:0 completionHandler:v5];
}

void __42__BrowserController_newTabGroupKeyPressed__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [MEMORY[0x277D499B8] sharedLogger];
    [v3 didCreateTabGroupFromLocation:8 prepopulatedWithTabs:0];

    if (SFEnhancedTabOverviewEnabled())
    {
      if ([*(*(a1 + 32) + 944) isShowingTabView])
      {
        v4 = [*(*(a1 + 32) + 944) tabSwitcherViewController];
        [v4 setNeedsApplyContentAnimated:1];

        v5 = [*(*(a1 + 32) + 944) tabSwitcherViewController];
        [v5 setNeedsScrollToTabGroup:v6];
      }
    }
  }
}

- (void)closeTabGroupKeyPressed
{
  v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Closing Tab Group via keyboard shortcut", v6, 2u);
  }

  tabController = self->_tabController;
  activeTabGroupOrTabGroupVisibleInSwitcher = [(TabController *)tabController activeTabGroupOrTabGroupVisibleInSwitcher];
  [(TabController *)tabController closeTabGroup:activeTabGroupOrTabGroupVisibleInSwitcher];
}

- (void)renameTabGroupKeyPressed
{
  v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Renaming Tab Group via keyboard shortcut", v6, 2u);
  }

  if (SFEnhancedTabOverviewEnabled() && [(TabCollectionViewProviding *)self->_tabCollectionViewProvider isShowingTabView])
  {
    tabSwitcherViewController = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabSwitcherViewController];
    [tabSwitcherViewController beginRenamingVisibleTabGroup];
  }

  else
  {
    tabController = self->_tabController;
    tabSwitcherViewController = [(TabController *)tabController activeTabGroup];
    [(TabController *)tabController renameTabGroup:tabSwitcherViewController];
  }
}

- (void)previousTabGroupKeyPressed
{
  v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Switching to previous Tab Group via keyboard shortcut", v6, 2u);
  }

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didSwitchToTabGroupFromLocation:8];

  if (SFEnhancedTabOverviewEnabled() && [(TabCollectionViewProviding *)self->_tabCollectionViewProvider isShowingTabView])
  {
    tabSwitcherViewController = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabSwitcherViewController];
    [tabSwitcherViewController scrollToPreviousTabGroup];
  }

  else
  {
    [(TabController *)self->_tabController selectPreviousTabGroup];
  }
}

- (void)nextTabGroupKeyPressed
{
  v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Switching to next Tab Group via keyboard shortcut", v6, 2u);
  }

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didSwitchToTabGroupFromLocation:8];

  if (SFEnhancedTabOverviewEnabled() && [(TabCollectionViewProviding *)self->_tabCollectionViewProvider isShowingTabView])
  {
    tabSwitcherViewController = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabSwitcherViewController];
    [tabSwitcherViewController scrollToNextTabGroup];
  }

  else
  {
    [(TabController *)self->_tabController selectNextTabGroup];
  }
}

- (void)newTabWithAlternativeOrderingKeyPressed
{
  v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Open new tab with alternative ordering keyboard shortcut", v4, 2u);
  }

  [(BrowserController *)self _pressedNewTabKeyWithOptions:1 isKeyboardShortcut:?];
}

- (void)_searchTabs
{
  if (self && SFEnhancedTabOverviewEnabled())
  {
    tabSwitcherViewController = [*(self + 944) tabSwitcherViewController];
    [tabSwitcherViewController beginSearching];
  }
}

- (void)_logTabClosingWithEventSender:(uint64_t)sender tabClosingAction:(uint64_t)action numberOfTabsClosed:
{
  v8 = a2;
  if (self)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    [(BrowserController *)self _logTabClosingWithKeyboardShortcut:sender tabClosingAction:action numberOfTabsClosed:?];
  }
}

- (void)_logTabClosingWithKeyboardShortcut:(uint64_t)shortcut tabClosingAction:(uint64_t)action numberOfTabsClosed:
{
  if (self)
  {
    visibleTabCollectionViewType = [*(self + 944) visibleTabCollectionViewType];
    if (a2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didCloseTabWithTrigger:v8 tabClosingAction:shortcut numberOfTabsClosed:action tabCollectionViewType:visibleTabCollectionViewType];
  }
}

- (void)closeActiveTab:(id)tab
{
  v14 = *MEMORY[0x277D85DE8];
  tabCopy = tab;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      sf_commandSource = [tabCopy sf_commandSource];
    }

    else
    {
      sf_commandSource = @"Unknown";
    }

    v10 = 138543618;
    v11 = @"Close tab";
    v12 = 2114;
    v13 = sf_commandSource;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ via %{public}@", &v10, 0x16u);
    if (v6)
    {
    }
  }

  [(BrowserController *)self _logTabClosingWithEventSender:tabCopy tabClosingAction:1 numberOfTabsClosed:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    if ([activeTabDocument isPinned])
    {
      selectFirstUnpinnedTab = [(TabController *)self->_tabController selectFirstUnpinnedTab];

      if (selectFirstUnpinnedTab)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  [(TabController *)self->_tabController closeTab];
LABEL_13:
}

- (void)closeOtherTabsKeyPressed
{
  v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Close Other Tabs via keyboard", v5, 2u);
  }

  [(BrowserController *)self showBars];
  currentTabs = [(TabController *)self->_tabController currentTabs];
  -[BrowserController _logTabClosingWithKeyboardShortcut:tabClosingAction:numberOfTabsClosed:](self, 1, 2, [currentTabs count] - 1);

  [(TabController *)self->_tabController closeOtherTabs];
}

- (void)_switchTabsByRelativeIndex:(void *)index withKeyCommand:
{
  indexCopy = index;
  if (self)
  {
    currentTabs = [*(self + 328) currentTabs];
    v6 = [currentTabs count];
    tabBeingActivated = [*(self + 328) tabBeingActivated];
    v8 = [currentTabs indexOfObject:tabBeingActivated];

    if (v8 + a2 >= v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 + a2;
    }

    if (v8 + a2 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6 - 1;
    }

    if (v10 != v8)
    {
      *(self + 136) = [indexCopy modifierFlags];
      v11 = *(self + 328);
      v12 = [currentTabs objectAtIndexedSubscript:v10];
      [v11 setActiveTab:v12 animated:1 deferActivation:1];
    }
  }
}

- (void)nextTabKeyPressed:(id)pressed
{
  pressedCopy = pressed;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = pressedCopy;
  }

  else
  {
    v4 = 0;
  }

  [(BrowserController *)self _switchTabsByRelativeIndex:v4 withKeyCommand:?];
}

- (void)previousTabKeyPressed:(id)pressed
{
  pressedCopy = pressed;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = pressedCopy;
  }

  else
  {
    v4 = 0;
  }

  [(BrowserController *)self _switchTabsByRelativeIndex:v4 withKeyCommand:?];
}

- (void)reopenLastClosedTabPressed
{
  [(TabController *)self->_tabController switchToTabGroupVisibleInSwitcherIfNeeded];
  _lastClosedTabStateData = [(BrowserController *)self _lastClosedTabStateData];
  mEMORY[0x277D28F00] = [MEMORY[0x277D28F00] sharedBrowserSavedState];
  [mEMORY[0x277D28F00] loadSessionStateDataAndRemoveRecentlyClosedTab:_lastClosedTabStateData];

  v4 = [[TabDocument alloc] initWithTabStateData:_lastClosedTabStateData hibernated:0 browserController:self];
  tabController = self->_tabController;
  activeTabDocument = [(TabController *)tabController activeTabDocument];
  [(TabController *)tabController insertTab:v4 afterTab:activeTabDocument inBackground:0 animated:1];

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didOpenNewTabWithURLWithTrigger:4 tabCollectionViewType:{-[TabCollectionViewProviding visibleTabCollectionViewType](self->_tabCollectionViewProvider, "visibleTabCollectionViewType")}];

  undoManager = [(TabController *)self->_tabController undoManager];
  [undoManager removeAllActions];
}

- (void)toggleDownloadsKeyPressed
{
  v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Open downloads via keyboard shortcut", v4, 2u);
  }

  [(BrowserController *)self presentDownloadsViewController];
}

- (void)arrangeTabsByTitle:(id)title
{
  tabController = self->_tabController;
  activeTabGroupUUID = [(TabController *)tabController activeTabGroupUUID];
  [TabController sortTabsInTabGroupWithUUIDString:"sortTabsInTabGroupWithUUIDString:withSortMode:" withSortMode:?];
}

- (void)arrangeTabsByWebsite:(id)website
{
  tabController = self->_tabController;
  activeTabGroupUUID = [(TabController *)tabController activeTabGroupUUID];
  [TabController sortTabsInTabGroupWithUUIDString:"sortTabsInTabGroupWithUUIDString:withSortMode:" withSortMode:?];
}

- (void)addCurrentPageToHomeScreen:(id)screen
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v4 = objc_alloc(MEMORY[0x277CDB6B0]);
  webView = self->_webView;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__BrowserController_addCurrentPageToHomeScreen___block_invoke;
  v9[3] = &unk_2781D6688;
  v9[4] = &v10;
  v6 = [v4 initWithWebView:webView completion:v9];
  v7 = v11[5];
  v11[5] = v6;

  viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
  [viewControllerToPresentFrom presentViewController:v11[5] animated:1 completion:0];

  _Block_object_dispose(&v10, 8);
}

void __48__BrowserController_addCurrentPageToHomeScreen___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)showManageExtensions:(id)extensions
{
  v4 = MEMORY[0x277D28CB8];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  v7 = [v4 createManageExtensionsNavigationControllerFromPageFormatMenu:0 activeDocument:activeTabDocument];

  viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
  [viewControllerToPresentFrom presentViewController:v7 animated:1 completion:0];
}

- (void)clearHistory:(id)history
{
  v5 = objc_alloc_init(SafariClearBrowsingDataController);
  objc_storeStrong(&self->_clearBrowsingDataController, v5);
  [(SafariClearBrowsingDataController *)v5 setTabGroupProvider:self->_tabController];
  rootViewController = [(BrowserController *)self rootViewController];
  [(SafariClearBrowsingDataController *)v5 showClearHistoryMenuFromViewController:rootViewController];
}

- (void)closeAllWindows:(id)windows
{
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  [WeakRetained closeAllWindowsFromWindow:self];
}

- (void)duplicateCurrentTab:(id)tab
{
  tabController = self->_tabController;
  activeTabDocument = [(TabController *)tabController activeTabDocument];
  v4 = [(TabController *)tabController duplicateTab:?];
}

- (void)toggleAllPrivateWindowsLocked:(id)locked
{
  v5 = +[Application sharedApplication];
  isPrivateBrowsingLocked = [v5 isPrivateBrowsingLocked];

  if (isPrivateBrowsingLocked)
  {

    [(BrowserController *)self authenticateToUnlockPrivateBrowsing];
  }

  else
  {
    v6 = +[Application sharedApplication];
    [v6 lockPrivateBrowsing];
  }
}

- (void)importBrowsingData:(id)data
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilesafari/SAFARI#IMPORT_BUTTON"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];
}

- (void)exportBrowsingData:(id)data
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilesafari/SAFARI#EXPORT_BUTTON"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];
}

- (void)manageProfiles:(id)profiles
{
  if ([(WBTabGroupManager *)self->_tabGroupManager hasMultipleProfiles])
  {
    v4 = MEMORY[0x277CCACA8];
    profiles = [(WBTabGroupManager *)self->_tabGroupManager profiles];
    firstObject = [profiles firstObject];
    identifier = [firstObject identifier];
    v7 = [v4 stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilesafari/SAFARI#PROFILE_%@", identifier];

    v8 = v7;
  }

  else
  {
    v8 = @"settings-navigation://com.apple.Settings.Apps/com.apple.mobilesafari/SAFARI#NEW_PROFILE";
  }

  v12 = v8;
  v9 = [MEMORY[0x277CBEBC0] URLWithString:?];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v9 withOptions:0];
}

- (void)moveCurrentTabToNewWindow:(id)window
{
  v8[1] = *MEMORY[0x277D85DE8];
  tabMenuProviderDataSource = [(TabController *)self->_tabController tabMenuProviderDataSource];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  wbTab = [activeTabDocument wbTab];
  v8[0] = wbTab;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [tabMenuProviderDataSource moveTabsToNewWindow:v7];
}

- (void)showSettingsForCurrentPage:(id)page
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument perSiteSettingsUIPresentSettings];
}

- (void)toggleContentBlockers:(id)blockers
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument reloadDisablingContentBlockers:{objc_msgSend(activeTabDocument, "wasLoadedWithContentBlockersEnabled")}];
}

- (void)toggleTabMediaState:(id)state
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  mediaStateIcon = [activeTabDocument mediaStateIcon];

  if (mediaStateIcon)
  {
    [(TabController *)self->_tabController activeTabDocument];
  }

  else
  {
    SFBrowserContentControllerOtherTabWithSound();
  }
  v6 = ;
  [v6 toggleMediaStateMuted];
}

- (void)reloadKeyPressed
{
  [(BrowserController *)self dismissTransientUIAnimated:1];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument reloadUserInitiated];
}

- (void)reloadFromOriginKeyPressed
{
  [(BrowserController *)self dismissTransientUIAnimated:1];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument reloadFromOriginUserInitiated];
}

- (void)find:(id)find
{
  if ([(BrowserController *)self _showingTabDocumentWithURL])
  {
    tabController = [(BrowserController *)self tabController];
    activeTabDocument = [tabController activeTabDocument];
    [activeTabDocument showFindOnPage];

    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didFindOnPageWithTrigger:0];
  }

  else
  {

    [(BrowserController *)self _searchTabs];
  }
}

- (void)shareCurrentPage:(id)page
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if (![activeTabDocument isBlank])
  {
    goto LABEL_9;
  }

  v6 = +[FeatureManager sharedFeatureManager];
  if (([v6 areSharedTabGroupsEnabled] & 1) == 0)
  {

LABEL_9:
LABEL_10:
    [(BrowserController *)self _presentActivityViewController];
    if (page)
    {
      return;
    }

    goto LABEL_5;
  }

  activeTabGroup = [(TabController *)self->_tabController activeTabGroup];
  isSyncable = [activeTabGroup isSyncable];

  if (!isSyncable)
  {
    goto LABEL_10;
  }

  tabGroupShareSheetForCurrentTabGroup = [(TabController *)self->_tabController tabGroupShareSheetForCurrentTabGroup];
  [(BrowserController *)self _presentModalViewController:tabGroupShareSheetForCurrentTabGroup fromBarItem:6 completion:0];

  if (page)
  {
    return;
  }

LABEL_5:
  v10 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_215819000, v10, OS_LOG_TYPE_DEFAULT, "Tap actions button from the toolbar", v12, 2u);
  }

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportIOSToolbarButtonUsage:3 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
}

- (void)takeFindStringKeyPressed
{
  self->_shouldFillStringForFind = 1;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  activeWebView = [activeTabDocument activeWebView];
  [activeWebView _takeFindStringFromSelection:0];
}

- (void)cancelKeyPressed
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  sfScribbleControllerIfLoaded = [activeTabDocument sfScribbleControllerIfLoaded];

  if ([sfScribbleControllerIfLoaded isScribbling])
  {
    [sfScribbleControllerIfLoaded endScribblingAndSaveChanges:0];
    goto LABEL_8;
  }

  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState] == 1)
  {
  }

  else
  {
    presentationState = [tabThumbnailCollectionView presentationState];

    if (presentationState != 2)
    {
      if ([(BrowserController *)self isShowingFavorites])
      {
        [(BrowserController *)self cancelFavorites];
      }

      else if ([(BrowserController *)self isShowingReader])
      {
        [(BrowserController *)self setShowingReader:0 animated:1];
      }

      else if (![(BrowserController *)self dismissTransientUIAnimated:1])
      {
        activeTabDocument2 = [(TabController *)self->_tabController activeTabDocument];
        [activeTabDocument2 stopLoadingUserInitiated];
      }

      goto LABEL_7;
    }
  }

  [tabThumbnailCollectionView dismissAnimated:1];
LABEL_7:

LABEL_8:
}

- (void)_emailCurrentPageWithPreferredContentType:(uint64_t)type
{
  if (type)
  {
    activeTabDocument = [*(type + 328) activeTabDocument];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__BrowserController__emailCurrentPageWithPreferredContentType___block_invoke;
    v5[3] = &unk_2781D66D8;
    v5[4] = type;
    v5[5] = a2;
    [activeTabDocument fetchCanonicalURLWithCompletionHandler:v5];
  }
}

void __63__BrowserController__emailCurrentPageWithPreferredContentType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(BrowserController *)*(a1 + 32) _mailContentProvider];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__BrowserController__emailCurrentPageWithPreferredContentType___block_invoke_2;
  v6[3] = &unk_2781D66B0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  [v4 getMailComposeViewControllerWithMailToURL:0 contentURL:v3 preferredContentType:v5 completionHandler:v6];
}

- (void)_presentModalViewController:(void *)controller
{
  v3 = a2;
  if (controller)
  {
    [(BrowserController *)controller _presentModalViewController:v3 fromBarItem:*MEMORY[0x277D291C0] animated:1 completion:0];
  }
}

- (void)increaseSize:(id)size
{
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Zoom In via keyboard shortcut", v7, 2u);
  }

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if ([activeTabDocument isShowingReader])
  {
    readerContext = [activeTabDocument readerContext];
    if ([readerContext canIncreaseReaderTextSize])
    {
      [readerContext increaseReaderTextSize];
    }
  }

  else
  {
    [activeTabDocument increasePageZoomSetting];
  }
}

- (void)decreaseSize:(id)size
{
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Zoom Out via keyboard shortcut", v7, 2u);
  }

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if ([activeTabDocument isShowingReader])
  {
    readerContext = [activeTabDocument readerContext];
    if ([readerContext canDecreaseReaderTextSize])
    {
      [readerContext decreaseReaderTextSize];
    }
  }

  else
  {
    [activeTabDocument decreasePageZoomSetting];
  }
}

- (void)resetPageZoomLevelAndFontSize
{
  v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Reset Zoom via keyboard shortcut", v6, 2u);
  }

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if ([activeTabDocument isShowingReader])
  {
    readerContext = [activeTabDocument readerContext];
    [readerContext resetReaderTextSize];
  }

  else
  {
    [activeTabDocument resetPageZoomSetting];
  }
}

- (void)_presentSaveWebpageViewController
{
  if (self && [(BrowserController *)self _canSaveWebpage])
  {
    activeTabDocument = [*(self + 328) activeTabDocument];
    v5 = [ActionPanel createActivityItemProviderCollectionForTabDocument:activeTabDocument];

    v3 = [objc_alloc(MEMORY[0x277CDB8A0]) initWithActivityItemProviderCollection:v5];
    v4 = *(self + 280);
    *(self + 280) = v3;

    [*(self + 280) setDelegate:self];
    [*(self + 280) start];
  }
}

- (void)autoFillFormKeyPressed
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument performPageLevelAutoFill];
}

- (void)closeAllTabsMatchingSearch:(id)search
{
  searchCopy = search;
  tabsMatchingSearchTerm = [(TabController *)self->_tabController tabsMatchingSearchTerm];
  -[BrowserController _logTabClosingWithEventSender:tabClosingAction:numberOfTabsClosed:](self, searchCopy, 4, [tabsMatchingSearchTerm count]);
  tabController = self->_tabController;
  v7 = _WBSLocalizedString();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__BrowserController_closeAllTabsMatchingSearch___block_invoke;
  v9[3] = &unk_2781D61F8;
  v9[4] = self;
  v8 = tabsMatchingSearchTerm;
  v10 = v8;
  [(TabController *)tabController registerUndoWithName:v7 actions:v9];
}

- (void)closeAllTabs:(id)tabs
{
  tabsCopy = tabs;
  v5 = MEMORY[0x277D75110];
  _closeAllTabsLabel = [(BrowserController *)self _closeAllTabsLabel];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __34__BrowserController_closeAllTabs___block_invoke;
  v16 = &unk_2781D61F8;
  v7 = tabsCopy;
  v17 = v7;
  selfCopy = self;
  v8 = [v5 safari_closeAllTabsConfirmationWithCloseAllLabel:_closeAllTabsLabel closeHandler:&v13];

  v9 = [(BrowserController *)self tabBarManager:v13];
  if ([v9 displayMode] == 1)
  {
    tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    presentationState = [tabThumbnailCollectionView presentationState];

    if (presentationState)
    {
      v12 = 8;
    }

    else
    {
      v12 = 7;
    }
  }

  else
  {

    v12 = 8;
  }

  [(BrowserController *)self _presentModalViewController:v8 fromBarItem:v12 completion:0];
}

uint64_t __34__BrowserController_closeAllTabs___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_respondsToSelector();
    if (v3)
    {
      v4 = [*(a1 + 32) sf_commandSource];
    }

    else
    {
      v4 = @"Unknown";
    }

    v9 = 138543618;
    v10 = @"Close all tab";
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ via %{public}@", &v9, 0x16u);
    if (v3)
    {
    }
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = [*(v5 + 328) currentTabs];
  -[BrowserController _logTabClosingWithEventSender:tabClosingAction:numberOfTabsClosed:](v5, v6, 3, [v7 count]);

  return [*(*(a1 + 40) + 328) closeAllOpenTabsAnimated:1];
}

- (void)addAllTabsToBookmarks:(id)bookmarks
{
  v12 = *MEMORY[0x277D85DE8];
  bookmarksCopy = bookmarks;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      sf_commandSource = [bookmarksCopy sf_commandSource];
    }

    else
    {
      sf_commandSource = @"Unknown";
    }

    v8 = 138543618;
    v9 = @"Add all to bookmarks";
    v10 = 2114;
    v11 = sf_commandSource;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ via %{public}@", &v8, 0x16u);
    if (v6)
    {
    }
  }

  [(BrowserController *)self addBookmarkFolderForCurrentTabs];
}

- (void)openNewWindow:(id)window
{
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  [WeakRetained openNewWindowWithPrivateBrowsingEnabled:0 fromWindow:self];
}

- (void)openNewTabOrWindow:(id)window
{
  windowCopy = window;
  if ([(BrowserController *)self effectiveNewDocumentShortcutBehavior])
  {
    [(BrowserController *)self openNewWindowInFrontmostProfile:windowCopy];
  }

  else
  {
    [(BrowserController *)self openNewTab:windowCopy];
  }
}

- (void)openNewWindowInFrontmostProfile:(id)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  activeProfile = [(TabController *)self->_tabController activeProfile];
  [WeakRetained openNewWindowInProfile:activeProfile withPrivateBrowsingEnabled:0 fromWindow:self];
}

- (void)openNewWindowInProfile:(id)profile
{
  profileCopy = profile;
  propertyList = [profileCopy propertyList];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  propertyList2 = [profileCopy propertyList];

  if (!propertyList2)
  {
LABEL_6:
    WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
    propertyList2 = 0;
    goto LABEL_7;
  }

  tabGroupManager = [(TabController *)self->_tabController tabGroupManager];
  v7 = [tabGroupManager profileWithIdentifier:propertyList2];

  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  if (v7)
  {
    v9 = 0;
    activeProfile = v7;
    goto LABEL_8;
  }

LABEL_7:
  activeProfile = [(TabController *)self->_tabController activeProfile];
  v7 = 0;
  v9 = 1;
LABEL_8:
  [WeakRetained openNewWindowInProfile:activeProfile withPrivateBrowsingEnabled:0 fromWindow:self];
  if (v9)
  {
  }
}

- (void)openNewPrivateWindow:(id)window
{
  if ([(BrowserController *)self isPrivateBrowsingAvailable])
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
    [WeakRetained openNewWindowWithPrivateBrowsingEnabled:1 fromWindow:self];
    v5 = WeakRetained;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D4A740]);
    viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
    v8 = [v6 initWithPresenter:viewControllerToPresentFrom];

    [v8 displayPrivateBrowsingDenialAlert];
    v5 = v8;
  }
}

- (void)mergeAllWindows:(id)windows
{
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  [WeakRetained mergeAllWindowsIntoWindow:self];
}

- (void)_pasteAndNavigate
{
  if (val)
  {
    objc_initWeak(&location, val);
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __38__BrowserController__pasteAndNavigate__block_invoke;
    v2[3] = &unk_2781D6700;
    objc_copyWeak(&v3, &location);
    [generalPasteboard safari_bestStringForPastingIntoURLFieldCompletionHandler:v2];

    objc_destroyWeak(&v3);
    objc_destroyWeak(&location);
  }
}

void __38__BrowserController__pasteAndNavigate__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [MEMORY[0x277D28F40] builder];
  v5 = [v4 navigationIntentWithText:v6];
  [WeakRetained dispatchNavigationIntent:v5];
}

- (void)scribbleDoneKeyPressed
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  sfScribbleControllerIfLoaded = [activeTabDocument sfScribbleControllerIfLoaded];
  [sfScribbleControllerIfLoaded endScribblingAndSaveChanges:1];
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  if (_SFDeviceIsPad())
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    isShowingFindOnPage = [activeTabDocument isShowingFindOnPage];

    if (isShowingFindOnPage)
    {
      [(UIScrollView *)self->_scrollView _adjustForAutomaticKeyboardInfo:userInfo animated:1 lastAdjustment:&self->_lastAdjustmentForKeyboard];
    }
  }

  firstResponder = [(BrowserController *)self firstResponder];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [firstResponder isDescendantOfView:self->_webView])
  {
    [(BrowserController *)self setOverridesUndoManagerForClosedTabs:0];
  }

  if (![(BrowserRootViewController *)self->_rootViewController isPerformingSizeTransition])
  {
    [(BrowserRootViewController *)self->_rootViewController updateWebViewSizeAttributes];
  }
}

- (void)_keyboardWillHide:(id)hide
{
  hideCopy = hide;
  userInfo = [hideCopy userInfo];
  [(BrowserRootViewController *)self->_rootViewController updateWebViewSizeAttributes];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if ([activeTabDocument isShowingFindOnPage])
  {
    [(UIScrollView *)self->_scrollView _adjustForAutomaticKeyboardInfo:userInfo animated:1 lastAdjustment:&self->_lastAdjustmentForKeyboard];
  }

  [activeTabDocument keyboardWillHide:hideCopy];
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained browserControllerLayOutCatalogView:self];
}

- (void)clearBadgeOnPageFormatMenu
{
  tabController = [(BrowserController *)self tabController];
  activeTabDocument = [tabController activeTabDocument];

  webExtensionsController = [activeTabDocument webExtensionsController];
  [webExtensionsController didViewToolbarItemBadgesInTab:activeTabDocument];
}

- (void)toggleShowingReaderForUserAction
{
  [(BrowserController *)self cancelFavorites];
  isShowingReader = [(BrowserController *)self isShowingReader];
  v4 = isShowingReader;
  [(BrowserController *)self setShowingReader:!isShowingReader animated:1];
  if (!v4)
  {
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didActivateReaderWithTrigger:0];
  }
}

- (void)setKeepBarsMinimized:(BOOL)minimized
{
  minimizedCopy = minimized;
  if ([(BrowserRootViewController *)self->_rootViewController keepBarsMinimized]!= minimized)
  {
    [(BrowserRootViewController *)self->_rootViewController setKeepBarsMinimized:minimizedCopy];
    if (minimizedCopy)
    {
      dynamicBarAnimator = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
      [(BrowserController *)self updateDynamicBarGeometry];
      [dynamicBarAnimator attemptTransitionToState:0 animated:1];
      capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
      [capsuleViewController transitionToState:1 animated:1 completionHandler:0];
    }

    rootViewController = self->_rootViewController;

    [(BrowserRootViewController *)rootViewController updateAccessibilityIdentifier];
  }
}

- (BOOL)hasUnviewedDownloads
{
  mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
  hasUnviewedDownloads = [mEMORY[0x277CDB7A8] hasUnviewedDownloads];

  return hasUnviewedDownloads;
}

- (unint64_t)downloadsCount
{
  mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
  downloads = [mEMORY[0x277CDB7A8] downloads];
  v4 = [downloads count];

  return v4;
}

- (_SFPageZoomPreferenceManager)pageZoomManager
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  v4 = [(BrowserController *)self pageZoomPreferenceManagerForTabDocument:activeTabDocument];

  return v4;
}

- (BOOL)hasDedicatedMediaStateButton
{
  IsPad = _SFDeviceIsPad();
  if (IsPad)
  {
    rootViewController = self->_rootViewController;

    LOBYTE(IsPad) = [(BrowserRootViewController *)rootViewController usingUnifiedBar];
  }

  return IsPad;
}

- (BOOL)hasDedicatedDownloadsToolbarItem
{
  tabBarManager = [(BrowserController *)self tabBarManager];
  inlineTabBar = [tabBarManager inlineTabBar];

  IsPad = _SFDeviceIsPad();
  if (inlineTabBar)
  {
    v5 = IsPad;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == 1)
  {
    v6 = [inlineTabBar usesMoreMenu] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)willPresentBrowsingAssistantInSheet:(BOOL)sheet
{
  if (sheet)
  {
    capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    capsuleCollectionView = [capsuleViewController capsuleCollectionView];
    [capsuleCollectionView setHidingStyle:1];
    [capsuleCollectionView beginHiddenExemptionForCapsule];
    [capsuleViewController beginHidingCapsuleAnimated:1 reason:@"page menu"];
  }
}

- (void)willDismissBrowsingAssistantInSheet:(BOOL)sheet
{
  if (sheet)
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    mEMORY[0x277D49E30] = [MEMORY[0x277D49E30] sharedManager];
    assistantController = [activeTabDocument assistantController];
    webpageIdentifier = [assistantController webpageIdentifier];
    [mEMORY[0x277D49E30] donateBrowsingAssistantVisualComponentPresentationEndedWithWebPageID:webpageIdentifier componentType:1 componentIdentifier:&unk_2827FBEC0 hideReason:0];

    capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    capsuleCollectionView = [capsuleViewController capsuleCollectionView];
    [capsuleCollectionView endHiddenExemptionForCapsule];
    if (([(_SFPageFormatMenuController *)self->_pageFormatMenuController stepperIsInTransitionView]& 1) == 0)
    {
      [(BrowserController *)self _unhideCapsuleFromPageMenu];
    }
  }
}

- (void)_unhideCapsuleFromPageMenu
{
  if (self)
  {
    *(self + 664) = 0;
    capsuleViewController = [*(self + 264) capsuleViewController];
    capsuleCollectionView = [capsuleViewController capsuleCollectionView];
    [capsuleViewController endHidingCapsuleAnimated:1 reason:@"page menu"];
    [capsuleCollectionView setHidingStyle:0];
  }
}

- (void)unhideCapsuleFromPageMenuIfNeeded
{
  if (self->_stepperMovedToRootView)
  {
    [(BrowserController *)self _unhideCapsuleFromPageMenu];
  }
}

- (void)addToFavorites
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  titleForNewBookmark = [activeTabDocument titleForNewBookmark];
  [(BrowserController *)&self->super.super.super.isa _addBookmarkForCurrentTabKeyPressed:titleForNewBookmark title:1 addToFavorites:?];
}

- (void)_addBookmarkForCurrentTabKeyPressed:(void *)pressed title:(int)title addToFavorites:
{
  pressedCopy = pressed;
  if (self)
  {
    v8 = objc_alloc(MEMORY[0x277CDB8C8]);
    mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    if (title)
    {
      v10 = [v8 initForAddingToFavoritesInCollection:mainBookmarkCollection];
    }

    else
    {
      v10 = [v8 initWithCollection:mainBookmarkCollection];
    }

    v11 = v10;

    [v11 setSyntheticBookmarkProvider:self[41]];
    if ([v11 prepareForPresentationForAddingBookmark:1])
    {
      activeTabDocument = [self[41] activeTabDocument];
      cachedCanonicalURLOrURLForSharing = [activeTabDocument cachedCanonicalURLOrURLForSharing];
      absoluteString = [cachedCanonicalURLOrURLForSharing absoluteString];
      v15 = [v11 addBookmarkWithTitle:pressedCopy address:absoluteString parentBookmark:0];

      [v11 setBookmarkNavDelegate:self];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __78__BrowserController__addBookmarkForCurrentTabKeyPressed_title_addToFavorites___block_invoke;
      v19[3] = &__block_descriptor_33_e5_v8__0l;
      v20 = a2;
      [v11 setAddBookmarkAnalyticsHandler:v19];
      [self _presentModalViewController:v11 fromBarItem:*MEMORY[0x277D291C0] completion:0];
    }

    else
    {

      v16 = MEMORY[0x277D28BE0];
      viewControllerToPresentFrom = [self viewControllerToPresentFrom];
      [v16 showLockedDatabaseAlertForAction:1 fromViewController:viewControllerToPresentFrom];

      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] didPreventBookmarkActionWithBookmarkType:0 actionType:0];

      v11 = 0;
    }
  }
}

- (BOOL)canAddToQuickNote
{
  v3 = +[Application sharedApplication];
  systemNoteTakingController = [v3 systemNoteTakingController];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  v6 = [systemNoteTakingController isNoteTakingSupportedWithPrivateBrowsing:{objc_msgSend(activeTabDocument, "isPrivateBrowsingEnabled")}];

  return v6;
}

- (void)addToQuickNote
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument addAppHighlightCreatingLink:1];
}

- (BOOL)canPrintCurrentTab
{
  selfCopy = self;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  LOBYTE(selfCopy) = [(BrowserController *)selfCopy _canPrintForTabDocument:activeTabDocument];

  return selfCopy;
}

- (BOOL)canMoveToTabGroup
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  v3 = +[FeatureManager sharedFeatureManager];
  if ([v3 isCustomTabGroupsEnabled] && (objc_msgSend(activeTabDocument, "isPrivateBrowsingEnabled") & 1) == 0)
  {
    v4 = [activeTabDocument isPinned] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)moveMenuOnPageMenuWithDismissHandler:(id)handler
{
  v3 = [(TabController *)self->_tabController moveMenuOnPageMenuWithDismissHandler:handler];

  return v3;
}

- (BOOL)canTogglePinningTab
{
  tabController = self->_tabController;
  activeTabDocument = [(TabController *)tabController activeTabDocument];
  wbTab = [activeTabDocument wbTab];
  LOBYTE(tabController) = [(TabController *)tabController isTabPinnable:wbTab];

  return tabController;
}

- (BOOL)currentTabIsPinned
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  isPinned = [activeTabDocument isPinned];

  return isPinned;
}

- (void)togglePinningCurrentTab
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  -[TabController setTab:isPinned:](self->_tabController, "setTab:isPinned:", activeTabDocument, [activeTabDocument isPinned] ^ 1);
}

- (BOOL)canFindOnPage
{
  if (![(BrowserController *)self _showingTabDocumentWithURL])
  {
    return 0;
  }

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  canFindOnPage = [activeTabDocument canFindOnPage];

  return canFindOnPage;
}

- (void)presentPrintControllerForCurrentTab
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [BrowserController presentPrintControllerForTabDocument:"presentPrintControllerForTabDocument:frame:initiatedByWebContent:" frame:? initiatedByWebContent:?];
}

- (void)reportScribbleFeedbackForSelectedRowIndex:(int64_t)index
{
  if (index >= 3)
  {
    indexCopy = 3;
  }

  else
  {
    indexCopy = index;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  committedURL = [activeTabDocument committedURL];
  safari_URLByRemovingQuery = [committedURL safari_URLByRemovingQuery];
  absoluteString = [safari_URLByRemovingQuery absoluteString];
  [dictionary setObject:absoluteString forKeyedSubscript:*MEMORY[0x277D4A440]];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:indexCopy];
  [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277D4A428]];

  currentDevice = [MEMORY[0x277D499F0] currentDevice];
  LODWORD(committedURL) = [currentDevice deviceClass];

  if (committedURL == 3)
  {
    v12 = @"iPad";
  }

  else
  {
    v12 = @"iPhone";
  }

  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277D4A420]];
  activeTabDocument2 = [(TabController *)self->_tabController activeTabDocument];
  webView = [activeTabDocument2 webView];

  [webView bounds];
  v16 = v15;
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  [dictionary setObject:v18 forKeyedSubscript:*MEMORY[0x277D4A450]];

  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277D4A448]];

  v20 = MEMORY[0x277CCABB0];
  scrollView = [webView scrollView];
  [scrollView zoomScale];
  v22 = [v20 numberWithDouble:?];
  [dictionary setObject:v22 forKeyedSubscript:*MEMORY[0x277D4A460]];

  v23 = MEMORY[0x277CCABB0];
  [webView _viewScale];
  v24 = [v23 numberWithDouble:?];
  [dictionary setObject:v24 forKeyedSubscript:*MEMORY[0x277D4A458]];

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  safari_operatingSystemVersionString = [processInfo safari_operatingSystemVersionString];
  [dictionary setObject:safari_operatingSystemVersionString forKeyedSubscript:*MEMORY[0x277D4A430]];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  safari_normalizedVersion = [mainBundle safari_normalizedVersion];
  [dictionary setObject:safari_normalizedVersion forKeyedSubscript:*MEMORY[0x277D4A438]];

  v29 = +[Application sharedApplication];
  scribbleFeedbackSyncEngine = [v29 scribbleFeedbackSyncEngine];
  v31 = [dictionary copy];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __63__BrowserController_reportScribbleFeedbackForSelectedRowIndex___block_invoke;
  v32[3] = &unk_2781D6728;
  v32[4] = self;
  v32[5] = indexCopy;
  [scribbleFeedbackSyncEngine syncScribbleFeedbackUp:v31 withCompletion:v32];
}

void __63__BrowserController_reportScribbleFeedbackForSelectedRowIndex___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D49A08] isInternalInstall])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __63__BrowserController_reportScribbleFeedbackForSelectedRowIndex___block_invoke_2;
    v3[3] = &unk_2781D6728;
    v2 = *(a1 + 40);
    v3[4] = *(a1 + 32);
    v3[5] = v2;
    dispatch_async(MEMORY[0x277D85CD0], v3);
  }
}

void __63__BrowserController_reportScribbleFeedbackForSelectedRowIndex___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) activeDocument];
  v2 = [v3 sfScribbleController];
  [v2 openFeedbackAppForScribbleReportIssueCategory:*(a1 + 40)];
}

- (void)reportWebCompatibilityFeedbackForActiveTabDocumentWithIssueCategory:(int64_t)category subCategory:(int64_t)subCategory
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  committedURL = [activeTabDocument committedURL];
  safari_URLByRemovingQuery = [committedURL safari_URLByRemovingQuery];
  absoluteString = [safari_URLByRemovingQuery absoluteString];
  [dictionary setObject:absoluteString forKeyedSubscript:*MEMORY[0x277D4A638]];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x277D4A5F8]];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:subCategory];
  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277D4A600]];

  currentDevice = [MEMORY[0x277D499F0] currentDevice];
  deviceClass = [currentDevice deviceClass];

  switch(deviceClass)
  {
    case 1:
      v15 = @"iPhone";
      break;
    case 3:
      v15 = @"iPad";
      break;
    case 11:
      v15 = @"Vision";
      break;
    default:
      v15 = @"Unknown";
      break;
  }

  [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277D4A5E8]];
  [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x277D4A5F0]];
  activeTabDocument2 = [(TabController *)self->_tabController activeTabDocument];
  v17 = activeTabDocument2;
  if (activeTabDocument2)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(activeTabDocument2, "wasLoadedWithLockdownModeEnabled")}];
    [dictionary setObject:v18 forKeyedSubscript:*MEMORY[0x277D4A608]];

    v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "wasLoadedWithPrivateRelay")}];
    [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277D4A628]];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D4A608]];
    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D4A628]];
  }

  activeTabDocument3 = [(TabController *)self->_tabController activeTabDocument];
  webView = [activeTabDocument3 webView];

  [webView bounds];
  v23 = v22;
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
  [dictionary setObject:v25 forKeyedSubscript:*MEMORY[0x277D4A648]];

  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
  [dictionary setObject:v26 forKeyedSubscript:*MEMORY[0x277D4A640]];

  v27 = MEMORY[0x277CCABB0];
  [webView _pageZoomFactor];
  v28 = [v27 numberWithDouble:?];
  [dictionary setObject:v28 forKeyedSubscript:*MEMORY[0x277D4A658]];

  v29 = MEMORY[0x277CCABB0];
  [webView _viewScale];
  v30 = [v29 numberWithDouble:?];
  [dictionary setObject:v30 forKeyedSubscript:*MEMORY[0x277D4A650]];

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  safari_operatingSystemVersionString = [processInfo safari_operatingSystemVersionString];
  [dictionary setObject:safari_operatingSystemVersionString forKeyedSubscript:*MEMORY[0x277D4A620]];

  v33 = *MEMORY[0x277D4A618];
  [dictionary setObject:&stru_2827BF158 forKeyedSubscript:*MEMORY[0x277D4A618]];
  v34 = *MEMORY[0x277D4A610];
  [dictionary setObject:&stru_2827BF158 forKeyedSubscript:*MEMORY[0x277D4A610]];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  safari_normalizedVersion = [mainBundle safari_normalizedVersion];
  [dictionary setObject:safari_normalizedVersion forKeyedSubscript:*MEMORY[0x277D4A630]];

  v37 = _CFCopySupplementalVersionDictionary();
  v38 = v37;
  if (v37)
  {
    v39 = [v37 objectForKeyedSubscript:*MEMORY[0x277CBEC80]];
    if (v39)
    {
      [dictionary setObject:v39 forKeyedSubscript:v33];
    }

    v40 = [v38 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
    if (v40)
    {
      [dictionary setObject:v40 forKeyedSubscript:v34];
    }
  }

  v41 = +[Application sharedApplication];
  webCompatibilityFeedbackSyncEngine = [v41 webCompatibilityFeedbackSyncEngine];
  v43 = [dictionary copy];
  [webCompatibilityFeedbackSyncEngine saveWebCompatibilityFeedback:v43 completionHandler:&__block_literal_global_773];
}

- (void)collectDiagnosticsForAutoFillWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  autoFillController = [activeTabDocument autoFillController];
  [autoFillController collectDiagnosticsForAutoFillWithCompletionHandler:handlerCopy];
}

- (void)presentAutoFillInternalFeedbackToastWithDiagnosticsDataWithoutPageContents:(id)contents
{
  contentsCopy = contents;
  v4 = [objc_alloc(MEMORY[0x277D28BC0]) initWithDiagnosticsData:contentsCopy];
  [v4 setDelegate:self];
  v5 = [objc_alloc(MEMORY[0x277D28E48]) initWithContentViewController:v4];
  [v5 setDelegate:self];
  [v5 setDismissalMode:1];
  objc_storeWeak(&self->_activeAutoFillInternalFeedbackToastController, v5);
  [(BrowserController *)self _presentToastViewControllerQueuingIfNecessary:v5];
  [(BrowserController *)self _scheduleAutoFillInternalFeedbackToastDismissal];
}

- (void)_scheduleAutoFillInternalFeedbackToastDismissal
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 648));
    if (WeakRetained)
    {
      objc_initWeak(&location, self);
      v3 = MEMORY[0x277CBEBB8];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __68__BrowserController__scheduleAutoFillInternalFeedbackToastDismissal__block_invoke;
      v6[3] = &unk_2781D64B0;
      objc_copyWeak(&v8, &location);
      v7 = WeakRetained;
      v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:10.0];
      v5 = *(self + 640);
      *(self + 640) = v4;

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

- (void)dismissAutoFillInternalFeedbackToastImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  WeakRetained = objc_loadWeakRetained(&self->_activeAutoFillInternalFeedbackToastController);
  if (WeakRetained)
  {
    if (immediatelyCopy)
    {
      [(BrowserController *)self _cancelPendingAutoFillInternalFeedbackToastDismissal];
      [(BrowserController *)&self->super.super.super.isa _dismissAutoFillInternalFeedbackToast:?];
    }

    else
    {
      [(BrowserController *)self resetPendingAutoFillInternalFeedbackToastDismissalTimer];
    }
  }
}

- (void)_dismissAutoFillInternalFeedbackToast:(id *)toast
{
  v4 = a2;
  if (toast)
  {
    WeakRetained = objc_loadWeakRetained(toast + 81);

    if (WeakRetained == v4)
    {
      objc_storeWeak(toast + 81, 0);
      if (toast[68] == v4)
      {
        [toast dismissToastViewController:v4];
      }

      else
      {
        [toast[69] removeObject:v4];
      }
    }
  }
}

- (void)resetPendingAutoFillInternalFeedbackToastDismissalTimer
{
  if ([(NSTimer *)self->_activeAutoFillInternalFeedbackToastDismissalTimer isValid])
  {
    [(BrowserController *)self _cancelPendingAutoFillInternalFeedbackToastDismissal];

    [(BrowserController *)self _scheduleAutoFillInternalFeedbackToastDismissal];
  }
}

void __68__BrowserController__scheduleAutoFillInternalFeedbackToastDismissal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(BrowserController *)WeakRetained _dismissAutoFillInternalFeedbackToast:?];
}

- (void)autoFillInternalFeedbackActivityNotice:(id)notice shouldPresentFeedbackForm:(BOOL)form
{
  noticeCopy = notice;
  [(BrowserController *)self dismissToastViewController:self->_currentlyPresentedToastViewController];
  if (form)
  {
    diagnosticsData = [noticeCopy diagnosticsData];
    v8 = objc_alloc(MEMORY[0x277CDB738]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __86__BrowserController_autoFillInternalFeedbackActivityNotice_shouldPresentFeedbackForm___block_invoke;
    v11[3] = &unk_2781D6750;
    v11[4] = self;
    v9 = [v8 initWithDiagnosticsData:diagnosticsData reportHandler:v11];
    v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v9];
    [v10 setModalPresentationStyle:1];
    [(BrowserController *)self presentModalViewController:v10 completion:0];
  }
}

void __86__BrowserController_autoFillInternalFeedbackActivityNotice_shouldPresentFeedbackForm___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) activeDocument];
  v4 = [v3 activeWebView];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  [v6 openURL:v7 options:0 completionHandler:0];
}

- (void)editTabBar
{
  capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  [capsuleViewController editTabBar];
}

- (void)navigationBarMetricsDidChange:(id)change
{
  if (![(BrowserRootViewController *)self->_rootViewController isPerformingSizeTransition])
  {
    view = [(BrowserRootViewController *)self->_rootViewController view];
    [view frame];
    v6 = v5;
    v8 = v7;

    [(BrowserController *)self rootViewControllerViewWillTransitionToSize:v6, v8];
    [(BrowserController *)self updateDynamicBarGeometry];
    [(BrowserController *)self rootViewControllerViewTransitionFromSize:0 includingSidebar:0 animated:v6, v8];

    [(BrowserController *)self rootViewControllerViewDidTransitionFromSize:0 animated:v6, v8];
  }
}

- (void)compressedNavigationBarWasTapped:(id)tapped
{
  if ([(BrowserController *)self scrollViewShouldScrollToTop:self->_scrollView])
  {
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView _scrollToTopIfPossible:1];
  }
}

uint64_t __73__BrowserController__focusNavigationBarForVoiceSearch_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)navigationBarReaderButtonWasTapped:(id)tapped
{
  [(BrowserController *)self _readerButtonTapped];
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportIOSToolbarButtonUsage:25 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
}

- (void)navigationBarTranslateButtonWasTapped:(id)tapped
{
  _formatMenuButtonPopoverSourceInfo = [(BrowserController *)self _formatMenuButtonPopoverSourceInfo];
  [(BrowserController *)self navigationBarTranslateButtonWasTappedWithSourceInfo:?];
}

- (void)navigationBarTranslateButtonWasTappedWithSourceInfo:(id)info
{
  infoCopy = info;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  translationContext = [activeTabDocument translationContext];

  availableTargetLocaleIdentifiers = [translationContext availableTargetLocaleIdentifiers];
  v7 = [availableTargetLocaleIdentifiers count];
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = [availableTargetLocaleIdentifiers objectAtIndexedSubscript:0];
      [translationContext requestTranslatingWebpageToLocale:v8 completionHandler:0];
    }

    else
    {
      v8 = [MEMORY[0x277CDB8E8] translationAlertControllerWithTranslationContext:translationContext];
      if (infoCopy)
      {
        [v8 configurePopoverWithSourceInfo:infoCopy];
      }

      viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
      [viewControllerToPresentFrom presentViewController:v8 animated:1 completion:0];
    }
  }

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportIOSToolbarButtonUsage:27 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
}

- (void)navigationBarFormatMenuButtonStartedInteraction:(id)interaction
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  readerContext = [activeTabDocument readerContext];
  [readerContext checkReaderAvailability];
}

- (void)navigationBarCancelButtonWasTapped:(id)tapped
{
  [(BrowserController *)self removeCachedSearchStateForActiveTabDocument];
  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [_catalogViewController reportUnifiedFieldSearchDidCancel];

  [(BrowserController *)self cancelFavorites];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument hideFindOnPage];
}

- (void)navigationBarReloadButtonWasTapped:(id)tapped
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument reloadUserInitiated];

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportIOSToolbarButtonUsage:22 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
}

- (void)navigationBarStopLoadingButtonWasTapped:(id)tapped
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument stopLoadingUserInitiated];

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportIOSToolbarButtonUsage:23 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
}

- (void)navigationBarMediaStateMuteButtonWasTapped:(id)tapped forItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0;
  v6 = itemCopy;
  if (v5)
  {
    v6 = 0;
  }

  tabController = self->_tabController;
  uUID = [v6 UUID];
  v9 = [(TabController *)tabController tabDocumentWithUUID:uUID];

  if ([v9 mediaStateIcon])
  {
    [v9 toggleMediaStateMuted];
  }

  else
  {
    [v9 toggleGlobalMediaStateMuted];
  }
}

- (id)navigationBar:(id)bar mediaStateMuteButtonMenuElementsForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = itemCopy;
  }

  else
  {
    v6 = 0;
  }

  tabController = self->_tabController;
  uUID = [v6 UUID];
  v9 = [(TabController *)tabController tabDocumentWithUUID:uUID];

  mediaStateMuteButtonMenuElements = [v9 mediaStateMuteButtonMenuElements];
  v11 = mediaStateMuteButtonMenuElements;
  if (mediaStateMuteButtonMenuElements)
  {
    v12 = mediaStateMuteButtonMenuElements;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = v12;

  return v12;
}

- (void)navigationBarFormatMenuButtonWasTapped:(id)tapped
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didToggleMagicMenuSBA];

  pageFormatMenuController = [(BrowserController *)self pageFormatMenuController];
  viewController = [pageFormatMenuController viewController];
  presentingViewController = [viewController presentingViewController];

  if (!presentingViewController)
  {
    mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8]2 reportIOSToolbarButtonUsage:35 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
  }

  viewControllerToPresentFromNavigationBar = [(BrowserController *)self viewControllerToPresentFromNavigationBar];
  _formatMenuButtonPopoverSourceInfo = [(BrowserController *)self _formatMenuButtonPopoverSourceInfo];
  v11 = [pageFormatMenuController presentMenuFromViewController:viewControllerToPresentFromNavigationBar withSourceInfo:_formatMenuButtonPopoverSourceInfo fromSafariViewController:0];

  if (v11)
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    assistantController = [activeTabDocument assistantController];
    result = [assistantController result];
    remoteContentAvailableForFetching = [result remoteContentAvailableForFetching];

    if (remoteContentAvailableForFetching)
    {
      mEMORY[0x277D499B8]3 = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8]3 didClickSparkleSBA];

      mEMORY[0x277D49E30] = [MEMORY[0x277D49E30] sharedManager];
      assistantController2 = [activeTabDocument assistantController];
      webpageIdentifier = [assistantController2 webpageIdentifier];
      [mEMORY[0x277D49E30] donateBrowsingAssistantUserInteractionDetectedWithWebPageID:webpageIdentifier componentType:0 componentIdentifier:&unk_2827FBED8 tableOfContentsArrayLength:0 tableOfContentsTextIndex:0 readerSectionExpanded:0];
    }

    objc_initWeak(&location, self);
    assistantController3 = [activeTabDocument assistantController];
    v21 = [activeTabDocument url];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __60__BrowserController_navigationBarFormatMenuButtonWasTapped___block_invoke;
    v22[3] = &unk_2781D6778;
    objc_copyWeak(&v23, &location);
    [assistantController3 updateAssistantContentForURL:v21 completionHandler:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

void __60__BrowserController_navigationBarFormatMenuButtonWasTapped___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      [WeakRetained[21] updateReaderCardWithSummaryIfNeeded];
      [WeakRetained[21] reloadBrowsingAssistantIfNeeded];
    }
  }
}

- (void)tabDocument:(id)document didReceiveAssistantContentOptions:(unint64_t)options
{
  optionsCopy = options;
  documentCopy = document;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];

  if ((optionsCopy & 0x1F) != 0 && activeTabDocument == documentCopy)
  {
    viewController = [(_SFPageFormatMenuController *)self->_pageFormatMenuController viewController];
    if (([viewController isBeingPresented] & 1) == 0)
    {
      presentingViewController = [viewController presentingViewController];
      if (presentingViewController)
      {
      }

      else if (([documentCopy isShowingReader] & 1) == 0)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    assistantController = [documentCopy assistantController];
    v11 = [documentCopy url];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__BrowserController_tabDocument_didReceiveAssistantContentOptions___block_invoke;
    v13[3] = &unk_2781D67A0;
    v13[4] = self;
    v14 = documentCopy;
    v12 = assistantController;
    v15 = v12;
    [v12 updateAssistantContentForURL:v11 completionHandler:v13];

    goto LABEL_8;
  }

LABEL_9:
}

void __67__BrowserController_tabDocument_didReceiveAssistantContentOptions___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 168) reloadBrowsingAssistantIfNeeded];
    if ([*(a1 + 40) isShowingReader])
    {
      v12 = [*(a1 + 40) readerContext];
      v3 = [*(a1 + 48) summary];
      v4 = _WBSLocalizedString();
      v5 = _WBSLocalizedString();
      v6 = [*(a1 + 40) URLString];
      v7 = [v6 stringByReplacingOccurrencesOfString:@"https://" withString:@"safari-reader://"];
      v8 = [*(a1 + 48) tableOfContentsTitles];
      v9 = [*(a1 + 48) tableOfContentsPaths];
      v10 = [*(a1 + 48) tableOfContentsTrailingTexts];
      LODWORD(v11) = [*(a1 + 48) tableOfContentsType];
      [v12 setArticleSummary:v3 withSummaryHeader:v4 tableOfContentsHeader:v5 readerURLString:v7 titles:v8 paths:v9 trailingText:v10 tableOfContentsType:v11 attribution:0];
    }
  }
}

- (void)handleSearchResult:(id)result
{
  _sf_punchoutURL = [result _sf_punchoutURL];
  [(BrowserController *)self _loadURL:_sf_punchoutURL inExternalApplication:0 forImageAttribution:0];
}

- (void)navigationBarFormatMenuButtonBecameUnavailable:(id)unavailable
{
  viewController = [(_SFPageFormatMenuController *)self->_pageFormatMenuController viewController];
  [viewController dismissViewControllerAnimated:1 completion:0];
}

- (id)navigationBarURLForSharing:(id)sharing
{
  tabController = [(BrowserController *)self tabController];
  activeTabDocument = [tabController activeTabDocument];
  urlForSharing = [activeTabDocument urlForSharing];

  return urlForSharing;
}

- (void)navigationBar:(id)bar didFinishShowingAvailabilityLabelOfType:(int64_t)type
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  navigationBarItem = [activeTabDocument navigationBarItem];
  [navigationBarItem setDidFinishShowingAvailabilityLabel:1 ofType:type];
}

- (void)navigationBar:(id)bar multipleExtensionsButtonTapped:(id)tapped
{
  barCopy = bar;
  tappedCopy = tapped;
  if (-[BrowserController tabBarDisplayMode](self, "tabBarDisplayMode") == 2 || (-[TabController activeTabDocument](self->_tabController, "activeTabDocument"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isBlank], v7, v8))
  {
    [(BrowserController *)self webExtensionsButtonTapped:tappedCopy];
  }

  else
  {
    [(BrowserController *)self navigationBarFormatMenuButtonWasTapped:barCopy];
  }
}

- (void)webExtensionsButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  [self->_extensionActionPanel _cancel];
  [(BrowserController *)self setCanFocusNavigationBarURL:0];
  tabController = [(BrowserController *)self tabController];
  activeTabDocument = [tabController activeTabDocument];

  profile = [activeTabDocument profile];
  v8 = +[Application sharedApplication];
  v9 = [v8 webExtensionsControllerForTabWithPrivateBrowsingEnabled:objc_msgSend(activeTabDocument profile:{"isPrivateBrowsingEnabled"), profile}];

  enabledExtensions = [v9 enabledExtensions];
  v11 = [enabledExtensions count];

  if (v11)
  {
    v12 = [ActionPanel alloc];
    tabController2 = [(BrowserController *)self tabController];
    activeTabDocument2 = [tabController2 activeTabDocument];
    v15 = [(ActionPanel *)v12 initWithTabDocument:activeTabDocument2 activityDelegate:self menuStyle:1];
    extensionActionPanel = self->_extensionActionPanel;
    self->_extensionActionPanel = v15;

    [(_SFActivityViewController *)self->_extensionActionPanel setDelegate:self];
    v17 = [objc_alloc(MEMORY[0x277D28F68]) initWithView:tappedCopy];
    v18 = self->_extensionActionPanel;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __47__BrowserController_webExtensionsButtonTapped___block_invoke_2;
    v21[3] = &unk_2781D60B8;
    v21[4] = self;
    [(BrowserController *)self _presentModalViewController:v18 fromPopoverSource:v17 useAdaptivePresentationInCompact:1 animated:1 completion:v21];
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] reportIOSToolbarButtonUsage:34 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    v17 = [WeakRetained viewControllerToPresentFromForBrowserController:self];

    mEMORY[0x277D499B8] = [MEMORY[0x277D28CB8] createManageExtensionsNavigationControllerFromPageFormatMenu:0 activeDocument:activeTabDocument];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __47__BrowserController_webExtensionsButtonTapped___block_invoke;
    v22[3] = &unk_2781D60B8;
    v22[4] = self;
    [v17 presentViewController:mEMORY[0x277D499B8] animated:1 completion:v22];
  }
}

void __47__BrowserController_webExtensionsButtonTapped___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCanFocusNavigationBarURL:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 520);
  *(v2 + 520) = 0;
}

- (void)_presentModalViewController:(void *)controller fromPopoverSource:(uint64_t)source useAdaptivePresentationInCompact:(uint64_t)compact animated:(void *)animated completion:
{
  v11 = a2;
  controllerCopy = controller;
  animatedCopy = animated;
  if (self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [v11 setProvenance:{objc_msgSend(controllerCopy, "provenance")}];
    }

    modalPresentationStyle = [v11 modalPresentationStyle];
    if (controllerCopy && [(BrowserController *)self _shouldPresentViewControllerUsingAdaptivePopover:v11])
    {
      [v11 setModalPresentationStyle:7];
      v15 = [objc_alloc(MEMORY[0x277CDB858]) initWithSourceInfo:controllerCopy];
      [v15 setPopoverUsesAdaptivePresentationInCompact:source];
      popoverPresentationController = [v11 popoverPresentationController];
      [v15 attachToPopoverPresentationController:popoverPresentationController];
    }

    else if ([v11 modalPresentationStyle] == 7)
    {
      [v11 setModalPresentationStyle:0];
    }

    else if ((modalPresentationStyle - 1) <= 1)
    {
      [(BrowserController *)self _setSheetPresentationIfNeededForController:v11];
    }

    presentingViewController = [v11 presentingViewController];

    if (presentingViewController)
    {
      v18 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [v11 presentingViewController];
        objc_claimAutoreleasedReturnValue();
        [BrowserController _presentModalViewController:fromPopoverSource:useAdaptivePresentationInCompact:animated:completion:];
      }
    }

    viewControllerToPresentFrom = [self viewControllerToPresentFrom];
    _sf_viewControllerToPresentFrom = [viewControllerToPresentFrom _sf_viewControllerToPresentFrom];
    [_sf_viewControllerToPresentFrom presentViewController:v11 animated:compact completion:animatedCopy];
  }
}

- (void)navigationBar:(id)bar extensionButtonTapped:(id)tapped extension:(id)extension
{
  tappedCopy = tapped;
  extensionCopy = extension;
  [(BrowserController *)self webExtensionButtonTapped:tappedCopy extension:extensionCopy];
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportIOSToolbarButtonUsage:20 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
}

- (void)webExtensionButtonTapped:(id)tapped extension:(id)extension
{
  tappedCopy = tapped;
  extensionCopy = extension;
  v7 = [objc_alloc(MEMORY[0x277D28F68]) initWithView:tappedCopy];
  toolbarItem = [extensionCopy toolbarItem];
  activeTabForExtensions = [(BrowserController *)self activeTabForExtensions];
  viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
  [toolbarItem performActionForTab:activeTabForExtensions parentViewController:viewControllerToPresentFrom popoverSourceInfo:v7];
}

- (void)showPopupOrPerSitePermissionsForWebExtension:(id)extension forTab:(id)tab
{
  extensionCopy = extension;
  tabCopy = tab;
  toolbarItem = [extensionCopy toolbarItem];
  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  tabGroupTab = [tabCopy tabGroupTab];
  tabGroupUUID = [tabGroupTab tabGroupUUID];
  v11 = [v8 initWithUUIDString:tabGroupUUID];

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  LOBYTE(tabGroupUUID) = [activeTabDocument isEqual:tabCopy];

  if ((tabGroupUUID & 1) == 0)
  {
    tabController = self->_tabController;
    uuid = [tabCopy uuid];
    [(TabController *)tabController switchToTabWithUUID:uuid inTabGroupWithUUID:v11];
  }

  unifiedTabBarItem = [tabCopy unifiedTabBarItem];
  v16 = [unifiedTabBarItem bestButtonForExtensionPopoverSource:extensionCopy];

  v17 = [objc_alloc(MEMORY[0x277D28F68]) initWithView:v16];
  viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
  [toolbarItem showPopupOrPerSitePermissionsForTab:tabCopy parentViewController:viewControllerToPresentFrom popoverSourceInfo:v17];
}

- (void)webExtensionWasRemotelyEnabled:(id)enabled
{
  enabledCopy = enabled;
  remotelyEnabledExtensionBanner = [(BannerController *)self->_bannerController remotelyEnabledExtensionBanner];
  v6 = remotelyEnabledExtensionBanner;
  if (remotelyEnabledExtensionBanner)
  {
    [remotelyEnabledExtensionBanner addExtension:enabledCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = [objc_alloc(MEMORY[0x277D28ED0]) initWithExtension:enabledCopy];
    objc_initWeak(&from, self->_bannerController);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__BrowserController_webExtensionWasRemotelyEnabled___block_invoke;
    v10[3] = &unk_2781D67C8;
    objc_copyWeak(&v11, &from);
    [v6 setDismissButtonHandler:v10];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__BrowserController_webExtensionWasRemotelyEnabled___block_invoke_2;
    v7[3] = &unk_2781D67F0;
    objc_copyWeak(&v8, &location);
    objc_copyWeak(&v9, &from);
    [v6 setOpenActionHandler:v7];
    [(BannerController *)self->_bannerController setRemotelyEnabledExtensionBanner:v6 animated:0];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __52__BrowserController_webExtensionWasRemotelyEnabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setRemotelyEnabledExtensionBanner:0 animated:0];
  }
}

void __52__BrowserController_webExtensionWasRemotelyEnabled___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = v3;
    if (v3)
    {
      [v3 setRemotelyEnabledExtensionBanner:0 animated:0];
      v5 = objc_loadWeakRetained(v11 + 46);
      v6 = [v5 viewControllerToPresentFromForBrowserController:v11];

      v7 = MEMORY[0x277D28CB8];
      v8 = [v11 tabController];
      v9 = [v8 activeTabDocument];
      v10 = [v7 createManageExtensionsNavigationControllerFromPageFormatMenu:0 activeDocument:v9];

      [v6 presentViewController:v10 animated:1 completion:0];
    }

    WeakRetained = v11;
  }
}

- (void)showExtensionPermissionBannerForExtensions:(id)extensions
{
  extensionsCopy = extensions;
  mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
  v6 = [mEMORY[0x277CDB8A8] defaultSearchEngineForPrivateBrowsing:0];
  v7 = [v6 searchURLForUserTypedString:@"a"];
  host = [v7 host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  v10 = [objc_alloc(MEMORY[0x277D28EE0]) initWithExtensions:extensionsCopy grantedHost:safari_highLevelDomainFromHost];
  objc_initWeak(&location, self->_bannerController);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__BrowserController_showExtensionPermissionBannerForExtensions___block_invoke;
  v18[3] = &unk_2781D67C8;
  objc_copyWeak(&v19, &location);
  [v10 setAllowButtonHandler:v18];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __64__BrowserController_showExtensionPermissionBannerForExtensions___block_invoke_2;
  v15 = &unk_2781D6818;
  objc_copyWeak(&v17, &location);
  v11 = extensionsCopy;
  v16 = v11;
  [v10 setResetExtensionPermissionsHandler:&v12];
  [(BannerController *)self->_bannerController setWebExtensionPermissionGrantedBanner:v10 animated:0, v12, v13, v14, v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __64__BrowserController_showExtensionPermissionBannerForExtensions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setWebExtensionPermissionGrantedBanner:0 animated:0];
}

void __64__BrowserController_showExtensionPermissionBannerForExtensions___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v15 = WeakRetained;
    [WeakRetained setWebExtensionPermissionGrantedBanner:0 animated:0];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v2 = +[Application sharedApplication];
    v3 = [v2 allWebExtensionsControllers];

    obj = v3;
    v19 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v19)
    {
      v17 = *v27;
      do
      {
        v20 = 0;
        do
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v26 + 1) + 8 * v20);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v21 = *(a1 + 32);
          v5 = [v21 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v5)
          {
            v6 = *v23;
            do
            {
              v7 = 0;
              do
              {
                if (*v23 != v6)
                {
                  objc_enumerationMutation(v21);
                }

                v8 = [*(*(&v22 + 1) + 8 * v7) extension];
                v9 = [v4 webExtensionForExtension:v8];

                v10 = [MEMORY[0x277CBEB98] set];
                v11 = MEMORY[0x277CBEB98];
                v12 = [v9 grantedPermissionOrigins];
                v13 = [v12 allKeys];
                v14 = [v11 setWithArray:v13];
                [v9 removeGrantedPermissions:v10 origins:v14 exactPatternMatchesOnly:1];

                ++v7;
              }

              while (v5 != v7);
              v5 = [v21 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v5);
          }

          ++v20;
        }

        while (v20 != v19);
        v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v19);
    }

    WeakRetained = v15;
  }
}

void __68__BrowserController__showPrivateBrowsingExplanationSheetIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([WeakRetained shouldShowWhatsNewInPrivateBrowsingSheet])
    {
      [WeakRetained[33] showWhatsNewInPrivateBrowsingSheet];
    }

    else if ([WeakRetained shouldShowTurnOnLockedPrivateBrowsingSheet])
    {
      [WeakRetained[33] showTurnOnLockedPrivateBrowsingSheet];
    }
  }
}

void __56__BrowserController__showDefaultBrowserSheetIfNecessary__block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 264);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__BrowserController__showDefaultBrowserSheetIfNecessary__block_invoke_4;
    v10[3] = &unk_2781D63F8;
    v10[4] = v2;
    [v3 showDefaultBrowserSheetWithDisplayHandler:v10];
  }

  else
  {
    [*(v2 + 696) setHidden:1];
    v5 = *(a1 + 32);
    v6 = *(v5 + 696);
    *(v5 + 696) = 0;

    [*(a1 + 40) didCompleteBrowserSheet];
    v7 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__BrowserController__showDefaultBrowserSheetIfNecessary__block_invoke_2;
    v11[3] = &unk_2781D6868;
    v8 = v7;
    v9 = *(a1 + 32);
    v12 = v8;
    v13 = v9;
    [v8 determineIfBrowserIconSwapAlertNeedsDisplayWithCompletionHandler:v11];
  }
}

void __56__BrowserController__showDefaultBrowserSheetIfNecessary__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) browserIconReplacementAlertController:a2 browserLocalizedName:a3 completionHandler:&__block_literal_global_798];
  if (v4)
  {
    v6 = v4;
    v5 = [*(a1 + 40) viewControllerToPresentFrom];
    [v5 presentViewController:v6 animated:1 completion:0];

    v4 = v6;
  }
}

void __56__BrowserController__showDefaultBrowserSheetIfNecessary__block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 696) setHidden:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 696);
  *(v2 + 696) = 0;
}

- (BOOL)shouldShowTurnOnLockedPrivateBrowsingSheet
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  if ([MEMORY[0x277D49A08] isLockedPrivateBrowsingEnabled] && objc_msgSend(safari_browserDefaults, "BOOLForKey:", *MEMORY[0x277D4A2F0]) && objc_msgSend(safari_browserDefaults, "BOOLForKey:", *MEMORY[0x277D4A0D8]) && (objc_msgSend(safari_browserDefaults, "BOOLForKey:", *MEMORY[0x277D4A348]) & 1) == 0)
  {
    v3 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D4A1B8]] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)resetWhatsNewInPrivateBrowsingStartPageModule
{
  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [_catalogViewController resetPrivateBrowsingExplanation];
}

- (id)itemProviderForNavigationBar:(id)bar
{
  v3 = MEMORY[0x277CCAA88];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  v5 = [v3 safari_itemProviderForTabDocument:activeTabDocument];

  return v5;
}

- (int64_t)dataOwnerForNavigationBar:(id)bar
{
  tabController = [(BrowserController *)self tabController];
  activeTabDocument = [tabController activeTabDocument];

  if ([activeTabDocument hasQuickLookContent])
  {
    quickLookDocument = [activeTabDocument quickLookDocument];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    sourceURL = [quickLookDocument sourceURL];
    safari_URLByNormalizingBlobURL = [sourceURL safari_URLByNormalizingBlobURL];
    if ([mEMORY[0x277D262A0] isURLManaged:safari_URLByNormalizingBlobURL])
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    v9 = 3;
  }

  return v9;
}

- (id)currentContentUUIDForNavigationBar:(id)bar
{
  tabController = [(BrowserController *)self tabController];
  activeTabDocument = [tabController activeTabDocument];
  uuid = [activeTabDocument uuid];

  return uuid;
}

- (void)navigationBar:(id)bar didCreateLeadingToolbar:(id)toolbar trailingToolbar:(id)trailingToolbar
{
  toolbarCopy = toolbar;
  trailingToolbarCopy = trailingToolbar;
  [(_SFBarManager *)self->_barManager registerToolbar:toolbarCopy withLayout:0 persona:0];
  [(_SFBarManager *)self->_barManager registerToolbar:trailingToolbarCopy withLayout:1 persona:0];
}

- (void)_setSidebarUIProxy:(uint64_t)proxy
{
  v4 = a2;
  if (proxy)
  {
    objc_storeStrong((proxy + 768), a2);
    [*(proxy + 768) setSidebarUIProxyDelegate:proxy];
    [*(proxy + 912) setSidebarUIProxy:v4];
  }
}

- (void)_updateSidebarStickinessAfterUserAction
{
  if (self && ([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0 && objc_msgSend(self, "_bookmarksPresentationStyle") == 2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:objc_msgSend(self[96] forKey:{"isShowingSidebar"), @"ShowSidebar"}];
  }
}

uint64_t __61__BrowserController__showOrHideSidebarInLandscapeIfNecessary__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[96];
  v3 = [(BrowserController *)v1 shouldShowSidebarInLandscape];

  return [v2 setShowingSidebar:v3 completion:0];
}

- (void)_perSitePreferencesDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy _sf_perSitePreferenceNotificationWasSentFromAnotherProcess])
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
    perSitePreferencesVendor = [WeakRetained perSitePreferencesVendor];
    sharedUserMediaPermissionController = [perSitePreferencesVendor sharedUserMediaPermissionController];
    [sharedUserMediaPermissionController reloadPreferences];

    [(BrowserController *)self _reloadPresentedPreferencesListViewController];
  }
}

- (void)_contentBlockersPerSitePreferenceDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__BrowserController__contentBlockersPerSitePreferenceDidChange___block_invoke;
  v6[3] = &unk_2781D61F8;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __64__BrowserController__contentBlockersPerSitePreferenceDidChange___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 safari_stringForKey:*MEMORY[0x277D4A1C8]];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(*(a1 + 40) + 328) allTabDocuments];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 URL];
        v10 = [v9 safari_userVisibleHostWithoutWWWSubdomain];
        v11 = [v10 isEqualToString:v3];

        if (v11)
        {
          [v8 reload];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_perSiteLockdownModePreferenceDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__BrowserController__perSiteLockdownModePreferenceDidChange___block_invoke;
  v6[3] = &unk_2781D61F8;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __61__BrowserController__perSiteLockdownModePreferenceDidChange___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 safari_stringForKey:*MEMORY[0x277D4A1D0]];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(*(a1 + 40) + 328) allTabDocuments];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 URL];
        v10 = [v9 safari_userVisibleHostWithoutWWWSubdomain];
        v11 = [v10 isEqualToString:v3];

        if (v11)
        {
          [v8 reload];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (BOOL)isShowingCompletionDetail
{
  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  isShowingCompletionDetail = [_catalogViewController isShowingCompletionDetail];

  return isShowingCompletionDetail;
}

- (void)prepareToNavigateInTabDocument:(id)document
{
  documentCopy = document;
  tabController = [(BrowserController *)self tabController];
  activeTabDocument = [tabController activeTabDocument];

  if (activeTabDocument == documentCopy)
  {
    [(BrowserController *)self dismissTransientUIAnimated:1];
  }
}

- (void)configureMenuAndAdoptButton:(id)button
{
  buttonCopy = button;
  pageFormatMenuController = [(BrowserController *)self pageFormatMenuController];
  [pageFormatMenuController configureMenuAndAdoptButton:buttonCopy];
}

- (BrowserController)initWithStateData:(id)data browserWindowController:(id)controller savedState:(id)state controlledByAutomation:(BOOL)automation
{
  automationCopy = automation;
  dataCopy = data;
  controllerCopy = controller;
  stateCopy = state;
  uUID = [dataCopy UUID];
  sceneID = [dataCopy sceneID];
  v15 = [(BrowserController *)self initWithUUID:uUID sceneID:sceneID browserWindowController:controllerCopy tabGroupManager:0 controlledByAutomation:automationCopy];

  if (v15)
  {
    objc_storeStrong(&v15->_savedState, state);
    [(BrowserController *)v15 _readSavedState];
    v16 = v15;
  }

  return v15;
}

- (BrowserController)initWithWindowState:(id)state browserWindowController:(id)controller tabGroupManager:(id)manager controlledByAutomation:(BOOL)automation
{
  automationCopy = automation;
  stateCopy = state;
  controllerCopy = controller;
  managerCopy = manager;
  v14 = objc_alloc(MEMORY[0x277CCAD78]);
  uuid = [stateCopy uuid];
  v16 = [v14 initWithUUIDString:uuid];
  sceneID = [stateCopy sceneID];
  v18 = [(BrowserController *)self initWithUUID:v16 sceneID:sceneID browserWindowController:controllerCopy tabGroupManager:managerCopy controlledByAutomation:automationCopy];

  if (v18)
  {
    objc_storeStrong(&v18->_windowState, state);
    [(TabController *)v18->_tabController setWindowState:stateCopy];
    [(BrowserController *)v18 createProfileWindow];
    if (![(BrowserController *)v18 isInDefaultProfile])
    {
      pinnedTabsManager = [(TabController *)v18->_tabController pinnedTabsManager];
      activeProfileIdentifier = [(BrowserController *)v18 activeProfileIdentifier];
      [pinnedTabsManager willSelectProfileWithIdentifier:activeProfileIdentifier];
    }

    [(BrowserController *)v18 _prepareExtensionsForEffectiveProfile];
    [(BrowserController *)v18 _readSavedState];
    [(BrowserController *)v18 updateCollaborationButton];
    v21 = v18;
  }

  return v18;
}

- (BrowserController)initWithUUID:(id)d sceneID:(id)iD browserWindowController:(id)controller tabGroupManager:(id)manager controlledByAutomation:(BOOL)automation
{
  dCopy = d;
  iDCopy = iD;
  controllerCopy = controller;
  managerCopy = manager;
  v105.receiver = self;
  v105.super_class = BrowserController;
  v14 = [(BrowserController *)&v105 init];
  if (v14)
  {
    objc_initWeak(&location, v14);
    objc_storeWeak(&v14->_browserWindowController, controllerCopy);
    objc_storeStrong(&v14->_UUID, d);
    v14->_controlledByAutomation = automation;
    v88 = controllerCopy;
    v15 = [controllerCopy uiDelegateForBrowserController:v14];
    objc_storeWeak(&v14->_uiDelegate, v15);
    v16 = objc_alloc_init(BannerController);
    bannerController = v14->_bannerController;
    v14->_bannerController = v16;

    v18 = objc_alloc_init(StatusBarSpinnerController);
    spinnerController = v14->_spinnerController;
    v14->_spinnerController = v18;

    v20 = [[UserActivityController alloc] initWithBrowserController:v14];
    userActivityController = v14->_userActivityController;
    v14->_userActivityController = v20;

    +[ApplicationShortcutController setUpManagedConfigurationNotificationResponder];
    v22 = objc_alloc_init(ApplicationShortcutController);
    shortcutController = v14->_shortcutController;
    v14->_shortcutController = v22;

    [(ApplicationShortcutController *)v14->_shortcutController setBrowserController:v14];
    v14->_suspendedOrSuspending = 1;
    objc_storeStrong(&v14->_sceneID, iD);
    v24 = objc_alloc_init(MEMORY[0x277CE3818]);
    wkPreferences = v14->_wkPreferences;
    v14->_wkPreferences = v24;

    [(WKPreferences *)v14->_wkPreferences _setTelephoneNumberDetectionIsEnabled:1];
    [(WKPreferences *)v14->_wkPreferences _setShouldSuppressKeyboardInputDuringProvisionalNavigation:1];
    [(WKPreferences *)v14->_wkPreferences _setDiagnosticLoggingEnabled:1];
    [(WKPreferences *)v14->_wkPreferences _setShouldAllowUserInstalledFonts:0];
    [(WKPreferences *)v14->_wkPreferences _setShouldIgnoreMetaViewport:_SFDeviceSupportsDesktopSitesByDefault()];
    [(WKPreferences *)v14->_wkPreferences setShouldPrintBackgrounds:1];
    [(WKPreferences *)v14->_wkPreferences sf_applySafariStorageBlockingPolicy];
    [(BrowserController *)v14 updateSpeculativeLoadingPreferences];
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    -[WKPreferences _setNeedsSiteSpecificQuirks:](v14->_wkPreferences, "_setNeedsSiteSpecificQuirks:", [safari_browserDefaults BOOLForKey:*MEMORY[0x277D292B0]]);

    [(WKPreferences *)v14->_wkPreferences _setMediaDevicesEnabled:1];
    safari_browserDefaults2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    -[WKPreferences _setMediaSourceEnabled:](v14->_wkPreferences, "_setMediaSourceEnabled:", [safari_browserDefaults2 BOOLForKey:*MEMORY[0x277D29260]]);

    if (objc_opt_respondsToSelector())
    {
      safari_browserDefaults3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      [safari_browserDefaults3 doubleForKey:*MEMORY[0x277D29250]];
      v30 = v29;

      if (v30 != 0.0)
      {
        [(WKPreferences *)v14->_wkPreferences _setManagedMediaSourceLowThreshold:v30];
      }

      safari_browserDefaults4 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      [safari_browserDefaults4 doubleForKey:*MEMORY[0x277D29248]];
      v33 = v32;

      if (v33 != 0.0)
      {
        [(WKPreferences *)v14->_wkPreferences _setManagedMediaSourceHighThreshold:v33];
      }
    }

    [(WKPreferences *)v14->_wkPreferences setElementFullscreenEnabled:_SFDeviceSupportsWebKitFullscreenAPI()];
    if (objc_opt_respondsToSelector())
    {
      -[WKPreferences _setTextExtractionEnabled:](v14->_wkPreferences, "_setTextExtractionEnabled:", [MEMORY[0x277D49A08] isWebKitTextExtractionEnabled]);
    }

    [(BrowserController *)v14 _updateMediaCaptureConfiguration];
    v14->_canFocusNavigationBarURL = 1;
    v34 = [[BrowserRootViewController alloc] initWithBrowserController:v14];
    rootViewController = v14->_rootViewController;
    v14->_rootViewController = v34;

    [(BrowserRootViewController *)v14->_rootViewController setDelegate:v14];
    v36 = [v15 browserController:v14 delegateForBannerController:v14->_bannerController];
    [(BannerController *)v14->_bannerController setDelegate:v36];

    objc_storeStrong(&v14->_tabGroupManager, manager);
    v37 = [[TabController alloc] initWithBrowserController:v14];
    tabController = v14->_tabController;
    v14->_tabController = v37;

    tabCollectionViewProvider = [(TabController *)v14->_tabController tabCollectionViewProvider];
    tabCollectionViewProvider = v14->_tabCollectionViewProvider;
    v14->_tabCollectionViewProvider = tabCollectionViewProvider;

    [(TabCollectionViewProviding *)v14->_tabCollectionViewProvider setSnapshotsEnabled:0];
    [(TabController *)v14->_tabController addDocumentObserver:v14];
    settings = [MEMORY[0x277D28F08] settings];
    uUID = [(BrowserController *)v14 UUID];
    -[TabController setPrivateBrowsingEnabled:](v14->_tabController, "setPrivateBrowsingEnabled:", [settings privateBrowsingEnabledForWindowWithUUID:uUID]);

    pinnedTabsManager = [v88 pinnedTabsManager];
    [(TabController *)v14->_tabController setPinnedTabsManager:pinnedTabsManager];

    v44 = objc_alloc_init(MEMORY[0x277CDB758]);
    barManager = v14->_barManager;
    v14->_barManager = v44;

    [(_SFBarManager *)v14->_barManager setDelegate:v14];
    mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
    [mEMORY[0x277CDB7A8] totalProgress];
    [(_SFBarManager *)v14->_barManager setDownloadsItemProgress:?];

    v47 = MEMORY[0x277D75710];
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke;
    v102[3] = &unk_2781D68B8;
    objc_copyWeak(&v103, &location);
    v86 = [v47 safari_menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:8 uncachedChildrenProvider:v102];
    [v86 setAccessibilityIdentifier:@"BackListMenu"];
    [(_SFBarManager *)v14->_barManager setBarItem:0 menu:v86];
    v48 = MEMORY[0x277D75710];
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_2;
    v100[3] = &unk_2781D68B8;
    objc_copyWeak(&v101, &location);
    v87 = [v48 safari_menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:8 uncachedChildrenProvider:v100];
    [v87 setAccessibilityIdentifier:@"ForwardListMenu"];
    [(_SFBarManager *)v14->_barManager setBarItem:1 menu:v87];
    v49 = v14->_barManager;
    sf_bookmarkMenu = [MEMORY[0x277D75710] sf_bookmarkMenu];
    [(_SFBarManager *)v49 setBarItem:3 menu:sf_bookmarkMenu];

    v51 = v14->_barManager;
    v52 = MEMORY[0x277D75710];
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_3;
    v98[3] = &unk_2781D68B8;
    objc_copyWeak(&v99, &location);
    v53 = [v52 safari_menuWithTitle:@"Debug (Internal Only)" uncachedChildrenProvider:v98];
    [(_SFBarManager *)v51 setBarItem:6 menu:v53];

    [(BrowserController *)v14 _updateAddTabMenuProvider];
    [(BrowserController *)v14 _updateBookmarksMenuProvider];
    v54 = v14->_barManager;
    tabExposeMenu = [(TabController *)v14->_tabController tabExposeMenu];
    [(_SFBarManager *)v54 setBarItem:8 menu:tabExposeMenu];

    v56 = v14->_barManager;
    v57 = [(TabController *)v14->_tabController tabGroupsMenuForTabGroupButton:1];
    [(_SFBarManager *)v56 setBarItem:2 menu:v57];

    [(_SFBarManager *)v14->_barManager setBarItem:11 hidden:1];
    tabBarManager = [(BrowserController *)v14 tabBarManager];
    [tabBarManager addObserver:v14];
    [(TabCollectionViewProviding *)v14->_tabCollectionViewProvider setTabBarManager:tabBarManager];
    if (([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled] & 1) == 0)
    {
      v59 = [LibraryController alloc];
      _libraryConfiguration = [(BrowserController *)&v14->super.super.super.isa _libraryConfiguration];
      v61 = [(LibraryController *)v59 initWithConfiguration:_libraryConfiguration];
      libraryController = v14->_libraryController;
      v14->_libraryController = v61;
    }

    [(BrowserController *)v14 _updateConfiguration];
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__perSitePreferencesDidChange_ name:*MEMORY[0x277D29288] object:0];

    defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter2 addObserver:v14 selector:sel__perSitePreferencesDidChangeRemotely_ name:*MEMORY[0x277D4A378] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v14 selector:sel__contentBlockersPerSitePreferenceDidChange_ name:*MEMORY[0x277D4A300] object:0];
    [defaultCenter3 addObserver:v14 selector:sel__automaticPasswordInputViewNotification_ name:*MEMORY[0x277CDB950] object:0];
    [defaultCenter3 addObserver:v14 selector:sel__automaticPasswordInputViewAutoFillContextProviderRequiredNotification_ name:*MEMORY[0x277CDB948] object:0];
    [defaultCenter3 addObserver:v14 selector:sel__defaultSearchEngineDidChange_ name:*MEMORY[0x277CDBA20] object:0];
    [defaultCenter3 addObserver:v14 selector:sel__trialABGroupIdentifierDidChange_ name:*MEMORY[0x277D49DA0] object:0];
    [defaultCenter3 addObserver:v14 selector:sel__didDismissManageExtensionsViewController_ name:*MEMORY[0x277D29050] object:0];
    [defaultCenter3 addObserver:v14 selector:sel__perSiteLockdownModePreferenceDidChange_ name:*MEMORY[0x277D4A308] object:0];
    [defaultCenter3 addObserver:v14 selector:sel__voiceSearchAvailabilityDidChange_ name:*MEMORY[0x277D29198] object:0];
    [defaultCenter3 addObserver:v14 selector:sel__profileWallpaperDidChange_ name:*MEMORY[0x277D4A918] object:0];
    defaultCenter4 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter4 addObserver:v14 selector:sel__backgroundImageFileModifiedRemotely_ name:*MEMORY[0x277D7B5B8] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v14 selector:sel__backgroundImageNeedsCloudKitUpdate_ name:*MEMORY[0x277D4A978] object:0];

    [defaultCenter3 addObserver:v14 selector:sel__beganSharingTabGroup_ name:*MEMORY[0x277D29120] object:0];
    array = [MEMORY[0x277CBEB18] array];
    queuedToastViewControllers = v14->_queuedToastViewControllers;
    v14->_queuedToastViewControllers = array;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    cachedParticipantLists = v14->_cachedParticipantLists;
    v14->_cachedParticipantLists = weakToStrongObjectsMapTable;

    v72 = +[Application sharedApplication];
    [defaultCenter3 addObserver:v14 selector:sel__lockedPrivateBrowsingStateDidChange name:@"lockedPrivateBrowsingStateDidChangeNotification" object:v72];

    objc_initWeak(&v97, v14->_barManager);
    objc_initWeak(&from, v14->_rootViewController);
    mEMORY[0x277CDB7A8]2 = [MEMORY[0x277CDB7A8] sharedManager];
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_15;
    v92[3] = &unk_2781D69F8;
    v74 = mEMORY[0x277CDB7A8]2;
    v93 = v74;
    objc_copyWeak(&v94, &from);
    objc_copyWeak(&v95, &v97);
    [v74 getDownloadsWithCompletionHandler:v92];
    [(BrowserController *)v14 updateJavaScriptPreferences];
    [(BrowserController *)v14 _updateMediaCaptureConfiguration];
    [(BrowserController *)v14 _observeInitializedWebKitFeatures];
    [(BrowserController *)v14 updateApplePayPreferences];
    if (v14->_controlledByAutomation)
    {
      v75 = +[Application sharedApplication];
      automationController = [v75 automationController];
      [automationController updatePreferencesForAutomation:v14->_wkPreferences];
    }

    v14->_suppressWebExtensionEvents = 1;
    v77 = [[WebExtensionWindow alloc] initWithBrowserController:v14 isPrivateWindow:0];
    normalExtensionWindow = v14->_normalExtensionWindow;
    v14->_normalExtensionWindow = v77;

    v79 = [[WebExtensionWindow alloc] initWithBrowserController:v14 isPrivateWindow:1];
    privateExtensionWindow = v14->_privateExtensionWindow;
    v14->_privateExtensionWindow = v79;

    [(SFBrowserController *)v14 setProxy:v14];
    if ([MEMORY[0x277D49A08] isInternalInstall])
    {
      [defaultCenter3 safari_addObserver:v14 selector:sel__debugAutoFillConsoleLoggingEnabledPreferenceDidChange_ forUserDefaultKey:*MEMORY[0x277D4A180]];
      [(BrowserController *)v14 _debugAutoFillConsoleLoggingEnabledPreferenceDidChange:0];
    }

    v81 = objc_alloc_init(MEMORY[0x277CE3858]);
    defaultWebpagePreferences = [v81 defaultWebpagePreferences];
    defaultWebpagePreferences = v14->_defaultWebpagePreferences;
    v14->_defaultWebpagePreferences = defaultWebpagePreferences;

    [(WKWebpagePreferences *)v14->_defaultWebpagePreferences addObserver:v14 forKeyPath:*MEMORY[0x277D4A278] options:4 context:lockdownModeObserverContext];
    v84 = v14;
    objc_destroyWeak(&v95);
    objc_destroyWeak(&v94);

    objc_destroyWeak(&from);
    objc_destroyWeak(&v97);

    objc_destroyWeak(&v99);
    objc_destroyWeak(&v101);

    objc_destroyWeak(&v103);
    objc_destroyWeak(&location);
    controllerCopy = v88;
  }

  return v14;
}

id __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[41] activeTabDocument];
    v4 = [v3 backListMenuWithLimit:30];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

id __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[41] activeTabDocument];
    v4 = [v3 forwardListMenuWithLimit:30];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_3(uint64_t a1)
{
  v74[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (SFDebugMenuEnabled() & 1) != 0)
  {
    v3 = [WeakRetained[41] activeTabDocument];
    v4 = MEMORY[0x277D750C8];
    v55 = [v3 frontWebView];
    v54 = [v4 _sf_debugKillWebProcessActionForWebView:v55];
    v74[0] = v54;
    v5 = MEMORY[0x277D750C8];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"safari"];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_4;
    v69[3] = &unk_2781D68E0;
    v57 = v3;
    v70 = v57;
    v7 = WeakRetained;
    v71 = v7;
    v8 = [v5 actionWithTitle:@"View in SFSafariViewController" image:v6 identifier:0 handler:v69];
    v74[1] = v8;
    v9 = MEMORY[0x277D750C8];
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"sparkles.square.filled.on.square"];
    v11 = [v9 actionWithTitle:@"Start Automation Session" image:v10 identifier:0 handler:&__block_literal_global_842];
    v74[2] = v11;
    v12 = MEMORY[0x277D750C8];
    v13 = [MEMORY[0x277D755B8] systemImageNamed:@"lifepreserver"];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_6;
    v67[3] = &unk_2781D6908;
    v14 = v7;
    v68 = v14;
    v15 = [v12 actionWithTitle:@"Show Crash Banner" image:v13 identifier:0 handler:v67];
    v74[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:4];
    v56 = [v16 mutableCopy];

    v17 = [v57 appBanner];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 isPinnedToTop];
      v20 = v19;
      v21 = @"Pin App Banner";
      if (v19)
      {
        v21 = @"Unpin App Banner";
        v22 = @"pin.slash";
      }

      else
      {
        v22 = @"pin";
      }

      v23 = v21;
      v24 = [MEMORY[0x277D755B8] systemImageNamed:v22];
      v25 = v20 ^ 1;
      v26 = MEMORY[0x277D750C8];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_7;
      v63[3] = &unk_2781D6930;
      v64 = v14;
      v66 = v25;
      v65 = v57;
      v27 = [v26 actionWithTitle:v23 image:v24 identifier:0 handler:v63];
      [v56 addObject:v27];
    }

    v28 = v14[99];
    v29 = [WeakRetained[41] activeTabGroup];
    v30 = [v28 shareRecordForTabGroup:v29];
    LOBYTE(v28) = v30 == 0;

    if ((v28 & 1) == 0)
    {
      v31 = MEMORY[0x277D75710];
      v32 = [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.badge.checkmark"];
      v33 = [v57 isUnread];
      v34 = v33;
      v35 = @"Mark Unread";
      if (v33)
      {
        v35 = @"Mark Read";
        v36 = @"envelope.badge";
      }

      else
      {
        v36 = @"envelope.open";
      }

      v37 = v35;
      v38 = [MEMORY[0x277D755B8] systemImageNamed:v36];
      v39 = MEMORY[0x277D750C8];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_8;
      v60[3] = &unk_2781D6958;
      v61 = v57;
      v62 = v34;
      v40 = [v39 actionWithTitle:v37 image:v38 identifier:0 handler:v60];

      v73 = v40;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
      v42 = [v31 menuWithTitle:@"Shared Tab Group" image:v32 identifier:0 options:0 children:v41];
      [v56 addObject:v42];

      if ([v14[99] enableSharedTabGroupsFastSyncPresence])
      {
        v43 = MEMORY[0x277D75710];
        v44 = [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.badge.checkmark"];
        v45 = MEMORY[0x277D753F0];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_9;
        v58[3] = &unk_2781D69D0;
        objc_copyWeak(&v59, (a1 + 32));
        v46 = [v45 elementWithUncachedProvider:v58];
        v72 = v46;
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
        v48 = [v43 menuWithTitle:@"FastSync Presence" image:v44 identifier:0 options:0 children:v47];

        [v48 setSubtitle:@"Enabled"];
        [v56 addObject:v48];

        objc_destroyWeak(&v59);
      }

      else
      {
        v50 = MEMORY[0x277D750C8];
        v51 = [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.badge.xmark"];
        v52 = [v50 actionWithTitle:@"FastSync Presence" image:v51 identifier:0 handler:&__block_literal_global_912];

        [v52 setSubtitle:@"Disabled"];
        [v52 setAttributes:1];
        [v56 addObject:v52];
      }
    }

    v49 = [v56 copy];
  }

  else
  {
    v49 = MEMORY[0x277CBEBF8];
  }

  return v49;
}

void __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CDB700]);
  v3 = [*(a1 + 32) URL];
  v4 = [v2 initWithURL:v3];

  [*(a1 + 40) _presentModalViewController:v4 fromBarItem:*MEMORY[0x277D291C0] completion:0];
}

void __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_5()
{
  v1 = +[Application sharedApplication];
  v0 = [v1 automationController];
  [v0 createAutomationSessionWithIdentifier:@"InternalActionSession"];
}

void __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 99);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_10;
    v7[3] = &unk_2781D69A8;
    v8 = v3;
    [v6 getCurrentConnectionStateWithCompletionHandler:v7];
  }

  else
  {
    (*(v3 + 2))(v3, MEMORY[0x277CBEBF8]);
  }
}

void __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allKeys];
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_11;
  v8[3] = &unk_2781D6980;
  v6 = v3;
  v9 = v6;
  v7 = [v5 safari_mapAndFilterObjectsUsingBlock:v8];
  (*(*(a1 + 32) + 16))();
}

id __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  if ([v3 length])
  {
    v6 = v3;
    if (v5 == -1)
    {
      v7 = [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.badge.questionmark"];
      v8 = @"Not Connected";
    }

    else if (v5 == -2)
    {
      v7 = [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.badge.xmark"];
      v8 = @"Paused";
    }

    else
    {
      v7 = [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.badge.checkmark"];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zd connections", v5];
    }

    v12 = MEMORY[0x277D750C8];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_13;
    v16[3] = &unk_2781D6908;
    v13 = v6;
    v17 = v13;
    v9 = [v12 actionWithTitle:v13 image:v7 identifier:0 handler:v16];
    [v9 setSubtitle:v8];
  }

  else
  {
    v9 = [MEMORY[0x277D750C8] actionWithTitle:@"Personal" image:0 identifier:0 handler:&__block_literal_global_886];
    [v9 setAttributes:1];
    if (v5 == -1)
    {
      v14 = [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.badge.questionmark"];
      [v9 setImage:v14];

      [v9 setSubtitle:@"Not Connected"];
    }

    else
    {
      v10 = [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.badge.checkmark"];
      [v9 setImage:v10];

      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zu connections", v5];
      [v9 setSubtitle:v11];
    }

    v8 = &stru_2827BF158;
  }

  return v9;
}

void __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_13(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D75810] generalPasteboard];
  [v2 setString:v1];
}

void __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_15(id *a1)
{
  v4 = [a1[4] downloads];
  v2 = [v4 count];

  if (v2)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 5);
    [WeakRetained loadViewIfNeeded];
    v3 = [WeakRetained navigationBar];
    [v3 setHasToolbar:1];
  }

  v6 = objc_loadWeakRetained(a1 + 6);
  [v6 setBarItem:11 hidden:v2 == 0];
}

id __42__BrowserController__libraryConfiguration__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) tabDocumentWithUUID:a2];

  return v2;
}

id __42__BrowserController__libraryConfiguration__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) tabWithUUID:a2];

  return v2;
}

- (void)adoptSceneID:(id)d
{
  dCopy = d;
  v5 = [dCopy copy];
  [(WBWindowState *)self->_windowState setSceneID:v5];

  tabGroupManager = self->_tabGroupManager;
  windowState = self->_windowState;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__BrowserController_adoptSceneID___block_invoke;
  v13[3] = &unk_2781D63F8;
  v8 = dCopy;
  v14 = v8;
  [(WBTabGroupManager *)tabGroupManager saveWindowState:windowState completionHandler:v13];
  v9 = [v8 copy];
  sceneID = self->_sceneID;
  self->_sceneID = v9;

  savedState = self->_savedState;
  windowStateData = [(BrowserController *)self windowStateData];
  [(_SFBrowserSavedState *)savedState updateSceneID:windowStateData];
}

void __34__BrowserController_adoptSceneID___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __34__BrowserController_adoptSceneID___block_invoke_cold_1();
    }
  }
}

- (void)closeWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  session = [WeakRetained session];
  v6 = session;
  if (session)
  {
    v7 = session;
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    openSessions = [mEMORY[0x277D75128] openSessions];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3321888768;
    v12[2] = __32__BrowserController_closeWindow__block_invoke;
    v12[3] = &__block_descriptor_40_ea8_32c45_ZTSKZ32__BrowserController_closeWindow_E3__1_e24_B16__0__UISceneSession_8l;
    v10 = self->_sceneID;
    v13 = v10;
    v7 = [openSessions safari_anyObjectPassingTest:v12];
    v2 = &v13;
  }

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128]2 requestSceneSessionDestruction:v7 options:0 errorHandler:&__block_literal_global_961];

  if (!v6)
  {
  }
}

uint64_t __32__BrowserController_closeWindow__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 persistentIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __32__BrowserController_closeWindow__block_invoke_958(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [v2 safari_privacyPreservingDescription];
    objc_claimAutoreleasedReturnValue();
    __32__BrowserController_closeWindow__block_invoke_958_cold_1();
  }
}

- (void)attachToScene:(id)scene
{
  sceneCopy = scene;
  session = [sceneCopy session];
  [(BrowserController *)self scene:sceneCopy willConnectToSession:session options:0];
}

- (id)detachFromScene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  [(BrowserController *)self sceneDidDisconnect:WeakRetained];

  return WeakRetained;
}

- (void)_sceneSession
{
  selfCopy = self;
  v19 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (self[38])
    {
      WeakRetained = objc_loadWeakRetained(self + 113);
      v3 = WeakRetained;
      if (WeakRetained)
      {
        selfCopy = [WeakRetained session];
      }

      else
      {
        mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
        openSessions = [mEMORY[0x277D75128] openSessions];

        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v6 = openSessions;
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          v8 = *v15;
          while (2)
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v15 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v14 + 1) + 8 * i);
              v11 = selfCopy[38];
              persistentIdentifier = [v10 persistentIdentifier];
              LOBYTE(v11) = [v11 isEqualToString:persistentIdentifier];

              if (v11)
              {
                selfCopy = v10;
                goto LABEL_16;
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

        selfCopy = 0;
LABEL_16:
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)setWebView:(uint64_t)view
{
  v4 = a2;
  v5 = v4;
  if (!view || *(view + 936) == v4)
  {
    goto LABEL_26;
  }

  [v4 _beginPinningInputViews];
  [*(view + 936) _endAnimatedResize];
  crashBanner = [*(view + 784) crashBanner];
  if (crashBanner)
  {
    crashBanner2 = [*(view + 784) crashBanner];
    v8 = [crashBanner2 messageType] == 0;
  }

  else
  {
    v8 = 0;
  }

  [view setShowingCrashBanner:0 animated:0];
  if (*(view + 114) == 1)
  {
    [*(view + 936) _endInteractiveObscuredInsetsChange];
  }

  scrollView = [*(view + 936) scrollView];
  [scrollView setDelegate:0];

  v10 = [TabDocument tabDocumentForWKWebView:*(view + 936)];
  objc_storeStrong((view + 936), a2);
  v11 = [TabDocument tabDocumentForWKWebView:v5];
  WeakRetained = objc_loadWeakRetained((view + 368));
  if (v10 != v11)
  {
    view = [v10 view];
    [view removeFromSuperview];
    [view setGeometryProvider:0];
    view2 = [v11 view];
    v15 = [WeakRetained browserController:view tabDocumentViewGeometryProviderForTabDocumentView:view2];
    [view2 setGeometryProvider:v15];

    [WeakRetained browserController:view updateViewForActiveTabDocument:v11];
    [*(view + 264) updateUnifiedBarChromelessScrollDistance];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserControllerUpdateInactiveAudibleTabs:view];
    }
  }

  if ((*(view + 569) & 1) == 0 && [view sf_inResponderChain])
  {
    tabThumbnailCollectionView = [*(view + 944) tabThumbnailCollectionView];
    if ([tabThumbnailCollectionView presentationState] == 1)
    {

LABEL_18:
      goto LABEL_19;
    }

    presentationState = [tabThumbnailCollectionView presentationState];

    if (presentationState != 2)
    {
      tabThumbnailCollectionView = [*(view + 328) activeTabDocument];
      [view updateFocusForTab:tabThumbnailCollectionView webViewCanTakeFocus:{objc_msgSend(*(view + 912), "isSelectingItem") ^ 1}];
      goto LABEL_18;
    }
  }

LABEL_19:
  [*(view + 80) setCurrentWebView:*(view + 936)];
  scrollView2 = [*(view + 936) scrollView];
  v19 = *(view + 288);
  *(view + 288) = scrollView2;

  [*(view + 264) setWebView:v5];
  [*(view + 288) _setIndicatorInsetAdjustmentBehavior:2];
  [*(view + 288) setClipsToBounds:0];
  [*(view + 288) setDelegate:view];
  if (*(view + 114) == 1)
  {
    [*(view + 936) _beginInteractiveObscuredInsetsChange];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__BrowserController_setWebView___block_invoke;
  aBlock[3] = &unk_2781D63D0;
  aBlock[4] = view;
  v25 = v8;
  v24 = v5;
  v20 = _Block_copy(aBlock);
  if (([*(view + 80) isCommittingToContinuousDocument] & 1) != 0 || (v21 = *(view + 936), objc_msgSend(*(view + 184), "webView"), v22 = objc_claimAutoreleasedReturnValue(), v22, v21 == v22))
  {
    v20[2](v20);
    [view updateExposedScrollViewRect];
    [(BrowserController *)view _updateContinuousReadingViewControllerFrame];
  }

  else
  {
    [*(view + 936) _resizeWhileHidingContentWithUpdates:v20];
  }

LABEL_26:
}

uint64_t __32__BrowserController_setWebView___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 264) view];
  [v2 setNeedsLayout];

  [(BrowserController *)*(a1 + 32) _contentContainerViewFrameDidChange];
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) setShowingCrashBanner:1 animated:0];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 368));
  [WeakRetained updateTabViewPinchRecognizerForBrowserController:*(a1 + 32)];

  v4 = [*(*(a1 + 32) + 264) view];
  [v4 layoutIfNeeded];

  v5 = *(a1 + 40);

  return [v5 _endPinningInputViews];
}

- (void)setWebViewFromTabDocument:(void *)document
{
  v3 = a2;
  if (document)
  {
    v5 = v3;
    webView = [v3 webView];
    if (webView != document[117])
    {
      [document setShowingCrashBanner:0 animated:0];
      [(BrowserController *)document setWebView:webView];
    }

    v3 = v5;
  }
}

- (void)updateInsetsForBackgroundWebView:(id)view
{
  viewCopy = view;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  view = [activeTabDocument view];
  [view applyGeometryToWebView:viewCopy];
}

- (double)browserViewController:(id)controller adjustedTopObscuredInsetForBanners:(double)banners
{
  if (![(ContinuousReadingViewController *)self->_continuousReadingViewController isCommittingToContinuousDocument])
  {
    [(_SFWebView *)self->_webView bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    _topContinuousReadingBanner = [(BrowserController *)&self->super.super.super.isa _topContinuousReadingBanner];
    v16 = _topContinuousReadingBanner;
    if (_topContinuousReadingBanner)
    {
      webView = self->_webView;
      [_topContinuousReadingBanner bounds];
      [(_SFWebView *)webView convertRect:v16 fromView:?];
      MaxY = CGRectGetMaxY(v27);
      v28.origin.x = v8;
      v28.origin.y = v10;
      v28.size.width = v12;
      v28.size.height = v14;
      v19 = MaxY - CGRectGetMinY(v28);
      if (v19 <= banners)
      {
        bannersCopy = banners;
      }

      else
      {
        bannersCopy = v19;
      }

      banners = bannersCopy;
    }

    topBanners = [(BannerController *)self->_bannerController topBanners];
    lastObject = [topBanners lastObject];

    if (lastObject)
    {
      v23 = self->_webView;
      [lastObject bounds];
      [(_SFWebView *)v23 convertRect:lastObject fromView:?];
      v24 = CGRectGetMaxY(v29);
      v30.origin.x = v8;
      v30.origin.y = v10;
      v30.size.width = v12;
      v30.size.height = v14;
      v25 = v24 - CGRectGetMinY(v30);
      if (v25 <= banners)
      {
        bannersCopy2 = banners;
      }

      else
      {
        bannersCopy2 = v25;
      }

      banners = bannersCopy2;
    }

    if ([(BrowserController *)self _obscuredInsetsIncludeRefreshControl])
    {
      banners = banners + [(BrowserController *)self _refreshControlHeight];
    }
  }

  return banners;
}

- (void)dynamicBarAnimatorWillEnterSteadyState:(id)state
{
  [(_SFWebView *)self->_webView _endInteractiveObscuredInsetsChange];
  self->_interactivelyChangingObscuredInsets = 0;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument webViewDidChangeSize];

  animationPendingDynamicBarAnimatorSteadyState = self->_animationPendingDynamicBarAnimatorSteadyState;
  if (animationPendingDynamicBarAnimatorSteadyState)
  {
    animationPendingDynamicBarAnimatorSteadyState[2]();
    v6 = self->_animationPendingDynamicBarAnimatorSteadyState;
    self->_animationPendingDynamicBarAnimatorSteadyState = 0;
  }
}

- (void)dynamicBarAnimatorStateDidChange:(id)change
{
  changeCopy = change;
  if (-[BrowserRootViewController keepBarsMinimized](self->_rootViewController, "keepBarsMinimized") && [changeCopy state] == 1 && !-[BrowserRootViewController isPerformingSizeTransition](self->_rootViewController, "isPerformingSizeTransition"))
  {
    [(BrowserRootViewController *)self->_rootViewController setKeepBarsMinimized:0];
    [(BrowserRootViewController *)self->_rootViewController updateWebViewSizeAttributes];
  }
}

- (void)document:(id)document willMakeReaderVisible:(BOOL)visible
{
  visibleCopy = visible;
  documentCopy = document;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];

  v7 = documentCopy;
  if (activeTabDocument == documentCopy)
  {
    if (visibleCopy)
    {
      [documentCopy readerWebView];
    }

    else
    {
      [documentCopy webView];
    }
    v8 = ;
    [(BrowserController *)self setWebView:v8];
    if (!visibleCopy && ![(BrowserRootViewController *)self->_rootViewController keepBarsMinimized]&& ![(BrowserRootViewController *)self->_rootViewController isInYttriumState])
    {
      dynamicBarAnimator = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
      [dynamicBarAnimator attemptTransitionToState:1 animated:0];
    }

    previewView = [(ContinuousReadingViewController *)self->_continuousReadingViewController previewView];
    [previewView removeFromSuperview];
    [(UIScrollView *)self->_scrollView addSubview:previewView];
    previousItemPreviewView = [(ContinuousReadingViewController *)self->_continuousReadingViewController previousItemPreviewView];
    [previousItemPreviewView removeFromSuperview];
    [(UIScrollView *)self->_scrollView addSubview:previousItemPreviewView];
    _visibleAppBanner = [(BrowserController *)self _visibleAppBanner];
    [_visibleAppBanner removeFromSuperview];
    [(BrowserController *)self _setShowingAppBanner:_visibleAppBanner isShowing:1];

    v7 = documentCopy;
  }
}

- (BOOL)shouldDeferHistoryUpdatesForWKWebView:(id)view
{
  viewCopy = view;
  webView = [(TabDocument *)self->_speculativeLoadDocument webView];
  if (webView == viewCopy)
  {
    v7 = 1;
  }

  else
  {
    webView2 = [(TabDocument *)self->_previewDocument webView];
    v7 = webView2 == viewCopy;
  }

  return v7;
}

- (double)_verticalOffsetForContinuousReadingBanner
{
  v37 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0.0;
  }

  topBannerView = [*(self + 80) topBannerView];
  v3 = topBannerView;
  if (topBannerView)
  {
    [topBannerView frame];
    v5 = v4;
    topBannersSeparableFromStatusBar = [*(self + 784) topBannersSeparableFromStatusBar];
    if ([topBannersSeparableFromStatusBar count])
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v7 = topBannersSeparableFromStatusBar;
      v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v8)
      {
        v9 = *v32;
        v10 = 0.0;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v32 != v9)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v31 + 1) + 8 * i) bounds];
            v10 = v10 + CGRectGetHeight(v38);
          }

          v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v8);
      }

      else
      {
        v10 = 0.0;
      }

      v12 = -v10 - v5;
    }

    else
    {
      v13 = *(self + 264);
      documentAndTopBarsContainerView = [v13 documentAndTopBarsContainerView];
      [v13 navigationBarFrameInCoordinateSpace:documentAndTopBarsContainerView];
      MaxY = CGRectGetMaxY(v39);

      additionalContentHeightForBanners = [(BrowserController *)self additionalContentHeightForBanners];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      topBannersAnchoredToStatusBar = [*(self + 784) topBannersAnchoredToStatusBar];
      v18 = [topBannersAnchoredToStatusBar countByEnumeratingWithState:&v27 objects:v35 count:16];
      v19 = MaxY + additionalContentHeightForBanners;
      if (v18)
      {
        v20 = *v28;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(topBannersAnchoredToStatusBar);
            }

            [*(*(&v27 + 1) + 8 * j) bounds];
            v19 = v19 + CGRectGetHeight(v40);
          }

          v18 = [topBannersAnchoredToStatusBar countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v18);
      }

      v22 = *(self + 288);
      documentAndTopBarsContainerView2 = [*(self + 264) documentAndTopBarsContainerView];
      [v22 convertPoint:documentAndTopBarsContainerView2 fromView:{0.0, v19}];
      v25 = v24;

      if (v25 >= 0.0 || ([*(self + 80) isUserInteractingWithContainer] & 1) != 0)
      {
        v12 = -v5;
      }

      else
      {
        v12 = v25 - v5;
      }
    }
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (uint64_t)_setShowingOverlayForBanner:(int)banner showing:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    overlayProvider = [v5 overlayProvider];
    isAvailable = [overlayProvider isAvailable];
    if (isAvailable)
    {
      if (banner)
      {
        overlayViewController = [overlayProvider overlayViewController];
        view = [overlayViewController view];

        superview = [view superview];
        v12 = *(self + 288);

        if (superview != v12)
        {
          hostViewControllerForOverlay = [*(self + 264) hostViewControllerForOverlay];
          [overlayProvider setDelegate:self];
          [overlayProvider showOverlayInScrollView:*(self + 288) viewController:hostViewControllerForOverlay];
          [(BrowserController *)self _updateAppInfoOverlayFrame];
        }
      }

      else
      {
        [overlayProvider hideOverlayAnimated:0];
      }
    }
  }

  else
  {
    isAvailable = 0;
  }

  return isAvailable;
}

- (BOOL)isShowingAppInfoOverlay
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  appBanner = [activeTabDocument appBanner];
  overlayProvider = [appBanner overlayProvider];
  if ([overlayProvider isAvailable])
  {
    overlayViewController = [overlayProvider overlayViewController];
    view = [overlayViewController view];

    if (view)
    {
      superview = [view superview];
      v9 = superview == self->_scrollView;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_setShowingPrivateBrowsingPrivacyProtectionsBanner:(int)banner isShowing:
{
  v6 = a2;
  if (self)
  {
    [(BrowserController *)self _updateNavigationBarSeparator];
    if (v6)
    {
      if (banner)
      {
        v5 = v6;
      }

      else
      {
        v5 = 0;
      }

      [*(self + 784) setPrivateBrowsingPrivacyProtectionsBanner:v5 animated:0];
    }
  }
}

void __42__BrowserController__updateTabGroupBanner__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained showTabView];
  }
}

void __46__BrowserController_updateCollaborationButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__BrowserController_updateCollaborationButton__block_invoke_2;
  block[3] = &unk_2781D6AC0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__BrowserController_updateCollaborationButton__block_invoke_2(uint64_t a1)
{
  v8 = [*(*(a1 + 32) + 328) activeTabGroupOrTabGroupVisibleInSwitcher];
  v2 = WBSIsEqual();

  if (v2)
  {
    if (*(a1 + 48))
    {
      v9 = +[FeatureManager sharedFeatureManager];
      v3 = [v9 areSharedTabGroupsEnabled];

      v4 = v3 ^ 1u;
    }

    else
    {
      v4 = 1;
    }

    [*(*(a1 + 32) + 848) setBarItem:16 hidden:v4];
    v5 = [*(*(a1 + 32) + 848) collaborationButton];

    if (!v5)
    {
      v10 = [*(a1 + 32) newCollaborationButtonWithActiveTabGroup:*(a1 + 40) existingShare:*(a1 + 48)];
      [*(*(a1 + 32) + 848) setCollaborationButton:?];
    }

    v11 = [*(*(a1 + 32) + 784) tabGroupBanner];
    v6 = [v11 collaborationButton];

    if (!v6)
    {
      v7 = [*(a1 + 32) newCollaborationButtonWithActiveTabGroup:*(a1 + 40) existingShare:*(a1 + 48)];
      [v11 setCollaborationButton:v7];
    }
  }
}

- (void)_beganSharingTabGroup:(id)group
{
  groupCopy = group;
  object = [groupCopy object];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BrowserController__beganSharingTabGroup___block_invoke;
  v7[3] = &unk_2781D61F8;
  v8 = object;
  selfCopy = self;
  v6 = object;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __43__BrowserController__beganSharingTabGroup___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 328) activeTabGroup];
  v4 = [v3 uuid];
  LOBYTE(v2) = [v2 isEqualToString:v4];

  if (v2)
  {
    v5 = *(a1 + 40);

    [v5 updateCollaborationButton];
  }
}

- (void)shareDidUpdateForTabGroupWithUUID:(id)d
{
  dCopy = d;
  [(TabController *)self->_tabController clearCachedTabSwitcherShareConfigurationForTabGroupWithUUID:dCopy];
  activeTabGroup = [(TabController *)self->_tabController activeTabGroup];
  uuid = [activeTabGroup uuid];
  v7 = [uuid isEqualToString:dCopy];

  if (v7)
  {
    tabGroupManager = self->_tabGroupManager;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__BrowserController_shareDidUpdateForTabGroupWithUUID___block_invoke;
    v9[3] = &unk_2781D60B8;
    v9[4] = self;
    [(WBTabGroupManager *)tabGroupManager reloadTabGroupsFromDatabaseWithCompletionHandler:v9];
  }
}

uint64_t __55__BrowserController_shareDidUpdateForTabGroupWithUUID___block_invoke(uint64_t a1)
{
  [(BrowserController *)*(a1 + 32) _updateTabGroupBanner];
  [*(a1 + 32) updateTabOverviewButton];
  v2 = *(a1 + 32);

  return [v2 updateCollaborationButton];
}

- (id)linkPreviewViewControllerForNavigationIntent:(id)intent
{
  v4 = [intent URL];
  v5 = [(BrowserController *)self linkPreviewViewControllerForURL:v4];

  return v5;
}

- (id)linkPreviewViewControllerForURL:(id)l
{
  lCopy = l;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  v6 = [activeTabDocument previewViewControllerForURL:lCopy];

  return v6;
}

- (void)commitLinkPreviewViewController:(id)controller
{
  controllerCopy = controller;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument commitPreviewViewController:controllerCopy];
}

- (void)linkPreviewProviderWillDismissPreview
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument willDismissLinkPreviewViewController];
}

- (void)browserViewControllerDidChangeBarInsets:(id)insets
{
  [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
  [(BrowserController *)self updateExposedScrollViewRect];
  [(BrowserRootViewController *)self->_rootViewController layOutTopBars];
  [(BrowserRootViewController *)self->_rootViewController updateWebViewSizeAttributes];
  [(BrowserController *)self updateScrollToTopView];
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained browserControllerLayOutCatalogView:self];
  [(BrowserController *)WeakRetained browserViewControllerDidChangeBarInsets:?];
}

- (void)browserViewController:(id)controller traitCollectionDidChange:(id)change
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  changeCopy = change;
  userInterfaceStyle = [changeCopy userInterfaceStyle];
  traitCollection = [controllerCopy traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(TabCollectionViewProviding *)self->_tabCollectionViewProvider setSnapshotInvalidationIsPostponed:1];
    [(BrowserController *)self _updateConfiguration];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    normalAndPrivateTabs = [(TabController *)self->_tabController normalAndPrivateTabs];
    v12 = [normalAndPrivateTabs countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(normalAndPrivateTabs);
          }

          [*(*(&v20 + 1) + 8 * v14++) updateUsesDarkTheme];
        }

        while (v12 != v14);
        v12 = [normalAndPrivateTabs countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [(TabCollectionViewProviding *)self->_tabCollectionViewProvider flushPendingSnapshotsWithCompletion:&__block_literal_global_1013];
    [(TabCollectionViewProviding *)self->_tabCollectionViewProvider setSnapshotInvalidationIsPostponed:0];
  }

  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
  traitCollection2 = [controllerCopy traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
  v18 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2) == NSOrderedSame;

  if (!v18)
  {
    _visibleAppBanner = [(BrowserController *)self _visibleAppBanner];
    [_visibleAppBanner invalidateBannerLayout];
    [_visibleAppBanner contentSizeCategoryDidChange];
    [(BrowserController *)self _updateAppInfoOverlayFrame];
  }
}

- (BOOL)browserViewControllerShouldTemporarilyHideBottomToolbar:(id)toolbar
{
  favoritesState = self->_favoritesState;
  v6 = favoritesState > 5;
  v7 = (1 << favoritesState) & 0x2E;
  if (v6 || v7 == 0)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D75658] isInHardwareKeyboardMode] ^ 1;
  }
}

- (int64_t)browserViewController:(id)controller toolbarPlacementForViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (_SFDeviceIsPad() && [MEMORY[0x277D49A08] isSolariumEnabled])
  {
    LODWORD(result) = _SFSizeClassForWidth() == 1;
  }

  else if (_SFDeviceIsPad() && width >= 506.0)
  {
    LODWORD(result) = 0;
  }

  else
  {
    IsPad = _SFDeviceIsPad();
    LODWORD(result) = 0;
    if (self && ((width > height) & ~IsPad) == 0)
    {
      LODWORD(result) = SFWidthIsNarrow();
    }
  }

  return result;
}

- (void)browserViewController:(id)controller didCreateNavigationBar:(id)bar
{
  barCopy = bar;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  navigationBarItem = [activeTabDocument navigationBarItem];
  [barCopy setItem:navigationBarItem];
}

- (void)browserViewControllerDidChangeToolbarPlacement:(id)placement
{
  [(_SFBarManager *)self->_barManager visibleBarItemsNeedUpdate];
  [(BrowserController *)&self->super.super.super.isa _updateTabGroupBanner];

  [(BrowserController *)self updateTabOverviewButton];
}

- (void)browserViewControllerDidLayOutSubviews:(id)subviews
{
  if ([(UIScrollView *)self->_scrollView isDragging]|| [(UIScrollView *)self->_scrollView isDecelerating])
  {
    v4 = 0;
  }

  else
  {
    shouldShowBookmarks = [(BrowserController *)&self->super.super.super.isa _shouldShowBookmarksBar];
    [(BrowserController *)self _setShowBookmarksBar:?];
    v4 = 1;
  }

  [(BrowserController *)self _contentContainerViewFrameDidChange];
  if (v4 && self->_interactivelyChangingObscuredInsets)
  {
    [(UIScrollView *)self->_scrollView contentOffset];
    v7 = v6;
    v9 = v8;
    [(UIScrollView *)self->_scrollView contentInset];
    if (v9 <= -v10)
    {
      v11 = -v10;
    }

    else
    {
      v11 = v9;
    }

    [(UIScrollView *)self->_scrollView setContentOffset:v7, v11];
  }

  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  popoverIsShowing = [_catalogViewController popoverIsShowing];

  if (popoverIsShowing)
  {
    v14 = *(MEMORY[0x277CBF398] + 16);
    v19 = *MEMORY[0x277CBF398];
    v20 = v14;
    _catalogViewController2 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
    v18 = 0;
    [(BrowserController *)self catalogViewController:_catalogViewController2 willRepositionPopoverToRect:&v19 inView:&v18];
    v16 = v18;
    popoverPresentationController = [_catalogViewController2 popoverPresentationController];
    [popoverPresentationController setSourceView:v16];
    [popoverPresentationController setSourceRect:{v19, v20}];
  }
}

- (int64_t)browserViewController:(id)controller sidebarStyleForViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  height = [(BrowserController *)self bookmarksPresentationStyleForViewOfSize:width, height];
  if (height)
  {
    sidebarStyle = height != 2;
  }

  else
  {
    sidebarStyle = [controllerCopy sidebarStyle];
  }

  return sidebarStyle;
}

- (void)browserViewController:(id)controller didChangeShowingSidebar:(BOOL)sidebar
{
  [(_SFBarManager *)self->_barManager setBarItem:3 selected:sidebar];

  [(BrowserController *)self updateTabGroupButtonsVisibility];
}

- (void)browserViewController:(id)controller didChangeSidebarStyle:(int64_t)style
{
  [(LibraryController *)self->_libraryController browserViewControllerDidChangeSidebarStyle:controller];

  [(BrowserController *)self updateTabGroupButtonsVisibility];
}

- (id)sidebarContentViewControllerForSidebarUIProxy:(id)proxy
{
  proxyCopy = proxy;
  if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled])
  {
    libraryController = self->_libraryController;
    if (!libraryController)
    {
      v6 = [LibraryContentController alloc];
      _libraryConfiguration = [(BrowserController *)&self->super.super.super.isa _libraryConfiguration];
      v8 = [(LibraryContentController *)v6 initWithConfiguration:_libraryConfiguration];

      [(LibraryController *)v8 setSidebarUIProxy:proxyCopy];
      objc_storeStrong(&self->_libraryController, v8);
      [(TabCollectionViewProviding *)self->_tabCollectionViewProvider registerLibraryController:v8];

      libraryController = self->_libraryController;
    }

    viewController = [(LibraryController *)libraryController viewController];
  }

  else
  {
    v10 = objc_alloc_init(LibraryViewController);
    viewController = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
    [viewController _setClipUnderlapWhileTransitioning:1];
    [(LibraryController *)self->_libraryController setSidebarViewController:v10];
  }

  return viewController;
}

- (void)addBookmarkNavController:(id)controller didFinishWithResult:(BOOL)result bookmark:(id)bookmark
{
  controllerCopy = controller;
  bookmarkCopy = bookmark;
  presentingViewController = [controllerCopy presentingViewController];
  v11 = presentingViewController;
  if (presentingViewController)
  {
    v12 = presentingViewController;
  }

  else
  {
    v12 = controllerCopy;
  }

  v13 = v12;

  [v13 dismissViewControllerAnimated:1 completion:0];
  if (result)
  {
    addBookmarkAnalyticsHandler = [controllerCopy addBookmarkAnalyticsHandler];
    v15 = addBookmarkAnalyticsHandler;
    if (addBookmarkAnalyticsHandler)
    {
      (*(addBookmarkAnalyticsHandler + 16))(addBookmarkAnalyticsHandler);
    }

    v16 = MEMORY[0x277D4A7A0];
    webView = self->_webView;
    mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__BrowserController_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke;
    v19[3] = &unk_2781D6B10;
    v20 = bookmarkCopy;
    [v16 saveLeadImageFromWebView:webView toLeadImageCacheRegisteredWithMetadataManager:mEMORY[0x277D28F58] completionHandler:v19];
  }
}

void __75__BrowserController_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__BrowserController_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke_1022;
    v9[3] = &unk_2781D61F8;
    v10 = *(a1 + 32);
    v11 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v9);

    v8 = v10;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_4;
    }

    v8 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v7 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __75__BrowserController_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke_cold_1();
    }
  }

LABEL_4:
}

void __75__BrowserController_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke_1022(uint64_t a1)
{
  v2 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  [(WebBookmarkCollection *)v2 updateBookmark:*(a1 + 40) withLeadImageURL:?];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  presentedViewController = [dismiss presentedViewController];
  modalBookmarksController = self->_modalBookmarksController;

  if (presentedViewController == modalBookmarksController)
  {
    v6 = self->_modalBookmarksController;
    self->_modalBookmarksController = 0;
  }
}

- (WBSAppReviewPromptManager)appReviewPromptManager
{
  appReviewPromptManager = self->_appReviewPromptManager;
  if (!appReviewPromptManager)
  {
    v4 = +[Application sharedApplication];
    v5 = [v4 webExtensionsControllerForProfileServerID:*MEMORY[0x277D49BD8]];

    v6 = [objc_alloc(MEMORY[0x277D4A6F8]) initWithPresenter:self extensionsController:v5];
    v7 = self->_appReviewPromptManager;
    self->_appReviewPromptManager = v6;

    appReviewPromptManager = self->_appReviewPromptManager;
  }

  return appReviewPromptManager;
}

- (void)presentPromptForAppReviewPromptManager:(id)manager
{
  v5 = +[AppStoreReviewController sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  [v5 showAppReviewPromptInSceneIfNeeded:WeakRetained];
}

- (void)dismissCompletionDetail
{
  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [_catalogViewController dismissCompletionDetailWindowAndResumeEditingIfNeeded:0 completionHandler:0];

  [(BrowserController *)self setFavoritesState:0];
}

- (void)completionDetailViewControllerDidDismiss:(id)dismiss
{
  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [_catalogViewController dismissCompletionDetailWindowAndResumeEditingIfNeeded:1 completionHandler:0];
}

- (void)didCloseBrowserWindow
{
  [(WBProfileWindow *)self->_profileWindow willClose];
  [(BrowserController *)self setWebView:?];
  [(TabController *)self->_tabController clearBrowserController];
  tabController = self->_tabController;
  self->_tabController = 0;

  tabCollectionViewProvider = self->_tabCollectionViewProvider;
  self->_tabCollectionViewProvider = 0;

  barManager = self->_barManager;

  [(_SFBarManager *)barManager cancelCoalescedUpdates];
}

- (void)fraudWarningsToggled
{
  v30 = *MEMORY[0x277D85DE8];
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [safari_browserDefaults synchronize];
  safari_warnAboutFraudulentWebsites = [safari_browserDefaults safari_warnAboutFraudulentWebsites];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  browserWindowController = [(BrowserController *)self browserWindowController];
  browserControllers = [browserWindowController browserControllers];

  obj = browserControllers;
  v6 = [browserControllers countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v19 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        tabController = [v8 tabController];
        allTabDocuments = [tabController allTabDocuments];

        v11 = [allTabDocuments countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = *v21;
          do
          {
            v13 = 0;
            do
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(allTabDocuments);
              }

              webView = [*(*(&v20 + 1) + 8 * v13) webView];
              configuration = [webView configuration];
              preferences = [configuration preferences];
              [preferences _setSafeBrowsingEnabled:safari_warnAboutFraudulentWebsites];

              ++v13;
            }

            while (v11 != v13);
            v11 = [allTabDocuments countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v6);
      browserControllers = obj;
      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }
}

- (void)_setPresentingModalBookmarksController:(int)controller exclusively:(void *)exclusively importHandler:(void *)handler withCollection:(void *)collection bookmarkUUIDString:(uint64_t)string animated:(void *)animated completion:
{
  exclusivelyCopy = exclusively;
  handlerCopy = handler;
  collectionCopy = collection;
  animatedCopy = animated;
  if (self)
  {
    if ([self isPresentingModalBookmarksController] == a2 || objc_msgSend(self[33], "isShowingDefaultBrowserSheet"))
    {
      if (animatedCopy)
      {
        animatedCopy[2](animatedCopy);
      }
    }

    else
    {
      v19 = self[18];
      if (a2)
      {
        if (!v19)
        {
          v20 = [(BrowserController *)self _newModalBookmarksControllerWithCollection:handlerCopy showsOnlyActiveCollection:exclusivelyCopy != 0];
          v21 = self[18];
          self[18] = v20;
        }

        if (exclusivelyCopy)
        {
          controller = 1;
        }

        if (controller == 1 && handlerCopy)
        {
          [self[18] setCurrentCollection:handlerCopy];
        }

        else if (handlerCopy)
        {
          [self setCurrentBookmarksCollection:handlerCopy];
        }

        [self[18] setRootBookmarkUUIDString:collectionCopy];
        [self[18] setImportHandler:exclusivelyCopy];
        [self[18] setPrefersHalfHeightSheetPresentationWithLoweredBar:controller ^ 1u];
        presentationController = [self[18] presentationController];
        [presentationController setDelegate:self];

        [(BrowserController *)self _presentModalViewController:3 fromBarItem:string animated:animatedCopy completion:?];
      }

      else
      {
        v22 = v19;
        v23 = self[18];
        self[18] = 0;

        if (([v22 isBeingDismissed] & 1) == 0)
        {
          presentedViewController = [v22 presentedViewController];
          if (presentedViewController)
          {
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __140__BrowserController__setPresentingModalBookmarksController_exclusively_importHandler_withCollection_bookmarkUUIDString_animated_completion___block_invoke;
            v26[3] = &unk_2781D6B88;
            v27 = v22;
            stringCopy = string;
            v28 = animatedCopy;
            [presentedViewController dismissViewControllerAnimated:0 completion:v26];
          }

          else
          {
            [v22 dismissViewControllerAnimated:string completion:animatedCopy];
          }
        }
      }
    }
  }
}

uint64_t __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 presentedViewController];
  v4 = v3;
  if (!v3 || ([v3 isBeingDismissed] & 1) != 0)
  {
    goto LABEL_9;
  }

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || NSClassFromString(@"OBWelcomeController") && (objc_opt_isKindOfClass())
  {
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 viewControllers];
      v9 = [v8 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    if ((*(a1 + 40) & 4) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      dispatch_group_enter(*(a1 + 32));
      v11 = [v5 presentingViewController];
      v12 = *(a1 + 48);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke_6;
      v13[3] = &unk_2781D60B8;
      v14 = *(a1 + 32);
      [v11 dismissViewControllerAnimated:v12 completion:v13];

      v6 = 1;
      goto LABEL_10;
    }
  }

LABEL_9:
  v6 = 0;
LABEL_10:

  return v6;
}

void __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke_7(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 368));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:a1[4] didDismissTransientUIWithOptions:a1[6]];
  }

  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (void)_presentModalViewController:(uint64_t)controller fromBarItem:(uint64_t)item animated:(void *)animated completion:
{
  v11 = a2;
  animatedCopy = animated;
  if (self)
  {
    if (*MEMORY[0x277D291C0] == controller || controller == 11 && ![self hasDedicatedDownloadsToolbarItem])
    {
      v10 = 0;
    }

    else
    {
      v10 = [[BarPopoverSourceInfo alloc] initWithBrowserController:self barItem:controller];
    }

    [(BrowserController *)self _presentModalViewController:v11 fromPopoverSource:v10 useAdaptivePresentationInCompact:controller != 11 animated:item completion:animatedCopy];
  }
}

- (uint64_t)_shouldPresentViewControllerUsingAdaptivePopover:(uint64_t)IsPad
{
  v3 = a2;
  if (IsPad)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      IsPad = _SFDeviceIsPad();
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && ([v3 viewControllers], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (_SFDeviceIsPad() & 1) == 0 && (objc_msgSend(v3, "_sf_isPKAddPassesViewController"))
      {
        IsPad = 0;
      }

      else
      {
        IsPad = [v3 _sf_isMFMailComposeViewController] ^ 1;
      }
    }
  }

  return IsPad;
}

- (void)_setSheetPresentationIfNeededForController:(uint64_t)controller
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (controller && (_SFDeviceIsPad() & 1) == 0 && (SFDeviceIsAlwaysReachable() & 1) == 0)
  {
    capsuleCollectionViewLayout = [*(controller + 264) capsuleCollectionViewLayout];
    v5 = capsuleCollectionViewLayout;
    if (capsuleCollectionViewLayout && [capsuleCollectionViewLayout integerValue] != 2 && objc_msgSend(v3, "safari_prefersHalfHeightSheetPresentationWithLoweredBar"))
    {
      presentationController = [v3 presentationController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = presentationController;
        mediumDetent = [MEMORY[0x277D75A28] mediumDetent];
        v11[0] = mediumDetent;
        largeDetent = [MEMORY[0x277D75A28] largeDetent];
        v11[1] = largeDetent;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
        [v7 setDetents:v10];
      }
    }
  }
}

- (BookmarksNavigationController)_newModalBookmarksControllerWithCollection:(uint64_t)collection showsOnlyActiveCollection:
{
  v5 = a2;
  if (self)
  {
    if ((collection & 1) != 0 || ![MEMORY[0x277D49A08] isSaveForLaterEnabled])
    {
      v8 = [[BookmarksNavigationController alloc] initWithBookmarksDelegate:self linkPreviewProvider:self collection:v5 showsOnlyActiveCollection:collection];
      [(BookmarksNavigationController *)v8 setNavigationIntentHandler:self];
    }

    else
    {
      v6 = [BookmarksViewController alloc];
      mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      v8 = [(BookmarksViewController *)v6 initWithBookmarkCollection:mainBookmarkCollection focusedCollectionType:v5];

      [(BookmarksNavigationController *)v8 setBookmarksNavigationControllerDelegate:self];
      [(BookmarksNavigationController *)v8 setLinkPreviewProvider:self];
      [(BookmarksNavigationController *)v8 setNavigationIntentHandler:self];
      tabGroupProvider = [self tabGroupProvider];
      [(BookmarksNavigationController *)v8 setTabGroupProvider:tabGroupProvider];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)showBookmarksPanelWithNonAnimatedTransitionWithCollection:(id)collection
{
  collectionCopy = collection;
  _bookmarksPresentationStyle = [(BrowserController *)self _bookmarksPresentationStyle];
  if ((_bookmarksPresentationStyle - 1) >= 2)
  {
    if (!_bookmarksPresentationStyle)
    {
      [(BrowserController *)self setPresentingModalBookmarksController:1 withExclusiveCollection:collectionCopy bookmarkUUIDString:0 animated:0];
    }
  }

  else
  {
    [(SidebarUIProxy *)self->_sidebarUIProxy setShowingSidebar:1 completion:0];
  }
}

- (void)makeSpaceForTabWithPrivateBrowsing:(BOOL)browsing resultHandler:(id)handler
{
  browsingCopy = browsing;
  handlerCopy = handler;
  if ([(TabController *)self->_tabController canAddNewTabForPrivateBrowsing:browsingCopy])
  {
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    v6 = [[TabLimitCleanupWizard alloc] initForPrivateBrowsing:browsingCopy withBrowserController:self resultHandler:handlerCopy];
    makeViewController = [v6 makeViewController];
    [(BrowserController *)self _presentModalViewController:makeViewController fromBarItem:7 completion:0];
  }
}

- (void)barManager:(id)manager didReceiveTapForBarItem:(int64_t)item
{
  tabBarManager = [(BrowserController *)self tabBarManager];
  [tabBarManager setActiveItemIsExpanded:0 animated:objc_msgSend(tabBarManager completionHandler:{"displayMode") != 2, 0}];
  if (item != 12)
  {
    if (item == 13)
    {
      v7 = 6;
    }

    else
    {
      v7 = 2;
    }

    [(BrowserController *)self _dismissTransientUIAnimated:v7 dismissalOptions:0 completionHandler:?];
  }

  primaryNavigationBar = [(BrowserRootViewController *)self->_rootViewController primaryNavigationBar];
  switch(item)
  {
    case 0:
      [(BrowserController *)&self->super.super.super.isa _goBackAllowingNewTabToSpawnIfNeeded:?];
      v15 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v15, OS_LOG_TYPE_DEFAULT, "Tap back button from the toolbar", buf, 2u);
      }

      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] reportIOSToolbarButtonUsage:0 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
      goto LABEL_31;
    case 1:
      [(BrowserController *)&self->super.super.super.isa _goForwardAllowingNewTabToSpawnIfNeeded:?];
      v18 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_DEFAULT, "Tap forward button from the toolbar", buf, 2u);
      }

      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] reportIOSToolbarButtonUsage:1 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
      goto LABEL_31;
    case 2:
      [(BrowserController *)self toggleBookmarksPresentation];
      v17 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v17, OS_LOG_TYPE_DEFAULT, "Tap tab group button from the toolbar", buf, 2u);
      }

      break;
    case 3:
      [(BrowserController *)self toggleBookmarksPresentation];
      v16 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v16, OS_LOG_TYPE_DEFAULT, "Tap bookmarks button from the toolbar", buf, 2u);
      }

      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] reportIOSToolbarButtonUsage:33 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
      goto LABEL_31;
    case 4:
      [(BrowserController *)self toggleVoiceSearch];
      break;
    case 5:
    case 6:
      [(BrowserController *)self shareCurrentPage:0];
      break;
    case 7:
      tabController = self->_tabController;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __56__BrowserController_barManager_didReceiveTapForBarItem___block_invoke;
      v19[3] = &unk_2781D63F8;
      v19[4] = self;
      [(TabController *)tabController openNewTabWithOptions:0 completionHandler:v19];
      break;
    case 8:
      tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
      [tabThumbnailCollectionView presentAnimated:1];

      v13 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "Tap tab expose button from the toolbar", buf, 2u);
      }

      mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8]2 didEnterTabViewWithMethod:0];

      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] reportIOSToolbarButtonUsage:8 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
      goto LABEL_31;
    case 11:
      v9 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Tap downloads button from the toolbar", buf, 2u);
      }

      [(BrowserController *)self presentDownloadsViewController];
      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] reportIOSToolbarButtonUsage:21 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
LABEL_31:

      break;
    case 12:
      [(BrowserController *)self navigationBarCancelButtonWasTapped:0];
      break;
    case 13:
      [(BrowserController *)self navigationBarFormatMenuButtonWasTapped:primaryNavigationBar];
      break;
    case 14:
      [(BrowserController *)self navigationBarStopLoadingButtonWasTapped:primaryNavigationBar];
      break;
    case 15:
      [(BrowserController *)self navigationBarReloadButtonWasTapped:primaryNavigationBar];
      break;
    default:
      break;
  }
}

void __56__BrowserController_barManager_didReceiveTapForBarItem___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "Tap new tab button from the toolbar", v6, 2u);
    }

    v4 = [MEMORY[0x277D499B8] sharedLogger];
    [v4 didOpenNewBlankTabWithTrigger:2 tabCollectionViewType:{objc_msgSend(*(*(a1 + 32) + 944), "visibleTabCollectionViewType")}];

    v5 = [MEMORY[0x277D499B8] sharedLogger];
    [v5 reportIOSToolbarButtonUsage:4 withLayout:{objc_msgSend(*(a1 + 32), "analyticsLayoutProvenance")}];
  }
}

- (void)barManager:(id)manager didReceiveTouchDownForBarItem:(int64_t)item
{
  if ((item | 8) == 0xD)
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    readerContext = [activeTabDocument readerContext];
    [readerContext checkReaderAvailability];
  }
}

- (void)barManager:(id)manager didReceiveLongPressForBarItem:(int64_t)item
{
  [(BrowserController *)self _dismissTransientUIAnimated:4 * (item == 13) dismissalOptions:0 completionHandler:?];
  if (item == 13)
  {
    capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    selectedItemNavigationBar = [capsuleViewController selectedItemNavigationBar];
    [(BrowserController *)self navigationBarReaderButtonWasTapped:selectedItemNavigationBar];
  }

  else if (item == 5)
  {

    [(BrowserController *)self _readerButtonTapped];
  }
}

- (void)barManager:(id)manager willRegisterBarWithToken:(id)token
{
  v25[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  objc_initWeak(&location, self);
  v6 = [UserNavigationDropInteraction alloc];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__BrowserController_barManager_willRegisterBarWithToken___block_invoke;
  v21[3] = &unk_2781D6BB0;
  objc_copyWeak(&v22, &location);
  v7 = [(UserNavigationDropInteraction *)v6 initWithOpensNewTab:1 tabOrder:0 navigationHandler:v21];
  v25[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];

  objc_destroyWeak(&v22);
  if (objc_opt_respondsToSelector())
  {
    v9 = [tokenCopy UIBarButtonItemForItem:3];
    [v9 setSpringLoaded:1];

    v10 = [tokenCopy UIBarButtonItemForItem:7];
    [v10 _setInteractions:v8];
LABEL_11:

    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [tokenCopy viewForBarItem:3];
    [v11 setSpringLoaded:1];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v8;
    v12 = [v10 countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v12)
    {
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          v16 = [tokenCopy viewForBarItem:{7, v17}];
          [v16 addInteraction:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v12);
    }

    goto LABEL_11;
  }

LABEL_12:

  objc_destroyWeak(&location);
}

void __57__BrowserController_barManager_willRegisterBarWithToken___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dispatchNavigationIntent:v3];
}

- (id)barManager:(id)manager visibleBarItemsForLayout:(int64_t)layout availableItems:(id)items
{
  itemsCopy = items;
  if ([(BrowserRootViewController *)self->_rootViewController toolbarPlacement]== 1)
  {
    if (layout == 1)
    {
      v8 = [MEMORY[0x277CBEB98] setWithObject:&unk_2827FBEF0];
    }

    else
    {
      if (layout)
      {
        goto LABEL_7;
      }

      v8 = [MEMORY[0x277CBEB98] set];
    }

    v9 = v8;

    itemsCopy = v9;
  }

LABEL_7:

  return itemsCopy;
}

- (void)_didDismissManageExtensionsViewController:(id)controller
{
  object = [controller object];
  presentingPageFormatMenu = [object presentingPageFormatMenu];
  v5 = +[Application sharedApplication];
  if ([v5 isPrivateBrowsingLocked])
  {
    browserContentController = [(_SFPageFormatMenuController *)presentingPageFormatMenu browserContentController];
    activeDocument = [browserContentController activeDocument];
    isPrivateBrowsingEnabled = [activeDocument isPrivateBrowsingEnabled];
  }

  else
  {
    isPrivateBrowsingEnabled = 0;
  }

  if ((isPrivateBrowsingEnabled & 1) == 0 && presentingPageFormatMenu && presentingPageFormatMenu == self->_pageFormatMenuController)
  {
    [(BrowserController *)self barManager:self->_barManager didReceiveTapForBarItem:13];
  }
}

id __46__BrowserController__updateAddTabMenuProvider__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277CBEB18] array];
    if (_SFDeviceIsPad())
    {
      v3 = [WeakRetained tabBarManager];
      v4 = [v3 displayMode];

      if (v4 == 1)
      {
        v5 = [MEMORY[0x277D75710] sf_tabMenu];
        [v2 addObject:v5];
      }
    }

    if ((*(WeakRetained + 720) & 1) == 0)
    {
      v6 = *(WeakRetained + 41);
      v7 = [WeakRetained tabController];
      v8 = [v7 activeTabGroupUUID];
      v9 = [v6 recentlyClosedTabsMenuForTabGroupWithUUID:v8];
      [v2 addObject:v9];
    }
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

void __74__BrowserController_toggleBookmarksPresentationWithCollection_completion___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXSignposts();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_215819000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ShowBookmarks", " enableTelemetry=YES ", v1, 2u);
  }
}

void __74__BrowserController_toggleBookmarksPresentationWithCollection_completion___block_invoke_1050(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [(BrowserController *)WeakRetained _updateSidebarStickinessAfterUserAction];
    if (*(a1 + 32))
    {
      v2 = [WeakRetained currentBookmarksCollection];
      v3 = [v2 isEqualToString:*(a1 + 32)];

      if ((v3 & 1) == 0)
      {
        [WeakRetained setCurrentBookmarksCollection:*(a1 + 32)];
      }
    }
  }
}

uint64_t __74__BrowserController_toggleBookmarksPresentationWithCollection_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)editBookmarksKeyPressed
{
  _bookmarksPresentationStyle = [(BrowserController *)self _bookmarksPresentationStyle];
  if ((_bookmarksPresentationStyle - 1) >= 2)
  {
    if (!_bookmarksPresentationStyle)
    {
      if ([(BrowserController *)self isPresentingModalBookmarksController])
      {
        [(BrowserController *)self setCurrentBookmarksCollection:@"BookmarksCollection"];
      }

      else
      {
        [(BrowserController *)self toggleBookmarksPresentationWithCollection:0 completion:?];
      }

      modalBookmarksController = self->_modalBookmarksController;

      [(ModalBookmarksPresenting *)modalBookmarksController toggleEditBookmarks];
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__BrowserController_editBookmarksKeyPressed__block_invoke;
    aBlock[3] = &unk_2781D63F8;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
    if ([(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar])
    {
      [(BrowserController *)self setCurrentBookmarksCollection:@"BookmarksCollection"];
      v4[2](v4, 1);
    }

    else
    {
      [(BrowserController *)self toggleBookmarksPresentationWithCollection:v4 completion:?];
    }
  }
}

uint64_t __44__BrowserController_editBookmarksKeyPressed__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 912) toggleEditBookmarks];
  }

  return result;
}

- (void)openBookmark:(id)bookmark
{
  propertyList = [bookmark propertyList];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    integerValue = [propertyList integerValue];
    mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v4 = [mainBookmarkCollection bookmarkWithID:integerValue];

    builder = [MEMORY[0x277D28F40] builder];
    builder2 = [builder navigationIntentWithBookmark:v4];
    [(BrowserController *)self dispatchNavigationIntent:builder2];
    goto LABEL_6;
  }

  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:propertyList];
  mEMORY[0x277D28CD8] = [MEMORY[0x277D28CD8] sharedController];
  topLevelManagedBookmarkFolder = [mEMORY[0x277D28CD8] topLevelManagedBookmarkFolder];
  builder = [topLevelManagedBookmarkFolder findChildBookmarkWithUUID:v4];

  if (builder)
  {
    builder2 = [MEMORY[0x277D28F40] builder];
    allDescendantsAsWebBookmarks = [builder allDescendantsAsWebBookmarks];
    firstObject = [allDescendantsAsWebBookmarks firstObject];
    v11 = [builder2 navigationIntentWithBookmark:firstObject];

    [(BrowserController *)self dispatchNavigationIntent:v11];
LABEL_6:
  }

LABEL_8:
}

- (void)openHistoryURL:(id)l
{
  lCopy = l;
  propertyList = [lCopy propertyList];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    builder = [MEMORY[0x277D28F40] builder];
    v7 = MEMORY[0x277CBEBC0];
    propertyList2 = [lCopy propertyList];
    v9 = [v7 URLWithString:propertyList2];
    v10 = [builder navigationIntentWithHistoryURL:v9];

    [(BrowserController *)self dispatchNavigationIntent:v10];
  }
}

- (void)openRecentlyClosedTab:(id)tab
{
  tabCopy = tab;
  propertyList = [tabCopy propertyList];
  v5 = [propertyList objectForKeyedSubscript:*MEMORY[0x277D28FA8]];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  propertyList2 = [tabCopy propertyList];
  v9 = [propertyList2 objectForKeyedSubscript:*MEMORY[0x277D28FB0]];
  v10 = [v7 initWithUUIDString:v9];

  tabController = [(BrowserController *)self tabController];
  [tabController openRecentlyClosedTabWithUUID:v10 inTabGroupWithUUID:v6];
}

- (void)_prepareToPresentActivityViewController
{
  if (self)
  {
    tabController = [self tabController];
    activeTabDocument = [tabController activeTabDocument];

    *(self + 115) = 0;
    *(self + 113) = 0;
    [*(self + 216) _cancel];
    v4 = [[ActionPanel alloc] initWithTabDocument:activeTabDocument activityDelegate:self menuStyle:0];
    v5 = *(self + 216);
    *(self + 216) = v4;

    [*(self + 216) setDelegate:self];
    objc_initWeak(&location, *(self + 216));
    objc_initWeak(&from, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__BrowserController__prepareToPresentActivityViewController__block_invoke;
    v6[3] = &unk_2781D6C28;
    objc_copyWeak(&v7, &from);
    objc_copyWeak(&v8, &location);
    [activeTabDocument fetchCanonicalURLWithCompletionHandler:v6];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __60__BrowserController__prepareToPresentActivityViewController__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    if (v4)
    {
      v5 = WeakRetained[27];
      if (v4 == v5)
      {
        [v5 setSharingURL:v6];
        *(WeakRetained + 115) = 1;
        [(BrowserController *)WeakRetained _presentActionPanelIfReady];
      }
    }
  }
}

- (void)_presentActionPanelIfReady
{
  if (self && *(self + 216) && *(self + 115) == 1 && *(self + 113) == 1)
  {
    tabController = [self tabController];
    activeTabDocument = [tabController activeTabDocument];
    [activeTabDocument hideFindOnPage];

    [self setCanFocusNavigationBarURL:0];
    v4 = *(self + 216);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__BrowserController__presentActionPanelIfReady__block_invoke;
    v9[3] = &unk_2781D60B8;
    v9[4] = self;
    [self _presentModalViewController:v4 fromBarItem:6 completion:v9];
    objc_storeWeak((self + 176), *(self + 216));
    v5 = *(self + 216);
    *(self + 216) = 0;

    *(self + 115) = 0;
    *(self + 113) = 0;
    tabController2 = [self tabController];
    activeTabDocument2 = [tabController2 activeTabDocument];

    webExtensionsController = [activeTabDocument2 webExtensionsController];
    [webExtensionsController didViewToolbarItemBadgesInTab:activeTabDocument2];
  }
}

- (id)activityItemsConfiguration
{
  v3 = objc_opt_new();
  activeTabGroupOrTabGroupVisibleInSwitcher = [(TabController *)self->_tabController activeTabGroupOrTabGroupVisibleInSwitcher];
  if ([activeTabGroupOrTabGroupVisibleInSwitcher isNamed] && (-[TabController shareRecordForActiveTabGroupIfIsShared](self->_tabController, "shareRecordForActiveTabGroupIfIsShared"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_alloc(MEMORY[0x277D28D78]), -[BrowserController tabGroupManager](self, "tabGroupManager"), v7 = objc_claimAutoreleasedReturnValue(), -[TabController iconForSharingActiveTabGroup](self->_tabController, "iconForSharingActiveTabGroup"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "initWithTabGroup:inTabGroupManager:existingShare:icon:", activeTabGroupOrTabGroupVisibleInSwitcher, v7, v5, v8), v8, v7, v5, v9) || (v9 = 0, v10 = 0, objc_msgSend(v3, "count")))
  {
    v10 = [[ActivityItemConfiguration alloc] initWithInnerItemConfigurationProvider:v9 additionalItemProviders:v3];
  }

  return v10;
}

- (id)newCollaborationButton
{
  activeTabGroupOrTabGroupVisibleInSwitcher = [(TabController *)self->_tabController activeTabGroupOrTabGroupVisibleInSwitcher];
  shareRecordForActiveTabGroupIfIsShared = [(TabController *)self->_tabController shareRecordForActiveTabGroupIfIsShared];
  v5 = [(BrowserController *)self newCollaborationButtonWithActiveTabGroup:activeTabGroupOrTabGroupVisibleInSwitcher existingShare:shareRecordForActiveTabGroupIfIsShared];

  return v5;
}

- (id)newCollaborationButtonWithActiveTabGroup:(id)group existingShare:(id)share
{
  groupCopy = group;
  shareCopy = share;
  if (shareCopy)
  {
    tabGroupManager = [(BrowserController *)self tabGroupManager];
    v9 = objc_alloc(MEMORY[0x277D28D78]);
    v10 = [(TabController *)self->_tabController iconForSharingTabGroup:groupCopy];
    v11 = [v9 initWithTabGroup:groupCopy inTabGroupManager:tabGroupManager existingShare:shareCopy icon:v10];

    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v12 = get_SWCollaborationButtonViewClass(void)::softClass;
    v25 = get_SWCollaborationButtonViewClass(void)::softClass;
    if (!get_SWCollaborationButtonViewClass(void)::softClass)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = ___ZL34get_SWCollaborationButtonViewClassv_block_invoke;
      v21[3] = &unk_2781D60E0;
      v21[4] = &v22;
      ___ZL34get_SWCollaborationButtonViewClassv_block_invoke(v21);
      v12 = v23[3];
    }

    v13 = v12;
    _Block_object_dispose(&v22, 8);
    v14 = [v12 alloc];
    itemProvider = [v11 itemProvider];
    v16 = [v14 initWithItemProvider:itemProvider];

    [(BrowserController *)&self->super.super.super.isa _updateParticipantsListForCollaborationButton:v16 contacts:MEMORY[0x277CBEBF8]];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__BrowserController_newCollaborationButtonWithActiveTabGroup_existingShare___block_invoke;
    v19[3] = &unk_2781D6C50;
    v19[4] = self;
    v17 = v16;
    v20 = v17;
    [tabGroupManager getActiveParticipantsInTabGroup:groupCopy completionHandler:v19];
    if (objc_opt_respondsToSelector())
    {
      [v17 setShowManageButton:0];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __76__BrowserController_newCollaborationButtonWithActiveTabGroup_existingShare___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allObjects];
  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_1055];

  [(BrowserController *)*(a1 + 32) _updateParticipantsListForCollaborationButton:v4 contacts:?];
}

id __76__BrowserController_newCollaborationButtonWithActiveTabGroup_existingShare___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 safari_contact];

  return v2;
}

- (id)_participantsListForCollaborationView:(id *)view
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (view)
  {
    if (v3)
    {
      v5 = [view[67] objectForKey:v3];
      if (!v5)
      {
        activeTabGroup = [view[41] activeTabGroup];
        v7 = objc_alloc(MEMORY[0x277D28C98]);
        v5 = [v7 initWithContacts:MEMORY[0x277CBEBF8]];
        [view[67] setObject:v5 forKey:v4];
        objc_initWeak(&location, view);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __59__BrowserController__participantsListForCollaborationView___block_invoke;
        v18[3] = &unk_2781D6C78;
        objc_copyWeak(&v19, &location);
        [v5 setInfoViewControllerHandler:v18];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __59__BrowserController__participantsListForCollaborationView___block_invoke_2;
        v15[3] = &unk_2781D6CC8;
        objc_copyWeak(&v17, &location);
        v8 = activeTabGroup;
        v16 = v8;
        [v5 setRowTapHandler:v15];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __59__BrowserController__participantsListForCollaborationView___block_invoke_4;
        v13[3] = &unk_2781D6840;
        objc_copyWeak(&v14, &location);
        [v5 setManageHandler:v13];
        objc_initWeak(&from, v4);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __59__BrowserController__participantsListForCollaborationView___block_invoke_5;
        v10[3] = &unk_2781D6CF0;
        objc_copyWeak(&v11, &from);
        [v5 setResizeHandler:v10];
        [v5 setPreservesSuperviewLayoutMargins:1];
        objc_destroyWeak(&v11);
        objc_destroyWeak(&from);
        objc_destroyWeak(&v14);

        objc_destroyWeak(&v17);
        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
      }
    }
  }

  return v5;
}

void __59__BrowserController__participantsListForCollaborationView___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [(BrowserController *)WeakRetained _presentModalViewController:v5];
  }
}

void __59__BrowserController__participantsListForCollaborationView___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 safari_shareParticipantIdentifier];
    v6 = WeakRetained[99];
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__BrowserController__participantsListForCollaborationView___block_invoke_3;
    v8[3] = &unk_2781D6CA0;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    [v6 getPresenceTabUUIDForParticipantIdentifier:v5 inTabGroup:v7 completionHandler:v8];

    objc_destroyWeak(&v10);
  }
}

void __59__BrowserController__participantsListForCollaborationView___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = WeakRetained[41];
      v7 = [*(a1 + 32) uuid];
      [v6 setActiveTabGroupUUID:v7];

      v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
      v9 = [v6 tabWithUUID:v8];
      [v6 setActiveTab:v9];
    }

    v3 = v10;
  }
}

void __59__BrowserController__participantsListForCollaborationView___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = objc_alloc(MEMORY[0x277D75288]);
    v2 = [WeakRetained[41] shareRecordForActiveTabGroup];
    v3 = [MEMORY[0x277CBC218] safari_cloudTabsContainer];
    v4 = [v1 initWithShare:v2 container:v3];

    [v4 setDelegate:WeakRetained];
    [v4 setModalPresentationStyle:2];
    [(BrowserController *)WeakRetained _presentModalViewController:v4];
  }
}

void __59__BrowserController__participantsListForCollaborationView___block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setDetailViewListContent:v5];
  }
}

- (void)clearParticipantsList
{
  [(NSMapTable *)self->_cachedParticipantLists removeAllObjects];
  [(_SFBarManager *)self->_barManager setCollaborationButton:0];
  tabGroupBanner = [(BannerController *)self->_bannerController tabGroupBanner];
  [tabGroupBanner setCollaborationButton:0];
}

- (void)presentAutomaticTabClosingAlertController
{
  v3 = MEMORY[0x277D75110];
  v4 = _WBSLocalizedString();
  v5 = _WBSLocalizedString();
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:_SFDeviceAlertStyle()];

  view = [v6 view];
  [view setAccessibilityIdentifier:@"AutomaticallyCloseTabsSheet"];

  for (i = 0; i != 4; ++i)
  {
    v9 = MEMORY[0x277D750F8];
    v10 = WBSAutomaticTabClosingIntervalPromptTitle();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__BrowserController_presentAutomaticTabClosingAlertController__block_invoke;
    v15[3] = &__block_descriptor_40_e23_v16__0__UIAlertAction_8l;
    v15[4] = i;
    v11 = [v9 actionWithTitle:v10 style:i == 0 handler:v15];

    v12 = WBSAutomaticTabClosingIntervalSettingsTitle();
    v13 = [v12 stringByReplacingOccurrencesOfString:@" " withString:&stru_2827BF158];
    [v11 setAccessibilityIdentifier:v13];

    [v6 addAction:v11];
  }

  viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
  [viewControllerToPresentFrom presentViewController:v6 animated:1 completion:0];
}

void __62__BrowserController_presentAutomaticTabClosingAlertController__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = WBSAutomaticTabClosingIntervalAnalyticsTitle();
  [v6 setAccessibilityIdentifier:v3];

  [MEMORY[0x277D49E28] setAutomaticTabClosingInterval:*(a1 + 32)];
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  v5 = WBSAutomaticTabClosingIntervalAnalyticsTitle();
  [v4 didChooseIntervalFromAutomaticTabClosingFirstTimeExperiencePrompt:v5];
}

- (void)_addBookmarkForCurrentTabKeyPressed:(void *)pressed title:
{
  pressedCopy = pressed;
  if (self)
  {
    [(BrowserController *)self _addBookmarkForCurrentTabKeyPressed:a2 title:pressedCopy addToFavorites:0];
  }
}

void __78__BrowserController__addBookmarkForCurrentTabKeyPressed_title_addToFavorites___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D499B8] sharedLogger];
  v3 = v2;
  if (v1 == 1)
  {
    [v2 didAddBookmarkWithMethod:1];
  }

  else
  {
    [v2 didAddBookmarkFromToolbarMenuWithItemType:0];
  }
}

- (void)addBookmarkFolderForCurrentTabs
{
  currentTabs = [(TabController *)self->_tabController currentTabs];
  [(BrowserController *)self addBookmarkFolderForTabs:?];
}

- (void)fastAddBookmark
{
  if (![(BrowserController *)self showDemoModeFeatureDisabledAlert])
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    [(BrowserController *)self fastAddBookmarkForTabDocument:?];
  }
}

- (void)fastAddBookmarkForTabDocument:(id)document
{
  documentCopy = document;
  makeBookmark = [documentCopy makeBookmark];
  if (makeBookmark)
  {
    v6 = +[FolderSuggestionManager sharedManager];
    suggestedFolderDestinations = [v6 suggestedFolderDestinations];

    if ([suggestedFolderDestinations count])
    {
      firstObject = [suggestedFolderDestinations firstObject];
      mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      readingListFolder = [mainBookmarkCollection readingListFolder];

      if (firstObject == readingListFolder)
      {
        [makeBookmark migrateToReadingListItem];
      }

      v11 = objc_alloc(MEMORY[0x277CDB6C8]);
      mainBookmarkCollection2 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      v13 = [v11 initWithCollection:mainBookmarkCollection2 syntheticBookmarkProvider:0];

      firstObject2 = [suggestedFolderDestinations firstObject];
      v15 = [v13 saveBookmark:makeBookmark inFolder:firstObject2];

      v16 = +[ReadingListMetadataFetcher sharedMetadataFetcher];
      if ([documentCopy hasDoneReaderDetection])
      {
        v17 = documentCopy;
      }

      else
      {
        v17 = 0;
      }

      [v16 fetchMetadataForReadingListBookmark:makeBookmark withProvider:v17];
      WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
      if (objc_opt_respondsToSelector())
      {
        [(_SFWebView *)self->_webView bounds];
        UIRectGetCenter();
        v20 = v19;
        v22 = v21;
        webView = self->_webView;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __51__BrowserController_fastAddBookmarkForTabDocument___block_invoke;
        v24[3] = &unk_2781D6AC0;
        v24[4] = self;
        v25 = makeBookmark;
        v26 = suggestedFolderDestinations;
        [WeakRetained browserController:self animateSafariIconLinkFromPoint:webView inView:v24 withCompletionHandler:{v20, v22}];
      }
    }
  }
}

- (void)addBookmarkFolderForTabs:(id)tabs
{
  v34 = *MEMORY[0x277D85DE8];
  tabsCopy = tabs;
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  array = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = tabsCopy;
  v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = *v30;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          tabController = self->_tabController;
          v9 = objc_alloc(MEMORY[0x277CCAD78]);
          uuid = [v7 uuid];
          v11 = [v9 initWithUUIDString:uuid];
          v12 = [(TabController *)tabController tabWithUUID:v11];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            v14 = v7;
          }

          v15 = v14;

          v7 = v15;
        }

        if (([v7 isBlank] & 1) == 0)
        {
          v16 = objc_alloc(MEMORY[0x277D7B5A0]);
          titleForNewBookmark = [v7 titleForNewBookmark];
          addressForNewBookmark = [v7 addressForNewBookmark];
          configuration = [mainBookmarkCollection configuration];
          v20 = [v16 initWithTitle:titleForNewBookmark address:addressForNewBookmark collectionType:{objc_msgSend(configuration, "collectionType")}];

          [array addObject:v20];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v4);
  }

  v21 = [objc_alloc(MEMORY[0x277CDB8C8]) initWithFolderOfBookmarks:array inCollection:mainBookmarkCollection];
  [v21 setSyntheticBookmarkProvider:self->_tabController];
  if ([v21 prepareForPresentationForAddingBookmark:1])
  {
    [v21 setBookmarkNavDelegate:self];
    [v21 setAddBookmarkAnalyticsHandler:&__block_literal_global_1093];
    [(BrowserController *)self _presentModalViewController:v21 fromBarItem:*MEMORY[0x277D291C0] completion:0];
  }

  else
  {

    v22 = MEMORY[0x277D28BE0];
    viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
    [v22 showLockedDatabaseAlertForAction:1 fromViewController:viewControllerToPresentFrom];

    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didPreventBookmarkActionWithBookmarkType:0 actionType:0];

    v21 = 0;
  }
}

void __46__BrowserController_addBookmarkFolderForTabs___block_invoke()
{
  v0 = [MEMORY[0x277D499B8] sharedLogger];
  [v0 didAddBookmarkFromToolbarMenuWithItemType:1];
}

- (void)presentDownloadsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadsViewController);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__BrowserController_presentDownloadsViewController__block_invoke;
    v10[3] = &unk_2781D60B8;
    v10[4] = self;
    [(DownloadsViewController *)WeakRetained dismissViewControllerAnimated:1 completion:v10];
  }

  else
  {
    v4 = objc_alloc_init(DownloadsViewController);
    [(DownloadsViewController *)v4 setDownloadOpenHandler:self];
    v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v4];
    tabBarManager = [(BrowserController *)self tabBarManager];
    inlineTabBar = [tabBarManager inlineTabBar];
    usesMoreMenu = [inlineTabBar usesMoreMenu];

    if (usesMoreMenu)
    {
      v9 = 5;
    }

    else
    {
      v9 = 11;
    }

    [(BrowserController *)self _presentModalViewController:v5 fromBarItem:v9 completion:0];
    objc_storeWeak(&self->_downloadsViewController, v4);
  }
}

- (void)presentPrintControllerForTabDocument:(id)document frame:(id)frame initiatedByWebContent:(BOOL)content
{
  contentCopy = content;
  documentCopy = document;
  frameCopy = frame;
  if (self->_speculativeLoadDocument == documentCopy)
  {
    [(BrowserController *)self clearSpeculativeLoadDocument];
  }

  else if ([(BrowserController *)self isContinuousReadingDocument:?])
  {
    [(BrowserController *)self clearDocumentForContinuousReading:documentCopy];
  }

  else if (-[BrowserController _canPrintForTabDocument:](self, documentCopy) && -[BrowserController _canUpdateInterfaceWithTabDocument:](self, documentCopy) && !-[TabDocument isShowingFindOnPage](documentCopy, "isShowingFindOnPage") && [MEMORY[0x277D41248] isPrintingAvailable])
  {
    printController = [(TabDocument *)documentCopy printController];
    [printController printFrame:frameCopy initiatedByWebContent:contentCopy completion:&__block_literal_global_1098];
  }
}

- (uint64_t)_canUpdateInterfaceWithTabDocument:(uint64_t)document
{
  v3 = a2;
  if (document)
  {
    WeakRetained = objc_loadWeakRetained((document + 904));
    activationState = [WeakRetained activationState];

    if (activationState)
    {
      document = 0;
    }

    else
    {
      activeTabDocument = [*(document + 328) activeTabDocument];
      document = activeTabDocument == v3;
    }
  }

  return document;
}

void __86__BrowserController_presentPrintControllerForTabDocument_frame_initiatedByWebContent___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v2 = [MEMORY[0x277D499B8] sharedLogger];
    [v2 didPrintPage];
  }
}

- (void)dispatchNavigationIntent:(id)intent
{
  intentCopy = intent;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  uuid = [activeTabDocument uuid];
  [intentCopy setSourceTabUUID:uuid];

  uUID = [(BrowserController *)self UUID];
  [intentCopy setSourceWindowUUID:uUID];

  v7 = +[Application sharedApplication];
  [v7 handleNavigationIntent:intentCopy completion:0];
}

- (void)handleNavigationIntent:(id)intent completion:(id)completion
{
  v130 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  completionCopy = completion;
  v7 = WBS_LOG_CHANNEL_PREFIXPageLoading();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [intentCopy privacyPreservingDescription];
    objc_claimAutoreleasedReturnValue();
    [BrowserController handleNavigationIntent:completion:];
  }

  if ([intentCopy policy] == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserControllerWillCreateBackgroundTab:self];
    }
  }

  if ([intentCopy provenance] == 1)
  {
    if ([intentCopy type] == 5)
    {
      safari_bestURLForUserTypedString = 0;
    }

    else if ([intentCopy type] != 4 || (objc_msgSend(intentCopy, "text"), v10 = objc_claimAutoreleasedReturnValue(), v11 = WBSUnifiedFieldInputTypeForString(), v10, safari_bestURLForUserTypedString = 0, v11) && v11 != 3)
    {
      v12 = [intentCopy URL];
      v13 = v12;
      if (v12)
      {
        safari_bestURLForUserTypedString = v12;
      }

      else
      {
        text = [intentCopy text];
        safari_bestURLForUserTypedString = [text safari_bestURLForUserTypedString];
      }
    }

    [(BrowserController *)self _recordIgnoredSiriSuggestedSitesWithURL:safari_bestURLForUserTypedString];
  }

  if (self->_allowsAutoDismissSidebar && [intentCopy shouldDismissSidebarOnLoad] && -[SidebarUIProxy isShowingSidebar](self->_sidebarUIProxy, "isShowingSidebar") && -[BrowserController isShowingStartPage](self, "isShowingStartPage"))
  {
    [(BrowserController *)self toggleBookmarksPresentationWithCollection:0 completion:?];
  }

  self->_allowsAutoDismissSidebar = 0;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  singleUnpinnedBlankTab = activeTabDocument;
  if ([activeTabDocument isPinned])
  {
    singleUnpinnedBlankTab = [(TabController *)self->_tabController singleUnpinnedBlankTab];
  }

  v122 = 0;
  v123 = &v122;
  v124 = 0x3032000000;
  v125 = __Block_byref_object_copy__3;
  v126 = __Block_byref_object_dispose__3;
  v127 = 0;
  v120[0] = 0;
  v120[1] = v120;
  v120[2] = 0x2020000000;
  v121 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke;
  aBlock[3] = &unk_2781D6D78;
  v17 = singleUnpinnedBlankTab;
  v117 = v17;
  v119 = v120;
  v18 = activeTabDocument;
  v118 = v18;
  v19 = _Block_copy(aBlock);
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke_2;
  v110[3] = &unk_2781D6DA0;
  v20 = v19;
  v114 = v20;
  v21 = intentCopy;
  v111 = v21;
  v115 = v120;
  v22 = v17;
  v112 = v22;
  selfCopy = self;
  v23 = _Block_copy(v110);
  v106[0] = MEMORY[0x277D85DD0];
  v106[1] = 3221225472;
  v106[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke_3;
  v106[3] = &unk_2781D6DC8;
  v106[4] = self;
  v82 = v20;
  v108 = v82;
  v81 = v22;
  v107 = v81;
  v109 = v120;
  v24 = _Block_copy(v106);
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 3221225472;
  v101[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke_4;
  v101[3] = &unk_2781D6E40;
  v25 = completionCopy;
  v104 = v25;
  v105 = &v122;
  v101[4] = self;
  v26 = v21;
  v102 = v26;
  v27 = v18;
  v103 = v27;
  v86 = _Block_copy(v101);
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke_8;
  v96[3] = &unk_2781D6E90;
  v96[4] = self;
  v28 = v26;
  v97 = v28;
  v29 = v24;
  v98 = v29;
  v84 = v23;
  v99 = v84;
  v100 = &v122;
  v85 = _Block_copy(v96);
  if ([v28 type] == 9)
  {
    if ([v28 externalURLSourceApplicationIsSpotlight])
    {
      tabDocumentForSpotlightSearch = [(TabController *)self->_tabController tabDocumentForSpotlightSearch];
      if (tabDocumentForSpotlightSearch)
      {
        v31 = v123[5];
        v123[5] = tabDocumentForSpotlightSearch;
        activeTabDocument8 = tabDocumentForSpotlightSearch;

        [(TabDocumentDropHandler *)activeTabDocument8 handleNavigationIntent:v28 completion:v86];
LABEL_71:

        goto LABEL_72;
      }
    }

    tabController = self->_tabController;
    v34 = [v28 URL];
    activeTabDocument8 = [(TabController *)tabController tabDocumentForURL:v34 forceUnhibernate:1];

    if (activeTabDocument8)
    {
      objc_storeStrong(v123 + 5, activeTabDocument8);
      [(TabDocumentDropHandler *)activeTabDocument8 unhibernate];
      [(TabDocumentDropHandler *)activeTabDocument8 handleNavigationIntent:v28 completion:v86];
      goto LABEL_71;
    }
  }

  if ([v28 type] != 3)
  {
    if ([v28 type] == 11)
    {
      if (([v28 shouldPromptBeforeHandling] & 1) == 0)
      {
        v85[2]();
        v38 = 1;
        goto LABEL_45;
      }

      v39 = [TabDocumentDropHandler alloc];
      viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
      activeTabDocument8 = [(TabDocumentDropHandler *)v39 initWithAlertPresentationViewController:viewControllerToPresentFrom];

      navigationIntents = [v28 navigationIntents];
      v42 = [navigationIntents count];
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke_10;
      v93[3] = &unk_2781D6C00;
      v94 = v85;
      v95 = v86;
      [(TabDocumentDropHandler *)activeTabDocument8 promptIfNeededToConfirmNumberOfNavigationIntents:v42 withCompletionHandler:v93];

      v43 = v94;
LABEL_70:

      goto LABEL_71;
    }

    policy = [v28 policy];
    if (policy > 4)
    {
      if (policy != 5)
      {
        if (policy != 6)
        {
          goto LABEL_72;
        }

        activeTabDocument8 = [v28 URL];
        if (!activeTabDocument8)
        {
          v67 = WBS_LOG_CHANNEL_PREFIXPageLoading();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            privacyPreservingDescription = [v28 privacyPreservingDescription];
            *buf = 138543362;
            v129 = privacyPreservingDescription;
            _os_log_impl(&dword_215819000, v67, OS_LOG_TYPE_INFO, "Unable to download intent because there's no URL: %{public}@", buf, 0xCu);
          }

          (*(v86 + 2))(v86, 0);
          goto LABEL_71;
        }

        activeTabDocument2 = [(TabController *)self->_tabController activeTabDocument];
        isSearchPage = [activeTabDocument2 isSearchPage];
        activeTabDocument3 = [(TabController *)self->_tabController activeTabDocument];
        [activeTabDocument3 setNextLoadComesFromSearchPage:isSearchPage];

        activeTabDocument4 = [(TabController *)self->_tabController activeTabDocument];
        sourceElementInfo = [v28 sourceElementInfo];
        [activeTabDocument4 animateElementToDownloadsBarItemSoon:sourceElementInfo];

        mEMORY[0x277CDB7A0] = [MEMORY[0x277CDB7A0] sharedDownloadDispatcher];
        activeTabDocument5 = [(TabController *)self->_tabController activeTabDocument];
        webView = [activeTabDocument5 webView];
        v43 = [mEMORY[0x277CDB7A0] startDownloadFromWebView:webView URL:activeTabDocument8];

        mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
        [v43 setDelegate:mEMORY[0x277CDB7A8]];

        [v43 setExplicitlySaved:1];
        (*(v86 + 2))(v86, 1);
        goto LABEL_70;
      }

      activeTabDocument8 = [v28 URL];
      text2 = [v28 text];
      v66 = text2;
      if (text2)
      {
        safari_userVisibleString = text2;
      }

      else
      {
        safari_userVisibleString = [(TabDocumentDropHandler *)activeTabDocument8 safari_userVisibleString];
      }

      if (activeTabDocument8)
      {
        mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
        v70 = [(WebBookmarkCollection *)mainBookmarkCollection saveReadingListBookmarkWithTitle:safari_userVisibleString address:activeTabDocument8];

        if (v70)
        {
          mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
          [mEMORY[0x277D499B8] didAddReadingListItemWithMethod:5];
        }

        activeTabDocument6 = [(TabController *)self->_tabController activeTabDocument];
        sourceElementInfo2 = [v28 sourceElementInfo];
        [activeTabDocument6 animateElement:sourceElementInfo2 toBarItem:3];
      }

      else
      {
        activeTabDocument6 = WBS_LOG_CHANNEL_PREFIXPageLoading();
        if (os_log_type_enabled(activeTabDocument6, OS_LOG_TYPE_INFO))
        {
          privacyPreservingDescription2 = [v28 privacyPreservingDescription];
          *buf = 138543362;
          v129 = privacyPreservingDescription2;
          _os_log_impl(&dword_215819000, activeTabDocument6, OS_LOG_TYPE_INFO, "Unable to add intent to reading list because there's no URL: %{public}@", buf, 0xCu);
        }
      }

      (*(v86 + 2))(v86, activeTabDocument8 != 0);
LABEL_69:
      v43 = safari_userVisibleString;
      goto LABEL_70;
    }

    if ((policy - 1) < 4)
    {
      safari_userVisibleString = [v28 webClip];
      if (!safari_userVisibleString || ([(TabController *)self->_tabController switchToTabDocumentForWebClip:safari_userVisibleString], (v45 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v45 = (*(v84 + 2))(v84, 0);
      }

      if ([v28 shouldRelateToSourceTab])
      {
        browserWindowController = [(BrowserController *)self browserWindowController];
        sourceWindowUUID = [v28 sourceWindowUUID];
        v78 = [browserWindowController browserControllerWithUUID:sourceWindowUUID];

        tabController = [v78 tabController];
        sourceTabUUID = [v28 sourceTabUUID];
        v77 = [tabController tabDocumentWithUUID:sourceTabUUID];

        trackerInfo = [v77 trackerInfo];
        queryParameterFilteringDataQueue = [trackerInfo queryParameterFilteringDataQueue];
        trackerInfo2 = [v45 trackerInfo];
        queryParameterFilteringDataQueue2 = [trackerInfo2 queryParameterFilteringDataQueue];
        [queryParameterFilteringDataQueue transferPendingDataToQueue:queryParameterFilteringDataQueue2];
      }

      activeTabDocument7 = [(TabController *)self->_tabController activeTabDocument];
      [v45 setNextLoadComesFromSearchPage:{objc_msgSend(activeTabDocument7, "isSearchPage")}];

      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke_11;
      v87[3] = &unk_2781D6EB8;
      v88 = v28;
      v92 = &v122;
      activeTabDocument8 = v45;
      v89 = activeTabDocument8;
      selfCopy2 = self;
      v91 = v86;
      [(TabDocumentDropHandler *)activeTabDocument8 handleNavigationIntent:v88 completion:v87];

      goto LABEL_69;
    }

    if (policy)
    {
      goto LABEL_72;
    }

    activeTabDocument8 = [(TabController *)self->_tabController activeTabDocument];
    objc_storeStrong(v123 + 5, activeTabDocument8);
    [(TabDocumentDropHandler *)activeTabDocument8 setNextLoadComesFromSearchPage:[(TabDocumentDropHandler *)activeTabDocument8 isSearchPage]];
    bookmark = [v28 bookmark];
    localAttributes = [bookmark localAttributes];
    if (localAttributes)
    {
      bookmark2 = [v28 bookmark];
      isReadingListItem = [bookmark2 isReadingListItem];

      if (!isReadingListItem)
      {
LABEL_55:
        [(TabDocumentDropHandler *)activeTabDocument8 handleNavigationIntent:v28 completion:v86];
        goto LABEL_71;
      }

      bookmark = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [bookmark safari_incrementNumberForKey:*MEMORY[0x277D4A288]];
    }

    goto LABEL_55;
  }

  recentlyClosedTabStateData = [v28 recentlyClosedTabStateData];
  v36 = (*(v29 + 2))(v29, 0, recentlyClosedTabStateData);
  v37 = v123[5];
  v123[5] = v36;

  v38 = v123[5] != 0;
LABEL_45:
  (*(v86 + 2))(v86, v38);
LABEL_72:

  _Block_object_dispose(v120, 8);
  _Block_object_dispose(&v122, 8);
}

uint64_t __55__BrowserController_handleNavigationIntent_completion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isBlank];
  if (result)
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      return 0;
    }

    else if ([*(a1 + 40) isPinned])
    {
      return [*(a1 + 32) isEqual:*(a1 + 40)] ^ 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

TabDocument *__55__BrowserController_handleNavigationIntent_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 56) + 16))() && [*(a1 + 32) canUseExistingBlankTab])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    [*(a1 + 40) unhibernate];
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = [[TabDocument alloc] initWithBrowserController:*(a1 + 48)];
    v5 = *(a1 + 48);
    v6 = *(v5 + 64);
    *(v5 + 64) = 0;
    v7 = [*(*(a1 + 48) + 328) activeTabDocument];
    v8 = [v7 view];
    v9 = [(TabDocument *)v4 webView];
    [v8 applyGeometryToWebView:v9];

    *(*(a1 + 48) + 64) = v6;
    if ([*(a1 + 32) shouldRelateToSourceTab])
    {
      v10 = *(*(a1 + 48) + 328);
      v11 = [*(a1 + 32) sourceTabUUID];
      v12 = [v10 tabDocumentWithUUID:v11];

      [(TabDocument *)v4 setParentTabDocumentForBackClosesSpawnedTab:v12];
      [(TabDocument *)v4 updateAncestryWithParentTab:v12];
    }

    [*(*(a1 + 48) + 328) insertNewTabDocument:v4 forcingOrderAfterTabDocument:v3 inBackground:1 animated:{objc_msgSend(*(*(a1 + 48) + 944), "hasTabBar")}];
    v13 = [*(a1 + 32) type];
    v14 = [MEMORY[0x277D499B8] sharedLogger];
    [v14 didOpenNewTabWithURLWithTrigger:2 isExternalLink:v13 == 9 tabCollectionViewType:{objc_msgSend(*(*(a1 + 48) + 944), "visibleTabCollectionViewType")}];
  }

  return v4;
}

TabDocument *__55__BrowserController_handleNavigationIntent_completion___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1[4] + 824) loadSessionStateDataAndRemoveRecentlyClosedTab:v6];
  v7 = [[TabDocument alloc] initWithTabStateData:v6 hibernated:0 browserController:a1[4]];
  v8 = (*(a1[6] + 16))();
  v9 = *(a1[4] + 328);
  if (v8)
  {
    [v9 replaceTabDocument:a1[5] withTabDocument:v7];
    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    [v9 insertNewTabDocument:v7 forcingOrderAfterTabDocument:v5 inBackground:1 animated:0];
  }

  return v7;
}

void __55__BrowserController_handleNavigationIntent_completion___block_invoke_4(uint64_t a1, char a2)
{
  if (a2)
  {
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v4 = [*(*(a1 + 32) + 328) activeTabDocument];
      v5 = *(*(a1 + 64) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }

    v7 = [(BrowserController *)*(a1 + 32) _animationsAreEnabled];
    if ([*(a1 + 40) shouldOrderToForeground])
    {
      v8 = [*(*(a1 + 32) + 328) activeTabDocument];
      v9 = *(*(*(a1 + 64) + 8) + 40);

      if (v8 != v9)
      {
        [*(*(a1 + 32) + 328) setActiveTabDocument:*(*(*(a1 + 64) + 8) + 40) animated:v7];
      }
    }

    [*(a1 + 32) showBars];
    v10 = [*(a1 + 48) isBlank];
    v11 = [*(*(a1 + 32) + 944) tabThumbnailCollectionView];
    v12 = [v11 itemToActivate];

    if (v12)
    {
      v13 = v10 | 2;
    }

    else
    {
      v13 = v10;
    }

    if (([(BrowserController *)*(a1 + 32) _isWindowLockedForPrivateBrowsing]& 1) != 0)
    {
      v14 = +[Application sharedApplication];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke_5;
      v31[3] = &unk_2781D6E18;
      v15 = *(a1 + 32);
      v34 = v7;
      v31[4] = v15;
      v33 = v13;
      v32 = *(a1 + 56);
      v35 = a2;
      [v14 authenticateToUnlockPrivateBrowsingWithCompletionHandler:v31];

      v16 = v32;
    }

    else
    {
      v19 = [*(a1 + 40) webClip];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 uuid];
        v22 = *(a1 + 32);
        v23 = *(v22 + 688);
        *(v22 + 688) = v21;

        [*(*(a1 + 32) + 680) invalidate];
        v24 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel__enterYttriumStateTimerFired selector:0 userInfo:0 repeats:1.0];
        v25 = *(a1 + 32);
        v26 = *(v25 + 680);
        *(v25 + 680) = v24;
      }

      v27 = *(a1 + 32);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke_7;
      v28[3] = &unk_2781D6DF0;
      v29 = *(a1 + 56);
      v30 = a2;
      [(BrowserController *)v27 _dismissTransientUIAnimated:v7 dismissalOptions:v13 completionHandler:v28];
      v16 = v29;
    }
  }

  else
  {
    v17 = *(a1 + 56);
    if (v17)
    {
      v18 = *(v17 + 16);

      v18();
    }
  }
}

void __55__BrowserController_handleNavigationIntent_completion___block_invoke_5(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke_6;
    v8[3] = &unk_2781D6DF0;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 57);
    [(BrowserController *)v5 _dismissTransientUIAnimated:v3 dismissalOptions:v4 completionHandler:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

uint64_t __55__BrowserController_handleNavigationIntent_completion___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t __55__BrowserController_handleNavigationIntent_completion___block_invoke_7(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void __55__BrowserController_handleNavigationIntent_completion___block_invoke_8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 328);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke_9;
  v8[3] = &unk_2781D6E68;
  v3 = (a1 + 64);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *v3;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 performBatchUpdatesWithBlock:v8];
}

void __55__BrowserController_handleNavigationIntent_completion___block_invoke_9(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) navigationIntents];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v16;
    do
    {
      v6 = 0;
      v7 = v4;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * v6);
        if ([v8 type] == 3)
        {
          v9 = *(a1 + 40);
          v10 = [v8 recentlyClosedTabStateData];
          v11 = (*(v9 + 16))(v9, v7, v10);
        }

        else
        {
          v11 = (*(*(a1 + 48) + 16))();
          [v11 handleNavigationIntent:v8 completion:0];
        }

        v4 = v11;

        v12 = *(*(a1 + 56) + 8);
        v14 = *(v12 + 40);
        v13 = (v12 + 40);
        if (!v14)
        {
          objc_storeStrong(v13, v11);
        }

        ++v6;
        v7 = v4;
      }

      while (v3 != v6);
      v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

uint64_t __55__BrowserController_handleNavigationIntent_completion___block_invoke_10(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __55__BrowserController_handleNavigationIntent_completion___block_invoke_11(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) shouldOrderToForeground];
    v4 = v3;
    if (v3)
    {
      v5 = *(a1 + 40);
    }

    else
    {
      v5 = [*(*(a1 + 48) + 328) activeTabDocument];
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v5);
    if (v4)
    {
      [*(a1 + 40) setPerformingFirstLoadAfterOpenInBackground:0];
    }

    else
    {

      [*(a1 + 40) setPerformingFirstLoadAfterOpenInBackground:1];
      if (([*(*(a1 + 48) + 944) hasTabBar] & 1) == 0)
      {
        v6 = [*(*(a1 + 48) + 328) activeTabDocument];
        v7 = [*(a1 + 32) sourceElementInfo];
        [v6 animateElement:v7 toBarItem:8];
      }
    }
  }

  v8 = *(*(a1 + 56) + 16);

  return v8();
}

- (id)bookmarksNavigationControllerCurrentContinuousReadingItem:(id)item
{
  continuousReadingController = [(BrowserController *)self continuousReadingController];
  currentReadingListItem = [continuousReadingController currentReadingListItem];

  return currentReadingListItem;
}

- (void)bookmarksNavigationController:(id)controller updateReadingListUnreadFilterShowingAllBookmarks:(BOOL)bookmarks
{
  bookmarksCopy = bookmarks;
  continuousReadingController = [(BrowserController *)self continuousReadingController];
  [continuousReadingController setUnreadReadingListItemsOnly:!bookmarksCopy];
}

- (void)bookmarksNavigationControllerViewDidAppear:(id)appear
{
  v4 = +[Application sharedApplication];
  if ([v4 isRunningShowBookmarksTest])
  {
    if ([v4 didStartBookmarksTest])
    {
      [(BrowserController *)self performSelector:sel_toggleBookmarksPresentation withObject:0 afterDelay:0.0];
    }

    else
    {
      [v4 startBookmarksTest];
    }
  }
}

- (void)bookmarksNavigationControllerViewDidDisappear:(id)disappear
{
  v3 = +[Application sharedApplication];
  if ([v3 isRunningShowBookmarksTest])
  {
    if ([v3 didStartBookmarksTest])
    {
      [v3 performSelector:sel_finishedBookmarksTest withObject:0 afterDelay:0.0];
    }

    else
    {
      [v3 startBookmarksTest];
    }
  }
}

- (void)bookmarksNavigationControllerContentDidBecomeDirty:(id)dirty
{
  dirtyCopy = dirty;
  viewIfLoaded = [dirtyCopy viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    [(BrowserController *)self setNeedsSnapshotUpdateForActiveTabIfTabIsBlank];
  }
}

- (void)actionPanelAddTabDocumentToReadingList:(id)list activityDidFinish:(id)finish
{
  finishCopy = finish;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__BrowserController_actionPanelAddTabDocumentToReadingList_activityDidFinish___block_invoke;
  v7[3] = &unk_2781D6EE0;
  v7[4] = self;
  v8 = finishCopy;
  v6 = finishCopy;
  [(BrowserController *)self showReadingListAutomaticArchiveAlertIfNeededWithCompletion:v7];
}

void __78__BrowserController_actionPanelAddTabDocumentToReadingList_activityDidFinish___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) addReadingListBookmarkForCurrentTab];
  (*(*(a1 + 40) + 16))();
  if (v2)
  {
    v3 = [MEMORY[0x277D499B8] sharedLogger];
    [v3 didAddReadingListItemWithMethod:4];
  }
}

- (void)actionPanel:(id)panel prepareForMailActivityWithMailController:(id)controller completionHandler:(id)handler
{
  panelCopy = panel;
  controllerCopy = controller;
  handlerCopy = handler;
  _mailContentProvider = [(BrowserController *)self _mailContentProvider];
  [_mailContentProvider setRestrictAddingPDFContent:1];
  customizationController = [panelCopy customizationController];
  [customizationController selectedContentType];
  v12 = _SFPreferredMailContentTypeForActivityContentType();

  sharingURL = [panelCopy sharingURL];
  [_mailContentProvider prepareMailComposeViewController:controllerCopy withMailToURL:0 contentURL:sharingURL preferredContentType:v12 completionHandler:handlerCopy];

  [_mailContentProvider setRestrictAddingPDFContent:0];
}

- (id)downloadsViewControllerForActionPanel:(id)panel
{
  v4 = objc_alloc_init(DownloadsViewController);
  [(DownloadsViewController *)v4 setDownloadOpenHandler:self];
  objc_storeWeak(&self->_downloadsViewController, v4);

  return v4;
}

- (void)addBookmarkActivityFailedToAcquireBookmarkLock:(id)lock
{
  lockCopy = lock;
  v4 = MEMORY[0x277D28BE0];
  viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
  [v4 showLockedDatabaseAlertForAction:1 fromViewController:viewControllerToPresentFrom];

  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didPreventBookmarkActionWithBookmarkType:(v4 & 1) == 0 actionType:0];
}

- (id)readerControllerForMailContentProvider:(id)provider
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  readerContext = [activeTabDocument readerContext];

  return readerContext;
}

- (BOOL)readerViewIsVisibleForMailContentProvider:(id)provider
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  isShowingReader = [activeTabDocument isShowingReader];

  return isShowingReader;
}

- (id)webViewForMailContentProvider:(id)provider
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if ([activeTabDocument isBlank])
  {
    v4 = 0;
  }

  else
  {
    if ([activeTabDocument isShowingReader])
    {
      [activeTabDocument readerWebView];
    }

    else
    {
      [activeTabDocument webView];
    }
    v4 = ;
  }

  return v4;
}

- (id)printControllerForContentProvider:(id)provider
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if ([activeTabDocument isBlank])
  {
    printController = 0;
  }

  else
  {
    printController = [activeTabDocument printController];
  }

  return printController;
}

- (void)tabDocumentDidUpdateShowingContinuous:(id)continuous
{
  continuousCopy = continuous;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:continuousCopy])
  {
    [(BrowserController *)self updateInterface];
  }

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];

  if (activeTabDocument == continuousCopy)
  {
    [(BrowserController *)self didChangeContinuousReadingItemInActiveDocument];
  }
}

- (void)tabDocumentDidStartLoading:(id)loading
{
  loadingCopy = loading;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];

  if (activeTabDocument == loadingCopy)
  {
    [(BrowserController *)self updateInterface];
    if ([loadingCopy isBlank])
    {
      tabBarManager = [(BrowserController *)self tabBarManager];
      inlineTabBar = [tabBarManager inlineTabBar];
      [inlineTabBar updateCloseButtonVisibility];
    }

    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserController:self tabDocumentDidStartLoading:loadingCopy];
    }
  }
}

- (void)willStartLoadFromUserTap:(id)tap
{
  tapCopy = tap;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];

  if (activeTabDocument == tapCopy && ![(BrowserRootViewController *)self->_rootViewController keepBarsMinimized])
  {
    [(BrowserController *)self showBars];
  }
}

- (BOOL)tabDocumentCanDownloadFile:(id)file
{
  fileCopy = file;
  if (self->_speculativeLoadDocument == fileCopy)
  {
    [(BrowserController *)self cancelSpeculativeLoad];
  }

  else
  {
    if (![(BrowserController *)self isContinuousReadingDocument:fileCopy])
    {
      v5 = ![(TabDocument *)fileCopy isControlledByAutomation];
      goto LABEL_7;
    }

    [(BrowserController *)self clearDocumentForContinuousReading:fileCopy];
  }

  LOBYTE(v5) = 0;
LABEL_7:

  return v5;
}

- (BOOL)tabDocument:(id)document canShowDownload:(id)download
{
  documentCopy = document;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if (activeTabDocument == documentCopy)
  {
    tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([tabThumbnailCollectionView presentationState] == 1)
    {
      v7 = 0;
      viewControllerToPresentFrom = tabThumbnailCollectionView;
    }

    else
    {
      presentationState = [tabThumbnailCollectionView presentationState];

      if (presentationState == 2)
      {
        v7 = 0;
LABEL_9:

        goto LABEL_10;
      }

      viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
      presentedViewController = [viewControllerToPresentFrom presentedViewController];
      v7 = presentedViewController == 0;
    }

    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (BOOL)tabDocumentCanRedirectToExternalApplication:(id)application
{
  applicationCopy = application;
  if ([(TabDocument *)applicationCopy isControlledByAutomation])
  {
    isPerformingRedirectAfterOpenInBackground = 0;
  }

  else
  {
    tabBeingActivated = [(TabController *)self->_tabController tabBeingActivated];
    if (tabBeingActivated == applicationCopy)
    {
      speculativeLoadDocument = self->_speculativeLoadDocument;

      if (speculativeLoadDocument != applicationCopy)
      {
        isPerformingRedirectAfterOpenInBackground = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }

    isPerformingRedirectAfterOpenInBackground = [(TabDocument *)applicationCopy isPerformingRedirectAfterOpenInBackground];
  }

LABEL_8:

  return isPerformingRedirectAfterOpenInBackground;
}

- (void)tabDocumentDidCancelRedirectToExternalApplication:(id)application
{
  if (self->_speculativeLoadDocument == application)
  {
    [(BrowserController *)self cancelSpeculativeLoad];
  }
}

- (void)tabDocument:(id)document didFinishLoadingWithError:(BOOL)error
{
  documentCopy = document;
  v6 = +[(WBReusableTabManager *)ReusableTabManager];
  v7 = [v6 isTabSuspended:documentCopy];

  if ((v7 & 1) == 0)
  {
    if (!error && ![(BrowserController *)self isContinuousReadingDocument:documentCopy]&& self->_speculativeLoadDocument != documentCopy && self->_previewDocument != documentCopy)
    {
      [(TabController *)self->_tabController updateWBTabWithTab:documentCopy notify:1 persist:1];
    }

    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];

    if (activeTabDocument == documentCopy)
    {
      [(BrowserRootViewController *)self->_rootViewController stopRefreshing];
      [(BrowserController *)self updateInterface];
      [(BrowserController *)self _sendPDFRepresentationForScreenshotWithTabDocument:documentCopy];
      if (![(BrowserController *)self isShowingFavorites]&& ![(BrowserController *)self _hasPresentedViewController])
      {
        tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
        presentationState = [tabThumbnailCollectionView presentationState];

        if (!presentationState)
        {
          capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
          capsuleCollectionView = [capsuleViewController capsuleCollectionView];
          [capsuleCollectionView showTipIfNeeded];
        }
      }

      webClipIDPendingYttriumState = self->_webClipIDPendingYttriumState;
      webClipID = [(TabDocument *)documentCopy webClipID];
      LODWORD(webClipIDPendingYttriumState) = [(NSUUID *)webClipIDPendingYttriumState isEqual:webClipID];

      if (webClipIDPendingYttriumState)
      {
        [(NSTimer *)self->_enterYttriumStateTimer invalidate];
        v15 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__enterYttriumStateTimerFired selector:0 userInfo:0 repeats:1.0];
        enterYttriumStateTimer = self->_enterYttriumStateTimer;
        self->_enterYttriumStateTimer = v15;
      }
    }
  }
}

- (void)_sendPDFRepresentationForScreenshotWithTabDocument:(void *)document
{
  v3 = a2;
  v4 = v3;
  if (document)
  {
    if (document[5])
    {
      webView = [v3 webView];
      scrollView = [webView scrollView];
      [scrollView visibleBounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [scrollView zoomScale];
      v14 = v13;
      [scrollView contentSize];
      v16 = v15;
      [scrollView contentOffset];
      v18 = v17;
      objc_initWeak(&location, document);
      v19 = v16 / v14 - (*&v12 + v18 / v14);
      if ([webView _isDisplayingPDF])
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __72__BrowserController__sendPDFRepresentationForScreenshotWithTabDocument___block_invoke;
        v27[3] = &unk_2781D7148;
        v20 = v28;
        objc_copyWeak(v28, &location);
        v28[1] = 1;
        v28[2] = v8;
        v28[3] = *&v19;
        v28[4] = v10;
        v28[5] = v12;
        [webView _getMainResourceDataWithCompletionHandler:v27];
      }

      else
      {
        v21 = WBS_LOG_CHANNEL_PREFIXPrinting();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_215819000, v21, OS_LOG_TYPE_INFO, "Generating Screenshot PDF for Markup", buf, 2u);
        }

        printController = [v4 printController];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __72__BrowserController__sendPDFRepresentationForScreenshotWithTabDocument___block_invoke_1188;
        v24[3] = &unk_2781D7170;
        v20 = v25;
        objc_copyWeak(v25, &location);
        v25[1] = 1;
        v25[2] = v8;
        v25[3] = *&v19;
        v25[4] = v10;
        v25[5] = v12;
        [printController getPDFDataForUsage:2 withCompletion:v24];
      }

      objc_destroyWeak(v20);
      objc_destroyWeak(&location);
    }

    else
    {
      v23 = WBS_LOG_CHANNEL_PREFIXPrinting();
      [BrowserController _sendPDFRepresentationForScreenshotWithTabDocument:v23];
    }
  }
}

- (void)tabDocumentDidCommitNavigation:(id)navigation
{
  navigationCopy = navigation;
  if (self->_blockRequestingScreenshotPDFData)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXPrinting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "A tab committed a navigation before we could generate a screenshot PDF; calling and clearing completionHandler without a PDF", v7, 2u);
    }

    (*(self->_blockRequestingScreenshotPDFData + 2))(*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24));
    blockRequestingScreenshotPDFData = self->_blockRequestingScreenshotPDFData;
    self->_blockRequestingScreenshotPDFData = 0;
  }

  [(TabController *)self->_tabController updateWBTabWithTab:navigationCopy notify:0 persist:0];
}

- (void)webViewDidFirstVisuallyNonEmptyLayoutForTabDocument:(id)document
{
  documentCopy = document;
  [documentCopy updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:1];
  v4 = [MEMORY[0x277CBEB98] setWithObject:documentCopy];
  [(BrowserController *)self _updateDigitalHealthOverlayForTabDocuments:v4];
}

- (void)tabDocumentDidUpdateTitle:(id)title
{
  titleCopy = title;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:titleCopy])
  {
    tabBarManager = [(BrowserController *)self tabBarManager];
    displayMode = [tabBarManager displayMode];

    if (displayMode == 2)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __47__BrowserController_tabDocumentDidUpdateTitle___block_invoke;
      v9[3] = &unk_2781D60B8;
      v9[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v9];
    }

    else
    {
      [(BrowserController *)self updateInterface];
    }
  }

  [(TabController *)self->_tabController updateWBTabWithTab:titleCopy notify:1 persist:0];
  tabSwitcherViewController = [(BrowserRootViewController *)self->_rootViewController tabSwitcherViewController];
  [tabSwitcherViewController setNeedsApplyContentAnimated:0];

  [titleCopy indexTabToCoreSpotlight];
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:1];
}

- (void)tabDocumentDidUpdateURL:(id)l
{
  lCopy = l;
  [(BrowserController *)self _updateSceneTitle];
  [(BrowserController *)self clearCachedTabCompletionData];
  [(TabController *)self->_tabController updateWBTabWithTab:lCopy notify:1 persist:0];
  [lCopy indexTabToCoreSpotlight];
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:2];
}

- (void)tabDocumentDidUpdateBackForward:(id)forward
{
  forwardCopy = forward;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:forwardCopy])
  {
    [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
    [(BrowserRootViewController *)self->_rootViewController setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
  }
}

- (void)tabDocumentFluidProgressRocketAnimationDidComplete:(id)complete
{
  completeCopy = complete;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:completeCopy])
  {
    [(BrowserController *)&self->super.super.super.isa prefetchNextContinuousItemIfNeeded];
  }
}

- (BOOL)tabDocumentIsBackgroundPreloading:(id)preloading
{
  preloadingCopy = preloading;
  v5 = self->_speculativeLoadDocument == preloadingCopy || [(BrowserController *)self isContinuousReadingDocument:preloadingCopy];

  return v5;
}

- (BOOL)tabDocumentShouldHandleAuthentication:(id)authentication
{
  v20 = *MEMORY[0x277D85DE8];
  authenticationCopy = authentication;
  if (self->_speculativeLoadDocument == authenticationCopy)
  {
    [(BrowserController *)self cancelSpeculativeLoad];
    v5 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = authenticationCopy;
      v6 = "TabDocument %p: returning NO for tabDocumentShouldHandleAuthentication because speculative load.";
      goto LABEL_20;
    }
  }

  else if ([(BrowserController *)self isContinuousReadingDocument:authenticationCopy])
  {
    [(BrowserController *)self clearDocumentForContinuousReading:authenticationCopy];
    v5 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = authenticationCopy;
      v6 = "TabDocument %p: returning NO for tabDocumentShouldHandleAuthentication because reader.";
LABEL_20:
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, v6, &v18, 0xCu);
    }
  }

  else if ([(BrowserController *)self isControlledByAutomation])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = authenticationCopy;
      v6 = "TabDocument %p: returning NO for tabDocumentShouldHandleAuthentication because isControlledByAutomation.";
      goto LABEL_20;
    }
  }

  else
  {
    viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
    presentedViewController = [viewControllerToPresentFrom presentedViewController];

    if (presentedViewController && NSClassFromString(@"OBWelcomeController") && (-[BrowserController viewControllerToPresentFrom](self, "viewControllerToPresentFrom"), v9 = objc_claimAutoreleasedReturnValue(), [v9 presentedViewController], v10 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v10, v9, (isKindOfClass & 1) != 0))
    {
      v5 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134217984;
        v19 = authenticationCopy;
        v6 = "TabDocument %p: returning NO for tabDocumentShouldHandleAuthentication because presentedViewController.";
        goto LABEL_20;
      }
    }

    else
    {
      tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
      if ([tabThumbnailCollectionView presentationState] == 1)
      {
      }

      else
      {
        presentationState = [tabThumbnailCollectionView presentationState];

        if (presentationState != 2)
        {
          if (!-[TabDocument isPrivateBrowsingEnabled](authenticationCopy, "isPrivateBrowsingEnabled") || (+[Application sharedApplication](Application, "sharedApplication"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isPrivateBrowsingLocked], v16, !v17))
          {
            v14 = 1;
            goto LABEL_22;
          }

          v5 = WBS_LOG_CHANNEL_PREFIXPageLoading();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 134217984;
            v19 = authenticationCopy;
            v6 = "TabDocument %p: returning NO for tabDocumentShouldHandleAuthentication because locked private browsing.";
            goto LABEL_20;
          }

          goto LABEL_21;
        }
      }

      v5 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134217984;
        v19 = authenticationCopy;
        v6 = "TabDocument %p: returning NO for tabDocumentShouldHandleAuthentication because tabThumbnailCollectionView.";
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v14 = 0;
LABEL_22:

  return v14;
}

- (BOOL)tabDocumentShouldHandleCertificateError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if ((gRunningPurpleTest & 1) == 0)
  {
    if (self->_speculativeLoadDocument == errorCopy)
    {
      [(BrowserController *)self cancelSpeculativeLoad];
    }

    else
    {
      if (![(BrowserController *)self isContinuousReadingDocument:errorCopy])
      {
        v6 = ![(BrowserController *)self isControlledByAutomation];
        goto LABEL_8;
      }

      [(BrowserController *)self clearDocumentForContinuousReading:v5];
    }
  }

  LOBYTE(v6) = 0;
LABEL_8:

  return v6;
}

- (BOOL)tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:(id)input
{
  inputCopy = input;
  v5 = inputCopy;
  if ((gRunningPurpleTest & 1) == 0)
  {
    if (self->_speculativeLoadDocument == inputCopy)
    {
      [(BrowserController *)self cancelSpeculativeLoad];
    }

    else
    {
      if (![(BrowserController *)self isContinuousReadingDocument:inputCopy])
      {
        v6 = 1;
        goto LABEL_7;
      }

      [(BrowserController *)self clearDocumentForContinuousReading:v5];
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)tabDocumentDidAddAlert:(id)alert
{
  alertCopy = alert;
  v5 = alertCopy;
  if (self->_speculativeLoadDocument == alertCopy)
  {
    [(BrowserController *)self cancelSpeculativeLoad];
  }

  else if ([(BrowserController *)self isContinuousReadingDocument:alertCopy])
  {
    [(BrowserController *)self clearDocumentForContinuousReading:v5];
  }
}

- (void)tabDocument:(id)document didDetectReaderAvailability:(BOOL)availability
{
  documentCopy = document;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:documentCopy])
  {
    [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
  }

  if (availability)
  {
    if ([(BrowserController *)self isContinuousReadingDocument:documentCopy]&& [(BrowserController *)self readerShouldBeShownIfPossible])
    {
      [documentCopy createBrowserReaderViewIfNeeded];
      [(BrowserController *)&self->super.super.super.isa _setContinuousReadingContentViewFromTabDocument:documentCopy useReaderView:1];
    }
  }

  else
  {
    contextController = [documentCopy contextController];
    v7 = [documentCopy URL];
    [contextController contextForPageURL:v7 content:0 contentType:0 metadata:0 isPrivate:objc_msgSend(documentCopy isReaderAvailable:"isPrivateBrowsingEnabled") withCompletionHandler:{0, 0}];
  }
}

- (void)tabDocumentDidChangeMediaState:(id)state needsUpdateGlobalAudioState:(BOOL)audioState
{
  audioStateCopy = audioState;
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self tabDocumentDidChangeMediaState:stateCopy];
  }

  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:stateCopy])
  {
    [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
  }

  if (audioStateCopy)
  {
    v7 = objc_loadWeakRetained(&self->_browserWindowController);
    browserControllers = [v7 browserControllers];
    [browserControllers enumerateObjectsUsingBlock:&__block_literal_global_1123];
  }
}

void __80__BrowserController_tabDocumentDidChangeMediaState_needsUpdateGlobalAudioState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(v3 + 46);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserControllerUpdateInactiveAudibleTabs:v3];
  }

  [v3[21] reloadAlert];
}

- (void)tabDocumentDidUpdateTabCollectionItem:(id)item
{
  tabSwitcherViewController = [(BrowserRootViewController *)self->_rootViewController tabSwitcherViewController];
  [tabSwitcherViewController setNeedsApplyContentAnimated:1];
}

- (void)tabDocumentDidUpdateIsScribbling:(id)scribbling
{
  scribblingCopy = scribbling;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:scribblingCopy])
  {
    [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
  }
}

- (void)tabDocument:(id)document didExtractArticleText:(id)text withMetadata:(id)metadata
{
  documentCopy = document;
  textCopy = text;
  metadataCopy = metadata;
  [(BrowserController *)self _requestQueryResultsOnTabDocument:documentCopy forText:textCopy contentType:1 pageMetadata:metadataCopy];
  v10 = [MEMORY[0x277CBEB98] setWithObject:documentCopy];
  [(BrowserController *)self _updateDigitalHealthOverlayForTabDocuments:v10];
}

- (void)_requestQueryResultsOnTabDocument:(void *)document forText:(uint64_t)text contentType:(void *)type pageMetadata:
{
  v9 = a2;
  documentCopy = document;
  typeCopy = type;
  if (self)
  {
    contextController = [v9 contextController];
    [contextController invalidateCachedResults];
    objc_initWeak(&location, self);
    v13 = [v9 URL];
    isPrivateBrowsingEnabled = [v9 isPrivateBrowsingEnabled];
    isReaderAvailable = [v9 isReaderAvailable];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__BrowserController__requestQueryResultsOnTabDocument_forText_contentType_pageMetadata___block_invoke;
    v16[3] = &unk_2781D6FE8;
    objc_copyWeak(&v17, &location);
    [contextController contextForPageURL:v13 content:documentCopy contentType:text metadata:typeCopy isPrivate:isPrivateBrowsingEnabled isReaderAvailable:isReaderAvailable withCompletionHandler:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)filteredArticleTextDidBecomeReadyInTabDocument:(id)document
{
  documentCopy = document;
  uuid = [documentCopy uuid];
  uUIDString = [uuid UUIDString];
  v7 = [uUIDString isEqualToString:self->_tabUUIDStringForSiriReadThisVocalInvocation];

  if (v7)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__BrowserController_filteredArticleTextDidBecomeReadyInTabDocument___block_invoke;
    v12[3] = &unk_2781D60B8;
    v12[4] = self;
    [(BrowserController *)self _extractTextFromReaderWebViewOfTab:documentCopy withCompletion:v12];
  }

  else
  {
    uuid2 = [documentCopy uuid];
    uUIDString2 = [uuid2 UUIDString];
    v10 = [uUIDString2 isEqualToString:self->_tabUUIDStringForSiriReadThisMenuInvocation];

    if (v10)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __68__BrowserController_filteredArticleTextDidBecomeReadyInTabDocument___block_invoke_2;
      v11[3] = &unk_2781D60B8;
      v11[4] = self;
      [(BrowserController *)self _extractTextFromReaderWebViewOfTab:documentCopy withCompletion:v11];
    }
  }
}

- (void)_siriReadThisVocalInvocation
{
  v38 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return;
  }

  activeTabDocument = [self[41] activeTabDocument];
  readerContext = [activeTabDocument readerContext];
  mEMORY[0x277D28D50] = [MEMORY[0x277D28D50] sharedVoiceUtilities];
  activeSiriReaderSessionIdentifier = [mEMORY[0x277D28D50] activeSiriReaderSessionIdentifier];
  if (activeSiriReaderSessionIdentifier)
  {
    mEMORY[0x277D28D50]2 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    activeSiriReaderSessionURL = [mEMORY[0x277D28D50]2 activeSiriReaderSessionURL];
    readerURL = [readerContext readerURL];
    v8 = WBSIsEqual();

    if (v8)
    {
      mEMORY[0x277D28D50]3 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
      activeSiriReaderSessionIdentifier2 = [mEMORY[0x277D28D50]3 activeSiriReaderSessionIdentifier];
      goto LABEL_7;
    }
  }

  else
  {
  }

  mEMORY[0x277D28D50]3 = [MEMORY[0x277CCAD78] UUID];
  activeSiriReaderSessionIdentifier2 = [mEMORY[0x277D28D50]3 UUIDString];
LABEL_7:
  v11 = activeSiriReaderSessionIdentifier2;

  v22 = objc_alloc_init(getSiriReaderConnectionClass());
  siriReaderPlaybackStateForActiveTab = [self siriReaderPlaybackStateForActiveTab];
  webView = [activeTabDocument webView];
  title = [webView title];
  if (siriReaderPlaybackStateForActiveTab <= 3 && siriReaderPlaybackStateForActiveTab != 1)
  {
    mEMORY[0x277D28D48] = [MEMORY[0x277D28D48] sharedPlaybackController];
    [mEMORY[0x277D28D48] setDelegate:self];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__3;
    v36 = __Block_byref_object_dispose__3;
    v37 = 0;
    v16 = objc_alloc_init(MEMORY[0x277CD46E0]);
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__BrowserController__siriReadThisVocalInvocation__block_invoke;
    aBlock[3] = &unk_2781D7238;
    objc_copyWeak(&v31, &location);
    p_buf = &buf;
    v25 = v22;
    v26 = title;
    v17 = v11;
    v27 = v17;
    v28 = readerContext;
    v29 = activeTabDocument;
    v18 = _Block_copy(aBlock);
    v19 = [webView URL];
    [v16 startFetchingMetadataForURL:v19 completionHandler:v18];

    activeTabDocument2 = [self[41] activeTabDocument];
    [activeTabDocument2 setLastSiriReaderSessionIdentifier:v17];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);

    _Block_object_dispose(&buf, 8);
  }

  This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
  if (os_log_type_enabled(This, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_215819000, This, OS_LOG_TYPE_INFO, "Data identifier: %@", &buf, 0xCu);
  }
}

- (void)_extractTextFromReaderWebViewOfTab:(void *)tab withCompletion:
{
  v5 = a2;
  tabCopy = tab;
  if (self)
  {
    readerWebView = [v5 readerWebView];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__BrowserController__extractTextFromReaderWebViewOfTab_withCompletion___block_invoke;
    v9[3] = &unk_2781D6F50;
    v10 = readerWebView;
    selfCopy = self;
    v12 = v5;
    v13 = tabCopy;
    v8 = readerWebView;
    [v8 _evaluateJavaScriptWithoutUserGesture:@"document.querySelectorAll('figcaption').forEach(el => { el.textContent = '\\u200B' + el.textContent +  '\\u200B'; });" completionHandler:v9];
  }
}

- (void)_siriReadThisMenuInvocation
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.7779e-34);
  _os_log_debug_impl(&dword_215819000, v3, OS_LOG_TYPE_DEBUG, "Current URL: %@ ", v4, 0xCu);
}

void __71__BrowserController__extractTextFromReaderWebViewOfTab_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __71__BrowserController__extractTextFromReaderWebViewOfTab_withCompletion___block_invoke_cold_1();
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__BrowserController__extractTextFromReaderWebViewOfTab_withCompletion___block_invoke_1127;
    v10[3] = &unk_2781D6F28;
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10[4] = *(a1 + 40);
    v11 = v9;
    v12 = *(a1 + 56);
    [v8 _getContentsAsStringWithCompletionHandler:v10];
  }
}

void __71__BrowserController__extractTextFromReaderWebViewOfTab_withCompletion___block_invoke_1127(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __71__BrowserController__extractTextFromReaderWebViewOfTab_withCompletion___block_invoke_1127_cold_1();
    }

    goto LABEL_15;
  }

  v7 = [(BrowserController *)*(a1 + 32) _stringByRemovingContentBetweenZeroWidthSpacesForText:v5];
  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  objc_storeStrong((*(a1 + 32) + 808), v8);
  v9 = [*(a1 + 40) uuid];
  v10 = [v9 UUIDString];
  v11 = [v10 isEqualToString:*(*(a1 + 32) + 584)];

  if (v11)
  {
    [(BrowserController *)*(a1 + 32) _siriReadThisVocalInvocation];
    v12 = &OBJC_IVAR___BrowserController__tabUUIDStringForSiriReadThisVocalInvocation;
  }

  else
  {
    v13 = [*(a1 + 40) uuid];
    v14 = [v13 UUIDString];
    v15 = [v14 isEqualToString:*(*(a1 + 32) + 592)];

    if (!v15)
    {
      goto LABEL_13;
    }

    [(BrowserController *)*(a1 + 32) _siriReadThisMenuInvocation];
    v12 = &OBJC_IVAR___BrowserController__tabUUIDStringForSiriReadThisMenuInvocation;
  }

  v16 = *(a1 + 32);
  v17 = *v12;
  v18 = *(v16 + v17);
  *(v16 + v17) = 0;

LABEL_13:
  v19 = *(a1 + 48);
  if (v19)
  {
    (*(v19 + 16))();
  }

LABEL_15:
}

- (id)_stringByRemovingContentBetweenZeroWidthSpacesForText:(uint64_t)text
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (text)
  {
    v9[0] = 0;
    v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\u200B.*?\\u200B" options:8 error:v9];
    v5 = v9[0];
    if (v5)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [v5 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [BrowserController _stringByRemovingContentBetweenZeroWidthSpacesForText:];
      }

      v7 = 0;
    }

    else
    {
      v7 = [v4 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{objc_msgSend(v3, "length"), &stru_2827BF158}];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)tabsWithSound
{
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  tabsWithSound = [WeakRetained tabsWithSound];
  v4 = [tabsWithSound safari_mapObjectsUsingBlock:&__block_literal_global_1135];

  return v4;
}

- (void)setActiveAudioPlayingTabWithUUID:(id)d tabGroupUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  browserControllers = [WeakRetained browserControllers];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__BrowserController_setActiveAudioPlayingTabWithUUID_tabGroupUUID___block_invoke;
  v14[3] = &unk_2781D6FC0;
  v10 = dCopy;
  v15 = v10;
  v11 = iDCopy;
  v16 = v11;
  v12 = [browserControllers safari_firstObjectPassingTest:v14];

  if (v12)
  {
    v13 = v12 == self;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    [(BrowserController *)&self->super.super.super.isa _requestActivationOfBrowserController:v12];
  }
}

BOOL __67__BrowserController_setActiveAudioPlayingTabWithUUID_tabGroupUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabController];
  v4 = [v3 tabDocumentsForAllTabGroups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__BrowserController_setActiveAudioPlayingTabWithUUID_tabGroupUUID___block_invoke_2;
  v9[3] = &unk_2781D6F98;
  v10 = *(a1 + 32);
  v5 = [v4 safari_firstObjectPassingTest:v9];

  if (v5)
  {
    v6 = [v3 activeTabGroupUUID];
    v7 = WBSIsEqual();

    if ((v7 & 1) == 0)
    {
      [v3 setActiveTabGroupUUID:*(a1 + 40)];
    }

    [v3 setActiveTabDocument:v5];
  }

  return v5 != 0;
}

uint64_t __67__BrowserController_setActiveAudioPlayingTabWithUUID_tabGroupUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 uuid];
  if (WBSIsEqual())
  {
    v4 = [v2 isPlayingAudio];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_requestActivationOfBrowserController:(id *)controller
{
  v3 = a2;
  if (controller)
  {
    v10 = v3;
    _sceneSession = [(BrowserController *)v3 _sceneSession];
    _sceneSession2 = [(BrowserController *)controller _sceneSession];
    if (_sceneSession2 != _sceneSession)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75950]);
      scene = [_sceneSession2 scene];
      [v6 setRequestingScene:scene];

      [v6 setPreserveLayout:1];
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128] requestSceneSessionActivation:_sceneSession userActivity:0 options:v6 errorHandler:&__block_literal_global_1155];
    }

    [(UIResponder *)v10 safari_becomeFirstResponderIfNeeded];
    WeakRetained = objc_loadWeakRetained(v10 + 46);
    [WeakRetained browserControllerMakeKey:v10];

    v3 = v10;
  }
}

void __88__BrowserController__requestQueryResultsOnTabDocument_forText_contentType_pageMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__BrowserController__requestQueryResultsOnTabDocument_forText_contentType_pageMetadata___block_invoke_2;
  v5[3] = &unk_2781D6BD8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __88__BrowserController__requestQueryResultsOnTabDocument_forText_contentType_pageMetadata___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [(BrowserController *)WeakRetained _catalogViewController];
    [v3 updateQuerySuggestionsFromResponse:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)tabDocument:(id)document didCreateNewTabDocument:(id)tabDocument
{
  documentCopy = document;
  tabDocumentCopy = tabDocument;
  [tabDocumentCopy updateAncestryWithParentTab:documentCopy];
  [(TabController *)self->_tabController insertNewTabDocumentWithDefaultOrdering:tabDocumentCopy inBackground:0 animated:1];
  trackerInfo = [documentCopy trackerInfo];
  queryParameterFilteringDataQueue = [trackerInfo queryParameterFilteringDataQueue];
  trackerInfo2 = [tabDocumentCopy trackerInfo];
  queryParameterFilteringDataQueue2 = [trackerInfo2 queryParameterFilteringDataQueue];
  [queryParameterFilteringDataQueue transferPendingDataToQueue:queryParameterFilteringDataQueue2];
}

- (void)tabDocumentShouldCloseAndSwitchToParentTab:(id)tab
{
  tabCopy = tab;
  tabController = self->_tabController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__BrowserController_tabDocumentShouldCloseAndSwitchToParentTab___block_invoke;
  v7[3] = &unk_2781D61F8;
  v7[4] = self;
  v8 = tabCopy;
  v6 = tabCopy;
  [(TabController *)tabController performBatchUpdatesWithBlock:v7];
}

void __64__BrowserController_tabDocumentShouldCloseAndSwitchToParentTab___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 328);
  v3 = [*(a1 + 40) parentTabDocumentForBackClosesSpawnedTab];
  [v2 setActiveTabDocument:v3 animated:0];

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 328);
  v7[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v5 closeTabs:v6 animated:1 allowAddingToRecentlyClosedTabs:0 showAutoCloseTabsAlert:0];
}

- (unint64_t)popUpPolicyForTabDocument:(id)document
{
  documentCopy = document;
  v5 = +[Application sharedApplication];
  isRunningCanvasTest = [v5 isRunningCanvasTest];

  if (isRunningCanvasTest)
  {
    v7 = 1;
  }

  else if (self->_speculativeLoadDocument == documentCopy)
  {
    [(BrowserController *)self cancelSpeculativeLoad];
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_closePreviewDocumentTimerFired:(id)fired
{
  firedCopy = fired;
  if (!self->_previewDocument || ![(TabController *)self->_tabController createTabGroupAlertIsPresented])
  {
    [(BrowserController *)self closePreviewDocument];
  }
}

- (void)closePreviewDocument
{
  previewDocument = self->_previewDocument;
  if (previewDocument)
  {
    webView = [(TabDocument *)previewDocument webView];
    window = [webView window];

    if (!window)
    {
      [(TabDocument *)self->_previewDocument willClose];
      v6 = self->_previewDocument;
      self->_previewDocument = 0;

      objc_storeWeak(&self->_backForwardListItemNeedingSnapshot, 0);
      v7 = +[History sharedHistory];
      [v7 cancelDeferredUpdates];

      if ([(NSTimer *)self->_previewDocumentCloseTimer isValid])
      {
        userInfo = [(NSTimer *)self->_previewDocumentCloseTimer userInfo];
        [userInfo updateUsageTrackingInformationAfterLinkPreviewDismissal];
      }

      [(BrowserController *)self _invalidatePreviewDocumentCloseTimer];
    }
  }
}

- (void)tabDocument:(id)document didCreatePreviewDocument:(id)previewDocument
{
  v19 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  previewDocumentCopy = previewDocument;
  if (self->_previewDocument != previewDocumentCopy)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      previewDocument = self->_previewDocument;
      v13 = 138740483;
      v14 = previewDocumentCopy;
      v15 = 2117;
      v16 = documentCopy;
      v17 = 2117;
      previewDocumentCopy2 = previewDocument;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Creating link preview %{sensitive}@ from source tab %{sensitive}@. Previous link preview: %{sensitive}@", &v13, 0x20u);
    }

    v10 = self->_previewDocument;
    if (v10)
    {
      [(TabDocument *)v10 willClose];
      [(BrowserController *)self _invalidatePreviewDocumentCloseTimer];
    }

    objc_storeStrong(&self->_previewDocument, previewDocument);
    _backForwardList = [(TabDocument *)self->_previewDocument _backForwardList];
    currentItem = [_backForwardList currentItem];
    objc_storeWeak(&self->_backForwardListItemNeedingSnapshot, currentItem);
  }
}

- (void)tabDocumentCommitPreviewedDocument:(id)document
{
  v20 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    previewDocument = self->_previewDocument;
    v16 = 134218240;
    v17 = previewDocument;
    v18 = 2048;
    v19 = documentCopy;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Committing link preview %p to load in source tab %p", &v16, 0x16u);
  }

  tabController = [(BrowserController *)self tabController];
  activeTabDocument = [tabController activeTabDocument];

  v9 = self->_previewDocument;
  if (v9)
  {
    tabController = self->_tabController;
    v11 = [(TabDocument *)v9 URL];
    LODWORD(tabController) = [(TabController *)tabController trySwitchingToPinnedTabOnNavigationToURL:v11];

    if (tabController)
    {
      [(BrowserController *)self closePreviewDocument];
    }

    else
    {
      if (([(BrowserController *)self _spawnNewTabFromPinnedTabIfNeededForSpeculativeDocument:?]& 1) == 0)
      {
        [(BrowserController *)&self->super.super.super.isa _commitToSpeculativeLoadForDocument:?];
        [activeTabDocument willClose];
      }

      v13 = self->_previewDocument;
      self->_previewDocument = 0;

      [(BrowserController *)self _invalidatePreviewDocumentCloseTimer];
      history = [documentCopy history];
      [history commitDeferredUpdates];

      webView = [(BrowserController *)self webView];
      [(BrowserController *)&self->super.super.super.isa _updateScrollOffsetForReplacementWebView:webView];
    }
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [BrowserController tabDocumentCommitPreviewedDocument:];
    }
  }
}

- (void)tabDocumentCommitPreviewedDocumentAsNewTab:(id)tab inBackground:(BOOL)background
{
  backgroundCopy = background;
  v21 = *MEMORY[0x277D85DE8];
  tabCopy = tab;
  v7 = self->_previewDocument;
  v8 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218240;
    v18 = v7;
    v19 = 2048;
    v20 = tabCopy;
    _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Committing link preview %p in new tab from source tab %p", &v17, 0x16u);
  }

  if (v7)
  {
    if (backgroundCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained browserControllerWillCreateBackgroundTab:self];
      }
    }

    previewDocument = self->_previewDocument;
    self->_previewDocument = 0;

    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    [(TabDocument *)v7 updateAncestryWithParentTab:activeTabDocument];

    [(TabController *)self->_tabController insertNewTabDocumentWithDefaultOrdering:v7 inBackground:backgroundCopy animated:1];
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didOpenNewTabWithURLWithTrigger:1 tabCollectionViewType:{-[TabCollectionViewProviding visibleTabCollectionViewType](self->_tabCollectionViewProvider, "visibleTabCollectionViewType")}];

    if (backgroundCopy)
    {
      webView = [(TabDocument *)v7 webView];
      [(BrowserController *)self updateInsetsForBackgroundWebView:webView];
    }

    history = [tabCopy history];
    [history commitDeferredUpdates];

    webView2 = [(TabDocument *)v7 webView];
    [(BrowserController *)&self->super.super.super.isa _updateScrollOffsetForReplacementWebView:webView2];
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(BrowserController *)backgroundCopy tabDocumentCommitPreviewedDocumentAsNewTab:tabCopy inBackground:v16];
    }
  }
}

- (void)tabDocumentDidDimissPreviewedDocument:(id)document
{
  documentCopy = document;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  [(BrowserController *)v5 tabDocumentDidDimissPreviewedDocument:documentCopy];
  [(BrowserController *)self _invalidatePreviewDocumentCloseTimer];
  v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__closePreviewDocumentTimerFired_ selector:documentCopy userInfo:0 repeats:0.0];
  previewDocumentCloseTimer = self->_previewDocumentCloseTimer;
  self->_previewDocumentCloseTimer = v6;
}

- (void)tabDocumentWillDisableLinkPreview
{
  [(TabDocument *)self->_previewDocument willClose];
  previewDocument = self->_previewDocument;
  self->_previewDocument = 0;
}

- (BOOL)tabDocumentCanDisplayModalUI:(id)i
{
  iCopy = i;
  if (![iCopy isPrivateBrowsingEnabled] || (+[Application sharedApplication](Application, "sharedApplication"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isPrivateBrowsingLocked"), v5, (v6 & 1) == 0))
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    if (activeTabDocument != iCopy)
    {
      LOBYTE(v7) = 0;
LABEL_12:

      goto LABEL_13;
    }

    tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([tabThumbnailCollectionView presentationState] == 1)
    {
    }

    else
    {
      presentationState = [tabThumbnailCollectionView presentationState];

      if (presentationState != 2)
      {
        v7 = ![(BrowserController *)self isShowingFavorites];
        goto LABEL_11;
      }
    }

    LOBYTE(v7) = 0;
LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(v7) = 0;
LABEL_13:

  return v7;
}

- (BOOL)tabDocumentCanBeginInputSessionForStreamlinedLogin:(id)login
{
  loginCopy = login;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if (activeTabDocument == loginCopy)
  {
    tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([tabThumbnailCollectionView presentationState] == 1)
    {
      LOBYTE(v6) = 0;
      viewControllerToPresentFrom = tabThumbnailCollectionView;
    }

    else
    {
      presentationState = [tabThumbnailCollectionView presentationState];

      if (presentationState == 2 || [(BrowserController *)self isShowingFavorites])
      {
        LOBYTE(v6) = 0;
        goto LABEL_9;
      }

      viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
      presentedViewController = [viewControllerToPresentFrom presentedViewController];
      if (presentedViewController)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = [loginCopy shouldObscureForDigitalHealth] ^ 1;
      }
    }

LABEL_9:
    goto LABEL_10;
  }

  LOBYTE(v6) = 0;
LABEL_10:

  return v6;
}

- (void)switchFromTabDocument:(id)document toTabDocument:(id)tabDocument
{
  documentCopy = document;
  tabDocumentCopy = tabDocument;
  if (!tabDocumentCopy)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXTabView();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BrowserController switchFromTabDocument:toTabDocument:];
    }
  }

  if (documentCopy == tabDocumentCopy)
  {
    [(BrowserController *)self updateInterface];
  }

  else
  {
    isBlockedByScreenTime = [documentCopy isBlockedByScreenTime];
    if (isBlockedByScreenTime)
    {
      LOBYTE(isBlockedByScreenTime) = [tabDocumentCopy isShowingSystemStartPage];
    }

    self->_shouldAwaitAnimationCompletionForNextSnapshot = isBlockedByScreenTime;
    [documentCopy updateUserActivity];
    if (([documentCopy isShowingReader] & 1) != 0 || objc_msgSend(documentCopy, "shouldRestoreReader"))
    {
      [(BrowserController *)self hideReaderForTabDocument:documentCopy animated:0 deactivationMode:2];
    }

    [(UIScrollView *)self->_scrollView _stopScrollingAndZoomingAnimations];
    [(UIScrollView *)self->_scrollView contentOffset];
    [documentCopy setScrollPoint:?];
    [(BrowserController *)self setWebViewFromTabDocument:tabDocumentCopy];
    if ([tabDocumentCopy shouldShowReaderOnActivate])
    {
      [(BrowserController *)self setShowingReader:1 animated:0];
    }

    [(BrowserController *)self updateInterface];
    appBanner = [documentCopy appBanner];
    [(BrowserController *)self _setShowingAppBanner:appBanner isShowing:0];

    appBanner2 = [tabDocumentCopy appBanner];
    [(BrowserController *)self _setShowingAppBanner:appBanner2 isShowing:1];

    privateBrowsingPrivacyProtectionsBanner = [documentCopy privateBrowsingPrivacyProtectionsBanner];
    [(BrowserController *)self _setShowingPrivateBrowsingPrivacyProtectionsBanner:privateBrowsingPrivacyProtectionsBanner isShowing:0];

    privateBrowsingPrivacyProtectionsBanner2 = [tabDocumentCopy privateBrowsingPrivacyProtectionsBanner];
    [(BrowserController *)self _setShowingPrivateBrowsingPrivacyProtectionsBanner:privateBrowsingPrivacyProtectionsBanner2 isShowing:1];

    navigationBarItem = [tabDocumentCopy navigationBarItem];
    navigationBar = [(BrowserRootViewController *)self->_rootViewController navigationBar];
    [navigationBar setItem:navigationBarItem];

    view = [(BrowserRootViewController *)self->_rootViewController view];
    [view setNeedsLayout];

    [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
    if (documentCopy)
    {
      [(BrowserController *)self updateFavoritesForNewDocument];
    }

    [(BrowserController *)self _updateLibraryTypeForNewDocument];
    dialogController = [tabDocumentCopy dialogController];
    [dialogController presentNextDialogIfNeeded];

    if (tabDocumentCopy)
    {
      tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
      if ([tabThumbnailCollectionView presentationState] == 1)
      {
      }

      else
      {
        presentationState = [tabThumbnailCollectionView presentationState];

        if (presentationState != 2)
        {
          v20 = [MEMORY[0x277CBEB98] setWithObject:tabDocumentCopy];
          [(BrowserController *)self _updateDigitalHealthOverlayForTabDocuments:v20];

          [(BrowserController *)&self->super.super.super.isa _presentPendingViewControllerForActiveTab];
        }
      }
    }

    [(BrowserRootViewController *)self->_rootViewController setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
    [(BrowserController *)self _updateSceneTitle];
    mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
    [mEMORY[0x277CDB7A8] totalProgress];
    v23 = v22;
    unifiedTabBarItem = [tabDocumentCopy unifiedTabBarItem];
    [unifiedTabBarItem setDownloadProgress:v23];

    [(BrowserController *)&self->super.super.super.isa _updateUnifiedBarBackgroundVisibility];
    [(BrowserRootViewController *)self->_rootViewController updateThemeColorIfNeededAnimated:0];
  }
}

- (void)tabControllerDocumentCountDidChange:(id)change
{
  _animationsAreEnabled = [(BrowserController *)self _animationsAreEnabled];
  [(BrowserController *)self _updateButtonsAnimatingTabBar:_animationsAreEnabled];

  [(BrowserController *)self _updateSceneTitle];
}

- (void)tabController:(id)controller didSwitchFromTabDocument:(id)document toTabDocument:(id)tabDocument
{
  controllerCopy = controller;
  documentCopy = document;
  tabDocumentCopy = tabDocument;
  if (documentCopy != tabDocumentCopy)
  {
    if (!self->_isMakingFocusedTabDocumentActive)
    {
      tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
      presentationState = [tabThumbnailCollectionView presentationState];

      if (!presentationState)
      {
        updatingTabGroupTabs = [(TabController *)self->_tabController updatingTabGroupTabs];
        if (updatingTabGroupTabs)
        {
          v14 = 0;
          v15 = 1;
        }

        else
        {
          presentationState = [documentCopy libraryType];
          if (presentationState)
          {
            v14 = 0;
            v15 = 1;
          }

          else
          {
            libraryType = [tabDocumentCopy libraryType];
            presentationState = 0;
            v15 = libraryType != 0;
            v14 = 1;
          }
        }

        [(BrowserController *)self dismissTransientUIAnimated:v15];
        if (v14)
        {
        }

        if (!updatingTabGroupTabs)
        {
        }

        if (![(BrowserRootViewController *)self->_rootViewController isShowingPrivateBrowsingExplanationSheet]&& ![(BrowserRootViewController *)self->_rootViewController isShowingDefaultBrowserSheet])
        {
          [(BrowserRootViewController *)self->_rootViewController dismissViewControllerAnimated:1 completion:0];
        }

        [(BrowserController *)self showBars];
      }
    }

    [(BrowserRootViewController *)self->_rootViewController dismissAddedBookmarkToast];
    [documentCopy hideFindOnPage];
    if ([tabDocumentCopy shouldObscureForDigitalHealth])
    {
      -[BrowserController _showDigitalHealthOverlayForTabDocument:withPolicy:animated:](self, tabDocumentCopy, [tabDocumentCopy policy], 0);
    }

    else
    {
      [(BrowserController *)&self->super.super.super.isa _hideDigitalHealthOverlayForTabDocument:tabDocumentCopy];
    }

    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    [WeakRetained browserControllerMakeKey:self];
  }

  [(BrowserController *)self switchFromTabDocument:documentCopy toTabDocument:tabDocumentCopy];
  [tabDocumentCopy updateTabTitle];
  [tabDocumentCopy updateTabIcon];
  if (documentCopy != tabDocumentCopy)
  {
    tabCollectionViewProvider = [(BrowserController *)self tabCollectionViewProvider];
    tabThumbnailCollectionView2 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    v19 = [tabThumbnailCollectionView2 presentationState] != 1 && objc_msgSend(tabThumbnailCollectionView2, "presentationState") != 2;

    [tabCollectionViewProvider scrollTabBarToActiveTabAnimated:v19];
    tabBarManager = [(BrowserController *)self tabBarManager];
    minimizedProgressView = [tabBarManager minimizedProgressView];

    if (minimizedProgressView)
    {
      navigationBarItem = [documentCopy navigationBarItem];
      fluidProgressController = [navigationBarItem fluidProgressController];
      [fluidProgressController unregisterObserver:minimizedProgressView];

      navigationBarItem2 = [tabDocumentCopy navigationBarItem];
      fluidProgressController2 = [navigationBarItem2 fluidProgressController];
      [fluidProgressController2 registerObserver:minimizedProgressView];
    }
  }

  v26 = ([(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar]& 1) == 0 && [(BrowserController *)self isShowingStartPage];
  self->_allowsAutoDismissSidebar = v26;
  [(BrowserController *)self updatePresenceForActiveUser];
  [(BrowserController *)self dismissAutoFillInternalFeedbackToastImmediately:1];
}

- (void)tabController:(id)controller didSwitchFromTabGroup:(id)group
{
  [(BrowserController *)&self->super.super.super.isa _updateTabGroupBanner];
  [(BrowserController *)self updateTabOverviewButton];
  [(BrowserController *)self clearParticipantsList];
  [(BrowserController *)self updateCollaborationButton];

  [(BrowserController *)self dismissAutoFillInternalFeedbackToastImmediately:1];
}

- (BOOL)tabDocumentCanBecomeCurrentUserActivity:(id)activity
{
  activityCopy = activity;
  if (-[BrowserController sf_inResponderChain](self, "sf_inResponderChain") && ([activityCopy isControlledByAutomation] & 1) == 0)
  {
    v5 = [activityCopy isPrivateBrowsingEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)tabDocumentShouldBecomeActive:(id)active
{
  activeCopy = active;
  if ([*MEMORY[0x277D76620] supportsMultipleScenes])
  {
    v4 = objc_alloc_init(MEMORY[0x277D75950]);
    [v4 setPreserveLayout:1];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    _sceneSession = [(BrowserController *)&self->super.super.super.isa _sceneSession];
    [mEMORY[0x277D75128] requestSceneSessionActivation:_sceneSession userActivity:0 options:v4 errorHandler:&__block_literal_global_1143];
  }

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];

  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState] == 1)
  {

    v9 = 1;
  }

  else
  {
    presentationState = [tabThumbnailCollectionView presentationState];
    v9 = presentationState == 2;

    if (activeTabDocument == activeCopy && presentationState != 2)
    {
      goto LABEL_16;
    }
  }

  isPrivateBrowsingEnabled = [activeCopy isPrivateBrowsingEnabled];
  if (isPrivateBrowsingEnabled != [(BrowserController *)self isPrivateBrowsingEnabled])
  {
    [(BrowserController *)self togglePrivateBrowsingEnabled];
  }

  if (activeTabDocument != activeCopy)
  {
    [(TabController *)self->_tabController setActiveTabDocument:activeCopy];
  }

  if (v9)
  {
    [tabThumbnailCollectionView dismissAnimated:0];
  }

LABEL_16:
}

void __51__BrowserController_tabDocumentShouldBecomeActive___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXMediaCapture();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [v2 safari_privacyPreservingDescription];
    objc_claimAutoreleasedReturnValue();
    __51__BrowserController_tabDocumentShouldBecomeActive___block_invoke_cold_1();
  }
}

- (id)loadURLInNewTab:(id)tab inBackground:(BOOL)background
{
  v4 = [(BrowserController *)self loadURLInNewTab:tab inBackground:background animated:1];

  return v4;
}

- (id)loadURLInNewTab:(id)tab inBackground:(BOOL)background animated:(BOOL)animated
{
  v5 = [(BrowserController *)self loadURLInNewTab:tab title:0 UUID:0 inBackground:background animated:animated restoringCloudTab:0];

  return v5;
}

- (id)loadURLInNewTab:(id)tab title:(id)title UUID:(id)d inBackground:(BOOL)background animated:(BOOL)animated restoringCloudTab:(BOOL)cloudTab
{
  animatedCopy = animated;
  backgroundCopy = background;
  tabCopy = tab;
  titleCopy = title;
  v29 = titleCopy;
  dCopy = d;
  if (![(TabController *)self->_tabController updatingTabGroupTabs])
  {
    [(BrowserController *)self dismissTransientUIAnimated:animatedCopy];
  }

  if (cloudTab)
  {
    v16 = [[TabDocument alloc] initWithTitle:titleCopy URL:tabCopy UUID:dCopy privateBrowsingEnabled:[(BrowserController *)self isPrivateBrowsingEnabled] hibernated:1 bookmark:0 browserController:self];
    activeTabDocument = 0;
  }

  else
  {
    v16 = [[TabDocument alloc] initWithBrowserController:self];
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    if (activeTabDocument)
    {
      [(TabDocument *)v16 updateAncestryWithParentTab:activeTabDocument];
      [(TabDocument *)v16 setParentTabDocumentForBackClosesSpawnedTab:activeTabDocument];
    }
  }

  [(TabController *)self->_tabController insertNewTabDocumentWithDefaultOrdering:v16 inBackground:backgroundCopy animated:animatedCopy];
  v18 = [(TabDocument *)v16 supportsAdvancedPrivacyProtectionsForURL:tabCopy];
  reloadOptionsController = [(TabDocument *)v16 reloadOptionsController];
  [reloadOptionsController setSupportsAdvancedPrivacyProtections:v18];

  trackerInfo = [activeTabDocument trackerInfo];
  queryParameterFilteringDataQueue = [trackerInfo queryParameterFilteringDataQueue];
  trackerInfo2 = [(TabDocument *)v16 trackerInfo];
  queryParameterFilteringDataQueue2 = [trackerInfo2 queryParameterFilteringDataQueue];
  [queryParameterFilteringDataQueue transferPendingDataToQueue:queryParameterFilteringDataQueue2];

  reloadOptionsController2 = [activeTabDocument reloadOptionsController];
  LODWORD(queryParameterFilteringDataQueue2) = [reloadOptionsController2 loadedUsingDesktopUserAgent];

  if (queryParameterFilteringDataQueue2)
  {
    reloadOptionsController3 = [(TabDocument *)v16 reloadOptionsController];
    [reloadOptionsController3 requestDesktopSiteWithURL:tabCopy];
  }

  else
  {
    v26 = [(TabDocument *)v16 loadURL:tabCopy userDriven:1];
  }

  [(TabDocument *)v16 setTabReuseURL:tabCopy];
  [(TabDocument *)v16 setWasOpenedFromLink:animatedCopy && ~backgroundCopy];
  if ([(TabCollectionViewProviding *)self->_tabCollectionViewProvider hasTabBar])
  {
    [(BrowserController *)self showBars];
    [(TabCollectionViewProviding *)self->_tabCollectionViewProvider updateTabBarAnimated:1];
  }

  if (backgroundCopy)
  {
    webView = [(TabDocument *)v16 webView];
    [(BrowserController *)self updateInsetsForBackgroundWebView:webView];
  }

  return v16;
}

- (void)loadCloudTabsForDeviceRestoration:(id)restoration
{
  v19 = *MEMORY[0x277D85DE8];
  restorationCopy = restoration;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = [restorationCopy count];
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Loading %zu CloudTabs for device restoration", buf, 0xCu);
  }

  [(BrowserController *)self _dismissTransientUIAnimated:3 dismissalOptions:0 completionHandler:?];
  deviceIdentifier = [(WBTabGroupManager *)self->_tabGroupManager deviceIdentifier];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__BrowserController_loadCloudTabsForDeviceRestoration___block_invoke;
  v15[3] = &unk_2781D7010;
  v7 = deviceIdentifier;
  v16 = v7;
  v8 = [restorationCopy safari_mapObjectsUsingBlock:v15];
  tabGroupManager = self->_tabGroupManager;
  localTabGroup = [(WBWindowState *)self->_windowState localTabGroup];
  uuid = [localTabGroup uuid];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__BrowserController_loadCloudTabsForDeviceRestoration___block_invoke_2;
  v13[3] = &unk_2781D7038;
  v12 = v8;
  v14 = v12;
  [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:uuid persist:1 usingBlock:v13];
}

id __55__BrowserController_loadCloudTabsForDeviceRestoration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D7B538]);
  v5 = [v3 title];
  v6 = [v3 url];
  v7 = [v4 initWithTitle:v5 url:v6 deviceIdentifier:*(a1 + 32)];

  return v7;
}

- (void)tabDocumentDidCompleteCheckForAppBanner:(id)banner
{
  bannerCopy = banner;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:bannerCopy])
  {
    appBanner = [bannerCopy appBanner];

    if (appBanner)
    {
      appBanner2 = [bannerCopy appBanner];
      [(BrowserController *)self _setShowingAppBanner:appBanner2 isShowing:1];
    }
  }
}

- (BOOL)tabDocumentShouldDeferAppBannerRemoval:(id)removal
{
  refreshControl = [(BrowserRootViewController *)self->_rootViewController refreshControl];
  isRefreshing = [refreshControl isRefreshing];

  return isRefreshing;
}

- (void)removeAppBannerFromTabDocument:(id)document animated:(BOOL)animated
{
  animatedCopy = animated;
  documentCopy = document;
  appBanner = [documentCopy appBanner];
  [documentCopy setAppBanner:0];
  [documentCopy setAppBannerRemovalWasDeferred:0];
  if (([(BrowserController *)self _setShowingOverlayForBanner:appBanner showing:0]& 1) == 0)
  {
    [(BannerController *)self->_bannerController setAppBanner:0 animated:animatedCopy];
  }
}

- (void)setAppBannerPinnedToTop:(BOOL)top forTabDocument:(id)document
{
  topCopy = top;
  documentCopy = document;
  appBanner = [documentCopy appBanner];
  isPinnedToTop = [appBanner isPinnedToTop];

  if (isPinnedToTop != topCopy)
  {
    appBanner2 = [documentCopy appBanner];
    if (topCopy)
    {
      [objc_opt_class() pinAnimationDelay];
    }

    else
    {
      [objc_opt_class() unpinAnimationDelay];
    }

    v11 = dispatch_time(0, (v10 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__BrowserController_setAppBannerPinnedToTop_forTabDocument___block_invoke;
    block[3] = &unk_2781D63D0;
    v16 = topCopy;
    v14 = appBanner2;
    selfCopy = self;
    v12 = appBanner2;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
  }
}

void __60__BrowserController_setAppBannerPinnedToTop_forTabDocument___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  [objc_opt_class() unpinAnimationDuration];
  v4 = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__BrowserController_setAppBannerPinnedToTop_forTabDocument___block_invoke_2;
  v7[3] = &unk_2781D63D0;
  v5 = *(a1 + 32);
  v10 = *(a1 + 48);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [v2 animateWithDuration:4 delay:v7 options:0 animations:v4 completion:0.0];
}

void __60__BrowserController_setAppBannerPinnedToTop_forTabDocument___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setPinnedToTop:*(a1 + 48)];
  [(BrowserController *)*(a1 + 40) _updateAppInfoOverlayFrame];
  v2 = *(a1 + 40);

  [(BrowserController *)v2 _updateNavigationBarSeparator];
}

- (void)tabDocumentWillShowInlineDialog:(id)dialog
{
  dialogCopy = dialog;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];

  if (activeTabDocument == dialogCopy)
  {
    [(BrowserController *)self setFavoritesAreEmbedded:0 animated:1];
    [(BrowserController *)self showBars];
  }
}

- (void)tabDocumentWillDismissInlineDialog:(id)dialog
{
  dialogCopy = dialog;
  if ([dialogCopy isShowingSystemStartPage])
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];

    if (activeTabDocument == dialogCopy)
    {
      [(BrowserController *)self setFavoritesAreEmbedded:1 animated:1];
    }
  }
}

- (void)tabDocument:(id)document didClearLibraryType:(id)type
{
  documentCopy = document;
  typeCopy = type;
  [(LibraryController *)self->_libraryController clearPresentedItemController];
  [(TabController *)self->_tabController openTab:documentCopy navigatedFromLibraryType:typeCopy];
}

- (void)tabDocument:(id)document presentViewControllerAnimated:(id)animated
{
  v23 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  animatedCopy = animated;
  presentingViewController = [animatedCopy presentingViewController];

  if (presentingViewController)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [animatedCopy presentingViewController];
      objc_claimAutoreleasedReturnValue();
      [BrowserController tabDocument:presentViewControllerAnimated:];
    }
  }

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if (activeTabDocument != documentCopy)
  {
    goto LABEL_10;
  }

  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState] == 1)
  {

LABEL_9:
LABEL_10:

    goto LABEL_11;
  }

  v12 = [tabThumbnailCollectionView presentationState] == 2;

  if (v12)
  {
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_viewControllerToDismissWhileBeingPresented);
  v19 = WeakRetained == 0;

  if (v19)
  {
    viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __63__BrowserController_tabDocument_presentViewControllerAnimated___block_invoke;
    v21[3] = &unk_2781D61F8;
    v21[4] = self;
    v22 = animatedCopy;
    [viewControllerToPresentFrom presentViewController:v22 animated:1 completion:v21];

    goto LABEL_16;
  }

LABEL_11:
  viewControllersPendingPresentation = self->_viewControllersPendingPresentation;
  if (!viewControllersPendingPresentation)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v17 = self->_viewControllersPendingPresentation;
    self->_viewControllersPendingPresentation = weakToStrongObjectsMapTable;

LABEL_15:
    [(NSMapTable *)self->_viewControllersPendingPresentation setObject:animatedCopy forKey:documentCopy];
    goto LABEL_16;
  }

  v14 = [(NSMapTable *)viewControllersPendingPresentation objectForKey:documentCopy];
  v15 = v14 == 0;

  if (v15)
  {
    goto LABEL_15;
  }

LABEL_16:
}

void __63__BrowserController_tabDocument_presentViewControllerAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 384));
  v3 = *(a1 + 40);

  if (WeakRetained == v3)
  {
    [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
    objc_storeWeak((*(a1 + 32) + 384), 0);
    v4 = *(a1 + 32);

    [(BrowserController *)v4 _presentPendingViewControllerForActiveTab];
  }
}

- (void)tabDocument:(id)document dismissViewControllerAnimated:(id)animated
{
  documentCopy = document;
  animatedCopy = animated;
  v7 = [(NSMapTable *)self->_viewControllersPendingPresentation objectForKey:documentCopy];

  if (v7 == animatedCopy)
  {
    [(NSMapTable *)self->_viewControllersPendingPresentation removeObjectForKey:documentCopy];
  }

  else
  {
    presentingViewController = [animatedCopy presentingViewController];
    if (presentingViewController && (v9 = [animatedCopy isBeingPresented], presentingViewController, !v9))
    {
      [animatedCopy dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      objc_storeWeak(&self->_viewControllerToDismissWhileBeingPresented, animatedCopy);
    }
  }
}

- (BOOL)tabDocumentCanCloseWindow:(id)window
{
  windowCopy = window;
  currentTabs = [(TabController *)self->_tabController currentTabs];
  v6 = [currentTabs containsObject:windowCopy];

  if (v6)
  {
    viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
    presentedViewController = [viewControllerToPresentFrom presentedViewController];
    v9 = presentedViewController == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tabDocumentDidChangeSafeAreaShouldAffectObscuredInsets:(id)insets
{
  [(BrowserRootViewController *)self->_rootViewController updateWebViewSizeAttributes];
  [(BrowserController *)self updateExposedScrollViewRect];
  needsImmediateLayoutForWebViewObscuredInsetsUpdate = self->_needsImmediateLayoutForWebViewObscuredInsetsUpdate;
  self->_needsImmediateLayoutForWebViewObscuredInsetsUpdate = 1;
  [(BrowserController *)self updateWebViewObscuredInsets];
  self->_needsImmediateLayoutForWebViewObscuredInsetsUpdate = needsImmediateLayoutForWebViewObscuredInsetsUpdate;
}

- (id)pageZoomPreferenceManagerForTabDocument:(id)document
{
  documentCopy = document;
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  if ([documentCopy isPrivateBrowsingEnabled])
  {
    privateBrowsingPageZoomManager = [WeakRetained privateBrowsingPageZoomManager];
  }

  else
  {
    perSitePreferencesVendor = [WeakRetained perSitePreferencesVendor];
    privateBrowsingPageZoomManager = [perSitePreferencesVendor pageZoomPreferenceManager];
  }

  return privateBrowsingPageZoomManager;
}

- (void)tabDocumentDidChangeCanStopLoadingState:(id)state
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedActivityViewController);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [WeakRetained updateReloadActivity];
  }

  capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  [capsuleViewController updateVisibleContextMenu];
}

- (BOOL)tabDocumentShouldFillStringForFind:(id)find
{
  v4 = objc_alloc_init(MEMORY[0x277D49B60]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__BrowserController_tabDocumentShouldFillStringForFind___block_invoke;
  v6[3] = &unk_2781D60B8;
  v6[4] = self;
  [v4 setHandler:v6];
  LOBYTE(self) = self->_shouldFillStringForFind;

  return self;
}

- (BOOL)tabDocumentCanFindNextOrPrevious:(id)previous
{
  if (![(BrowserController *)self _showingTabDocumentWithURL])
  {
    return 0;
  }

  _stringForFind = [MEMORY[0x277CE3850] _stringForFind];
  v4 = [_stringForFind length] != 0;

  return v4;
}

- (int64_t)orderIndexForTab:(id)tab
{
  tabCopy = tab;
  wbTab = [tabCopy wbTab];
  tabGroupUUID = [wbTab tabGroupUUID];

  if (tabGroupUUID)
  {
    activeTabGroupUUID = [(TabController *)self->_tabController activeTabGroupUUID];
    if (WBSIsEqual())
    {
    }

    else
    {
      windowState = [(TabController *)self->_tabController windowState];
      privateTabGroup = [windowState privateTabGroup];
      uuid = [privateTabGroup uuid];
      v11 = WBSIsEqual();

      if (!v11)
      {
        v14 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:tabGroupUUID];
        tabs = [v14 tabs];
        wbTab2 = [tabCopy wbTab];
        v15 = [tabs indexOfObject:wbTab2];

        goto LABEL_9;
      }
    }
  }

  isPrivateBrowsingEnabled = [tabCopy isPrivateBrowsingEnabled];
  tabController = self->_tabController;
  if (isPrivateBrowsingEnabled)
  {
    [(TabController *)tabController privateTabs];
  }

  else
  {
    [(TabController *)tabController normalTabs];
  }
  v14 = ;
  v15 = [v14 indexOfObject:tabCopy];
LABEL_9:

  return v15;
}

- (void)_updateCurrentPageBannerViewBeforeContinuousTransition
{
  if (self)
  {
    topBannerView = [*(self + 80) topBannerView];
    [topBannerView removeFromSuperview];
  }
}

- (id)_cachedDocumentForContinuousReadingItem:(void *)item
{
  v3 = a2;
  if (item)
  {
    cachedDocumentOnContinuousTransition = [item cachedDocumentOnContinuousTransition];
    readingListBookmark = [v3 readingListBookmark];
    identifier = [readingListBookmark identifier];
    if (identifier == [cachedDocumentOnContinuousTransition readingListBookmarkID])
    {
      webView = [cachedDocumentOnContinuousTransition webView];

      v8 = webView == 0;
      if (webView)
      {
        v9 = cachedDocumentOnContinuousTransition;
      }

      else
      {
        v9 = 0;
      }

      if (!v8)
      {
        cachedDocumentOnContinuousTransition = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_startLoadDocument:(void *)document continuousReadingItem:
{
  v12 = a2;
  documentCopy = document;
  v6 = documentCopy;
  if (self)
  {
    v7 = [documentCopy URL];
    readingListBookmark = [v6 readingListBookmark];
    tabController = [self tabController];
    activeTabDocument = [tabController activeTabDocument];
    sessionState = [activeTabDocument sessionState];

    [v12 restoreSessionState:sessionState andNavigate:0];
    [v12 loadURLForContinuousReadingList:v7 fromBookmark:readingListBookmark];
  }
}

- (void)loadNextContinuousDocumentIfNeeded
{
  if (self)
  {
    if (([self[20] isLoading] & 1) == 0 && (objc_msgSend(self[20], "didFinishDocumentLoad") & 1) == 0)
    {
      [(BrowserController *)self _prepareTabDocumentForNextContinuousItemIfNeeded];
      previewView = [self[10] previewView];
      if (!previewView || (v8 = previewView, [self[10] previewView], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isPrefetchingDisabled"), v3, v8, (v4 & 1) == 0))
      {
        if (([self[10] isCommittingToContinuousDocument] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAC38], "processInfo"), v9 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v9, "isLowPowerModeEnabled"), v9, (v5 & 1) == 0))
        {
          v6 = self[20];
          continuousReadingController = [self continuousReadingController];
          nextReadingListItem = [continuousReadingController nextReadingListItem];
          [(BrowserController *)self _startLoadDocument:v6 continuousReadingItem:nextReadingListItem];
        }
      }
    }
  }
}

- (void)_commitToTabDocumentForNextContinuousItem
{
  if (self)
  {
    mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    isNetworkReachable = [mEMORY[0x277CEC5B8] isNetworkReachable];

    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didOpenReadingListItemWithReachableNetwork:isNetworkReachable isContinuousTransition:1];

    _tabDocumentForNextContinuousItem = [(BrowserController *)self _tabDocumentForNextContinuousItem];
    previewView = [self[10] previewView];
    [previewView setPrefetchingDisabled:0];

    [(BrowserController *)self loadNextContinuousDocumentIfNeeded];
    [self setNextContinuousItemDocument:0];
    [_tabDocumentForNextContinuousItem setWantsReaderWhenActivated:{objc_msgSend(self, "readerShouldBeShownIfPossible")}];
    [(BrowserController *)self _commitToSpeculativeLoadForDocument:_tabDocumentForNextContinuousItem];
    [_tabDocumentForNextContinuousItem setWantsReaderWhenActivated:0];
  }
}

- (void)_commitToTabDocumentForPreviousContinuousItem
{
  if (self)
  {
    mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    isNetworkReachable = [mEMORY[0x277CEC5B8] isNetworkReachable];

    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didOpenReadingListItemWithReachableNetwork:isNetworkReachable isContinuousTransition:1];

    previousItemPreviewView = [self[10] previousItemPreviewView];
    [previousItemPreviewView setPrefetchingDisabled:0];

    [(BrowserController *)self _loadPreviousContinuousDocumentIfNeeded];
    previousContinuousItemDocument = [self previousContinuousItemDocument];
    [self setPreviousContinuousItemDocument:0];
    [previousContinuousItemDocument setWantsReaderWhenActivated:{objc_msgSend(self, "readerShouldBeShownIfPossible")}];
    [(BrowserController *)self _commitToSpeculativeLoadForDocument:previousContinuousItemDocument];
    [previousContinuousItemDocument setWantsReaderWhenActivated:0];
  }
}

- (void)_loadPreviousContinuousDocumentIfNeeded
{
  if (self)
  {
    continuousReadingController = [self continuousReadingController];
    previousReadingListItem = [continuousReadingController previousReadingListItem];

    if (previousReadingListItem)
    {
      if (([self[26] isLoading] & 1) == 0 && (objc_msgSend(self[26], "didFinishDocumentLoad") & 1) == 0)
      {
        [(BrowserController *)self _preparePreviousContinuousDocumentIfNeeded];
        previousItemPreviewView = [self[10] previousItemPreviewView];
        isPrefetchingDisabled = [previousItemPreviewView isPrefetchingDisabled];

        if ((isPrefetchingDisabled & 1) == 0)
        {
          if (([self[10] isCommittingToContinuousDocument] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAC38], "processInfo"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isLowPowerModeEnabled"), v5, (v6 & 1) == 0))
          {
            [(BrowserController *)self _startLoadDocument:previousReadingListItem continuousReadingItem:?];
          }
        }
      }
    }
  }
}

- (double)_frameForCurrentPageBannerView
{
  if (!self)
  {
    return 0.0;
  }

  [*(self + 288) bounds];
  v3 = v2;
  v4 = *(self + 264);
  [*(self + 288) bounds];
  [v4 sidebarObscuredInsetsForRect:*(self + 288) inCoordinateSpace:?];
  v6 = v5;
  topBannerView = [*(self + 80) topBannerView];
  [topBannerView bounds];
  CGRectGetHeight(v10);
  v8 = v3 + v6;

  [(BrowserController *)self _verticalOffsetForContinuousReadingBanner];
  return v8;
}

- (void)_preparePreviousContinuousDocumentIfNeeded
{
  if (self)
  {
    continuousReadingController = [self continuousReadingController];
    previousReadingListItem = [continuousReadingController previousReadingListItem];

    v3 = previousReadingListItem;
    if (previousReadingListItem && !self[26])
    {
      v4 = [(BrowserController *)self _cachedDocumentForContinuousReadingItem:previousReadingListItem];
      v5 = self[26];
      self[26] = v4;

      v6 = self[26];
      if (!v6)
      {
        v7 = [[TabDocument alloc] initForBackgroundLoadingWithBrowserController:self relatedWebView:0 webViewToCloneSessionStorageFrom:0];
        v8 = self[26];
        self[26] = v7;

        v6 = self[26];
      }

      [v6 beginSuppressingProgressAnimation];
      [self[26] setAllowsRemoteInspection:0];
      if ([self readerShouldBeShownIfPossible] && (objc_msgSend(self[26], "readerWebView"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        readerWebView = [self[26] readerWebView];
      }

      else
      {
        readerWebView = [self[26] webView];
      }

      [self[10] didCreateWebViewForPreviousDocument:readerWebView];
      if (([self[26] suppressWebExtensionEvents] & 1) == 0)
      {
        webExtensionsController = [self[26] webExtensionsController];
        [webExtensionsController didOpenTab:self[26]];
      }

      v3 = previousReadingListItem;
    }
  }
}

- (void)setCurrentContinuousReadingItem:(id *)item
{
  v6 = a2;
  if (item)
  {
    currentItem = [item[10] currentItem];
    if (currentItem == v6)
    {
    }

    else
    {
      currentItem2 = [item[10] currentItem];
      v5 = [currentItem2 isEqual:v6];

      if ((v5 & 1) == 0)
      {
        [item[10] setCurrentItem:v6];
        [(BrowserController *)item _updateCurrentPageBannerView];
        [item didChangeContinuousReadingItemInActiveDocument];
      }
    }
  }
}

- (void)_setContinuousReadingPreviewView:(id *)view
{
  v4 = a2;
  if (view)
  {
    previewView = [view[10] previewView];
    if (previewView != v4)
    {
      [previewView removeFromSuperview];
      [view[10] setPreviewView:v4];
      [v4 setAutoresizingMask:10];
      [view updateContinuousPreviewViewFrame];
      [view[36] addSubview:v4];
      [view[33] updateWebViewSizeAttributes];
    }
  }
}

- (void)markReadingListBookmark:(id)bookmark asRead:(BOOL)read postNotification:(BOOL)notification
{
  notificationCopy = notification;
  bookmarkCopy = bookmark;
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  [(WebBookmarkCollection *)mainBookmarkCollection markReadingListBookmark:bookmarkCopy asRead:read postNotification:notificationCopy];
}

- (void)continuousReadingViewController:(id)controller scrollViewDidScroll:(id)scroll
{
  controllerCopy = controller;
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v8 = v7;
  [controllerCopy scrollOffsetYForCurrentDocument];
  if (v8 >= v9)
  {
    [(BrowserController *)&self->super.super.super.isa prefetchNextContinuousItemIfNeeded];
  }

  else
  {
    [(BrowserController *)&self->super.super.super.isa _loadPreviousContinuousDocumentIfNeeded];
  }
}

- (void)continuousReadingViewControllerWillCommitToLoadNextItem:(id)item
{
  [(BrowserController *)self _updateCurrentPageBannerViewBeforeContinuousTransition];
  tabController = [(BrowserController *)self tabController];
  activeTabDocument = [tabController activeTabDocument];
  [(BrowserController *)self setCachedDocumentOnContinuousTransition:activeTabDocument];

  [(TabDocument *)self->_nextContinuousItemDocument estimatedProgress];
  if (v6 == 1.0)
  {
    [(StatusBarSpinnerController *)self->_spinnerController setEnabled:0];
  }

  [(BrowserController *)&self->super.super.super.isa _commitToTabDocumentForNextContinuousItem];
  spinnerController = self->_spinnerController;

  [(StatusBarSpinnerController *)spinnerController setEnabled:1];
}

- (void)continuousReadingViewControllerCommitToLoadPreviousItem:(id)item
{
  [(BrowserController *)self _updateCurrentPageBannerViewBeforeContinuousTransition];
  tabController = [(BrowserController *)self tabController];
  activeTabDocument = [tabController activeTabDocument];
  [(BrowserController *)self setCachedDocumentOnContinuousTransition:activeTabDocument];

  [(BrowserController *)&self->super.super.super.isa _commitToTabDocumentForPreviousContinuousItem];
}

- (void)continuousReadingViewController:(id)controller didCommitToLoadItem:(id)item
{
  itemCopy = item;
  [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerView];
  [(BrowserController *)self setCachedDocumentOnContinuousTransition:0];
  readingListBookmark = [itemCopy readingListBookmark];
  [(BrowserController *)self markReadingListBookmark:readingListBookmark asRead:1 postNotification:1];
}

- (double)continuousReadingViewControllerNextWebViewLandingOffset:(id)offset includeBottomBar:(BOOL)bar
{
  barCopy = bar;
  [(BrowserController *)self updateDynamicBarGeometry];
  tabContentContainerView = [(BrowserController *)&self->super.super.super.isa tabContentContainerView];
  [(BrowserRootViewController *)self->_rootViewController navigationBarFrameInCoordinateSpace:tabContentContainerView];
  MaxY = CGRectGetMaxY(v18);
  [tabContentContainerView frame];
  v8 = MaxY + CGRectGetMinY(v19);
  if (barCopy)
  {
    [(BrowserRootViewController *)self->_rootViewController bottomToolbarFrameInCoordinateSpace:tabContentContainerView includeKeyboard:1];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [tabContentContainerView bounds];
    v22.origin.x = v10;
    v22.origin.y = v12;
    v22.size.width = v14;
    v22.size.height = v16;
    v21 = CGRectIntersection(v20, v22);
    v8 = v8 + v21.size.height;
  }

  return v8;
}

- (void)_automaticPasswordInputViewNotification:(id)notification
{
  notificationCopy = notification;
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277CDB958]];
  v7 = [v4 initWithUUIDString:v6];

  userInfo2 = [notificationCopy userInfo];
  v9 = [userInfo2 safari_numberForKey:*MEMORY[0x277CDB968]];

  if (v9)
  {
    integerValue = [v9 integerValue];
    if (integerValue)
    {
      if (integerValue != 1)
      {
        goto LABEL_8;
      }

      activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
      [activeTabDocument userDeclinedAutomaticStrongPasswordForCurrentDomainOnTabWithUUID:v7];

      activeTabDocument2 = [(TabController *)self->_tabController activeTabDocument];
      [activeTabDocument2 removeAutomaticPasswordButton];
    }

    else
    {
      if (![MEMORY[0x277D49A08] isPasswordsAppInstalled])
      {
        goto LABEL_8;
      }

      activeTabDocument2 = [(TabController *)self->_tabController tabDocumentWithUUID:v7];
      autoFillController = [activeTabDocument2 autoFillController];
      [autoFillController fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution:1 completionHandler:&__block_literal_global_1151];
    }
  }

LABEL_8:
}

- (void)_automaticPasswordInputViewAutoFillContextProviderRequiredNotification:(id)notification
{
  notificationCopy = notification;
  tabController = self->_tabController;
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x277CDB958]];
  v8 = [v5 initWithUUIDString:v7];
  v9 = [(TabController *)tabController tabDocumentWithUUID:v8];

  userInfo2 = [notificationCopy userInfo];
  v11 = [userInfo2 objectForKey:*MEMORY[0x277CDB960]];

  [v11 setAutoFillContextProvider:v9];
}

- (uint64_t)_isTabDocumentFrontMostForDigitalHealth:(uint64_t)health
{
  v3 = a2;
  v4 = v3;
  if (health)
  {
    v5 = *(health + 184);
    if (v5)
    {
      health = v5 == v3;
    }

    else
    {
      activeTabDocument = [*(health + 328) activeTabDocument];
      health = activeTabDocument == v4;
    }
  }

  return health;
}

- (id)_screenTimeHostingViewControllerForTabDocument:(id)document
{
  v3 = a2;
  if (document)
  {
    v4 = *(document + 23);
    if (v4 == v3)
    {
      linkPreviewViewController = [v4 linkPreviewViewController];
    }

    else
    {
      linkPreviewViewController = *(document + 33);
    }

    document = linkPreviewViewController;
  }

  return document;
}

- (id)_screenTimeOverlayViewControllerForTabDocument:(void *)document
{
  v3 = a2;
  if (document)
  {
    v4 = [(BrowserController *)document _screenTimeHostingViewControllerForTabDocument:v3];
    screenTimeOverlayViewController = [v4 screenTimeOverlayViewController];
  }

  else
  {
    screenTimeOverlayViewController = 0;
  }

  return screenTimeOverlayViewController;
}

- (void)policyDidChangeForDigitalHealthManager:(id)manager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__BrowserController_policyDidChangeForDigitalHealthManager___block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__BrowserController_policyDidChangeForDigitalHealthManager___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 328) allTabDocuments];
  v3 = *(a1 + 32);
  v5 = v2;
  v4 = [MEMORY[0x277CBEB98] setWithArray:?];
  [(BrowserController *)v3 _updateDigitalHealthOverlayForTabDocuments:v4];
}

void __64__BrowserController__updateDigitalHealthOverlayForTabDocuments___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__BrowserController__updateDigitalHealthOverlayForTabDocuments___block_invoke_2;
    block[3] = &unk_2781D7060;
    objc_copyWeak(&v7, (a1 + 40));
    v5 = v3;
    v6 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v7);
  }
}

void __64__BrowserController__updateDigitalHealthOverlayForTabDocuments___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allObjects];
  [(BrowserController *)WeakRetained _toggleDigitalHealthOverlayGivenOverlayStates:v2 forTabDocuments:v3];
}

- (void)_toggleDigitalHealthOverlayGivenOverlayStates:(void *)states forTabDocuments:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  statesCopy = states;
  if (self)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = statesCopy;
    obj = statesCopy;
    v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          v11 = [v10 URL];
          safari_canonicalURL = [v11 safari_canonicalURL];
          v13 = [v5 objectForKeyedSubscript:safari_canonicalURL];
          integerValue = [v13 integerValue];

          [v10 setPolicy:integerValue];
          if ((integerValue - 1) >= 5)
          {
            if (!integerValue && ([self tabDocumentIsBackgroundPreloading:v10] & 1) == 0)
            {
              [(BrowserController *)self _fullyRemoveDigitalHealthTreatmentForTabDocumentIfNecessary:v10];
            }
          }

          else
          {
            [(BrowserController *)self _showDigitalHealthOverlayForTabDocument:v10 withPolicy:integerValue animated:1];
          }

          ++v9;
        }

        while (v7 != v9);
        v15 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
        v7 = v15;
      }

      while (v15);
    }

    statesCopy = v16;
  }
}

- (void)_fullyRemoveDigitalHealthTreatmentForTabDocumentIfNecessary:(void *)necessary
{
  v3 = a2;
  if (necessary)
  {
    v4 = [(BrowserController *)necessary _screenTimeOverlayViewControllerForTabDocument:v3];
    if (([(BrowserController *)necessary _isTabDocumentFrontMostForDigitalHealth:v3]& 1) != 0)
    {
      [v3 setPolicy:0];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __81__BrowserController__fullyRemoveDigitalHealthTreatmentForTabDocumentIfNecessary___block_invoke;
      v5[3] = &unk_2781D61F8;
      v5[4] = necessary;
      v6 = v3;
      [v4 hideBlockingViewControllerWithCompletionHandler:v5];
    }
  }
}

- (double)_frameForScreenTimeOverlayViewControllerView
{
  if (!self)
  {
    return 0.0;
  }

  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    [self[117] bounds];
    return v2;
  }

  else
  {
    documentAndTopBarsContainerView = [self[33] documentAndTopBarsContainerView];
    [documentAndTopBarsContainerView bounds];
    v6 = v5;
    [self[33] obscuredInsetsForRect:documentAndTopBarsContainerView inCoordinateSpace:?];
    [self _shouldUseNarrowLayout];
    UIEdgeInsetsReplace();
    v3 = v6 + v7;
  }

  return v3;
}

- (void)tabDocument:(id)document didChangePIPState:(BOOL)state
{
  stateCopy = state;
  documentCopy = document;
  v10 = documentCopy;
  if (stateCopy)
  {
    v7 = documentCopy;
  }

  else
  {
    v7 = 0;
  }

  tabDocumentPlayingPIPVideo = self->_tabDocumentPlayingPIPVideo;
  self->_tabDocumentPlayingPIPVideo = v7;

  v9 = +[Application sharedApplication];
  [v9 updateShouldLockPrivateBrowsingWithTimerIfNecessary];
}

- (void)switchToTabWithUUID:(id)d inWindowWithUUID:(id)iD forTabGroupWithUUID:(id)uID
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  browserWindowController = [(BrowserController *)self browserWindowController];
  v11 = [browserWindowController browserControllerWithUUID:iDCopy];

  if (v11)
  {
    tabController = [(BrowserController *)v11 tabController];
    v13 = [tabController tabWithUUID:dCopy];

    if (v13)
    {
      tabController2 = [(BrowserController *)v11 tabController];
      currentTabs = [tabController2 currentTabs];
      v16 = [currentTabs indexOfObjectIdenticalTo:v13];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
        browserController = [v13 browserController];
        [(BrowserController *)&self->super.super.super.isa _requestActivationOfBrowserController:browserController];

        tabController3 = [(BrowserController *)v11 tabController];
        [tabController3 setActiveTab:v13 animated:0];

        [(BrowserController *)v11 dismissTransientUIAnimated:1];
        if ([activeTabDocument isBlank] && (-[TabController currentTabs](self->_tabController, "currentTabs"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v21 >= 2))
        {
          [(TabController *)self->_tabController closeTab:activeTabDocument animated:0];
        }

        else if (v11 != self)
        {
          [(BrowserController *)self cancelFavorites];
        }
      }
    }

    else if (uIDCopy && ![(TabController *)self->_tabController switchToTabWithUUID:dCopy inTabGroupWithUUID:uIDCopy])
    {
      v22 = [(TabController *)self->_tabController browserControllerContainingLocalTabGroupUUID:uIDCopy];

      if (v22)
      {
        [(BrowserController *)&self->super.super.super.isa _requestActivationOfBrowserController:v22];
        tabController4 = [(BrowserController *)v22 tabController];
        [tabController4 switchToTabWithUUID:dCopy inTabGroupWithUUID:uIDCopy];

        v11 = v22;
        [(BrowserController *)self cancelFavorites];
      }

      else
      {
        v11 = 0;
      }
    }
  }
}

- (BOOL)containsTabWithUUID:(id)d
{
  v3 = [(TabController *)self->_tabController tabWithUUID:d];
  v4 = v3 != 0;

  return v4;
}

void __59__BrowserController__requestActivationOfBrowserController___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [v2 safari_privacyPreservingDescription];
    objc_claimAutoreleasedReturnValue();
    __51__BrowserController_tabDocumentShouldBecomeActive___block_invoke_cold_1();
  }
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  v103[1] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v9 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    persistentIdentifier = [sessionCopy persistentIdentifier];
    uUID = [(BrowserController *)self UUID];
    *buf = 138543618;
    *&buf[4] = persistentIdentifier;
    *&buf[12] = 2114;
    *&buf[14] = uUID;
    _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Connecting to scene session with sceneID = %{public}@, uuid = %{public}@", buf, 0x16u);
  }

  v12 = sceneCopy;
  [v12 setDelegate:self];
  screenshotService = [v12 screenshotService];
  [screenshotService setDelegate:self];

  [v12 setActivityItemsConfigurationSource:self];
  objc_storeWeak(&self->_scene, v12);
  intentSceneConfigurationCompletion = self->_intentSceneConfigurationCompletion;
  if (intentSceneConfigurationCompletion)
  {
    intentSceneConfigurationCompletion[2](intentSceneConfigurationCompletion, v12);
    v15 = self->_intentSceneConfigurationCompletion;
    self->_intentSceneConfigurationCompletion = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained browserController:self willConnectToScene:v12 session:sessionCopy options:optionsCopy];
  v17 = [WeakRetained sidebarUIProxyForBrowserController:self];
  [(BrowserController *)self _setSidebarUIProxy:v17];

  if (!self->_didConnectToScene)
  {
    [(BrowserController *)self setUpWithURL:0 launchOptions:0];
    self->_didConnectToScene = 1;
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self didConnectToScene:v12 session:sessionCopy options:optionsCopy];
  }

  [(WBWindowState *)self->_windowState setNewlyCreated:0];
  v88 = objc_loadWeakRetained(&self->_browserWindowController);
  if (!optionsCopy)
  {
    anyObject = 0;
LABEL_14:
    v19 = 0;
    goto LABEL_16;
  }

  v18 = [MEMORY[0x277CC1EF0] _sf_windowCreationActivityFromSceneConnectionOptions:optionsCopy];
  if (v18)
  {
    anyObject = v18;
    if ([v88 modeForNewWindowUserActivity:?] == 1)
    {
      [(BrowserController *)self setPrivateBrowsingEnabled:1];
    }

    goto LABEL_14;
  }

  userActivities = [optionsCopy userActivities];
  anyObject = [userActivities anyObject];

  userActivityController = self->_userActivityController;
  activityType = [anyObject activityType];
  v19 = [(UserActivityController *)userActivityController willContinueUserActivityWithType:activityType];

LABEL_16:
  shortcutItem = [optionsCopy shortcutItem];
  if (shortcutItem)
  {
    v24 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      type = [shortcutItem type];
      *buf = 138543362;
      *&buf[4] = type;
      _os_log_impl(&dword_215819000, v24, OS_LOG_TYPE_DEFAULT, "Handling session connection as shortcutItem of type: %{public}@", buf, 0xCu);
    }

    [(BrowserController *)self windowScene:v12 performActionForShortcutItem:shortcutItem completionHandler:&__block_literal_global_1161];
    goto LABEL_44;
  }

  if (!v19)
  {
    _sf_windowCreationNavigationIntent = [anyObject _sf_windowCreationNavigationIntent];
    if (_sf_windowCreationNavigationIntent || ([(BrowserController *)self _openURLNavigationIntentForSceneConnectionOptions:optionsCopy], (_sf_windowCreationNavigationIntent = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v29 = WBS_LOG_CHANNEL_PREFIXTabs();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        privacyPreservingDescription = [_sf_windowCreationNavigationIntent privacyPreservingDescription];
        *buf = 138543362;
        *&buf[4] = privacyPreservingDescription;
        _os_log_impl(&dword_215819000, v29, OS_LOG_TYPE_DEFAULT, "Handling session connection as navigationIntent: %{public}@", buf, 0xCu);
      }

      if ([_sf_windowCreationNavigationIntent policy] == 4)
      {
        browserWindowController = [(BrowserController *)self browserWindowController];
        sourceWindowUUID = [_sf_windowCreationNavigationIntent sourceWindowUUID];
        v33 = [browserWindowController browserControllerWithUUID:sourceWindowUUID];
        activeProfileIdentifier = [v33 activeProfileIdentifier];

        if ([activeProfileIdentifier length])
        {
          [(TabController *)self->_tabController setActiveProfileIdentifier:activeProfileIdentifier];
        }
      }

      if ([_sf_windowCreationNavigationIntent type] == 9)
      {
        v35 = [_sf_windowCreationNavigationIntent URL];
        safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL = [v35 safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL];
        second = [safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL second];

        if ([second length])
        {
          [(TabController *)self->_tabController setActiveProfileIdentifier:second];
        }
      }

      if (![(BrowserController *)self shouldStayInFocusedTabGroupForExternalLinks])
      {
        [(TabController *)self->_tabController switchOutOfSyncedTabGroup];
      }

      uRLContexts = [optionsCopy URLContexts];
      v39 = [(BrowserController *)self handleOpenURLContextsForReadingListWidget:uRLContexts];

      if ((v39 & 1) == 0)
      {
        v40 = +[Application sharedApplication];
        needsFocusProfileUpdate = [v40 needsFocusProfileUpdate];

        if (needsFocusProfileUpdate)
        {
          objc_storeStrong(&self->_navigationIntentPendingProfileUpdate, _sf_windowCreationNavigationIntent);
        }

        else
        {
          [(BrowserController *)self handleNavigationIntent:_sf_windowCreationNavigationIntent completion:0];
        }
      }

      [anyObject _sf_invalidateWindowCreationData];
      goto LABEL_43;
    }

    _sf_windowCreationTabUUID = [anyObject _sf_windowCreationTabUUID];
    if (_sf_windowCreationTabUUID)
    {
    }

    else
    {
      _sf_windowCreationTabGroupUUID = [anyObject _sf_windowCreationTabGroupUUID];
      v48 = _sf_windowCreationTabGroupUUID == 0;

      if (v48)
      {
        safari_windowCreationTabUUIDs = [anyObject safari_windowCreationTabUUIDs];
        if (safari_windowCreationTabUUIDs)
        {
          safari_windowCreationSelectedTabUUID = [anyObject safari_windowCreationSelectedTabUUID];
          _sf_windowCreationSourceBrowserControllerUUID = [anyObject _sf_windowCreationSourceBrowserControllerUUID];
          v62 = [v88 browserControllerWithUUID:_sf_windowCreationSourceBrowserControllerUUID];
          tabController = [v62 tabController];

          activeProfileIdentifier2 = [tabController activeProfileIdentifier];
          [(BrowserController *)self setActiveProfileIdentifier:activeProfileIdentifier2];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v100 = __Block_byref_object_copy__3;
          v101 = __Block_byref_object_dispose__3;
          v102 = 0;
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = __56__BrowserController_scene_willConnectToSession_options___block_invoke_1162;
          v94[3] = &unk_2781D70B0;
          v64 = tabController;
          v95 = v64;
          selfCopy = self;
          v80 = safari_windowCreationSelectedTabUUID;
          v97 = v80;
          v98 = buf;
          v65 = [safari_windowCreationTabUUIDs safari_mapAndFilterObjectsUsingBlock:v94];
          v66 = v65;
          tabController = self->_tabController;
          v68 = *(*&buf[8] + 40);
          firstObject = v68;
          if (!v68)
          {
            firstObject = [v65 firstObject];
          }

          [(TabController *)tabController replaceBlankActiveTabWithTabs:v66 andSelectTab:firstObject];
          if (!v68)
          {
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          _sf_windowCreationRecentlyClosedTabUUID = [anyObject _sf_windowCreationRecentlyClosedTabUUID];
          v80 = _sf_windowCreationRecentlyClosedTabUUID;
          if (_sf_windowCreationRecentlyClosedTabUUID)
          {
            v75 = [(_SFBrowserSavedState *)self->_savedState tabStateDataForUUID:_sf_windowCreationRecentlyClosedTabUUID];
            if (v75)
            {
              v76 = WBS_LOG_CHANNEL_PREFIXTabs();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_215819000, v76, OS_LOG_TYPE_DEFAULT, "Handling session connection as window creation from recently closed tab", buf, 2u);
              }

              [(_SFBrowserSavedState *)self->_savedState loadSessionStateDataAndRemoveRecentlyClosedTab:v75];
              v77 = [[TabDocument alloc] initWithTabStateData:v75 hibernated:0 browserController:self];
              [(TabController *)self->_tabController replaceBlankActiveTabWithTab:v77];
            }

            else
            {
              v79 = WBS_LOG_CHANNEL_PREFIXTabs();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                [BrowserController scene:willConnectToSession:options:];
              }
            }
          }

          else
          {
            v78 = WBS_LOG_CHANNEL_PREFIXTabs();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_215819000, v78, OS_LOG_TYPE_INFO, "Not handling session connection as a navigation", buf, 2u);
            }
          }
        }

        goto LABEL_73;
      }
    }

    v49 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v49, OS_LOG_TYPE_DEFAULT, "Handling session connection as window creation from tab", buf, 2u);
    }

    _sf_windowCreationTabUUID2 = [anyObject _sf_windowCreationTabUUID];
    safari_windowCreationTabUUIDs = _sf_windowCreationTabUUID2;
    if (_sf_windowCreationTabUUID2)
    {
      v51 = self->_tabController;
      uUIDString = [_sf_windowCreationTabUUID2 UUIDString];
      v80 = [(TabController *)v51 wbTabWithUUID:uUIDString];
    }

    else
    {
      v80 = 0;
    }

    _sf_windowCreationTabGroupUUID2 = [anyObject _sf_windowCreationTabGroupUUID];
    uUIDString2 = [_sf_windowCreationTabGroupUUID2 UUIDString];
    if (uUIDString2 || ([v80 tabGroupUUID], (uUIDString2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      tabGroupManager = [(TabController *)self->_tabController tabGroupManager];
      uUIDString3 = [tabGroupManager tabGroupWithUUID:uUIDString2];
      profileIdentifier = [uUIDString3 profileIdentifier];
    }

    else
    {
      if (!safari_windowCreationTabUUIDs)
      {
        uUIDString2 = 0;
        profileIdentifier = 0;
        [(TabController *)self->_tabController setActiveProfileIdentifier:0];
LABEL_61:
        if (_sf_windowCreationTabGroupUUID2)
        {
          v55 = WBS_LOG_CHANNEL_PREFIXTabs();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = _sf_windowCreationTabGroupUUID2;
            _os_log_impl(&dword_215819000, v55, OS_LOG_TYPE_DEFAULT, "Connecting a scene session with explicit tab group: %{public}@", buf, 0xCu);
          }

          if (safari_windowCreationTabUUIDs)
          {
            tabController2 = [(BrowserController *)self tabController];
            [tabController2 switchToTabWithUUID:safari_windowCreationTabUUIDs inTabGroupWithUUID:_sf_windowCreationTabGroupUUID2];
LABEL_71:

            goto LABEL_72;
          }

          tabController2 = [_sf_windowCreationTabGroupUUID2 UUIDString];
          tabController3 = [(BrowserController *)self tabController];
          [tabController3 setActiveTabGroupUUID:tabController2];
        }

        else
        {
          if (!safari_windowCreationTabUUIDs)
          {
LABEL_72:

LABEL_73:
            _sf_windowCreationNavigationIntent = 0;
LABEL_43:

            goto LABEL_44;
          }

          _sf_windowCreationSourceBrowserControllerUUID2 = [anyObject _sf_windowCreationSourceBrowserControllerUUID];
          v58 = [v88 browserControllerWithUUID:_sf_windowCreationSourceBrowserControllerUUID2];
          tabController2 = [v58 tabController];

          v59 = [tabController2 tabWithUUID:safari_windowCreationTabUUIDs];
          tabController3 = v59;
          if (v59)
          {
            -[BrowserController setPrivateBrowsingEnabled:](self, "setPrivateBrowsingEnabled:", [v59 isPrivateBrowsingEnabled]);
            [(TabController *)self->_tabController replaceBlankActiveTabWithTab:tabController3];
          }

          else if (v80)
          {
            -[BrowserController setPrivateBrowsingEnabled:](self, "setPrivateBrowsingEnabled:", [v80 isPrivateBrowsing]);
            v71 = self->_tabController;
            v103[0] = v80;
            v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:1];
            activeTabGroup = [(TabController *)self->_tabController activeTabGroup];
            [(TabController *)v71 moveWBTabs:v72 toTabGroup:activeTabGroup];

            tabController3 = 0;
            [(TabController *)self->_tabController removeSingleBlankTabFromActiveTabGroup];
          }
        }

        goto LABEL_71;
      }

      tabGroupManager = [(TabController *)self->_tabController pinnedTabsManager];
      uUIDString3 = [safari_windowCreationTabUUIDs UUIDString];
      v70 = [tabGroupManager containerForTabWithUUID:uUIDString3];
      profileIdentifier = [v70 activeProfileIdentifier];

      uUIDString2 = 0;
    }

    [(TabController *)self->_tabController setActiveProfileIdentifier:profileIdentifier];
    goto LABEL_61;
  }

  v26 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    activityType2 = [anyObject activityType];
    *buf = 138543362;
    *&buf[4] = activityType2;
    _os_log_impl(&dword_215819000, v26, OS_LOG_TYPE_DEFAULT, "Handling session connection as generic NSUserActivity of type: %{public}@", buf, 0xCu);
  }

  [(BrowserController *)self scene:v12 continueUserActivity:anyObject];
LABEL_44:

  [(BrowserController *)self _updateSceneTitle];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__BrowserController_scene_willConnectToSession_options___block_invoke_1163;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  if ([BrowserController scene:willConnectToSession:options:]::onceToken != -1)
  {
    dispatch_once(&[BrowserController scene:willConnectToSession:options:]::onceToken, block);
  }

  [(BrowserController *)self _showDefaultBrowserSheetIfNecessary];
  v42 = +[LaunchStateController sharedController];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __56__BrowserController_scene_willConnectToSession_options___block_invoke_1164;
  v91[3] = &unk_2781D61F8;
  v91[4] = self;
  v43 = sessionCopy;
  v92 = v43;
  [v42 doAfterUIBecomesActive:v91];

  cloudKitShareMetadata = [optionsCopy cloudKitShareMetadata];
  if (cloudKitShareMetadata)
  {
    [(BrowserController *)self windowScene:v12 userDidAcceptCloudKitShareWithMetadata:cloudKitShareMetadata];
  }

  mEMORY[0x277D7B588] = [MEMORY[0x277D7B588] sharedProxy];
  [mEMORY[0x277D7B588] addSyncObserver:self];

  [(WBTabGroupManager *)self->_tabGroupManager addTabGroupObserver:self];
}

- (id)_openURLNavigationIntentForSceneConnectionOptions:(uint64_t)options
{
  v3 = a2;
  if (options)
  {
    if (objc_opt_respondsToSelector())
    {
      webClipID = [v3 webClipID];
      if (webClipID)
      {
        v5 = [MEMORY[0x277D75D70] _sf_webClipWithUUID:webClipID];
        if (v5)
        {
          allObjects = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
          v7 = [allObjects navigationIntentWithWebClip:v5];
          goto LABEL_11;
        }
      }
    }

    webClipID = [v3 URLContexts];
    if ([webClipID count])
    {
      v5 = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
      allObjects = [webClipID allObjects];
      v7 = [v5 navigationIntentWithOpenURLContexts:allObjects];
    }

    else
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v5 = [standardUserDefaults stringForKey:@"URLToLoadInPlaceOfStartPage"];

      if (!v5)
      {
        v9 = 0;
        goto LABEL_12;
      }

      allObjects = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
      v7 = [allObjects navigationIntentWithText:v5];
    }

LABEL_11:
    v9 = v7;

LABEL_12:
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (uint64_t)handleOpenURLContextsForReadingListWidget:(void *)widget
{
  v3 = a2;
  v4 = v3;
  if (widget && [v3 count] == 1)
  {
    anyObject = [v4 anyObject];
    v6 = [anyObject URL];

    safari_isReadingListURL = [v6 safari_isReadingListURL];
    if (safari_isReadingListURL)
    {
      safari_readingListItemUUIDString = [v6 safari_readingListItemUUIDString];
      if (safari_readingListItemUUIDString)
      {
        [widget openBookmarkWithUUIDString:safari_readingListItemUUIDString];
      }

      else
      {
        currentBookmarksCollection = [widget currentBookmarksCollection];
        v10 = [currentBookmarksCollection isEqualToString:@"ReadingListCollection"];

        if ((v10 & 1) == 0)
        {
          [(BrowserController *)widget _switchToCollectionOrToggleSidebar:?];
        }
      }
    }
  }

  else
  {
    safari_isReadingListURL = 0;
  }

  return safari_isReadingListURL;
}

id __56__BrowserController_scene_willConnectToSession_options___block_invoke_1162(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) detachTabWithUUID:v3 forMoveToBrowserController:*(a1 + 40)];
  if ([*(a1 + 48) isEqual:v3])
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
  }

  return v4;
}

void __56__BrowserController_scene_willConnectToSession_options___block_invoke_1163(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 328) activeTabDocument];
  if ([v1 isBlank])
  {
    v2 = WBS_LOG_CHANNEL_PREFIXSignposts();
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_215819000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "LaunchToFirstLoad", "beganLoad=NO enableTelemetry=YES ", v3, 2u);
    }
  }

  else
  {
    [v1 setNeedsSendTelemetryForProvisionalLoad];
  }
}

void __56__BrowserController_scene_willConnectToSession_options___block_invoke_1164(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D49F28]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 872);
  *(v3 + 872) = v2;

  [*(*(a1 + 32) + 872) setDelegate:?];
  [*(*(a1 + 32) + 872) startObserving];
  v24 = [*(*(a1 + 32) + 328) activeTabDocument];
  v5 = [*(a1 + 32) unifiedField];
  v6 = [v5 isFirstResponder];
  v7 = *(a1 + 32);
  if (v6)
  {
    v7[569] = 1;
  }

  else
  {
    v8 = [v7 viewControllerToPresentFrom];
    v9 = [v8 presentedViewController];
    *(*(a1 + 32) + 569) = v9 != 0;
  }

  *(*(a1 + 32) + 570) = 1;
  [*(*(a1 + 32) + 328) makeActiveTabDocumentActive];
  *(*(a1 + 32) + 570) = 0;
  *(*(a1 + 32) + 569) = 0;
  [(BrowserController *)*(a1 + 32) setWebViewFromTabDocument:v24];
  *(*(a1 + 32) + 717) = 0;
  v10 = [v24 webExtensionsController];
  [v10 didOpenWindow:*(*(a1 + 32) + 496)];
  v11 = [*(a1 + 32) isPrivateBrowsingAvailable];
  v12 = *(a1 + 32);
  if (v11 && (v12[512] & 1) == 0)
  {
    v13 = +[Application sharedApplication];
    v14 = [v13 defaultWebExtensionsController];
    [v14 didOpenWindow:*(*(a1 + 32) + 504)];

    *(*(a1 + 32) + 512) = 1;
    v12 = *(a1 + 32);
  }

  v15 = [v12 activeWebExtensionWindow];
  [v10 didActivateWindow:v15];

  v16 = [v10 tabIDToTabPositionForTabsInTransit];
  v17 = [v16 count];

  if (v17)
  {
    v18 = MEMORY[0x277D4A8B0];
    v19 = [MEMORY[0x277CBEA60] arrayWithObject:v24];
    v20 = [v18 tabIDToTabPositionDictionaryForTabs:v19];
    [v10 fireAppropriateTabMovementEventForTabState:v20];
  }

  [v10 findExtensions];
  [(BrowserController *)*(a1 + 32) _updateTabGroupBanner];
  [*(a1 + 32) updateCollaborationButton];
  if ([*(a1 + 32) isPrivateBrowsingEnabled])
  {
    [(BrowserController *)*(a1 + 32) _showPrivateBrowsingExplanationSheetIfNecessary];
  }

  v21 = [*(*(a1 + 32) + 264) view];
  v22 = [*(a1 + 40) persistentIdentifier];
  [v21 safari_annotateWithWindowEntityIdentifier:v22];

  v23 = [*(*(a1 + 32) + 264) tabSwitcherViewController];
  [v23 didCompleteLaunch];
}

- (void)activateWebClipWithID:(id)d
{
  v4 = [MEMORY[0x277D75D70] _sf_webClipWithUUID:d];
  if (v4)
  {
    v7 = v4;
    v5 = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
    v6 = [v5 navigationIntentWithWebClip:v7];

    [(BrowserController *)self handleNavigationIntent:v6 completion:0];
    v4 = v7;
  }
}

- (void)_enterYttriumStateTimerFired
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  webClipIDPendingYttriumState = self->_webClipIDPendingYttriumState;
  v8 = activeTabDocument;
  webClipID = [activeTabDocument webClipID];
  LODWORD(webClipIDPendingYttriumState) = [(NSUUID *)webClipIDPendingYttriumState isEqual:webClipID];

  if (!webClipIDPendingYttriumState)
  {
    goto LABEL_5;
  }

  if ([v8 isLoadingComplete] && objc_msgSend(v8, "inWebClipScope"))
  {
    [(BrowserRootViewController *)self->_rootViewController setInYttriumState:1];
LABEL_5:
    v6 = self->_webClipIDPendingYttriumState;
    self->_webClipIDPendingYttriumState = 0;

    [(NSTimer *)self->_enterYttriumStateTimer invalidate];
    enterYttriumStateTimer = self->_enterYttriumStateTimer;
    self->_enterYttriumStateTimer = 0;
  }
}

- (void)webClipCacheDidChange
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument validateWebClip];
}

- (void)windowScene:(id)scene userDidAcceptCloudKitShareWithMetadata:(id)metadata
{
  sceneCopy = scene;
  metadataCopy = metadata;
  [metadataCopy safari_setOriginatingWindowScene:sceneCopy];
  tabGroupManager = [(BrowserController *)self tabGroupManager];
  [tabGroupManager acceptTabGroupShareWithMetadata:metadataCopy handler:self];

  tabController = [(BrowserController *)self tabController];
  share = [metadataCopy share];
  [tabController attemptToSelectTabGroupFromShare:share];
}

- (void)_postUserDidAcceptCloudKitShareActivityNoticeWithMetadata:(uint64_t)metadata
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = a2;
  if (metadata)
  {
    metadataCopy = metadata;
    [*(metadata + 328) allTabGroups];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v3 = v25 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v4)
    {
      v5 = *v25;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v25 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v24 + 1) + 8 * i);
          if ([v7 isShared])
          {
            share = [v23 share];
            recordID = [share recordID];
            recordName = [recordID recordName];
            bookmark = [v7 bookmark];
            serverID = [bookmark serverID];
            v13 = WBSIsEqual();

            if (v13)
            {
              v17 = v3;
              goto LABEL_13;
            }
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v14 = objc_alloc(MEMORY[0x277D28C80]);
    share2 = [v23 share];
    v16 = [share2 objectForKeyedSubscript:*MEMORY[0x277CBC098]];
    v17 = [v14 initWithTitleText:v16];

    v18 = MEMORY[0x277CCACA8];
    v19 = _WBSLocalizedString();
    v20 = [v18 stringWithFormat:v19];
    [v17 setMessageText:v20];

    v21 = [objc_alloc(MEMORY[0x277D28E48]) initWithContentViewController:v17];
    [v21 setDelegate:metadataCopy];
    [(BrowserController *)metadataCopy _presentToastViewControllerQueuingIfNecessary:v21];

LABEL_13:
  }
}

- (void)tabGroupManager:(id)manager didFinishAcceptingTabGroupShareWithMetadata:(id)metadata result:(int64_t)result
{
  managerCopy = manager;
  metadataCopy = metadata;
  switch(result)
  {
    case 3:
      [(BrowserController *)self _presentSharedTabGroupsUnsupportedError];
      break;
    case 2:
      tabGroupManager = [(BrowserController *)self tabGroupManager];
      share = [metadataCopy share];
      v11 = [tabGroupManager tabGroupMatchingShare:share];

      tabController = self->_tabController;
      uuid = [v11 uuid];
      [(TabController *)tabController displayAlreadyAcceptedSharedTabGroupWithUUID:uuid];

      break;
    case 1:
      [(BrowserController *)self _presentSharedTabGroupsPendingAcceptanceError];
      break;
  }
}

- (void)_presentSharedTabGroupsPendingAcceptanceError
{
  if (self)
  {
    v2 = _WBSLocalizedString();
    [(BrowserController *)self _presentSharedTabGroupErrorWithTitle:v2 message:0];
  }
}

- (void)_presentSharedTabGroupsUnsupportedError
{
  if (self)
  {
    v2 = _WBSLocalizedString();
    [(BrowserController *)self _presentSharedTabGroupErrorWithTitle:v2 message:0];
  }
}

- (void)_presentSharedTabGroupErrorWithTitle:(void *)title message:
{
  v11 = a2;
  titleCopy = title;
  if (self)
  {
    v6 = [MEMORY[0x277D75110] alertControllerWithTitle:v11 message:titleCopy preferredStyle:1];
    v7 = MEMORY[0x277D750F8];
    v8 = _WBSLocalizedString();
    v9 = [v7 actionWithTitle:v8 style:1 handler:&__block_literal_global_1175];
    [v6 addAction:v9];

    viewControllerToPresentFrom = [self viewControllerToPresentFrom];
    [viewControllerToPresentFrom presentViewController:v6 animated:1 completion:0];
  }
}

- (void)tabGroupManager:(id)manager selectProfileIdentifierForShareMetadata:(id)metadata completionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  safari_originatingWindowScene = [metadataCopy safari_originatingWindowScene];
  share = [metadataCopy share];
  v11 = [share objectForKeyedSubscript:*MEMORY[0x277CBC098]];

  v12 = MEMORY[0x277D28BA8];
  tabGroupManager = [(BrowserController *)self tabGroupManager];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __95__BrowserController_tabGroupManager_selectProfileIdentifierForShareMetadata_completionHandler___block_invoke;
  v15[3] = &unk_2781D70F8;
  v14 = handlerCopy;
  v16 = v14;
  [v12 presentDialogInScene:safari_originatingWindowScene forSharedTabGroupWithTitle:v11 tabGroupManager:tabGroupManager completionHandler:v15];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  mEMORY[0x277D7B588] = [MEMORY[0x277D7B588] sharedProxy];
  [mEMORY[0x277D7B588] removeSyncObserver:self];

  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained browserController:self didDisconnectFromScene:disconnectCopy];

  [disconnectCopy setDelegate:0];
  screenshotService = [disconnectCopy screenshotService];
  [screenshotService setDelegate:0];

  objc_storeWeak(&self->_scene, 0);
  digitalHealthManager = self->_digitalHealthManager;
  self->_digitalHealthManager = 0;

  v8 = +[Application sharedApplication];
  [v8 updateShouldLockPrivateBrowsingWithTimerIfNecessary];

  v9 = +[Application sharedApplication];
  proxy = [v9 proxy];
  currentScene = [proxy currentScene];
  delegate = [currentScene delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = delegate;
  }

  else
  {
    v13 = 0;
  }

  setPrimaryWindowEntityFromBrowserController(v13);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  [(BrowserController *)self willEnterForeground];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument updateUserActivity];

  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained browserControllerDidEndObfuscating:self];
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  self->_suspendedOrSuspending = 0;
  if (!self->_canPerformPostLaunchActions)
  {
    self->_canPerformPostLaunchActions = 1;
    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserControllerStartPageUpdatePolicyDidChange:self];
    }
  }

  [(BrowserController *)self didBecomeActive];
}

- (void)sceneDidEnterBackground:(id)background
{
  [(BrowserController *)self didEnterBackground];
  if ([(BrowserController *)self isPrivateBrowsingEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    [WeakRetained browserControllerWillBeginObfuscating:self];
  }
}

- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  interfaceOrientation = [WeakRetained interfaceOrientation];

  if (interfaceOrientation != orientation)
  {
    barManager = self->_barManager;

    [(_SFBarManager *)barManager setDownloadsItemNeedsLayout];
  }
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  contextsCopy = contexts;
  selfCopy = self;
  v10 = selfCopy;
  v7 = contextsCopy;
  v11 = v7;
  if (selfCopy->_suspendedOrSuspending)
  {
    v8 = MEMORY[0x277D75D18];
    aBlock = MEMORY[0x277D85DD0];
    v13 = 3321888768;
    v14 = ___ZZ43__BrowserController_scene_openURLContexts__ENK3__2cvU13block_pointerFvvEEv_block_invoke;
    v15 = &__block_descriptor_48_ea8_32c56_ZTSKZ43__BrowserController_scene_openURLContexts__E3__2_e5_v8__0l;
    v16 = selfCopy;
    v17 = v7;
    v9 = _Block_copy(&aBlock);

    [v8 performWithoutAnimation:{v9, v10, v11, aBlock, v13, v14, v15}];
  }

  else
  {
    [BrowserController scene:openURLContexts:]::$_2::operator()(&v10);
  }
}

- (void)scene:openURLContexts:
{
  if (([(BrowserController *)*self handleOpenURLContextsForReadingListWidget:?]& 1) == 0)
  {
    v2 = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
    allObjects = [self[1] allObjects];
    v4 = [v2 navigationIntentWithOpenURLContexts:allObjects];

    if ([v4 type] == 9)
    {
      WeakRetained = objc_loadWeakRetained(*self + 93);
      perSitePreferencesVendor = [WeakRetained perSitePreferencesVendor];
      profilePreferenceManager = [perSitePreferencesVendor profilePreferenceManager];

      v8 = [v4 URL];
      safari_userVisibleHostWithoutWWWSubdomain = [v8 safari_userVisibleHostWithoutWWWSubdomain];
      v10 = [profilePreferenceManager identifierForProfilePreferenceForDomain:safari_userVisibleHostWithoutWWWSubdomain];

      v11 = *self;
      if (v10)
      {
        [v11 setActiveProfileIdentifier:v10];
      }

      else
      {
        tabController = [v11 tabController];
        [tabController updateFocusProfileEnteringForeground];
      }
    }

    v13 = *(*self + 41);
    v14 = [v4 URL];
    v15 = [v13 tabForURL:v14];

    if (v15)
    {
      shouldStayInFocusedTabGroupForExternalLinks = 1;
    }

    else
    {
      shouldStayInFocusedTabGroupForExternalLinks = [*self shouldStayInFocusedTabGroupForExternalLinks];
    }

    if ([v4 type] != 9 || objc_msgSend(v4, "externalURLSourceApplicationIsSpotlight") & 1 | ((shouldStayInFocusedTabGroupForExternalLinks & 1) == 0))
    {
      [*(*self + 41) switchOutOfSyncedTabGroup];
    }

    v17 = +[Application sharedApplication];
    defaultWebExtensionsController = [v17 defaultWebExtensionsController];

    v19 = [v4 URL];
    safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL = [v19 safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL];

    second = [safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL second];
    if ([second length])
    {
      v22 = *(*self + 720);
      [*(*self + 41) setActiveProfileIdentifier:second];
      if (v22 && [*self isInDefaultProfile] && (objc_msgSend(safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL, "first"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(defaultWebExtensionsController, "webExtensionForComposedIdentifier:", v23), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "allowedInPrivateBrowsing"), v24, v23, v25))
      {
        [*(*self + 41) selectPrivateTabGroup];
      }

      else
      {
        v26 = WBS_LOG_CHANNEL_PREFIXTabGroup();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *v29 = 0;
          _os_log_impl(&dword_215819000, v26, OS_LOG_TYPE_DEFAULT, "Will switch to local tab group for navigation intent handling.", v29, 2u);
        }

        [*(*self + 41) selectLocalTabGroup];
      }
    }

    prefersOpenInNewWindow = [v2 prefersOpenInNewWindow];
    v28 = *self;
    if (prefersOpenInNewWindow)
    {
      [v28 dispatchNavigationIntent:v4];
    }

    else
    {
      [v28 handleNavigationIntent:v4 completion:0];
    }
  }
}

- (BOOL)shouldStayInFocusedTabGroupForExternalLinks
{
  v3 = +[Application sharedApplication];
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v5 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D49C48]];

  if ([v3 needsFocusedTabGroupUpdate])
  {
    if (v5)
    {
      [(TabController *)self->_tabController updateFocusedTabGroupEnteringForeground];
    }

    else
    {
      v6 = WBS_LOG_CHANNEL_PREFIXSiriLink();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_DEFAULT, "Overriding Focus to open external links in default tab group", v12, 2u);
      }

      [v3 setNeedsFocusedTabGroupUpdate:0];
    }
  }

  activeTabGroup = [(TabController *)self->_tabController activeTabGroup];
  uuid = [activeTabGroup uuid];
  focusedTabGroupUUIDString = [v3 focusedTabGroupUUIDString];
  v10 = [uuid isEqualToString:focusedTabGroupUUIDString];

  return v5 & v10;
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  selfCopy = self;
  v9 = itemCopy;
  v10 = _Block_copy(handler);
  if (selfCopy->_suspendedOrSuspending)
  {
    v11 = MEMORY[0x277D75D18];
    aBlock = MEMORY[0x277D85DD0];
    v17 = 3321888768;
    v18 = ___ZZ80__BrowserController_windowScene_performActionForShortcutItem_completionHandler__ENK3__3cvU13block_pointerFvvEEv_block_invoke;
    v19 = &__block_descriptor_56_ea8_32c93_ZTSKZ80__BrowserController_windowScene_performActionForShortcutItem_completionHandler__E3__3_e5_v8__0l;
    v20 = selfCopy;
    v21 = v9;
    v22 = _Block_copy(v10);
    v12 = _Block_copy(&aBlock);

    [v11 performWithoutAnimation:{v12, selfCopy, v9, v10, aBlock, v17, v18, v19}];
  }

  else
  {
    shortcutController = selfCopy->_shortcutController;
    type = [v9 type];
    v15 = [(ApplicationShortcutController *)shortcutController handleShortcutItemWithType:type];

    (*(v10 + 2))(v10, v15);
  }
}

- (void)screenshotService:(id)service generatePDFRepresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = WBS_LOG_CHANNEL_PREFIXPrinting();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_DEFAULT, "User took a screenshot, will attempt to generate a PDF representation", buf, 2u);
  }

  tabController = [(BrowserController *)self tabController];
  activeTabDocument = [tabController activeTabDocument];

  if ([activeTabDocument isBlank])
  {
    goto LABEL_9;
  }

  viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
  presentedViewController = [viewControllerToPresentFrom presentedViewController];
  if (presentedViewController)
  {
    goto LABEL_8;
  }

  presentedViewController = [activeTabDocument dialogController];
  presentedDialog = [presentedViewController presentedDialog];
  if (presentedDialog || ([activeTabDocument shouldObscureForDigitalHealth] & 1) != 0)
  {

LABEL_8:
LABEL_9:
    v12 = WBS_LOG_CHANNEL_PREFIXPrinting();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:
      (*(completionCopy + 2))(completionCopy, 0, 0, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24));
      goto LABEL_13;
    }

    *buf = 0;
    v13 = "Not returning a webpage PDF representation because Safari isn't showing a webpage right now";
LABEL_11:
    _os_log_impl(&dword_215819000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    goto LABEL_12;
  }

  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  presentationState = [tabThumbnailCollectionView presentationState];

  if (presentationState)
  {
    goto LABEL_9;
  }

  if ([(BrowserController *)self _isWindowLockedForPrivateBrowsing])
  {
    v12 = WBS_LOG_CHANNEL_PREFIXPrinting();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v13 = "Not returning a webpage PDF representation because Private Browsing is locked";
    goto LABEL_11;
  }

  if (self->_blockRequestingScreenshotPDFData)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXPrinting();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v16, OS_LOG_TYPE_INFO, "There's an existing pending screenshot PDF request; will use the in-progress PDF generation for the original and new requests", buf, 2u);
    }

    v17 = _Block_copy(self->_blockRequestingScreenshotPDFData);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __79__BrowserController_screenshotService_generatePDFRepresentationWithCompletion___block_invoke;
    v25[3] = &unk_2781D7120;
    v26 = v17;
    v27 = completionCopy;
    v18 = v17;
    v19 = _Block_copy(v25);
    blockRequestingScreenshotPDFData = self->_blockRequestingScreenshotPDFData;
    self->_blockRequestingScreenshotPDFData = v19;
  }

  else
  {
    v21 = _Block_copy(completionCopy);
    v22 = self->_blockRequestingScreenshotPDFData;
    self->_blockRequestingScreenshotPDFData = v21;

    if ([activeTabDocument isLoading])
    {
      v23 = WBS_LOG_CHANNEL_PREFIXPrinting();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v23, OS_LOG_TYPE_DEFAULT, "User took a screenshot while the page was loading; will process request when pageload finishes", buf, 2u);
      }
    }

    else
    {
      v24 = WBS_LOG_CHANNEL_PREFIXPrinting();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v24, OS_LOG_TYPE_DEFAULT, "User took a screenshot and the page is done loading; generating a PDF now", buf, 2u);
      }

      [(BrowserController *)self _sendPDFRepresentationForScreenshotWithTabDocument:activeTabDocument];
    }
  }

LABEL_13:
}

void __79__BrowserController_screenshotService_generatePDFRepresentationWithCompletion___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  (*(*(a1 + 32) + 16))(a3, a4, a5, a6);
  (*(*(a1 + 40) + 16))(a3, a4, a5, a6);
}

void __72__BrowserController__sendPDFRepresentationForScreenshotWithTabDocument___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && WeakRetained[5])
  {
    if (v6)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXPrinting();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v6;
        _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Error getting data for existing PDF: %{public}@; calling and clearing completionHandler without a PDF", &v14, 0xCu);
      }

      (*(v8[5] + 16))(*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24));
      v10 = v8[5];
      v8[5] = 0;
    }

    else
    {
      v12 = WBS_LOG_CHANNEL_PREFIXPrinting();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        v15 = [v5 length];
        _os_log_impl(&dword_215819000, v12, OS_LOG_TYPE_DEFAULT, "Webpage was already displaying a PDF, using existing PDF data of length %zu", &v14, 0xCu);
      }

      (*(v8[5] + 16))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
      v13 = v8[5];
      v8[5] = 0;
    }
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXPrinting();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_DEFAULT, "Finished generating PDF but pending request block has been cleared on %{public}@; not calling completionHandler", &v14, 0xCu);
    }
  }
}

void __72__BrowserController__sendPDFRepresentationForScreenshotWithTabDocument___block_invoke_1188(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[5])
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPrinting();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = [v3 length];
      _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_DEFAULT, "Got PDF data from WebKit of length %zu; calling completionHandler", &v9, 0xCu);
    }

    (*(v5[5] + 16))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
    v7 = v5[5];
    v5[5] = 0;
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPrinting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Finished generating PDF but pending request block has been cleared on %{public}@; not calling completionHandler", &v9, 0xCu);
    }
  }
}

- (void)openDownload:(id)download
{
  downloadCopy = download;
  if ([downloadCopy fileType] == 2)
  {
    [(BrowserController *)self _openDownload:downloadCopy];
  }

  else
  {
    tabController = [(BrowserController *)self tabController];
    activeTabDocument = [tabController activeTabDocument];
    [activeTabDocument showDownload:downloadCopy];
  }
}

- (void)_openDownload:(uint64_t)download
{
  v3 = a2;
  v4 = v3;
  if (download)
  {
    completedFileURL = [v3 completedFileURL];
    v6 = [v4 uti];
    if (_SFTypeIsExtractableArchive())
    {
      canReveal = [v4 canReveal];

      if (canReveal)
      {
        mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
        mimeType = [v4 mimeType];
        v10 = [v4 uti];
        [mEMORY[0x277D499B8] didRevealDownloadWithMIMEType:mimeType uti:v10 result:1];

        [v4 reveal];
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
    }

    v11 = [v4 dataOwner] == 2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __35__BrowserController__openDownload___block_invoke;
    aBlock[3] = &unk_2781D71C0;
    v21 = v4;
    v12 = completedFileURL;
    v22 = v12;
    downloadCopy = download;
    v24 = v11;
    v13 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __35__BrowserController__openDownload___block_invoke_4;
    v15[3] = &unk_2781D71E8;
    downloadCopy2 = download;
    v18 = v13;
    v19 = v11;
    v16 = v12;
    v14 = v13;
    [v16 safari_accessingSecurityScopedResource:v15];

    goto LABEL_7;
  }

LABEL_8:
}

void __35__BrowserController__openDownload___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v7 = [MEMORY[0x277D499B8] sharedLogger];
    v3 = [*(a1 + 32) mimeType];
    v4 = [*(a1 + 32) uti];
    [v7 didRevealDownloadWithMIMEType:v3 uti:v4 result:2];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__BrowserController__openDownload___block_invoke_2;
    block[3] = &unk_2781D7198;
    v9 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v10 = v5;
    v11 = v6;
    v12 = *(a1 + 56);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __35__BrowserController__openDownload___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__BrowserController__openDownload___block_invoke_3;
  v5[3] = &unk_2781D7198;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  [v2 safari_accessingSecurityScopedResource:v5];
}

void __35__BrowserController__openDownload___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D499B8] sharedLogger];
  v3 = [*(a1 + 32) mimeType];
  v4 = [*(a1 + 32) uti];
  [v2 didRevealDownloadWithMIMEType:v3 uti:v4 result:3];

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);

  [(BrowserController *)v5 _previewDownloadInQuickLook:v6 url:v7 isContentManaged:v8];
}

- (void)_previewDownloadInQuickLook:(void *)look url:(uint64_t)url isContentManaged:
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  lookCopy = look;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 46);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserController:self overrideDownloadQuickLookPreview:v8 isContentManaged:url];
    }

    else
    {
      objc_storeStrong(self + 25, a2);
      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v11 = getQLPreviewControllerClass(void)::softClass;
      v20 = getQLPreviewControllerClass(void)::softClass;
      if (!getQLPreviewControllerClass(void)::softClass)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = ___ZL27getQLPreviewControllerClassv_block_invoke;
        v16[3] = &unk_2781D60E0;
        v16[4] = &v17;
        ___ZL27getQLPreviewControllerClassv_block_invoke(v16);
        v11 = v18[3];
      }

      v12 = v11;
      _Block_object_dispose(&v17, 8);
      v13 = [v11 alloc];
      v21[0] = lookCopy;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      v15 = [v13 initWithPreviewItems:v14];

      [v15 setDelegate:self];
      [v15 setModalPresentationStyle:0];
      [v15 setIsContentManaged:url];
      [(BrowserController *)self _presentModalViewController:v15];
    }
  }
}

void __35__BrowserController__openDownload___block_invoke_4(uint64_t a1)
{
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [v4 _sf_shouldOpenURLInQuicklook:*(a1 + 32)];

  if (v2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    if (*(a1 + 56) == 1)
    {
      WeakRetained = [MEMORY[0x277CC1E80] defaultWorkspace];
      [WeakRetained _sf_tryOpeningURLInDefaultApp:*(a1 + 32) isContentManaged:1 completionHandler:*(a1 + 48)];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 904));
      [WeakRetained openURL:*(a1 + 32) options:0 completionHandler:*(a1 + 48)];
    }
  }
}

- (void)previewControllerDidDismiss:(id)dismiss
{
  previewedDownload = self->_previewedDownload;
  self->_previewedDownload = 0;
}

- (BOOL)previewController:(id)controller shouldOpenURL:(id)l forPreviewItem:(id)item
{
  lCopy = l;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__BrowserController_previewController_shouldOpenURL_forPreviewItem___block_invoke;
  v9[3] = &unk_2781D61F8;
  v9[4] = self;
  v10 = lCopy;
  v7 = lCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  return 0;
}

void __68__BrowserController_previewController_shouldOpenURL_forPreviewItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewControllerToPresentFrom];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__BrowserController_previewController_shouldOpenURL_forPreviewItem___block_invoke_2;
  v5[3] = &unk_2781D61F8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 dismissViewControllerAnimated:1 completion:v5];
}

void __68__BrowserController_previewController_shouldOpenURL_forPreviewItem___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) safari_originalDataAsString];
  v2 = [MEMORY[0x277D28F40] builder];
  v3 = [*(a1 + 40) tabController];
  v4 = [v3 activeTabDocument];
  [v2 setPrefersOpenInNewTab:{objc_msgSend(v4, "isBlank") ^ 1}];

  [v2 setPreferredTabOrder:1];
  v5 = *(a1 + 40);
  v6 = [v2 navigationIntentWithText:v7];
  [v5 dispatchNavigationIntent:v6];
}

- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadsViewController);
  v6 = [WeakRetained quickLookTransitionViewForDownload:self->_previewedDownload];

  return v6;
}

- (void)saveToFilesOperation:(id)operation didFinishWithSuccess:(BOOL)success
{
  saveToFilesOperation = self->_saveToFilesOperation;
  self->_saveToFilesOperation = 0;
}

- (void)saveToFilesOperation:(id)operation presentViewController:(id)controller
{
  controllerCopy = controller;
  viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
  [viewControllerToPresentFrom presentViewController:controllerCopy animated:1 completion:0];
}

- (void)beginIgnoringUserInteraction:(id)interaction
{
  v15 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    selfCopy = self;
    v13 = 2114;
    v14 = interactionCopy;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Begin ignoring interaction for <BrowserController: %p>: %{public}@", &v11, 0x16u);
  }

  v6 = [(NSMutableSet *)self->_reasonsForIgnoringUserInteraction count];
  reasonsForIgnoringUserInteraction = self->_reasonsForIgnoringUserInteraction;
  if (reasonsForIgnoringUserInteraction)
  {
    [(NSMutableSet *)reasonsForIgnoringUserInteraction addObject:interactionCopy];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB58] setWithObject:interactionCopy];
    v9 = self->_reasonsForIgnoringUserInteraction;
    self->_reasonsForIgnoringUserInteraction = v8;
  }

  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    [WeakRetained browserControllerDidBeginIgnoringUserInteraction:self];
  }
}

- (void)endIgnoringUserInteraction:(id)interaction
{
  v11 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    selfCopy = self;
    v9 = 2114;
    v10 = interactionCopy;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "End ignoring interaction for <BrowserController: %p>: %{public}@", &v7, 0x16u);
  }

  [(NSMutableSet *)self->_reasonsForIgnoringUserInteraction removeObject:interactionCopy];
  if (![(NSMutableSet *)self->_reasonsForIgnoringUserInteraction count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    [WeakRetained browserControllerDidEndIgnoringUserInteraction:self];
  }
}

- (void)editBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v4 = objc_alloc(MEMORY[0x277CDB8C8]);
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v6 = [v4 initWithBookmark:bookmarkCopy inCollection:mainBookmarkCollection];

  [v6 setSyntheticBookmarkProvider:self->_tabController];
  if ([v6 prepareForPresentationForAddingBookmark:0])
  {
    [v6 setBookmarkNavDelegate:self];
    [(BrowserController *)self _presentModalViewController:v6];
  }

  else
  {
    v7 = MEMORY[0x277D28BE0];
    viewControllerToPresentFrom = [(BrowserController *)self viewControllerToPresentFrom];
    [v7 showLockedDatabaseAlertForAction:0 fromViewController:viewControllerToPresentFrom];

    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didPreventBookmarkActionWithBookmarkType:1 actionType:2];
  }
}

- (BOOL)getContextForCurrentPageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  contextController = [activeTabDocument contextController];
  v7 = [activeTabDocument URL];
  if (v7)
  {
    v8 = contextController == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    [contextController cachedResponseForURL:v7 completionHandler:handlerCopy];
  }

  return v9;
}

- (void)presentPrivacyReport
{
  if (([MEMORY[0x277CDB6D0] trackingPreventionEnabled] & 1) != 0 || (v13[0] = MEMORY[0x277D85DD0], v13[1] = 3221225472, v13[2] = __41__BrowserController_presentPrivacyReport__block_invoke, v13[3] = &unk_2781D63F8, v13[4] = self, objc_msgSend(MEMORY[0x277CDB6F0], "onboardingViewControllerWithCompletionHandler:", v13), (activeTabDocument = objc_claimAutoreleasedReturnValue()) == 0))
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    isWindowLockedForPrivate = [(BrowserController *)self _isWindowLockedForPrivateBrowsing];
    if (([activeTabDocument isBlank] & 1) == 0)
    {
      tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
      if ([tabThumbnailCollectionView presentationState] == 1)
      {

LABEL_8:
        goto LABEL_9;
      }

      presentationState = [tabThumbnailCollectionView presentationState];

      if (presentationState == 2)
      {
        goto LABEL_8;
      }

      if ((isWindowLockedForPrivate & 1) == 0)
      {
        webView = [activeTabDocument webView];
        goto LABEL_10;
      }
    }

LABEL_9:
    webView = 0;
LABEL_10:
    v8 = [objc_alloc(MEMORY[0x277CDB6F8]) initWithWebView:webView];
    [v8 setWebsiteDetailShouldSeparateBlockedTrackers:{objc_msgSend(activeTabDocument, "privacyReportShouldSeparateBlockedTrackers")}];
    allProfileIdentifiers = [(WBTabGroupManager *)self->_tabGroupManager allProfileIdentifiers];
    [v8 setProfileIdentifiers:allProfileIdentifiers];

    v10 = +[Application sharedApplication];
    historiesForProfiles = [v10 historiesForProfiles];
    [v8 setHistories:historiesForProfiles];

    v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
    [v12 setModalPresentationStyle:1];
    [(BrowserController *)self _presentModalViewController:v12];

    goto LABEL_11;
  }

  webView = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:activeTabDocument];
  [webView setModalPresentationStyle:2];
  [(BrowserController *)self _presentModalViewController:webView];
LABEL_11:
}

void __41__BrowserController_presentPrivacyReport__block_invoke(uint64_t a1, int a2)
{
  v5 = [*(a1 + 32) viewControllerToPresentFrom];
  [v5 dismissViewControllerAnimated:1 completion:0];

  if (a2)
  {
    v6 = [(BrowserController *)*(a1 + 32) _catalogViewController];
    v4 = [v6 startPageController];
    [v4 updatePrivacyReportIfEnabled];
  }
}

- (void)presentBookmarkPickerWithImportHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__BrowserController_presentBookmarkPickerWithImportHandler___block_invoke;
  v6[3] = &unk_2781D7210;
  objc_copyWeak(&v8, &location);
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(BrowserController *)&self->super.super.super.isa _setPresentingModalBookmarksController:0 exclusively:v6 importHandler:@"BookmarksCollection" withCollection:0 bookmarkUUIDString:1 animated:0 completion:?];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __60__BrowserController_presentBookmarkPickerWithImportHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
    [WeakRetained bookmarksNavigationControllerDidPressDoneButton:0];
  }
}

- (void)presentCloudTabsPickerWithPrimaryDeviceUUID:(id)d
{
  dCopy = d;
  v4 = [CloudTabsViewController alloc];
  cloudTabStore = [(BrowserController *)self cloudTabStore];
  activeProfileIdentifier = [(BrowserController *)self activeProfileIdentifier];
  v7 = [(CloudTabsViewController *)v4 initWithDeviceProvider:cloudTabStore primaryDeviceUUID:dCopy profileIdentifier:activeProfileIdentifier];

  [(CloudTabsViewController *)v7 setDelegate:self];
  [(CloudTabsViewController *)v7 setLinkPreviewProvider:self];
  [(CloudTabsViewController *)v7 setNavigationIntentHandler:self];
  [(CloudTabsViewController *)v7 setTabGroupProvider:self->_tabController];
  v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
  [v8 setModalPresentationStyle:2];
  [(BrowserController *)self _presentModalViewController:v8];
}

- (void)toggleShowWebpageStatusBar
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = *MEMORY[0x277D290A0];
  v8 = safari_browserDefaults;
  v5 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D290A0]];
  v6 = v5;
  [v8 setBool:v5 ^ 1u forKey:v4];
  if ((v6 & 1) == 0)
  {
    [(BrowserRootViewController *)self->_rootViewController updateUsesWebpageStatusBar];
    statusBarView = [(BrowserRootViewController *)self->_rootViewController statusBarView];
    [statusBarView displayStatusBarIsEnabledMessage];
  }
}

- (BOOL)shouldIncreaseTopSpacingForStartPageController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if ([MEMORY[0x277D49A08] isSolariumEnabled] && (objc_msgSend(controllerCopy, "viewController"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "presentingViewController"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7) || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = [WeakRetained browserControllerShouldIncreaseTopPaddingForStartPage:self];
  }

  return v8;
}

- (int64_t)updatePolicyForStartPageController:(id)controller
{
  v4 = +[LaunchStateController sharedController];
  if ([v4 hasCompletedLaunch])
  {
  }

  else
  {
    tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    presentationState = [tabThumbnailCollectionView presentationState];

    if (presentationState)
    {
      return 0;
    }
  }

  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  cachedCatalogViewController = _catalogViewController;
  if (!_catalogViewController)
  {
    cachedCatalogViewController = self->_cachedCatalogViewController;
  }

  v10 = cachedCatalogViewController;

  if ([(BrowserController *)self favoritesAreShowingInPopover]|| [(CatalogViewController *)v10 startPageDidAppearAtLeastOnce])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)catalogPopoverIsShowing
{
  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  popoverIsShowing = [_catalogViewController popoverIsShowing];

  return popoverIsShowing;
}

- (CGRect)webExtensionWindowGeometry
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained browserControllerWindowFrame:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGSize)webExtensionTabSize
{
  tabContentContainerView = [(BrowserController *)&self->super.super.super.isa tabContentContainerView];
  [tabContentContainerView bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)activeWebExtensionWindowIsFocused
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  if ([WeakRetained activationState])
  {
    _isKeyWindowScene = 0;
  }

  else
  {
    _isKeyWindowScene = [WeakRetained _isKeyWindowScene];
  }

  return _isKeyWindowScene;
}

- (NSArray)webExtensionWindows
{
  v7[2] = *MEMORY[0x277D85DE8];
  if ([(BrowserController *)self isPrivateBrowsingAvailable])
  {
    privateExtensionWindow = self->_privateExtensionWindow;
    v7[0] = self->_normalExtensionWindow;
    v7[1] = privateExtensionWindow;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  }

  else
  {
    normalExtensionWindow = self->_normalExtensionWindow;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&normalExtensionWindow count:1];
  }

  return v4;
}

- (NSArray)tabDocumentsForActiveTabThatCanReceiveMessages
{
  array = [MEMORY[0x277CBEB18] array];
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [array safari_addObjectUnlessNil:activeTabDocument];

  [array safari_addObjectUnlessNil:self->_previewDocument];
  [array safari_addObjectUnlessNil:self->_previousContinuousItemDocument];
  [array safari_addObjectUnlessNil:self->_nextContinuousItemDocument];

  return array;
}

- (id)webExtensionWindowWithID:(double)d
{
  p_normalExtensionWindow = &self->_normalExtensionWindow;
  [(WebExtensionWindow *)self->_normalExtensionWindow idForWebExtensions];
  if (v6 == d || [(BrowserController *)self isPrivateBrowsingAvailable]&& (p_normalExtensionWindow = &self->_privateExtensionWindow, [(WebExtensionWindow *)self->_privateExtensionWindow idForWebExtensions], v8 == d))
  {
    v7 = *p_normalExtensionWindow;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)webExtensionWindowForTab:(id)tab
{
  tabCopy = tab;
  if (([tabCopy isPrivateBrowsingEnabled] & 1) == 0)
  {
    v5 = &OBJC_IVAR___BrowserController__normalExtensionWindow;
    goto LABEL_5;
  }

  if ([(BrowserController *)self isPrivateBrowsingAvailable])
  {
    v5 = &OBJC_IVAR___BrowserController__privateExtensionWindow;
LABEL_5:
    v6 = *(&self->super.super.super.isa + *v5);
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)validateExtensionToolbarItemsInWindow:(id)window
{
  windowCopy = window;
  isPrivateWindow = [windowCopy isPrivateWindow];
  if (isPrivateWindow == [(BrowserController *)self isPrivateBrowsingEnabled])
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    [activeTabDocument validateExtensionToolbarItems];

    [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
  }
}

- (void)overlayDidHide:(id)hide
{
  _visibleAppBanner = [(BrowserController *)self _visibleAppBanner];
  [_visibleAppBanner setInitiallyBehindNavigationBar:1];
  [(BrowserController *)self _setShowingAppBanner:_visibleAppBanner isShowing:1];
  [_visibleAppBanner setInitiallyBehindNavigationBar:0];
}

- (void)tabBarManager:(id)manager didCreateTabBar:(id)bar
{
  barCopy = bar;
  [barCopy setNavigationIntentHandler:self];
  if ([(BrowserController *)self tabBarDisplayMode]!= 2)
  {
    v5 = WBSMakeAccessibilityIdentifier();
    [barCopy setAccessibilityIdentifier:v5];
  }

  [(BrowserController *)self _addInteractionsForTabBar:barCopy];
  if ([barCopy isStandalone])
  {
    [barCopy setContentHidden:{-[BrowserRootViewController isShowingTabBar](self->_rootViewController, "isShowingTabBar") ^ 1}];
  }
}

- (void)tabBarManagerDidUpdateDisplayMode:(id)mode
{
  modeCopy = mode;
  [(BrowserRootViewController *)self->_rootViewController updateTabHoverPreview];
  [(BrowserController *)self _updateBookmarksMenuProvider];
  [(BrowserController *)self updateShowingTabBarAnimated:0];
  if ([modeCopy displayMode])
  {
    [(BrowserController *)self updateDynamicBarGeometry];
  }

  else
  {
    [(UIContextMenuInteraction *)self->_unifiedTabBarContextMenuInteraction dismissMenu];
  }

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument validateExtensionToolbarItems];
}

- (BOOL)_isTabBarShown
{
  if (!self)
  {
    return 0;
  }

  unifiedBar = [*(self + 264) unifiedBar];
  v2 = unifiedBar;
  if (unifiedBar && ([unifiedBar isHidden] & 1) == 0)
  {
    window = [v2 window];
    v3 = window != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldReportUnifiedTabBarAnalytics
{
  isTabBar = [(BrowserController *)self _isTabBarShown];
  if (isTabBar)
  {
    LOBYTE(isTabBar) = [(BrowserController *)self tabBarDisplayMode]!= 0;
  }

  return isTabBar;
}

- (unint64_t)numberOfTabsInCurrentTabBar
{
  tabBarManager = [(BrowserController *)self tabBarManager];
  itemArrangement = [tabBarManager itemArrangement];
  items = [itemArrangement items];
  v5 = [items count];

  return v5;
}

- (BOOL)tabBarIsCurrentlyScrollable
{
  tabBarManager = [(BrowserController *)self tabBarManager];
  effectiveTabBar = [tabBarManager effectiveTabBar];

  if (objc_opt_respondsToSelector())
  {
    isCurrentlyScrollable = [effectiveTabBar isCurrentlyScrollable];
  }

  else
  {
    isCurrentlyScrollable = 0;
  }

  return isCurrentlyScrollable;
}

- (BOOL)backgroundColorInTabBarEnabled
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D29000]];

  return v3 ^ 1;
}

- (void)createNewBookmarkWithTitle:(id)title
{
  titleCopy = title;
  v7 = titleCopy;
  if (!titleCopy)
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    titleCopy = [activeTabDocument titleForNewBookmark];
  }

  [(BrowserController *)&self->super.super.super.isa _addBookmarkForCurrentTabKeyPressed:titleCopy title:?];
  v6 = v7;
  if (!v7)
  {

    v6 = 0;
  }
}

- (void)openBookmarkWithUUIDString:(id)string inTabWithUUID:(id)d
{
  stringCopy = string;
  dCopy = d;
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v9 = [mainBookmarkCollection bookmarkWithUUID:stringCopy];
  if (v9)
  {
    if (dCopy)
    {
      v10 = [(TabController *)self->_tabController tabWithUUID:dCopy];
      if (v10)
      {
LABEL_8:
        builder = [MEMORY[0x277D28F40] builder];
        [builder setPreferredTabOrder:1];
        if (v10)
        {
          [(TabController *)self->_tabController setActiveTab:v10 animated:1];
          [(BrowserController *)self dismissTransientUIAnimated:1];
        }

        else
        {
          [builder setPrefersOpenInNewTab:1];
        }

        v14 = [builder navigationIntentWithBookmark:v9];
        [(BrowserController *)self dispatchNavigationIntent:v14];

        goto LABEL_14;
      }

      v11 = WBS_LOG_CHANNEL_PREFIXSiriLink();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [dCopy UUIDString];
        objc_claimAutoreleasedReturnValue();
        [BrowserController openBookmarkWithUUIDString:inTabWithUUID:];
      }
    }

    v10 = 0;
    goto LABEL_8;
  }

  v13 = WBS_LOG_CHANNEL_PREFIXSiriLink();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [BrowserController openBookmarkWithUUIDString:inTabWithUUID:];
  }

LABEL_14:
}

- (void)performSearchUsingQuery:(id)query
{
  queryCopy = query;
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if ([activeTabDocument isBlank])
  {
    [activeTabDocument unhibernate];
  }

  else
  {
    v5 = [[TabDocument alloc] initWithBrowserController:self];
    [(TabDocument *)v5 setIsBlank:1];
    -[TabController insertNewTabDocument:forcingOrderAfterTabDocument:inBackground:animated:](self->_tabController, "insertNewTabDocument:forcingOrderAfterTabDocument:inBackground:animated:", v5, 0, 0, [MEMORY[0x277D75D18] areAnimationsEnabled]);
  }

  if (![(BrowserController *)self isFavoritesFieldFocused])
  {
    if ([(BrowserRootViewController *)self->_rootViewController usingLoweredBar])
    {
      capsuleViewController = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
      [capsuleViewController transitionToState:2 options:0 animated:1 completionHandler:0];
    }

    else
    {
      [(BrowserController *)self _focusNavigationBarWithCompletionHandler:?];
    }
  }

  unifiedField = [(BrowserController *)self unifiedField];
  [unifiedField setPerformingExternalSearch:1];
  _catalogViewController = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [_catalogViewController setQueryString:queryCopy];

  [unifiedField endExternalSearch];
  [unifiedField setPerformingExternalSearch:0];
}

- (void)performTabSearchUsingQuery:(id)query
{
  queryCopy = query;
  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState] == 1)
  {
  }

  else
  {
    presentationState = [tabThumbnailCollectionView presentationState];

    if (presentationState != 2)
    {
      [tabThumbnailCollectionView presentAnimated:0];
    }
  }

  if (SFEnhancedTabOverviewEnabled())
  {
    tabSwitcherViewController = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabSwitcherViewController];
    [tabSwitcherViewController beginSearchingWithSearchString:queryCopy];
  }
}

- (void)findString:(id)string onTabWithUUID:(id)d
{
  stringCopy = string;
  dCopy = d;
  v7 = [(TabController *)self->_tabController tabWithUUID:dCopy];
  if (v7 && [(BrowserController *)self canFindOnTabWithUUID:dCopy])
  {
    [(TabController *)self->_tabController setActiveTab:v7 animated:1];
    [(BrowserController *)self dismissTransientUIAnimated:1];
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    findInteraction = [activeTabDocument findInteraction];
    [findInteraction setSearchText:stringCopy];

    [activeTabDocument showFindOnPage];
  }
}

- (id)activeTabUUIDString
{
  if (self)
  {
    activeTabDocument = [*(self + 328) activeTabDocument];
    uuid = [activeTabDocument uuid];
    uUIDString = [uuid UUIDString];
  }

  else
  {
    uUIDString = 0;
  }

  return uUIDString;
}

- (BOOL)canReadThis
{
  if (([(BrowserController *)self _isWindowLockedForPrivateBrowsing]& 1) != 0)
  {
    return 0;
  }

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  if (([activeTabDocument isReaderAvailable] & 1) == 0)
  {

LABEL_7:
    This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
    if (os_log_type_enabled(This, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_215819000, This, OS_LOG_TYPE_INFO, "Safari Reader is not available for the currently active tab.", v10, 2u);
    }

    return 0;
  }

  activeTabDocument2 = [(TabController *)self->_tabController activeTabDocument];
  mediaSuspensionReasons = [activeTabDocument2 mediaSuspensionReasons];

  if (mediaSuspensionReasons)
  {
    goto LABEL_7;
  }

  v6 = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
  v7 = 1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_INFO, "Safari Reader is available for the currently active tab.", buf, 2u);
  }

  return v7;
}

- (BOOL)canReadActiveLanguage
{
  v29[3] = *MEMORY[0x277D85DE8];
  activeDocument = [(BrowserController *)self activeDocument];
  translationContext = [activeDocument translationContext];
  lastDeterminedWebpageLanguage = [translationContext lastDeterminedWebpageLanguage];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v5 = getAFPreferencesClass(void)::softClass;
  v26 = getAFPreferencesClass(void)::softClass;
  if (!getAFPreferencesClass(void)::softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL21getAFPreferencesClassv_block_invoke;
    v28 = &unk_2781D60E0;
    v29[0] = &v23;
    ___ZL21getAFPreferencesClassv_block_invoke(buf);
    v5 = v24[3];
  }

  v6 = v5;
  _Block_object_dispose(&v23, 8);
  sharedPreferences = [objc_opt_class() sharedPreferences];
  outputVoice = [sharedPreferences outputVoice];

  v9 = MEMORY[0x277CBEAF8];
  languageCode = [outputVoice languageCode];
  v11 = [v9 localeWithLocaleIdentifier:languageCode];

  languageCode2 = [v11 languageCode];
  v13 = [languageCode2 isEqualToString:lastDeterminedWebpageLanguage];

  if (v13)
  {
    v14 = 1;
  }

  else if (outputVoice)
  {
    v14 = 0;
  }

  else
  {
    mEMORY[0x277D28D50] = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    downloadedSiriVoiceLanguages = [mEMORY[0x277D28D50] downloadedSiriVoiceLanguages];
    v14 = [downloadedSiriVoiceLanguages containsObject:lastDeterminedWebpageLanguage];
  }

  This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
  if (os_log_type_enabled(This, OS_LOG_TYPE_INFO))
  {
    if (v13)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = v18;
    if (v14)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = v20;
    *buf = 138544130;
    *&buf[4] = outputVoice;
    *&buf[12] = 2114;
    *&buf[14] = lastDeterminedWebpageLanguage;
    *&buf[22] = 2114;
    v28 = v19;
    LOWORD(v29[0]) = 2114;
    *(v29 + 2) = v21;
    _os_log_impl(&dword_215819000, This, OS_LOG_TYPE_INFO, "Completed analysis: voice = %{public}@; determinedLanguage: %{public}@; voiceLanguageMatchesTextLanguage = %{public}@; canRead = %{public}@", buf, 0x2Au);
  }

  return v14;
}

- (void)siriReadThisVocalInvocation
{
  mEMORY[0x277D28D48] = [MEMORY[0x277D28D48] sharedPlaybackController];
  [mEMORY[0x277D28D48] setupNowPlayingListenerIfNeeded];

  if (-[NSString length](self->_extractedArticleText, "length") && ([MEMORY[0x277D28D50] sharedVoiceUtilities], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "activeSiriReaderSessionURL"), v5 = objc_claimAutoreleasedReturnValue(), -[TabController activeTabDocument](self->_tabController, "activeTabDocument"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "readerContext"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "readerURL"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v5, "safari_isEqualToURL:", v8), v8, v7, v6, v5, v4, v9))
  {

    [(BrowserController *)&self->super.super.super.isa _siriReadThisVocalInvocation];
  }

  else
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    readerWebView = [activeTabDocument readerWebView];

    if (readerWebView)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__BrowserController_siriReadThisVocalInvocation__block_invoke;
      v14[3] = &unk_2781D60B8;
      v14[4] = self;
      [(BrowserController *)self _extractTextFromReaderWebViewOfTab:activeTabDocument withCompletion:v14];
    }

    else
    {
      [activeTabDocument createBrowserReaderViewIfNeeded];
      activeTabUUIDString = [(BrowserController *)self activeTabUUIDString];
      tabUUIDStringForSiriReadThisVocalInvocation = self->_tabUUIDStringForSiriReadThisVocalInvocation;
      self->_tabUUIDStringForSiriReadThisVocalInvocation = activeTabUUIDString;
    }
  }
}

void __49__BrowserController__siriReadThisVocalInvocation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v5 = [v3 image];
    v6 = [v5 platformImage];
    v7 = *(*(a1 + 72) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = WeakRetained[101];
    v12 = *(a1 + 48);
    v13 = [v10 safari_bestLanguageTag];
    [v9 readText:v10 textBody:v11 textIdentifier:v12 textLocale:v13 textLeadingImage:*(*(*(a1 + 72) + 8) + 40) activationSource:1];

    v14 = [*(a1 + 56) readerURL];
    v15 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    [v15 setActiveSiriReaderSessionURL:v14];

    v16 = *(a1 + 48);
    v17 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    [v17 setActiveSiriReaderSessionIdentifier:v16];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__BrowserController__siriReadThisVocalInvocation__block_invoke_2;
    block[3] = &unk_2781D60B8;
    v22 = *(a1 + 64);
    dispatch_async(MEMORY[0x277D85CD0], block);
    This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
    if (os_log_type_enabled(This, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_215819000, This, OS_LOG_TYPE_DEFAULT, "Safari requested starting playback", v20, 2u);
    }

    v19 = [MEMORY[0x277D28D48] sharedPlaybackController];
    [v19 setCurrentPlaybackState:1];
  }
}

void __49__BrowserController__siriReadThisVocalInvocation__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationBarItem];
  [v1 setShowsSiriReaderPlayingIcon:1];
}

- (void)siriReadThisMenuInvocation
{
  mEMORY[0x277D28D48] = [MEMORY[0x277D28D48] sharedPlaybackController];
  [mEMORY[0x277D28D48] setupNowPlayingListenerIfNeeded];

  if (-[NSString length](self->_extractedArticleText, "length") && ([MEMORY[0x277D28D50] sharedVoiceUtilities], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "activeSiriReaderSessionURL"), v5 = objc_claimAutoreleasedReturnValue(), -[TabController activeTabDocument](self->_tabController, "activeTabDocument"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "readerContext"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "readerURL"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v5, "safari_isEqualToURL:", v8), v8, v7, v6, v5, v4, v9))
  {

    [(BrowserController *)&self->super.super.super.isa _siriReadThisMenuInvocation];
  }

  else
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    readerWebView = [activeTabDocument readerWebView];

    if (readerWebView)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __47__BrowserController_siriReadThisMenuInvocation__block_invoke;
      v14[3] = &unk_2781D60B8;
      v14[4] = self;
      [(BrowserController *)self _extractTextFromReaderWebViewOfTab:activeTabDocument withCompletion:v14];
    }

    else
    {
      [activeTabDocument createBrowserReaderViewIfNeeded];
      activeTabUUIDString = [(BrowserController *)self activeTabUUIDString];
      tabUUIDStringForSiriReadThisMenuInvocation = self->_tabUUIDStringForSiriReadThisMenuInvocation;
      self->_tabUUIDStringForSiriReadThisMenuInvocation = activeTabUUIDString;
    }
  }
}

void __48__BrowserController__siriReadThisMenuInvocation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v5 = [v3 image];
    v6 = [v5 platformImage];
    v7 = *(*(a1 + 72) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = WeakRetained[101];
    v12 = *(a1 + 48);
    v13 = [v10 safari_bestLanguageTag];
    [v9 readText:v10 textBody:v11 textIdentifier:v12 textLocale:v13 textLeadingImage:*(*(*(a1 + 72) + 8) + 40) activationSource:2];

    v14 = [*(a1 + 56) readerURL];
    v15 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    [v15 setActiveSiriReaderSessionURL:v14];

    v16 = *(a1 + 48);
    v17 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    [v17 setActiveSiriReaderSessionIdentifier:v16];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__BrowserController__siriReadThisMenuInvocation__block_invoke_2;
    block[3] = &unk_2781D60B8;
    v22 = *(a1 + 64);
    dispatch_async(MEMORY[0x277D85CD0], block);
    This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
    if (os_log_type_enabled(This, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_215819000, This, OS_LOG_TYPE_DEFAULT, "Safari requested starting playback", v20, 2u);
    }

    v19 = [MEMORY[0x277D28D48] sharedPlaybackController];
    [v19 setCurrentPlaybackState:1];
  }
}

void __48__BrowserController__siriReadThisMenuInvocation__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationBarItem];
  [v1 setShowsSiriReaderPlayingIcon:1];
}

- (void)createNewTabWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(TabController *)self->_tabController switchToTabGroupVisibleInSwitcherIfNeeded];
  tabController = self->_tabController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__BrowserController_createNewTabWithCompletionHandler___block_invoke;
  v7[3] = &unk_2781D7260;
  v6 = handlerCopy;
  v7[4] = self;
  v8 = v6;
  [(TabController *)tabController openNewTabWithOptions:1 completionHandler:v7];
}

void __55__BrowserController_createNewTabWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v5 = [*(*(a1 + 32) + 328) activeTabDocument];
    v4 = [v5 uuid];
  }

  else
  {
    v4 = 0;
  }

  (*(v3 + 16))(v3, v4);
  if (a2)
  {
  }
}

- (void)createNewTabWithURL:(id)l isPrivate:(BOOL)private completionHandler:(id)handler
{
  privateCopy = private;
  lCopy = l;
  handlerCopy = handler;
  [(TabController *)self->_tabController switchToTabGroupVisibleInSwitcherIfNeeded];
  tabController = self->_tabController;
  if (privateCopy)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__BrowserController_createNewTabWithURL_isPrivate_completionHandler___block_invoke;
  v14[3] = &unk_2781D7288;
  v12 = handlerCopy;
  v16 = v12;
  v14[4] = self;
  v13 = lCopy;
  v15 = v13;
  [(TabController *)tabController openNewTabWithOptions:v11 completionHandler:v14];
}

void __69__BrowserController_createNewTabWithURL_isPrivate_completionHandler___block_invoke(void *a1, char a2)
{
  if (a2)
  {
    v7 = [*(a1[4] + 328) activeTabDocument];
    v3 = [v7 loadURL:a1[5] userDriven:0];
    v4 = a1[6];
    v5 = [v7 uuid];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v6 = *(a1[6] + 16);

    v6();
  }
}

- (void)openTabWithUUID:(id)d
{
  v4 = [(TabController *)self->_tabController tabWithUUID:d];
  if (v4)
  {
    [(TabController *)self->_tabController setActiveTab:v4 animated:1];
    tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    [tabThumbnailCollectionView dismissAnimated:1];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BrowserController openTabWithUUID:];
    }
  }
}

- (void)closeTabWithUUID:(id)d
{
  v6[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6[0] = dCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(BrowserController *)self closeTabsWithUUIDs:v5];
}

- (void)closeTabsWithUUIDs:(id)ds
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__BrowserController_closeTabsWithUUIDs___block_invoke;
  v5[3] = &unk_2781D6A48;
  v5[4] = self;
  v4 = [ds safari_mapAndFilterObjectsUsingBlock:v5];
  if ([v4 count])
  {
    [(TabController *)self->_tabController closeTabs:v4];
  }
}

id __40__BrowserController_closeTabsWithUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 328) tabWithUUID:v3];
  if (!v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXSiriLink();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __40__BrowserController_closeTabsWithUUIDs___block_invoke_cold_1();
    }
  }

  return v4;
}

- (id)createNewTabGroupWithTitle:(id)title
{
  v4 = [(TabController *)self->_tabController addNewTabGroupWithTitle:title fromExistingTabs:0];
  [(BrowserController *)self scrollSidebarToTopAnimated:1];
  uuid = [v4 uuid];

  return uuid;
}

- (void)openTabGroupOfKind:(int64_t)kind uuidString:(id)string
{
  stringCopy = string;
  v9 = stringCopy;
  if ((kind - 2) < 2)
  {
    v7 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:stringCopy];
    profileIdentifier = [v7 profileIdentifier];
    [(TabController *)self->_tabController setActiveProfileIdentifier:profileIdentifier];

    [(TabController *)self->_tabController setActiveTabGroupUUID:v9];
  }

  else if (kind == 1)
  {
    [(TabController *)self->_tabController selectPrivateTabGroup];
  }

  else if (!kind)
  {
    [(TabController *)self->_tabController selectLocalTabGroup];
  }
}

- (void)setView:(unint64_t)view visible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(BrowserController *)self isViewVisible:?]!= visible && [(BrowserController *)self canToggleVisibilityForView:view])
  {
    if (visibleCopy)
    {
      [(BrowserController *)self dismissTransientUIAnimated:1];
    }

    if (view > 2)
    {
      switch(view)
      {
        case 3uLL:

          [(BrowserController *)self _toggleVisibilityOfStartPageCollection:?];
          break;
        case 4uLL:

          [(BrowserController *)self toggleBookmarksPresentation];
          break;
        case 6uLL:

          [(BrowserController *)self toggleTabView];
          break;
      }
    }

    else
    {
      if (view)
      {
        if (view == 1)
        {
          v7 = kCollectionTypeHistory;
        }

        else
        {
          if (view != 2)
          {
            return;
          }

          v7 = kCollectionTypeReadingList;
        }
      }

      else
      {
        v7 = kCollectionTypeBookmarks;
      }

      v8 = *v7;

      [(BrowserController *)&self->super.super.super.isa _switchToCollectionOrToggleSidebar:v8];
    }
  }
}

- (void)openStartPage
{
  currentTabs = [(TabController *)self->_tabController currentTabs];
  lastObject = [currentTabs lastObject];

  if (![lastObject isBlank])
  {
    [(BrowserController *)self openNewTab:0];
    goto LABEL_8;
  }

  [(TabController *)self->_tabController setActiveTab:lastObject];
  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState] == 1)
  {

LABEL_6:
    [tabThumbnailCollectionView dismissAnimated:1];
    goto LABEL_7;
  }

  presentationState = [tabThumbnailCollectionView presentationState];

  if (presentationState == 2)
  {
    goto LABEL_6;
  }

LABEL_7:

LABEL_8:
}

- (void)closeStartPage
{
  if ([(BrowserController *)self activeTabIsBlank]&& [(TabController *)self->_tabController canCloseTab])
  {

    [(BrowserController *)self closeActiveTab:0];
  }
}

- (void)navigateContinuousReadingListToDirection:(unint64_t)direction
{
  if ([(BrowserController *)self canNavigateContinuousReadingListInDirection:?])
  {
    if (direction == 1)
    {
      continuousReadingViewController = self->_continuousReadingViewController;

      [(ContinuousReadingViewController *)continuousReadingViewController loadNextItem];
    }

    else if (!direction)
    {
      v5 = self->_continuousReadingViewController;

      [(ContinuousReadingViewController *)v5 loadPreviousItem];
    }
  }
}

- (void)openClearHistoryViewControllerFor:(id)for
{
  forCopy = for;
  v4 = objc_alloc_init(SafariClearBrowsingDataController);
  objc_storeStrong(&self->_clearBrowsingDataController, v4);
  [(BrowserController *)&self->super.super.super.isa _switchToCollectionOrToggleSidebar:?];
  rootViewController = [(BrowserController *)self rootViewController];
  [(SafariClearBrowsingDataController *)v4 showClearHistoryMenuFromViewController:rootViewController profileIdentifier:forCopy];
}

- (BOOL)isReaderAvailable
{
  if (![(BrowserController *)&self->super.super.super.isa _isReaderModeFormatMenuItemAvailable])
  {
    return 0;
  }

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  isReaderAvailable = [activeTabDocument isReaderAvailable];

  return isReaderAvailable;
}

- (BOOL)canFindOnTabWithUUID:(id)d
{
  v4 = [(TabController *)self->_tabController tabWithUUID:d];
  if (-[BrowserController _isWindowLockedForPrivateBrowsing](self) && ([v4 isPrivateBrowsingEnabled] & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 url];
    v5 = v6 != 0;
  }

  return v5;
}

- (BOOL)areCustomTabGroupsEnabled
{
  v2 = +[FeatureManager sharedFeatureManager];
  isCustomTabGroupsEnabled = [v2 isCustomTabGroupsEnabled];

  return isCustomTabGroupsEnabled;
}

- (BOOL)canToggleVisibilityForView:(unint64_t)view
{
  v5 = +[FeatureManager sharedFeatureManager];
  canShowSidebar = [(BrowserController *)self canShowSidebar];
  privateBrowsingAvailable = 1;
  if (view <= 3)
  {
    if (view)
    {
      if (view != 2)
      {
        privateBrowsingAvailable = view != 3 || canShowSidebar;
        goto LABEL_18;
      }

      isReadingListAvailable = [v5 isReadingListAvailable];
    }

    else
    {
      isReadingListAvailable = [v5 isBookmarksAvailable];
    }

    privateBrowsingAvailable = isReadingListAvailable;
    goto LABEL_18;
  }

  if (view > 5)
  {
    if (view == 6)
    {
      activeLibraryType = [(BrowserController *)self activeLibraryType];
      privateBrowsingAvailable = activeLibraryType == 0;
    }

    else if (view == 8)
    {
      privateBrowsingAvailable = self->_privateBrowsingAvailable;
    }
  }

  else if (view == 4)
  {
    privateBrowsingAvailable = canShowSidebar;
  }

  else
  {
    privateBrowsingAvailable = view != 5;
  }

LABEL_18:

  return privateBrowsingAvailable;
}

- (BOOL)activeTabIsBlank
{
  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState])
  {
    isBlank = 0;
  }

  else
  {
    activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
    isBlank = [activeTabDocument isBlank];
  }

  return isBlank;
}

- (BOOL)isShowingContinuousReadingList
{
  tabThumbnailCollectionView = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState] == 1)
  {
  }

  else
  {
    presentationState = [tabThumbnailCollectionView presentationState];

    if (presentationState != 2)
    {
      _isInContinuousMode = [(BrowserController *)self _isInContinuousMode];
      goto LABEL_6;
    }
  }

  _isInContinuousMode = 0;
LABEL_6:

  return _isInContinuousMode;
}

- (BOOL)canNavigateContinuousReadingListInDirection:(unint64_t)direction
{
  continuousReadingController = [(BrowserController *)self continuousReadingController];
  v5 = continuousReadingController;
  if (direction)
  {
    [continuousReadingController nextReadingListItem];
  }

  else
  {
    [continuousReadingController previousReadingListItem];
  }
  v6 = ;

  return v6 != 0;
}

- (void)prepareIntentInteractionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[LaunchStateController sharedController];
  hasCompletedLaunch = [v4 hasCompletedLaunch];

  if (hasCompletedLaunch)
  {
    handlerCopy[2]();
  }

  else
  {
    [(BrowserRootViewController *)self->_rootViewController setIntentInteractionCompletion:handlerCopy];
  }
}

- (void)playbackStateDidChangeForSiriReaderPlaybackController:(id)controller
{
  mEMORY[0x277D28D48] = [MEMORY[0x277D28D48] sharedPlaybackController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__BrowserController_playbackStateDidChangeForSiriReaderPlaybackController___block_invoke;
  v5[3] = &unk_2781D72B0;
  v5[4] = self;
  [mEMORY[0x277D28D48] updateContentIdentifierOnQueue:MEMORY[0x277D85CD0] completion:v5];
}

void __75__BrowserController_playbackStateDidChangeForSiriReaderPlaybackController___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x277D28D48] sharedPlaybackController];
  [v3 setNowPlayingContentIdentifier:v5];

  v4 = [*(*(a1 + 32) + 328) activeTabDocument];
  [v4 updateShowsSiriReaderPlayingIcon];

  [*(*(a1 + 32) + 168) updateShouldShowListeningControls:v5 != 0];
}

- (void)playbackContentIdentifierDidChangeForSiriReaderPlaybackController:(id)controller
{
  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument updateShowsSiriReaderPlayingIcon];
}

- (void)profileWindow:(id)window selectProfile:(id)profile
{
  profileCopy = profile;
  identifier = [profileCopy identifier];
  [(TabController *)self->_tabController setActiveProfileIdentifier:identifier];

  bookmarksBar = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
  [bookmarksBar setNeedsReloadData];
}

- (void)profileWindow:(id)window selectTabGroup:(id)group
{
  uuid = [group uuid];
  [(TabController *)self->_tabController setActiveTabGroupUUID:?];
}

- (UniversalSearchSession)universalSearchSession
{
  universalSearchSession = self->_universalSearchSession;
  if (!universalSearchSession)
  {
    v4 = [UniversalSearchSession alloc];
    v5 = +[(WBSParsecDSession *)UniversalSearchSession];
    v6 = [(WBSParsecDSession *)v4 initWithParsecdSession:v5 skipAutoFillDataUpdates:0];
    v7 = self->_universalSearchSession;
    self->_universalSearchSession = v6;

    universalSearchSession = self->_universalSearchSession;
  }

  return universalSearchSession;
}

- (void)_debugAutoFillConsoleLoggingEnabledPreferenceDidChange:(id)change
{
  changeCopy = change;
  if (([MEMORY[0x277D49A08] isInternalInstall] & 1) == 0)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_2827BF158];
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Safari/iOS/MobileSafari/BrowserController.mm"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = [v8 length];
    if (v12)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@", %@", v8];
    }

    else
    {
      v13 = &stru_2827BF158;
    }

    v14 = [v9 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "WBSFeatureAvailability.isInternalInstall", "-[BrowserController _debugAutoFillConsoleLoggingEnabledPreferenceDidChange:]", lastPathComponent, 16751, v13];
    if (v12)
    {
    }

    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    NSLog(@"%@\n%@", v14, callStackSymbols);

    abort();
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = *MEMORY[0x277D4A180];
  v5 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D4A180]];

  v6 = +[Application sharedApplication];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v6 setObject:v7 forInjectedBundleParameter:v4];
}

- (_SFActivityViewController)presentedActivityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedActivityViewController);

  return WeakRetained;
}

- (uint64_t)_shouldShowBookmarksBarForViewSize:(uint64_t)size
{
  if (!size || !_SFDeviceIsPad() || a2 <= *MEMORY[0x277D29130])
  {
    return 0;
  }

  return [(BrowserController *)size _prefersShowingBookmarksBar];
}

- (BOOL)_isScrolledToThresholdForContinuousPrefetching
{
  if (result)
  {
    [*(result + 288) bounds];
    MaxY = CGRectGetMaxY(v5);
    [OUTLINED_FUNCTION_6_0() contentSize];
    v3 = v2;
    [OUTLINED_FUNCTION_6_0() contentInset];
    return MaxY / (v3 + v4) >= 0.75;
  }

  return result;
}

- (void)didCompleteScrolling
{
  self->_obscuredInsetsIncludeRefreshControlDuringBounce = 0;
  if ([(BrowserController *)self _isInContinuousMode]&& [(BrowserController *)self _isScrolledToThresholdForContinuousPrefetching])
  {
    [(BrowserController *)&self->super.super.super.isa prefetchNextContinuousItemIfNeeded];
  }

  [(ContinuousReadingViewController *)self->_continuousReadingViewController setSuppressingAutoScroll:1];
  currentBarAnimator = [(BrowserRootViewController *)self->_rootViewController currentBarAnimator];
  [currentBarAnimator endScrolling];

  activeTabDocument = [(TabController *)self->_tabController activeTabDocument];
  [activeTabDocument webViewDidScroll];
}

- (id)_titleForToggleFavoritesBarKeyCommand
{
  if (self)
  {
    [(BrowserController *)self _prefersShowingBookmarksBar];
    self = _WBSLocalizedString();
    v1 = vars8;
  }

  return self;
}

- (uint64_t)_shouldShowCollectionInSidebar
{
  selfCopy = self;
  if (self)
  {
    if (_SFDeviceIsPad())
    {
      capsuleViewController = [*(selfCopy + 264) capsuleViewController];
      selfCopy = capsuleViewController == 0;
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (NSString)currentBookmarksCollection
{
  shouldShowCollectionIn = [(BrowserController *)self _shouldShowCollectionInSidebar];
  v4 = &OBJC_IVAR___BrowserController__modalBookmarksController;
  if (shouldShowCollectionIn)
  {
    v4 = &OBJC_IVAR___BrowserController__libraryController;
  }

  currentCollection = [*(&self->super.super.super.isa + *v4) currentCollection];

  return currentCollection;
}

- (id)_titleForToggleBookmarksKeyCommand
{
  if (self)
  {
    [(BrowserController *)self _isShowingCollectionInSidebar:?];
    self = _WBSLocalizedString();
    v1 = vars8;
  }

  return self;
}

- (id)_titleForToggleReadingListKeyCommand
{
  if (self)
  {
    [(BrowserController *)self _isShowingCollectionInSidebar:?];
    self = _WBSLocalizedString();
    v1 = vars8;
  }

  return self;
}

- (id)_titleForToggleHistoryKeyCommand
{
  if (self)
  {
    [(BrowserController *)self _isShowingCollectionInSidebar:?];
    self = _WBSLocalizedString();
    v1 = vars8;
  }

  return self;
}

- (id)_titleForToggleSharedWithYouKeyCommand
{
  if (self)
  {
    [(BrowserController *)self _isShowingCollectionInSidebar:?];
    self = _WBSLocalizedString();
    v1 = vars8;
  }

  return self;
}

- (id)_titleForToggleCloudTabsKeyCommand
{
  if (self)
  {
    [(BrowserController *)self _isShowingCollectionInSidebar:?];
    self = _WBSLocalizedString();
    v1 = vars8;
  }

  return self;
}

- (id)_findCommandTitle
{
  if (self)
  {
    [(BrowserController *)self _showingTabDocumentWithURL];
    self = _WBSLocalizedString();
    v1 = vars8;
  }

  return self;
}

- (void)_presentActivityViewController
{
  if (self)
  {
    [(BrowserController *)self _prepareToPresentActivityViewController];
    *(self + 113) = 1;

    [(BrowserController *)self _presentActionPanelIfReady];
  }
}

- (void)_mailContentProvider
{
  if (self)
  {
    selfCopy = self;
    v3 = self[7];
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277CDB810]);
      v5 = selfCopy[7];
      selfCopy[7] = v4;

      [selfCopy[7] setDataSource:selfCopy];
      v3 = selfCopy[7];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)_cancelPendingAutoFillInternalFeedbackToastDismissal
{
  if (self)
  {
    [*(self + 640) invalidate];
    v2 = *(self + 640);
    *(self + 640) = 0;
  }
}

- (void)_invalidatePreviewDocumentCloseTimer
{
  if (self)
  {
    [*(self + 192) invalidate];
    v2 = *(self + 192);
    *(self + 192) = 0;
  }
}

- (id)_tabDocumentForNextContinuousItem
{
  if (self)
  {
    selfCopy = self;
    [(BrowserController *)self _prepareTabDocumentForNextContinuousItemIfNeeded];
    self = selfCopy[20];
    v1 = vars8;
  }

  return self;
}

- (BOOL)isViewVisible:(unint64_t)visible
{
  if ([(BrowserController *)self _shouldShowCollectionInSidebar])
  {
    isShowingSidebar = [(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar];
    if (visible <= 2 && !isShowingSidebar)
    {
      return 0;
    }
  }

  v6 = 0;
  switch(visible)
  {
    case 0uLL:
      currentBookmarksCollection = [(BrowserController *)self currentBookmarksCollection];
      isLocal = [currentBookmarksCollection isEqualToString:@"BookmarksCollection"];
      goto LABEL_15;
    case 1uLL:
      currentBookmarksCollection = [(BrowserController *)self currentBookmarksCollection];
      isLocal = [currentBookmarksCollection isEqualToString:@"HistoryCollection"];
      goto LABEL_15;
    case 2uLL:
      currentBookmarksCollection = [(BrowserController *)self currentBookmarksCollection];
      isLocal = [currentBookmarksCollection isEqualToString:@"ReadingListCollection"];
      goto LABEL_15;
    case 3uLL:
      currentBookmarksCollection = [(LibraryController *)self->_libraryController currentCollection];
      isLocal = [currentBookmarksCollection isEqualToString:@"SharedWithYouCollection"];
      goto LABEL_15;
    case 4uLL:
      sidebarUIProxy = self->_sidebarUIProxy;

      return [(SidebarUIProxy *)sidebarUIProxy isShowingSidebar];
    case 6uLL:
      tabCollectionViewProvider = self->_tabCollectionViewProvider;

      return [(TabCollectionViewProviding *)tabCollectionViewProvider isShowingTabView];
    case 7uLL:
      currentBookmarksCollection = [(TabController *)self->_tabController activeTabGroup];
      isLocal = [currentBookmarksCollection isLocal];
      goto LABEL_15;
    case 8uLL:
      currentBookmarksCollection = [(TabController *)self->_tabController activeTabGroup];
      isLocal = [currentBookmarksCollection isPrivateBrowsing];
LABEL_15:
      v6 = isLocal;

      break;
    default:
      return v6;
  }

  return v6;
}

void __39__BrowserController_didEnterBackground__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __48__BrowserController__setShowingTabBar_animated___block_invoke_cold_1(void *a1)
{
  OUTLINED_FUNCTION_8(a1);
  [(BrowserController *)*v2 _contentContainerViewFrameDidChange];
  [(BrowserController *)*v2 _updateCurrentPageBannerViewIfNeeded];
  [v1[5] layoutBelowIfNeeded];
  [v1[6] layoutSubviews];
  [v1[7] setNeedsLayout];
  v3 = v1[7];

  return [v3 layoutBelowIfNeeded];
}

- (void)rootViewControllerViewDidTransitionFromSize:(uint64_t)a1 animated:.cold.1(uint64_t a1)
{
  if (*(a1 + 448) == 1)
  {
    [(BrowserController *)a1 updateViewsAfterStatusBarChange];
    *(a1 + 448) = 0;
  }
}

- (void)cloudSharingController:failedToSaveShareWithError:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Failed to save shared tab group: %@", v5);
}

- (void)catalogViewController:(uint64_t)a3 presentViewControllerWithinPopover:(void *)a4 completionHandler:.cold.1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_1_0(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v6, v7, "Trying to present catalog popover when we already have a view controller being presented: %{public}@", v8);
}

- (void)catalogViewController:presentViewControllerWithinPopover:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Trying to present catalog popover when it is already presented by: %{public}@", v5);
}

- (void)catalogViewController:(void *)a1 presentViewControllerInPlatter:(uint64_t)a2 animated:(uint64_t)a3 completionHandler:(void *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_1_0(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v6, v7, "Trying to present catalog popover in place when we already have a view controller being presented: %{public}@", v8);
}

- (void)catalogViewController:presentViewControllerInPlatter:animated:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Trying to present catalog popover in place when it is already presented by: %{public}@", v5);
}

uint64_t __51__BrowserController__updateButtonsAnimatingTabBar___block_invoke_cold_1(void *a1)
{
  OUTLINED_FUNCTION_8(a1);
  result = [*(*v2 + 848) setContentMode:-[BrowserController _currentBarContentMode](*v2)];
  v4 = *v2;
  if (v4)
  {
    result = [v4 favoritesFieldShouldBeExpanded];
    if (result)
    {
      v5 = 2;
    }

    else
    {
      result = [v4 isShowingStartPage];
      v5 = result;
    }
  }

  else
  {
    v5 = 0;
  }

  *v1 = v5;
  return result;
}

void __65__BrowserController_checkSummarizationStateToShowSummarizeButton__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)snapshotTabDocument:size:options:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_presentModalViewController:fromPopoverSource:useAdaptivePresentationInCompact:animated:completion:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Trying to present view controller from bar item when it is already presented by: %{public}@", v5);
}

void __32__BrowserController_closeWindow__block_invoke_958_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Failed to destroy scene: %{public}@", v5);
}

- (void)browserViewControllerDidChangeBarInsets:(void *)a1 .cold.1(void *a1, id *a2)
{
  [(BrowserController *)a2 _updateDigitalHealthViewFrame];
  [a2 updateContinuousPreviewViewFrame];

  [(BrowserController *)a2 _updateAppInfoOverlayFrame];
}

void __75__BrowserController_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Could not save lead image for bookmark from keyboard shortcut in with error: %{public}@", v5);
}

- (void)handleNavigationIntent:completion:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  _os_log_debug_impl(&dword_215819000, v3, OS_LOG_TYPE_DEBUG, "Navigate to %{public}@", v4, 0xCu);
}

- (void)_sendPDFRepresentationForScreenshotWithTabDocument:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_215819000, a1, OS_LOG_TYPE_INFO, "Not sending PDF representation of screenshot because we no longer have a pending request block", v2, 2u);
  }
}

void __71__BrowserController__extractTextFromReaderWebViewOfTab_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Error removing figcaptions from reader view: %{public}@", v5);
}

void __71__BrowserController__extractTextFromReaderWebViewOfTab_withCompletion___block_invoke_1127_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Error extracting contents of webpage as a string: %{public}@; page will not be donated to sirireaderd", v5);
}

- (void)_stringByRemovingContentBetweenZeroWidthSpacesForText:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Error removing unwanted summary or table of contents text: %{public}@", v5);
}

- (void)tabDocumentCommitPreviewedDocument:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_215819000, v0, OS_LOG_TYPE_FAULT, "Preview document to speculatively commit to is nil, old document to replace is %{private}@", v1, 0xCu);
}

- (void)tabDocumentCommitPreviewedDocumentAsNewTab:(os_log_t)log inBackground:.cold.1(char a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109379;
  v3[1] = a1 & 1;
  v4 = 2117;
  v5 = a2;
  _os_log_fault_impl(&dword_215819000, log, OS_LOG_TYPE_FAULT, "Trying to open webpage link in new tab, but the cached _previewDocument is nil; opening in background: %i; Source tab: %{sensitive}@", v3, 0x12u);
}

- (void)tabDocumentDidDimissPreviewedDocument:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a2 + 184);
    v7 = 134218240;
    v8 = v6;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&dword_215819000, a1, OS_LOG_TYPE_DEFAULT, "Dismissing link preview %p from source tab %p", &v7, 0x16u);
  }
}

void __51__BrowserController_tabDocumentShouldBecomeActive___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Unable to open session: %{public}@", v5);
}

- (void)tabDocument:presentViewControllerAnimated:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Trying to present view controller for tab document when it is already presented by: %{public}@", v5);
}

- (void)scene:willConnectToSession:options:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)openBookmarkWithUUIDString:inTabWithUUID:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Can't find tab %{public}@", v5);
}

- (void)openBookmarkWithUUIDString:inTabWithUUID:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)openTabWithUUID:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__BrowserController_closeTabsWithUUIDs___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end