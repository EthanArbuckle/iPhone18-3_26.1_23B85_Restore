@interface BrowserController
+ (WKProcessPool)newProcessPool;
+ (void)_sendABGroupIdentifierToProcessPool:(uint64_t)a1;
+ (void)_sendABTestingEnabledStateToProcessPool:(uint64_t)a1;
- (BOOL)_animationsAreEnabled;
- (BOOL)_canScrollToTopInView:(uint64_t)a1;
- (BOOL)_hasPresentedViewController;
- (BOOL)_isInContinuousMode;
- (BOOL)_isScrolledToThresholdForContinuousPrefetching;
- (BOOL)_isTabBarShown;
- (BOOL)_isVerticallyConstrained;
- (BOOL)_shouldUseNarrowLayout;
- (BOOL)_showingTabDocumentWithURL;
- (BOOL)_stateForBookmarksViewSortOptionCommand:(uint64_t)a1;
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
- (BOOL)browserViewControllerShouldTemporarilyHideBottomToolbar:(id)a3;
- (BOOL)canAddToBookmarks;
- (BOOL)canAddToQuickNote;
- (BOOL)canAddToReadingList;
- (BOOL)canAutoFocusURLField;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canFindOnPage;
- (BOOL)canFindOnTabWithUUID:(id)a3;
- (BOOL)canHideBars;
- (BOOL)canMoveToTabGroup;
- (BOOL)canNavigateContinuousReadingListInDirection:(unint64_t)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canPrintCurrentTab;
- (BOOL)canReadActiveLanguage;
- (BOOL)canReadThis;
- (BOOL)canShowProfileInNavigationBar;
- (BOOL)canTogglePinningTab;
- (BOOL)canToggleVisibilityForView:(unint64_t)a3;
- (BOOL)catalogPopoverIsShowing;
- (BOOL)catalogViewControllerPresentingInPortraitAspectRatio:(id)a3;
- (BOOL)catalogViewControllerShouldRequestNetworkedSuggestions:(id)a3;
- (BOOL)catalogViewControllerShouldSuppressPopover:(id)a3;
- (BOOL)catalogViewControllerShouldUsePopoverForCompletions:(id)a3;
- (BOOL)catalogViewControllerUnifiedFieldCanBecomeFirstResponder:(id)a3;
- (BOOL)containsTabWithUUID:(id)a3;
- (BOOL)currentTabIsPinned;
- (BOOL)dynamicBarAnimator:(id)a3 canTransitionToState:(int64_t)a4 byDraggingWithOffset:(double)a5;
- (BOOL)favoritesAreShowingInPopover;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)getContextForCurrentPageWithCompletionHandler:(id)a3;
- (BOOL)hasDedicatedDownloadsToolbarItem;
- (BOOL)hasDedicatedExtensionsButton;
- (BOOL)hasDedicatedMediaStateButton;
- (BOOL)hasMultipleProfiles;
- (BOOL)hasUnviewedDownloads;
- (BOOL)interfaceFillsScreen;
- (BOOL)isAnyPageLoaded;
- (BOOL)isContinuousReadingDocument:(id)a3;
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
- (BOOL)isViewVisible:(unint64_t)a3;
- (BOOL)previewController:(id)a3 shouldOpenURL:(id)a4 forPreviewItem:(id)a5;
- (BOOL)readerViewIsVisibleForMailContentProvider:(id)a3;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (BOOL)shouldDeferHistoryUpdatesForWKWebView:(id)a3;
- (BOOL)shouldIncreaseTopSpacingForStartPageController:(id)a3;
- (BOOL)shouldReportUnifiedTabBarAnalytics;
- (BOOL)shouldShowRecentSearches;
- (BOOL)shouldShowTurnOnLockedPrivateBrowsingSheet;
- (BOOL)shouldSnapshotActiveTab;
- (BOOL)shouldStayInFocusedTabGroupForExternalLinks;
- (BOOL)showDemoModeFeatureDisabledAlert;
- (BOOL)tabBarIsCurrentlyScrollable;
- (BOOL)tabDocument:(id)a3 canShowDownload:(id)a4;
- (BOOL)tabDocumentCanBecomeCurrentUserActivity:(id)a3;
- (BOOL)tabDocumentCanBeginInputSessionForStreamlinedLogin:(id)a3;
- (BOOL)tabDocumentCanCloseWindow:(id)a3;
- (BOOL)tabDocumentCanDisplayModalUI:(id)a3;
- (BOOL)tabDocumentCanDownloadFile:(id)a3;
- (BOOL)tabDocumentCanFindNextOrPrevious:(id)a3;
- (BOOL)tabDocumentCanRedirectToExternalApplication:(id)a3;
- (BOOL)tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:(id)a3;
- (BOOL)tabDocumentIsBackgroundPreloading:(id)a3;
- (BOOL)tabDocumentShouldDeferAppBannerRemoval:(id)a3;
- (BOOL)tabDocumentShouldFillStringForFind:(id)a3;
- (BOOL)tabDocumentShouldHandleAuthentication:(id)a3;
- (BOOL)tabDocumentShouldHandleCertificateError:(id)a3;
- (BookmarksNavigationController)_newModalBookmarksControllerWithCollection:(uint64_t)a3 showsOnlyActiveCollection:;
- (BookmarksNavigationController)bookmarksNavigationController;
- (BrowserController)initWithStateData:(id)a3 browserWindowController:(id)a4 savedState:(id)a5 controlledByAutomation:(BOOL)a6;
- (BrowserController)initWithUUID:(id)a3 sceneID:(id)a4 browserWindowController:(id)a5 tabGroupManager:(id)a6 controlledByAutomation:(BOOL)a7;
- (BrowserController)initWithWindowState:(id)a3 browserWindowController:(id)a4 tabGroupManager:(id)a5 controlledByAutomation:(BOOL)a6;
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
- (UIEdgeInsets)finalObscuredInsetsForScrollView:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
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
- (double)_offsetToPositionToastViewControllerOffscreen:(uint64_t)a1;
- (double)_popoverPresentationVerticalOffset;
- (double)_refreshControlHeight;
- (double)_verticalOffsetForContinuousReadingBanner;
- (double)additionalContentHeightForBanners;
- (double)browserViewController:(id)a3 adjustedBottomContentInset:(double)a4;
- (double)browserViewController:(id)a3 adjustedBottomObscuredInset:(double)a4;
- (double)browserViewController:(id)a3 adjustedTopObscuredInsetForBanners:(double)a4;
- (double)catalogViewControllerPopoverWidth:(id)a3;
- (double)continuousReadingViewControllerNextWebViewLandingOffset:(id)a3 includeBottomBar:(BOOL)a4;
- (double)dynamicBarAnimator:(id)a3 minimumTopBarHeightForOffset:(double)a4;
- (double)verticalScrollOffsetForReaderViewInTabDocument:(id)a3;
- (id)_addAllTabsToBookmarksLabel;
- (id)_cachedDocumentForContinuousReadingItem:(void *)a1;
- (id)_catalogViewController;
- (id)_closeAllTabsLabel;
- (id)_closeAllTabsMatchingSearchLabel;
- (id)_discoverabilityTitleForCommandTapModifierFollowingUserPreference:(uint64_t)a1;
- (id)_findCommandTitle;
- (id)_formatMenuButtonPopoverSourceInfo;
- (id)_lastClosedTabStateData;
- (id)_navigationControllerForTabGroupPicker;
- (id)_nonBlankCurrentTabs;
- (id)_openURLNavigationIntentForSceneConnectionOptions:(uint64_t)a1;
- (id)_participantsListForCollaborationView:(id *)a1;
- (id)_screenTimeHostingViewControllerForTabDocument:(id)a1;
- (id)_screenTimeOverlayViewControllerForTabDocument:(void *)a1;
- (id)_sidebarViewController;
- (id)_stringByRemovingContentBetweenZeroWidthSpacesForText:(uint64_t)a1;
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
- (id)barManager:(id)a3 visibleBarItemsForLayout:(int64_t)a4 availableItems:(id)a5;
- (id)bookmarksNavigationControllerCurrentContinuousReadingItem:(id)a3;
- (id)borrowContentViewControllerForTab:(id)a3;
- (id)catalogViewControllerStartPageVisualStyleProvider:(id)a3;
- (id)contentContainerView;
- (id)createCatalogViewControllerIfNeeded;
- (id)createNewTabGroupWithTitle:(id)a3;
- (id)currentContentUUIDForNavigationBar:(id)a3;
- (id)detachFromScene;
- (id)downloadsViewControllerForActionPanel:(id)a3;
- (id)existingUnnamedTabGroupForProfileWithIdentifier:(id)a3;
- (id)imageForNewDefaultWindowCommand;
- (id)itemProviderForNavigationBar:(id)a3;
- (id)itemTitleForCloudSharingController:(id)a3;
- (id)linkPreviewViewControllerForNavigationIntent:(id)a3;
- (id)linkPreviewViewControllerForURL:(id)a3;
- (id)loadURLInNewTab:(id)a3 inBackground:(BOOL)a4;
- (id)loadURLInNewTab:(id)a3 inBackground:(BOOL)a4 animated:(BOOL)a5;
- (id)loadURLInNewTab:(id)a3 title:(id)a4 UUID:(id)a5 inBackground:(BOOL)a6 animated:(BOOL)a7 restoringCloudTab:(BOOL)a8;
- (id)makeSidebarButton;
- (id)makeTabOverview;
- (id)moveMenuOnPageMenuWithDismissHandler:(id)a3;
- (id)navigationBar:(id)a3 mediaStateMuteButtonMenuElementsForItem:(id)a4;
- (id)navigationBarURLForSharing:(id)a3;
- (id)newCollaborationButton;
- (id)newCollaborationButtonWithActiveTabGroup:(id)a3 existingShare:(id)a4;
- (id)nextResponder;
- (id)pageZoomPreferenceManagerForTabDocument:(id)a3;
- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4;
- (id)printControllerForContentProvider:(id)a3;
- (id)readerControllerForMailContentProvider:(id)a3;
- (id)showTabGroupPicker:(id)a3;
- (id)sidebarContentViewControllerForSidebarUIProxy:(id)a3;
- (id)sortOptionFromBookmarksViewSortOptionCommandPropertyList:(uint64_t)a1;
- (id)tabContentContainerView;
- (id)titleForNewDefaultWindowCommand;
- (id)undoManager;
- (id)webExtensionWindowForTab:(id)a3;
- (id)webExtensionWindowWithID:(double)a3;
- (id)webViewForMailContentProvider:(id)a3;
- (int64_t)analyticsLayoutProvenance;
- (int64_t)bookmarksPresentationStyleForViewOfSize:(CGSize)a3;
- (int64_t)browserViewController:(id)a3 sidebarStyleForViewSize:(CGSize)a4;
- (int64_t)browserViewController:(id)a3 toolbarPlacementForViewSize:(CGSize)a4;
- (int64_t)dataOwnerForNavigationBar:(id)a3;
- (int64_t)idOfParsecQueryOriginatingFromSearchSuggestion;
- (int64_t)orderIndexForTab:(id)a3;
- (int64_t)overrideBarTintStyleForUnifiedBar;
- (int64_t)siriReaderPlaybackStateForActiveTab;
- (int64_t)tabBarDisplayMode;
- (int64_t)updatePolicyForStartPageController:(id)a3;
- (uint64_t)_bookmarksBarLabelButtonDisplayStyle;
- (uint64_t)_canPrintForTabDocument:(void *)a1;
- (uint64_t)_canSaveWebpage;
- (uint64_t)_canUpdateInterfaceWithTabDocument:(uint64_t)a1;
- (uint64_t)_commitSpeculativeLoadForURL:(uint64_t)a1;
- (uint64_t)_currentBarContentMode;
- (uint64_t)_currentlyEditingText;
- (uint64_t)_dismissTransientUIAnimated:(uint64_t)a3 dismissalOptions:(void *)a4 completionHandler:;
- (uint64_t)_isReaderModeFormatMenuItemAvailable;
- (uint64_t)_isShowingCollectionInSidebar:(id *)a1;
- (uint64_t)_isStartPageOverriddenByExtensionInTabDocument:(uint64_t)a1;
- (uint64_t)_isTabDocumentFrontMostForDigitalHealth:(uint64_t)a1;
- (uint64_t)_isWindowLockedForPrivateBrowsing;
- (uint64_t)_notFocusedEmbeddedState;
- (uint64_t)_obscuredInsetsIncludeRefreshControl;
- (uint64_t)_prefersShowingBookmarksBar;
- (uint64_t)_setShowingOverlayForBanner:(int)a3 showing:;
- (uint64_t)_shareButtonEnabled;
- (uint64_t)_shouldHideBarsForSizeChange;
- (uint64_t)_shouldHideCatalogViewControllerForSizeChange;
- (uint64_t)_shouldPresentViewControllerUsingAdaptivePopover:(uint64_t)IsPad;
- (uint64_t)_shouldShowBarsForSizeChange;
- (uint64_t)_shouldShowBookmarksBar;
- (uint64_t)_shouldShowBookmarksBarForViewSize:(uint64_t)a1;
- (uint64_t)_shouldShowCollectionInSidebar;
- (uint64_t)_shouldShowNewReadingListBehaviorAlert;
- (uint64_t)_shouldShowSidebarForSizeChange;
- (uint64_t)_shouldShowSidebarForSizeChangeToSize:(double)a3;
- (uint64_t)_shouldUseTabBar;
- (uint64_t)_showOrHideSidebarInLandscapeIfNecessary;
- (uint64_t)_spawnNewTabFromPinnedTabIfNeededForSpeculativeDocument:(uint64_t)a1;
- (uint64_t)_tabIndexForKeyCommand:(uint64_t)a1;
- (uint64_t)_updateConfiguration;
- (uint64_t)_updateContinuousReadingViewControllerFrame;
- (uint64_t)_updateDisableBarHiding;
- (uint64_t)_updateLibraryTypeForNewDocument;
- (uint64_t)_wantsURLFieldAutoFocus;
- (uint64_t)effectiveNewDocumentShortcutBehavior;
- (uint64_t)handleOpenURLContextsForReadingListWidget:(void *)a1;
- (uint64_t)shouldShowSidebarInLandscape;
- (unint64_t)_shouldShowTabBar;
- (unint64_t)downloadsCount;
- (unint64_t)numberOfTabsInCurrentTabBar;
- (unint64_t)popUpPolicyForTabDocument:(id)a3;
- (void)_ABGroupIdentifierDidChange:(id)a3;
- (void)_actuallyPresentToastViewController:(uint64_t)a1;
- (void)_addBookmarkForCurrentTabKeyPressed:(id *)a1;
- (void)_addBookmarkForCurrentTabKeyPressed:(void *)a3 title:;
- (void)_addBookmarkForCurrentTabKeyPressed:(void *)a3 title:(int)a4 addToFavorites:;
- (void)_addInteractionsForTabBar:(uint64_t)a1;
- (void)_automaticPasswordInputViewAutoFillContextProviderRequiredNotification:(id)a3;
- (void)_automaticPasswordInputViewNotification:(id)a3;
- (void)_backgroundImageFileModifiedRemotely:(id)a3;
- (void)_backgroundImageNeedsCloudKitUpdate:(id)a3;
- (void)_beganSharingTabGroup:(id)a3;
- (void)_bookmarksDidReload:(id)a3;
- (void)_cancelContentScrollGestures;
- (void)_cancelPendingAutoFillInternalFeedbackToastDismissal;
- (void)_cancelSpeculativeLoadForDocument:(uint64_t)a1;
- (void)_checkWebViewVisibilityAfterExitingTabView;
- (void)_clearNextContinuousItemDocument;
- (void)_clearPreviousContinuousItemDocument;
- (void)_closePreviewDocumentTimerFired:(id)a3;
- (void)_closeSpeculativelyLoadedDocument:(uint64_t)a1;
- (void)_commitToSpeculativeLoad;
- (void)_commitToSpeculativeLoadForDocument:(id *)a1;
- (void)_commitToTabDocumentForNextContinuousItem;
- (void)_commitToTabDocumentForPreviousContinuousItem;
- (void)_completionItem:(void *)a3 wasAcceptedForString:;
- (void)_contentBlockersPerSitePreferenceDidChange:(id)a3;
- (void)_contentContainerViewFrameDidChange;
- (void)_debugAutoFillConsoleLoggingEnabledPreferenceDidChange:(id)a3;
- (void)_defaultSearchEngineDidChange:(id)a3;
- (void)_didChangePowerState;
- (void)_didChangeToFirstResponder:(id)a3;
- (void)_didDismissManageExtensionsViewController:(id)a3;
- (void)_dismissAutoFillInternalFeedbackToast:(id *)a1;
- (void)_doSearch:(void *)a1;
- (void)_downloadManagerDidFinishLastDownload:(id)a3;
- (void)_downloadsDidChange:(id)a3;
- (void)_downloadsTotalProgressDidChange:(id)a3;
- (void)_emailCurrentPageWithPreferredContentType:(uint64_t)a1;
- (void)_enterYttriumStateTimerFired;
- (void)_extractTextFromReaderWebViewOfTab:(void *)a3 withCompletion:;
- (void)_flushPendingSnapshotsDidComplete;
- (void)_focusNavigationBarForVoiceSearch:(void *)a3 completionHandler:;
- (void)_focusNavigationBarWithCompletionHandler:(uint64_t)a1;
- (void)_fullyRemoveDigitalHealthTreatmentForTabDocumentIfNecessary:(void *)a1;
- (void)_goBackAllowingNewTabToSpawnIfNeeded:(id *)a1;
- (void)_goForwardAllowingNewTabToSpawnIfNeeded:(id *)a1;
- (void)_hasUnviewedDownloadsDidChange:(id)a3;
- (void)_hideDigitalHealthOverlayForTabDocument:(id *)a1;
- (void)_hideReaderForTabDocument:(char)a3 animated:(uint64_t)a4 deactivationMode:(void *)a5 completion:;
- (void)_initSubviews;
- (void)_insertScreenTimeLockoutShieldIntoContentViewForTab:(uint64_t)a3 animated:;
- (void)_invalidatePreviewDocumentCloseTimer;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_loadAddressAsSpeculativeLoadIfNeeded:(void *)a1;
- (void)_loadIntentAsSpeculativeLoadIfNeeded:(void *)a1;
- (void)_loadPreviousContinuousDocumentIfNeeded;
- (void)_loadURL:(int)a3 inExternalApplication:(int)a4 forImageAttribution:;
- (void)_lockedPrivateBrowsingStateDidChange;
- (void)_logTabClosingWithEventSender:(uint64_t)a3 tabClosingAction:(uint64_t)a4 numberOfTabsClosed:;
- (void)_logTabClosingWithKeyboardShortcut:(uint64_t)a3 tabClosingAction:(uint64_t)a4 numberOfTabsClosed:;
- (void)_mailContentProvider;
- (void)_navigationGestureDidBegin;
- (void)_navigationGestureDidEndWithNavigation:(uint64_t)a1;
- (void)_navigationGestureWillEndWithNavigationToBackForwardListItem:(uint64_t)a1;
- (void)_newReadingListBehaviorAlertControllerWithCompletion:(void *)a1;
- (void)_observeInitializedWebKitFeatures;
- (void)_openDownload:(uint64_t)a1;
- (void)_pasteAndNavigate;
- (void)_perSiteAutomaticReaderActivationPreferenceDidChange:(id)a3;
- (void)_perSiteLockdownModePreferenceDidChange:(id)a3;
- (void)_perSitePageZoomPreferenceDidChange:(id)a3;
- (void)_perSitePreferencesDidChange:(id)a3;
- (void)_postUserDidAcceptCloudKitShareActivityNoticeWithMetadata:(uint64_t)a1;
- (void)_prepareExtensionsForEffectiveProfile;
- (void)_preparePreviousContinuousDocumentIfNeeded;
- (void)_prepareTabDocumentForNextContinuousItemIfNeeded;
- (void)_prepareToPresentActivityViewController;
- (void)_presentActionPanelIfReady;
- (void)_presentActivityViewController;
- (void)_presentAttributedSharedTabNoticeWithMessage:(void *)a3 forParticipantWithRecordID:(void *)a4 inSharedTabGroupWithUUID:;
- (void)_presentModalViewController:(uint64_t)a3 fromBarItem:(uint64_t)a4 animated:(void *)a5 completion:;
- (void)_presentModalViewController:(void *)a1;
- (void)_presentModalViewController:(void *)a3 fromPopoverSource:(uint64_t)a4 useAdaptivePresentationInCompact:(uint64_t)a5 animated:(void *)a6 completion:;
- (void)_presentPendingViewControllerForActiveTab;
- (void)_presentReaderTriggeredAppReviewPromptIfNeeded;
- (void)_presentSaveWebpageViewController;
- (void)_presentSharedTabGroupErrorWithTitle:(void *)a3 message:;
- (void)_presentSharedTabGroupsPendingAcceptanceError;
- (void)_presentSharedTabGroupsUnsupportedError;
- (void)_presentToastViewControllerQueuingIfNecessary:(uint64_t)a1;
- (void)_pressedNewTabKeyWithOptions:(char)a3 isKeyboardShortcut:;
- (void)_previewDownloadInQuickLook:(void *)a3 url:(uint64_t)a4 isContentManaged:;
- (void)_profileWallpaperDidChange:(id)a3;
- (void)_readSavedState;
- (void)_readerButtonTapped;
- (void)_readerVisibilityDidChange;
- (void)_recentSearchesWereCleared:(id)a3;
- (void)_recordIgnoredSiriSuggestedSitesWithURL:(uint64_t)a1;
- (void)_reloadPresentedPreferencesListViewController;
- (void)_reloadProfileSwitcherIfNeeded;
- (void)_replaceActiveDocument:(void *)a3 withSpeculativeDocument:;
- (void)_requestActivationOfBrowserController:(id *)a1;
- (void)_requestQueryResultsOnTabDocument:(void *)a3 forText:(uint64_t)a4 contentType:(void *)a5 pageMetadata:;
- (void)_restoreDigitalHealthFunctionalityAfterAppTransition;
- (void)_rootViewControllerViewTransitionFromSize:(uint64_t)a1 includingSidebar:(int)a2 animated:(uint64_t)a3;
- (void)_sceneSession;
- (void)_scheduleAutoFillInternalFeedbackToastDismissal;
- (void)_searchTabs;
- (void)_sendPDFRepresentationForScreenshotWithTabDocument:(void *)a1;
- (void)_setContinuousReadingContentViewFromTabDocument:(int)a3 useReaderView:;
- (void)_setContinuousReadingPreviewView:(id *)a1;
- (void)_setLibraryForCatalogViewController;
- (void)_setNeedsSnapshotUpdateForActiveTab;
- (void)_setPresentingModalBookmarksController:(int)a3 exclusively:(void *)a4 importHandler:(void *)a5 withCollection:(void *)a6 bookmarkUUIDString:(uint64_t)a7 animated:(void *)a8 completion:;
- (void)_setProgressSuppressingDocument:(uint64_t)a1;
- (void)_setReaderVisible:(void *)a3 forTabDocument:(uint64_t)a4 deactivationMode:(char)a5 animated:(void *)a6 completion:;
- (void)_setSheetPresentationIfNeededForController:(uint64_t)a1;
- (void)_setShowBookmarksBar:(uint64_t)a1;
- (void)_setShowingAppBanner:(int)a3 isShowing:;
- (void)_setShowingPrivateBrowsingPrivacyProtectionsBanner:(int)a3 isShowing:;
- (void)_setShowingTabBar:(char)a3 animated:;
- (void)_setSidebarUIProxy:(uint64_t)a1;
- (void)_showDefaultBrowserSheetIfNecessary;
- (void)_showDigitalHealthOverlayForTabDocument:(uint64_t)a3 withPolicy:(uint64_t)a4 animated:;
- (void)_showNoRecentSearchesView:(id)a3;
- (void)_showPrivateBrowsingExplanationSheetIfNecessary;
- (void)_showReaderForTabDocument:(char)a3 animated:(void *)a4 completion:;
- (void)_showSummarizeButtonIfNeeded;
- (void)_siriReadThisMenuInvocation;
- (void)_siriReadThisVocalInvocation;
- (void)_startLoadDocument:(void *)a3 continuousReadingItem:;
- (void)_switchTabsByRelativeIndex:(void *)a3 withKeyCommand:;
- (void)_switchToCollectionOrToggleSidebar:(id *)a1;
- (void)_tabViewPinch:(id)a3;
- (void)_toggleDigitalHealthOverlayGivenOverlayStates:(void *)a3 forTabDocuments:;
- (void)_toggleVisibilityOfStartPageCollection:(uint64_t)a1;
- (void)_trialABGroupIdentifierDidChange:(id)a3;
- (void)_unhideCapsuleFromPageMenu;
- (void)_updateAddTabMenuProvider;
- (void)_updateAppInfoOverlayFrame;
- (void)_updateBookmarksMenuProvider;
- (void)_updateButtonsAnimatingTabBar:(uint64_t)a1;
- (void)_updateCurrentContinuousReadingItem;
- (void)_updateCurrentPageBannerView;
- (void)_updateCurrentPageBannerViewBeforeContinuousTransition;
- (void)_updateCurrentPageBannerViewIfNeeded;
- (void)_updateDigitalHealthOverlayAfterExitingTabSwitcher;
- (void)_updateDigitalHealthOverlayForTabDocuments:(void *)a1;
- (void)_updateDigitalHealthViewFrame;
- (void)_updateMediaCaptureConfiguration;
- (void)_updateNavigationBarSeparator;
- (void)_updateParticipantsListForCollaborationButton:(void *)a3 contacts:;
- (void)_updatePrivateBrowsingAvailability:(BOOL)a3;
- (void)_updateRefreshControlHeight;
- (void)_updateSceneTitle;
- (void)_updateScribbleOverlayIfNeeded;
- (void)_updateScrollOffsetForReplacementWebView:(id *)a1;
- (void)_updateSidebarStickinessAfterUserAction;
- (void)_updateSpeculativeLoadURL:(uint64_t)a1;
- (void)_updateTabGroupBanner;
- (void)_updateUnifiedBar;
- (void)_updateUnifiedBarBackgroundVisibility;
- (void)_updateUsesNarrowLayout;
- (void)actionPanel:(id)a3 prepareForMailActivityWithMailController:(id)a4 completionHandler:(id)a5;
- (void)actionPanelAddTabDocumentToReadingList:(id)a3 activityDidFinish:(id)a4;
- (void)activateWebClipWithID:(id)a3;
- (void)addAllTabsToBookmarks:(id)a3;
- (void)addBookmarkActivityFailedToAcquireBookmarkLock:(id)a3;
- (void)addBookmarkFolderForCurrentTabs;
- (void)addBookmarkFolderForTabs:(id)a3;
- (void)addBookmarkNavController:(id)a3 didFinishWithResult:(BOOL)a4 bookmark:(id)a5;
- (void)addCurrentPageToHomeScreen:(id)a3;
- (void)addToBookmarks:(id)a3;
- (void)addToFavorites;
- (void)addToQuickNote;
- (void)addToReadingList:(id)a3;
- (void)adoptSceneID:(id)a3;
- (void)animateLinkImage:(CGImage *)a3 fromRect:(CGRect)a4 inView:(id)a5 toBarItem:(int64_t)a6;
- (void)arrangeTabsByTitle:(id)a3;
- (void)arrangeTabsByWebsite:(id)a3;
- (void)attachToScene:(id)a3;
- (void)authenticateToUnlockPrivateBrowsing;
- (void)autoFillFormKeyPressed;
- (void)autoFillInternalFeedbackActivityNotice:(id)a3 shouldPresentFeedbackForm:(BOOL)a4;
- (void)barManager:(id)a3 didReceiveLongPressForBarItem:(int64_t)a4;
- (void)barManager:(id)a3 didReceiveTapForBarItem:(int64_t)a4;
- (void)barManager:(id)a3 didReceiveTouchDownForBarItem:(int64_t)a4;
- (void)barManager:(id)a3 willRegisterBarWithToken:(id)a4;
- (void)beginIgnoringUserInteraction:(id)a3;
- (void)beginTrackingDropSessionForTabBarVisibility:(id)a3;
- (void)bookmarksNavigationController:(id)a3 updateReadingListUnreadFilterShowingAllBookmarks:(BOOL)a4;
- (void)bookmarksNavigationControllerContentDidBecomeDirty:(id)a3;
- (void)bookmarksNavigationControllerViewDidAppear:(id)a3;
- (void)bookmarksNavigationControllerViewDidDisappear:(id)a3;
- (void)bookmarksViewSortOptionSelected:(id)a3;
- (void)browserViewController:(id)a3 didChangeShowingSidebar:(BOOL)a4;
- (void)browserViewController:(id)a3 didChangeSidebarStyle:(int64_t)a4;
- (void)browserViewController:(id)a3 didCreateNavigationBar:(id)a4;
- (void)browserViewController:(id)a3 traitCollectionDidChange:(id)a4;
- (void)browserViewControllerDidChangeBarInsets:(id)a3;
- (void)browserViewControllerDidChangeToolbarPlacement:(id)a3;
- (void)browserViewControllerDidLayOutSubviews:(id)a3;
- (void)cancelFavoritesAnimated:(BOOL)a3;
- (void)cancelKeyPressed;
- (void)cancelSpeculativeLoad;
- (void)carrierBundledChanged;
- (void)catalogViewController:(id)a3 cacheSearchQueryID:(int64_t)a4;
- (void)catalogViewController:(id)a3 completionItem:(id)a4 wasAcceptedForString:(id)a5;
- (void)catalogViewController:(id)a3 didFinishVoiceSearchWithNavigation:(BOOL)a4;
- (void)catalogViewController:(id)a3 didPasteText:(id)a4;
- (void)catalogViewController:(id)a3 didSelectAddress:(id)a4;
- (void)catalogViewController:(id)a3 didSelectSearch:(id)a4;
- (void)catalogViewController:(id)a3 focusNextKeyView:(BOOL)a4;
- (void)catalogViewController:(id)a3 loadURL:(id)a4 inExternalApplication:(BOOL)a5 forImageAttribution:(BOOL)a6;
- (void)catalogViewController:(id)a3 mightSelectCompletionItem:(id)a4 forString:(id)a5;
- (void)catalogViewController:(id)a3 presentViewControllerInPlatter:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)catalogViewController:(id)a3 presentViewControllerWithinPopover:(id)a4 completionHandler:(id)a5;
- (void)catalogViewController:(id)a3 willPresentCustomizationViewController:(id)a4;
- (void)catalogViewController:(id)a3 willPresentDetailViewController:(id)a4;
- (void)catalogViewController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)catalogViewControllerDidAppear:(id)a3;
- (void)catalogViewControllerDidBeginEditing:(id)a3;
- (void)catalogViewControllerDidEndEditing:(id)a3;
- (void)catalogViewControllerDidScroll:(id)a3 animated:(BOOL)a4;
- (void)catalogViewControllerDidSelectFindOnPage:(id)a3;
- (void)catalogViewControllerMakeWindowKey:(id)a3;
- (void)catalogViewControllerPopoverWillDismiss:(id)a3 dismissalReason:(int64_t)a4;
- (void)catalogViewControllerSuppressSelectedItemUnfocus:(id)a3;
- (void)catalogViewControllerWillUnfocusUnifiedField:(id)a3 showingRecentSearches:(BOOL)a4;
- (void)checkSummarizationStateToShowSummarizeButton;
- (void)clearBadgeOnPageFormatMenu;
- (void)clearCachedTabCompletionData;
- (void)clearContinuousItemDocuments;
- (void)clearDocumentForContinuousReading:(id)a3;
- (void)clearHistory:(id)a3;
- (void)clearParsecQueryOriginatingFromSearchSuggestion;
- (void)clearParticipantsList;
- (void)clearReaderViews;
- (void)clearSpeculativeLoadDocument;
- (void)closeActiveTab:(id)a3;
- (void)closeAllTabs:(id)a3;
- (void)closeAllTabsMatchingSearch:(id)a3;
- (void)closeAllWindows:(id)a3;
- (void)closeOtherTabsKeyPressed;
- (void)closePreviewDocument;
- (void)closeStartPage;
- (void)closeTabGroupKeyPressed;
- (void)closeTabWithUUID:(id)a3;
- (void)closeTabsWithUUIDs:(id)a3;
- (void)closeWindow;
- (void)cloudSharingController:(id)a3 failedToSaveShareWithError:(id)a4;
- (void)cloudTabsEnabledDidChange;
- (void)collectDiagnosticsForAutoFillWithCompletionHandler:(id)a3;
- (void)commitLinkPreviewViewController:(id)a3;
- (void)completionDetailViewControllerDidDismiss:(id)a3;
- (void)compressedNavigationBarWasTapped:(id)a3;
- (void)configureMenuAndAdoptButton:(id)a3;
- (void)continuousReadingViewController:(id)a3 didCommitToLoadItem:(id)a4;
- (void)continuousReadingViewController:(id)a3 scrollViewDidScroll:(id)a4;
- (void)continuousReadingViewControllerCommitToLoadPreviousItem:(id)a3;
- (void)continuousReadingViewControllerWillCommitToLoadNextItem:(id)a3;
- (void)createNewBookmarkWithTitle:(id)a3;
- (void)createNewTabWithCompletionHandler:(id)a3;
- (void)createNewTabWithURL:(id)a3 isPrivate:(BOOL)a4 completionHandler:(id)a5;
- (void)createProfileWindow;
- (void)dealloc;
- (void)decreaseSize:(id)a3;
- (void)didAddTabWithUUID:(id)a3 title:(id)a4 inSharedTabGroupWithUUID:(id)a5 byParticipantWithRecordID:(id)a6;
- (void)didBecomeActive;
- (void)didBecomeLastTouchedScene;
- (void)didCancelDismissingTabOverview;
- (void)didChangeBackgroundImageInSharedTabGroupWithUUID:(id)a3 byParticipantWithRecordID:(id)a4;
- (void)didChangeContinuousReadingItemInActiveDocument;
- (void)didChangeScopedFavoritesInSharedTabGroupWithUUID:(id)a3 byParticipantWithRecordID:(id)a4;
- (void)didCloseBrowserWindow;
- (void)didCompleteScrolling;
- (void)didEnterBackground;
- (void)didFocusTabGroup:(id)a3;
- (void)didNavigateInTabWithUUID:(id)a3 title:(id)a4 inSharedTabGroupWithUUID:(id)a5 byParticipantWithRecordID:(id)a6;
- (void)didReceiveMemoryWarning;
- (void)didRemoveTabWithUUID:(id)a3 title:(id)a4 inSharedTabGroupWithUUID:(id)a5 byParticipantWithRecordID:(id)a6;
- (void)dismissAutoFillInternalFeedbackToastImmediately:(BOOL)a3;
- (void)dismissCatalogViewController:(id)a3;
- (void)dismissCompletionDetail;
- (void)dismissToastViewController:(id)a3;
- (void)dispatchNavigationIntent:(id)a3;
- (void)document:(id)a3 willMakeReaderVisible:(BOOL)a4;
- (void)duplicateCurrentTab:(id)a3;
- (void)dynamicBarAnimatorStateDidChange:(id)a3;
- (void)dynamicBarAnimatorWillEnterSteadyState:(id)a3;
- (void)editBookmark:(id)a3;
- (void)editBookmarksKeyPressed;
- (void)editTabBar;
- (void)endIgnoringUserInteraction:(id)a3;
- (void)endTrackingDropSessionForTabBarVisibility:(id)a3;
- (void)exportBrowsingData:(id)a3;
- (void)fastAddBookmark;
- (void)fastAddBookmarkForTabDocument:(id)a3;
- (void)filteredArticleTextDidBecomeReadyInTabDocument:(id)a3;
- (void)find:(id)a3;
- (void)findString:(id)a3 onTabWithUUID:(id)a4;
- (void)focusAddressFieldKeyPressed;
- (void)fraudWarningsToggled;
- (void)handleNavigationIntent:(id)a3 completion:(id)a4;
- (void)handleSearchResult:(id)a3;
- (void)hideBarsForRotation;
- (void)hideTabGroupPicker;
- (void)importBrowsingData:(id)a3;
- (void)increaseSize:(id)a3;
- (void)invalidateSourceApplication;
- (void)linkPreviewProviderWillDismissPreview;
- (void)loadBackgroundImageIfNeededForIdentifier:(id)a3;
- (void)loadCloudTabsForDeviceRestoration:(id)a3;
- (void)loadNextContinuousDocumentIfNeeded;
- (void)loadURL:(id)a3;
- (void)makeSpaceForTabWithPrivateBrowsing:(BOOL)a3 resultHandler:(id)a4;
- (void)manageProfiles:(id)a3;
- (void)markReadingListBookmark:(id)a3 asRead:(BOOL)a4 postNotification:(BOOL)a5;
- (void)mergeAllWindows:(id)a3;
- (void)moveCurrentTabToNewWindow:(id)a3;
- (void)navigateContinuousReadingListToDirection:(unint64_t)a3;
- (void)navigationBar:(id)a3 didCreateLeadingToolbar:(id)a4 trailingToolbar:(id)a5;
- (void)navigationBar:(id)a3 didFinishShowingAvailabilityLabelOfType:(int64_t)a4;
- (void)navigationBar:(id)a3 extensionButtonTapped:(id)a4 extension:(id)a5;
- (void)navigationBar:(id)a3 multipleExtensionsButtonTapped:(id)a4;
- (void)navigationBarCancelButtonWasTapped:(id)a3;
- (void)navigationBarFormatMenuButtonBecameUnavailable:(id)a3;
- (void)navigationBarFormatMenuButtonStartedInteraction:(id)a3;
- (void)navigationBarFormatMenuButtonWasTapped:(id)a3;
- (void)navigationBarMediaStateMuteButtonWasTapped:(id)a3 forItem:(id)a4;
- (void)navigationBarMetricsDidChange:(id)a3;
- (void)navigationBarReaderButtonWasTapped:(id)a3;
- (void)navigationBarReloadButtonWasTapped:(id)a3;
- (void)navigationBarStopLoadingButtonWasTapped:(id)a3;
- (void)navigationBarTranslateButtonWasTapped:(id)a3;
- (void)navigationBarTranslateButtonWasTappedWithSourceInfo:(id)a3;
- (void)newTabAlternativeKeyPressed;
- (void)newTabGroupKeyPressed;
- (void)newTabWithAlternativeOrderingKeyPressed;
- (void)nextReadingListItemKeyPressed;
- (void)nextTabGroupKeyPressed;
- (void)nextTabKeyPressed:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)openBookmark:(id)a3;
- (void)openBookmarkWithUUIDString:(id)a3 inTabWithUUID:(id)a4;
- (void)openClearHistoryViewControllerFor:(id)a3;
- (void)openDownload:(id)a3;
- (void)openHistoryURL:(id)a3;
- (void)openNewNormalTab:(id)a3;
- (void)openNewPrivateTab:(id)a3;
- (void)openNewPrivateWindow:(id)a3;
- (void)openNewTab:(id)a3;
- (void)openNewTabOrWindow:(id)a3;
- (void)openNewWindow:(id)a3;
- (void)openNewWindowInFrontmostProfile:(id)a3;
- (void)openNewWindowInProfile:(id)a3;
- (void)openRecentlyClosedTab:(id)a3;
- (void)openStartPage;
- (void)openTabGroupOfKind:(int64_t)a3 uuidString:(id)a4;
- (void)openTabWithUUID:(id)a3;
- (void)overlayDidHide:(id)a3;
- (void)participants:(id)a3 didJoinSharedTabGroupWithUUID:(id)a4;
- (void)participants:(id)a3 didLeaveSharedTabGroupWithUUID:(id)a4;
- (void)performSearchUsingQuery:(id)a3;
- (void)performTabSearchUsingQuery:(id)a3;
- (void)performWebExtensionCommandForKeyCommand:(id)a3;
- (void)playbackContentIdentifierDidChangeForSiriReaderPlaybackController:(id)a3;
- (void)playbackStateDidChangeForSiriReaderPlaybackController:(id)a3;
- (void)policyDidChangeForDigitalHealthManager:(id)a3;
- (void)prefetchNextContinuousItemIfNeeded;
- (void)prepareForTabDocumentWebViewFullscreenMayReturnToInline:;
- (void)prepareForTabDocumentWebViewFullscreenMayReturnToInline:(id)a3;
- (void)prepareIntentInteractionWithCompletionHandler:(id)a3;
- (void)prepareToNavigateInTabDocument:(id)a3;
- (void)presentAutoFillInternalFeedbackToastWithDiagnosticsDataWithoutPageContents:(id)a3;
- (void)presentAutomaticTabClosingAlertController;
- (void)presentBookmarkPickerWithImportHandler:(id)a3;
- (void)presentCloudTabsPickerWithPrimaryDeviceUUID:(id)a3;
- (void)presentDownloadsViewController;
- (void)presentPrintControllerForCurrentTab;
- (void)presentPrintControllerForTabDocument:(id)a3 frame:(id)a4 initiatedByWebContent:(BOOL)a5;
- (void)presentPrivacyReport;
- (void)presentPromptForAppReviewPromptManager:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)previewControllerDidDismiss:(id)a3;
- (void)previousReadingListItemKeyPressed;
- (void)previousTabGroupKeyPressed;
- (void)previousTabKeyPressed:(id)a3;
- (void)profileWindow:(id)a3 selectProfile:(id)a4;
- (void)profileWindow:(id)a3 selectTabGroup:(id)a4;
- (void)reinsertBorrowedContentViewForTab:(id)a3;
- (void)reloadFromOriginKeyPressed;
- (void)reloadKeyPressed;
- (void)reloadSidebarAnimated:(BOOL)a3;
- (void)removeAppBannerFromTabDocument:(id)a3 animated:(BOOL)a4;
- (void)removeCachedSearchStateForActiveTabDocument;
- (void)renameTabGroupKeyPressed;
- (void)reopenLastClosedTabPressed;
- (void)reportScribbleFeedbackForSelectedRowIndex:(int64_t)a3;
- (void)reportWebCompatibilityFeedbackForActiveTabDocumentWithIssueCategory:(int64_t)a3 subCategory:(int64_t)a4;
- (void)resetPageZoomLevelAndFontSize;
- (void)resetPendingAutoFillInternalFeedbackToastDismissalTimer;
- (void)resetWhatsNewInPrivateBrowsingStartPageModule;
- (void)restoreInterfaceAfterElementFullscreen;
- (void)rootViewControllerViewDidTransitionFromSize:(CGSize)a3 animated:(BOOL)a4;
- (void)rootViewControllerViewTransitionFromSize:(CGSize)a3 includingSidebar:(BOOL)a4 animated:(BOOL)a5;
- (void)rootViewControllerViewWillTransitionToSize:(CGSize)a3;
- (void)saveToFilesOperation:(id)a3 didFinishWithSuccess:(BOOL)a4;
- (void)saveToFilesOperation:(id)a3 presentViewController:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)scene:openURLContexts:;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)screenshotService:(id)a3 generatePDFRepresentationWithCompletion:(id)a4;
- (void)scribbleDoneKeyPressed;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setActiveAudioPlayingTabWithUUID:(id)a3 tabGroupUUID:(id)a4;
- (void)setActiveProfileIdentifier:(id)a3;
- (void)setAppBannerPinnedToTop:(BOOL)a3 forTabDocument:(id)a4;
- (void)setCookiePolicyMessageReceived;
- (void)setCurrentBookmarksCollection:(id)a3;
- (void)setCurrentContinuousReadingItem:(id *)a1;
- (void)setFavoritesAreEmbedded:(BOOL)a3 animated:(BOOL)a4;
- (void)setFavoritesFieldFocused:(BOOL)a3 forVoiceSearch:(BOOL)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)setFavoritesState:(int64_t)a3 forVoiceSearch:(BOOL)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)setKeepBarsMinimized:(BOOL)a3;
- (void)setNeedsFocusUpdate;
- (void)setNeedsSnapshotUpdateForActiveTabIfTabIsBlank;
- (void)setPrivateBrowsingEnabled:(BOOL)a3;
- (void)setReaderShouldBeShownIfPossible:(BOOL)a3;
- (void)setShowingCrashBanner:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowingReader:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowingReader:(BOOL)a3 animated:(BOOL)a4 forTabDocument:(id)a5 completion:(id)a6;
- (void)setUpWithURL:(id)a3 launchOptions:(id)a4;
- (void)setUsesNarrowLayout:(BOOL)a3;
- (void)setView:(unint64_t)a3 visible:(BOOL)a4;
- (void)setWebView:(uint64_t)a1;
- (void)setWebViewFromTabDocument:(void *)a1;
- (void)shareCurrentPage:(id)a3;
- (void)shareDidUpdateForTabGroupWithUUID:(id)a3;
- (void)showBars;
- (void)showBookmarksPanelWithNonAnimatedTransitionWithCollection:(id)a3;
- (void)showBookmarksViewModeCompactSelected;
- (void)showBookmarksViewModeLargeSelected;
- (void)showCrashBanner:(id)a3 animated:(BOOL)a4;
- (void)showExtensionPermissionBannerForExtensions:(id)a3;
- (void)showManageExtensions:(id)a3;
- (void)showPopupOrPerSitePermissionsForWebExtension:(id)a3 forTab:(id)a4;
- (void)showReadingListAutomaticArchiveAlertIfNeededWithCompletion:(id)a3;
- (void)showSettingsForCurrentPage:(id)a3;
- (void)siriReadThisMenuInvocation;
- (void)siriReadThisVocalInvocation;
- (void)snapshotTabDocument:(id)a3 size:(CGSize)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)statusBarHeightChanged;
- (void)switchFromTabDocument:(id)a3 toTabDocument:(id)a4;
- (void)switchToProfileKeyPressed:(id)a3;
- (void)switchToTabKeyPressed:(id)a3;
- (void)switchToTabWithUUID:(id)a3 inWindowWithUUID:(id)a4 forTabGroupWithUUID:(id)a5;
- (void)tabBarManager:(id)a3 didCreateTabBar:(id)a4;
- (void)tabBarManagerDidUpdateDisplayMode:(id)a3;
- (void)tabCollectionViewDidDismiss:(id)a3;
- (void)tabCollectionViewWillDismiss:(id)a3;
- (void)tabCollectionViewWillPresent:(id)a3;
- (void)tabController:(id)a3 didSwitchFromTabDocument:(id)a4 toTabDocument:(id)a5;
- (void)tabController:(id)a3 didSwitchFromTabGroup:(id)a4;
- (void)tabControllerDocumentCountDidChange:(id)a3;
- (void)tabDocument:(id)a3 didChangePIPState:(BOOL)a4;
- (void)tabDocument:(id)a3 didClearLibraryType:(id)a4;
- (void)tabDocument:(id)a3 didCreateNewTabDocument:(id)a4;
- (void)tabDocument:(id)a3 didCreatePreviewDocument:(id)a4;
- (void)tabDocument:(id)a3 didDetectReaderAvailability:(BOOL)a4;
- (void)tabDocument:(id)a3 didExtractArticleText:(id)a4 withMetadata:(id)a5;
- (void)tabDocument:(id)a3 didFinishLoadingWithError:(BOOL)a4;
- (void)tabDocument:(id)a3 didReceiveAssistantContentOptions:(unint64_t)a4;
- (void)tabDocument:(id)a3 dismissViewControllerAnimated:(id)a4;
- (void)tabDocument:(id)a3 presentViewControllerAnimated:(id)a4;
- (void)tabDocumentCommitPreviewedDocument:(id)a3;
- (void)tabDocumentCommitPreviewedDocumentAsNewTab:(id)a3 inBackground:(BOOL)a4;
- (void)tabDocumentDidAddAlert:(id)a3;
- (void)tabDocumentDidCancelRedirectToExternalApplication:(id)a3;
- (void)tabDocumentDidChangeCanStopLoadingState:(id)a3;
- (void)tabDocumentDidChangeMediaState:(id)a3 needsUpdateGlobalAudioState:(BOOL)a4;
- (void)tabDocumentDidChangeSafeAreaShouldAffectObscuredInsets:(id)a3;
- (void)tabDocumentDidCommitNavigation:(id)a3;
- (void)tabDocumentDidCompleteCheckForAppBanner:(id)a3;
- (void)tabDocumentDidDimissPreviewedDocument:(id)a3;
- (void)tabDocumentDidStartLoading:(id)a3;
- (void)tabDocumentDidUpdateBackForward:(id)a3;
- (void)tabDocumentDidUpdateIsScribbling:(id)a3;
- (void)tabDocumentDidUpdateShowingContinuous:(id)a3;
- (void)tabDocumentDidUpdateTabCollectionItem:(id)a3;
- (void)tabDocumentDidUpdateTitle:(id)a3;
- (void)tabDocumentDidUpdateURL:(id)a3;
- (void)tabDocumentFluidProgressRocketAnimationDidComplete:(id)a3;
- (void)tabDocumentShouldBecomeActive:(id)a3;
- (void)tabDocumentShouldCloseAndSwitchToParentTab:(id)a3;
- (void)tabDocumentWillBeginDragSession:(id)a3;
- (void)tabDocumentWillDisableLinkPreview;
- (void)tabDocumentWillDismissInlineDialog:(id)a3;
- (void)tabDocumentWillEndDragSession:(id)a3;
- (void)tabDocumentWillShowInlineDialog:(id)a3;
- (void)tabGroupManager:(id)a3 didFinishAcceptingTabGroupShareWithMetadata:(id)a4 result:(int64_t)a5;
- (void)tabGroupManager:(id)a3 didUpadateActiveParticipants:(id)a4 inTabGroupWithUUID:(id)a5;
- (void)tabGroupManager:(id)a3 didUpdateProfileWithIdentifier:(id)a4 difference:(id)a5;
- (void)tabGroupManager:(id)a3 didUpdateTabGroupWithUUID:(id)a4;
- (void)tabGroupManager:(id)a3 selectProfileIdentifierForShareMetadata:(id)a4 completionHandler:(id)a5;
- (void)takeFindStringKeyPressed;
- (void)toggleAllPrivateWindowsLocked:(id)a3;
- (void)toggleAlwaysShowBookmarksBarMessageReceived;
- (void)toggleBookmarksPresentationWithCollection:(void *)a3 completion:;
- (void)toggleBookmarksViewFolderModeSeparatedSelected;
- (void)toggleContentBlockers:(id)a3;
- (void)toggleDownloadsKeyPressed;
- (void)togglePinningCurrentTab;
- (void)togglePrivateBrowsingEnabled;
- (void)toggleShowWebpageStatusBar;
- (void)toggleShowingFavoritesBarKeyPressed;
- (void)toggleShowingReaderForUserAction;
- (void)toggleTabMediaState:(id)a3;
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
- (void)updateFocusForTab:(id)a3 webViewCanTakeFocus:(BOOL)a4;
- (void)updateFocusIfNeeded;
- (void)updateInsetsForBackgroundWebView:(id)a3;
- (void)updateInterface;
- (void)updateJavaScriptPreferences;
- (void)updatePopoverPositionAfterSizeTransition;
- (void)updatePresenceForActiveUser;
- (void)updatePrivateBrowsingAvailabilityWithCompletionHandler:(id)a3;
- (void)updatePullToRefreshIsEnabled;
- (void)updateScrollToTopView;
- (void)updateSearchEngineIfNeeded;
- (void)updateShowingTabBarAnimated:(BOOL)a3;
- (void)updateSpeculativeLoadingPreferences;
- (void)updateTabGroupButtonsVisibility;
- (void)updateTabGroupHeading;
- (void)updateTabOverviewButton;
- (void)updateTabViewPinchRecognizer;
- (void)updateUnifiedBarVisibility;
- (void)updateUsesTabBar;
- (void)updateViewsAfterStatusBarChange;
- (void)updateWebViewObscuredInsets;
- (void)userDefaultsDidChangeValueForKey:(id)a3;
- (void)validateCommand:(id)a3;
- (void)validateExtensionToolbarItemsInWindow:(id)a3;
- (void)webClipCacheDidChange;
- (void)webExtensionButtonTapped:(id)a3 extension:(id)a4;
- (void)webExtensionWasRemotelyEnabled:(id)a3;
- (void)webExtensionsButtonTapped:(id)a3;
- (void)webViewDidFirstVisuallyNonEmptyLayoutForTabDocument:(id)a3;
- (void)willDismissBrowsingAssistantInSheet:(BOOL)a3;
- (void)willEnterForeground;
- (void)willPresentBrowsingAssistantInSheet:(BOOL)a3;
- (void)willResignActive;
- (void)willStartLoadFromUserTap:(id)a3;
- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
- (void)windowScene:(id)a3 userDidAcceptCloudKitShareWithMetadata:(id)a4;
- (void)writePrivateBrowsingEnabled:(BOOL)a3;
@end

@implementation BrowserController

+ (WKProcessPool)newProcessPool
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = objc_alloc_init(MEMORY[0x277CE3890]);
  v5 = [MEMORY[0x277CCA8D8] safari_safariInjectedBundleURL];
  [v4 setInjectedBundleURL:v5];

  v18[0] = *MEMORY[0x277CDB9F0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [v4 setCachePartitionedURLSchemes:v6];

  [v4 setShouldCaptureAudioInUIProcess:{objc_msgSend(v3, "BOOLForKey:", *MEMORY[0x277D29298])}];
  [v4 setPrewarmsProcessesAutomatically:1];
  [v4 setUsesWebProcessCache:1];
  [v4 setJITEnabled:{objc_msgSend(v3, "BOOLForKey:", *MEMORY[0x277D4A198]) ^ 1}];
  v7 = [objc_alloc(MEMORY[0x277CE3820]) _initWithConfiguration:v4];
  v8 = [MEMORY[0x277D7B590] sharedWebFilterSettings];
  v9 = [v8 isWebFilterEnabled];

  if (v9)
  {
    v10 = [MEMORY[0x277CDB8A8] sharedInstance];
    v11 = [v10 engines];
    [(WKProcessPool *)v7 _setObject:v11 forBundleParameter:*MEMORY[0x277D4A9E8]];
  }

  if ([*MEMORY[0x277D76620] launchedToTest])
  {
    [(WKProcessPool *)v7 _setObject:MEMORY[0x277CBEC38] forBundleParameter:@"launchedToTest"];
  }

  SafariShared::ReaderAvailabilityController::configureProcessPool(v7, v12);
  v13 = [v3 stringForKey:@"JavaScriptConsoleOutputPath"];
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

  [(BrowserController *)a1 _sendABGroupIdentifierToProcessPool:v7];

  return v7;
}

- (void)updateSpeculativeLoadingPreferences
{
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (![v4 BOOLForKey:@"SpeculativeLoading"])
  {
    self->_isSpeculativeLoadingEnabled = 0;
    goto LABEL_5;
  }

  v3 = [(BrowserController *)self configuration];
  self->_isSpeculativeLoadingEnabled = [v3 allowsSpeculativeLoading];

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
  if (a1)
  {
    v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [*(a1 + 856) _setMockCaptureDevicesEnabled:{objc_msgSend(v2, "BOOLForKey:", *MEMORY[0x277D29210])}];
    [*(a1 + 856) _setMediaCaptureRequiresSecureConnection:{objc_msgSend(v2, "BOOLForKey:", *MEMORY[0x277D291A8]) ^ 1}];
    [*(a1 + 856) _setEnumeratingAllNetworkInterfacesEnabled:{objc_msgSend(v2, "BOOLForKey:", *MEMORY[0x277D29200])}];
    [*(a1 + 856) _setICECandidateFilteringEnabled:{objc_msgSend(v2, "BOOLForKey:", *MEMORY[0x277D291F8]) ^ 1}];
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
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  LOBYTE(v2) = [WeakRetained browserControllerShouldUpdateSnapshotForActiveTab:v2];

  return v2;
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
  if (!a1)
  {
    return;
  }

  if ((_SFDeviceIsPad() & 1) == 0)
  {
    v3 = *(a1 + 848);
    goto LABEL_6;
  }

  v5 = [a1 tabBarManager];
  v2 = [v5 displayMode];

  v3 = *(a1 + 848);
  if (!v2)
  {
LABEL_6:
    v4 = [MEMORY[0x277D75710] sf_bookmarkMenu];
    goto LABEL_7;
  }

  v4 = [*(a1 + 328) tabGroupsMenuForTabGroupButton:0];
LABEL_7:
  v6 = v4;
  [v3 setBarItem:3 menu:v4];
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

    v3 = [v1 configuration];
    v4 = [v3 allowsKeyboardCorrectionLearning];
    v5 = [MEMORY[0x277D75658] activeKeyboard];
    [v5 setCorrectionLearningAllowed:v4];

    v6 = [v1 configuration];
    [v1[33] setConfiguration:v6];

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

  v4 = [MEMORY[0x277D4A820] defaultManager];
  v5 = [(TabController *)self->_tabController startPageBackgroundImageIdentifier];
  v6 = [(BrowserController *)self activeProfile];
  v7 = [v4 imageForIdentifier:v5 forProfile:v6];

  if (v7)
  {
    v8 = [(BrowserController *)self configuration];
    [v8 barTintStyle];

    if ([v4 appearanceForImageWithIdentifier:v5 forProfile:v6] == 2)
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
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  -[WKPreferences setJavaScriptEnabled:](self->_wkPreferences, "setJavaScriptEnabled:", [v3 safari_isJavaScriptEnabled]);
  -[WKPreferences setJavaScriptCanOpenWindowsAutomatically:](self->_wkPreferences, "setJavaScriptCanOpenWindowsAutomatically:", [v3 safari_javaScriptCanOpenWindowsAutomatically]);
}

- (void)_observeInitializedWebKitFeatures
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [MEMORY[0x277CBEBD0] safari_standardUserDefaultsWithOptimizedKeyValueObserving];
    v11 = [v2 safari_resetWebKitExperimentalFeaturesIfNeeded:0];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [MEMORY[0x277CE3818] _features];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = *v13;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          if ([MEMORY[0x277CBEBD0] safari_shouldObserveWebKitFeature:v7])
          {
            v8 = [MEMORY[0x277CBEBD0] safari_keyForWebKitFeature:v7];
            if ((v11 & 1) == 0)
            {
              v9 = [v2 objectForKey:v8];
              v10 = v9 == 0;

              if (!v10)
              {
                [*(a1 + 856) _setEnabled:objc_msgSend(v2 forFeature:{"BOOLForKey:", v8), v7}];
              }
            }

            [v2 addObserver:a1 forKeyPath:v8 options:1 context:webFeatureObserverContext];
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }
  }
}

- (void)updateApplePayPreferences
{
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  -[WKPreferences _setApplePayCapabilityDisclosureAllowed:](self->_wkPreferences, "_setApplePayCapabilityDisclosureAllowed:", [v3 BOOLForKey:*MEMORY[0x277D291B0]]);
}

- (_SFPerSitePreferencesVendor)perSitePreferencesVendor
{
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  v3 = [WeakRetained perSitePreferencesVendor];

  return v3;
}

- (void)createProfileWindow
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 744));
    v2 = objc_alloc(MEMORY[0x277D7B550]);
    v3 = [a1 windowState];
    v4 = *(a1 + 792);
    v5 = [WeakRetained frontmostProfileIdentifier];
    v6 = [v2 initWithWindowState:v3 tabGroupManager:v4 preferredProfileIdentifier:v5];
    v7 = *(a1 + 232);
    *(a1 + 232) = v6;

    [*(a1 + 232) setCanSwitchProfiles:1];
    [*(a1 + 232) setDelegate:a1];
    v8 = [*(a1 + 328) unnamedTabGroupDisplayTitleProvider];
    [*(a1 + 232) setUnnamedTabGroupDisplayTitleProvider:v8];

    [WeakRetained setFrontmostProfileIdentifier:0];
  }
}

- (BOOL)isInDefaultProfile
{
  v2 = [(BrowserController *)self activeProfileIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277D49BD8]];

  return v3;
}

- (WBProfile)effectiveProfile
{
  tabGroupManager = self->_tabGroupManager;
  v3 = [(BrowserController *)self effectiveProfileIdentifier];
  v4 = [(WBTabGroupManager *)tabGroupManager profileWithIdentifier:v3];

  return v4;
}

- (void)_readSavedState
{
  if (a1)
  {
    v2 = +[Application sharedApplication];
    if ([v2 isRunningPPT] && !objc_msgSend(v2, "shouldRestoreStateForPPT"))
    {
      [*(a1 + 328) openInitialBlankTabDocumentIfNeeded];
    }

    else
    {
      *(a1 + 89) = [*(a1 + 328) readState];
    }
  }
}

- (unint64_t)_shouldShowTabBar
{
  v1 = a1;
  if (a1)
  {
    if ((a1[709] & 1) != 0 || ([a1 tabBarManager], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "standaloneTabBar"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
    {
      v4 = [*(v1 + 328) currentTabs];
      v1 = [v4 count] > 1 || objc_msgSend(*(v1 + 104), "count") != 0;
    }

    else
    {
      return 0;
    }
  }

  return v1;
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
  v4 = [(BrowserController *)self browserWindowController];
  v5 = [v4 browserControllers];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = [(BrowserController *)*(*(&v10 + 1) + 8 * v8) _catalogViewController];
        [v9 clearCachedTabCompletionData];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v4 = [v3 hasCompletedLaunch];

  if (v4)
  {
    v5 = [(TabController *)self->_tabController activeTabGroupOrTabGroupVisibleInSwitcher];
    if ([v5 isSyncable])
    {
      tabGroupManager = self->_tabGroupManager;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __46__BrowserController_updateCollaborationButton__block_invoke;
      v7[3] = &unk_2781D6AE8;
      v7[4] = self;
      v8 = v5;
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
  v4 = [(BrowserController *)self effectiveProfileIdentifier];
  v5 = [v3 processPoolForProfileIdentifier:v4];

  return v5;
}

- (void)_prepareExtensionsForEffectiveProfile
{
  if (a1)
  {
    v6 = [a1 effectiveProfile];
    v1 = +[Application sharedApplication];
    v2 = [v6 identifierForExtensions];
    v3 = [v1 webExtensionsControllerForProfileServerID:v2];
    v4 = [MEMORY[0x277D28BF0] sharedProvider];
    [v4 setWebExtensionsController:v3];

    v5 = +[Application sharedApplication];
    [v5 loadExtensionsInProfileIfNecessary:v6];
  }
}

- (NSString)effectiveProfileIdentifier
{
  if (self->_privateBrowsingEnabled)
  {
    v2 = *MEMORY[0x277D49BD8];
  }

  else
  {
    v2 = [(BrowserController *)self activeProfileIdentifier];
  }

  return v2;
}

- (_SFBrowserWindowStateData)windowStateData
{
  v3 = objc_alloc(MEMORY[0x277D28F10]);
  v4 = [(NSUUID *)self->_UUID UUIDString];
  sceneID = self->_sceneID;
  v6 = [(BrowserController *)self activeProfileIdentifier];
  v7 = [v3 initWithUUIDString:v4 sceneID:sceneID profileIdentifier:v6];

  return v7;
}

- (void)updateViewsAfterStatusBarChange
{
  if (a1)
  {
    v31 = [a1[33] viewIfLoaded];
    if (v31)
    {
      v2 = a1[36];
      [v2 bounds];
      [v2 convertRect:0 toView:?];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      [v31 setNeedsLayout];
      [v31 layoutIfNeeded];
      [(BrowserController *)a1 _contentContainerViewFrameDidChange];
      if (([a1[117] _isInFullscreen] & 1) == 0)
      {
        [a1[36] bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        [a1[36] convertRect:0 fromView:{v4, v6, v8, v10}];
        v20 = v19;
        v22 = v21;
        [a1[36] contentInset];
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

        [a1[36] setBounds:{v25, v26, v16, v18}];
      }

      [(BrowserController *)a1 _updateContinuousReadingViewControllerFrame];
      [(BrowserController *)a1 _updateCurrentPageBannerViewIfNeeded];
      [a1 updateExposedScrollViewRect];
      [(BrowserController *)a1 _updateAppInfoOverlayFrame];
      v27 = [a1[33] navigationBar];
      [v27 layoutIfNeeded];

      WeakRetained = objc_loadWeakRetained(a1 + 46);
      [WeakRetained browserControllerLayOutCatalogView:a1];

      v29 = [(BrowserController *)a1 _catalogViewController];
      v30 = [v29 view];
      [v30 layoutIfNeeded];
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
  v3 = [WeakRetained statusBarManager];
  if ((([v3 isStatusBarHidden] & 1) != 0 || self->_scrollingStatusBar) && -[BrowserController _canScrollToTopInView:](self, self->_scrollView))
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
  v6 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [(BrowserController *)self activeProfileIdentifier];
  [v6 setObject:v3 forKey:*MEMORY[0x277D29030]];

  setPrimaryWindowEntityFromBrowserController(self);
  v7 = [MEMORY[0x277D28BF0] sharedProvider];
  [v7 clearCachedMenuForPersona:0];

  if (!self->_suppressWebExtensionEvents)
  {
    v8 = [(TabController *)self->_tabController activeTabDocument];
    v4 = [v8 webExtensionsController];
    v5 = [(BrowserController *)self activeWebExtensionWindow];
    [v4 didActivateWindow:v5];
  }
}

- (void)_updateTabGroupBanner
{
  if (a1)
  {
    v2 = +[LaunchStateController sharedController];
    v3 = [v2 hasCompletedLaunch];

    if (v3)
    {
      v4 = [a1[41] activeTabGroup];
      v5 = [a1[33] capsuleCollectionViewLayout];
      if (v5 && (v6 = [v4 isNamed], v5, (v6 & 1) != 0))
      {
        v7 = [a1[98] tabGroupBanner];
        if (!v7)
        {
          v7 = objc_alloc_init(MEMORY[0x277D28D80]);
          [a1[98] setTabGroupBanner:? animated:?];
        }

        [v7 setTabGroup:v4];
        objc_initWeak(&location, a1);
        v8 = MEMORY[0x277D750C8];
        v9 = *MEMORY[0x277D29128];
        v14 = MEMORY[0x277D85DD0];
        v15 = 3221225472;
        v16 = __42__BrowserController__updateTabGroupBanner__block_invoke;
        v17 = &unk_2781D6528;
        objc_copyWeak(&v18, &location);
        v10 = [v8 actionWithTitle:&stru_2827BF158 image:0 identifier:v9 handler:&v14];
        [v7 setTabGroupTapAction:{v10, v14, v15, v16, v17}];

        v11 = +[FeatureManager sharedFeatureManager];
        LOBYTE(v9) = [v11 areSharedTabGroupsEnabled];

        if (v9)
        {
          v12 = [v7 collaborationButton];

          if (!v12)
          {
            v13 = [a1 newCollaborationButton];
            [v7 setCollaborationButton:v13];
          }
        }

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      else
      {
        [a1[98] setTabGroupBanner:0 animated:0];
      }
    }
  }
}

- (void)updateTabOverviewButton
{
  v3 = [(BrowserRootViewController *)self->_rootViewController capsuleCollectionViewLayout];
  if (v3 && (v9 = v3, v4 = [(TabController *)self->_tabController hasUnreadTab], v9, v4))
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
    v5 = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__BrowserController_updateDynamicBarGeometry__block_invoke;
    v7[3] = &unk_2781D6270;
    v7[4] = self;
    v8 = v5;
    v9 = v4;
    v6 = v5;
    [v6 performBatchUpdates:v7];
  }
}

- (void)_initSubviews
{
  [(BrowserRootViewController *)self->_rootViewController safari_updateApplicationBackgroundStyle];
  v8 = [(BrowserRootViewController *)self->_rootViewController contentContainerView];
  [v8 setNextResponder:self parentFocusEnvironment:self];
  v3 = objc_alloc_init(ContinuousReadingViewController);
  continuousReadingViewController = self->_continuousReadingViewController;
  self->_continuousReadingViewController = v3;

  [(ContinuousReadingViewController *)self->_continuousReadingViewController setDelegate:self];
  v5 = [(ContinuousReadingViewController *)self->_continuousReadingViewController view];
  [v5 setClipsToBounds:0];
  v6 = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerView];
  if (![(BrowserController *)self _shouldUseNarrowLayout])
  {
    [v6 bounds];
    [v5 setFrame:?];
  }

  [v6 addSubview:v5];
  v7 = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
  [v7 setDelegate:self];

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
  v2 = [(BrowserRootViewController *)self->_rootViewController view];
  [v2 bounds];
  IsNarrow = SFWidthIsNarrow();

  return IsNarrow;
}

- (uint64_t)_updateDisableBarHiding
{
  OUTLINED_FUNCTION_8(a1);
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
  if (a1)
  {
    if ([*(a1 + 264) isViewLoaded])
    {
      [*(a1 + 264) updateSuppressesStandaloneTabBar];
      shouldUseTab = [(BrowserController *)a1 _shouldUseTabBar];
      if (*(a1 + 709) != shouldUseTab)
      {
        v3 = shouldUseTab;
        *(a1 + 709) = shouldUseTab;
        if (shouldUseTab)
        {
          v4 = objc_alloc_init(TabBar);
        }

        else
        {
          v4 = 0;
        }

        v9 = v4;
        [*(a1 + 264) setTabBar:?];
        [*(a1 + 944) setTabBar:v9];
        [a1 updateShowingTabBarAnimated:0];
        if (v3)
        {
          v5 = [*(a1 + 944) tabDragDropController];
          v6 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:v5];
          [(TabBar *)v9 addInteraction:v6];

          v7 = [objc_alloc(MEMORY[0x277D75468]) initWithDelegate:v5];
          [v7 setEnabled:1];
          [(TabBar *)v9 addInteraction:v7];

          v8 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:v5];
          [(TabBar *)v9 addInteraction:v8];
        }
      }
    }
  }
}

- (uint64_t)_shouldUseTabBar
{
  if (!a1)
  {
    return 0;
  }

  v2 = [MEMORY[0x277D28C70] sharedFeatureManager];
  if (![v2 showRectangularTabsInSeparateBar])
  {
    goto LABEL_8;
  }

  v3 = [a1 tabBarDisplayMode];

  if (v3 != 2)
  {
    return 0;
  }

  IsPad = _SFDeviceIsPad();
  if ((IsPad & 1) != 0 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "BOOLForKey:", *MEMORY[0x277D29098])))
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 bounds];
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
  if (a1)
  {
    if ([a1[33] usingUnifiedBar])
    {
      v2 = [a1 tabBarDisplayMode];
      v3 = [a1 tabBarManager];
      [v3 setDisplayMode:v2];
    }

    [(BrowserController *)a1 _updateUnifiedBarBackgroundVisibility];
  }
}

- (void)_updateUnifiedBarBackgroundVisibility
{
  if (a1)
  {
    if (([MEMORY[0x277D4A888] isLockdownModeEnabledForSafari] & 1) != 0 || (objc_msgSend(a1, "isShowingFavorites") & 1) == 0)
    {
      v4 = [MEMORY[0x277D49A08] isSolariumEnabled];
    }

    else
    {
      v2 = [a1 favoritesAreShowingInPopover];
      v3 = [MEMORY[0x277D49A08] isSolariumEnabled];
      v4 = v3;
      if ((v3 & 1) == 0 && (v2 & 1) == 0)
      {
        v6 = [a1 tabBarManager];
        v5 = [v6 displayMode];

        v4 = 2 * (v5 < 2);
      }
    }

    v7 = [a1[33] unifiedBar];
    [v7 setBackgroundVisibility:v4];
  }
}

- (void)_updateUsesNarrowLayout
{
  if (a1)
  {
    v2 = [*(a1 + 264) view];
    [v2 setNeedsLayout];

    v3 = [(BrowserController *)a1 contentContainerView];
    if (!*(a1 + 832))
    {
      v4 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:a1 action:sel__tabViewPinch_];
      v5 = *(a1 + 832);
      *(a1 + 832) = v4;

      [*(a1 + 832) setDelegate:a1];
      [*(a1 + 832) _setEndsOnSingleTouch:1];
      [v3 addGestureRecognizer:*(a1 + 832)];
      WeakRetained = objc_loadWeakRetained((a1 + 368));
      [WeakRetained updateTabViewPinchRecognizerForBrowserController:a1];
    }

    v7 = [*(a1 + 264) navigationBar];
    v8 = MEMORY[0x277D75D18];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __44__BrowserController__updateUsesNarrowLayout__block_invoke;
    v13 = &unk_2781D61F8;
    v14 = a1;
    v9 = v7;
    v15 = v9;
    [v8 performWithoutAnimation:&v10];
    [v9 setUsesNarrowLayout:{*(a1 + 708), v10, v11, v12, v13, v14}];
  }
}

- (id)contentContainerView
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 46);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserControllerContentContainerView:v1];
    }

    else
    {
      [v1[33] contentContainerView];
    }
    v1 = ;
  }

  return v1;
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
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 368));
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserControllerContentContainerViewFrameDidChange:a1];
    }
  }
}

- (BOOL)isShowingReader
{
  v2 = [(TabController *)self->_tabController activeTabDocument];
  v3 = [v2 isShowingReader];

  return v3;
}

- (BOOL)interfaceFillsScreen
{
  if ([(ContinuousReadingViewController *)self->_continuousReadingViewController isScrollingToNextContinuousDocument]|| [(BrowserRootViewController *)self->_rootViewController keepBarsMinimized])
  {
    return 0;
  }

  if ([(BrowserRootViewController *)self->_rootViewController usingLoweredBar])
  {
    v4 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    v5 = [v4 capsuleCollectionView];
    v6 = [v5 minimizationStyle];

    if (v6 == 1)
    {
      v7 = [(_SFPageFormatMenuController *)self->_pageFormatMenuController viewController];
      v8 = [v7 presentingViewController];

      if (!v8)
      {
        return 1;
      }
    }
  }

  if ([(BrowserRootViewController *)self->_rootViewController isInYttriumMode]|| [(BrowserController *)self fullScreenInPortrait]|| [(BrowserController *)self _isVerticallyConstrained])
  {
    return 1;
  }

  v10 = [(TabController *)self->_tabController activeTabDocument];
  v3 = [v10 isShowingReader];

  return v3;
}

- (BOOL)_isVerticallyConstrained
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 264) traitCollection];
  v2 = [v1 verticalSizeClass] == 1;

  return v2;
}

- (double)additionalContentHeightForBanners
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [*(a1 + 80) topBannerView];
  [v1 bounds];
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
    v10 = [v1[10] view];
    [v10 setFrame:{v3, v5, v7, v9}];
    return [(BrowserController *)v10 _updateContinuousReadingViewControllerFrame];
  }

  return result;
}

- (id)tabContentContainerView
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 46);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserControllerTabContentContainerView:v1];
    }

    else
    {
      [v1[33] contentContainerView];
    }
    v1 = ;
  }

  return v1;
}

- (uint64_t)_updateContinuousReadingViewControllerFrame
{
  OUTLINED_FUNCTION_8(a1);

  [v1[10] updateOuterScrollView];

  return [v1 updateContinuousPreviewViewFrame];
}

- (void)updateContinuousPreviewViewFrame
{
  v22 = [(ContinuousReadingViewController *)self->_continuousReadingViewController previewView];
  if (v22)
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

    [v22 setFrame:{v4 + v13, v21, v6 - (v13 + v17), v8 - (v11 + v15)}];
  }
}

- (void)_updateCurrentPageBannerViewIfNeeded
{
  if (a1)
  {
    v2 = [a1[10] currentItem];

    if (v2)
    {

      [(BrowserController *)a1 _updateCurrentPageBannerView];
    }
  }
}

- (BOOL)canShowProfileInNavigationBar
{
  v3 = [(BrowserController *)self hasMultipleProfiles];
  if (v3)
  {
    LOBYTE(v3) = ![(BrowserController *)self isPrivateBrowsingEnabled];
  }

  return v3;
}

- (BOOL)hasMultipleProfiles
{
  if (![MEMORY[0x277D49A08] isSafariProfilesEnabled])
  {
    return 0;
  }

  v3 = [(WBTabGroupManager *)self->_tabGroupManager profiles];
  v4 = [v3 count] > 1;

  return v4;
}

- (void)updateTabGroupButtonsVisibility
{
  v10 = +[FeatureManager sharedFeatureManager];
  v3 = [v10 isTabGroupButtonEnabled];

  if (v3)
  {
    if ([(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar])
    {
      v4 = [(SidebarUIProxy *)self->_sidebarUIProxy sidebarStyle]!= 0;
    }

    else
    {
      v4 = 1;
    }

    v11 = [(BrowserRootViewController *)self->_rootViewController view];
    v5 = [v11 _sf_hasLandscapeAspectRatio];
    v6 = ([(TabController *)self->_tabController isPrivateBrowsingEnabled]& v5) == 1 && [(BrowserController *)self tabBarDisplayMode]!= 2;
    v7 = [(TabController *)self->_tabController canRenameActiveTabGroup]|| v6 || [(BrowserController *)self canShowProfileInNavigationBar];
    [(_SFBarManager *)self->_barManager setBarItem:2 hidden:!v4 || !v7];
    barManager = self->_barManager;
    v9 = !v4 && [(BrowserRootViewController *)self->_rootViewController toolbarPlacement]== 0;
    [(_SFBarManager *)barManager setBarItem:3 hidden:v9];
  }
}

- (void)updateTabGroupHeading
{
  v2 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [v2 updateTabGroupHeading];
}

- (id)_catalogViewController
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 46);
    v1 = [WeakRetained browserControllerCatalogViewController:v1];
  }

  return v1;
}

- (BOOL)_animationsAreEnabled
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 904));
  v2 = [MEMORY[0x277D75D18] areAnimationsEnabled];
  if (WeakRetained)
  {
    v3 = v2;
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
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 904));
    if (WeakRetained)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __38__BrowserController__updateSceneTitle__block_invoke;
      v4[3] = &unk_2781D6A98;
      v4[4] = a1;
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
  v3 = [(BrowserController *)self activeProfileIdentifier];
  v4 = [(WBTabGroupManager *)tabGroupManager profileWithIdentifier:v3];

  return v4;
}

- (void)updateFavoritesForNewDocument
{
  if (![(TabController *)self->_tabController updatingTabGroupTabs])
  {
    [(BrowserController *)&self->super.super.super.isa _setLibraryForCatalogViewController];
    v12 = [(TabController *)self->_tabController activeTabDocument];
    v3 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
    if ([(BrowserController *)self isControlledByAutomation])
    {
      [(BrowserController *)self setFavoritesState:0];
    }

    else
    {
      if ([v12 isBlank] && (objc_msgSend(v12, "isPreparingForNewUserActivity") & 1) == 0)
      {
        [v3 resetFavorites];
        if (([(BrowserController *)&self->super.super.super.isa _wantsURLFieldAutoFocus]& 1) != 0 || [(BrowserController *)self isFavoritesFieldFocused])
        {
          v4 = 3;
        }

        else
        {
          v4 = 4;
        }

        if ([(BrowserController *)self _isStartPageOverriddenByExtensionInTabDocument:v12])
        {
          v5 = [v12 libraryType];
          if (v5)
          {
          }

          else if ([v12 isShowingStartPageOverriddenByExtension])
          {
            v4 = 0;
          }
        }

        v6 = [v12 libraryType];
        if (v6 || ![v12 isShowingManagedNewTabPage])
        {
        }

        else
        {
          v7 = [MEMORY[0x277D49A60] sharedController];
          v8 = [v7 managedNewTabPageState];

          if (v8 != 1)
          {
            v4 = 0;
          }
        }

        v9 = [(BrowserController *)self tabBarManager];
        if ([v9 displayMode] == 1)
        {
          v10 = 1;
        }

        else
        {
          v11 = [(BrowserController *)self tabBarManager];
          v10 = [v11 displayMode] == 2;
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
  if (a1)
  {
    v5 = [(BrowserController *)a1 _catalogViewController];
    v2 = [a1[41] activeTabDocument];
    v3 = [v2 libraryType];
    v4 = [v2 cloudTabDeviceID];
    [v5 setLibraryType:v3 cloudTabDeviceID:v4];
  }
}

- (uint64_t)_wantsURLFieldAutoFocus
{
  if (!a1 || ![a1 canAutoFocusURLField] || !objc_msgSend(MEMORY[0x277D75658], "isInHardwareKeyboardMode") || (objc_msgSend(a1[114], "isSelectingItem") & 1) != 0)
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
    v3 = [MEMORY[0x277CDB6E0] sharedController];
    v4 = [v3 shouldPerformPromptCheck];

    if (v4)
    {
      return 0;
    }
  }

  v7 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  v5 = [v7 presentationState] == 0;

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
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 46);
    v1 = [WeakRetained browserControllerNavigationBar:v1];
  }

  return v1;
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

  v7 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v8 = [v7 safari_BOOLForKey:@"ShowRecentSearches" defaultValue:1];

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (_SFDeviceIsPad())
  {
    return 0;
  }

  v9 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  v10 = [(BrowserController *)self catalogViewControllerShouldUsePopoverForCompletions:v9];

  if (v10)
  {
    return 0;
  }

  v13 = +[RecentWebSearchesController sharedController];
  v14 = [v13 recentWebSearchEntriesFilteredByTimeIntervalForDisplayInMainRecentSearchesView];

  if ([v14 count] && (-[TabController activeTabDocument](self->_tabController, "activeTabDocument"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "haveRestoredCompletionList"), v15, (v16 & 1) == 0))
  {
    v17 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
    v18 = [v17 queryString];
    v19 = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
    v20 = [v18 stringByTrimmingCharactersInSet:v19];
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
  if (a1)
  {
    v2 = [MEMORY[0x277CDB6E0] sharedController];
    if ([v2 shouldPerformPromptCheck])
    {
      if (!*(a1 + 696))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 904));
        v4 = [objc_alloc(MEMORY[0x277D75DA0]) initWithWindowScene:WeakRetained];
        v5 = *(a1 + 696);
        *(a1 + 696) = v4;

        v6 = [MEMORY[0x277D75348] systemBackgroundColor];
        [*(a1 + 696) setBackgroundColor:v6];

        [*(a1 + 696) setWindowLevel:*MEMORY[0x277D772B8] + -1.0];
        [*(a1 + 696) makeKeyAndVisible];
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __56__BrowserController__showDefaultBrowserSheetIfNecessary__block_invoke;
        v7[3] = &unk_2781D6890;
        v7[4] = a1;
        v8 = v2;
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
  v5 = [v4 allWebExtensionsControllers];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(BrowserController *)self viewControllerToPresentFrom];
        [v9 setViewControllerToPresentDialogsFrom:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  if (a1)
  {
    [a1[109] startObserving];
    v5 = [a1[41] activeTabDocument];
    if (v5)
    {
      [a1 updatePrivateBrowsingAvailabilityWithCompletionHandler:0];
      if ([v5 shouldObscureForDigitalHealth])
      {
        -[BrowserController _showDigitalHealthOverlayForTabDocument:withPolicy:animated:](a1, v5, [v5 policy], 1);
      }

      [a1[41] updateUsageTrackingInformationIfNecessary];
      v2 = MEMORY[0x277CBEB98];
      v3 = [a1[41] activeTabDocument];
      v4 = [v2 setWithObject:v3];
      [(BrowserController *)a1 _updateDigitalHealthOverlayForTabDocuments:v4];
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
  v2 = [(TabController *)self->_tabController activeTabGroupOrTabGroupVisibleInSwitcher];
  v3 = [v2 isPrivateBrowsing];

  return v3;
}

- (LibraryConfiguration)_libraryConfiguration
{
  if (a1)
  {
    v2 = objc_alloc_init(LibraryConfiguration);
    [(LibraryConfiguration *)v2 setNavigationIntentHandler:a1];
    [(LibraryConfiguration *)v2 setLinkPreviewProvider:a1];
    [(LibraryConfiguration *)v2 setTabGroupProvider:a1[41]];
    [(LibraryConfiguration *)v2 setLibraryItemOpenHandler:a1[41]];
    [(LibraryConfiguration *)v2 setBookmarksNavigationControllerDelegate:a1];
    WeakRetained = objc_loadWeakRetained(a1 + 93);
    v4 = [WeakRetained pinnedTabsManager];
    [(LibraryConfiguration *)v2 setPinnedTabsManager:v4];

    v5 = [a1[118] iconPool];
    [(LibraryConfiguration *)v2 setTabIconPool:v5];

    v6 = [a1[41] undoManager];
    [(LibraryConfiguration *)v2 setUndoManager:v6];

    v7 = a1[41];
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
  v2 = [(BrowserController *)self sidebarAction];
  v3 = [BarButton sidebarButtonWithPrimaryAction:v2];

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
  if (a1)
  {
    v14 = [a1[33] screenTimeOverlayViewController];
    if (v14)
    {
      v2 = [(BrowserController *)a1 _frameForScreenTimeOverlayViewControllerView];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v9 = [v14 view];
      [v9 setFrame:{v2, v4, v6, v8}];

      shouldShowTab = [(BrowserController *)a1 _shouldShowTabBar];
      v11 = 0.0;
      if (shouldShowTab)
      {
        +[TabBar defaultHeight];
      }

      [v14 setAdditionalVerticalSafeAreaMargin:v11];
      v12 = [a1[33] capsuleViewController];
      v13 = [v12 capsuleCollectionView];
      [v13 obscuredInsets];
      [v14 setAdditionalSafeAreaInsets:?];
    }
  }
}

- (void)_updateAppInfoOverlayFrame
{
  if (a1)
  {
    v2 = [*(a1 + 328) activeTabDocument];
    v23 = [v2 appBanner];

    v3 = [v23 overlayProvider];
    v4 = [v3 overlayViewController];
    v5 = [v4 view];

    if (v5)
    {
      [*(a1 + 288) bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = *(a1 + 264);
      [*(a1 + 936) bounds];
      [v14 obscuredInsetsWithComponents:10 forRect:*(a1 + 936) inCoordinateSpace:?];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      if ([MEMORY[0x277D49A08] isSolariumEnabled])
      {
        [v5 setLayoutMargins:{v16, v18, v20, v22}];
      }

      else
      {
        v7 = v7 + v18;
        v9 = v9 + v16;
        v11 = v11 - (v18 + v22);
        v13 = v13 - (v16 + v20);
      }

      [v5 setFrame:{v7, v9, v11, v13}];
    }
  }
}

- (void)updatePopoverPositionAfterSizeTransition
{
  v2 = [(BrowserController *)self viewControllerToPresentFrom];
  v5 = [v2 presentedViewController];

  v3 = [v5 popoverPresentationController];
  v4 = [v3 delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 updatePopoverPosition];
  }
}

- (uint64_t)_shouldShowBookmarksBar
{
  v1 = a1;
  if (a1)
  {
    v2 = [(BrowserController *)a1 contentContainerView];
    [v2 bounds];
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
      v1 = [(BrowserController *)v1 _prefersShowingBookmarksBar];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
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
  if (a1 && ([*(a1 + 936) _isInFullscreen] & 1) == 0)
  {
    v2 = [*(a1 + 328) activeTabDocument];
    v3 = [v2 view];

    [v3 setWebViewGeometryNeedsUpdate];
    if ((*(a1 + 114) & 1) != 0 || *(a1 + 152) == 1)
    {
      [v3 layoutIfNeeded];
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
  if (a1)
  {
    if ((*(a1 + 153) & 1) == 0)
    {
      *(a1 + 153) = 1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__BrowserController__setNeedsSnapshotUpdateForActiveTab__block_invoke;
      block[3] = &unk_2781D60B8;
      block[4] = a1;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (_SFSearchEngineInfo)activeSearchEngine
{
  v3 = [MEMORY[0x277CDB8A8] sharedInstance];
  v4 = [v3 defaultSearchEngineForPrivateBrowsing:self->_privateBrowsingEnabled];

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
  v3 = [(BrowserController *)self _bookmarksPresentationStyle];
  if (v3 - 1 >= 2)
  {
    if (!v3)
    {
      if ([(BrowserController *)self isPresentingModalBookmarksController]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        modalBookmarksController = self->_modalBookmarksController;
      }

      else
      {
        modalBookmarksController = 0;
      }

      v3 = modalBookmarksController;
    }
  }

  else if ([(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar])
  {
    v3 = [(BrowserController *)self _sidebarViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isPresentingModalBookmarksController
{
  v2 = [(ModalBookmarksPresenting *)self->_modalBookmarksController presentingViewController];
  v3 = v2 != 0;

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
  v3 = [(TabController *)self->_tabController activeTabDocument];
  [BrowserController updateFocusForTab:"updateFocusForTab:webViewCanTakeFocus:" webViewCanTakeFocus:?];
}

- (BOOL)_hasPresentedViewController
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 viewControllerToPresentFrom];
    v3 = [v2 presentedViewController];
    if (v3)
    {
      v1 = 1;
    }

    else
    {
      v4 = [v1 viewControllerToPresentFromNavigationBar];
      v5 = [v4 presentedViewController];
      v1 = v5 != 0;
    }
  }

  return v1;
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
  v10 = [(TabController *)self->_tabController activeTabDocument];
  [(NSDate *)self->_resignActiveDate timeIntervalSinceNow];
  if (v3 < -480.0)
  {
    [(BrowserController *)self showBars];
    v4 = [(BrowserRootViewController *)self->_rootViewController tabBar];
    v5 = [v10 tabBarItem];
    [v4 scrollToItem:v5 animated:0];

    [v10 stopAdvertisingProactiveActivityContent];
  }

  v6 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [v6 resume];

  [(BrowserController *)&self->super.super.super.isa _restoreDigitalHealthFunctionalityAfterAppTransition];
  v7 = [v10 appBanner];
  [(BrowserController *)self _setShowingAppBanner:v7 isShowing:1];

  if (!self->_suppressWebExtensionEvents)
  {
    v8 = [v10 webExtensionsController];
    v9 = [(BrowserController *)self activeWebExtensionWindow];
    [v8 didActivateWindow:v9];
  }

  [(BrowserController *)self updatePresenceForActiveUser];
}

- (uint64_t)_isWindowLockedForPrivateBrowsing
{
  if (!a1 || ![a1 isShowingPrivateTabs])
  {
    return 0;
  }

  v1 = +[Application sharedApplication];
  v2 = [v1 isPrivateBrowsingLocked];

  return v2;
}

- (BOOL)canBecomeFirstResponder
{
  isWindowLockedForPrivate = [(BrowserController *)self _isWindowLockedForPrivateBrowsing];
  v4 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([v4 presentationState] == 1)
  {

LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  v5 = [v4 presentationState];

  if (v5 == 2)
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
  if (a1)
  {
    v2 = [(BrowserController *)a1 _visibleAppBanner];
    [*(a1 + 264) setUsesFaintTopSeparator:v2 != 0];
  }
}

- (id)_visibleAppBanner
{
  if (a1)
  {
    v1 = [*(a1 + 328) activeTabDocument];
    v2 = [v1 appBanner];

    v3 = [v2 overlayProvider];
    if ([v3 isAvailable])
    {
      v4 = 0;
    }

    else
    {
      v4 = v2;
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
  v5 = [(TabController *)self->_tabController activeTabDocument];
  v3 = [v5 uuid];
  v4 = [v3 UUIDString];
  [(WBTabGroupManager *)tabGroupManager movePresenceForParticipantToTabWithUUID:v4];
}

- (int64_t)siriReaderPlaybackStateForActiveTab
{
  v3 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
  v4 = [v3 activeSiriReaderSessionIdentifier];

  v5 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
  v6 = [v5 activeSiriReaderSessionURL];
  v7 = [(TabController *)self->_tabController activeTabDocument];
  v8 = [v7 readerContext];
  v9 = [v8 readerURL];
  LOBYTE(self) = WBSIsEqual();

  if (self)
  {
    v10 = [MEMORY[0x277D28D48] sharedPlaybackController];
    v11 = [v10 nowPlayingContentIdentifier];
    v12 = [v11 isEqualToString:v4];

    if (v12)
    {
      v13 = [MEMORY[0x277D28D48] sharedPlaybackController];
      v14 = [v13 currentPlaybackState];

      v15 = [MEMORY[0x277D28D48] sharedPlaybackController];
      v16 = [v15 nowPlayingContentIdentifier];
      v17 = [v16 isEqualToString:v4];
      if (v14 == 3)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v14 = 1;
      }

      else
      {
        if (v14 == 3)
        {
          v19 = 3;
        }

        else
        {
          v19 = 0;
        }

        if ((v14 - 1) >= 2)
        {
          v14 = v19;
        }
      }
    }

    else
    {
      v14 = 3;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
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
  v3 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  v4 = [v3 unifiedField];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(BrowserController *)&self->super.super.super.isa _topNavigationBar];
    v6 = [v7 textField];
  }

  return v6;
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
    v8 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    v3 = [v8 capsuleCollectionView];
    v4 = [v3 selectedItemIsMinimized];

    if (v4)
    {
      [v8 transitionToState:0 animated:1 completionHandler:0];
    }

    v5 = [(BrowserController *)self tabBarManager];
    v6 = [v5 inlineTabBar];
    [v6 revealActiveItemIfNeeded];

    v7 = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
    [v7 attemptTransitionToState:1 animated:1];
  }
}

- (id)activeLibraryType
{
  v2 = [(TabController *)self->_tabController activeTabDocument];
  v3 = [v2 libraryType];

  return v3;
}

- (id)_topContinuousReadingBanner
{
  if (a1)
  {
    a1 = [a1[10] topBannerView];
    v1 = vars8;
  }

  return a1;
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
  if (!a1)
  {
    return 0.0;
  }

  v2 = [*(a1 + 264) refreshControl];
  if (v2)
  {
    [*(a1 + 288) contentOffset];
    v4 = v3;
    [*(a1 + 288) adjustedContentInset];
    v6 = -v4 - v5;
    if ([v2 isRefreshing])
    {
      [v2 bounds];
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
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 80) currentItem];
  v2 = v1 != 0;

  return v2;
}

- (void)_updateRefreshControlHeight
{
  if (a1)
  {
    if ((*(a1 + 322) & 1) != 0 || ![OUTLINED_FUNCTION_6_0() _isVerticalBouncing] || (v2 = objc_msgSend(OUTLINED_FUNCTION_6_0(), "isDragging"), refreshed = 0.0, (v2 & 1) == 0))
    {
      refreshed = [(BrowserController *)a1 _refreshControlHeight];
    }

    if (refreshed != *(a1 + 128))
    {
      *(a1 + 128) = refreshed;

      [(BrowserController *)a1 updateWebViewObscuredInsets];
    }
  }
}

- (void)_updateScribbleOverlayIfNeeded
{
  if (a1)
  {
    v7 = [a1[41] activeTabDocument];
    v2 = [v7 sfScribbleControllerIfLoaded];
    v3 = [v2 isScribbling];

    if (v3)
    {
      v4 = [v7 sfScribbleControllerIfLoaded];
      v5 = [a1 webView];
      v6 = [v5 scrollView];
      [v4 updateOverlayInScrollView:v6];
    }
  }
}

- (void)updateInterface
{
  if ([(BrowserRootViewController *)self->_rootViewController isViewLoaded])
  {
    [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerView];
    [(BrowserController *)&self->super.super.super.isa _updateCurrentContinuousReadingItem];
    v9 = [(TabController *)self->_tabController activeTabDocument];
    [v9 updateTabTitle];
    v3 = [(BrowserController *)self _animationsAreEnabled];
    [(BrowserController *)self _updateButtonsAnimatingTabBar:v3];
    [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
    [(BrowserController *)self _updateAppInfoOverlayFrame];
    [(BrowserRootViewController *)self->_rootViewController safari_updateApplicationBackgroundStyle];
    v4 = [v9 navigationBarItem];
    v5 = [(BrowserRootViewController *)self->_rootViewController tabBarManager];
    v6 = [v5 lockdownStatusBar];
    [v6 setNavigationBarItem:v4];

    v7 = [(TabController *)self->_tabController activeTabDocument];
    -[BrowserRootViewController setInYttriumMode:](self->_rootViewController, "setInYttriumMode:", [v7 inWebClipScope]);

    if ([(NSTimer *)self->_enterYttriumStateTimer isValid])
    {
      v8 = [v9 view];
      [v8 setInteractionHintPresented:0 animated:0];
    }
  }
}

- (void)_updateCurrentPageBannerView
{
  if (a1)
  {
    v13 = [a1[10] previousItemPreviewView];
    v2 = [a1[10] currentItem];
    v3 = a1[10];
    if (v2)
    {
      v4 = [v3 topBannerView];
      v5 = [v4 continuousReadingItem];
      v6 = [v5 isEqual:v2];

      if ((v6 & 1) == 0)
      {
        v7 = [a1 previousContinuousItemDocument];
        [a1 clearDocumentForContinuousReading:v7];

        v8 = [[ContinuousReadingPreviewView alloc] initWithContinuousReadingItem:v2 previewingNextDocument:0];
        [a1[10] setPreviousItemPreviewView:v8];

        [(BrowserController *)a1 _preparePreviousContinuousDocumentIfNeeded];
      }

      v9 = [a1[10] previousItemPreviewView];
      v10 = [v9 superview];
      v11 = a1[36];

      if (v10 != v11)
      {
        [a1[36] addSubview:v9];
      }

      [v9 setFrame:-[BrowserController _frameForCurrentPageBannerView](a1)];
    }

    else
    {
      [v3 setPreviousItemPreviewView:0];
    }

    v12 = [a1[10] previousItemPreviewView];

    if (v13 != v12)
    {
      [a1[33] updateWebViewSizeAttributes];
      [a1[10] updateOuterScrollView];
    }
  }
}

- (void)_updateCurrentContinuousReadingItem
{
  if (a1)
  {
    v11 = [a1[41] activeTabDocument];
    v2 = [a1 continuousReadingController];
    if ([v11 isShowingContinuous])
    {
      v3 = [v2 currentReadingListItem];
      [v2 nextReadingListItem];
      v5 = v4 = v3;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    [(BrowserController *)a1 setCurrentContinuousReadingItem:v4];
    v6 = [a1[10] previewView];
    v7 = [v6 continuousReadingItem];
    v8 = [v7 isEqual:v5];

    if ((v8 & 1) == 0)
    {
      v9 = [a1 nextContinuousItemDocument];
      [a1 clearDocumentForContinuousReading:v9];

      if (v5)
      {
        v10 = [[ContinuousReadingPreviewView alloc] initWithContinuousReadingItem:v5 previewingNextDocument:1];
      }

      else
      {
        v10 = 0;
      }

      [(BrowserController *)a1 _setContinuousReadingPreviewView:v10];
      [(BrowserController *)a1 _prepareTabDocumentForNextContinuousItemIfNeeded];
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
  if (a1 && !a1[20])
  {
    v2 = [a1 continuousReadingController];
    v13 = [v2 nextReadingListItem];

    v3 = v13;
    if (v13)
    {
      v4 = [v13 URL];
      if (v4)
      {
        v5 = [(BrowserController *)a1 _cachedDocumentForContinuousReadingItem:v13];
        v6 = a1[20];
        a1[20] = v5;

        v7 = a1[20];
        if (!v7)
        {
          v8 = [[TabDocument alloc] initForBackgroundLoadingWithBrowserController:a1 relatedWebView:0 webViewToCloneSessionStorageFrom:0];
          v9 = a1[20];
          a1[20] = v8;

          v7 = a1[20];
        }

        [v7 beginSuppressingProgressAnimation];
        [a1[20] setAllowsRemoteInspection:0];
        if ([a1 readerShouldBeShownIfPossible] && (objc_msgSend(a1[20], "readerWebView"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v11 = [a1[20] readerWebView];
        }

        else
        {
          v11 = [a1[20] webView];
        }

        [a1[10] didCreateWebViewForNextDocument:v11];
        if (([a1[20] suppressWebExtensionEvents] & 1) == 0)
        {
          v12 = [a1[20] webExtensionsController];
          [v12 didOpenTab:a1[20]];
        }
      }

      v3 = v13;
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
  v3 = [(TabController *)self->_tabController activeTabDocument];
  if ([(BrowserController *)self _isStartPageOverriddenByExtensionInTabDocument:v3])
  {
    if (![v3 isBlank])
    {
      v5 = 0;
      goto LABEL_7;
    }

    v4 = [v3 isShowingStartPageOverriddenByExtension];
  }

  else
  {
    v4 = [v3 isBlank];
  }

  v5 = v4;
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
  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v5 removeObserver:self];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  [(WKWebpagePreferences *)self->_defaultWebpagePreferences removeObserver:self forKeyPath:*MEMORY[0x277D4A278]];
  v7 = [MEMORY[0x277CBEBD0] safari_standardUserDefaultsWithOptimizedKeyValueObserving];
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

        [v7 removeObserver:self forKeyPath:*(*(&v14 + 1) + 8 * v11++)];
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
    v3 = [(BrowserRootViewController *)self->_rootViewController view];
    [v3 frame];
    v5 = v4;
    v7 = v6;

    [(BrowserController *)self rootViewControllerViewWillTransitionToSize:v5, v7];
    [(BrowserController *)self rootViewControllerViewTransitionFromSize:1 includingSidebar:0 animated:v5, v7];
    [(BrowserController *)self rootViewControllerViewDidTransitionFromSize:0 animated:v5, v7];
    self->_isRestoringInterfaceAfterElementFullscreen = 0;
  }
}

- (BOOL)_canScrollToTopInView:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
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
      v8 = [*(a1 + 264) dynamicBarAnimator];
      v9 = [v8 state] == 0;
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
  v3 = [MEMORY[0x277CBEAA8] date];
  resignActiveDate = self->_resignActiveDate;
  self->_resignActiveDate = v3;

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
      v2 = [val[33] traitCollection];
      v3 = [v2 userInterfaceStyle];

      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __54__BrowserController__flushPendingSnapshotsDidComplete__block_invoke;
      v4[3] = &unk_2781D6130;
      objc_copyWeak(v5, &location);
      v5[1] = v3;
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
  v2 = [(TabController *)self->_tabController allTabDocuments];
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5++) invalidateSourceApplication];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (BOOL)isAnyPageLoaded
{
  v2 = [(TabController *)self->_tabController windowState];
  v3 = [v2 localTabGroup];
  v4 = [v3 tabs];
  if ([v4 safari_containsObjectPassingTest:&__block_literal_global_8])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v2 privateTabGroup];
    v7 = [v6 tabs];
    v5 = [v7 safari_containsObjectPassingTest:&__block_literal_global_8];
  }

  return v5;
}

BOOL __36__BrowserController_isAnyPageLoaded__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];
  v3 = v2 != 0;

  return v3;
}

- (void)_setShowingAppBanner:(int)a3 isShowing:
{
  v6 = a2;
  if (a1)
  {
    [(BrowserController *)a1 _updateNavigationBarSeparator];
    if (v6)
    {
      if (([(BrowserController *)a1 _setShowingOverlayForBanner:v6 showing:a3]& 1) == 0)
      {
        if (a3)
        {
          v5 = v6;
        }

        else
        {
          v5 = 0;
        }

        [*(a1 + 784) setAppBanner:v5 animated:0];
      }
    }
  }
}

- (void)_showDigitalHealthOverlayForTabDocument:(uint64_t)a3 withPolicy:(uint64_t)a4 animated:
{
  v14 = a2;
  if (a1)
  {
    [v14 addMediaSuspensionReason:1];
    if ((*(a1 + 710) & 1) == 0)
    {
      v7 = [*(a1 + 944) tabThumbnailCollectionView];
      if ([v7 presentationState] == 1)
      {
        v8 = v7;
        goto LABEL_5;
      }

      v9 = [v7 presentationState];

      if (v9 == 2)
      {
        goto LABEL_8;
      }

      v10 = [(BrowserController *)a1 _isTabDocumentFrontMostForDigitalHealth:v14];

      if (v10)
      {
        v8 = [v14 URL];
        if (!v8)
        {
          goto LABEL_6;
        }

        [a1 showBars];
        v11 = [*(a1 + 936) firstResponder];
        [v11 resignFirstResponder];

        v7 = [(BrowserController *)a1 _screenTimeHostingViewControllerForTabDocument:v14];
        v12 = [v7 screenTimeOverlayViewController];
        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x277D28D30]);
          [v7 setScreenTimeOverlayViewController:v12];
        }

        [(BrowserController *)a1 _updateDigitalHealthViewFrame];
        v13 = [v12 showBlockingViewControllerForURL:v8 withPolicy:a3 animated:a4];
        [v14 setAssociatedBlockingViewController:v13];
        if (v13)
        {
          [(BrowserController *)a1 _insertScreenTimeLockoutShieldIntoContentViewForTab:v14 animated:a4];
        }

        [v14 dismissSiriReaderMediaSessionImmediately:0];

LABEL_5:
LABEL_6:
        v7 = v8;
LABEL_8:
      }
    }
  }
}

- (void)_updateDigitalHealthOverlayForTabDocuments:(void *)a1
{
  v35 = *MEMORY[0x277D85DE8];
  v20 = a2;
  if (a1 && [v20 count])
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
          v11 = [v10 safari_canonicalURL];

          if (v11)
          {
            [v3 addObject:v11];
            [v4 addObject:v9];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v6);
    }

    v12 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
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

          [v12 addPointer:{*(*(&v25 + 1) + 8 * j), v20}];
        }

        v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v14);
    }

    objc_initWeak(&location, a1);
    v17 = a1[109];
    v18 = [v3 allObjects];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__BrowserController__updateDigitalHealthOverlayForTabDocuments___block_invoke;
    v21[3] = &unk_2781D7088;
    objc_copyWeak(&v23, &location);
    v19 = v12;
    v22 = v19;
    [v17 getOverlayStateForURLs:v18 withCompletionHandler:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

- (void)loadURL:(id)a3
{
  v6 = a3;
  v4 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [v4 loadURL:v6 userDriven:0];
}

- (BOOL)showDemoModeFeatureDisabledAlert
{
  v3 = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  if (v3 && !self->_showingDemoModeAlert)
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

    v10 = [(BrowserController *)self viewControllerToPresentFrom];
    [v10 presentViewController:v6 animated:1 completion:0];
  }

  return v3;
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

- (void)_setShowingTabBar:(char)a3 animated:
{
  if (a1)
  {
    if ([a1[33] isShowingTabBar] != a2)
    {
      [a1[33] willToggleTabBar];
      v6 = [a1[33] tabBar];
      v7 = [(BrowserController *)a1 _catalogViewController];
      v8 = [v7 view];

      [v8 layoutIfNeeded];
      v9 = [a1[33] navigationBar];
      [v9 layoutIfNeeded];
      [a1[33] setShowingTabBar:a2];
      [v6 setHidesTitles:a2 ^ 1];
      [a1[117] layoutIfNeeded];
      v10 = MEMORY[0x277D75D18];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __48__BrowserController__setShowingTabBar_animated___block_invoke;
      v17 = &unk_2781D6180;
      v18 = a1;
      v11 = v6;
      v19 = v11;
      v12 = v9;
      v20 = v12;
      v13 = v8;
      v21 = v13;
      [(UIView *)0.25 safari_animate:v10 withDuration:a3 animations:&v14];
      [a1[33] didToggleTabBar];
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

- (void)setShowingCrashBanner:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(BannerController *)self->_bannerController crashBanner];
  v8 = v7;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = !v5;
  }

  if (!v9)
  {
    v10 = !v7 || !v5;
    v13 = v7;
    if (v10 || (v11 = [v7 messageType], v8 = v13, v11))
    {
      if (v5)
      {
        v12 = objc_alloc_init(MEMORY[0x277D28C30]);
      }

      else
      {
        v12 = 0;
      }

      [(BrowserController *)self showCrashBanner:v12 animated:v4];

      v8 = v13;
    }
  }
}

- (void)showCrashBanner:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(BannerController *)self->_bannerController crashBanner];
  if ((v10 == 0) == (v6 != 0) || (v7 = [v10 messageType], v7 != objc_msgSend(v6, "messageType")))
  {
    v8 = _SFBackdropGroupNameForOwner();
    [v10 setBackdropGroupName:v8];

    v9 = [v10 closeButton];
    [v9 addTarget:self action:sel__hideCrashBanner forControlEvents:64];

    [(BannerController *)self->_bannerController setCrashBanner:v10 animated:v4];
  }
}

- (int64_t)bookmarksPresentationStyleForViewOfSize:(CGSize)a3
{
  result = 0;
  if (a3.width > *MEMORY[0x277D29130] && a3.height >= 441.0)
  {
    if (a3.width <= 1366.0)
    {
      if (a3.width / a3.height <= 1.3)
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
  v2 = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
  v3 = [v2 canTransitionToState:0];

  return v3;
}

- (void)setUsesNarrowLayout:(BOOL)a3
{
  if (self->_usesNarrowLayout == !a3)
  {
    self->_usesNarrowLayout = a3;
    [(BrowserController *)self _updateUsesNarrowLayout];
  }
}

- (uint64_t)_shouldHideCatalogViewControllerForSizeChange
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[105];
    if (v2 <= 5)
    {
      if (((1 << v2) & 0x19) != 0)
      {
        v3 = [(BrowserController *)a1 _catalogViewController];
        if ([v3 isShowingCompletions])
        {
          LOBYTE(v1) = 1;
        }

        else
        {
          v4 = [v1 unifiedField];
          LOBYTE(v1) = [v4 isFirstResponder];
        }
      }

      else
      {
        LOBYTE(v1) = *(a1 + 473);
      }
    }
  }

  return v1 & 1;
}

- (void)_downloadsTotalProgressDidChange:(id)a3
{
  v7 = [MEMORY[0x277CDB7A8] sharedManager];
  [v7 totalProgress];
  v5 = v4;

  [(_SFBarManager *)self->_barManager setDownloadsItemProgress:v5];
  v8 = [(TabController *)self->_tabController activeTabDocument];
  v6 = [v8 unifiedTabBarItem];
  [v6 setDownloadProgress:1 animated:v5];
}

- (void)_downloadManagerDidFinishLastDownload:(id)a3
{
  v4 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  if ([v4 capsuleIsMinimized])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__BrowserController__downloadManagerDidFinishLastDownload___block_invoke;
    v5[3] = &unk_2781D60B8;
    v5[4] = self;
    [v4 transitionToState:0 animated:1 completionHandler:v5];
  }

  else
  {
    [(_SFBarManager *)self->_barManager pulseDownloadsItem];
  }
}

- (void)_hasUnviewedDownloadsDidChange:(id)a3
{
  v4 = [(TabController *)self->_tabController activeTabDocument];
  [v4 updateMenuButtonShowsBadge];

  [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
}

- (void)_updateButtonsAnimatingTabBar:(uint64_t)a1
{
  if (a1)
  {
    LODWORD(v2) = a2;
    v4 = [*(a1 + 944) tabThumbnailCollectionView];
    v5 = [v4 presentationState];

    if (v5)
    {
      v2 = 0;
    }

    else
    {
      v2 = v2;
    }

    [*(a1 + 944) updateTabViewsAnimatingTabBar:v2];
    v6 = [*(a1 + 328) activeTabDocument];
    v7 = *(a1 + 848);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__BrowserController__updateButtonsAnimatingTabBar___block_invoke;
    v9[3] = &unk_2781D61F8;
    v10 = v6;
    v11 = a1;
    v8 = v6;
    [v7 performCoalescedUpdatesAnimated:v2 updates:v9];
  }
}

- (uint64_t)_shouldShowSidebarForSizeChange
{
  v1 = a1;
  if (a1)
  {
    v2 = [*(a1 + 264) view];
    [v2 bounds];
    v1 = [(BrowserController *)v1 _shouldShowSidebarForSizeChangeToSize:v3, v4];
  }

  return v1;
}

- (uint64_t)_shouldShowSidebarForSizeChangeToSize:(double)a3
{
  if (result)
  {
    v5 = result;
    v6 = [*(result + 944) tabThumbnailCollectionView];
    if ([v6 presentationState] == 1)
    {

      return 0;
    }

    v7 = [v6 presentationState];

    if (v7 == 2)
    {
      return 0;
    }

    v8 = [v5 bookmarksPresentationStyleForViewOfSize:{a2, a3}];
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
      if (a2 <= a3)
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
  if (!a1 || ([a1 usesNarrowLayout] & 1) != 0)
  {
    return 0;
  }

  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v2 BOOLForKey:@"ShowSidebar"];

  return v1;
}

- (uint64_t)_shouldShowBarsForSizeChange
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v1 = [a1 viewControllerToPresentFrom];
  v2 = [v1 presentedViewController];
  v3 = [v2 childViewControllers];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v1 = a1;
  if (a1)
  {
    if ([*(a1 + 264) isInYttriumMode])
    {
      return 0;
    }

    v2 = *(v1 + 848);
    v3 = [v1 viewControllerToPresentFrom];
    v4 = [v3 presentedViewController];
    v5 = [v4 popoverPresentationController];
    LOBYTE(v2) = [v2 anyBarIsSourceForPopover:v5];

    if (v2)
    {
      return 0;
    }

    else
    {
      v6 = [*(v1 + 328) activeTabDocument];
      if ([v6 isBlank] & 1) != 0 || (objc_msgSend(v6, "hasQuickLookContent") & 1) != 0 || (objc_msgSend(v6, "shouldObscureForDigitalHealth"))
      {
        v1 = 0;
      }

      else
      {
        v8 = [v6 webView];
        v9 = [v8 scrollView];

        v1 = ([v9 isScrollEnabled] & 1) != 0 && (objc_msgSend(v9, "contentSize"), v11 = v10, objc_msgSend(v9, "bounds"), v13 = v12, v15 = v14, v17 = v16, v19 = v18, objc_msgSend(v9, "contentInset"), v21 = v15 + v20, v24 = v17 - (v22 + v23), v26.size.height = v19 - (v20 + v25), v26.origin.x = v13 + v22, v26.origin.y = v21, v26.size.width = v24, v11 > CGRectGetHeight(v26)) && *(v1 + 456) != 1 && -[BrowserController _isVerticallyConstrained](v1);
      }
    }
  }

  return v1;
}

- (void)_rootViewControllerViewTransitionFromSize:(uint64_t)a1 includingSidebar:(int)a2 animated:(uint64_t)a3
{
  if (a1)
  {
    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      v6 = [a1 _shouldUseNarrowLayout];
      v7 = v6 ^ SFWidthIsNarrow();
    }

    else
    {
      v7 = 1;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 368));
    v8 = [*(a1 + 264) view];
    [v8 frame];
    v10 = v9;
    v12 = v11;

    if ([a1 isPresentingModalBookmarksController] && objc_msgSend(a1, "bookmarksPresentationStyleForViewOfSize:", v10, v12) && (objc_msgSend(*(a1 + 144), "importHandler"), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
    {
      [a1 setPresentingModalBookmarksController:0 withExclusiveCollection:0 bookmarkUUIDString:0 animated:a3];
    }

    else if (([(BrowserController *)a1 _shouldHideCatalogViewControllerForSizeChange]& v7) == 1)
    {
      v14 = objc_alloc_init(CatalogViewControllerState);
      v15 = *(a1 + 440);
      *(a1 + 440) = v14;

      [*(a1 + 440) setFavoritesState:*(a1 + 840)];
      v16 = [(BrowserController *)a1 _catalogViewController];
      [v16 beginTransitionToNewSizeClassWithState:*(a1 + 440)];
      if ([a1 favoritesAreEmbedded])
      {
        [v16 dismissCompletionsForSizeClassTransition];
      }

      else
      {
        [a1 setFavoritesState:0];
        [WeakRetained browserController:a1 setCatalogViewController:0];
      }
    }

    if ((_SFDeviceIsPad() & 1) == 0)
    {
      [*(a1 + 168) dismissMenu];
    }

    v17 = objc_loadWeakRetained((a1 + 352));
    v18 = [v17 navigationController];
    v19 = [v18 presentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v17 dismissViewControllerAnimated:1 completion:0];
    }

    v21 = [*(a1 + 264) view];
    [v21 layoutIfNeeded];

    [a1 setUsesNarrowLayout:{objc_msgSend(a1, "_shouldUseNarrowLayout")}];
    v22 = [(BrowserController *)a1 tabContentContainerView];
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = *(a1 + 264);
    v32 = [v31 contentContainerView];
    [v31 sidebarObscuredInsetsForRect:v32 inCoordinateSpace:{v24, v26, v28, v30}];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v41 = [*(a1 + 328) activeTabDocument];
    v42 = [v41 view];
    [v42 setFrame:{v24 + v36, v26 + v34, v28 - (v36 + v40), v30 - (v34 + v38)}];

    if (a2 && ([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
    {
      [*(a1 + 768) setShowingSidebar:-[BrowserController _shouldShowSidebarForSizeChange](a1) completion:0];
    }

    [a1 updateContinuousPreviewViewFrame];
    [a1 updateDynamicBarGeometry];
    if ([(BrowserController *)a1 _shouldShowBarsForSizeChange])
    {
      [a1 showBars];
    }

    else if ([(BrowserController *)a1 _shouldHideBarsForSizeChange])
    {
      [(BrowserController *)a1 hideBarsForRotation];
    }

    [(BrowserController *)a1 _updateCurrentPageBannerViewIfNeeded];
    [(BrowserController *)a1 _updateContinuousReadingViewControllerFrame];
    [a1 updateExposedScrollViewRect];
    [*(a1 + 264) updateWebViewSizeAttributes];
    v43 = *(a1 + 709);
    [(BrowserController *)a1 updateUsesTabBar];
    [(BrowserController *)a1 _updateUnifiedBar];
    [a1 updateCollaborationButton];
    [WeakRetained browserControllerLayOutCatalogView:a1];
    v44 = [(BrowserController *)a1 _catalogViewController];
    [v44 updatePreferredContentSize];
    [v44 didUpdateObscuredInsetsForSizeTransition];
    v45 = [v44 view];
    [v45 layoutIfNeeded];

    v46 = [(BrowserController *)a1 _topNavigationBar];
    if (v46)
    {
      [v44 setNavigationBar:v46];
    }

    [v44 updateStartPageTopSpacing];
    [(BrowserController *)a1 _updateButtonsAnimatingTabBar:v43];
    v47 = [*(a1 + 264) view];
    [v47 layoutMargins];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = [*(a1 + 328) activeTabDocument];
    v57 = [v56 appBanner];
    [v57 setLayoutMargins:{v49, v51, v53, v55}];

    [(BrowserController *)a1 _updateAppInfoOverlayFrame];
    [a1 updateScrollToTopView];
    v58 = [*(a1 + 264) tabBar];
    v59 = [*(a1 + 328) activeTabDocument];
    v60 = [v59 tabBarItem];
    [v58 scrollToItem:v60 animated:0];

    if (([a1 _shouldUseNarrowLayout] & 1) == 0 && objc_msgSend(a1, "isShowingReader"))
    {
      [(BrowserController *)a1 _contentContainerViewFrameDidChange];
    }

    [(BrowserController *)a1 _updateDigitalHealthViewFrame];
    v61 = [*(a1 + 264) contentContainerView];
    [v61 layoutIfNeeded];

    [(BrowserController *)a1 updateWebViewObscuredInsets];
    [(BrowserController *)a1 _updateScribbleOverlayIfNeeded];
  }
}

- (void)hideBarsForRotation
{
  if (a1)
  {
    v1 = [*(a1 + 264) dynamicBarAnimator];
    [v1 setMinimumTopBarHeight:-1.79769313e308];
    [v1 attemptTransitionToState:0 animated:0];
  }
}

- (void)rootViewControllerViewWillTransitionToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

  v11 = [(BrowserRootViewController *)self->_rootViewController catalogViewController];
  obja = [v11 queryString];

  if ([obja length] && self->_rootViewWillChangeDimensions)
  {
    objc_storeStrong(&self->_queryStringWhilePerformingRootViewControllerSizeTransition, obja);
  }

  v12 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [v12 willUpdateObscuredInsetsForSizeTransition];

  v13 = [(TabController *)self->_tabController activeTabDocument];
  [v13 webViewWillChangeSize];

  v14 = [(BrowserRootViewController *)self->_rootViewController contentContainerView];
  [v14 layoutIfNeeded];
}

- (void)_setShowBookmarksBar:(uint64_t)a1
{
  if (a1)
  {
    v4 = [*(a1 + 264) bookmarksBar];
    v5 = v4;
    if (((v4 == 0) ^ a2))
    {
      v7 = v4;
    }

    else if (a2)
    {
      v6 = [BookmarksBarView alloc];
      v7 = [(BookmarksBarView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

      [(BookmarksBarView *)v7 setDelegate:a1];
      [(BookmarksBarView *)v7 setLinkPreviewProvider:a1];
      [(BookmarksBarView *)v7 setNavigationIntentHandler:a1];
      [(BookmarksBarView *)v7 setBrowserController:a1];
      [(BookmarksBarView *)v7 setButtonStyle:[(BrowserController *)a1 _bookmarksBarLabelButtonDisplayStyle]];
      [*(a1 + 264) setBookmarksBar:?];
    }

    else
    {
      [*(a1 + 264) setBookmarksBar:0];
      v7 = v5;
    }
  }
}

- (void)rootViewControllerViewTransitionFromSize:(CGSize)a3 includingSidebar:(BOOL)a4 animated:(BOOL)a5
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__BrowserController_rootViewControllerViewTransitionFromSize_includingSidebar_animated___block_invoke;
  v12[3] = &unk_2781D61A8;
  v12[4] = self;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v6 = _Block_copy(v12);
  v7 = [(BrowserRootViewController *)self->_rootViewController view];
  v8 = [v7 window];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([v9 presentationState] == 1)
  {

LABEL_4:
    goto LABEL_5;
  }

  v11 = [v9 presentationState];

  if (v11 != 2)
  {
    self->_isTrackingWebViewAnimatedResize = 1;
    v10 = [(BrowserController *)self webView];
    [v10 _beginAnimatedResizeWithUpdates:v6];
    goto LABEL_6;
  }

LABEL_5:
  v10 = [(BrowserController *)self webView];
  [v10 _resizeWhileHidingContentWithUpdates:v6];
LABEL_6:
}

void __88__BrowserController_rootViewControllerViewTransitionFromSize_includingSidebar_animated___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 112) = 0;
  [BrowserController _rootViewControllerViewTransitionFromSize:*(a1 + 56) includingSidebar:*(a1 + 57) animated:?];
  *(*(a1 + 32) + 112) = 1;
}

- (void)rootViewControllerViewDidTransitionFromSize:(CGSize)a3 animated:(BOOL)a4
{
  if (self->_isTrackingWebViewAnimatedResize)
  {
    self->_isTrackingWebViewAnimatedResize = 0;
    v9 = [(BrowserController *)self webView:a4];
    [v9 _endAnimatedResize];
  }

  [BrowserController rootViewControllerViewDidTransitionFromSize:? animated:?];
  [(BrowserController *)self _contentContainerViewFrameDidChange];
  [(BrowserController *)&self->super.super.super.isa _updateDigitalHealthViewFrame];
  [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
  v10 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [v10 appBanner];
  [v5 invalidateBannerLayout];

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
    v11 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
    [v11 endTransitionToNewSizeClassWithState:self->_catalogViewControllerStateForSizeChange];
    v7 = self->_catalogViewControllerStateForSizeChange;
    self->_catalogViewControllerStateForSizeChange = 0;
  }

  if ([(BrowserController *)self favoritesFieldShouldBeExpanded])
  {
    if (self->_queryStringWhilePerformingRootViewControllerSizeTransition)
    {
      v12 = [(BrowserController *)self unifiedField];
      [v12 setText:self->_queryStringWhilePerformingRootViewControllerSizeTransition];

      queryStringWhilePerformingRootViewControllerSizeTransition = self->_queryStringWhilePerformingRootViewControllerSizeTransition;
      self->_queryStringWhilePerformingRootViewControllerSizeTransition = 0;
    }

    v13 = [(BrowserController *)self unifiedField];
    [v13 becomeFirstResponder];
  }

  v14 = [(TabController *)self->_tabController activeTabDocument];
  [v14 webViewDidChangeSize];
}

- (CGSize)windowSize
{
  v2 = [(BrowserController *)self viewControllerToPresentFrom];
  v3 = [v2 view];
  [v3 bounds];
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

- (void)updateShowingTabBarAnimated:(BOOL)a3
{
  shouldShowTab = [(BrowserController *)self _shouldShowTabBar];

  [(BrowserController *)&self->super.super.super.isa _setShowingTabBar:a3 animated:?];
}

- (void)animateLinkImage:(CGImage *)a3 fromRect:(CGRect)a4 inView:(id)a5 toBarItem:(int64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self animateLinkImage:a3 fromRect:v14 inView:a6 toBarItem:{x, y, width, height}];
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

- (void)updatePrivateBrowsingAvailabilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[FeatureManager sharedFeatureManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__BrowserController_updatePrivateBrowsingAvailabilityWithCompletionHandler___block_invoke;
  v7[3] = &unk_2781D6248;
  objc_copyWeak(&v9, &location);
  v6 = v4;
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

- (void)_updatePrivateBrowsingAvailability:(BOOL)a3
{
  if (self->_privateBrowsingAvailable != a3)
  {
    self->_privateBrowsingAvailable = a3;
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
          v8 = [v7 defaultWebExtensionsController];
          [v8 didOpenWindow:self->_privateExtensionWindow];

          self->_firedExtensionOpenEventForPrivateWindow = 1;
        }
      }

      else
      {
      }
    }

    if (!a3 && self->_privateBrowsingEnabled)
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
    v10 = [(BrowserRootViewController *)self->_rootViewController tabSwitcherViewController];
    v11 = [(TabController *)self->_tabController activeTabGroup];
    [v10 setNeedsScrollToTabGroup:v11];

    v12 = [(BrowserController *)self bookmarksNavigationController];
    v13 = [v12 topHistoryViewController];
    [v13 updateClearHistoryButtonEnabled];
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

- (double)dynamicBarAnimator:(id)a3 minimumTopBarHeightForOffset:(double)a4
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
        return v7 - v8 - a4;
      }
    }
  }

  return v7;
}

- (BOOL)dynamicBarAnimator:(id)a3 canTransitionToState:(int64_t)a4 byDraggingWithOffset:(double)a5
{
  v9 = a3;
  if (a4 == 1)
  {
    v5 = ![(BrowserRootViewController *)self->_rootViewController keepBarsMinimized];
  }

  else if (!a4)
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
      v5 = v11 + v13 - MaxY - a5 > v15;
    }
  }

  return v5 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  if (self->_tabViewPinchRecognizer == a3)
  {
    v8 = [(UIScrollView *)self->_scrollView panGestureRecognizer];
    if (v8 == v6)
    {
      v7 = 1;
    }

    else
    {
      v9 = [(UIScrollView *)self->_scrollView pinchGestureRecognizer];

      if (v9 == v6)
      {
        v7 = 1;
        goto LABEL_10;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_2;
      }

      v8 = [v6 view];
      v10 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
      v11 = [v10 view];
      v7 = [v8 isDescendantOfView:v11];
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

- (void)_defaultSearchEngineDidChange:(id)a3
{
  v5 = +[Application sharedApplication];
  v4 = [(BrowserController *)self activeSearchEngine];
  [v5 setObject:v4 forInjectedBundleParameter:*MEMORY[0x277D4A9E0]];
}

- (void)_ABGroupIdentifierDidChange:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [Application sharedApplication:a3];
  v4 = [v3 allProcessPools];

  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v4);
        }

        [BrowserController _sendABGroupIdentifierToProcessPool:?];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (void)_sendABGroupIdentifierToProcessPool:(uint64_t)a1
{
  v5 = a2;
  objc_opt_self();
  if ([MEMORY[0x277D49A08] defaultSearchEngineMatchesExperiment])
  {
    v2 = MEMORY[0x277CCABB0];
    v3 = [MEMORY[0x277D4A0A0] shared];
    v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(v3, "trialABGroupIdentifier")}];
    [v5 _setObject:v4 forBundleParameter:*MEMORY[0x277D4A9D0]];
  }

  else
  {
    [v5 _setObject:0 forBundleParameter:*MEMORY[0x277D4A9D0]];
  }
}

+ (void)_sendABTestingEnabledStateToProcessPool:(uint64_t)a1
{
  v4 = a2;
  objc_opt_self();
  v2 = [MEMORY[0x277D49A08] defaultSearchEngineMatchesExperiment];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  [v4 _setObject:v3 forBundleParameter:*MEMORY[0x277D4A9D8]];
}

- (void)_trialABGroupIdentifierDidChange:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [Application sharedApplication:a3];
  v4 = [v3 allProcessPools];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [BrowserController _sendABGroupIdentifierToProcessPool:v8];
        [BrowserController _sendABTestingEnabledStateToProcessPool:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_tabViewPinch:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained handleTabViewPinchForBrowserController:self];
}

- (void)_updateScrollOffsetForReplacementWebView:(id *)a1
{
  v6 = a2;
  if (a1)
  {
    v3 = [a1[33] dynamicBarAnimator];
    [v3 attemptTransitionToState:1 animated:0];

    v4 = [(BrowserController *)a1 tabContentContainerView];
    [a1[33] navigationBarFrameInCoordinateSpace:v4];
    CGRectGetMaxY(v8);
    [v4 frame];
    CGRectGetMinY(v9);
    v5 = [v6 scrollView];
    [v5 contentOffset];
    [v5 setContentOffset:?];
  }
}

- (UIEdgeInsets)finalObscuredInsetsForScrollView:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  [(BrowserController *)self scrollViewWillEndDragging:v9 withVelocity:a5 targetContentOffset:x, y];
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

- (double)browserViewController:(id)a3 adjustedBottomObscuredInset:(double)a4
{
  v6 = [(ContinuousReadingViewController *)self->_continuousReadingViewController previewView];
  if (v6)
  {
    v7 = v6;
    v8 = [(ContinuousReadingViewController *)self->_continuousReadingViewController isCommittingToContinuousDocument];

    if (!v8)
    {
      [(_SFWebView *)self->_webView bounds];
      MaxY = CGRectGetMaxY(v24);
      webView = self->_webView;
      v11 = [(ContinuousReadingViewController *)self->_continuousReadingViewController previewView];
      [v11 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [(ContinuousReadingViewController *)self->_continuousReadingViewController previewView];
      [(_SFWebView *)webView convertRect:v20 fromView:v13, v15, v17, v19];
      v21 = MaxY - CGRectGetMinY(v25);

      if (v21 >= a4)
      {
        return v21;
      }

      else
      {
        return a4;
      }
    }
  }

  return a4;
}

- (uint64_t)_isStartPageOverriddenByExtensionInTabDocument:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v5 = [v3 webExtensionsController];
    if ([v3 isPrivateBrowsingEnabled] && (objc_msgSend(v5, "tabOverridePreferencesManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "shouldNewTabPageOverriddenByAnEnabledExtensionApplyInPrivateBrowsingWithUserDefaults:", v4), v6, (v7 & 1) == 0))
    {
      v9 = 0;
    }

    else
    {
      v8 = [v5 tabOverridePreferencesManager];
      v9 = [v8 isNewTabPageOverriddenByAnEnabledExtensionInUserDefaults:v4];

      [v4 setBool:v9 ^ 1 forKey:*MEMORY[0x277D29088]];
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
  if (!a1)
  {
    return 0;
  }

  v1 = [(BrowserController *)a1 _catalogViewController];
  if ([v1 isShowingCompletions])
  {
    v2 = 5;
  }

  else
  {
    v2 = 4;
  }

  return v2;
}

- (void)setFavoritesAreEmbedded:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(BrowserController *)self favoritesAreEmbedded]!= a3)
  {
    if ([(BrowserController *)self isFavoritesFieldFocused])
    {
      if (v5)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }
    }

    else if (v5)
    {
      v7 = [(BrowserController *)&self->super.super.super.isa _notFocusedEmbeddedState];
    }

    else
    {
      v7 = 0;
    }

    [(BrowserController *)self setFavoritesState:v7 animated:v4];
  }
}

- (void)setFavoritesFieldFocused:(BOOL)a3 forVoiceSearch:(BOOL)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v15 = a6;
  if ([(BrowserController *)self isFavoritesFieldFocused]== v8)
  {
    if (v15)
    {
      v15[2]();
    }
  }

  else
  {
    if ([(BrowserController *)self favoritesAreEmbedded])
    {
      if (v8)
      {
        v10 = 3;
      }

      else
      {
        v10 = [(BrowserController *)&self->super.super.super.isa _notFocusedEmbeddedState];
      }
    }

    else if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [(BrowserController *)self setFavoritesState:v10 forVoiceSearch:v7 animated:v6 completionHandler:v15];
    v11 = +[Application sharedApplication];
    if ((([v11 isRunningPPT] | !v8) & 1) == 0 && !v7 && !+[UniversalSearchFirstTimeExperienceViewController hasShownParsecFirstTimeUserExperience](UniversalSearchFirstTimeExperienceViewController, "hasShownParsecFirstTimeUserExperience"))
    {
      v12 = +[(WBSParsecDSession *)UniversalSearchSession];
      v13 = [v12 bag];
      v14 = [v13 isEnabled];

      if (!v14)
      {
        goto LABEL_17;
      }

      v11 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
      [v11 showUniversalSearchFirstTimeExperienceIfNotShowing];
    }
  }

LABEL_17:
}

- (void)cancelFavoritesAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(BrowserController *)self favoritesAreEmbedded])
  {
    if ([(BrowserController *)self favoritesState]== 3 && self->_shouldKeepKeyboardFocused)
    {
      v5 = self;
      v6 = 3;
    }

    else
    {
      v5 = self;
      v6 = 4;
    }
  }

  else
  {
    v5 = self;
    v6 = 0;
  }

  [(BrowserController *)v5 setFavoritesState:v6 animated:v3];
}

- (void)_bookmarksDidReload:(id)a3
{
  if (!self->_favoritesState)
  {
    [(BrowserController *)self updateFavoritesForNewDocument];
  }
}

- (void)_recentSearchesWereCleared:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [a3 userInfo];
  v20 = [v3 objectForKeyedSubscript:*MEMORY[0x277D4A358]];

  v4 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [v4 history];

  v6 = [MEMORY[0x277CBEB18] array];
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
        v10 = [(BrowserController *)self activeSearchEngine];
        v11 = [v9 searchString];
        v12 = [v10 searchURLForUserTypedString:v11];

        v13 = [v12 absoluteString];
        v14 = [v5 itemForURLString:v13];

        [v6 safari_addObjectUnlessNil:v14];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v15 = [v9 URLStrings];
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v16)
        {
          v17 = *v26;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = [v5 itemForURLString:*(*(&v25 + 1) + 8 * j)];
              [v6 safari_addObjectUnlessNil:v19];
            }

            v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v16);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  [v5 removeItemsInResponseToUserAction:v6];
  [(SearchStateCache *)self->_searchStateCache clearAllCachedSearchState];
}

- (void)_showNoRecentSearchesView:(id)a3
{
  v3 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [v3 showNoRecentSearchesViewIfNotShowing];
}

- (void)tabGroupManager:(id)a3 didUpdateTabGroupWithUUID:(id)a4
{
  v7 = a4;
  v5 = [(TabController *)self->_tabController activeTabGroupUUID];
  v6 = WBSIsEqual();

  if (v6)
  {
    [(BrowserController *)&self->super.super.super.isa _updateTabGroupBanner];
  }
}

- (void)participants:(id)a3 didJoinSharedTabGroupWithUUID:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(TabController *)self->_tabController activeTabGroup];
  v8 = [v7 uuid];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D28C80]);
    v11 = [v19 anyObject];
    v12 = [v11 safari_contact];
    v13 = [v10 initWithContact:v12];

    v14 = MEMORY[0x277CCACA8];
    v15 = _WBSLocalizedString();
    v16 = [v7 title];
    v17 = [v14 stringWithFormat:v15, v16];
    [v13 setMessageText:v17];

    v18 = [objc_alloc(MEMORY[0x277D28E48]) initWithContentViewController:v13];
    [v18 setDelegate:self];
    [(BrowserController *)self _presentToastViewControllerQueuingIfNecessary:v18];
  }
}

- (void)_presentToastViewControllerQueuingIfNecessary:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 544))
    {
      [*(a1 + 552) addObject:v3];
    }

    else
    {
      [(BrowserController *)a1 _actuallyPresentToastViewController:v3];
    }
  }
}

- (void)participants:(id)a3 didLeaveSharedTabGroupWithUUID:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(TabController *)self->_tabController activeTabGroup];
  v8 = [v7 uuid];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D28C80]);
    v11 = [v19 anyObject];
    v12 = [v11 safari_contact];
    v13 = [v10 initWithContact:v12];

    v14 = MEMORY[0x277CCACA8];
    v15 = _WBSLocalizedString();
    v16 = [v7 title];
    v17 = [v14 stringWithFormat:v15, v16];
    [v13 setMessageText:v17];

    v18 = [objc_alloc(MEMORY[0x277D28E48]) initWithContentViewController:v13];
    [v18 setDelegate:self];
    [(BrowserController *)self _presentToastViewControllerQueuingIfNecessary:v18];
  }
}

- (void)tabGroupManager:(id)a3 didUpadateActiveParticipants:(id)a4 inTabGroupWithUUID:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if ([(NSMapTable *)self->_cachedParticipantLists count])
  {
    v9 = [(TabController *)self->_tabController activeTabGroup];
    v10 = [v9 uuid];
    v11 = [v8 isEqual:v10];

    if (v11)
    {
      v12 = [v7 allObjects];
      v13 = [v12 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_146];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = [(NSMapTable *)self->_cachedParticipantLists objectEnumerator];
      v15 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
              objc_enumerationMutation(v14);
            }

            [*(*(&v30 + 1) + 8 * v17++) setContacts:v13];
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v15);
      }

      v18 = [(_SFBarManager *)self->_barManager collaborationButton];
      [(BrowserController *)&self->super.super.super.isa _updateParticipantsListForCollaborationButton:v18 contacts:v13];

      v19 = [(BannerController *)self->_bannerController tabGroupBanner];
      v20 = [v19 collaborationButton];
      [(BrowserController *)&self->super.super.super.isa _updateParticipantsListForCollaborationButton:v20 contacts:v13];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v21 = [(TabController *)self->_tabController cachedTabSwitcherShareConfigurationForTabGroup:v9, 0];
      v22 = [v21 allCollaborationButtons];

      v23 = [v22 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
              objc_enumerationMutation(v22);
            }

            [(BrowserController *)&self->super.super.super.isa _updateParticipantsListForCollaborationButton:v13 contacts:?];
          }

          while (v23 != v25);
          v23 = [v22 countByEnumeratingWithState:&v26 objects:v34 count:16];
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

- (void)_updateParticipantsListForCollaborationButton:(void *)a3 contacts:
{
  v7 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [(BrowserController *)a1 _participantsListForCollaborationView:v7];
    [v7 setDetailViewListContent:v6];
    [v6 setContacts:v5];
  }
}

- (void)_actuallyPresentToastViewController:(uint64_t)a1
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 544), a2);
    [*(a1 + 264) addToastViewController:v4];
    v5 = [v4 view];
    [v5 layoutIfNeeded];

    v6 = [*(a1 + 264) usingUnifiedBar];
    v7 = *(a1 + 264);
    if (v6)
    {
      v8 = [v7 unifiedBar];
      v9 = [v8 bottomAnchor];
      v10 = [v8 centerXAnchor];
    }

    else
    {
      if (![v7 usingLoweredBar])
      {
        v9 = 0;
        v10 = 0;
        goto LABEL_9;
      }

      v11 = [*(a1 + 264) view];
      v8 = [v11 safeAreaLayoutGuide];

      v10 = [v8 centerXAnchor];
      v12 = [*(a1 + 264) capsuleCollectionViewLayout];
      v13 = [v12 integerValue];

      if (v13 == 2)
      {
        v14 = [*(a1 + 264) topBackdrop];
        v9 = [v14 bottomAnchor];
      }

      else
      {
        v9 = [v8 topAnchor];
      }
    }

LABEL_9:
    v15 = [v4 view];
    v16 = [v15 topAnchor];
    v17 = [v16 constraintEqualToAnchor:v9 constant:{-[BrowserController _offsetToPositionToastViewControllerOffscreen:](a1, v4)}];
    v18 = *(a1 + 560);
    *(a1 + 560) = v17;

    v19 = MEMORY[0x277CCAAD0];
    v26[0] = *(a1 + 560);
    v20 = [v4 view];
    v21 = [v20 centerXAnchor];
    v22 = [v21 constraintEqualToAnchor:v10];
    v26[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    [v19 activateConstraints:v23];

    v24 = [*(a1 + 264) view];
    [v24 layoutIfNeeded];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __57__BrowserController__actuallyPresentToastViewController___block_invoke;
    v25[3] = &unk_2781D60B8;
    v25[4] = a1;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:1 response:v25 tracking:0 dampingRatioSmoothing:0.9 responseSmoothing:0.6 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.99];
  }
}

- (double)_offsetToPositionToastViewControllerOffscreen:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 view];
    [v5 frame];
    v7 = v6;

    v8 = [*(a1 + 264) capsuleCollectionViewLayout];
    v9 = [v8 integerValue];

    v10 = *(a1 + 264);
    if (v9 == 1)
    {
      v11 = [v10 view];
      [v11 safeAreaInsets];
      v13 = -v12;
    }

    else
    {
      v14 = [v10 usingUnifiedBar];
      v15 = *(a1 + 264);
      if (v14)
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

- (void)didAddTabWithUUID:(id)a3 title:(id)a4 inSharedTabGroupWithUUID:(id)a5 byParticipantWithRecordID:(id)a6
{
  v14 = a4;
  v9 = a5;
  v10 = a6;
  v11 = MEMORY[0x277CCACA8];
  v12 = _WBSLocalizedString();
  v13 = [v11 stringWithFormat:v12, v14];
  [(BrowserController *)self _presentAttributedSharedTabNoticeWithMessage:v13 forParticipantWithRecordID:v10 inSharedTabGroupWithUUID:v9];
}

- (void)_presentAttributedSharedTabNoticeWithMessage:(void *)a3 forParticipantWithRecordID:(void *)a4 inSharedTabGroupWithUUID:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [*(a1 + 328) activeTabGroup];
    v11 = [v10 uuid];
    v12 = [v9 isEqual:v11];

    if (v12)
    {
      v13 = *(a1 + 792);
      v14 = [*(a1 + 328) activeTabGroup];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __118__BrowserController__presentAttributedSharedTabNoticeWithMessage_forParticipantWithRecordID_inSharedTabGroupWithUUID___block_invoke;
      v15[3] = &unk_2781D62E0;
      v16 = v8;
      v17 = v7;
      v18 = a1;
      [v13 shareRecordForTabGroup:v14 completionHandler:v15];
    }
  }
}

- (void)didNavigateInTabWithUUID:(id)a3 title:(id)a4 inSharedTabGroupWithUUID:(id)a5 byParticipantWithRecordID:(id)a6
{
  v20 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(TabController *)self->_tabController activeTabDocument];
  v14 = [v13 uuid];
  v15 = [v14 UUIDString];
  v16 = [v15 isEqualToString:v20];

  if (v16)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = _WBSLocalizedString();
    v19 = [v17 stringWithFormat:v18, v10];
    [(BrowserController *)self _presentAttributedSharedTabNoticeWithMessage:v19 forParticipantWithRecordID:v12 inSharedTabGroupWithUUID:v11];
  }
}

- (void)didRemoveTabWithUUID:(id)a3 title:(id)a4 inSharedTabGroupWithUUID:(id)a5 byParticipantWithRecordID:(id)a6
{
  v14 = a4;
  v9 = a5;
  v10 = a6;
  v11 = MEMORY[0x277CCACA8];
  v12 = _WBSLocalizedString();
  v13 = [v11 stringWithFormat:v12, v14];
  [(BrowserController *)self _presentAttributedSharedTabNoticeWithMessage:v13 forParticipantWithRecordID:v10 inSharedTabGroupWithUUID:v9];
}

- (void)didChangeScopedFavoritesInSharedTabGroupWithUUID:(id)a3 byParticipantWithRecordID:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = _WBSLocalizedString();
  [(BrowserController *)self _presentAttributedSharedTabNoticeWithMessage:v7 forParticipantWithRecordID:v6 inSharedTabGroupWithUUID:v8];
}

- (void)didChangeBackgroundImageInSharedTabGroupWithUUID:(id)a3 byParticipantWithRecordID:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = _WBSLocalizedString();
  [(BrowserController *)self _presentAttributedSharedTabNoticeWithMessage:v7 forParticipantWithRecordID:v6 inSharedTabGroupWithUUID:v8];
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

- (void)dismissToastViewController:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__BrowserController_dismissToastViewController___block_invoke;
  v9[3] = &unk_2781D61F8;
  v9[4] = self;
  v10 = v4;
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

- (id)itemTitleForCloudSharingController:(id)a3
{
  v3 = [(TabController *)self->_tabController activeTabGroup];
  v4 = [v3 title];

  return v4;
}

- (void)cloudSharingController:(id)a3 failedToSaveShareWithError:(id)a4
{
  v4 = a4;
  v5 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [v4 safari_privacyPreservingDescription];
    objc_claimAutoreleasedReturnValue();
    [BrowserController cloudSharingController:failedToSaveShareWithError:];
  }
}

- (void)_setProgressSuppressingDocument:(uint64_t)a1
{
  v5 = a2;
  if (a1)
  {
    v4 = *(a1 + 240);
    if (v4 != v5)
    {
      [v4 endSuppressingProgressAnimation];
      objc_storeStrong((a1 + 240), a2);
      [*(a1 + 240) beginSuppressingProgressAnimation];
    }
  }
}

- (void)setFavoritesState:(int64_t)a3 forVoiceSearch:(BOOL)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v94 = a4;
  v9 = a6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke;
  aBlock[3] = &unk_2781D6330;
  v10 = v9;
  v147 = v10;
  v11 = _Block_copy(aBlock);
  if (self->_favoritesState == a3)
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
    [WeakRetained browserController:self willChangeToFavoritesState:a3];
  }

  favoritesState = self->_favoritesState;
  v15 = objc_alloc_init(MEMORY[0x277D49B60]);
  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_2;
  v142[3] = &unk_2781D6270;
  v91 = WeakRetained;
  v143 = v91;
  v144 = self;
  v145 = favoritesState;
  v89 = v15;
  [v15 setHandler:v142];
  v16 = objc_loadWeakRetained(&self->_scene);
  v103 = 0;
  v90 = v16;
  if (v6 && v16)
  {
    v103 = [v16 activationState] == 0;
  }

  v17 = [(BrowserController *)self browserViewControllerShouldTemporarilyHideBottomToolbar:self->_rootViewController];
  v92 = [(BrowserController *)self isShowingFavorites];
  v84 = [(BrowserController *)self isFavoritesFieldFocused];
  v85 = [(BrowserController *)self favoritesFieldShouldBeExpanded];
  self->_favoritesState = a3;
  v18 = [(BrowserController *)self browserViewControllerShouldTemporarilyHideBottomToolbar:self->_rootViewController];
  v102 = [(BrowserController *)self isShowingFavorites];
  v97 = [(BrowserController *)self isFavoritesFieldFocused];
  v100 = [(BrowserController *)self favoritesFieldShouldBeExpanded];
  if (a3 < 6)
  {
    self->_wantsUnifiedFieldFocused = 0x1000100uLL >> (8 * a3);
  }

  group = dispatch_group_create();
  if (v17 != v18)
  {
    v19 = [(BrowserRootViewController *)self->_rootViewController view];
    [v19 setNeedsLayout];
  }

  if (!v100)
  {
    [(BrowserController *)self clearSpeculativeLoadDocument];
  }

  if (v97)
  {
    dispatch_group_enter(group);
    v140[0] = MEMORY[0x277D85DD0];
    v140[1] = 3221225472;
    v140[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_3;
    v140[3] = &unk_2781D60B8;
    v141 = group;
    [(BrowserController *)self _dismissTransientUIAnimated:v103 dismissalOptions:1 completionHandler:v140];
  }

  v96 = [(BrowserController *)&self->super.super.super.isa _topNavigationBar];
  v20 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  v98 = [v20 view];
  v21 = [v20 popoverIsDismissing];
  v22 = [(BrowserController *)self _shouldUseNarrowLayout];
  v95 = [(BrowserController *)self favoritesAreShowingInPopover];
  v101 = [(TabController *)self->_tabController activeTabDocument];
  v23 = [v101 sfScribbleControllerIfLoaded];
  v24 = [v23 isScribbling];

  if (v24)
  {
    v25 = [v101 sfScribbleControllerIfLoaded];
    [v25 endScribblingAndSaveChanges:0];
  }

  if (((a3 != 4) & v102) != 0)
  {
    v26 = v101;
  }

  else
  {
    v26 = 0;
  }

  [(BrowserController *)self _setProgressSuppressingDocument:v26];
  if ([(BrowserController *)self shouldShowRecentSearches])
  {
    v27 = [v20 isShowingCompletions];
    v28 = v27;
    if (v92 == v102)
    {
      if (v27)
      {
LABEL_31:
        v31 = 0;
        v30 = 0;
        goto LABEL_65;
      }

LABEL_29:
      if ([(BrowserController *)self shouldShowRecentSearches])
      {
        [v20 showRecentSearches];
        v30 = 0;
        v31 = 1;
        goto LABEL_65;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (v92 == v102)
    {
      goto LABEL_29;
    }

    v28 = 0;
  }

  if (v20)
  {
    v29 = v95 ^ [v20 usesPopoverStyleForFavorites];
  }

  else
  {
    v29 = 1;
  }

  if ((v102 & v29) == 1)
  {
    if ([self->_cachedCatalogViewController usesPopoverStyleForFavorites]|| v95)
    {
      cachedCatalogViewController = self->_cachedCatalogViewController;
      self->_cachedCatalogViewController = 0;
    }

    v33 = [(BrowserController *)self createCatalogViewControllerIfNeeded];

    [v33 setUsesPopoverStyleForFavorites:v95];
    [v91 browserController:self setCatalogViewController:v33];
    v34 = [v33 view];

    v98 = v34;
    v20 = v33;
  }

  if (v102)
  {
    [v20 resetFavorites];
    v35 = [v20 startPageController];
    [v35 updatePrivacyReportIfEnabled];

    [v20 setNavigationBar:v96];
    [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
    if (!v95)
    {
      v36 = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerView];
      [v36 addSubview:v98];
    }

    [v91 browserControllerLayOutCatalogView:self];
    v37 = [(SearchStateCache *)self->_searchStateCache cachedCompletionListForTabDocument:v101];
    if (v37)
    {
      v38 = [(TabController *)self->_tabController activeTabDocument];
      [v38 setHaveRestoredCompletionList:1];

      if ([v37 shouldRestoreCachedCompletions])
      {
        v39 = WBS_LOG_CHANNEL_PREFIXOther();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_215819000, v39, OS_LOG_TYPE_INFO, "Restoring completions from the cache", buf, 2u);
        }

        [v37 setDelegate:v20];
        [v37 restoreCachedCompletions];
        [v20 setShowingCompletions:1];
        [v20 setCompletionList:v37];
        v40 = [v101 currentSearchQuery];
        if (v40)
        {
          v30 = 0;
        }

        else
        {
          v46 = [v101 currentSearchQueryAllowingQueryThatLooksLikeURL];
          v30 = v46 != 0;
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

    else if ((v28 & 1) == 0 && -[BrowserController shouldShowRecentSearches](self, "shouldShowRecentSearches") && [v101 isShowingStartPageOverriddenByExtension])
    {
      [v20 showRecentSearches];
      v30 = 0;
      v31 = 1;
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    [v98 setAlpha:!v103];
  }

  else
  {
    [v20 setHasScheduledCompletionListDismissal:1];
    if (((v22 | v21) & 1) == 0)
    {
      [v20 stopCompleting];
    }

    dispatch_group_enter(group);
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_177;
    v131[3] = &unk_2781D6358;
    v138 = v21;
    v132 = v20;
    v133 = self;
    v134 = group;
    v41 = v98;
    v135 = v41;
    v136 = v96;
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
  if ((v103 & v102 & 1) == 0)
  {
    [(BrowserController *)&self->super.super.super.isa _updateUnifiedBarBackgroundVisibility];
  }

LABEL_65:
  v47 = MEMORY[0x277D75D18];
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_4;
  v121[3] = &unk_2781D63A8;
  v124 = a3;
  v125 = v21;
  v48 = group;
  v122 = v48;
  v49 = v20;
  v123 = v49;
  v126 = v31;
  [v47 performWithoutAnimation:v121];
  v50 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  if (v50)
  {
    dispatch_group_enter(v48);
    if (v100)
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
    [v50 transitionToState:v51 animated:v103 completionHandler:v119];
  }

  if (((v31 | (![(BrowserController *)self _animationsAreEnabled]|| !v97)) & 1) == 0)
  {
    [v98 layoutIfNeeded];
  }

  v99 = [v96 textField];
  v52 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  v53 = [v52 unifiedField];

  if (v53)
  {
    v54 = v53;

    [v49 setTextField:v54];
    v99 = v54;
  }

  if (v30)
  {
    v55 = [v101 currentSearchQuery];
    v56 = v55;
    if (!v55)
    {
      v56 = [v101 currentSearchQueryAllowingQueryThatLooksLikeURL];
    }

    [v49 setQueryString:v56 forUpdatingCompletionListOnRestore:1];
    if (!v55)
    {
    }
  }

  v57 = [(BrowserController *)self tabBarManager];
  v58 = [v57 displayMode];
  v59 = [v57 itemArrangement];
  v60 = [v59 activeItem];
  v61 = [(TabController *)self->_tabController activeTabDocument];
  v62 = [v61 unifiedTabBarItem];

  if (v58 && ((v85 ^ v100 ^ 1) & 1) == 0 && v60 == v62)
  {
    v63 = v89;
    if (v100)
    {
      [v57 setCompletionItemIcon:0];
    }

    dispatch_group_enter(v48);
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = __81__BrowserController_setFavoritesState_forVoiceSearch_animated_completionHandler___block_invoke_8;
    v117[3] = &unk_2781D60B8;
    v118 = v48;
    [v57 setActiveItemIsExpanded:v100 animated:v103 completionHandler:v117];
    v64 = v118;
    goto LABEL_103;
  }

  if (v58)
  {
    v65 = 0;
  }

  else
  {
    v65 = v85 ^ v100;
  }

  v63 = v89;
  if (v65 == 1)
  {
    v66 = [(BrowserRootViewController *)self->_rootViewController navigationBar];
    v64 = v66;
    if (v103)
    {
      v67 = [v66 item];
      v68 = [v67 textWhenExpanded];

      if (v100)
      {
        v69 = [v68 length];
        v70 = 0;
      }

      else
      {
        v86 = v68;
        v73 = [v99 text];
        v74 = [v73 isEqualToString:v68];

        if (v74)
        {
          v83 = [v99 selectedTextRange];
          v75 = [v99 beginningOfDocument];
          v76 = [v83 start];
          v70 = [v99 offsetFromPosition:v75 toPosition:v76];

          v77 = [v99 beginningOfDocument];
          v78 = [v83 end];
          v79 = [v99 offsetFromPosition:v77 toPosition:v78];

          v69 = v79 - v70;
        }

        else
        {
          v69 = 0;
          v70 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v68 = v86;
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
      [v64 setExpanded:v100 textFieldSelectionRange:v70 completionHandler:v69, v115];
      v72 = &v116;
    }

    else
    {
      if (!v66)
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
      v114 = v100;
      v113 = v48;
      [v71 performWithoutAnimation:v111];
      v72 = &v112;
    }

LABEL_102:
    v63 = v89;
    goto LABEL_103;
  }

LABEL_104:
  if (v95 || !v103 || v92 & 1 | ((v102 & 1) == 0) && (v84 || !v97))
  {
    if (v94)
    {
      [v49 toggleVoiceSearch];
    }

    else if (v97)
    {
      [v99 becomeFirstResponder];
    }

    else
    {
      [v99 resignFirstResponder];
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
    v108 = v84;
    block[4] = self;
    v109 = v94;
    v105 = v99;
    v110 = v92;
    v106 = v98;
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

  if ((v102 & 1) == 0)
  {
    [v101 presentNextDialogIfNeeded];
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

- (uint64_t)_dismissTransientUIAnimated:(uint64_t)a3 dismissalOptions:(void *)a4 completionHandler:
{
  v36 = a4;
  if (!a1)
  {
    v33 = 0;
    v34 = v36;
    goto LABEL_31;
  }

  group = dispatch_group_create();
  v38 = [*(a1 + 944) tabThumbnailCollectionView];
  v6 = [v38 presentationState] == 1 || objc_msgSend(v38, "presentationState") == 2;

  if ((a3 & 2) == 0)
  {
    [v38 dismissAnimated:a2];
  }

  v7 = [*(a1 + 328) activeTabDocument];
  v8 = [v7 hideFindOnPage];

  v9 = [a1 favoritesAreEmbedded];
  v10 = [a1 favoritesFieldShouldBeExpanded];
  v11 = v8 | v6;
  if ((a3 & 1) == 0)
  {
    v12 = v10;
    if ((v9 ^ 1 | v10))
    {
      if (v9)
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
      [a1 setFavoritesState:v13 animated:a2 completionHandler:v53];
      [*(a1 + 440) setFavoritesState:0];
      v11 |= v12;
      if (((v9 | v11) & 1) == 0)
      {
        v15 = [*(a1 + 264) capsuleViewController];

        if (v15)
        {
          dispatch_group_enter(v14);
          v16 = [*(a1 + 264) capsuleViewController];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke_2;
          v51[3] = &unk_2781D60B8;
          v52 = v14;
          LOBYTE(v11) = [v16 transitionToState:0 animated:a2 completionHandler:v51];
        }

        else
        {
          LOBYTE(v11) = 0;
        }
      }
    }
  }

  v17 = [(BrowserController *)a1 _catalogViewController];
  [v17 dismissUniversalSearchFirstTimeExperienceViewControllerIfNeeded];

  if ((*(a1 + 570) & 1) == 0 && [*(a1 + 768) isShowingSidebar] && objc_msgSend(*(a1 + 768), "sidebarStyle") == 1)
  {
    dispatch_group_enter(group);
    v18 = *(a1 + 768);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke_3;
    v49[3] = &unk_2781D63F8;
    v50 = group;
    [v18 setShowingSidebar:0 completion:v49];

    LOBYTE(v11) = 1;
  }

  v19 = [*(a1 + 328) activeTabDocument];
  v20 = [v19 dialogController];

  v21 = [v20 presentedDialog];
  v22 = v21;
  if (v21 && [v21 presentationStyle] == 1)
  {
    [v20 cancelPresentedDialogIfNeeded];
  }

  else if ((v11 & 1) == 0)
  {
    v23 = [a1 isPresentingModalBookmarksController];
    goto LABEL_27;
  }

  v23 = 1;
LABEL_27:
  dispatch_group_enter(group);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke_4;
  v47[3] = &unk_2781D60B8;
  v24 = group;
  v48 = v24;
  [(BrowserController *)a1 _setPresentingModalBookmarksController:0 exclusively:0 importHandler:0 withCollection:0 bookmarkUUIDString:a2 animated:v47 completion:?];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke_5;
  aBlock[3] = &unk_2781D6B38;
  v45 = a3;
  v25 = v24;
  v44 = v25;
  v46 = a2;
  v26 = _Block_copy(aBlock);
  v27 = [a1 viewControllerToPresentFrom];
  v28 = v26[2](v26, v27);

  v29 = [a1 viewControllerToPresentFromNavigationBar];
  v30 = v26[2](v26, v29);

  v31 = [*(a1 + 328) activeTabDocument];
  v32 = [v31 printController];

  if (((v30 | v28) | v23))
  {
    v33 = 1;
  }

  else
  {
    v33 = [v32 isDisplayingPrintUI];
  }

  [v32 dismissPrintInteractionControllerAnimated:1];
  [*(a1 + 264) dismissAddedBookmarkToast];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__BrowserController__dismissTransientUIAnimated_dismissalOptions_completionHandler___block_invoke_7;
  block[3] = &unk_2781D6B60;
  block[4] = a1;
  v42 = a3;
  v34 = v36;
  v41 = v36;
  dispatch_group_notify(v25, MEMORY[0x277D85CD0], block);

LABEL_31:
  return v33;
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

- (void)_focusNavigationBarWithCompletionHandler:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [(BrowserController *)a1 _focusNavigationBarForVoiceSearch:v3 completionHandler:?];
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
    v7 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
    [v7 toggleVoiceSearch];
  }

  else
  {
    v8 = [MEMORY[0x277D28EB8] sharedManager];
    v9 = [v8 presentDictationDiscoveryAlertIfNeeded];

    if (v9)
    {
      goto LABEL_5;
    }

    if (![(BrowserRootViewController *)self->_rootViewController usingLoweredBar])
    {
      [(BrowserController *)self _focusNavigationBarForVoiceSearch:0 completionHandler:?];
      goto LABEL_5;
    }

    v7 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    [v7 transitionToState:2 options:1 animated:1 completionHandler:0];
  }

LABEL_5:
}

- (void)_focusNavigationBarForVoiceSearch:(void *)a3 completionHandler:
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (*(a1 + 715))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 368));
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained browserControllerCanFocusURLBar:a1] & 1) == 0)
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
        [a1 setFavoritesFieldFocused:1 forVoiceSearch:a2 animated:1 completionHandler:v8];
      }
    }

    else if (v5)
    {
      v5[2](v5);
    }
  }
}

- (void)prepareForTabDocumentWebViewFullscreenMayReturnToInline:(id)a3
{
  v4 = a3;
  v5 = [(TabController *)self->_tabController activeTabDocument];

  if (v5 == v4)
  {
    v8 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    [(BrowserController *)v8 dismissAnimated:1];
LABEL_12:

    goto LABEL_13;
  }

  if (-[BrowserController isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled") || ![v4 isPrivateBrowsingEnabled] || (+[Application sharedApplication](Application, "sharedApplication"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isPrivateBrowsingLocked"), v6, (v7 & 1) == 0))
  {
    v8 = self;
    v17[0] = v8;
    v9 = v4;
    v17[1] = v9;
    v10 = [(TabCollectionViewProviding *)v8->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([v10 presentationState] == 1)
    {
    }

    else
    {
      v11 = [v10 presentationState];

      if (v11 != 2)
      {
        v12 = MEMORY[0x277D75D18];
        v13 = [(BrowserRootViewController *)v8->_rootViewController view];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3321888768;
        v14[2] = __77__BrowserController_prepareForTabDocumentWebViewFullscreenMayReturnToInline___block_invoke;
        v14[3] = &__block_descriptor_48_ea8_32c89_ZTSZ77__BrowserController_prepareForTabDocumentWebViewFullscreenMayReturnToInline__E3__0_e5_v8__0l;
        v15 = v8;
        v16 = v9;
        [v12 transitionWithView:v13 duration:5242880 options:v14 animations:0 completion:0.2];

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
  v4 = [a1[1] tabGroupTab];
  v5 = [v4 tabGroupUUID];

  v6 = [*(*a1 + 41) activeTabGroupUUID];
  v7 = WBSIsEqual();

  if ((v7 & 1) == 0)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Will switch tab group for change to web view fullscreen.", v10, 2u);
    }

    [*(*a1 + 41) setActiveTabGroupUUID:v5];
  }

  [*(*a1 + 41) setActiveTabDocument:a1[1] animated:a2];
  v9 = [*(*a1 + 118) tabThumbnailCollectionView];
  [v9 dismissAnimated:a2];
}

- (void)_didChangePowerState
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  if (v4)
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
  if (a1)
  {
    v2 = *(a1 + 208);
    if (v2)
    {
      [(BrowserController *)a1 _cancelSpeculativeLoadForDocument:v2];
      v4 = [*(a1 + 80) previousItemPreviewView];
      [v4 replaceContentViewWithItsSnapshot];
      [v4 setContentView:0];
      [v4 setPrefetchingDisabled:1];
      [(BrowserController *)a1 _closeSpeculativelyLoadedDocument:?];
      v3 = *(a1 + 208);
      *(a1 + 208) = 0;
    }
  }
}

- (void)_clearNextContinuousItemDocument
{
  if (a1)
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      [(BrowserController *)a1 _cancelSpeculativeLoadForDocument:v2];
      v4 = [*(a1 + 80) previewView];
      [v4 replaceContentViewWithItsSnapshot];
      [v4 setContentView:0];
      [v4 setPrefetchingDisabled:1];
      [(BrowserController *)a1 _closeSpeculativelyLoadedDocument:?];
      v3 = *(a1 + 160);
      *(a1 + 160) = 0;
    }
  }
}

- (void)_completionItem:(void *)a3 wasAcceptedForString:
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v9;
      if ([v6 matchLocation] != 9)
      {
        v7 = +[History sharedHistory];
        v8 = [v6 originalURLString];
        [v7 addAutocompleteTrigger:v5 forURLString:v8];
      }
    }
  }
}

- (void)catalogViewController:(id)a3 didSelectSearch:(id)a4
{
  v5 = a4;
  [(BrowserController *)self clearSpeculativeLoadDocument];
  [(BrowserController *)self clearContinuousItemDocuments];
  [(BrowserController *)self _doSearch:v5];
  [(BrowserController *)self setFavoritesState:0 animated:1];
}

- (void)_doSearch:(void *)a1
{
  v5 = a2;
  if (a1)
  {
    v3 = [MEMORY[0x277D28F40] builder];
    v4 = [v3 navigationIntentWithSearchText:v5];

    [v4 setProvenance:1];
    [a1 dispatchNavigationIntent:v4];
  }
}

- (int64_t)idOfParsecQueryOriginatingFromSearchSuggestion
{
  searchStateCache = self->_searchStateCache;
  if (!searchStateCache)
  {
    return 0;
  }

  v3 = [(TabController *)self->_tabController activeTabDocument];
  v4 = [(SearchStateCache *)searchStateCache idOfParsecQueryOriginatingFromSearchSuggestionInTabDocument:v3];

  return v4;
}

- (void)clearParsecQueryOriginatingFromSearchSuggestion
{
  searchStateCache = self->_searchStateCache;
  v3 = [(TabController *)self->_tabController activeTabDocument];
  [(SearchStateCache *)searchStateCache clearParsecQueryOriginatingFromSearchSuggestionInTabDocument:?];
}

- (void)removeCachedSearchStateForActiveTabDocument
{
  searchStateCache = self->_searchStateCache;
  v3 = [(TabController *)self->_tabController activeTabDocument];
  [(SearchStateCache *)searchStateCache removeCachedSearchStateForTabDocument:?];
}

- (void)catalogViewControllerDidSelectFindOnPage:(id)a3
{
  self->_shouldFillStringForFind = 0;
  [(BrowserController *)self setFavoritesState:0 animated:1];
  v4 = [(TabController *)self->_tabController activeTabDocument];
  [v4 showFindOnPage];

  [(BrowserController *)self clearSpeculativeLoadDocument];

  [(BrowserController *)self clearContinuousItemDocuments];
}

- (void)catalogViewController:(id)a3 didSelectAddress:(id)a4
{
  v5 = a4;
  [(BrowserController *)self _loadAddressAsSpeculativeLoadIfNeeded:v5];
  [(BrowserController *)self setFavoritesState:0 animated:1];
}

- (void)_loadAddressAsSpeculativeLoadIfNeeded:(void *)a1
{
  v3 = a2;
  v8 = v3;
  if (a1)
  {
    if (([v3 _web_isUserVisibleURL] & 1) == 0)
    {
      v4 = [v8 safari_bestURLForUserTypedString];
      v5 = [v4 safari_userVisibleString];

      v8 = v5;
    }

    v6 = [MEMORY[0x277D28F40] builder];
    v7 = [v6 navigationIntentWithText:v8];

    [v7 setProvenance:1];
    [(BrowserController *)a1 _loadIntentAsSpeculativeLoadIfNeeded:v7];
  }
}

- (void)catalogViewController:(id)a3 loadURL:(id)a4 inExternalApplication:(BOOL)a5 forImageAttribution:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a4;
  [(BrowserController *)self _loadURL:v10 inExternalApplication:v7 forImageAttribution:v6];
  if (v7)
  {
    v9 = [MEMORY[0x277D4A808] sharedRecorder];
    [v9 didActualizeImpressionForURL:v10 provenance:1];
  }
}

- (void)_loadURL:(int)a3 inExternalApplication:(int)a4 forImageAttribution:
{
  v10 = a2;
  if (a1)
  {
    if (a3)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 904));
      [WeakRetained openURL:v10 options:0 completionHandler:0];
      v8 = WeakRetained;
    }

    else
    {
      [MEMORY[0x277D28F40] builder];
      if (a4)
        v9 = {;
        [v9 navigationIntentWithImageAttributionURL:v10];
      }

      else
        v9 = {;
        [v9 navigationIntentWithURL:v10];
      }
      v8 = ;

      [v8 setProvenance:1];
      [(BrowserController *)a1 _loadIntentAsSpeculativeLoadIfNeeded:v8];
      [a1 setFavoritesState:0 animated:1];
    }
  }
}

- (void)_loadIntentAsSpeculativeLoadIfNeeded:(void *)a1
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 policy])
    {
LABEL_3:
      [a1 clearSpeculativeLoadDocument];
      [a1 dispatchNavigationIntent:v4];
      goto LABEL_9;
    }

    v5 = [v4 URL];
    v6 = [v5 safari_userVisibleString];
    v7 = [(BrowserController *)a1 _commitSpeculativeLoadForURL:v6];

    if (v7)
    {
      v8 = [MEMORY[0x277D4A808] sharedRecorder];
      v9 = [v4 URL];
      [v8 didActualizeImpressionForURL:v9 provenance:{objc_msgSend(v4, "provenance")}];
    }

    else
    {
      v10 = [v4 text];
      v11 = [(BrowserController *)a1 _commitSpeculativeLoadForURL:v10];

      if (!v11)
      {
        v14 = WBS_LOG_CHANNEL_PREFIXTabs();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = a1[54];
          v16 = a1[115];
          v17 = [v4 URL];
          v18 = [v17 safari_userVisibleString];
          v19 = [v4 text];
          v20 = 138740739;
          v21 = v15;
          v22 = 2117;
          v23 = v16;
          v24 = 2117;
          v25 = v18;
          v26 = 2117;
          v27 = v19;
          _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_INFO, "Cached speculative load URL %{sensitive}@ or document %{sensitive}@ doesn't match either expectation %{sensitive}@ or %{sensitive}@", &v20, 0x2Au);
        }

        goto LABEL_3;
      }

      v8 = [MEMORY[0x277D4A808] sharedRecorder];
      v12 = MEMORY[0x277CBEBC0];
      v9 = [v4 text];
      v13 = [v12 URLWithString:v9];
      [v8 didActualizeImpressionForURL:v13 provenance:{objc_msgSend(v4, "provenance")}];
    }
  }

LABEL_9:
}

- (double)catalogViewControllerPopoverWidth:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained browserControllerCatalogViewPopoverWidth:self];
  v6 = v5;

  return v6;
}

- (void)catalogViewController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  v7 = [(BrowserController *)&self->super.super.super.isa _topNavigationBar];
  v8 = [v7 URLOutlinePopoverSourceInfo];

  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v10 = _SFContextInfoWithComment();
  _SFPopoverSourceInfoUnwrap();

  *a5 = v12[5];
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
  if (!a1)
  {
    return 0.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 904));
  v2 = [WeakRetained statusBarManager];
  if ([v2 isStatusBarHidden])
  {
    v3 = 7.0;
  }

  else
  {
    v3 = 10.0;
  }

  return v3;
}

- (void)catalogViewController:(id)a3 mightSelectCompletionItem:(id)a4 forString:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 shouldPrefetchWithMatchLength:{objc_msgSend(v8, "length")}])
  {
    v9 = [v7 userVisibleURLString];
  }

  else
  {
    v9 = 0;
  }

  objc_initWeak(&location, self);
  v10 = MEMORY[0x277CBEBB8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__BrowserController_catalogViewController_mightSelectCompletionItem_forString___block_invoke;
  v15[3] = &unk_2781D64B0;
  objc_copyWeak(&v17, &location);
  v11 = v9;
  v16 = v11;
  v12 = [v10 timerWithTimeInterval:0 repeats:v15 block:0.2];
  lastTimerForDelayingSpeculativelyPreloadingTopHit = self->_lastTimerForDelayingSpeculativelyPreloadingTopHit;
  self->_lastTimerForDelayingSpeculativelyPreloadingTopHit = v12;

  v14 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v14 addTimer:self->_lastTimerForDelayingSpeculativelyPreloadingTopHit forMode:*MEMORY[0x277CBE738]];

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

- (void)_updateSpeculativeLoadURL:(uint64_t)a1
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 424) == 1)
    {
      v4 = [MEMORY[0x277CCAC38] processInfo];
      v5 = [v4 isLowPowerModeEnabled];

      if ((v5 & 1) == 0 && ([*(a1 + 432) isEqualToString:v3] & 1) == 0)
      {
        v6 = [a1 tabController];
        v7 = [v6 activeTabDocument];
        v8 = [v7 webView];

        if (!v8 || ([v8 _isBeingInspected] & 1) == 0)
        {
          [a1 cancelSpeculativeLoad];
          v9 = [v3 copy];
          v10 = *(a1 + 432);
          *(a1 + 432) = v9;

          if (*(a1 + 432))
          {
            v11 = [MEMORY[0x277CBEBC0] URLWithString:?];
            if ([v11 safari_isHTTPFamilyURL])
            {
              v12 = v8;
              v13 = *(a1 + 920);
              if (v13)
              {
                v14 = [v13 URL];
                v15 = [v14 host];
                v16 = [v15 safari_highLevelDomainFromHost];

                v17 = [v11 host];
                v18 = [v17 safari_highLevelDomainFromHost];

                v40 = v12;
                if (v18)
                {
                  v40 = v12;
                  if (![v18 caseInsensitiveCompare:v16])
                  {
                    v19 = WBS_LOG_CHANNEL_PREFIXPageLoading();
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_215819000, v19, OS_LOG_TYPE_INFO, "Using the related web view off the speculative load TabDocument", buf, 2u);
                    }

                    v40 = [*(a1 + 920) webView];
                  }
                }

                v20 = *(a1 + 920);
              }

              else
              {
                v20 = 0;
                v40 = v12;
              }

              v22 = v20;
              v23 = [[TabDocument alloc] initForBackgroundLoadingWithBrowserController:a1 relatedWebView:v40 webViewToCloneSessionStorageFrom:v12];
              v24 = *(a1 + 920);
              *(a1 + 920) = v23;

              [*(a1 + 920) setShouldKeepIgnoredSiriSuggestedSitesOnLoad:1];
              v25 = [a1 unifiedField];
              v26 = [v25 text];
              v27 = v26 == 0;

              if (!v27)
              {
                v28 = [v25 text];
                v29 = [*(a1 + 920) personalizationData];
                [v29 setSearchQuery:v28];

                v30 = [*(a1 + 920) personalizationData];
                [v30 setPosition:0];
              }

              v31 = [*(a1 + 920) webView];
              [a1 updateInsetsForBackgroundWebView:v31];

              [*(a1 + 920) setAllowsRemoteInspection:0];
              v32 = [*(a1 + 328) activeTabDocument];
              v33 = [v32 sessionState];

              [*(a1 + 920) restoreSessionState:v33 andNavigate:0];
              v34 = [*(a1 + 920) _backForwardList];
              v35 = [v34 currentItem];
              objc_storeWeak((a1 + 32), v35);

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

              v39 = [*(a1 + 920) loadURL:v37 userDriven:1];
              [*(a1 + 920) beginSuppressingProgressAnimation];
              if (v22)
              {
                [(BrowserController *)a1 _closeSpeculativelyLoadedDocument:v22];
              }
            }

            else
            {
              v21 = *(a1 + 432);
              *(a1 + 432) = 0;
            }
          }
        }
      }
    }
  }
}

- (void)catalogViewController:(id)a3 completionItem:(id)a4 wasAcceptedForString:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if (!self->_searchStateCache)
  {
    v10 = objc_alloc_init(SearchStateCache);
    searchStateCache = self->_searchStateCache;
    self->_searchStateCache = v10;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 restoresSearchState])
  {
    v12 = self->_searchStateCache;
    v13 = [v15 completionList];
    v14 = [(TabController *)self->_tabController activeTabDocument];
    [(SearchStateCache *)v12 cacheAcceptanceOfCompletionItem:v8 withCompletionList:v13 forTabDocument:v14];
  }

  else
  {
    [(BrowserController *)self removeCachedSearchStateForActiveTabDocument];
  }

  [(BrowserController *)self _completionItem:v8 wasAcceptedForString:v9];
}

- (void)catalogViewControllerSuppressSelectedItemUnfocus:(id)a3
{
  v4 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  v3 = [v4 capsuleCollectionView];
  [v3 setSuppressesSelectedItemUnfocus:1];
}

- (void)catalogViewController:(id)a3 cacheSearchQueryID:(int64_t)a4
{
  v10 = a3;
  searchStateCache = self->_searchStateCache;
  if (!searchStateCache)
  {
    v7 = objc_alloc_init(SearchStateCache);
    v8 = self->_searchStateCache;
    self->_searchStateCache = v7;

    searchStateCache = self->_searchStateCache;
  }

  v9 = [(TabController *)self->_tabController activeTabDocument];
  [(SearchStateCache *)searchStateCache cacheSearchQueryID:a4 forTab:v9];
}

- (void)catalogViewControllerDidBeginEditing:(id)a3
{
  v4 = [(TabController *)self->_tabController activeTabDocument];
  [v4 clearFindOnPageMatchesCounter];

  [(BrowserController *)self setFavoritesFieldFocused:1 animated:1];
}

- (void)catalogViewControllerDidEndEditing:(id)a3
{
  v4 = [(TabController *)self->_tabController activeTabDocument];
  [v4 clearFindOnPageMatchesCounter];

  [(BrowserController *)self setFavoritesFieldFocused:0 animated:1];
}

- (void)catalogViewControllerPopoverWillDismiss:(id)a3 dismissalReason:(int64_t)a4
{
  v7 = a3;
  [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self catalogViewController:v7 willDismissPopoverWithReason:a4];
  }

  if (a4 >= 2)
  {
    [(BrowserController *)self cancelFavorites];
  }
}

- (void)catalogViewController:(id)a3 presentViewControllerWithinPopover:(id)a4 completionHandler:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v8 = a4;
  v30 = a5;
  v9 = [(BrowserController *)self viewControllerToPresentFrom];
  v10 = [v9 presentedViewController];

  if (v10)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(BrowserController *)self viewControllerToPresentFrom];
      v13 = [v12 presentedViewController];
      [(BrowserController *)v13 catalogViewController:v38 presentViewControllerWithinPopover:v11 completionHandler:v12];
    }
  }

  v14 = [v8 presentingViewController];
  v15 = v14 == 0;

  if (!v15)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [v8 presentingViewController];
      objc_claimAutoreleasedReturnValue();
      [BrowserController catalogViewController:presentViewControllerWithinPopover:completionHandler:];
    }
  }

  v17 = [v8 popoverPresentationController];
  [v17 setPermittedArrowDirections:1];
  v18 = *(MEMORY[0x277CBF398] + 16);
  v37.origin = *MEMORY[0x277CBF398];
  v37.size = v18;
  v36 = 0;
  [(BrowserController *)self catalogViewController:v31 willRepositionPopoverToRect:&v37 inView:&v36];
  v19 = v36;
  v20 = dispatch_group_create();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__BrowserController_catalogViewController_presentViewControllerWithinPopover_completionHandler___block_invoke;
  aBlock[3] = &unk_2781D6330;
  v21 = v30;
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
    [WeakRetained browserController:self catalogViewController:v31 willPresentViewControllerWithinPopover:v8];
  }

  [v17 setSourceRect:{*&v37.origin, *&v37.size}];
  [v17 setSourceView:v19];
  v26 = [(BrowserController *)&self->super.super.super.isa _topNavigationBar];
  v27 = [v26 popoverPassthroughViews];
  [v17 setPassthroughViews:v27];

  dispatch_group_enter(v20);
  v28 = [(BrowserController *)self viewControllerToPresentFrom];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __96__BrowserController_catalogViewController_presentViewControllerWithinPopover_completionHandler___block_invoke_209;
  v32[3] = &unk_2781D60B8;
  v29 = v20;
  v33 = v29;
  [v28 presentViewController:v8 animated:0 completion:v32];

  [v17 _setShouldHideArrow:1];
  [v17 _setIgnoresKeyboardNotifications:1];
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

- (void)catalogViewController:(id)a3 presentViewControllerInPlatter:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(BrowserController *)self viewControllerToPresentFrom];
  v14 = [v13 presentedViewController];

  if (v14)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [(BrowserController *)self viewControllerToPresentFrom];
      v17 = [v16 presentedViewController];
      [BrowserController catalogViewController:v17 presentViewControllerInPlatter:v26 animated:v15 completionHandler:v16];
    }
  }

  v18 = [v11 presentingViewController];
  v19 = v18 == 0;

  if (!v19)
  {
    v20 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [v11 presentingViewController];
      objc_claimAutoreleasedReturnValue();
      [BrowserController catalogViewController:presentViewControllerInPlatter:animated:completionHandler:];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self catalogViewController:v10 willPresentViewControllerWithinPopover:v11];
  }

  v22 = [(BrowserController *)self viewControllerToPresentFrom];
  [v22 presentViewController:v11 animated:v7 completion:v12];
  v23 = [v22 transitionCoordinator];
  v24 = [(BrowserController *)self tabBarManager];
  v25 = [v24 inlineTabBar];
  [v25 setTransitionCoordinator:v23];

  [(BrowserController *)self _updateButtonsAnimatingTabBar:v7];
}

- (BOOL)catalogViewControllerShouldRequestNetworkedSuggestions:(id)a3
{
  if (!self->_canPerformPostLaunchActions)
  {
    return 0;
  }

  v3 = [(BrowserController *)self configuration];
  v4 = [v3 allowsNetworkedSearchSuggestions];

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [MEMORY[0x277D7B590] sharedWebFilterSettings];
  v6 = [v5 isWebFilterEnabled];

  return v6 ^ 1;
}

- (void)catalogViewController:(id)a3 focusNextKeyView:(BOOL)a4
{
  v4 = a4;
  if ([(BrowserController *)self favoritesAreShowingInPopover])
  {
    v6 = [(TabController *)self->_tabController activeTabDocument];
    v7 = [v6 frontWebView];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__BrowserController_catalogViewController_focusNextKeyView___block_invoke;
    v8[3] = &unk_2781D63F8;
    v8[4] = self;
    [v7 _becomeFirstResponderWithSelectionMovingForward:v4 completionHandler:v8];
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

- (void)catalogViewControllerMakeWindowKey:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained browserControllerMakeKey:self];
}

- (BOOL)catalogViewControllerShouldSuppressPopover:(id)a3
{
  v3 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  v4 = [v3 presentationState] == 1 || objc_msgSend(v3, "presentationState") == 2;

  return v4;
}

- (void)catalogViewController:(id)a3 didPasteText:(id)a4
{
  v7 = a4;
  v5 = [MEMORY[0x277D28F40] builder];
  v6 = [v5 navigationIntentWithText:v7];
  [(BrowserController *)self dispatchNavigationIntent:v6];
}

- (id)catalogViewControllerStartPageVisualStyleProvider:(id)a3
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

- (void)catalogViewControllerDidScroll:(id)a3 animated:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__BrowserController_catalogViewControllerDidScroll_animated___block_invoke;
  v4[3] = &unk_2781D60B8;
  v4[4] = self;
  [MEMORY[0x277D75D18] sf_animate:a4 usingDefaultTimingWithOptions:50331648 animations:v4 completion:0];
}

- (void)dismissCatalogViewController:(id)a3
{
  if ([(BrowserController *)self favoritesAreShowingInPopover])
  {
    v4 = [(BrowserController *)self unifiedField];
    [v4 resignFirstResponder];
  }

  else
  {

    [(BrowserController *)self cancelFavorites];
  }
}

- (BOOL)catalogViewControllerUnifiedFieldCanBecomeFirstResponder:(id)a3
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

- (void)catalogViewControllerWillUnfocusUnifiedField:(id)a3 showingRecentSearches:(BOOL)a4
{
  v4 = a4;
  v12 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  v6 = [(TabController *)self->_tabController activeTabDocument];
  if ([v6 isShowingSystemStartPage])
  {
    v7 = [v12 unifiedField];
    v8 = [v7 text];
    v9 = [v8 length];

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = !v4;
    }

    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v11 = [v12 capsuleCollectionView];
  [v11 setSuppressesSelectedItemUnfocus:1];

LABEL_10:
}

- (BOOL)catalogViewControllerPresentingInPortraitAspectRatio:(id)a3
{
  v3 = [(BrowserRootViewController *)self->_rootViewController view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  return v5 <= v7;
}

- (void)catalogViewController:(id)a3 willPresentDetailViewController:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self willPresentAutocompletionDetailViewController:v6];
  }
}

- (void)catalogViewController:(id)a3 willPresentCustomizationViewController:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self willPresentStartPageCustomizationViewController:v6];
  }
}

- (void)catalogViewController:(id)a3 didFinishVoiceSearchWithNavigation:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self didFinishVoiceSearchWithNavigation:v4];
  }
}

- (void)catalogViewControllerDidAppear:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserControllerStartPageUpdatePolicyDidChange:self];
  }
}

- (BOOL)catalogViewControllerShouldUsePopoverForCompletions:(id)a3
{
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    return ![(BrowserController *)self _shouldUseNarrowLayout];
  }

  else
  {
    v5 = [(BrowserController *)self viewControllerToPresentFrom];
    v6 = [v5 traitCollection];
    LOBYTE(v4) = [v6 horizontalSizeClass] != 1;
  }

  return v4;
}

- (void)beginTrackingDropSessionForTabBarVisibility:(id)a3
{
  v4 = a3;
  dropSessionsForTabBarVisibility = self->_dropSessionsForTabBarVisibility;
  v9 = v4;
  if (dropSessionsForTabBarVisibility)
  {
    [(NSMutableSet *)dropSessionsForTabBarVisibility addObject:v4];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB58] setWithObject:v4];
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

- (void)endTrackingDropSessionForTabBarVisibility:(id)a3
{
  v5 = a3;
  [(NSMutableSet *)self->_dropSessionsForTabBarVisibility removeObject:?];
  -[BrowserController updateShowingTabBarAnimated:](self, "updateShowingTabBarAnimated:", [MEMORY[0x277D75D18] areAnimationsEnabled]);
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self tabBarExpansionViewDidEndTrackingDropSession:v5];
  }
}

- (void)tabDocumentWillBeginDragSession:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self tabDocumentWillBeginDragSession:v5];
  }
}

- (void)tabDocumentWillEndDragSession:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self tabDocumentWillEndDragSession:v5];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__BrowserController_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_2781D6270;
  v12 = self;
  v13 = a6;
  v11 = v8;
  v9 = v8;
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
    v5 = [(BrowserRootViewController *)rootViewController capsuleViewController];

    if (v5)
    {
      return 3;
    }

    else
    {
      v10 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      v11 = [v10 safari_enableStandaloneTabBar];

      if (v11)
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
    v7 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    v8 = [v7 capsuleCollectionView];
    v9 = [v8 layoutStyle];

    if (v9 == 1)
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
  v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [v2 safari_enableStandaloneTabBar];

  if (v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_addInteractionsForTabBar:(uint64_t)a1
{
  v3 = a2;
  if (a1 && v3)
  {
    v9 = v3;
    v4 = [*(a1 + 944) tabDragDropController];
    v5 = [objc_alloc(MEMORY[0x277D75468]) initWithDelegate:v4];
    [v9 addInteraction:v5];

    v6 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:v4];
    [v9 addInteraction:v6];

    v7 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:v4];
    v8 = *(a1 + 344);
    *(a1 + 344) = v7;

    [v9 addInteraction:*(a1 + 344)];
    [TabCollectionViewSpringLoadingBehavior addSpringLoadedInteractionToTabView:v9];

    v3 = v9;
  }
}

- (id)_sidebarViewController
{
  if (a1)
  {
    v1 = [*(a1 + 264) sidebarViewController];
    v2 = [v1 contentViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
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

- (void)reloadSidebarAnimated:(BOOL)a3
{
  [(LibraryController *)self->_libraryController setNeedsReloadSectionControllersAnimated:a3];
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupPickerViewController);
  [WeakRetained setNeedsReloadData];
}

- (void)_reloadProfileSwitcherIfNeeded
{
  if (a1)
  {
    v2 = [*(a1 + 912) profilesInSwitcherMenu];
    v3 = [*(a1 + 328) profiles];
    v4 = [v2 count];
    if (v4 == [v3 count])
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __51__BrowserController__reloadProfileSwitcherIfNeeded__block_invoke;
      v5[3] = &unk_2781D64D8;
      v5[4] = a1;
      [v2 safari_enumerateZippedValuesWithArray:v3 withBlock:v5];
    }

    else
    {
      [*(a1 + 912) setNeedsReloadForProfileSwitcher];
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

- (void)_profileWallpaperDidChange:(id)a3
{
  v4 = [MEMORY[0x277D4A820] defaultManager];
  tabGroupManager = self->_tabGroupManager;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__BrowserController__profileWallpaperDidChange___block_invoke;
  v7[3] = &unk_2781D61F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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
  v1 = a1;
  if (a1)
  {
    v2 = [[TabGroupPickerViewController alloc] initWithTabGroupProvider:a1[41]];
    objc_storeWeak(v1 + 44, v2);
    v1 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v2];
  }

  return v1;
}

- (void)hideTabGroupPicker
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupPickerViewController);
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (id)showTabGroupPicker:(id)a3
{
  v40[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BrowserController *)&self->super.super.super.isa _navigationControllerForTabGroupPicker];
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupPickerViewController);
  if (![(BrowserController *)self usesNarrowLayout])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [v6 superview];
      if (!v7)
      {

        goto LABEL_21;
      }

      [v5 setModalPresentationStyle:7];
      v8 = [v5 popoverPresentationController];
      [v8 setSourceView:v7];
      [v6 frame];
      [v8 setSourceRect:?];
      [v8 setPermittedArrowDirections:3];
    }
  }

  v9 = [v5 presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [v10 _setLargeBackground:v11];

    if ([(BrowserController *)self hasMultipleProfiles])
    {
      v12 = objc_alloc_init(MEMORY[0x277D75318]);
      v13 = [v12 defaultContentConfiguration];
      [v12 setContentConfiguration:v13];

      [v12 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
      v15 = v14;
      v16 = [(BrowserController *)self tabGroupProvider];
      v17 = [v16 tabGroups];
      v18 = [v17 count];

      v19 = [(BrowserController *)self tabGroupProvider];
      v20 = [v19 moveLocalTabsToNewGroupTitle];

      if (v20)
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
      v22 = [MEMORY[0x277D76238] _detentWithContainerViewBlock:v36];
      v23 = [(BrowserRootViewController *)self->_rootViewController view];
      [v23 bounds];
      v25 = v24;

      v26 = [(BrowserRootViewController *)self->_rootViewController view];
      [v26 bounds];
      v28 = v27;

      if (v21 >= v25 * 0.5)
      {
        if (v21 <= v28 * 0.935)
        {
          v38[0] = v22;
          v29 = [MEMORY[0x277D76238] _largeDetent];
          v38[1] = v29;
          [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
        }

        else
        {
          v29 = [MEMORY[0x277D76238] _largeDetent];
          v39 = v29;
          [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
        }
        v30 = ;
        [v10 _setDetents:v30];
      }

      else
      {
        v29 = [MEMORY[0x277D76238] _mediumDetent];
        v40[0] = v29;
        v30 = [MEMORY[0x277D76238] _largeDetent];
        v40[1] = v30;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
        [v10 _setDetents:v31];
      }
    }

    else
    {
      v12 = [MEMORY[0x277D76238] _mediumDetent];
      v37[0] = v12;
      v22 = [MEMORY[0x277D76238] _largeDetent];
      v37[1] = v22;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
      [v10 _setDetents:v29];
    }
  }

  v32 = [v5 view];
  [v32 layoutIfNeeded];

  v33 = [(BrowserController *)self viewControllerToPresentFrom];
  [v33 presentViewController:v5 animated:1 completion:0];

LABEL_21:

  return WeakRetained;
}

- (void)setUpWithURL:(id)a3 launchOptions:(id)a4
{
  v35 = a3;
  v34 = a4;
  v6 = [MEMORY[0x277D28F08] settings];
  v7 = [(BrowserController *)self UUID];
  v8 = [v6 privateBrowsingEnabledForWindowWithUUID:v7];

  [(BrowserController *)self _initSubviews];
  [(BrowserController *)self setPrivateBrowsingEnabled:v8];
  v32 = [(BrowserRootViewController *)self->_rootViewController navigationBar];
  [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
  v9 = [(BrowserRootViewController *)self->_rootViewController view];
  [v9 safeAreaInsets];
  [v32 setContentUnderStatusBarHeight:?];

  [(TabController *)self->_tabController openInitialBlankTabDocumentIfNeeded];
  v33 = [(TabController *)self->_tabController activeTabDocument];
  v10 = [v33 navigationBarItem];
  [v32 setItem:v10];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
  [v11 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  [v11 addObserver:self selector:sel__didChangePowerState name:*MEMORY[0x277CCA5E8] object:0];
  [v11 addObserver:self selector:sel__bookmarksDidReload_ name:*MEMORY[0x277D7B608] object:0];
  [v11 addObserver:self selector:sel__bookmarksDidReload_ name:@"bookmarkCollectionHasBecomeAvailableNotification" object:0];
  [v11 addObserver:self selector:sel__perSiteAutomaticReaderActivationPreferenceDidChange_ name:*MEMORY[0x277D4A2F8] object:0];
  [v11 addObserver:self selector:sel__recentSearchesWereCleared_ name:*MEMORY[0x277D4A350] object:0];
  [v11 addObserver:self selector:sel__showNoRecentSearchesView_ name:*MEMORY[0x277D4A480] object:0];
  [v11 addObserver:self selector:sel__perSitePageZoomPreferenceDidChange_ name:*MEMORY[0x277D4A2A0] object:0];
  [v11 addObserver:self selector:sel__downloadsDidChange_ name:*MEMORY[0x277CDB9C0] object:0];
  [v11 addObserver:self selector:sel__downloadsTotalProgressDidChange_ name:*MEMORY[0x277CDB9B8] object:0];
  [v11 addObserver:self selector:sel__downloadManagerDidFinishLastDownload_ name:*MEMORY[0x277CDB9A8] object:0];
  [v11 addObserver:self selector:sel__hasUnviewedDownloadsDidChange_ name:*MEMORY[0x277CDB9B0] object:0];
  v12 = +[Application sharedApplication];
  v13 = [v12 isRunningPPT];

  v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v15 = [v14 BOOLForKey:@"disableFavoritesGridForPurpleTests"];

  v16 = +[Application sharedApplication];
  v17 = [v16 shouldRestoreStateForPPT];

  if (((v13 ^ 1 | v15 | v17) & 1) == 0)
  {
    [(BrowserController *)self updateFavoritesForNewDocument];
LABEL_8:
    if (!v8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if (((v13 ^ 1 | v17) & 1) == 0)
  {
    goto LABEL_8;
  }

  v31 = v35;
  if (self->_didRestoreState)
  {
    v18 = [v33 _backForwardList];
    v19 = [v18 currentItem];
    [v33 goToBackForwardListItem:v19];
  }

  if (self->_usesTabBar)
  {
    [(TabCollectionViewProviding *)self->_tabCollectionViewProvider updateTabBarAnimated:0];
  }

  else if (self->_didRestoreState)
  {
    [(TabCollectionViewProviding *)self->_tabCollectionViewProvider updateTabViewsAnimatingTabBar:0];
  }

  v23 = [v34 safari_dictionaryForKey:*MEMORY[0x277D766A8]];
  v24 = [v23 safari_stringForKey:*MEMORY[0x277D766B0]];
  v25 = [v24 isEqualToString:*MEMORY[0x277CCA850]];

  v26 = [(TabController *)self->_tabController activeTabDocument];
  v27 = v26;
  if (v25)
  {
    [v26 setPreparingForNewUserActivity:1];
  }

  [(BrowserController *)self updateFavoritesForNewDocument];
  if (v25)
  {
    [v27 setPreparingForNewUserActivity:0];
  }

  if (!v31)
  {
    v28 = [MEMORY[0x277D28F08] settings];
    v29 = [(BrowserController *)self UUID];
    v30 = [v28 isShowingTabViewForWindowWithUUID:v29];

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
    v22 = [v21 isPrivateBrowsingLocked];

    if (v22)
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

- (void)userDefaultsDidChangeValueForKey:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D292A8]])
  {
    [(BrowserController *)self fraudWarningsToggled];
  }

  if (([v4 isEqualToString:*MEMORY[0x277D29190]] & 1) == 0)
  {
    if ([v4 isEqualToString:*MEMORY[0x277D28F70]])
    {
      [(BrowserController *)self toggleAlwaysShowBookmarksBarMessageReceived];
      goto LABEL_13;
    }

    if ([v4 isEqualToString:@"SpeculativeLoading"])
    {
      [(BrowserController *)self updateSpeculativeLoadingPreferences];
      goto LABEL_13;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D29098]])
    {
      [(BrowserController *)self updateUsesTabBar];
      goto LABEL_13;
    }

    if (([v4 isEqualToString:*MEMORY[0x277D29230]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D29228]))
    {
      [(BrowserController *)self updateJavaScriptPreferences];
      goto LABEL_13;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D7B860]])
    {
      [(BrowserController *)self setCookiePolicyMessageReceived];
      goto LABEL_13;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D291B0]])
    {
      [(BrowserController *)self updateApplePayPreferences];
      goto LABEL_13;
    }

    if (([v4 isEqualToString:*MEMORY[0x277D29160]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D29180]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D29170]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D29158]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D29178]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D29168]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D29150]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D29140]) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D29148]))
    {
      v5 = [(BrowserController *)self tabBarManager];
      v6 = [v5 inlineTabBar];
      [v6 updateLayout];

      v7 = [v5 standaloneTabBar];
      [v7 updateLayout];
LABEL_28:

LABEL_29:
      goto LABEL_13;
    }

    if (([v4 isEqualToString:*MEMORY[0x277D29000]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D29010]) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D29008]))
    {
      [(BrowserRootViewController *)self->_rootViewController updateThemeColorIfNeededAnimated:0];
      goto LABEL_13;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D29048]])
    {
      v5 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
      v7 = [v5 capsuleCollectionView];
      [v7 updateVerticalSwipeThreshold];
      goto LABEL_28;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D29040]])
    {
      v8 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
      [v8 updateAdditionalBottomObscuredInset];

      v5 = [(BrowserRootViewController *)self->_rootViewController view];
      [v5 setNeedsLayout];
      goto LABEL_29;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D29090]])
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

    else if ([v4 isEqualToString:*MEMORY[0x277D29018]])
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
      v13 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
      [v13 updateStartPageTopSpacing];
    }

    else
    {
      if ([v4 isEqualToString:*MEMORY[0x277D290A0]])
      {
        [(BrowserRootViewController *)self->_rootViewController updateUsesWebpageStatusBar];
        goto LABEL_13;
      }

      if ([v4 isEqualToString:*MEMORY[0x277D29080]])
      {
        v5 = [MEMORY[0x277D28BF0] sharedProvider];
        [v5 clearCachedMenuForPersona:0];
        goto LABEL_29;
      }

      if ([v4 isEqualToString:*MEMORY[0x277D28F78]])
      {
        v14 = [(BrowserController *)self _bookmarksBarLabelButtonDisplayStyle];
        v5 = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
        [v5 setButtonStyle:v14];
        goto LABEL_29;
      }

      if (([v4 isEqualToString:*MEMORY[0x277D29028]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"DebugBarCollapsingBehavior"))
      {
        [(BrowserController *)self _updateDisableBarHiding];
      }
    }
  }

LABEL_13:
}

- (uint64_t)_bookmarksBarLabelButtonDisplayStyle
{
  if (!a1)
  {
    return 0;
  }

  v1 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v2 = [v1 objectForKey:*MEMORY[0x277D28F78]];
  v3 = [v2 intValue];

  return v3;
}

- (void)carrierBundledChanged
{
  v2 = [BookmarkImporter alloc];
  v3 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v4 = [(BookmarkImporter *)v2 initWithBookmarkCollection:v3];

  [(BookmarkImporter *)v4 importBuiltinBookmarks];
}

- (void)didFocusTabGroup:(id)a3
{
  v10 = a3;
  v4 = +[Application sharedApplication];
  if ([v10 isPrivateBrowsing] && objc_msgSend(v4, "isPrivateBrowsingLocked"))
  {
    v5 = [(BrowserController *)self shouldShowWhatsNewInPrivateBrowsingSheet];
    if (self)
    {
      v6 = v5;
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
    v7 = [v10 isPrivateBrowsing];
    if (self)
    {
      v8 = v7;
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
  if ([v10 isPrivateBrowsing])
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

- (void)setPrivateBrowsingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(TabController *)self->_tabController activeTabGroup];
  v15 = v5;
  if (v3)
  {
    if (([v5 isPrivateBrowsing] & 1) == 0)
    {
      [(TabController *)self->_tabController selectPrivateTabGroup];
    }
  }

  else if ([v5 isPrivateBrowsing])
  {
    [(TabController *)self->_tabController selectLocalTabGroup];
  }

  if (self->_privateBrowsingEnabled != v3)
  {
    [(BrowserController *)self writePrivateBrowsingEnabled:v3];
    self->_privateBrowsingEnabled = v3;
    [(BrowserController *)self _updateConfiguration];
    [(BrowserController *)self _updateAddTabMenuProvider];
    v6 = +[Application sharedApplication];
    -[_SFBrowserSavedState setSecureDeleteEnabled:](self->_savedState, "setSecureDeleteEnabled:", [v6 usesPrivateBrowsingModeInAnyWindow]);
    [(TabController *)self->_tabController setPrivateBrowsingEnabled:v3];
    v7 = [MEMORY[0x277D499B8] sharedLogger];
    [v7 didSetPrivateBrowsingEnabled:v3];

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
      v10 = [(BrowserController *)self effectiveProfileIdentifier];
      v11 = [v6 webExtensionsControllerForProfileServerID:v10];

      v12 = [(BrowserController *)self activeWebExtensionWindow];
      [v11 didActivateWindow:v12];
    }

    v13 = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
    [v13 setNeedsReloadData];

    v14 = [(BrowserController *)self unifiedField];
    [v14 clearUserTypedText];
  }
}

- (void)togglePrivateBrowsingEnabled
{
  v3 = [(BrowserController *)self isPrivateBrowsingEnabled]^ 1;

  [(BrowserController *)self setPrivateBrowsingEnabled:v3];
}

- (void)writePrivateBrowsingEnabled:(BOOL)a3
{
  v3 = a3;
  v6 = [MEMORY[0x277D28F08] settings];
  v5 = [(BrowserController *)self UUID];
  [v6 setPrivateBrowsingEnabled:v3 forWindowWithUUID:v5];
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
  v4 = [v3 isPrivateBrowsingLocked];

  [(TabController *)self->_tabController updateLockedBrowsingState];
  [(LibraryController *)self->_libraryController setNeedsReloadSectionControllersAnimated:0];
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained updateTabViewPinchRecognizerForBrowserController:self];

  v6 = [(BrowserRootViewController *)self->_rootViewController tabSwitcherViewController];
  [v6 setNeedsApplyContentAnimated:v4 ^ 1u];

  if (v4)
  {
    v7 = [(BrowserRootViewController *)self->_rootViewController tabSwitcherViewController];
    [v7 applyContentIfNeeded];
  }

  if (self->_privateBrowsingEnabled)
  {
    [(BrowserRootViewController *)self->_rootViewController updateUsesWebpageStatusBar];
    if (v4)
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

- (uint64_t)_isShowingCollectionInSidebar:(id *)a1
{
  v3 = a2;
  if (a1 && (([a1 isPresentingModalBookmarksController] & 1) != 0 || (objc_msgSend(a1[96], "isShowingSidebar") & 1) != 0))
  {
    v4 = [a1[114] currentCollection];
    v5 = [v4 isEqualToString:v3];
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
  v1 = a1;
  if (a1)
  {
    v2 = [*(a1 + 328) activeTabDocument];
    if ([v2 isBlank])
    {
      v3 = +[FeatureManager sharedFeatureManager];
      if ([v3 areSharedTabGroupsEnabled])
      {
        v4 = [*(v1 + 328) activeTabGroup];
        v1 = [v4 isNamed];
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      v3 = [v2 urlForSharing];
      v1 = [v3 sf_isEligibleForSharing];
    }
  }

  return v1;
}

- (uint64_t)_currentBarContentMode
{
  if (result)
  {
    v1 = result;
    v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v3 = [v2 safari_enableStandaloneTabBar];

    IsPad = _SFDeviceIsPad();
    if (v3)
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

- (void)scrollViewWillBeginDragging:(id)a3
{
  v10 = a3;
  self->_scrollViewIsDragging = 1;
  v4 = [(BrowserRootViewController *)self->_rootViewController currentBarAnimator];
  [v10 contentOffset];
  [v4 beginDraggingWithOffset:v5];

  v6 = [v10 _sf_isScrolledToOrPastBottom];
  self->_shouldShowBarsAfterDraggingDownward = v6;
  if (v6)
  {
    v7 = [(BrowserRootViewController *)self->_rootViewController keepBarsMinimized];
    self->_shouldShowBarsAfterDraggingDownward = !v7;
    if (v7)
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
  v9 = [(TabController *)self->_tabController activeTabDocument];
  [v9 userDidManipulateVisibleRegion];

  [(ContinuousReadingViewController *)self->_continuousReadingViewController setSuppressingAutoScroll:0];
}

- (void)prefetchNextContinuousItemIfNeeded
{
  if (a1)
  {
    v6 = [a1[10] currentItem];
    if (v6)
    {
      v2 = [a1[10] previewView];

      if (v2)
      {
        v7 = [a1[10] previewView];
        v3 = [v7 contentView];

        if (v3)
        {

          [(BrowserController *)a1 loadNextContinuousDocumentIfNeeded];
        }

        else
        {
          v8 = [a1 nextContinuousItemDocument];
          [a1 clearDocumentForContinuousReading:?];

          v4 = [a1 continuousReadingController];
          v9 = [v4 nextReadingListItem];

          if (v9)
          {
            v5 = [(BrowserController *)a1 _tabDocumentForNextContinuousItem];
            [(BrowserController *)a1 _setContinuousReadingContentViewFromTabDocument:v5 useReaderView:0];

            [(BrowserController *)a1 loadNextContinuousDocumentIfNeeded];
          }
        }
      }
    }
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  if (self->_scrollViewIsDragging)
  {
    y = a4.y;
    self->_scrollViewIsDragging = 0;
    v7 = [(BrowserRootViewController *)self->_rootViewController currentBarAnimator:a3];
    [v7 endDraggingWithTargetOffset:a5->y velocity:y * 1000.0];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (a4)
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

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = a3;
  if ([(ContinuousReadingViewController *)self->_continuousReadingViewController interceptsScrollToTopTap])
  {
    goto LABEL_2;
  }

  scrollView = self->_scrollView;
  if (scrollView == v4)
  {
    v12 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    v13 = [v12 presentationState];

    if (v13)
    {
LABEL_2:
      v5 = 0;
      goto LABEL_17;
    }

    scrollView = self->_scrollView;
  }

  if (scrollView == v4)
  {
    v14 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];

    if (v14)
    {
      goto LABEL_2;
    }
  }

  if ([(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar]&& [(SidebarUIProxy *)self->_sidebarUIProxy sidebarStyle]== 1)
  {
    v7 = [(_SFWebView *)self->_webView scrollView];
    v5 = v7 != v4;
  }

  else
  {
    v7 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    v8 = [(UIScrollView *)v7 capsuleCollectionView];
    if (-[BrowserRootViewController usingLoweredBar](self->_rootViewController, "usingLoweredBar") && [v8 selectedItemIsMinimized] && (-[UIScrollView transitionToState:animated:completionHandler:](v7, "transitionToState:animated:completionHandler:", 0, 1, 0), objc_msgSend(v8, "layoutStyle") != 1))
    {
      v5 = 0;
    }

    else
    {
      v9 = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
      if (-[BrowserRootViewController usingLoweredBar](self->_rootViewController, "usingLoweredBar") || [v9 state])
      {
        v10 = [(TabController *)self->_tabController activeTabDocument];
        [v10 setSuppressingProgressAnimationForNavigationGesture:0];

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

- (void)scrollViewDidScroll:(id)a3
{
  v29 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (![(BrowserRootViewController *)self->_rootViewController isPerformingSizeTransition])
  {
    [(BrowserController *)self updateDynamicBarGeometry];
  }

  v5 = [(BannerController *)self->_bannerController crashBanner];
  v6 = [(UIScrollView *)self->_scrollView isDragging];
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerView];
    [v5 bounds];
    [v5 convertRect:v8 toView:?];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(BrowserRootViewController *)self->_rootViewController navigationBarFrameInCoordinateSpace:v8];
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
      if (-[BrowserRootViewController toolbarPlacement](self->_rootViewController, "toolbarPlacement") == 1 && [v29 _sf_isScrolledToOrPastBottom] && !-[BrowserController _isInContinuousMode](self))
      {
        [(BrowserController *)self showBars];
      }

      self->_shouldShowBarsAfterDraggingDownward = 0;
    }

    v26 = [(TabController *)self->_tabController activeTabDocument];
    [v26 webViewDidScroll];
  }

  if (![(BrowserRootViewController *)self->_rootViewController isInteractivelyMinimizingBars]&& !self->_isUpdatingBarAnimatorDragOffset)
  {
    self->_isUpdatingBarAnimatorDragOffset = 1;
    v27 = [(BrowserRootViewController *)self->_rootViewController currentBarAnimator];
    [v29 contentOffset];
    [v27 updateDraggingWithOffset:v28];

    self->_isUpdatingBarAnimatorDragOffset = 0;
  }

  [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
  [(BrowserController *)self _updateAppInfoOverlayFrame];
  if ([WeakRetained browserControllerShouldUpdateWebViewGeometryOnScroll:self])
  {
    [(BrowserController *)self updateExposedScrollViewRect];
  }

  [WeakRetained browserController:self scrollViewDidScroll:v29];
  [(BrowserController *)self updateScrollToTopView];
  if ([(BrowserController *)self _isInContinuousMode])
  {
    [(BrowserController *)self updateContinuousPreviewViewFrame];
    [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerView];
  }

  [WeakRetained updateTabViewPinchRecognizerForBrowserController:self];
  [(ContinuousReadingViewController *)self->_continuousReadingViewController innerScrollViewDidScroll:v29];
  [(BrowserController *)self _updateRefreshControlHeight];
  [(BrowserController *)&self->super.super.super.isa _updateScribbleOverlayIfNeeded];
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  v6 = a3;
  [(BrowserController *)self updatePullToRefreshIsEnabled];
  [(ContinuousReadingViewController *)self->_continuousReadingViewController setSuppressingAutoScroll:1];
  [Application postTestNotificationName:@"ScrollViewWillBeginZoomingNotification" object:self];
  [v6 zoomScale];
  self->_scrollViewStartZoomScale = v5;
  [(BrowserController *)&self->super.super.super.isa _updateScribbleOverlayIfNeeded];
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  [(BrowserController *)self updatePullToRefreshIsEnabled:a3];
  [(ContinuousReadingViewController *)self->_continuousReadingViewController setSuppressingAutoScroll:0];
  [Application postTestNotificationName:@"ScrollViewDidEndZoomingNotification" object:self];
  if (self->_scrollViewStartZoomScale < a5)
  {
    v7 = [(TabController *)self->_tabController activeTabDocument];
    [v7 webViewDidIncreaseZoom];
  }
}

- (void)_goBackAllowingNewTabToSpawnIfNeeded:(id *)a1
{
  if (a1)
  {
    [a1 dismissTransientUIAnimated:1];
    v4 = [a1[41] activeTabDocument];
    [v4 goBackAllowingNewTabToSpawnIfNeeded:a2];

    [(BrowserController *)a1 _presentReaderTriggeredAppReviewPromptIfNeeded];
  }
}

- (void)_presentReaderTriggeredAppReviewPromptIfNeeded
{
  if (a1 && [a1 isShowingReader])
  {
    v5 = [a1 appReviewPromptManager];
    [*(a1 + 288) contentOffset];
    v3 = v2;
    [*(a1 + 288) contentSize];
    [v5 didDismissReaderWithScrollPercentage:*(a1 + 576) dateReaderOpened:v3 / v4];
  }
}

- (void)_goForwardAllowingNewTabToSpawnIfNeeded:(id *)a1
{
  if (a1)
  {
    [a1 dismissTransientUIAnimated:1];
    v4 = [a1[41] activeTabDocument];
    [v4 goForwardAllowingNewTabToSpawnIfNeeded:a2];
  }
}

- (uint64_t)_commitSpeculativeLoadForURL:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = googleSearchEngine();
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v3];
    v6 = [v4 urlAttributingToSafariIfValidSearchURL:v5];
    v7 = [v6 absoluteString];

    v8 = [*(a1 + 920) URLString];
    LODWORD(v5) = [v8 isEqualToString:v7];

    if ((([*(a1 + 432) isEqualToString:v3] | v5) & 1) != 0 && *(a1 + 432))
    {
      [(BrowserController *)a1 _commitToSpeculativeLoad];
      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)_commitToSpeculativeLoad
{
  if (a1)
  {
    v10 = [*(a1 + 920) url];
    [(BrowserController *)a1 _recordIgnoredSiriSuggestedSitesWithURL:v10];

    if ((*(a1 + 720) & 1) == 0)
    {
      v11 = [MEMORY[0x277D49F90] sharedController];
      v2 = [*(a1 + 920) url];
      v3 = [v2 host];
      v4 = [a1 activeProfileIdentifier];
      [v11 removeIgnoredSiriSuggestedSitesWithURLHost:v3 inProfile:v4];
    }

    v12 = *(a1 + 920);
    v5 = *(a1 + 920);
    *(a1 + 920) = 0;

    v6 = *(a1 + 432);
    *(a1 + 432) = 0;

    v7 = *(a1 + 328);
    v8 = [v12 URL];
    LODWORD(v7) = [v7 trySwitchingToPinnedTabOnNavigationToURL:v8];

    if (v7)
    {
      [(BrowserController *)a1 _cancelSpeculativeLoadForDocument:v12];
    }

    else if (([(BrowserController *)a1 _spawnNewTabFromPinnedTabIfNeededForSpeculativeDocument:v12]& 1) == 0)
    {
      v9 = [*(a1 + 328) activeTabDocument];
      [(BrowserController *)a1 _commitToSpeculativeLoadForDocument:v12];
      [v9 willClose];
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
  v2 = [(TabController *)self->_tabController allTabDocuments];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isShowingReader])
        {
          v7 = [v6 readerContext];
          if ([v7 isLoadingNextPage])
          {
            [v7 stopLoadingNextPage];
          }
        }

        else
        {
          [v6 clearReaderView];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (void)_cancelSpeculativeLoadForDocument:(uint64_t)a1
{
  v3 = a2;
  if (a1)
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

- (void)_closeSpeculativelyLoadedDocument:(uint64_t)a1
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 432);
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

- (void)_recordIgnoredSiriSuggestedSitesWithURL:(uint64_t)a1
{
  v5 = a2;
  if (a1 && (*(a1 + 720) & 1) == 0)
  {
    v3 = [(BrowserController *)a1 _catalogViewController];
    v4 = [v3 completionList];
    [v4 recordIgnoredSiriSuggestedSitesWithURL:v5];
  }
}

- (uint64_t)_spawnNewTabFromPinnedTabIfNeededForSpeculativeDocument:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 328) activeTabDocument];
    v5 = [v3 URL];
    v6 = [v4 shouldSpawnNewTabOnNavigationFromPinnedTabWithDestinationURL:v5];

    if (v6)
    {
      [v3 setUpBackClosesSpawnedTabWithParent:v4];
      [v3 updateAncestryWithParentTab:v4];
      [v3 setAllowsRemoteInspection:1];
      [v3 setSuppressWebExtensionEvents:0];
      [*(a1 + 328) insertNewTabDocument:v3 forcingOrderAfterTabDocument:v4 inBackground:0 animated:1];
      v7 = [v4 history];
      [v7 commitDeferredUpdates];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_commitToSpeculativeLoadForDocument:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v11 = v3;
    [v3 setAllowsRemoteInspection:1];
    v4 = [a1[41] activeTabDocument];
    WeakRetained = objc_loadWeakRetained(a1 + 4);
    if (WeakRetained)
    {
      v6 = [v4 webView];
      [v6 _saveBackForwardSnapshotForItem:WeakRetained];

      objc_storeWeak(a1 + 4, 0);
    }

    v7 = [v4 libraryType];

    if (v7)
    {
      v8 = a1[41];
      v9 = [v4 libraryType];
      [v8 openTab:v11 navigatedFromLibraryType:v9];
    }

    else
    {
      [(BrowserController *)a1 _replaceActiveDocument:v4 withSpeculativeDocument:v11];
    }

    [a1 updateDynamicBarGeometry];
    v10 = [a1[111] tabDocumentPendingUserActivityPayload];

    if (v10 == v4)
    {
      [a1[111] setTabDocumentPendingUserActivityPayload:0];
    }

    v3 = v11;
  }
}

- (void)_replaceActiveDocument:(void *)a3 withSpeculativeDocument:
{
  v8 = a2;
  v5 = a3;
  if (a1)
  {
    [a1 setFavoritesState:0 animated:1];
    [*(a1 + 328) replaceTabDocument:v8 withTabDocument:v5 committingSpeculativeLoad:1];
    v6 = [*(a1 + 264) navigationBar];
    [v6 setNeedsLayout];
    [v6 layoutIfNeeded];
    [v8 hideFindOnPage];
    if (*(a1 + 184) != v5)
    {
      [v5 endSuppressingProgressAnimation];
      [v5 animateProgressForCompletedDocument];
    }

    [(BrowserController *)a1 _updateButtonsAnimatingTabBar:?];
    v7 = [v8 history];
    [v7 commitDeferredUpdates];
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
  v2 = [MEMORY[0x277CE3868] safari_allPersistentDataStores];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 httpCookieStore];
        [v7 sf_applySafariCookieStoragePolicy];

        v8 = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
        [v6 _setResourceLoadStatisticsEnabled:{objc_msgSend(v8, "webui_trackerProtectionEnabled")}];
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v9 = [MEMORY[0x277CE3868] nonPersistentDataStore];
  v10 = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
  [v9 _setResourceLoadStatisticsEnabled:{objc_msgSend(v10, "webui_trackerProtectionEnabled")}];
}

- (void)toggleAlwaysShowBookmarksBarMessageReceived
{
  shouldShowBookmarks = [(BrowserController *)&self->super.super.super.isa _shouldShowBookmarksBar];
  v4 = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
  if (((shouldShowBookmarks ^ (v4 == 0)) & 1) == 0)
  {
    [(BrowserController *)self _setShowBookmarksBar:?];
    [(BrowserController *)self _contentContainerViewFrameDidChange];
    [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
    [(BrowserController *)self updateDynamicBarGeometry];
  }
}

- (uint64_t)_prefersShowingBookmarksBar
{
  if (!a1)
  {
    return 0;
  }

  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v1 BOOLForKey:*MEMORY[0x277D28F70]];

  return v2;
}

- (void)setCurrentBookmarksCollection:(id)a3
{
  v6 = a3;
  shouldShowCollectionIn = [(BrowserController *)self _shouldShowCollectionInSidebar];
  v5 = &OBJC_IVAR___BrowserController__modalBookmarksController;
  if (shouldShowCollectionIn)
  {
    v5 = &OBJC_IVAR___BrowserController__libraryController;
  }

  [*(&self->super.super.super.isa + *v5) setCurrentCollection:v6];
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

- (id)sortOptionFromBookmarksViewSortOptionCommandPropertyList:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
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
  if (!a1)
  {
    return 0;
  }

  v1 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v2 = [v1 integerForKey:*MEMORY[0x277D28F80]] == 0;

  return v2;
}

- (BOOL)_stateForSetBookmarksViewModeCompactCommand
{
  if (!a1)
  {
    return 0;
  }

  v1 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v2 = [v1 integerForKey:*MEMORY[0x277D28F80]] == 1;

  return v2;
}

- (BOOL)_stateForToggleBookmarksViewFolderModeSeparatedCommand
{
  if (!a1)
  {
    return 0;
  }

  v1 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v2 = [v1 integerForKey:*MEMORY[0x277D28F88]] == 1;

  return v2;
}

- (BOOL)_stateForBookmarksViewSortOptionCommand:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 propertyList];
    v6 = [(BrowserController *)a1 sortOptionFromBookmarksViewSortOptionCommandPropertyList:v5];

    v7 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v8 = [v7 integerForKey:*MEMORY[0x277D28F90]];
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
  if (a1)
  {
    v1 = [*(a1 + 264) statusBarView];
    v2 = _WBSLocalizedString();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_downloadsDidChange:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 downloads];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(BrowserRootViewController *)self->_rootViewController navigationBar];
    [v6 setHasToolbar:1];
  }

  [(_SFBarManager *)self->_barManager setBarItem:11 hidden:v5 == 0];
}

- (void)loadBackgroundImageIfNeededForIdentifier:(id)a3
{
  v5 = a3;
  v3 = [MEMORY[0x277D4A820] defaultManager];
  if (([v3 isCorrectBackgroundImageLoadedForIdentifier:v5] & 1) == 0)
  {
    [v3 loadImageFromDiskForIdentifier:v5];
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x277D4A960] object:v3];
}

- (void)_backgroundImageFileModifiedRemotely:(id)a3
{
  v8 = a3;
  v3 = [v8 userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D7B5C0]];

  if (v4)
  {
    v5 = [v8 userInfo];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D7B5D0]];

    v7 = [MEMORY[0x277D4A820] defaultManager];
    if (v6)
    {
      [v7 reloadProfileSpecificBackgroundImageFromDisk:v4];
    }

    else
    {
      [v7 reloadTabGroupSpecificBackgroundImageFromDisk:v4];
    }
  }
}

- (void)_backgroundImageNeedsCloudKitUpdate:(id)a3
{
  v9 = a3;
  v4 = [v9 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D4A970]];

  if (v5 && [v5 length])
  {
    v6 = [v9 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D4A920]];

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

- (void)setShowingReader:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(TabController *)self->_tabController activeTabDocument];
  [(BrowserController *)self setShowingReader:v5 animated:v4 forTabDocument:?];
}

- (void)setShowingReader:(BOOL)a3 animated:(BOOL)a4 forTabDocument:(id)a5 completion:(id)a6
{
  v21 = a5;
  v10 = a6;
  if (!a3)
  {
    [(BrowserController *)&self->super.super.super.isa _hideReaderForTabDocument:v21 animated:a4 deactivationMode:1 completion:v10];
    dateReaderOpened = [(BrowserController *)self appReviewPromptManager];
    v14 = [(TabController *)self->_tabController activeTabDocument];
    v15 = [v14 readerViewTopScrollOffset];
    [(UIScrollView *)self->_scrollView contentSize];
    [dateReaderOpened didDismissReaderWithScrollPercentage:self->_dateReaderOpened dateReaderOpened:v15 / v16];

LABEL_7:
    [v21 updateAccessibilityIdentifier];
    goto LABEL_8;
  }

  [v21 prepareToUseReader];
  v11 = [v21 readerContext];
  if ([v11 isReaderAvailable])
  {

    v12 = v21;
LABEL_6:
    [(BrowserController *)&self->super.super.super.isa _showReaderForTabDocument:v12 animated:a4 completion:v10];
    v18 = [MEMORY[0x277CBEAA8] now];
    dateReaderOpened = self->_dateReaderOpened;
    self->_dateReaderOpened = v18;
    goto LABEL_7;
  }

  v17 = [(TabController *)self->_tabController activeTabDocument];

  v12 = v21;
  if (v17 != v21)
  {
    goto LABEL_6;
  }

  v19 = [(BrowserRootViewController *)self->_rootViewController navigationBar];
  v20 = [v19 item];
  [v20 setShowsReaderButton:0];

  if (v10)
  {
    (*(v10 + 2))(v10, 1);
  }

LABEL_8:
}

- (void)_hideReaderForTabDocument:(char)a3 animated:(uint64_t)a4 deactivationMode:(void *)a5 completion:
{
  v10 = a2;
  v9 = a5;
  if (a1)
  {
    [(BrowserController *)a1 _setReaderVisible:v10 forTabDocument:a4 deactivationMode:a3 animated:v9 completion:?];
    [a1 updatePullToRefreshIsEnabled];
  }
}

- (void)_showReaderForTabDocument:(char)a3 animated:(void *)a4 completion:
{
  v8 = a2;
  v7 = a4;
  if (a1)
  {
    [(BrowserController *)a1 _setReaderVisible:v8 forTabDocument:0 deactivationMode:a3 animated:v7 completion:?];
  }
}

- (void)_readerButtonTapped
{
  if (a1)
  {
    v2 = [a1 isShowingReader];
    v3 = v2;
    [a1 setShowingReader:v2 ^ 1u animated:1];
    if ((v3 & 1) == 0)
    {
      v4 = [MEMORY[0x277D499B8] sharedLogger];
      [v4 didActivateReaderWithTrigger:0];
    }
  }
}

- (void)_readerVisibilityDidChange
{
  if (a1)
  {
    [(BrowserController *)a1 _contentContainerViewFrameDidChange];
    [a1 updateInterface];
    [a1[33] updateThemeColorIfNeededAnimated:1];
    [a1 updatePullToRefreshIsEnabled];
    v2 = [a1[21] viewController];
    if ([MEMORY[0x277D49A08] isBrowsingAssistantEnabled])
    {
      [v2 readerVisibilityDidChange];
    }

    else
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }

    v3 = [a1[41] activeTabDocument];
    v4 = [v3 assistantController];
    v5 = [v3 readerContext];
    v6 = [v4 webpageIdentifier];
    [v5 setWebpageIdentifier:v6];

    if ([v3 isShowingReader])
    {
      [a1 checkSummarizationStateToShowSummarizeButton];
      if ([v3 allowsBrowsingAssistant])
      {
        v7 = [v4 isSummaryAvailable];
        if (v7 & 1) != 0 || ([v4 result], v6 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v6, "tableOfContentsAvailable")))
        {
          v8 = [MEMORY[0x277D49E58] userConsentState];
          if ((v7 & 1) == 0)
          {
          }

          if (v8 == 1)
          {
            v9 = [v3 assistantController];
            v10 = [v3 url];
            v11[0] = MEMORY[0x277D85DD0];
            v11[1] = 3221225472;
            v11[2] = __47__BrowserController__readerVisibilityDidChange__block_invoke;
            v11[3] = &unk_2781D6598;
            v12 = v5;
            v13 = v4;
            v14 = v3;
            [v9 fetchAssistantContentFromPegasusForURL:v10 withCompletionHandler:v11];
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
  v3 = [(TabController *)self->_tabController activeTabDocument];
  v4 = [v3 readerContext];
  v5 = [v3 assistantController];
  if ([v5 isSummaryAvailable])
  {
  }

  else
  {
    v6 = [MEMORY[0x277D49A08] isOnDeviceSummarizationEnabled];

    if (v6)
    {
      v7 = [v4 readerTextForSummarization];
      v8 = [v7 length];

      if (v8)
      {
        [(BrowserController *)self _showSummarizeButtonIfNeeded];
      }

      else
      {
        v9 = [v3 readerWebView];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __65__BrowserController_checkSummarizationStateToShowSummarizeButton__block_invoke;
        v10[3] = &unk_2781D65C0;
        v11 = v4;
        v12 = self;
        [v9 _getContentsAsStringWithCompletionHandler:v10];
      }
    }
  }
}

- (void)_showSummarizeButtonIfNeeded
{
  if (a1)
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

- (void)_setReaderVisible:(void *)a3 forTabDocument:(uint64_t)a4 deactivationMode:(char)a5 animated:(void *)a6 completion:
{
  v11 = a3;
  v12 = a6;
  if (!a1)
  {
    goto LABEL_21;
  }

  v13 = [a1[41] activeTabDocument];

  if (v13 == v11)
  {
    [v11 hideFindOnPage];
  }

  if (a2)
  {
    [v11 createBrowserReaderViewIfNeeded];
    if (v13 == v11)
    {
      [a1[36] contentOffset];
      [v11 setScrollPoint:?];
    }
  }

  else
  {
    v14 = [v11 readerContext];
    [v14 deactivateReaderNow:a4];

    if ([v11 shouldRestoreReader])
    {
      [a1 verticalScrollOffsetForReaderViewInTabDocument:v11];
      [v11 setReaderViewTopScrollOffset:v15];
    }

    if (a4 == 2)
    {
      goto LABEL_11;
    }
  }

  [v11 setShowingReader:a2];
LABEL_11:
  [a1 document:v11 willMakeReaderVisible:a2];
  WeakRetained = objc_loadWeakRetained(a1 + 46);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:a1 didChangeReaderVisibilityForTabDocument:v11];
  }

  if (v13 == v11)
  {
    objc_initWeak(&location, a1);
    if (a2 && ([a1[10] isCommittingToContinuousDocument] & 1) == 0)
    {
      [a1[36] contentOffset];
      [a1[36] setContentOffset:{v17, objc_msgSend(v11, "readerViewTopScrollOffset")}];
    }

    v18 = [a1[117] window];
    [v18 setUserInteractionEnabled:0];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __91__BrowserController__setReaderVisible_forTabDocument_deactivationMode_animated_completion___block_invoke;
    v26 = &unk_2781D65E8;
    v19 = v18;
    v27 = v19;
    v20 = v11;
    v28 = v20;
    v31 = a2;
    v32 = a5;
    v29 = v12;
    objc_copyWeak(&v30, &location);
    v21 = _Block_copy(&v23);
    v22 = [v20 readerContext];
    [v22 setUpReaderWebViewIfNeededAndPerformBlock:v21];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 1);
  }

LABEL_21:
}

- (double)verticalScrollOffsetForReaderViewInTabDocument:(id)a3
{
  v3 = a3;
  if ([v3 isShowingReader])
  {
    v4 = [v3 readerWebView];
    v5 = [v4 scrollView];
    [v5 contentOffset];
    v7 = v6;
  }

  else
  {
    if ([v3 shouldRestoreReader])
    {
      v8 = [v3 readerViewTopScrollOffset];
    }

    else
    {
      v8 = 0;
    }

    v7 = v8;
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

- (void)setReaderShouldBeShownIfPossible:(BOOL)a3
{
  if (self->_readerShouldBeShownIfPossible == a3)
  {
    return;
  }

  self->_readerShouldBeShownIfPossible = a3;
  if (![(BrowserController *)self _isInContinuousMode])
  {
    return;
  }

  v7 = [(BrowserController *)self nextContinuousItemDocument];
  v4 = [(BrowserController *)self previousContinuousItemDocument];
  if (!self->_readerShouldBeShownIfPossible)
  {
    goto LABEL_9;
  }

  if (![v7 isReaderAvailable])
  {
    if ([v4 isReaderAvailable])
    {
      [v4 createBrowserReaderViewIfNeeded];
      v5 = 1;
      v6 = v4;
      goto LABEL_10;
    }

LABEL_9:
    [(BrowserController *)&self->super.super.super.isa _setContinuousReadingContentViewFromTabDocument:v7 useReaderView:0];
    v5 = 0;
    v6 = v4;
    goto LABEL_10;
  }

  [v7 createBrowserReaderViewIfNeeded];
  v5 = 1;
  v6 = v7;
LABEL_10:
  [(BrowserController *)&self->super.super.super.isa _setContinuousReadingContentViewFromTabDocument:v6 useReaderView:v5];
}

- (void)_setContinuousReadingContentViewFromTabDocument:(int)a3 useReaderView:
{
  v6 = a2;
  if (a1)
  {
    if (a3)
    {
      [v6 readerWebView];
    }

    else
    {
      [v6 webView];
    }
    v5 = ;
    if (a1[26] == v6)
    {
      [a1[10] didCreateWebViewForPreviousDocument:v5];
    }

    else if (a1[20] == v6)
    {
      [a1[10] didCreateWebViewForNextDocument:v5];
    }
  }
}

- (void)_perSiteAutomaticReaderActivationPreferenceDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__BrowserController__perSiteAutomaticReaderActivationPreferenceDidChange___block_invoke;
  v6[3] = &unk_2781D61F8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)_perSitePageZoomPreferenceDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__BrowserController__perSitePageZoomPreferenceDidChange___block_invoke;
  v6[3] = &unk_2781D61F8;
  v7 = v4;
  v8 = self;
  v5 = v4;
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
  if (a1)
  {
    v1 = [a1 viewControllerToPresentFrom];
    v4 = [v1 presentedViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v4 viewControllers];
      v3 = [v2 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 reloadPreferences];
      }
    }
  }
}

- (BOOL)addReadingListBookmarkForCurrentTab
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  if ([v3 isBlank])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(BrowserController *)self _sidebarViewController];
    v6 = [v5 topReadingListViewController];

    v7 = [v3 hasDoneReaderDetection];
    v8 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v9 = [v3 titleForNewBookmark];
    v10 = [v3 cachedCanonicalURLOrURLForSharing];
    v4 = [(WebBookmarkCollection *)v8 saveReadingListBookmarkWithTitle:v9 address:v10 previewText:0 thumbnailURL:0 siteName:0 tabDocument:v3 didFetchPage:v7 updateController:v6 savedBookmarkID:0 shouldFetchMetadata:1];
  }

  return v4;
}

- (void)showReadingListAutomaticArchiveAlertIfNeededWithCompletion:(id)a3
{
  v5 = a3;
  if (([(BrowserController *)self _shouldShowNewReadingListBehaviorAlert]& 1) != 0)
  {
    v4 = [(BrowserController *)self _newReadingListBehaviorAlertControllerWithCompletion:v5];
    [(BrowserController *)self presentModalViewController:v4 completion:&__block_literal_global_351];
  }

  else if (v5)
  {
    v5[2]();
  }
}

- (uint64_t)_shouldShowNewReadingListBehaviorAlert
{
  if (!a1)
  {
    return 0;
  }

  v1 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  if (([v1 BOOLForKey:@"HasShownAutomaticReadingListArchivingAlert"] & 1) == 0)
  {
    if (![v1 safari_shouldAutomaticallyDownloadReadingListItems])
    {
      v2 = 1;
      goto LABEL_7;
    }

    [v1 setBool:1 forKey:@"HasShownAutomaticReadingListArchivingAlert"];
  }

  v2 = 0;
LABEL_7:

  return v2;
}

- (void)_newReadingListBehaviorAlertControllerWithCompletion:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = MEMORY[0x277D75110];
    v5 = _WBSLocalizedString();
    a1 = [v4 alertControllerWithTitle:0 message:v5 preferredStyle:1];

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

    [a1 addAction:{v9, v14, v15, v16, v17}];
    [a1 addAction:v12];
  }

  return a1;
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

- (void)snapshotTabDocument:(id)a3 size:(CGSize)a4 options:(unint64_t)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  v14 = objc_alloc_init(MEMORY[0x277D49B60]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __65__BrowserController_snapshotTabDocument_size_options_completion___block_invoke;
  v37[3] = &unk_2781D60B8;
  v37[4] = self;
  [v14 setHandler:v37];
  if (!v11)
  {
    v20 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [BrowserController snapshotTabDocument:size:options:completion:];
    }

    v21 = 2;
    goto LABEL_16;
  }

  v15 = [WeakRetained browserController:self tabSnapshotContentProviderForTabDocument:v11];
  if (!v15)
  {
    v21 = 1;
LABEL_16:
    v12[2](v12, 0, v21);
    goto LABEL_31;
  }

  v36 = objc_alloc_init(TabSnapshotGenerator);
  v16 = [WeakRetained tabSnapshotGeneratorDelegateForBrowserController:self];
  [(TabSnapshotGenerator *)v36 setDelegate:v16];

  if (![v11 isActive] || (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v15, "checkAndResetIfNextSnapshotRequiresScreenUpdates"))
  {
    a5 |= 0x20uLL;
  }

  if ([v11 isShowingSystemStartPage] && -[BrowserRootViewController usingLoweredBar](self->_rootViewController, "usingLoweredBar"))
  {
    a5 |= 0x40uLL;
  }

  v17 = [(TabController *)self->_tabController tabCollectionViewManager];
  v18 = [v17 tabThumbnailCollectionView];

  v35 = v18;
  if (objc_opt_respondsToSelector())
  {
    v19 = [v18 isPerformingReducedMotionTransition];
  }

  else
  {
    v19 = 0;
  }

  v22 = [v11 isShowingSystemStartPage];
  v23 = a5 | 0x20;
  if (v19)
  {
    v23 = a5;
  }

  if (!v22)
  {
    v23 = a5;
  }

  if (self->_shouldAwaitAnimationCompletionForNextSnapshot)
  {
    v24 = v23 | 0x100;
  }

  else
  {
    v24 = v23;
  }

  v25 = [TabSnapshotRequest alloc];
  v26 = [v11 uuid];
  v27 = [(TabSnapshotRequest *)v25 initWithSize:v24 options:v26 identifier:width, height];

  v28 = objc_alloc(MEMORY[0x277D28DA8]);
  v29 = [v11 uuid];
  v30 = [v28 initWithIdentifier:v29];

  if ([MEMORY[0x277D49A08] isSolariumEnabled] && _SFDeviceIsPad())
  {
    [(_SFWebView *)self->_webView safeAreaInsets];
    UIEdgeInsetsMax();
    [v30 setHorizontalObscuredInsets:?];
  }

  [(BrowserController *)self windowSize];
  [v30 setWindowSize:?];
  v31 = [(BrowserController *)self UUID];
  [v30 setWindowUUID:v31];

  v32 = [(TabController *)self->_tabController activeTabDocument];

  if (v32 == v11)
  {
    v33 = MEMORY[0x277CCABB0];
    [(BrowserRootViewController *)self->_rootViewController bannerHeightIncludedInSnapshot];
    v34 = [v33 numberWithDouble:?];
    [v30 setIncludedBannerHeight:v34];
  }

  [(TabSnapshotRequest *)v27 setMetadata:v30];
  [(TabSnapshotGenerator *)v36 snapshotWithRequest:v27 contentProvider:v15 completion:v12];

LABEL_31:
}

- (BOOL)avoidSnapshotOfActiveTabIfPossible
{
  v2 = [(TabController *)self->_tabController activeTabDocument];
  v3 = [v2 isBlank];

  return v3;
}

- (void)_cancelContentScrollGestures
{
  if (a1)
  {
    [*MEMORY[0x277D76620] _cancelGestureRecognizersForView:*(a1 + 288)];
    v2 = [(BrowserController *)a1 _catalogViewController];
    [v2 cancelFavoritesGestures];
  }
}

- (void)tabCollectionViewWillPresent:(id)a3
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  v5 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];

  if (!v5)
  {
    v6 = [(BrowserController *)self createCatalogViewControllerIfNeeded];
    [WeakRetained browserController:self setCatalogViewController:v6];
  }

  v7 = [(_SFWebView *)self->_webView firstResponder];
  [v7 resignFirstResponder];

  v8 = [MEMORY[0x277D28F08] settings];
  v9 = [(BrowserController *)self UUID];
  [v8 setIsShowingTabView:1 forWindowWithUUID:v9];

  [(BrowserRootViewController *)self->_rootViewController tabCollectionViewWillPresent:v11];
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

- (void)tabCollectionViewWillDismiss:(id)a3
{
  v7 = a3;
  v4 = [MEMORY[0x277D28F08] settings];
  v5 = [(BrowserController *)self UUID];
  [v4 setIsShowingTabView:0 forWindowWithUUID:v5];

  [(BrowserRootViewController *)self->_rootViewController tabCollectionViewWillDismiss:v7];
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained updateTabViewPinchRecognizerForBrowserController:self];
  [(UIScrollView *)self->_scrollView flashScrollIndicators];
  [WeakRetained browserControllerMakeKey:self];
}

- (void)tabCollectionViewDidDismiss:(id)a3
{
  v9 = a3;
  v4 = [(TabController *)self->_tabController activeTabDocument];
  if (-[BrowserController _wantsURLFieldAutoFocus](&self->super.super.super.isa) && [v4 isBlank])
  {
    v5 = [v4 URL];
    if (v5)
    {
    }

    else
    {
      v6 = [v4 libraryType];

      if (!v6)
      {
        [(BrowserController *)self setFavoritesFieldFocused:1 animated:1];
      }
    }
  }

  [(BrowserController *)&self->super.super.super.isa _updateDigitalHealthOverlayAfterExitingTabSwitcher];
  [(BrowserRootViewController *)self->_rootViewController tabCollectionViewDidDismiss:v9];
  if (([(BrowserController *)self sf_inResponderChain]& 1) == 0)
  {
    [(BrowserController *)self becomeFirstResponder];
  }

  [v4 presentNextDialogIfNeeded];
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
  if (a1)
  {
    if ([a1 isShowingFavorites])
    {
      v5 = [a1[41] tabDocumentBeingActivated];
      [(BrowserController *)a1 _hideDigitalHealthOverlayForTabDocument:v5];
    }

    else
    {
      v2 = MEMORY[0x277CBEB98];
      v5 = [a1[41] activeTabDocument];
      v3 = [a1[41] tabDocumentBeingActivated];
      v4 = [v2 setWithObjects:{v5, v3, 0}];
      [(BrowserController *)a1 _updateDigitalHealthOverlayForTabDocuments:v4];
    }
  }
}

- (void)_checkWebViewVisibilityAfterExitingTabView
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_hideDigitalHealthOverlayForTabDocument:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v8 = v3;
    v4 = [(BrowserController *)a1 _isTabDocumentFrontMostForDigitalHealth:v3];
    v3 = v8;
    if (v4)
    {
      v5 = [(BrowserController *)a1 _screenTimeOverlayViewControllerForTabDocument:v8];
      v6 = v5;
      if (v5)
      {
        [v5 willMoveToParentViewController:0];
        v7 = [v6 view];
        [v7 removeFromSuperview];

        [v6 removeFromParentViewController];
        if (([a1[41] hasTabsThatShouldBeObscuredForDigitalHealth] & 1) == 0)
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
  v3 = [MEMORY[0x277D28F08] settings];
  v4 = [(BrowserController *)self UUID];
  [v3 setIsShowingTabView:1 forWindowWithUUID:v4];

  rootViewController = self->_rootViewController;
  v6 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  [(BrowserRootViewController *)rootViewController tabCollectionViewDidCancelDismissal:v6];

  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained updateTabViewPinchRecognizerForBrowserController:self];

  [(BrowserController *)self _cancelContentScrollGestures];
}

- (id)borrowContentViewControllerForTab:(id)a3
{
  v4 = a3;
  self->_contentBorrowedForTab = 1;
  if (objc_opt_respondsToSelector())
  {
    [(_SFWebView *)self->_webView _exitFullScreenImmediately];
  }

  v5 = [(BrowserRootViewController *)self->_rootViewController navigationBar];
  [v5 setBackdropGroupDisabled:1];

  [(BrowserRootViewController *)self->_rootViewController setDocumentSafeAreaInsetsFrozen:1];
  if ([v4 shouldObscureForDigitalHealth])
  {
    [(BrowserController *)self _insertScreenTimeLockoutShieldIntoContentViewForTab:v4 animated:1];
  }

  v6 = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerView];
  [v6 setHidden:0];
  v7 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  v8 = [v7 capsuleCollectionView];

  if (v8)
  {
    v9 = [v8 lockdownStatusBar];
    if (v9 && [v8 layoutStyle] == 2)
    {
      [v9 bounds];
      [v6 convertRect:v9 fromView:?];
      [v9 setFrame:?];
      [v6 addSubview:v9];
    }

    v10 = [v8 minimizedProgressView];
    [v10 bounds];
    [v6 convertRect:v10 toView:?];
    [v10 setFrame:?];
    [v6 addSubview:v10];
  }

  [v6 setUserInteractionEnabled:0];
  [v6 setUserInteractionEnabled:1];
  v11 = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerViewController];

  return v11;
}

- (void)_insertScreenTimeLockoutShieldIntoContentViewForTab:(uint64_t)a3 animated:
{
  v5 = a2;
  if (a1)
  {
    v11 = v5;
    v6 = [(BrowserController *)a1 _screenTimeHostingViewControllerForTabDocument:v5];
    v7 = [v6 screenTimeOverlayViewController];
    v8 = [v11 URL];
    v9 = v8;
    if (v7 && v8)
    {
      v10 = [v7 showBlockingViewControllerForURL:v8 withPolicy:objc_msgSend(v11 animated:{"policy"), a3}];
      [v6 displayHostedScreenTimeView];
    }

    v5 = v11;
  }
}

- (void)reinsertBorrowedContentViewForTab:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  self->_contentBorrowedForTab = 0;
  if (objc_opt_respondsToSelector())
  {
    [(_SFWebView *)self->_webView _exitFullScreenImmediately];
  }

  v4 = [(BrowserRootViewController *)self->_rootViewController navigationBar];
  [v4 setBackdropGroupDisabled:0];

  [(BrowserRootViewController *)self->_rootViewController setDocumentSafeAreaInsetsFrozen:0];
  v5 = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerView];
  v25 = v5;
  v6 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  v26 = v6;
  [v5 setHidden:{objc_msgSend(v6, "presentationState") != 0}];
  v7 = [(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar];
  v8 = [(BrowserRootViewController *)self->_rootViewController bottomToolbar];
  v23 = v8;
  [v8 _setSafeAreaInsetsFrozen:0];
  v9 = [v6 view];
  v24 = v9;
  v27 = [(BrowserRootViewController *)self->_rootViewController documentAndTopBarsContainerViewController];
  v10 = [v27 parentViewController];
  v11 = [(BrowserRootViewController *)self->_rootViewController contentContainerViewController];

  if (v10 != v11)
  {
    v6 = [(BrowserRootViewController *)self->_rootViewController contentContainerViewController];
    [v6 addChildViewController:v27];
  }

  v12 = [v9 superview];
  if (v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  v28[0] = v13;
  v28[1] = v5;
  v28[2] = v8;
  if (v7)
  {
    v6 = [(BrowserRootViewController *)self->_rootViewController sidebarContentDimmingView];
    v29 = v6;
    v5 = [(BrowserRootViewController *)self->_rootViewController sidebarViewController];
    v14 = [v5 view];
  }

  else
  {
    v14 = 0;
    v29 = 0;
  }

  v30 = v14;
  v15 = +[FeatureManager sharedFeatureManager];
  if ([v15 isFloatingSidebarButtonEnabled])
  {
    v31 = [(BrowserRootViewController *)self->_rootViewController floatingSidebarButton];
  }

  else
  {
    v31 = 0;
  }

  if (v7)
  {
  }

  v16 = [(BrowserRootViewController *)self->_rootViewController contentContainerView];
  [v16 _sf_setOrderedSubviews:v28 count:6];

  if (v10 != v11)
  {
    v17 = [(BrowserRootViewController *)self->_rootViewController contentContainerViewController];
    [v27 didMoveToParentViewController:v17];
  }

  v18 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  v19 = [v18 capsuleCollectionView];
  [v19 reattachControls];

  v20 = [(BrowserRootViewController *)self->_rootViewController view];
  [v20 setNeedsLayout];

  [(BrowserController *)self updateExposedScrollViewRect];
  if (self->_wantsUnifiedFieldFocused && [(BrowserController *)&self->super.super.super.isa _wantsURLFieldAutoFocus])
  {
    v21 = [(BrowserRootViewController *)self->_rootViewController primaryNavigationBar];
    v22 = [v21 textField];
    [v22 becomeFirstResponder];
  }
}

- (void)_navigationGestureDidBegin
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 368));
    [WeakRetained browserControllerWillBeginNavigationGesture:a1];

    v3 = [*(a1 + 328) activeTabDocument];
    [v3 freezeForNavigationGesture];

    v4 = [*(a1 + 264) dynamicBarAnimator];
    *(a1 + 400) = [v4 state];

    *(a1 + 361) = 1;
    v5 = [*(a1 + 328) activeTabDocument];
    v6 = [v5 appBanner];
    v7 = [v6 overlayProvider];

    [v7 webViewBackforwardGestureNavigationWillBegin];
  }
}

- (void)_navigationGestureWillEndWithNavigationToBackForwardListItem:(uint64_t)a1
{
  v6 = a2;
  if (a1)
  {
    [(BrowserController *)a1 _presentReaderTriggeredAppReviewPromptIfNeeded];
    if (v6)
    {
      v3 = [*(a1 + 328) activeTabDocument];
      v4 = [v3 mustShowBarsForBackForwardListItem:v6];

      if (v4)
      {
        [a1 showBars];
      }
    }

    else
    {
      v5 = [*(a1 + 264) dynamicBarAnimator];
      [v5 attemptTransitionToState:*(a1 + 400) animated:1];
    }
  }
}

- (void)_navigationGestureDidEndWithNavigation:(uint64_t)a1
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 368));
    [WeakRetained browserControllerDidEndNavigationGesture:a1];

    v8 = [*(a1 + 328) activeTabDocument];
    v4 = [v8 appBanner];
    v5 = [v4 overlayProvider];

    [v5 webViewBackforwardGestureNavigationDidEnd];
    if (a2)
    {
      v6 = [v8 appBanner];

      if (v6)
      {
        [a1 removeAppBannerFromTabDocument:v8 animated:0];
      }
    }

    [v8 unfreezeAfterNavigationGesture:a2];
    *(a1 + 361) = 0;
  }
}

- (void)updatePullToRefreshIsEnabled
{
  v3 = ![(BrowserRootViewController *)self->_rootViewController isInYttriumMode]&& ![(BrowserController *)self isShowingReader]&& ![(BrowserController *)self _isInContinuousMode]&& ![(UIScrollView *)self->_scrollView isZooming]&& [(_SFWebView *)self->_webView fullscreenState]== 0;
  rootViewController = self->_rootViewController;

  [(BrowserRootViewController *)rootViewController setPullToRefreshIsEnabled:v3];
}

- (void)clearDocumentForContinuousReading:(id)a3
{
  v4 = a3;
  if ([(BrowserController *)self isContinuousReadingDocument:?])
  {
    if (self->_previousContinuousItemDocument == v4)
    {
      [(BrowserController *)self _clearPreviousContinuousItemDocument];
    }

    else if (self->_nextContinuousItemDocument == v4)
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

- (BOOL)isContinuousReadingDocument:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_previousContinuousItemDocument == v4 || self->_nextContinuousItemDocument == v4;
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
    v3 = [(BrowserController *)self _sidebarViewController];
    v4 = [v3 topReadingListViewController];

    [v4 updateAndScrollToCurrentSelectedItemIfNeeded:1];
  }

  [(BrowserController *)self updatePullToRefreshIsEnabled];
}

- (double)browserViewController:(id)a3 adjustedBottomContentInset:(double)a4
{
  v5 = [(ContinuousReadingViewController *)self->_continuousReadingViewController previewView];
  [v5 rubberBandingHeight];
  v7 = v6 + a4;

  return v7;
}

- (void)updateFocusForTab:(id)a3 webViewCanTakeFocus:(BOOL)a4
{
  v18 = a3;
  v6 = [(TabController *)self->_tabController activeTabDocument];
  v7 = [v6 uuid];
  v8 = [v18 uuid];
  v9 = WBSIsEqual();

  if ((v9 & 1) == 0 || [(BrowserController *)self isFavoritesFieldFocused]|| [(BrowserController *)self _hasPresentedViewController])
  {
    goto LABEL_19;
  }

  isWindowLockedForPrivate = [(BrowserController *)self _isWindowLockedForPrivateBrowsing];
  if (self->_webView)
  {
    v11 = isWindowLockedForPrivate;
    v12 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([v12 presentationState] == 1)
    {
    }

    else
    {
      v14 = [v12 presentationState];

      if (v14 != 2)
      {
        v13 = ([v6 isShowingSystemStartPage] | v11) ^ 1;
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
  v16 = [WeakRetained focusSystem];
  if (v16)
  {

    if ((v13 & a4 & 1) == 0)
    {
      v17 = [(BrowserController *)self parentFocusEnvironment];
      [v17 setNeedsFocusUpdate];

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

- (void)_didChangeToFirstResponder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BrowserController;
  [(BrowserController *)&v7 _didChangeToFirstResponder:v4];
  tabController = self->_tabController;
  v6 = [(TabController *)tabController activeTabDocument];
  [(TabController *)tabController saveTabDocumentUserActivitySoon:v6];
}

- (id)undoManager
{
  if (self->_overridesUndoManagerForClosedTabs)
  {
    v2 = [(TabController *)self->_tabController undoManager];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = BrowserController;
    v2 = [(BrowserController *)&v4 undoManager];
  }

  return v2;
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

- (void)setActiveProfileIdentifier:(id)a3
{
  v13 = a3;
  v4 = [(BrowserController *)self activeProfileIdentifier];
  v5 = [v4 isEqualToString:v13];

  if ((v5 & 1) == 0)
  {
    [(BrowserController *)self clearContinuousItemDocuments];
    [(BrowserController *)self clearSpeculativeLoadDocument];
    v6 = [(BrowserController *)self activeProfile];
    v7 = [v6 identifier];

    [(TabController *)self->_tabController willSelectProfileWithIdentifier:v13];
    [(WBProfileWindow *)self->_profileWindow setActiveProfileIdentifier:v13];
    [(TabController *)self->_tabController didSelectProfileWithIdentifier:v13 previousProfileIdentifier:v7];
    [(LibraryController *)self->_libraryController didSwitchProfile];
    v8 = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
    [v8 setNeedsReloadData];

    [(BrowserController *)self _prepareExtensionsForEffectiveProfile];
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 postNotificationName:@"ProfileDidChange" object:self];

    v10 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v11 = [(BrowserController *)self activeProfileIdentifier];
    [v10 setObject:v11 forKey:*MEMORY[0x277D29030]];

    v12 = [MEMORY[0x277D28BF0] sharedProvider];
    [v12 clearCachedMenuForPersona:0];
  }
}

- (id)existingUnnamedTabGroupForProfileWithIdentifier:(id)a3
{
  v3 = [(WBProfileWindow *)self->_profileWindow existingUnnamedTabGroupForProfileWithIdentifier:a3];

  return v3;
}

- (void)tabGroupManager:(id)a3 didUpdateProfileWithIdentifier:(id)a4 difference:(id)a5
{
  v23 = a4;
  v7 = a5;
  v8 = [(BrowserController *)self activeProfileIdentifier];
  v9 = [v8 isEqualToString:v23];

  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

  if ([(BrowserController *)self hasMultipleProfiles])
  {
    v10 = [(TabController *)self->_tabController activeTabGroup];
    v11 = [v10 isNamed] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  profileTitleInScene = self->_profileTitleInScene;
  v13 = [(BrowserController *)self activeProfile];
  v14 = [v13 title];
  if (![(NSString *)profileTitleInScene isEqualToString:v14]|| !((self->_profileTitleInScene == 0) | v11 & 1))
  {

    goto LABEL_10;
  }

  v15 = (self->_profileTitleInScene == 0) & v11;

  if (v15)
  {
LABEL_10:
    [(BrowserController *)self _updateSceneTitle];
  }

  if (([v7 result] & 3) != 0 || !objc_msgSend(v7, "result"))
  {
    [(TabController *)self->_tabController updateSelectedTabGroupName];
  }

  v16 = [(BrowserController *)self activeProfile];
  v17 = [v16 customFavoritesFolderServerID];
  v18 = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
  v19 = [v18 currentRootBookmark];
  v20 = [v19 serverID];
  v21 = WBSIsEqual();

  if ((v21 & 1) == 0 && ([v7 result] & 4) != 0)
  {
    v22 = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
    [v22 setNeedsReloadData];
  }

LABEL_17:
}

- (uint64_t)_currentlyEditingText
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 328) activeTabDocument];
  v2 = [v1 webView];
  if ([v2 sf_inResponderChain])
  {
    v3 = [v1 hasFormControlInteraction];
  }

  else
  {
    v4 = [MEMORY[0x277D75678] activeInstance];
    v5 = [v4 inputDelegate];
    v3 = v5 != 0;
  }

  return v3;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  isWindowLockedForPrivate = [(BrowserController *)self _isWindowLockedForPrivateBrowsing];
  v8 = [(TabController *)self->_tabController activeTabDocument];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x277D28BF0] sharedProvider];
    if ([v9 commandConflictsWithTextEditing:v6])
    {
      v10 = [(BrowserController *)self _currentlyEditingText];

      if (v10)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  v11 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  v12 = [v11 presentationState] == 1 || objc_msgSend(v11, "presentationState") == 2;

  if (sel_focusAddressFieldKeyPressed == a3 || sel_focusAddressFieldAlternativeKeyPressed == a3)
  {
    if (!v12)
    {
      v17 = [(BrowserController *)self activeLibraryType];
      LOBYTE(v16) = (v17 == 0) & (isWindowLockedForPrivate ^ 1);
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (sel_toggleBookmarksKeyPressed == a3 || sel_editBookmarksKeyPressed == a3)
  {
LABEL_36:
    LOBYTE(v16) = (v12 | isWindowLockedForPrivate) ^ 1;
    goto LABEL_47;
  }

  if (sel_toggleShowingFavoritesBarKeyPressed == a3)
  {
    if (v12)
    {
      goto LABEL_35;
    }

    v18 = [(BrowserController *)&self->super.super.super.isa contentContainerView];
    [v18 bounds];
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

  if (sel_reloadKeyPressed == a3 || sel_reloadFromOriginKeyPressed == a3 || sel_takeFindStringKeyPressed == a3)
  {
    v23 = [(BrowserController *)self _showingTabDocumentWithURL];
    goto LABEL_46;
  }

  if (sel_printKeyPressed == a3)
  {
    if (v12)
    {
      goto LABEL_35;
    }

    v23 = [(BrowserController *)self _canPrintForTabDocument:v8];
LABEL_46:
    LOBYTE(v16) = v23 & (isWindowLockedForPrivate ^ 1);
    goto LABEL_47;
  }

  if (sel_find_ == a3)
  {
    if (![(BrowserController *)self canFindOnPage]&& ![(BrowserController *)self _tabViewCanSearchTabs])
    {
      goto LABEL_35;
    }

LABEL_52:
    LOBYTE(v16) = isWindowLockedForPrivate ^ 1;
    goto LABEL_47;
  }

  if (sel_navigateBackKeyPressed == a3)
  {
    if (v12)
    {
      goto LABEL_35;
    }

    v23 = [v8 canGoBack];
    goto LABEL_46;
  }

  if (sel_navigateForwardKeyPressed == a3)
  {
    if (v12)
    {
      goto LABEL_35;
    }

    v23 = [v8 canGoForward];
    goto LABEL_46;
  }

  if (sel_toggleReaderKeyPressed == a3)
  {
    goto LABEL_52;
  }

  if (sel_closeActiveTab_ == a3)
  {
    v23 = [(TabController *)self->_tabController canCloseTab];
    goto LABEL_46;
  }

  if (sel_closeOtherTabsKeyPressed == a3)
  {
    v23 = [(TabController *)self->_tabController canCloseOtherTabs];
    goto LABEL_46;
  }

  if (sel_nextTabKeyPressed_ == a3 || sel_previousTabKeyPressed_ == a3 || sel_switchToTabKeyPressed_ == a3)
  {
    goto LABEL_36;
  }

  if (sel_addToBookmarks_ == a3)
  {
    goto LABEL_59;
  }

  if (sel_addToReadingList_ == a3)
  {
    v23 = [(BrowserController *)self canAddToReadingList];
    goto LABEL_46;
  }

  if (sel_fastAddBookmark == a3)
  {
LABEL_59:
    v23 = [(BrowserController *)self canAddToBookmarks];
    goto LABEL_46;
  }

  if (sel_previousReadingListItemKeyPressed == a3)
  {
    if (v12 || ![(BrowserController *)self _isInContinuousMode])
    {
      goto LABEL_35;
    }

    v18 = [(BrowserController *)self continuousReadingController];
    v25 = [v18 previousReadingListItem];
LABEL_68:
    LOBYTE(v16) = (v25 != 0) & (isWindowLockedForPrivate ^ 1);

    goto LABEL_44;
  }

  if (sel_nextReadingListItemKeyPressed == a3)
  {
    if (v12 || ![(BrowserController *)self _isInContinuousMode])
    {
      goto LABEL_35;
    }

    v18 = [(BrowserController *)self continuousReadingController];
    v25 = [v18 nextReadingListItem];
    goto LABEL_68;
  }

  v13 = [(_SFBarManager *)self->_barManager isBarItemEnabled:7];
  v57 = isWindowLockedForPrivate ^ 1;
  if (SFEnhancedTabOverviewEnabled())
  {
    tabController = self->_tabController;
    v15 = [(TabController *)tabController activeTabGroupOrTabGroupVisibleInSwitcher];
    v16 = [(TabController *)tabController canAddNewTabInTabGroup:v15]& v57;
  }

  else
  {
    v16 = v13 & (isWindowLockedForPrivate ^ 1);
  }

  if (sel_reopenLastClosedTabPressed == a3)
  {
    if (!v16)
    {
      goto LABEL_47;
    }

    if ([(BrowserController *)self isPrivateBrowsingEnabled])
    {
      goto LABEL_35;
    }

    v17 = [(BrowserController *)self _lastClosedTabStateData];
    LOBYTE(v16) = v17 != 0;
    goto LABEL_38;
  }

  v26 = !v12;
  if (sel_openNewTab_ == a3)
  {
    if (!v16)
    {
      goto LABEL_47;
    }

    goto LABEL_137;
  }

  if (sel_newTabAlternativeKeyPressed != a3 && sel_newTabWithAlternativeOrderingKeyPressed != a3)
  {
    if (sel_openNewPrivateTab_ == a3)
    {
      if ([(TabController *)self->_tabController canAddNewTabForPrivateBrowsing:1])
      {
        objc_opt_class();
        LOBYTE(v16) = (objc_opt_isKindOfClass() | v26) & v57;
        goto LABEL_47;
      }

      goto LABEL_35;
    }

    if (sel_openNewNormalTab_ != a3)
    {
      if (sel_toggleTabViewKeyPressed != a3)
      {
        v56 = +[FeatureManager sharedFeatureManager];
        if (sel_newTabGroupKeyPressed == a3 || sel_previousTabGroupKeyPressed == a3 || sel_nextTabGroupKeyPressed == a3)
        {
          LOBYTE(v57) = [v56 isCustomTabGroupsEnabled];
          goto LABEL_157;
        }

        if (sel_closeTabGroupKeyPressed == a3 || sel_renameTabGroupKeyPressed == a3)
        {
          v31 = SFEnhancedTabOverviewEnabled();
          v32 = self->_tabController;
          if (!v31)
          {
            canSave = [(TabController *)v32 canRenameActiveTabGroup];
            goto LABEL_151;
          }

          v30 = [(TabController *)v32 activeTabGroupOrTabGroupVisibleInSwitcher];
          v33 = [v30 isNamed];
        }

        else
        {
          if (sel_emptySelectorForOpenInNewTabModifierLinkTap == a3 || sel_emptySelectorForOpenInNewTabOppositePreferenceModifierLinkTap == a3)
          {
            LOBYTE(v35) = v26 & v16;
            goto LABEL_156;
          }

          if (sel_emptySelectorForAddLinkToReadingListModifierLinkTap != a3)
          {
            if (sel_emptySelectorForDownloadModifierLinkTap == a3)
            {
              goto LABEL_155;
            }

            if (sel_showBookmarksCollectionKeyPressed == a3)
            {
              v38 = +[FeatureManager sharedFeatureManager];
              v39 = [v38 isBookmarksAvailable];
            }

            else
            {
              if (sel_showReadingListCollectionKeyPressed != a3)
              {
                if (sel_showHistoryCollectionKeyPressed != a3 && sel_showHistoryCollectionAlternativeKeyPressed != a3)
                {
                  if (sel_showSharedWithYouCollectionKeyPressed == a3)
                  {
                    if (v12)
                    {
                      goto LABEL_154;
                    }

                    v40 = [(BrowserController *)self isPresentingModalBookmarksController];
LABEL_165:
                    LOBYTE(v35) = v40 | isWindowLockedForPrivate;
                    goto LABEL_166;
                  }

                  if (sel_showCloudTabsCollectionKeyPressed == a3)
                  {
                    v30 = +[CloudTabStore sharedCloudTabStore];
                    v41 = [v30 syncedCloudTabDevices];
                    v42 = [v41 count] != 0;
                    goto LABEL_168;
                  }

                  if (sel_toggleShowWebpageStatusBar == a3)
                  {
                    canSave = [MEMORY[0x277D28C70] supportsWebpageStatusBar];
                    goto LABEL_151;
                  }

                  if (sel_emailCurrentPage == a3)
                  {
                    if (CPCanSendMail() == 0 || v12)
                    {
                      goto LABEL_154;
                    }

LABEL_172:
                    v40 = [v8 isBlank];
                    goto LABEL_165;
                  }

                  if (sel_increaseSize_ == a3 || sel_decreaseSize_ == a3 || sel_resetPageZoomLevelAndFontSize == a3)
                  {
                    if (!v12)
                    {
                      v44 = [v8 URL];
                      LOBYTE(v57) = (v44 != 0) & v57;

                      goto LABEL_157;
                    }

                    goto LABEL_154;
                  }

                  if (sel_toggleDownloadsKeyPressed != a3)
                  {
                    if (sel_saveKeyPressed != a3 && sel_saveWebpageAlternativeKeyPressed != a3)
                    {
                      if (sel_autoFillFormKeyPressed != a3)
                      {
                        if (sel_closeAllTabsMatchingSearch_ == a3)
                        {
                          goto LABEL_154;
                        }

                        v27 = [(TabController *)self->_tabController numberOfTabsForCloseAllAction];
                        if (sel_closeAllTabs_ == a3)
                        {
                          v45 = v27 > 1 || v12 && v27 != 0;
                          LOBYTE(v35) = v45 & v57;
                          goto LABEL_156;
                        }

                        if (sel_addAllTabsToBookmarks_ != a3)
                        {
                          v55 = [MEMORY[0x277D75128] sharedApplication];
                          v28 = [v55 supportsMultipleScenes];

                          if (sel_openNewWindow_ == a3)
                          {
                            goto LABEL_185;
                          }

                          if (sel_openNewPrivateWindow_ == a3)
                          {
                            if (v28)
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

                          if (sel_openNewTabOrWindow_ == a3)
                          {
                            v46 = [(BrowserController *)self effectiveNewDocumentShortcutBehavior];
                            if (v46 == 1)
                            {
                              v47 = v28;
                            }

                            else
                            {
                              v47 = 0;
                            }

                            if ((v47 & 1) == 0)
                            {
                              if (v46)
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

                          if (sel_mergeAllWindows_ == a3)
                          {
                            if (v28)
                            {
                              v30 = [MEMORY[0x277D75128] sharedApplication];
                              v48 = [v30 openSessions];
                              if ([v48 count] < 2)
                              {
                                LOBYTE(v57) = 0;
                              }

                              else
                              {
                                v49 = [(BrowserController *)self browserWindowController];
                                v50 = [v49 browserControllers];
                                LOBYTE(v57) = ([v50 count] > 1) & v57;
                              }

                              goto LABEL_148;
                            }

                            goto LABEL_154;
                          }

                          if (sel_pasteAndGo_ != a3 && sel_pasteAndSearch_ != a3)
                          {
                            if (sel_performWebExtensionCommandForKeyCommand_ == a3)
                            {
                              goto LABEL_157;
                            }

                            if (sel_switchToProfileKeyPressed_ != a3)
                            {
                              if (sel_openNewWindowInFrontmostProfile_ != a3)
                              {
                                if (sel_openNewWindowInProfile_ != a3)
                                {
                                  if (sel_scribbleDoneKeyPressed == a3)
                                  {
                                    v30 = [v8 sfScribbleControllerIfLoaded];
                                    LOBYTE(v57) = [v30 isScribbling];
                                    goto LABEL_148;
                                  }

                                  if (sel_addCurrentPageToHomeScreen_ == a3)
                                  {
                                    goto LABEL_219;
                                  }

                                  if (sel_openNewTabGroupWithCurrentTabs_ != a3)
                                  {
                                    if (sel_shareCurrentPage_ != a3 && sel_showSettingsForCurrentPage_ != a3)
                                    {
                                      if (sel_toggleCurrentTabIsPinned_ != a3)
                                      {
                                        if (sel_toggleTabMediaState_ != a3)
                                        {
                                          if (sel_duplicateCurrentTab_ != a3)
                                          {
                                            if (sel_arrangeTabsByTitle_ == a3 || sel_arrangeTabsByWebsite_ == a3)
                                            {
                                              goto LABEL_157;
                                            }

                                            if (sel_reportAutoFillIssue_ != a3 && sel_moveCurrentTabToNewWindow_ != a3 && sel_fileTranslationRadar_ != a3 && sel_reportTranslationIssue_ != a3 && sel_toggleTranslation_ != a3)
                                            {
                                              if (sel_cancelKeyPressed != a3)
                                              {
                                                if (sel_openRecentlyClosedTab_ != a3)
                                                {
                                                  v29 = SFBrowserContentControllerCanPerformActionWithSender();
                                                  v30 = v29;
                                                  if (v29)
                                                  {
                                                    LOBYTE(v57) = [v29 BOOLValue];
                                                  }

                                                  else
                                                  {
                                                    v58.receiver = self;
                                                    v58.super_class = BrowserController;
                                                    LOBYTE(v57) = [(BrowserController *)&v58 canPerformAction:a3 withSender:v6];
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

                                        if (![v8 mediaStateIcon])
                                        {
                                          LOBYTE(v57) = [v8 atLeastOneOtherTabPlayingAudio];
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
                                    v35 = [v8 isBlank] | isWindowLockedForPrivate | v12;
                                    goto LABEL_166;
                                  }

                                  v30 = [(TabController *)self->_tabController currentTabs];
                                  v34 = ([v30 count] > 1) & v57;
                                  goto LABEL_147;
                                }

                                if (v28)
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
                              if (v28)
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

                            v30 = v6;
                            v52 = [v30 propertyList];
                            v53 = [v52 objectForKeyedSubscript:*MEMORY[0x277D28FA0]];
                            v54 = [v53 unsignedIntegerValue];

                            v41 = [(TabController *)self->_tabController profiles];
                            v43 = v54 < [v41 count];
LABEL_169:
                            LOBYTE(v57) = v43;

                            goto LABEL_148;
                          }

                          v38 = [MEMORY[0x277D75810] generalPasteboard];
                          v51 = [v38 safari_preferredPasteAndNavigateCommand];
                          if (([v51 action] != a3) | isWindowLockedForPrivate & 1)
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

                        v30 = +[FeatureManager sharedFeatureManager];
                        if (![v30 isBookmarksAvailable])
                        {
                          LOBYTE(v57) = 0;
                          goto LABEL_148;
                        }

                        v41 = [(BrowserController *)self _nonBlankCurrentTabs];
                        v42 = [v41 count] > 1;
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

              v38 = +[FeatureManager sharedFeatureManager];
              v39 = [v38 isReadingListAvailable];
            }

            LOBYTE(v57) = v39 & ((v12 | isWindowLockedForPrivate) ^ 1);
            goto LABEL_162;
          }

          if (v12)
          {
            goto LABEL_154;
          }

          v30 = +[FeatureManager sharedFeatureManager];
          v33 = [v30 isReadingListAvailable];
        }

        v34 = v33 & v57;
LABEL_147:
        LOBYTE(v57) = v34;
LABEL_148:

        goto LABEL_157;
      }

      v17 = [(BrowserController *)self activeLibraryType];
      LOBYTE(v16) = (v17 == 0) & v57;
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
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 944) tabThumbnailCollectionView];
  if ([v2 presentationState] == 1)
  {
    v3 = 0;
    v4 = v2;
LABEL_7:

    goto LABEL_8;
  }

  v5 = [v2 presentationState];

  if (v5 != 2)
  {
    v4 = [*(a1 + 328) activeTabDocument];
    v6 = [v4 URL];
    v3 = v6 != 0;

    goto LABEL_7;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (uint64_t)_canPrintForTabDocument:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    isWindowLockedForPrivate = [(BrowserController *)a1 _isWindowLockedForPrivateBrowsing];
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
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 944) tabThumbnailCollectionView];
  v2 = [v1 presentationState] == 1 || objc_msgSend(v1, "presentationState") == 2;

  return v2;
}

- (id)_lastClosedTabStateData
{
  if (a1)
  {
    v2 = [MEMORY[0x277D28F00] sharedBrowserSavedState];
    v3 = [a1 tabController];
    v4 = [v3 activeProfile];
    v5 = [v4 identifier];
    v6 = [v2 recentlyClosedTabsForProfileWithIdentifier:v5];
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_canSaveWebpage
{
  if (!a1 || *(a1 + 280) || ([(BrowserController *)a1 _isWindowLockedForPrivateBrowsing]& 1) != 0)
  {
    return 0;
  }

  v4 = [*(a1 + 328) activeTabDocument];
  if ([v4 shouldObscureForDigitalHealth])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v4 isBlank] ^ 1;
  }

  return v2;
}

- (id)_nonBlankCurrentTabs
{
  if (a1)
  {
    v1 = [*(a1 + 328) currentTabs];
    v2 = [v1 safari_filterObjectsUsingBlock:&__block_literal_global_1067];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)effectiveNewDocumentShortcutBehavior
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 368));
    if (objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained browserControllerIsFullscreen:v1])
    {
      v1 = 0;
    }

    else
    {
      v1 = [MEMORY[0x277D28C70] preferredNewDocumentShortcutBehavior];
    }
  }

  return v1;
}

- (void)performWebExtensionCommandForKeyCommand:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(TabController *)self->_tabController activeTabDocument];
    v5 = [v4 webExtensionsController];
    [v5 performCommandForKeyCommand:v6];
  }
}

- (uint64_t)_isReaderModeFormatMenuItemAvailable
{
  if (!a1)
  {
    return 0;
  }

  isWindowLockedForPrivate = [(BrowserController *)a1 _isWindowLockedForPrivateBrowsing];
  v3 = [a1[118] tabThumbnailCollectionView];
  if ([v3 presentationState] == 1)
  {
    v4 = 0;
    v5 = v3;
LABEL_7:

    goto LABEL_8;
  }

  v6 = [v3 presentationState];

  if (v6 != 2)
  {
    v5 = [a1[41] activeTabDocument];
    v4 = [v5 canShowPageFormatMenu] & (isWindowLockedForPrivate ^ 1);
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
    v5 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([v5 presentationState] == 1)
    {
      v6 = 0;
      v7 = v5;
    }

    else
    {
      v8 = [v5 presentationState];

      if (v8 == 2)
      {
        v6 = 0;
LABEL_9:

        goto LABEL_10;
      }

      v7 = [(TabController *)self->_tabController activeTabDocument];
      v6 = ([v7 isBlank] | isWindowLockedForPrivate) ^ 1;
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
    v5 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([v5 presentationState] == 1)
    {
      v6 = 0;
      v7 = v5;
    }

    else
    {
      v8 = [v5 presentationState];

      if (v8 == 2)
      {
        v6 = 0;
LABEL_9:

        goto LABEL_10;
      }

      v7 = [(TabController *)self->_tabController activeTabDocument];
      v6 = ([v7 isBlank] | isWindowLockedForPrivate) ^ 1;
    }

    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6 & 1;
}

- (id)titleForNewDefaultWindowCommand
{
  if (a1)
  {
    if ([a1 hasMultipleProfiles])
    {
      v2 = MEMORY[0x277CCACA8];
      v3 = _WBSLocalizedString();
      v4 = [a1 activeProfile];
      v5 = [v4 title];
      v6 = [v2 localizedStringWithFormat:v3, v5];
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
  v1 = a1;
  if (a1)
  {
    v2 = [a1 activeProfile];
    v3 = [v2 symbolImage];

    v4 = [v1 hasMultipleProfiles];
    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == 1)
    {
      v6 = v3;
    }

    else
    {
      v6 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.rectangle"];
    }

    v1 = v6;
  }

  return v1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v55.receiver = self;
  v55.super_class = BrowserController;
  [(BrowserController *)&v55 validateCommand:v4];
  v5 = [v4 action];
  v6 = [(BrowserController *)self effectiveNewDocumentShortcutBehavior];
  if (v5 == sel_closeAllTabsMatchingSearch_)
  {
    v7 = [(BrowserController *)self _closeAllTabsMatchingSearchLabel];
    [v4 setTitle:v7];
LABEL_42:

    goto LABEL_43;
  }

  if (v5 == sel_closeAllTabs_)
  {
    v7 = [(BrowserController *)self _closeAllTabsLabel];
    [v4 setTitle:v7];
    goto LABEL_42;
  }

  if (v5 == sel_addAllTabsToBookmarks_)
  {
    v7 = [(BrowserController *)self _addAllTabsToBookmarksLabel];
    [v4 setTitle:v7];
    goto LABEL_42;
  }

  if (v5 == sel_find_)
  {
    v7 = [(BrowserController *)self _findCommandTitle];
    [v4 setDiscoverabilityTitle:v7];
    goto LABEL_42;
  }

  if (v5 == sel_saveKeyPressed)
  {
    v7 = _WBSLocalizedString();
    [v4 setDiscoverabilityTitle:v7];
    goto LABEL_42;
  }

  if (v5 == sel_toggleBookmarksKeyPressed)
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

  if (v5 == sel_toggleShowingFavoritesBarKeyPressed)
  {
    v7 = [(BrowserController *)self _titleForToggleFavoritesBarKeyCommand];
    [v4 setDiscoverabilityTitle:v7];
    goto LABEL_42;
  }

  if (v5 == sel_toggleReaderKeyPressed)
  {
    v10 = [(TabController *)self->_tabController activeTabDocument];
    if ([v10 isShowingReader])
    {
      WBSLocalizedStringWithValue(@"Hide Reader", v11);
    }

    else
    {
      WBSLocalizedStringWithValue(@"Show Reader", v11);
    }
    v13 = ;
    [v4 setDiscoverabilityTitle:v13];

    if ([(BrowserController *)self isReaderAvailable])
    {
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  if (v5 == sel_toggleTabViewKeyPressed)
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
    [v4 setDiscoverabilityTitle:v9];
    v7 = v9;
    goto LABEL_42;
  }

  if (v5 == sel_emptySelectorForOpenInNewTabModifierLinkTap)
  {
    v7 = [(BrowserController *)self _discoverabilityTitleForCommandTapModifierFollowingUserPreference:?];
    [v4 setDiscoverabilityTitle:v7];
    goto LABEL_42;
  }

  if (v5 == sel_emptySelectorForOpenInNewTabOppositePreferenceModifierLinkTap)
  {
    v7 = [(BrowserController *)self _discoverabilityTitleForCommandTapModifierFollowingUserPreference:?];
    [v4 setDiscoverabilityTitle:v7];
    goto LABEL_42;
  }

  if (v5 == sel_showBookmarksCollectionKeyPressed)
  {
    v7 = [(BrowserController *)&self->super.super.super.isa _titleForToggleBookmarksKeyCommand];
    [v4 setTitle:v7];
    [v4 setDiscoverabilityTitle:v7];
    goto LABEL_42;
  }

  if (v5 == sel_showBookmarksViewModeLargeSelected)
  {
    v15 = [(BrowserController *)self _stateForSetBookmarksViewModeLargeCommand];
LABEL_61:
    [v4 setState:v15];
    goto LABEL_43;
  }

  if (v5 == sel_showBookmarksViewModeCompactSelected)
  {
    v15 = [(BrowserController *)self _stateForSetBookmarksViewModeCompactCommand];
    goto LABEL_61;
  }

  if (v5 == sel_toggleBookmarksViewFolderModeSeparatedSelected)
  {
    v15 = [(BrowserController *)self _stateForToggleBookmarksViewFolderModeSeparatedCommand];
    goto LABEL_61;
  }

  if (v5 == sel_bookmarksViewSortOptionSelected_)
  {
    v15 = [(BrowserController *)self _stateForBookmarksViewSortOptionCommand:v4];
    goto LABEL_61;
  }

  if (v5 == sel_showReadingListCollectionKeyPressed)
  {
    v7 = [(BrowserController *)&self->super.super.super.isa _titleForToggleReadingListKeyCommand];
    [v4 setDiscoverabilityTitle:v7];
    goto LABEL_42;
  }

  if (v5 == sel_showHistoryCollectionKeyPressed)
  {
    v7 = [(BrowserController *)&self->super.super.super.isa _titleForToggleHistoryKeyCommand];
    [v4 setDiscoverabilityTitle:v7];
    goto LABEL_42;
  }

  if (v5 == sel_showSharedWithYouCollectionKeyPressed)
  {
    v7 = [(BrowserController *)&self->super.super.super.isa _titleForToggleSharedWithYouKeyCommand];
    [v4 setTitle:v7];
    [v4 setDiscoverabilityTitle:v7];
    goto LABEL_42;
  }

  if (v5 == sel_showCloudTabsCollectionKeyPressed)
  {
    v7 = [(BrowserController *)&self->super.super.super.isa _titleForToggleCloudTabsKeyCommand];
    [v4 setDiscoverabilityTitle:v7];
    goto LABEL_42;
  }

  if (v5 == sel_toggleShowWebpageStatusBar)
  {
    v7 = [(BrowserController *)self _titleForToggleWebpageStatusBar];
    [v4 setDiscoverabilityTitle:v7];
    goto LABEL_42;
  }

  if (v5 == sel_toggleDownloadsKeyPressed)
  {
    WeakRetained = objc_loadWeakRetained(&self->_downloadsViewController);
    v18 = [WeakRetained presentingViewController];
    if (v18)
    {
      WBSLocalizedStringWithValue(@"Hide Downloads", v17);
    }

    else
    {
      WBSLocalizedStringWithValue(@"Show Downloads", v17);
    }
    v28 = ;
    [v4 setDiscoverabilityTitle:v28];

    v29 = [MEMORY[0x277CDB7A8] sharedManager];
    v30 = [v29 downloads];
    v31 = [v30 count];

    if (v31)
    {
      goto LABEL_50;
    }

LABEL_51:
    v14 = [v4 attributes] | 1;
    goto LABEL_52;
  }

  if (v5 == sel_switchToProfileKeyPressed_)
  {
    v19 = [(TabController *)self->_tabController profiles];
    v20 = [v4 propertyList];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D28FA0]];
    v7 = [v19 objectAtIndexedSubscript:{objc_msgSend(v21, "unsignedIntegerValue")}];

    v22 = MEMORY[0x277CCACA8];
    v24 = WBSLocalizedStringWithValue(@"Show %@ Profile", v23);
    v25 = [v7 title];
    v26 = [v22 localizedStringWithFormat:v24, v25];
    [v4 setDiscoverabilityTitle:v26];

    v27 = [v7 symbolImage];
    [v4 setImage:v27];
LABEL_70:

    goto LABEL_42;
  }

  if (v5 == sel_openNewWindowInFrontmostProfile_)
  {
    if (!v6)
    {
LABEL_79:
      v33 = [(BrowserController *)self imageForNewDefaultWindowCommand];
      [v4 setImage:v33];

      v34 = [(BrowserController *)self titleForNewDefaultWindowCommand];
      [v4 setTitle:v34];

LABEL_50:
      v14 = 0;
LABEL_52:
      [v4 setAttributes:v14];
      goto LABEL_43;
    }

LABEL_80:
    v14 = [v4 attributes] | 4;
    goto LABEL_52;
  }

  if (v5 == sel_openNewTabOrWindow_)
  {
    if (v6 == 1)
    {
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  if (v5 == sel_openNewTabGroupWithCurrentTabs_)
  {
    v32 = MEMORY[0x277D4A088];
    v7 = [(BrowserController *)self tabGroupProvider];
    v27 = [v32 menuTitleCreateGroupWithTheseTabs:{objc_msgSend(v7, "newTabGroupTabCount")}];
    [v4 setTitle:v27];
    goto LABEL_70;
  }

  if (v5 == sel_showSettingsForCurrentPage_)
  {
    v7 = [(TabController *)self->_tabController activeTabDocument];
    v27 = [v7 URLForPerSitePreferences];
    v35 = [v27 safari_perSitePreferencesMenuBarTitle];
    [v4 setTitle:v35];
LABEL_82:

    goto LABEL_70;
  }

  if (v5 == sel_toggleCurrentTabIsPinned_)
  {
    v37 = [(BrowserController *)self currentTabIsPinned];
    if (v37)
    {
      WBSLocalizedStringWithValue(@"Unpin Tab", v36);
    }

    else
    {
      WBSLocalizedStringWithValue(@"Pin Tab", v36);
    }
    v42 = ;
    [v4 setTitle:v42];
    if (v37)
    {
      v43 = @"pin.slash";
    }

    else
    {
      v43 = @"pin";
    }

    v7 = [MEMORY[0x277D755B8] systemImageNamed:v43];
    [v4 setImage:v7];
    goto LABEL_42;
  }

  if (v5 == sel_toggleTabMediaState_)
  {
    v38 = [(TabController *)self->_tabController activeTabDocument];
    v39 = [v38 mediaStateIcon];

    if (v39)
    {
      v40 = SFTitleForTogglingMediaStateIcon();
      [v4 setTitle:v40];

      v41 = MEMORY[0x277D755B8];
      v7 = SFUnfilledSystemImageNameForTogglingMediaStateIcon();
      v27 = [v41 systemImageNamed:v7];
      [v4 setImage:v27];
      goto LABEL_70;
    }

    v7 = SFBrowserContentControllerOtherTabWithSound();
    [v7 isMuted];
    v52 = SFOtherTabsTitleForTogglingMediaStateIcon();
    [v4 setTitle:v52];

    v53 = MEMORY[0x277D755B8];
    v27 = SFUnfilledSystemImageNameForTogglingMediaStateIcon();
    v35 = [v53 systemImageNamed:v27];
    [v4 setImage:v35];
    goto LABEL_82;
  }

  if (v5 == sel_toggleAllPrivateWindowsLocked_)
  {
    v44 = [(TabController *)self->_tabController activeTabGroupOrTabGroupVisibleInSwitcher];
    v45 = [v44 isPrivateBrowsing];

    v46 = +[Application sharedApplication];
    v47 = [v46 privateBrowsingRequiresAuthentication] & v45;

    if ((v47 & 1) == 0)
    {
      [v4 setAttributes:{objc_msgSend(v4, "attributes") | 5}];
      goto LABEL_43;
    }

    [v4 setAttributes:0];
    v48 = +[Application sharedApplication];
    v49 = [v48 isPrivateBrowsingLocked];

    if (v49)
    {
      v51 = WBSLocalizedStringWithValue(@"Unlock All Private Windows (Menu)", v50);
      [v4 setDiscoverabilityTitle:v51];

      [MEMORY[0x277D755B8] systemImageNamed:@"lock.open"];
    }

    else
    {
      v54 = WBSLocalizedStringWithValue(@"Lock All Private Windows (Menu)", v50);
      [v4 setDiscoverabilityTitle:v54];

      [MEMORY[0x277D755B8] systemImageNamed:@"lock"];
    }
    v7 = ;
    [v4 setImage:v7];
    goto LABEL_42;
  }

  SFBrowserContentControllerValidateCommand();
LABEL_43:
}

- (id)_closeAllTabsMatchingSearchLabel
{
  if (a1)
  {
    v1 = [*(a1 + 328) tabsMatchingSearchTerm];
    v2 = [v1 count];

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
  if (a1)
  {
    v1 = [*(a1 + 328) numberOfTabsForCloseAllAction];
    if (v1 <= 1 || (v2 = v1, v1 == 2))
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
  if (a1)
  {
    v1 = [(BrowserController *)a1 _nonBlankCurrentTabs];
    v2 = [v1 count];

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

- (id)_discoverabilityTitleForCommandTapModifierFollowingUserPreference:(uint64_t)a1
{
  if (a1)
  {
    v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v4 = [v3 BOOLForKey:*MEMORY[0x277D29270]];

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

- (void)switchToTabKeyPressed:(id)a3
{
  v4 = [(BrowserController *)self _tabIndexForKeyCommand:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [(TabController *)self->_tabController currentTabs];
    v8 = [v6 objectAtIndexedSubscript:v5];

    v7 = [(TabController *)self->_tabController activeTabDocument];

    if (v8 != v7)
    {
      [(TabController *)self->_tabController setActiveTab:v8 animated:1 deferActivation:1];
    }
  }
}

- (uint64_t)_tabIndexForKeyCommand:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 input];
    v6 = [v5 integerValue];

    v7 = [*(a1 + 328) currentTabs];
    v8 = [v7 count];
    v9 = v6 - 1;

    v10 = v8 - 1;
    if (v9 < v8 && v9 != 8)
    {
      v10 = v9;
    }

    if (v10 >= v8)
    {
      a1 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      a1 = v10;
    }
  }

  return a1;
}

- (void)switchToProfileKeyPressed:(id)a3
{
  v10 = a3;
  v4 = [v10 propertyList];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D28FA0]];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(TabController *)self->_tabController profiles];
  v8 = [v7 objectAtIndexedSubscript:v6];
  v9 = [v8 identifier];
  [(TabController *)self->_tabController setActiveProfileIdentifier:v9];
}

- (void)showBookmarksViewModeLargeSelected
{
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [v3 setInteger:0 forKey:*MEMORY[0x277D28F80]];

  libraryController = self->_libraryController;

  [(LibraryController *)libraryController reloadBookmarks];
}

- (void)showBookmarksViewModeCompactSelected
{
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [v3 setInteger:1 forKey:*MEMORY[0x277D28F80]];

  libraryController = self->_libraryController;

  [(LibraryController *)libraryController reloadBookmarks];
}

- (void)toggleBookmarksViewFolderModeSeparatedSelected
{
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [v3 setInteger:objc_msgSend(v3 forKey:{"integerForKey:", *MEMORY[0x277D28F88]) != 1, *MEMORY[0x277D28F88]}];
  [(LibraryController *)self->_libraryController reloadBookmarks];
}

- (void)bookmarksViewSortOptionSelected:(id)a3
{
  v4 = [a3 propertyList];
  v7 = [(BrowserController *)self sortOptionFromBookmarksViewSortOptionCommandPropertyList:v4];

  if (v7)
  {
    v5 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v6 = [v7 integerValue];
    [v5 setInteger:v6 forKey:*MEMORY[0x277D28F90]];

    [(LibraryController *)self->_libraryController reloadBookmarks];
  }
}

- (void)_switchToCollectionOrToggleSidebar:(id *)a1
{
  v5 = a2;
  if (a1)
  {
    if ((([a1 isPresentingModalBookmarksController] & 1) != 0 || objc_msgSend(a1[96], "isShowingSidebar")) && (objc_msgSend(a1, "currentBookmarksCollection"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", v5), v3, (v4 & 1) == 0))
    {
      [a1 setCurrentBookmarksCollection:v5];
    }

    else
    {
      [(BrowserController *)a1 toggleBookmarksPresentationWithCollection:v5 completion:0];
    }
  }
}

- (void)_toggleVisibilityOfStartPageCollection:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 currentBookmarksCollection];
    if (*(a1 + 720) == 1)
    {
      [*(a1 + 328) selectPrivateTabGroup];
    }

    else
    {
      v5 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Will switch to local tab group because start page collection visibility was toggled.", v8, 2u);
      }

      [*(a1 + 328) selectLocalTabGroup];
    }

    if (WBSIsEqual())
    {
      v6 = 0;
    }

    else
    {
      v7 = [*(a1 + 768) isShowingSidebar];
      v6 = v3;
      if (!v7)
      {
        if ([a1 _bookmarksPresentationStyle])
        {
          [(BrowserController *)a1 toggleBookmarksPresentationWithCollection:v3 completion:0];
        }

        goto LABEL_11;
      }
    }

    [a1 setCurrentBookmarksCollection:v6];
LABEL_11:
  }
}

- (void)toggleBookmarksPresentationWithCollection:(void *)a3 completion:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ([*(a1 + 768) isShowingSidebar])
    {
      v7 = 1;
    }

    else
    {
      v7 = [a1 isPresentingModalBookmarksController];
    }

    v8 = [a1 _bookmarksPresentationStyle];
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v10 = *(a1 + 360);
      *(a1 + 360) = 1;
      v11 = WBS_LOG_CHANNEL_PREFIXSignposts();
      if (os_signpost_enabled(v11))
      {
        v12 = @"modal";
        if (v8 == 1)
        {
          v12 = @"overlay";
        }

        if (v8 == 2)
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

    [(UIResponder *)a1 safari_becomeFirstResponderIfNeeded];
    if ((v8 - 1) >= 2)
    {
      if (!v8)
      {
        -[BrowserController _setPresentingModalBookmarksController:exclusively:importHandler:withCollection:bookmarkUUIDString:animated:completion:](a1, [a1 isPresentingModalBookmarksController] ^ 1, 0, 0, v5, 0, 1, v9);
        if (v6)
        {
          v6[2](v6, 1);
        }
      }
    }

    else
    {
      objc_initWeak(buf, a1);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __74__BrowserController_toggleBookmarksPresentationWithCollection_completion___block_invoke_1050;
      aBlock[3] = &unk_2781D6BD8;
      objc_copyWeak(&v24, buf);
      v23 = v5;
      v16 = _Block_copy(aBlock);
      v17 = *(a1 + 768);
      v18 = [v17 isShowingSidebar];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __74__BrowserController_toggleBookmarksPresentationWithCollection_completion___block_invoke_2;
      v19[3] = &unk_2781D6C00;
      v20 = v9;
      v21 = v6;
      [v17 setShowingSidebar:v18 ^ 1u completion:v19];
      v16[2](v16);

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }
}

- (void)addToBookmarks:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      v7 = [v4 sf_commandSource];
    }

    else
    {
      v7 = @"Unknown";
    }

    v9 = 138543618;
    v10 = @"Add to Bookmarks";
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ via %{public}@", &v9, 0x16u);
    if (v6)
    {
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  [(BrowserController *)&self->super.super.super.isa _addBookmarkForCurrentTabKeyPressed:?];
}

- (void)_addBookmarkForCurrentTabKeyPressed:(id *)a1
{
  if (a1)
  {
    v5 = [a1[41] activeTabDocument];
    v4 = [v5 titleForNewBookmark];
    [(BrowserController *)a1 _addBookmarkForCurrentTabKeyPressed:a2 title:v4];
  }
}

- (void)focusAddressFieldKeyPressed
{
  if ([(BrowserController *)self isFavoritesFieldFocused])
  {
    v4 = [(BrowserController *)&self->super.super.super.isa _topNavigationBar];
    v3 = [v4 textField];
    [v3 selectAll:0];
  }

  else
  {

    [(BrowserController *)self setFavoritesFieldFocused:1 animated:1];
  }
}

- (void)toggleShowingFavoritesBarKeyPressed
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 setBool:-[BrowserController _prefersShowingBookmarksBar](self) ^ 1 forKey:*MEMORY[0x277D28F70]];
}

- (void)toggleTabView
{
  v5 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([v5 presentationState] == 1)
  {

LABEL_4:
    [v5 dismissAnimated:1];
    goto LABEL_6;
  }

  v3 = [v5 presentationState];

  if (v3 == 2)
  {
    goto LABEL_4;
  }

  [(BrowserController *)self cancelFavoritesAnimated:0];
  [(BrowserController *)self becomeFirstResponder];
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didEnterTabViewWithMethod:2];

  [v5 presentAnimated:1];
LABEL_6:
}

- (void)addToReadingList:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      v7 = [v4 sf_commandSource];
    }

    else
    {
      v7 = @"Unknown";
    }

    *buf = 138543618;
    v12 = @"Add to Reading List";
    v13 = 2114;
    v14 = v7;
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
  v8 = v4;
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
  v3 = [(BrowserController *)self continuousReadingController];
  v4 = [v3 nextReadingListItem];

  if (v4)
  {
    continuousReadingViewController = self->_continuousReadingViewController;

    [(ContinuousReadingViewController *)continuousReadingViewController loadNextItem];
  }
}

- (void)previousReadingListItemKeyPressed
{
  v3 = [(BrowserController *)self continuousReadingController];
  v4 = [v3 previousReadingListItem];

  if (v4)
  {
    continuousReadingViewController = self->_continuousReadingViewController;

    [(ContinuousReadingViewController *)continuousReadingViewController loadPreviousItem];
  }
}

- (void)_pressedNewTabKeyWithOptions:(char)a3 isKeyboardShortcut:
{
  if (a1)
  {
    [a1 cancelFavoritesAnimated:0];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__BrowserController__pressedNewTabKeyWithOptions_isKeyboardShortcut___block_invoke;
    aBlock[3] = &unk_2781D6638;
    v15 = a3;
    aBlock[4] = a1;
    v6 = _Block_copy(aBlock);
    v7 = a2 & 3;
    if ((a2 & 3) == 0 || *(a1 + 720) == (v7 == 2))
    {
      goto LABEL_9;
    }

    v8 = *(a1 + 328);
    if (v7 == 2)
    {
      [v8 selectPrivateTabGroup];
    }

    else
    {
      [v8 selectLocalTabGroup];
    }

    v9 = [*(a1 + 328) activeTabDocument];
    v10 = [v9 isBlank];

    if (v10)
    {
      v6[2](v6);
    }

    else
    {
LABEL_9:
      v11 = *(a1 + 328);
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

- (void)openNewTab:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TabController *)self->_tabController switchToTabGroupVisibleInSwitcherIfNeeded];
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      v7 = [v4 sf_commandSource];
    }

    else
    {
      v7 = @"Unknown";
    }

    v10 = 138543618;
    v11 = @"Open new tab";
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ via %{public}@", &v10, 0x16u);
    if (v6)
    {
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((v4 == 0) | isKindOfClass & 1)
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

- (void)openNewPrivateTab:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      v7 = [v4 sf_commandSource];
    }

    else
    {
      v7 = @"Unknown";
    }

    v12 = 138543618;
    v13 = @"Open new Private tab";
    v14 = 2114;
    v15 = v7;
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
    v10 = [(BrowserController *)self viewControllerToPresentFrom];
    v11 = [v9 initWithPresenter:v10];

    [v11 displayPrivateBrowsingDenialAlert];
  }
}

- (void)openNewNormalTab:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      v7 = [v4 sf_commandSource];
    }

    else
    {
      v7 = @"Unknown";
    }

    v9 = 138543618;
    v10 = @"Open new normal tab";
    v11 = 2114;
    v12 = v7;
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
  v5 = [(TabController *)tabController activeTabGroupOrTabGroupVisibleInSwitcher];
  [(TabController *)tabController closeTabGroup:v5];
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
    v4 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabSwitcherViewController];
    [v4 beginRenamingVisibleTabGroup];
  }

  else
  {
    tabController = self->_tabController;
    v4 = [(TabController *)tabController activeTabGroup];
    [(TabController *)tabController renameTabGroup:v4];
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

  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didSwitchToTabGroupFromLocation:8];

  if (SFEnhancedTabOverviewEnabled() && [(TabCollectionViewProviding *)self->_tabCollectionViewProvider isShowingTabView])
  {
    v5 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabSwitcherViewController];
    [v5 scrollToPreviousTabGroup];
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

  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didSwitchToTabGroupFromLocation:8];

  if (SFEnhancedTabOverviewEnabled() && [(TabCollectionViewProviding *)self->_tabCollectionViewProvider isShowingTabView])
  {
    v5 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabSwitcherViewController];
    [v5 scrollToNextTabGroup];
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
  if (a1 && SFEnhancedTabOverviewEnabled())
  {
    v2 = [*(a1 + 944) tabSwitcherViewController];
    [v2 beginSearching];
  }
}

- (void)_logTabClosingWithEventSender:(uint64_t)a3 tabClosingAction:(uint64_t)a4 numberOfTabsClosed:
{
  v8 = a2;
  if (a1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    [(BrowserController *)a1 _logTabClosingWithKeyboardShortcut:a3 tabClosingAction:a4 numberOfTabsClosed:?];
  }
}

- (void)_logTabClosingWithKeyboardShortcut:(uint64_t)a3 tabClosingAction:(uint64_t)a4 numberOfTabsClosed:
{
  if (a1)
  {
    v7 = [*(a1 + 944) visibleTabCollectionViewType];
    if (a2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = [MEMORY[0x277D499B8] sharedLogger];
    [v9 didCloseTabWithTrigger:v8 tabClosingAction:a3 numberOfTabsClosed:a4 tabCollectionViewType:v7];
  }
}

- (void)closeActiveTab:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      v7 = [v4 sf_commandSource];
    }

    else
    {
      v7 = @"Unknown";
    }

    v10 = 138543618;
    v11 = @"Close tab";
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ via %{public}@", &v10, 0x16u);
    if (v6)
    {
    }
  }

  [(BrowserController *)self _logTabClosingWithEventSender:v4 tabClosingAction:1 numberOfTabsClosed:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(TabController *)self->_tabController activeTabDocument];
    if ([v8 isPinned])
    {
      v9 = [(TabController *)self->_tabController selectFirstUnpinnedTab];

      if (v9)
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
  v4 = [(TabController *)self->_tabController currentTabs];
  -[BrowserController _logTabClosingWithKeyboardShortcut:tabClosingAction:numberOfTabsClosed:](self, 1, 2, [v4 count] - 1);

  [(TabController *)self->_tabController closeOtherTabs];
}

- (void)_switchTabsByRelativeIndex:(void *)a3 withKeyCommand:
{
  v13 = a3;
  if (a1)
  {
    v5 = [*(a1 + 328) currentTabs];
    v6 = [v5 count];
    v7 = [*(a1 + 328) tabBeingActivated];
    v8 = [v5 indexOfObject:v7];

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
      *(a1 + 136) = [v13 modifierFlags];
      v11 = *(a1 + 328);
      v12 = [v5 objectAtIndexedSubscript:v10];
      [v11 setActiveTab:v12 animated:1 deferActivation:1];
    }
  }
}

- (void)nextTabKeyPressed:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  [(BrowserController *)self _switchTabsByRelativeIndex:v4 withKeyCommand:?];
}

- (void)previousTabKeyPressed:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
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
  v9 = [(BrowserController *)self _lastClosedTabStateData];
  v3 = [MEMORY[0x277D28F00] sharedBrowserSavedState];
  [v3 loadSessionStateDataAndRemoveRecentlyClosedTab:v9];

  v4 = [[TabDocument alloc] initWithTabStateData:v9 hibernated:0 browserController:self];
  tabController = self->_tabController;
  v6 = [(TabController *)tabController activeTabDocument];
  [(TabController *)tabController insertTab:v4 afterTab:v6 inBackground:0 animated:1];

  v7 = [MEMORY[0x277D499B8] sharedLogger];
  [v7 didOpenNewTabWithURLWithTrigger:4 tabCollectionViewType:{-[TabCollectionViewProviding visibleTabCollectionViewType](self->_tabCollectionViewProvider, "visibleTabCollectionViewType")}];

  v8 = [(TabController *)self->_tabController undoManager];
  [v8 removeAllActions];
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

- (void)arrangeTabsByTitle:(id)a3
{
  tabController = self->_tabController;
  v4 = [(TabController *)tabController activeTabGroupUUID];
  [TabController sortTabsInTabGroupWithUUIDString:"sortTabsInTabGroupWithUUIDString:withSortMode:" withSortMode:?];
}

- (void)arrangeTabsByWebsite:(id)a3
{
  tabController = self->_tabController;
  v4 = [(TabController *)tabController activeTabGroupUUID];
  [TabController sortTabsInTabGroupWithUUIDString:"sortTabsInTabGroupWithUUIDString:withSortMode:" withSortMode:?];
}

- (void)addCurrentPageToHomeScreen:(id)a3
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

  v8 = [(BrowserController *)self viewControllerToPresentFrom];
  [v8 presentViewController:v11[5] animated:1 completion:0];

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

- (void)showManageExtensions:(id)a3
{
  v4 = MEMORY[0x277D28CB8];
  v5 = [(TabController *)self->_tabController activeTabDocument];
  v7 = [v4 createManageExtensionsNavigationControllerFromPageFormatMenu:0 activeDocument:v5];

  v6 = [(BrowserController *)self viewControllerToPresentFrom];
  [v6 presentViewController:v7 animated:1 completion:0];
}

- (void)clearHistory:(id)a3
{
  v5 = objc_alloc_init(SafariClearBrowsingDataController);
  objc_storeStrong(&self->_clearBrowsingDataController, v5);
  [(SafariClearBrowsingDataController *)v5 setTabGroupProvider:self->_tabController];
  v4 = [(BrowserController *)self rootViewController];
  [(SafariClearBrowsingDataController *)v5 showClearHistoryMenuFromViewController:v4];
}

- (void)closeAllWindows:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  [WeakRetained closeAllWindowsFromWindow:self];
}

- (void)duplicateCurrentTab:(id)a3
{
  tabController = self->_tabController;
  v5 = [(TabController *)tabController activeTabDocument];
  v4 = [(TabController *)tabController duplicateTab:?];
}

- (void)toggleAllPrivateWindowsLocked:(id)a3
{
  v5 = +[Application sharedApplication];
  v4 = [v5 isPrivateBrowsingLocked];

  if (v4)
  {

    [(BrowserController *)self authenticateToUnlockPrivateBrowsing];
  }

  else
  {
    v6 = +[Application sharedApplication];
    [v6 lockPrivateBrowsing];
  }
}

- (void)importBrowsingData:(id)a3
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilesafari/SAFARI#IMPORT_BUTTON"];
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)exportBrowsingData:(id)a3
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilesafari/SAFARI#EXPORT_BUTTON"];
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)manageProfiles:(id)a3
{
  if ([(WBTabGroupManager *)self->_tabGroupManager hasMultipleProfiles])
  {
    v4 = MEMORY[0x277CCACA8];
    v11 = [(WBTabGroupManager *)self->_tabGroupManager profiles];
    v5 = [v11 firstObject];
    v6 = [v5 identifier];
    v7 = [v4 stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilesafari/SAFARI#PROFILE_%@", v6];

    v8 = v7;
  }

  else
  {
    v8 = @"settings-navigation://com.apple.Settings.Apps/com.apple.mobilesafari/SAFARI#NEW_PROFILE";
  }

  v12 = v8;
  v9 = [MEMORY[0x277CBEBC0] URLWithString:?];
  v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v10 openSensitiveURL:v9 withOptions:0];
}

- (void)moveCurrentTabToNewWindow:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [(TabController *)self->_tabController tabMenuProviderDataSource];
  v5 = [(TabController *)self->_tabController activeTabDocument];
  v6 = [v5 wbTab];
  v8[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v4 moveTabsToNewWindow:v7];
}

- (void)showSettingsForCurrentPage:(id)a3
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  [v3 perSiteSettingsUIPresentSettings];
}

- (void)toggleContentBlockers:(id)a3
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  [v3 reloadDisablingContentBlockers:{objc_msgSend(v3, "wasLoadedWithContentBlockersEnabled")}];
}

- (void)toggleTabMediaState:(id)a3
{
  v5 = [(TabController *)self->_tabController activeTabDocument];
  v4 = [v5 mediaStateIcon];

  if (v4)
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
  v3 = [(TabController *)self->_tabController activeTabDocument];
  [v3 reloadUserInitiated];
}

- (void)reloadFromOriginKeyPressed
{
  [(BrowserController *)self dismissTransientUIAnimated:1];
  v3 = [(TabController *)self->_tabController activeTabDocument];
  [v3 reloadFromOriginUserInitiated];
}

- (void)find:(id)a3
{
  if ([(BrowserController *)self _showingTabDocumentWithURL])
  {
    v5 = [(BrowserController *)self tabController];
    v4 = [v5 activeTabDocument];
    [v4 showFindOnPage];

    v6 = [MEMORY[0x277D499B8] sharedLogger];
    [v6 didFindOnPageWithTrigger:0];
  }

  else
  {

    [(BrowserController *)self _searchTabs];
  }
}

- (void)shareCurrentPage:(id)a3
{
  v5 = [(TabController *)self->_tabController activeTabDocument];
  if (![v5 isBlank])
  {
    goto LABEL_9;
  }

  v6 = +[FeatureManager sharedFeatureManager];
  if (([v6 areSharedTabGroupsEnabled] & 1) == 0)
  {

LABEL_9:
LABEL_10:
    [(BrowserController *)self _presentActivityViewController];
    if (a3)
    {
      return;
    }

    goto LABEL_5;
  }

  v7 = [(TabController *)self->_tabController activeTabGroup];
  v8 = [v7 isSyncable];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [(TabController *)self->_tabController tabGroupShareSheetForCurrentTabGroup];
  [(BrowserController *)self _presentModalViewController:v9 fromBarItem:6 completion:0];

  if (a3)
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

  v11 = [MEMORY[0x277D499B8] sharedLogger];
  [v11 reportIOSToolbarButtonUsage:3 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
}

- (void)takeFindStringKeyPressed
{
  self->_shouldFillStringForFind = 1;
  v3 = [(TabController *)self->_tabController activeTabDocument];
  v2 = [v3 activeWebView];
  [v2 _takeFindStringFromSelection:0];
}

- (void)cancelKeyPressed
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  v7 = [v3 sfScribbleControllerIfLoaded];

  if ([v7 isScribbling])
  {
    [v7 endScribblingAndSaveChanges:0];
    goto LABEL_8;
  }

  v4 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([v4 presentationState] == 1)
  {
  }

  else
  {
    v5 = [v4 presentationState];

    if (v5 != 2)
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
        v6 = [(TabController *)self->_tabController activeTabDocument];
        [v6 stopLoadingUserInitiated];
      }

      goto LABEL_7;
    }
  }

  [v4 dismissAnimated:1];
LABEL_7:

LABEL_8:
}

- (void)_emailCurrentPageWithPreferredContentType:(uint64_t)a1
{
  if (a1)
  {
    v4 = [*(a1 + 328) activeTabDocument];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__BrowserController__emailCurrentPageWithPreferredContentType___block_invoke;
    v5[3] = &unk_2781D66D8;
    v5[4] = a1;
    v5[5] = a2;
    [v4 fetchCanonicalURLWithCompletionHandler:v5];
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

- (void)_presentModalViewController:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    [(BrowserController *)a1 _presentModalViewController:v3 fromBarItem:*MEMORY[0x277D291C0] animated:1 completion:0];
  }
}

- (void)increaseSize:(id)a3
{
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Zoom In via keyboard shortcut", v7, 2u);
  }

  v5 = [(TabController *)self->_tabController activeTabDocument];
  if ([v5 isShowingReader])
  {
    v6 = [v5 readerContext];
    if ([v6 canIncreaseReaderTextSize])
    {
      [v6 increaseReaderTextSize];
    }
  }

  else
  {
    [v5 increasePageZoomSetting];
  }
}

- (void)decreaseSize:(id)a3
{
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Zoom Out via keyboard shortcut", v7, 2u);
  }

  v5 = [(TabController *)self->_tabController activeTabDocument];
  if ([v5 isShowingReader])
  {
    v6 = [v5 readerContext];
    if ([v6 canDecreaseReaderTextSize])
    {
      [v6 decreaseReaderTextSize];
    }
  }

  else
  {
    [v5 decreasePageZoomSetting];
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

  v4 = [(TabController *)self->_tabController activeTabDocument];
  if ([v4 isShowingReader])
  {
    v5 = [v4 readerContext];
    [v5 resetReaderTextSize];
  }

  else
  {
    [v4 resetPageZoomSetting];
  }
}

- (void)_presentSaveWebpageViewController
{
  if (a1 && [(BrowserController *)a1 _canSaveWebpage])
  {
    v2 = [*(a1 + 328) activeTabDocument];
    v5 = [ActionPanel createActivityItemProviderCollectionForTabDocument:v2];

    v3 = [objc_alloc(MEMORY[0x277CDB8A0]) initWithActivityItemProviderCollection:v5];
    v4 = *(a1 + 280);
    *(a1 + 280) = v3;

    [*(a1 + 280) setDelegate:a1];
    [*(a1 + 280) start];
  }
}

- (void)autoFillFormKeyPressed
{
  v2 = [(TabController *)self->_tabController activeTabDocument];
  [v2 performPageLevelAutoFill];
}

- (void)closeAllTabsMatchingSearch:(id)a3
{
  v4 = a3;
  v5 = [(TabController *)self->_tabController tabsMatchingSearchTerm];
  -[BrowserController _logTabClosingWithEventSender:tabClosingAction:numberOfTabsClosed:](self, v4, 4, [v5 count]);
  tabController = self->_tabController;
  v7 = _WBSLocalizedString();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__BrowserController_closeAllTabsMatchingSearch___block_invoke;
  v9[3] = &unk_2781D61F8;
  v9[4] = self;
  v8 = v5;
  v10 = v8;
  [(TabController *)tabController registerUndoWithName:v7 actions:v9];
}

- (void)closeAllTabs:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75110];
  v6 = [(BrowserController *)self _closeAllTabsLabel];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __34__BrowserController_closeAllTabs___block_invoke;
  v16 = &unk_2781D61F8;
  v7 = v4;
  v17 = v7;
  v18 = self;
  v8 = [v5 safari_closeAllTabsConfirmationWithCloseAllLabel:v6 closeHandler:&v13];

  v9 = [(BrowserController *)self tabBarManager:v13];
  if ([v9 displayMode] == 1)
  {
    v10 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    v11 = [v10 presentationState];

    if (v11)
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

- (void)addAllTabsToBookmarks:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_respondsToSelector();
    if (v6)
    {
      v7 = [v4 sf_commandSource];
    }

    else
    {
      v7 = @"Unknown";
    }

    v8 = 138543618;
    v9 = @"Add all to bookmarks";
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ via %{public}@", &v8, 0x16u);
    if (v6)
    {
    }
  }

  [(BrowserController *)self addBookmarkFolderForCurrentTabs];
}

- (void)openNewWindow:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  [WeakRetained openNewWindowWithPrivateBrowsingEnabled:0 fromWindow:self];
}

- (void)openNewTabOrWindow:(id)a3
{
  v4 = a3;
  if ([(BrowserController *)self effectiveNewDocumentShortcutBehavior])
  {
    [(BrowserController *)self openNewWindowInFrontmostProfile:v4];
  }

  else
  {
    [(BrowserController *)self openNewTab:v4];
  }
}

- (void)openNewWindowInFrontmostProfile:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  v4 = [(TabController *)self->_tabController activeProfile];
  [WeakRetained openNewWindowInProfile:v4 withPrivateBrowsingEnabled:0 fromWindow:self];
}

- (void)openNewWindowInProfile:(id)a3
{
  v11 = a3;
  v4 = [v11 propertyList];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  v5 = [v11 propertyList];

  if (!v5)
  {
LABEL_6:
    WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
    v5 = 0;
    goto LABEL_7;
  }

  v6 = [(TabController *)self->_tabController tabGroupManager];
  v7 = [v6 profileWithIdentifier:v5];

  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  if (v7)
  {
    v9 = 0;
    v10 = v7;
    goto LABEL_8;
  }

LABEL_7:
  v10 = [(TabController *)self->_tabController activeProfile];
  v7 = 0;
  v9 = 1;
LABEL_8:
  [WeakRetained openNewWindowInProfile:v10 withPrivateBrowsingEnabled:0 fromWindow:self];
  if (v9)
  {
  }
}

- (void)openNewPrivateWindow:(id)a3
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
    v7 = [(BrowserController *)self viewControllerToPresentFrom];
    v8 = [v6 initWithPresenter:v7];

    [v8 displayPrivateBrowsingDenialAlert];
    v5 = v8;
  }
}

- (void)mergeAllWindows:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  [WeakRetained mergeAllWindowsIntoWindow:self];
}

- (void)_pasteAndNavigate
{
  if (val)
  {
    objc_initWeak(&location, val);
    v1 = [MEMORY[0x277D75810] generalPasteboard];
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __38__BrowserController__pasteAndNavigate__block_invoke;
    v2[3] = &unk_2781D6700;
    objc_copyWeak(&v3, &location);
    [v1 safari_bestStringForPastingIntoURLFieldCompletionHandler:v2];

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
  v3 = [(TabController *)self->_tabController activeTabDocument];
  v2 = [v3 sfScribbleControllerIfLoaded];
  [v2 endScribblingAndSaveChanges:1];
}

- (void)_keyboardWillShow:(id)a3
{
  v7 = [a3 userInfo];
  if (_SFDeviceIsPad())
  {
    v4 = [(TabController *)self->_tabController activeTabDocument];
    v5 = [v4 isShowingFindOnPage];

    if (v5)
    {
      [(UIScrollView *)self->_scrollView _adjustForAutomaticKeyboardInfo:v7 animated:1 lastAdjustment:&self->_lastAdjustmentForKeyboard];
    }
  }

  v6 = [(BrowserController *)self firstResponder];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isDescendantOfView:self->_webView])
  {
    [(BrowserController *)self setOverridesUndoManagerForClosedTabs:0];
  }

  if (![(BrowserRootViewController *)self->_rootViewController isPerformingSizeTransition])
  {
    [(BrowserRootViewController *)self->_rootViewController updateWebViewSizeAttributes];
  }
}

- (void)_keyboardWillHide:(id)a3
{
  v7 = a3;
  v4 = [v7 userInfo];
  [(BrowserRootViewController *)self->_rootViewController updateWebViewSizeAttributes];
  v5 = [(TabController *)self->_tabController activeTabDocument];
  if ([v5 isShowingFindOnPage])
  {
    [(UIScrollView *)self->_scrollView _adjustForAutomaticKeyboardInfo:v4 animated:1 lastAdjustment:&self->_lastAdjustmentForKeyboard];
  }

  [v5 keyboardWillHide:v7];
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained browserControllerLayOutCatalogView:self];
}

- (void)clearBadgeOnPageFormatMenu
{
  v2 = [(BrowserController *)self tabController];
  v4 = [v2 activeTabDocument];

  v3 = [v4 webExtensionsController];
  [v3 didViewToolbarItemBadgesInTab:v4];
}

- (void)toggleShowingReaderForUserAction
{
  [(BrowserController *)self cancelFavorites];
  v3 = [(BrowserController *)self isShowingReader];
  v4 = v3;
  [(BrowserController *)self setShowingReader:!v3 animated:1];
  if (!v4)
  {
    v5 = [MEMORY[0x277D499B8] sharedLogger];
    [v5 didActivateReaderWithTrigger:0];
  }
}

- (void)setKeepBarsMinimized:(BOOL)a3
{
  v3 = a3;
  if ([(BrowserRootViewController *)self->_rootViewController keepBarsMinimized]!= a3)
  {
    [(BrowserRootViewController *)self->_rootViewController setKeepBarsMinimized:v3];
    if (v3)
    {
      v5 = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
      [(BrowserController *)self updateDynamicBarGeometry];
      [v5 attemptTransitionToState:0 animated:1];
      v6 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
      [v6 transitionToState:1 animated:1 completionHandler:0];
    }

    rootViewController = self->_rootViewController;

    [(BrowserRootViewController *)rootViewController updateAccessibilityIdentifier];
  }
}

- (BOOL)hasUnviewedDownloads
{
  v2 = [MEMORY[0x277CDB7A8] sharedManager];
  v3 = [v2 hasUnviewedDownloads];

  return v3;
}

- (unint64_t)downloadsCount
{
  v2 = [MEMORY[0x277CDB7A8] sharedManager];
  v3 = [v2 downloads];
  v4 = [v3 count];

  return v4;
}

- (_SFPageZoomPreferenceManager)pageZoomManager
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  v4 = [(BrowserController *)self pageZoomPreferenceManagerForTabDocument:v3];

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
  v2 = [(BrowserController *)self tabBarManager];
  v3 = [v2 inlineTabBar];

  IsPad = _SFDeviceIsPad();
  if (v3)
  {
    v5 = IsPad;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == 1)
  {
    v6 = [v3 usesMoreMenu] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)willPresentBrowsingAssistantInSheet:(BOOL)a3
{
  if (a3)
  {
    v4 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    v3 = [v4 capsuleCollectionView];
    [v3 setHidingStyle:1];
    [v3 beginHiddenExemptionForCapsule];
    [v4 beginHidingCapsuleAnimated:1 reason:@"page menu"];
  }
}

- (void)willDismissBrowsingAssistantInSheet:(BOOL)a3
{
  if (a3)
  {
    v9 = [(TabController *)self->_tabController activeTabDocument];
    v4 = [MEMORY[0x277D49E30] sharedManager];
    v5 = [v9 assistantController];
    v6 = [v5 webpageIdentifier];
    [v4 donateBrowsingAssistantVisualComponentPresentationEndedWithWebPageID:v6 componentType:1 componentIdentifier:&unk_2827FBEC0 hideReason:0];

    v7 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    v8 = [v7 capsuleCollectionView];
    [v8 endHiddenExemptionForCapsule];
    if (([(_SFPageFormatMenuController *)self->_pageFormatMenuController stepperIsInTransitionView]& 1) == 0)
    {
      [(BrowserController *)self _unhideCapsuleFromPageMenu];
    }
  }
}

- (void)_unhideCapsuleFromPageMenu
{
  if (a1)
  {
    *(a1 + 664) = 0;
    v2 = [*(a1 + 264) capsuleViewController];
    v1 = [v2 capsuleCollectionView];
    [v2 endHidingCapsuleAnimated:1 reason:@"page menu"];
    [v1 setHidingStyle:0];
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
  v4 = [(TabController *)self->_tabController activeTabDocument];
  v3 = [v4 titleForNewBookmark];
  [(BrowserController *)&self->super.super.super.isa _addBookmarkForCurrentTabKeyPressed:v3 title:1 addToFavorites:?];
}

- (void)_addBookmarkForCurrentTabKeyPressed:(void *)a3 title:(int)a4 addToFavorites:
{
  v7 = a3;
  if (a1)
  {
    v8 = objc_alloc(MEMORY[0x277CDB8C8]);
    v9 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    if (a4)
    {
      v10 = [v8 initForAddingToFavoritesInCollection:v9];
    }

    else
    {
      v10 = [v8 initWithCollection:v9];
    }

    v11 = v10;

    [v11 setSyntheticBookmarkProvider:a1[41]];
    if ([v11 prepareForPresentationForAddingBookmark:1])
    {
      v12 = [a1[41] activeTabDocument];
      v13 = [v12 cachedCanonicalURLOrURLForSharing];
      v14 = [v13 absoluteString];
      v15 = [v11 addBookmarkWithTitle:v7 address:v14 parentBookmark:0];

      [v11 setBookmarkNavDelegate:a1];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __78__BrowserController__addBookmarkForCurrentTabKeyPressed_title_addToFavorites___block_invoke;
      v19[3] = &__block_descriptor_33_e5_v8__0l;
      v20 = a2;
      [v11 setAddBookmarkAnalyticsHandler:v19];
      [a1 _presentModalViewController:v11 fromBarItem:*MEMORY[0x277D291C0] completion:0];
    }

    else
    {

      v16 = MEMORY[0x277D28BE0];
      v17 = [a1 viewControllerToPresentFrom];
      [v16 showLockedDatabaseAlertForAction:1 fromViewController:v17];

      v18 = [MEMORY[0x277D499B8] sharedLogger];
      [v18 didPreventBookmarkActionWithBookmarkType:0 actionType:0];

      v11 = 0;
    }
  }
}

- (BOOL)canAddToQuickNote
{
  v3 = +[Application sharedApplication];
  v4 = [v3 systemNoteTakingController];
  v5 = [(TabController *)self->_tabController activeTabDocument];
  v6 = [v4 isNoteTakingSupportedWithPrivateBrowsing:{objc_msgSend(v5, "isPrivateBrowsingEnabled")}];

  return v6;
}

- (void)addToQuickNote
{
  v2 = [(TabController *)self->_tabController activeTabDocument];
  [v2 addAppHighlightCreatingLink:1];
}

- (BOOL)canPrintCurrentTab
{
  v2 = self;
  v3 = [(TabController *)self->_tabController activeTabDocument];
  LOBYTE(v2) = [(BrowserController *)v2 _canPrintForTabDocument:v3];

  return v2;
}

- (BOOL)canMoveToTabGroup
{
  v2 = [(TabController *)self->_tabController activeTabDocument];
  v3 = +[FeatureManager sharedFeatureManager];
  if ([v3 isCustomTabGroupsEnabled] && (objc_msgSend(v2, "isPrivateBrowsingEnabled") & 1) == 0)
  {
    v4 = [v2 isPinned] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)moveMenuOnPageMenuWithDismissHandler:(id)a3
{
  v3 = [(TabController *)self->_tabController moveMenuOnPageMenuWithDismissHandler:a3];

  return v3;
}

- (BOOL)canTogglePinningTab
{
  tabController = self->_tabController;
  v3 = [(TabController *)tabController activeTabDocument];
  v4 = [v3 wbTab];
  LOBYTE(tabController) = [(TabController *)tabController isTabPinnable:v4];

  return tabController;
}

- (BOOL)currentTabIsPinned
{
  v2 = [(TabController *)self->_tabController activeTabDocument];
  v3 = [v2 isPinned];

  return v3;
}

- (void)togglePinningCurrentTab
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  -[TabController setTab:isPinned:](self->_tabController, "setTab:isPinned:", v3, [v3 isPinned] ^ 1);
}

- (BOOL)canFindOnPage
{
  if (![(BrowserController *)self _showingTabDocumentWithURL])
  {
    return 0;
  }

  v3 = [(TabController *)self->_tabController activeTabDocument];
  v4 = [v3 canFindOnPage];

  return v4;
}

- (void)presentPrintControllerForCurrentTab
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  [BrowserController presentPrintControllerForTabDocument:"presentPrintControllerForTabDocument:frame:initiatedByWebContent:" frame:? initiatedByWebContent:?];
}

- (void)reportScribbleFeedbackForSelectedRowIndex:(int64_t)a3
{
  if (a3 >= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = a3;
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(TabController *)self->_tabController activeTabDocument];
  v7 = [v6 committedURL];
  v8 = [v7 safari_URLByRemovingQuery];
  v9 = [v8 absoluteString];
  [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277D4A440]];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x277D4A428]];

  v11 = [MEMORY[0x277D499F0] currentDevice];
  LODWORD(v7) = [v11 deviceClass];

  if (v7 == 3)
  {
    v12 = @"iPad";
  }

  else
  {
    v12 = @"iPhone";
  }

  [v5 setObject:v12 forKeyedSubscript:*MEMORY[0x277D4A420]];
  v13 = [(TabController *)self->_tabController activeTabDocument];
  v14 = [v13 webView];

  [v14 bounds];
  v16 = v15;
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  [v5 setObject:v18 forKeyedSubscript:*MEMORY[0x277D4A450]];

  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  [v5 setObject:v19 forKeyedSubscript:*MEMORY[0x277D4A448]];

  v20 = MEMORY[0x277CCABB0];
  v21 = [v14 scrollView];
  [v21 zoomScale];
  v22 = [v20 numberWithDouble:?];
  [v5 setObject:v22 forKeyedSubscript:*MEMORY[0x277D4A460]];

  v23 = MEMORY[0x277CCABB0];
  [v14 _viewScale];
  v24 = [v23 numberWithDouble:?];
  [v5 setObject:v24 forKeyedSubscript:*MEMORY[0x277D4A458]];

  v25 = [MEMORY[0x277CCAC38] processInfo];
  v26 = [v25 safari_operatingSystemVersionString];
  [v5 setObject:v26 forKeyedSubscript:*MEMORY[0x277D4A430]];

  v27 = [MEMORY[0x277CCA8D8] mainBundle];
  v28 = [v27 safari_normalizedVersion];
  [v5 setObject:v28 forKeyedSubscript:*MEMORY[0x277D4A438]];

  v29 = +[Application sharedApplication];
  v30 = [v29 scribbleFeedbackSyncEngine];
  v31 = [v5 copy];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __63__BrowserController_reportScribbleFeedbackForSelectedRowIndex___block_invoke;
  v32[3] = &unk_2781D6728;
  v32[4] = self;
  v32[5] = v4;
  [v30 syncScribbleFeedbackUp:v31 withCompletion:v32];
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

- (void)reportWebCompatibilityFeedbackForActiveTabDocumentWithIssueCategory:(int64_t)a3 subCategory:(int64_t)a4
{
  v44 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [(TabController *)self->_tabController activeTabDocument];
  v8 = [v7 committedURL];
  v9 = [v8 safari_URLByRemovingQuery];
  v10 = [v9 absoluteString];
  [v44 setObject:v10 forKeyedSubscript:*MEMORY[0x277D4A638]];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v44 setObject:v11 forKeyedSubscript:*MEMORY[0x277D4A5F8]];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v44 setObject:v12 forKeyedSubscript:*MEMORY[0x277D4A600]];

  v13 = [MEMORY[0x277D499F0] currentDevice];
  v14 = [v13 deviceClass];

  switch(v14)
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

  [v44 setObject:v15 forKeyedSubscript:*MEMORY[0x277D4A5E8]];
  [v44 setObject:0 forKeyedSubscript:*MEMORY[0x277D4A5F0]];
  v16 = [(TabController *)self->_tabController activeTabDocument];
  v17 = v16;
  if (v16)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v16, "wasLoadedWithLockdownModeEnabled")}];
    [v44 setObject:v18 forKeyedSubscript:*MEMORY[0x277D4A608]];

    v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "wasLoadedWithPrivateRelay")}];
    [v44 setObject:v19 forKeyedSubscript:*MEMORY[0x277D4A628]];
  }

  else
  {
    [v44 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D4A608]];
    [v44 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D4A628]];
  }

  v20 = [(TabController *)self->_tabController activeTabDocument];
  v21 = [v20 webView];

  [v21 bounds];
  v23 = v22;
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
  [v44 setObject:v25 forKeyedSubscript:*MEMORY[0x277D4A648]];

  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
  [v44 setObject:v26 forKeyedSubscript:*MEMORY[0x277D4A640]];

  v27 = MEMORY[0x277CCABB0];
  [v21 _pageZoomFactor];
  v28 = [v27 numberWithDouble:?];
  [v44 setObject:v28 forKeyedSubscript:*MEMORY[0x277D4A658]];

  v29 = MEMORY[0x277CCABB0];
  [v21 _viewScale];
  v30 = [v29 numberWithDouble:?];
  [v44 setObject:v30 forKeyedSubscript:*MEMORY[0x277D4A650]];

  v31 = [MEMORY[0x277CCAC38] processInfo];
  v32 = [v31 safari_operatingSystemVersionString];
  [v44 setObject:v32 forKeyedSubscript:*MEMORY[0x277D4A620]];

  v33 = *MEMORY[0x277D4A618];
  [v44 setObject:&stru_2827BF158 forKeyedSubscript:*MEMORY[0x277D4A618]];
  v34 = *MEMORY[0x277D4A610];
  [v44 setObject:&stru_2827BF158 forKeyedSubscript:*MEMORY[0x277D4A610]];
  v35 = [MEMORY[0x277CCA8D8] mainBundle];
  v36 = [v35 safari_normalizedVersion];
  [v44 setObject:v36 forKeyedSubscript:*MEMORY[0x277D4A630]];

  v37 = _CFCopySupplementalVersionDictionary();
  v38 = v37;
  if (v37)
  {
    v39 = [v37 objectForKeyedSubscript:*MEMORY[0x277CBEC80]];
    if (v39)
    {
      [v44 setObject:v39 forKeyedSubscript:v33];
    }

    v40 = [v38 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
    if (v40)
    {
      [v44 setObject:v40 forKeyedSubscript:v34];
    }
  }

  v41 = +[Application sharedApplication];
  v42 = [v41 webCompatibilityFeedbackSyncEngine];
  v43 = [v44 copy];
  [v42 saveWebCompatibilityFeedback:v43 completionHandler:&__block_literal_global_773];
}

- (void)collectDiagnosticsForAutoFillWithCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [v4 autoFillController];
  [v5 collectDiagnosticsForAutoFillWithCompletionHandler:v6];
}

- (void)presentAutoFillInternalFeedbackToastWithDiagnosticsDataWithoutPageContents:(id)a3
{
  v6 = a3;
  v4 = [objc_alloc(MEMORY[0x277D28BC0]) initWithDiagnosticsData:v6];
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
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 648));
    if (WeakRetained)
    {
      objc_initWeak(&location, a1);
      v3 = MEMORY[0x277CBEBB8];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __68__BrowserController__scheduleAutoFillInternalFeedbackToastDismissal__block_invoke;
      v6[3] = &unk_2781D64B0;
      objc_copyWeak(&v8, &location);
      v7 = WeakRetained;
      v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:10.0];
      v5 = *(a1 + 640);
      *(a1 + 640) = v4;

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

- (void)dismissAutoFillInternalFeedbackToastImmediately:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_activeAutoFillInternalFeedbackToastController);
  if (WeakRetained)
  {
    if (v3)
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

- (void)_dismissAutoFillInternalFeedbackToast:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 81);

    if (WeakRetained == v4)
    {
      objc_storeWeak(a1 + 81, 0);
      if (a1[68] == v4)
      {
        [a1 dismissToastViewController:v4];
      }

      else
      {
        [a1[69] removeObject:v4];
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

- (void)autoFillInternalFeedbackActivityNotice:(id)a3 shouldPresentFeedbackForm:(BOOL)a4
{
  v6 = a3;
  [(BrowserController *)self dismissToastViewController:self->_currentlyPresentedToastViewController];
  if (a4)
  {
    v7 = [v6 diagnosticsData];
    v8 = objc_alloc(MEMORY[0x277CDB738]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __86__BrowserController_autoFillInternalFeedbackActivityNotice_shouldPresentFeedbackForm___block_invoke;
    v11[3] = &unk_2781D6750;
    v11[4] = self;
    v9 = [v8 initWithDiagnosticsData:v7 reportHandler:v11];
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
  v2 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  [v2 editTabBar];
}

- (void)navigationBarMetricsDidChange:(id)a3
{
  if (![(BrowserRootViewController *)self->_rootViewController isPerformingSizeTransition])
  {
    v4 = [(BrowserRootViewController *)self->_rootViewController view];
    [v4 frame];
    v6 = v5;
    v8 = v7;

    [(BrowserController *)self rootViewControllerViewWillTransitionToSize:v6, v8];
    [(BrowserController *)self updateDynamicBarGeometry];
    [(BrowserController *)self rootViewControllerViewTransitionFromSize:0 includingSidebar:0 animated:v6, v8];

    [(BrowserController *)self rootViewControllerViewDidTransitionFromSize:0 animated:v6, v8];
  }
}

- (void)compressedNavigationBarWasTapped:(id)a3
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

- (void)navigationBarReaderButtonWasTapped:(id)a3
{
  [(BrowserController *)self _readerButtonTapped];
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 reportIOSToolbarButtonUsage:25 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
}

- (void)navigationBarTranslateButtonWasTapped:(id)a3
{
  v4 = [(BrowserController *)self _formatMenuButtonPopoverSourceInfo];
  [(BrowserController *)self navigationBarTranslateButtonWasTappedWithSourceInfo:?];
}

- (void)navigationBarTranslateButtonWasTappedWithSourceInfo:(id)a3
{
  v11 = a3;
  v4 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [v4 translationContext];

  v6 = [v5 availableTargetLocaleIdentifiers];
  v7 = [v6 count];
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = [v6 objectAtIndexedSubscript:0];
      [v5 requestTranslatingWebpageToLocale:v8 completionHandler:0];
    }

    else
    {
      v8 = [MEMORY[0x277CDB8E8] translationAlertControllerWithTranslationContext:v5];
      if (v11)
      {
        [v8 configurePopoverWithSourceInfo:v11];
      }

      v9 = [(BrowserController *)self viewControllerToPresentFrom];
      [v9 presentViewController:v8 animated:1 completion:0];
    }
  }

  v10 = [MEMORY[0x277D499B8] sharedLogger];
  [v10 reportIOSToolbarButtonUsage:27 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
}

- (void)navigationBarFormatMenuButtonStartedInteraction:(id)a3
{
  v4 = [(TabController *)self->_tabController activeTabDocument];
  v3 = [v4 readerContext];
  [v3 checkReaderAvailability];
}

- (void)navigationBarCancelButtonWasTapped:(id)a3
{
  [(BrowserController *)self removeCachedSearchStateForActiveTabDocument];
  v4 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [v4 reportUnifiedFieldSearchDidCancel];

  [(BrowserController *)self cancelFavorites];
  v5 = [(TabController *)self->_tabController activeTabDocument];
  [v5 hideFindOnPage];
}

- (void)navigationBarReloadButtonWasTapped:(id)a3
{
  v4 = [(TabController *)self->_tabController activeTabDocument];
  [v4 reloadUserInitiated];

  v5 = [MEMORY[0x277D499B8] sharedLogger];
  [v5 reportIOSToolbarButtonUsage:22 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
}

- (void)navigationBarStopLoadingButtonWasTapped:(id)a3
{
  v4 = [(TabController *)self->_tabController activeTabDocument];
  [v4 stopLoadingUserInitiated];

  v5 = [MEMORY[0x277D499B8] sharedLogger];
  [v5 reportIOSToolbarButtonUsage:23 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
}

- (void)navigationBarMediaStateMuteButtonWasTapped:(id)a3 forItem:(id)a4
{
  v10 = a4;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0;
  v6 = v10;
  if (v5)
  {
    v6 = 0;
  }

  tabController = self->_tabController;
  v8 = [v6 UUID];
  v9 = [(TabController *)tabController tabDocumentWithUUID:v8];

  if ([v9 mediaStateIcon])
  {
    [v9 toggleMediaStateMuted];
  }

  else
  {
    [v9 toggleGlobalMediaStateMuted];
  }
}

- (id)navigationBar:(id)a3 mediaStateMuteButtonMenuElementsForItem:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  tabController = self->_tabController;
  v8 = [v6 UUID];
  v9 = [(TabController *)tabController tabDocumentWithUUID:v8];

  v10 = [v9 mediaStateMuteButtonMenuElements];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = v12;

  return v12;
}

- (void)navigationBarFormatMenuButtonWasTapped:(id)a3
{
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didToggleMagicMenuSBA];

  v5 = [(BrowserController *)self pageFormatMenuController];
  v6 = [v5 viewController];
  v7 = [v6 presentingViewController];

  if (!v7)
  {
    v8 = [MEMORY[0x277D499B8] sharedLogger];
    [v8 reportIOSToolbarButtonUsage:35 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
  }

  v9 = [(BrowserController *)self viewControllerToPresentFromNavigationBar];
  v10 = [(BrowserController *)self _formatMenuButtonPopoverSourceInfo];
  v11 = [v5 presentMenuFromViewController:v9 withSourceInfo:v10 fromSafariViewController:0];

  if (v11)
  {
    v12 = [(TabController *)self->_tabController activeTabDocument];
    v13 = [v12 assistantController];
    v14 = [v13 result];
    v15 = [v14 remoteContentAvailableForFetching];

    if (v15)
    {
      v16 = [MEMORY[0x277D499B8] sharedLogger];
      [v16 didClickSparkleSBA];

      v17 = [MEMORY[0x277D49E30] sharedManager];
      v18 = [v12 assistantController];
      v19 = [v18 webpageIdentifier];
      [v17 donateBrowsingAssistantUserInteractionDetectedWithWebPageID:v19 componentType:0 componentIdentifier:&unk_2827FBED8 tableOfContentsArrayLength:0 tableOfContentsTextIndex:0 readerSectionExpanded:0];
    }

    objc_initWeak(&location, self);
    v20 = [v12 assistantController];
    v21 = [v12 url];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __60__BrowserController_navigationBarFormatMenuButtonWasTapped___block_invoke;
    v22[3] = &unk_2781D6778;
    objc_copyWeak(&v23, &location);
    [v20 updateAssistantContentForURL:v21 completionHandler:v22];

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

- (void)tabDocument:(id)a3 didReceiveAssistantContentOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(TabController *)self->_tabController activeTabDocument];

  if ((v4 & 0x1F) != 0 && v7 == v6)
  {
    v8 = [(_SFPageFormatMenuController *)self->_pageFormatMenuController viewController];
    if (([v8 isBeingPresented] & 1) == 0)
    {
      v9 = [v8 presentingViewController];
      if (v9)
      {
      }

      else if (([v6 isShowingReader] & 1) == 0)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    v10 = [v6 assistantController];
    v11 = [v6 url];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__BrowserController_tabDocument_didReceiveAssistantContentOptions___block_invoke;
    v13[3] = &unk_2781D67A0;
    v13[4] = self;
    v14 = v6;
    v12 = v10;
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

- (void)handleSearchResult:(id)a3
{
  v4 = [a3 _sf_punchoutURL];
  [(BrowserController *)self _loadURL:v4 inExternalApplication:0 forImageAttribution:0];
}

- (void)navigationBarFormatMenuButtonBecameUnavailable:(id)a3
{
  v3 = [(_SFPageFormatMenuController *)self->_pageFormatMenuController viewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (id)navigationBarURLForSharing:(id)a3
{
  v3 = [(BrowserController *)self tabController];
  v4 = [v3 activeTabDocument];
  v5 = [v4 urlForSharing];

  return v5;
}

- (void)navigationBar:(id)a3 didFinishShowingAvailabilityLabelOfType:(int64_t)a4
{
  v6 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [v6 navigationBarItem];
  [v5 setDidFinishShowingAvailabilityLabel:1 ofType:a4];
}

- (void)navigationBar:(id)a3 multipleExtensionsButtonTapped:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (-[BrowserController tabBarDisplayMode](self, "tabBarDisplayMode") == 2 || (-[TabController activeTabDocument](self->_tabController, "activeTabDocument"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isBlank], v7, v8))
  {
    [(BrowserController *)self webExtensionsButtonTapped:v6];
  }

  else
  {
    [(BrowserController *)self navigationBarFormatMenuButtonWasTapped:v9];
  }
}

- (void)webExtensionsButtonTapped:(id)a3
{
  v4 = a3;
  [self->_extensionActionPanel _cancel];
  [(BrowserController *)self setCanFocusNavigationBarURL:0];
  v5 = [(BrowserController *)self tabController];
  v6 = [v5 activeTabDocument];

  v7 = [v6 profile];
  v8 = +[Application sharedApplication];
  v9 = [v8 webExtensionsControllerForTabWithPrivateBrowsingEnabled:objc_msgSend(v6 profile:{"isPrivateBrowsingEnabled"), v7}];

  v10 = [v9 enabledExtensions];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [ActionPanel alloc];
    v13 = [(BrowserController *)self tabController];
    v14 = [v13 activeTabDocument];
    v15 = [(ActionPanel *)v12 initWithTabDocument:v14 activityDelegate:self menuStyle:1];
    extensionActionPanel = self->_extensionActionPanel;
    self->_extensionActionPanel = v15;

    [(_SFActivityViewController *)self->_extensionActionPanel setDelegate:self];
    v17 = [objc_alloc(MEMORY[0x277D28F68]) initWithView:v4];
    v18 = self->_extensionActionPanel;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __47__BrowserController_webExtensionsButtonTapped___block_invoke_2;
    v21[3] = &unk_2781D60B8;
    v21[4] = self;
    [(BrowserController *)self _presentModalViewController:v18 fromPopoverSource:v17 useAdaptivePresentationInCompact:1 animated:1 completion:v21];
    v19 = [MEMORY[0x277D499B8] sharedLogger];
    [v19 reportIOSToolbarButtonUsage:34 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    v17 = [WeakRetained viewControllerToPresentFromForBrowserController:self];

    v19 = [MEMORY[0x277D28CB8] createManageExtensionsNavigationControllerFromPageFormatMenu:0 activeDocument:v6];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __47__BrowserController_webExtensionsButtonTapped___block_invoke;
    v22[3] = &unk_2781D60B8;
    v22[4] = self;
    [v17 presentViewController:v19 animated:1 completion:v22];
  }
}

void __47__BrowserController_webExtensionsButtonTapped___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCanFocusNavigationBarURL:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 520);
  *(v2 + 520) = 0;
}

- (void)_presentModalViewController:(void *)a3 fromPopoverSource:(uint64_t)a4 useAdaptivePresentationInCompact:(uint64_t)a5 animated:(void *)a6 completion:
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [v11 setProvenance:{objc_msgSend(v12, "provenance")}];
    }

    v14 = [v11 modalPresentationStyle];
    if (v12 && [(BrowserController *)a1 _shouldPresentViewControllerUsingAdaptivePopover:v11])
    {
      [v11 setModalPresentationStyle:7];
      v15 = [objc_alloc(MEMORY[0x277CDB858]) initWithSourceInfo:v12];
      [v15 setPopoverUsesAdaptivePresentationInCompact:a4];
      v16 = [v11 popoverPresentationController];
      [v15 attachToPopoverPresentationController:v16];
    }

    else if ([v11 modalPresentationStyle] == 7)
    {
      [v11 setModalPresentationStyle:0];
    }

    else if ((v14 - 1) <= 1)
    {
      [(BrowserController *)a1 _setSheetPresentationIfNeededForController:v11];
    }

    v17 = [v11 presentingViewController];

    if (v17)
    {
      v18 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [v11 presentingViewController];
        objc_claimAutoreleasedReturnValue();
        [BrowserController _presentModalViewController:fromPopoverSource:useAdaptivePresentationInCompact:animated:completion:];
      }
    }

    v19 = [a1 viewControllerToPresentFrom];
    v20 = [v19 _sf_viewControllerToPresentFrom];
    [v20 presentViewController:v11 animated:a5 completion:v13];
  }
}

- (void)navigationBar:(id)a3 extensionButtonTapped:(id)a4 extension:(id)a5
{
  v9 = a4;
  v7 = a5;
  [(BrowserController *)self webExtensionButtonTapped:v9 extension:v7];
  v8 = [MEMORY[0x277D499B8] sharedLogger];
  [v8 reportIOSToolbarButtonUsage:20 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
}

- (void)webExtensionButtonTapped:(id)a3 extension:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277D28F68]) initWithView:v11];
  v8 = [v6 toolbarItem];
  v9 = [(BrowserController *)self activeTabForExtensions];
  v10 = [(BrowserController *)self viewControllerToPresentFrom];
  [v8 performActionForTab:v9 parentViewController:v10 popoverSourceInfo:v7];
}

- (void)showPopupOrPerSitePermissionsForWebExtension:(id)a3 forTab:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [v19 toolbarItem];
  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [v6 tabGroupTab];
  v10 = [v9 tabGroupUUID];
  v11 = [v8 initWithUUIDString:v10];

  v12 = [(TabController *)self->_tabController activeTabDocument];
  LOBYTE(v10) = [v12 isEqual:v6];

  if ((v10 & 1) == 0)
  {
    tabController = self->_tabController;
    v14 = [v6 uuid];
    [(TabController *)tabController switchToTabWithUUID:v14 inTabGroupWithUUID:v11];
  }

  v15 = [v6 unifiedTabBarItem];
  v16 = [v15 bestButtonForExtensionPopoverSource:v19];

  v17 = [objc_alloc(MEMORY[0x277D28F68]) initWithView:v16];
  v18 = [(BrowserController *)self viewControllerToPresentFrom];
  [v7 showPopupOrPerSitePermissionsForTab:v6 parentViewController:v18 popoverSourceInfo:v17];
}

- (void)webExtensionWasRemotelyEnabled:(id)a3
{
  v4 = a3;
  v5 = [(BannerController *)self->_bannerController remotelyEnabledExtensionBanner];
  v6 = v5;
  if (v5)
  {
    [v5 addExtension:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = [objc_alloc(MEMORY[0x277D28ED0]) initWithExtension:v4];
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

- (void)showExtensionPermissionBannerForExtensions:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CDB8A8] sharedInstance];
  v6 = [v5 defaultSearchEngineForPrivateBrowsing:0];
  v7 = [v6 searchURLForUserTypedString:@"a"];
  v8 = [v7 host];
  v9 = [v8 safari_highLevelDomainFromHost];

  v10 = [objc_alloc(MEMORY[0x277D28EE0]) initWithExtensions:v4 grantedHost:v9];
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
  v11 = v4;
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
  v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  if ([MEMORY[0x277D49A08] isLockedPrivateBrowsingEnabled] && objc_msgSend(v2, "BOOLForKey:", *MEMORY[0x277D4A2F0]) && objc_msgSend(v2, "BOOLForKey:", *MEMORY[0x277D4A0D8]) && (objc_msgSend(v2, "BOOLForKey:", *MEMORY[0x277D4A348]) & 1) == 0)
  {
    v3 = [v2 BOOLForKey:*MEMORY[0x277D4A1B8]] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)resetWhatsNewInPrivateBrowsingStartPageModule
{
  v2 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [v2 resetPrivateBrowsingExplanation];
}

- (id)itemProviderForNavigationBar:(id)a3
{
  v3 = MEMORY[0x277CCAA88];
  v4 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [v3 safari_itemProviderForTabDocument:v4];

  return v5;
}

- (int64_t)dataOwnerForNavigationBar:(id)a3
{
  v3 = [(BrowserController *)self tabController];
  v4 = [v3 activeTabDocument];

  if ([v4 hasQuickLookContent])
  {
    v5 = [v4 quickLookDocument];
    v6 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = [v5 sourceURL];
    v8 = [v7 safari_URLByNormalizingBlobURL];
    if ([v6 isURLManaged:v8])
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

- (id)currentContentUUIDForNavigationBar:(id)a3
{
  v3 = [(BrowserController *)self tabController];
  v4 = [v3 activeTabDocument];
  v5 = [v4 uuid];

  return v5;
}

- (void)navigationBar:(id)a3 didCreateLeadingToolbar:(id)a4 trailingToolbar:(id)a5
{
  v8 = a4;
  v7 = a5;
  [(_SFBarManager *)self->_barManager registerToolbar:v8 withLayout:0 persona:0];
  [(_SFBarManager *)self->_barManager registerToolbar:v7 withLayout:1 persona:0];
}

- (void)_setSidebarUIProxy:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 768), a2);
    [*(a1 + 768) setSidebarUIProxyDelegate:a1];
    [*(a1 + 912) setSidebarUIProxy:v4];
  }
}

- (void)_updateSidebarStickinessAfterUserAction
{
  if (a1 && ([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0 && objc_msgSend(a1, "_bookmarksPresentationStyle") == 2)
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v2 setBool:objc_msgSend(a1[96] forKey:{"isShowingSidebar"), @"ShowSidebar"}];
  }
}

uint64_t __61__BrowserController__showOrHideSidebarInLandscapeIfNecessary__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[96];
  v3 = [(BrowserController *)v1 shouldShowSidebarInLandscape];

  return [v2 setShowingSidebar:v3 completion:0];
}

- (void)_perSitePreferencesDidChange:(id)a3
{
  v7 = a3;
  if ([v7 _sf_perSitePreferenceNotificationWasSentFromAnotherProcess])
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
    v5 = [WeakRetained perSitePreferencesVendor];
    v6 = [v5 sharedUserMediaPermissionController];
    [v6 reloadPreferences];

    [(BrowserController *)self _reloadPresentedPreferencesListViewController];
  }
}

- (void)_contentBlockersPerSitePreferenceDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__BrowserController__contentBlockersPerSitePreferenceDidChange___block_invoke;
  v6[3] = &unk_2781D61F8;
  v7 = v4;
  v8 = self;
  v5 = v4;
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

- (void)_perSiteLockdownModePreferenceDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__BrowserController__perSiteLockdownModePreferenceDidChange___block_invoke;
  v6[3] = &unk_2781D61F8;
  v7 = v4;
  v8 = self;
  v5 = v4;
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
  v2 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  v3 = [v2 isShowingCompletionDetail];

  return v3;
}

- (void)prepareToNavigateInTabDocument:(id)a3
{
  v6 = a3;
  v4 = [(BrowserController *)self tabController];
  v5 = [v4 activeTabDocument];

  if (v5 == v6)
  {
    [(BrowserController *)self dismissTransientUIAnimated:1];
  }
}

- (void)configureMenuAndAdoptButton:(id)a3
{
  v5 = a3;
  v4 = [(BrowserController *)self pageFormatMenuController];
  [v4 configureMenuAndAdoptButton:v5];
}

- (BrowserController)initWithStateData:(id)a3 browserWindowController:(id)a4 savedState:(id)a5 controlledByAutomation:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 UUID];
  v14 = [v10 sceneID];
  v15 = [(BrowserController *)self initWithUUID:v13 sceneID:v14 browserWindowController:v11 tabGroupManager:0 controlledByAutomation:v6];

  if (v15)
  {
    objc_storeStrong(&v15->_savedState, a5);
    [(BrowserController *)v15 _readSavedState];
    v16 = v15;
  }

  return v15;
}

- (BrowserController)initWithWindowState:(id)a3 browserWindowController:(id)a4 tabGroupManager:(id)a5 controlledByAutomation:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = objc_alloc(MEMORY[0x277CCAD78]);
  v15 = [v11 uuid];
  v16 = [v14 initWithUUIDString:v15];
  v17 = [v11 sceneID];
  v18 = [(BrowserController *)self initWithUUID:v16 sceneID:v17 browserWindowController:v12 tabGroupManager:v13 controlledByAutomation:v6];

  if (v18)
  {
    objc_storeStrong(&v18->_windowState, a3);
    [(TabController *)v18->_tabController setWindowState:v11];
    [(BrowserController *)v18 createProfileWindow];
    if (![(BrowserController *)v18 isInDefaultProfile])
    {
      v19 = [(TabController *)v18->_tabController pinnedTabsManager];
      v20 = [(BrowserController *)v18 activeProfileIdentifier];
      [v19 willSelectProfileWithIdentifier:v20];
    }

    [(BrowserController *)v18 _prepareExtensionsForEffectiveProfile];
    [(BrowserController *)v18 _readSavedState];
    [(BrowserController *)v18 updateCollaborationButton];
    v21 = v18;
  }

  return v18;
}

- (BrowserController)initWithUUID:(id)a3 sceneID:(id)a4 browserWindowController:(id)a5 tabGroupManager:(id)a6 controlledByAutomation:(BOOL)a7
{
  v91 = a3;
  v90 = a4;
  v13 = a5;
  v89 = a6;
  v105.receiver = self;
  v105.super_class = BrowserController;
  v14 = [(BrowserController *)&v105 init];
  if (v14)
  {
    objc_initWeak(&location, v14);
    objc_storeWeak(&v14->_browserWindowController, v13);
    objc_storeStrong(&v14->_UUID, a3);
    v14->_controlledByAutomation = a7;
    v88 = v13;
    v15 = [v13 uiDelegateForBrowserController:v14];
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
    objc_storeStrong(&v14->_sceneID, a4);
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
    v26 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    -[WKPreferences _setNeedsSiteSpecificQuirks:](v14->_wkPreferences, "_setNeedsSiteSpecificQuirks:", [v26 BOOLForKey:*MEMORY[0x277D292B0]]);

    [(WKPreferences *)v14->_wkPreferences _setMediaDevicesEnabled:1];
    v27 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    -[WKPreferences _setMediaSourceEnabled:](v14->_wkPreferences, "_setMediaSourceEnabled:", [v27 BOOLForKey:*MEMORY[0x277D29260]]);

    if (objc_opt_respondsToSelector())
    {
      v28 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      [v28 doubleForKey:*MEMORY[0x277D29250]];
      v30 = v29;

      if (v30 != 0.0)
      {
        [(WKPreferences *)v14->_wkPreferences _setManagedMediaSourceLowThreshold:v30];
      }

      v31 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      [v31 doubleForKey:*MEMORY[0x277D29248]];
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

    objc_storeStrong(&v14->_tabGroupManager, a6);
    v37 = [[TabController alloc] initWithBrowserController:v14];
    tabController = v14->_tabController;
    v14->_tabController = v37;

    v39 = [(TabController *)v14->_tabController tabCollectionViewProvider];
    tabCollectionViewProvider = v14->_tabCollectionViewProvider;
    v14->_tabCollectionViewProvider = v39;

    [(TabCollectionViewProviding *)v14->_tabCollectionViewProvider setSnapshotsEnabled:0];
    [(TabController *)v14->_tabController addDocumentObserver:v14];
    v41 = [MEMORY[0x277D28F08] settings];
    v42 = [(BrowserController *)v14 UUID];
    -[TabController setPrivateBrowsingEnabled:](v14->_tabController, "setPrivateBrowsingEnabled:", [v41 privateBrowsingEnabledForWindowWithUUID:v42]);

    v43 = [v88 pinnedTabsManager];
    [(TabController *)v14->_tabController setPinnedTabsManager:v43];

    v44 = objc_alloc_init(MEMORY[0x277CDB758]);
    barManager = v14->_barManager;
    v14->_barManager = v44;

    [(_SFBarManager *)v14->_barManager setDelegate:v14];
    v46 = [MEMORY[0x277CDB7A8] sharedManager];
    [v46 totalProgress];
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
    v50 = [MEMORY[0x277D75710] sf_bookmarkMenu];
    [(_SFBarManager *)v49 setBarItem:3 menu:v50];

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
    v55 = [(TabController *)v14->_tabController tabExposeMenu];
    [(_SFBarManager *)v54 setBarItem:8 menu:v55];

    v56 = v14->_barManager;
    v57 = [(TabController *)v14->_tabController tabGroupsMenuForTabGroupButton:1];
    [(_SFBarManager *)v56 setBarItem:2 menu:v57];

    [(_SFBarManager *)v14->_barManager setBarItem:11 hidden:1];
    v58 = [(BrowserController *)v14 tabBarManager];
    [v58 addObserver:v14];
    [(TabCollectionViewProviding *)v14->_tabCollectionViewProvider setTabBarManager:v58];
    if (([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled] & 1) == 0)
    {
      v59 = [LibraryController alloc];
      v60 = [(BrowserController *)&v14->super.super.super.isa _libraryConfiguration];
      v61 = [(LibraryController *)v59 initWithConfiguration:v60];
      libraryController = v14->_libraryController;
      v14->_libraryController = v61;
    }

    [(BrowserController *)v14 _updateConfiguration];
    v63 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v63 addObserver:v14 selector:sel__perSitePreferencesDidChange_ name:*MEMORY[0x277D29288] object:0];

    v64 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v64 addObserver:v14 selector:sel__perSitePreferencesDidChangeRemotely_ name:*MEMORY[0x277D4A378] object:0];

    v65 = [MEMORY[0x277CCAB98] defaultCenter];
    [v65 addObserver:v14 selector:sel__contentBlockersPerSitePreferenceDidChange_ name:*MEMORY[0x277D4A300] object:0];
    [v65 addObserver:v14 selector:sel__automaticPasswordInputViewNotification_ name:*MEMORY[0x277CDB950] object:0];
    [v65 addObserver:v14 selector:sel__automaticPasswordInputViewAutoFillContextProviderRequiredNotification_ name:*MEMORY[0x277CDB948] object:0];
    [v65 addObserver:v14 selector:sel__defaultSearchEngineDidChange_ name:*MEMORY[0x277CDBA20] object:0];
    [v65 addObserver:v14 selector:sel__trialABGroupIdentifierDidChange_ name:*MEMORY[0x277D49DA0] object:0];
    [v65 addObserver:v14 selector:sel__didDismissManageExtensionsViewController_ name:*MEMORY[0x277D29050] object:0];
    [v65 addObserver:v14 selector:sel__perSiteLockdownModePreferenceDidChange_ name:*MEMORY[0x277D4A308] object:0];
    [v65 addObserver:v14 selector:sel__voiceSearchAvailabilityDidChange_ name:*MEMORY[0x277D29198] object:0];
    [v65 addObserver:v14 selector:sel__profileWallpaperDidChange_ name:*MEMORY[0x277D4A918] object:0];
    v66 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v66 addObserver:v14 selector:sel__backgroundImageFileModifiedRemotely_ name:*MEMORY[0x277D7B5B8] object:0];

    v67 = [MEMORY[0x277CCAB98] defaultCenter];
    [v67 addObserver:v14 selector:sel__backgroundImageNeedsCloudKitUpdate_ name:*MEMORY[0x277D4A978] object:0];

    [v65 addObserver:v14 selector:sel__beganSharingTabGroup_ name:*MEMORY[0x277D29120] object:0];
    v68 = [MEMORY[0x277CBEB18] array];
    queuedToastViewControllers = v14->_queuedToastViewControllers;
    v14->_queuedToastViewControllers = v68;

    v70 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    cachedParticipantLists = v14->_cachedParticipantLists;
    v14->_cachedParticipantLists = v70;

    v72 = +[Application sharedApplication];
    [v65 addObserver:v14 selector:sel__lockedPrivateBrowsingStateDidChange name:@"lockedPrivateBrowsingStateDidChangeNotification" object:v72];

    objc_initWeak(&v97, v14->_barManager);
    objc_initWeak(&from, v14->_rootViewController);
    v73 = [MEMORY[0x277CDB7A8] sharedManager];
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __105__BrowserController_initWithUUID_sceneID_browserWindowController_tabGroupManager_controlledByAutomation___block_invoke_15;
    v92[3] = &unk_2781D69F8;
    v74 = v73;
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
      v76 = [v75 automationController];
      [v76 updatePreferencesForAutomation:v14->_wkPreferences];
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
      [v65 safari_addObserver:v14 selector:sel__debugAutoFillConsoleLoggingEnabledPreferenceDidChange_ forUserDefaultKey:*MEMORY[0x277D4A180]];
      [(BrowserController *)v14 _debugAutoFillConsoleLoggingEnabledPreferenceDidChange:0];
    }

    v81 = objc_alloc_init(MEMORY[0x277CE3858]);
    v82 = [v81 defaultWebpagePreferences];
    defaultWebpagePreferences = v14->_defaultWebpagePreferences;
    v14->_defaultWebpagePreferences = v82;

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
    v13 = v88;
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

- (void)adoptSceneID:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  [(WBWindowState *)self->_windowState setSceneID:v5];

  tabGroupManager = self->_tabGroupManager;
  windowState = self->_windowState;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__BrowserController_adoptSceneID___block_invoke;
  v13[3] = &unk_2781D63F8;
  v8 = v4;
  v14 = v8;
  [(WBTabGroupManager *)tabGroupManager saveWindowState:windowState completionHandler:v13];
  v9 = [v8 copy];
  sceneID = self->_sceneID;
  self->_sceneID = v9;

  savedState = self->_savedState;
  v12 = [(BrowserController *)self windowStateData];
  [(_SFBrowserSavedState *)savedState updateSceneID:v12];
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
  v5 = [WeakRetained session];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x277D75128] sharedApplication];
    v9 = [v8 openSessions];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3321888768;
    v12[2] = __32__BrowserController_closeWindow__block_invoke;
    v12[3] = &__block_descriptor_40_ea8_32c45_ZTSKZ32__BrowserController_closeWindow_E3__1_e24_B16__0__UISceneSession_8l;
    v10 = self->_sceneID;
    v13 = v10;
    v7 = [v9 safari_anyObjectPassingTest:v12];
    v2 = &v13;
  }

  v11 = [MEMORY[0x277D75128] sharedApplication];
  [v11 requestSceneSessionDestruction:v7 options:0 errorHandler:&__block_literal_global_961];

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

- (void)attachToScene:(id)a3
{
  v5 = a3;
  v4 = [v5 session];
  [(BrowserController *)self scene:v5 willConnectToSession:v4 options:0];
}

- (id)detachFromScene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  [(BrowserController *)self sceneDidDisconnect:WeakRetained];

  return WeakRetained;
}

- (void)_sceneSession
{
  v1 = a1;
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a1[38])
    {
      WeakRetained = objc_loadWeakRetained(a1 + 113);
      v3 = WeakRetained;
      if (WeakRetained)
      {
        v1 = [WeakRetained session];
      }

      else
      {
        v4 = [MEMORY[0x277D75128] sharedApplication];
        v5 = [v4 openSessions];

        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v6 = v5;
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
              v11 = v1[38];
              v12 = [v10 persistentIdentifier];
              LOBYTE(v11) = [v11 isEqualToString:v12];

              if (v11)
              {
                v1 = v10;
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

        v1 = 0;
LABEL_16:
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)setWebView:(uint64_t)a1
{
  v4 = a2;
  v5 = v4;
  if (!a1 || *(a1 + 936) == v4)
  {
    goto LABEL_26;
  }

  [v4 _beginPinningInputViews];
  [*(a1 + 936) _endAnimatedResize];
  v6 = [*(a1 + 784) crashBanner];
  if (v6)
  {
    v7 = [*(a1 + 784) crashBanner];
    v8 = [v7 messageType] == 0;
  }

  else
  {
    v8 = 0;
  }

  [a1 setShowingCrashBanner:0 animated:0];
  if (*(a1 + 114) == 1)
  {
    [*(a1 + 936) _endInteractiveObscuredInsetsChange];
  }

  v9 = [*(a1 + 936) scrollView];
  [v9 setDelegate:0];

  v10 = [TabDocument tabDocumentForWKWebView:*(a1 + 936)];
  objc_storeStrong((a1 + 936), a2);
  v11 = [TabDocument tabDocumentForWKWebView:v5];
  WeakRetained = objc_loadWeakRetained((a1 + 368));
  if (v10 != v11)
  {
    v13 = [v10 view];
    [v13 removeFromSuperview];
    [v13 setGeometryProvider:0];
    v14 = [v11 view];
    v15 = [WeakRetained browserController:a1 tabDocumentViewGeometryProviderForTabDocumentView:v14];
    [v14 setGeometryProvider:v15];

    [WeakRetained browserController:a1 updateViewForActiveTabDocument:v11];
    [*(a1 + 264) updateUnifiedBarChromelessScrollDistance];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserControllerUpdateInactiveAudibleTabs:a1];
    }
  }

  if ((*(a1 + 569) & 1) == 0 && [a1 sf_inResponderChain])
  {
    v16 = [*(a1 + 944) tabThumbnailCollectionView];
    if ([v16 presentationState] == 1)
    {

LABEL_18:
      goto LABEL_19;
    }

    v17 = [v16 presentationState];

    if (v17 != 2)
    {
      v16 = [*(a1 + 328) activeTabDocument];
      [a1 updateFocusForTab:v16 webViewCanTakeFocus:{objc_msgSend(*(a1 + 912), "isSelectingItem") ^ 1}];
      goto LABEL_18;
    }
  }

LABEL_19:
  [*(a1 + 80) setCurrentWebView:*(a1 + 936)];
  v18 = [*(a1 + 936) scrollView];
  v19 = *(a1 + 288);
  *(a1 + 288) = v18;

  [*(a1 + 264) setWebView:v5];
  [*(a1 + 288) _setIndicatorInsetAdjustmentBehavior:2];
  [*(a1 + 288) setClipsToBounds:0];
  [*(a1 + 288) setDelegate:a1];
  if (*(a1 + 114) == 1)
  {
    [*(a1 + 936) _beginInteractiveObscuredInsetsChange];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__BrowserController_setWebView___block_invoke;
  aBlock[3] = &unk_2781D63D0;
  aBlock[4] = a1;
  v25 = v8;
  v24 = v5;
  v20 = _Block_copy(aBlock);
  if (([*(a1 + 80) isCommittingToContinuousDocument] & 1) != 0 || (v21 = *(a1 + 936), objc_msgSend(*(a1 + 184), "webView"), v22 = objc_claimAutoreleasedReturnValue(), v22, v21 == v22))
  {
    v20[2](v20);
    [a1 updateExposedScrollViewRect];
    [(BrowserController *)a1 _updateContinuousReadingViewControllerFrame];
  }

  else
  {
    [*(a1 + 936) _resizeWhileHidingContentWithUpdates:v20];
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

- (void)setWebViewFromTabDocument:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v5 = v3;
    v4 = [v3 webView];
    if (v4 != a1[117])
    {
      [a1 setShowingCrashBanner:0 animated:0];
      [(BrowserController *)a1 setWebView:v4];
    }

    v3 = v5;
  }
}

- (void)updateInsetsForBackgroundWebView:(id)a3
{
  v6 = a3;
  v4 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [v4 view];
  [v5 applyGeometryToWebView:v6];
}

- (double)browserViewController:(id)a3 adjustedTopObscuredInsetForBanners:(double)a4
{
  if (![(ContinuousReadingViewController *)self->_continuousReadingViewController isCommittingToContinuousDocument])
  {
    [(_SFWebView *)self->_webView bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(BrowserController *)&self->super.super.super.isa _topContinuousReadingBanner];
    v16 = v15;
    if (v15)
    {
      webView = self->_webView;
      [v15 bounds];
      [(_SFWebView *)webView convertRect:v16 fromView:?];
      MaxY = CGRectGetMaxY(v27);
      v28.origin.x = v8;
      v28.origin.y = v10;
      v28.size.width = v12;
      v28.size.height = v14;
      v19 = MaxY - CGRectGetMinY(v28);
      if (v19 <= a4)
      {
        v20 = a4;
      }

      else
      {
        v20 = v19;
      }

      a4 = v20;
    }

    v21 = [(BannerController *)self->_bannerController topBanners];
    v22 = [v21 lastObject];

    if (v22)
    {
      v23 = self->_webView;
      [v22 bounds];
      [(_SFWebView *)v23 convertRect:v22 fromView:?];
      v24 = CGRectGetMaxY(v29);
      v30.origin.x = v8;
      v30.origin.y = v10;
      v30.size.width = v12;
      v30.size.height = v14;
      v25 = v24 - CGRectGetMinY(v30);
      if (v25 <= a4)
      {
        v26 = a4;
      }

      else
      {
        v26 = v25;
      }

      a4 = v26;
    }

    if ([(BrowserController *)self _obscuredInsetsIncludeRefreshControl])
    {
      a4 = a4 + [(BrowserController *)self _refreshControlHeight];
    }
  }

  return a4;
}

- (void)dynamicBarAnimatorWillEnterSteadyState:(id)a3
{
  [(_SFWebView *)self->_webView _endInteractiveObscuredInsetsChange];
  self->_interactivelyChangingObscuredInsets = 0;
  v4 = [(TabController *)self->_tabController activeTabDocument];
  [v4 webViewDidChangeSize];

  animationPendingDynamicBarAnimatorSteadyState = self->_animationPendingDynamicBarAnimatorSteadyState;
  if (animationPendingDynamicBarAnimatorSteadyState)
  {
    animationPendingDynamicBarAnimatorSteadyState[2]();
    v6 = self->_animationPendingDynamicBarAnimatorSteadyState;
    self->_animationPendingDynamicBarAnimatorSteadyState = 0;
  }
}

- (void)dynamicBarAnimatorStateDidChange:(id)a3
{
  v4 = a3;
  if (-[BrowserRootViewController keepBarsMinimized](self->_rootViewController, "keepBarsMinimized") && [v4 state] == 1 && !-[BrowserRootViewController isPerformingSizeTransition](self->_rootViewController, "isPerformingSizeTransition"))
  {
    [(BrowserRootViewController *)self->_rootViewController setKeepBarsMinimized:0];
    [(BrowserRootViewController *)self->_rootViewController updateWebViewSizeAttributes];
  }
}

- (void)document:(id)a3 willMakeReaderVisible:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  v6 = [(TabController *)self->_tabController activeTabDocument];

  v7 = v13;
  if (v6 == v13)
  {
    if (v4)
    {
      [v13 readerWebView];
    }

    else
    {
      [v13 webView];
    }
    v8 = ;
    [(BrowserController *)self setWebView:v8];
    if (!v4 && ![(BrowserRootViewController *)self->_rootViewController keepBarsMinimized]&& ![(BrowserRootViewController *)self->_rootViewController isInYttriumState])
    {
      v9 = [(BrowserRootViewController *)self->_rootViewController dynamicBarAnimator];
      [v9 attemptTransitionToState:1 animated:0];
    }

    v10 = [(ContinuousReadingViewController *)self->_continuousReadingViewController previewView];
    [v10 removeFromSuperview];
    [(UIScrollView *)self->_scrollView addSubview:v10];
    v11 = [(ContinuousReadingViewController *)self->_continuousReadingViewController previousItemPreviewView];
    [v11 removeFromSuperview];
    [(UIScrollView *)self->_scrollView addSubview:v11];
    v12 = [(BrowserController *)self _visibleAppBanner];
    [v12 removeFromSuperview];
    [(BrowserController *)self _setShowingAppBanner:v12 isShowing:1];

    v7 = v13;
  }
}

- (BOOL)shouldDeferHistoryUpdatesForWKWebView:(id)a3
{
  v4 = a3;
  v5 = [(TabDocument *)self->_speculativeLoadDocument webView];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(TabDocument *)self->_previewDocument webView];
    v7 = v6 == v4;
  }

  return v7;
}

- (double)_verticalOffsetForContinuousReadingBanner
{
  v37 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0.0;
  }

  v2 = [*(a1 + 80) topBannerView];
  v3 = v2;
  if (v2)
  {
    [v2 frame];
    v5 = v4;
    v6 = [*(a1 + 784) topBannersSeparableFromStatusBar];
    if ([v6 count])
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v7 = v6;
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
      v13 = *(a1 + 264);
      v14 = [v13 documentAndTopBarsContainerView];
      [v13 navigationBarFrameInCoordinateSpace:v14];
      MaxY = CGRectGetMaxY(v39);

      v16 = [(BrowserController *)a1 additionalContentHeightForBanners];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v17 = [*(a1 + 784) topBannersAnchoredToStatusBar];
      v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
      v19 = MaxY + v16;
      if (v18)
      {
        v20 = *v28;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [*(*(&v27 + 1) + 8 * j) bounds];
            v19 = v19 + CGRectGetHeight(v40);
          }

          v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v18);
      }

      v22 = *(a1 + 288);
      v23 = [*(a1 + 264) documentAndTopBarsContainerView];
      [v22 convertPoint:v23 fromView:{0.0, v19}];
      v25 = v24;

      if (v25 >= 0.0 || ([*(a1 + 80) isUserInteractingWithContainer] & 1) != 0)
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

- (uint64_t)_setShowingOverlayForBanner:(int)a3 showing:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 overlayProvider];
    v8 = [v7 isAvailable];
    if (v8)
    {
      if (a3)
      {
        v9 = [v7 overlayViewController];
        v10 = [v9 view];

        v11 = [v10 superview];
        v12 = *(a1 + 288);

        if (v11 != v12)
        {
          v13 = [*(a1 + 264) hostViewControllerForOverlay];
          [v7 setDelegate:a1];
          [v7 showOverlayInScrollView:*(a1 + 288) viewController:v13];
          [(BrowserController *)a1 _updateAppInfoOverlayFrame];
        }
      }

      else
      {
        [v7 hideOverlayAnimated:0];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isShowingAppInfoOverlay
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  v4 = [v3 appBanner];
  v5 = [v4 overlayProvider];
  if ([v5 isAvailable])
  {
    v6 = [v5 overlayViewController];
    v7 = [v6 view];

    if (v7)
    {
      v8 = [v7 superview];
      v9 = v8 == self->_scrollView;
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

- (void)_setShowingPrivateBrowsingPrivacyProtectionsBanner:(int)a3 isShowing:
{
  v6 = a2;
  if (a1)
  {
    [(BrowserController *)a1 _updateNavigationBarSeparator];
    if (v6)
    {
      if (a3)
      {
        v5 = v6;
      }

      else
      {
        v5 = 0;
      }

      [*(a1 + 784) setPrivateBrowsingPrivacyProtectionsBanner:v5 animated:0];
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

- (void)_beganSharingTabGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BrowserController__beganSharingTabGroup___block_invoke;
  v7[3] = &unk_2781D61F8;
  v8 = v5;
  v9 = self;
  v6 = v5;
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

- (void)shareDidUpdateForTabGroupWithUUID:(id)a3
{
  v4 = a3;
  [(TabController *)self->_tabController clearCachedTabSwitcherShareConfigurationForTabGroupWithUUID:v4];
  v5 = [(TabController *)self->_tabController activeTabGroup];
  v6 = [v5 uuid];
  v7 = [v6 isEqualToString:v4];

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

- (id)linkPreviewViewControllerForNavigationIntent:(id)a3
{
  v4 = [a3 URL];
  v5 = [(BrowserController *)self linkPreviewViewControllerForURL:v4];

  return v5;
}

- (id)linkPreviewViewControllerForURL:(id)a3
{
  v4 = a3;
  v5 = [(TabController *)self->_tabController activeTabDocument];
  v6 = [v5 previewViewControllerForURL:v4];

  return v6;
}

- (void)commitLinkPreviewViewController:(id)a3
{
  v5 = a3;
  v4 = [(TabController *)self->_tabController activeTabDocument];
  [v4 commitPreviewViewController:v5];
}

- (void)linkPreviewProviderWillDismissPreview
{
  v2 = [(TabController *)self->_tabController activeTabDocument];
  [v2 willDismissLinkPreviewViewController];
}

- (void)browserViewControllerDidChangeBarInsets:(id)a3
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

- (void)browserViewController:(id)a3 traitCollectionDidChange:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 userInterfaceStyle];
  v9 = [v6 traitCollection];
  v10 = [v9 userInterfaceStyle];

  if (v8 != v10)
  {
    [(TabCollectionViewProviding *)self->_tabCollectionViewProvider setSnapshotInvalidationIsPostponed:1];
    [(BrowserController *)self _updateConfiguration];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [(TabController *)self->_tabController normalAndPrivateTabs];
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v11);
          }

          [*(*(&v20 + 1) + 8 * v14++) updateUsesDarkTheme];
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [(TabCollectionViewProviding *)self->_tabCollectionViewProvider flushPendingSnapshotsWithCompletion:&__block_literal_global_1013];
    [(TabCollectionViewProviding *)self->_tabCollectionViewProvider setSnapshotInvalidationIsPostponed:0];
  }

  v15 = [v7 preferredContentSizeCategory];
  v16 = [v6 traitCollection];
  v17 = [v16 preferredContentSizeCategory];
  v18 = UIContentSizeCategoryCompareToCategory(v15, v17) == NSOrderedSame;

  if (!v18)
  {
    v19 = [(BrowserController *)self _visibleAppBanner];
    [v19 invalidateBannerLayout];
    [v19 contentSizeCategoryDidChange];
    [(BrowserController *)self _updateAppInfoOverlayFrame];
  }
}

- (BOOL)browserViewControllerShouldTemporarilyHideBottomToolbar:(id)a3
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

- (int64_t)browserViewController:(id)a3 toolbarPlacementForViewSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
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

- (void)browserViewController:(id)a3 didCreateNavigationBar:(id)a4
{
  v7 = a4;
  v5 = [(TabController *)self->_tabController activeTabDocument];
  v6 = [v5 navigationBarItem];
  [v7 setItem:v6];
}

- (void)browserViewControllerDidChangeToolbarPlacement:(id)a3
{
  [(_SFBarManager *)self->_barManager visibleBarItemsNeedUpdate];
  [(BrowserController *)&self->super.super.super.isa _updateTabGroupBanner];

  [(BrowserController *)self updateTabOverviewButton];
}

- (void)browserViewControllerDidLayOutSubviews:(id)a3
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

  v12 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  v13 = [v12 popoverIsShowing];

  if (v13)
  {
    v14 = *(MEMORY[0x277CBF398] + 16);
    v19 = *MEMORY[0x277CBF398];
    v20 = v14;
    v15 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
    v18 = 0;
    [(BrowserController *)self catalogViewController:v15 willRepositionPopoverToRect:&v19 inView:&v18];
    v16 = v18;
    v17 = [v15 popoverPresentationController];
    [v17 setSourceView:v16];
    [v17 setSourceRect:{v19, v20}];
  }
}

- (int64_t)browserViewController:(id)a3 sidebarStyleForViewSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(BrowserController *)self bookmarksPresentationStyleForViewOfSize:width, height];
  if (v8)
  {
    v9 = v8 != 2;
  }

  else
  {
    v9 = [v7 sidebarStyle];
  }

  return v9;
}

- (void)browserViewController:(id)a3 didChangeShowingSidebar:(BOOL)a4
{
  [(_SFBarManager *)self->_barManager setBarItem:3 selected:a4];

  [(BrowserController *)self updateTabGroupButtonsVisibility];
}

- (void)browserViewController:(id)a3 didChangeSidebarStyle:(int64_t)a4
{
  [(LibraryController *)self->_libraryController browserViewControllerDidChangeSidebarStyle:a3];

  [(BrowserController *)self updateTabGroupButtonsVisibility];
}

- (id)sidebarContentViewControllerForSidebarUIProxy:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D49A08] isEnhancedVerticalTabsEnabled])
  {
    libraryController = self->_libraryController;
    if (!libraryController)
    {
      v6 = [LibraryContentController alloc];
      v7 = [(BrowserController *)&self->super.super.super.isa _libraryConfiguration];
      v8 = [(LibraryContentController *)v6 initWithConfiguration:v7];

      [(LibraryController *)v8 setSidebarUIProxy:v4];
      objc_storeStrong(&self->_libraryController, v8);
      [(TabCollectionViewProviding *)self->_tabCollectionViewProvider registerLibraryController:v8];

      libraryController = self->_libraryController;
    }

    v9 = [(LibraryController *)libraryController viewController];
  }

  else
  {
    v10 = objc_alloc_init(LibraryViewController);
    v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
    [v9 _setClipUnderlapWhileTransitioning:1];
    [(LibraryController *)self->_libraryController setSidebarViewController:v10];
  }

  return v9;
}

- (void)addBookmarkNavController:(id)a3 didFinishWithResult:(BOOL)a4 bookmark:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 presentingViewController];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;

  [v13 dismissViewControllerAnimated:1 completion:0];
  if (a4)
  {
    v14 = [v8 addBookmarkAnalyticsHandler];
    v15 = v14;
    if (v14)
    {
      (*(v14 + 16))(v14);
    }

    v16 = MEMORY[0x277D4A7A0];
    webView = self->_webView;
    v18 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__BrowserController_addBookmarkNavController_didFinishWithResult_bookmark___block_invoke;
    v19[3] = &unk_2781D6B10;
    v20 = v9;
    [v16 saveLeadImageFromWebView:webView toLeadImageCacheRegisteredWithMetadataManager:v18 completionHandler:v19];
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

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [a3 presentedViewController];
  modalBookmarksController = self->_modalBookmarksController;

  if (v4 == modalBookmarksController)
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

- (void)presentPromptForAppReviewPromptManager:(id)a3
{
  v5 = +[AppStoreReviewController sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  [v5 showAppReviewPromptInSceneIfNeeded:WeakRetained];
}

- (void)dismissCompletionDetail
{
  v3 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [v3 dismissCompletionDetailWindowAndResumeEditingIfNeeded:0 completionHandler:0];

  [(BrowserController *)self setFavoritesState:0];
}

- (void)completionDetailViewControllerDidDismiss:(id)a3
{
  v3 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [v3 dismissCompletionDetailWindowAndResumeEditingIfNeeded:1 completionHandler:0];
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
  v17 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [v17 synchronize];
  v3 = [v17 safari_warnAboutFraudulentWebsites];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(BrowserController *)self browserWindowController];
  v5 = [v4 browserControllers];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
        v9 = [v8 tabController];
        v10 = [v9 allTabDocuments];

        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(v10);
              }

              v14 = [*(*(&v20 + 1) + 8 * v13) webView];
              v15 = [v14 configuration];
              v16 = [v15 preferences];
              [v16 _setSafeBrowsingEnabled:v3];

              ++v13;
            }

            while (v11 != v13);
            v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v6);
      v5 = obj;
      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }
}

- (void)_setPresentingModalBookmarksController:(int)a3 exclusively:(void *)a4 importHandler:(void *)a5 withCollection:(void *)a6 bookmarkUUIDString:(uint64_t)a7 animated:(void *)a8 completion:
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (a1)
  {
    if ([a1 isPresentingModalBookmarksController] == a2 || objc_msgSend(a1[33], "isShowingDefaultBrowserSheet"))
    {
      if (v18)
      {
        v18[2](v18);
      }
    }

    else
    {
      v19 = a1[18];
      if (a2)
      {
        if (!v19)
        {
          v20 = [(BrowserController *)a1 _newModalBookmarksControllerWithCollection:v16 showsOnlyActiveCollection:v15 != 0];
          v21 = a1[18];
          a1[18] = v20;
        }

        if (v15)
        {
          a3 = 1;
        }

        if (a3 == 1 && v16)
        {
          [a1[18] setCurrentCollection:v16];
        }

        else if (v16)
        {
          [a1 setCurrentBookmarksCollection:v16];
        }

        [a1[18] setRootBookmarkUUIDString:v17];
        [a1[18] setImportHandler:v15];
        [a1[18] setPrefersHalfHeightSheetPresentationWithLoweredBar:a3 ^ 1u];
        v25 = [a1[18] presentationController];
        [v25 setDelegate:a1];

        [(BrowserController *)a1 _presentModalViewController:3 fromBarItem:a7 animated:v18 completion:?];
      }

      else
      {
        v22 = v19;
        v23 = a1[18];
        a1[18] = 0;

        if (([v22 isBeingDismissed] & 1) == 0)
        {
          v24 = [v22 presentedViewController];
          if (v24)
          {
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __140__BrowserController__setPresentingModalBookmarksController_exclusively_importHandler_withCollection_bookmarkUUIDString_animated_completion___block_invoke;
            v26[3] = &unk_2781D6B88;
            v27 = v22;
            v29 = a7;
            v28 = v18;
            [v24 dismissViewControllerAnimated:0 completion:v26];
          }

          else
          {
            [v22 dismissViewControllerAnimated:a7 completion:v18];
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

- (void)_presentModalViewController:(uint64_t)a3 fromBarItem:(uint64_t)a4 animated:(void *)a5 completion:
{
  v11 = a2;
  v9 = a5;
  if (a1)
  {
    if (*MEMORY[0x277D291C0] == a3 || a3 == 11 && ![a1 hasDedicatedDownloadsToolbarItem])
    {
      v10 = 0;
    }

    else
    {
      v10 = [[BarPopoverSourceInfo alloc] initWithBrowserController:a1 barItem:a3];
    }

    [(BrowserController *)a1 _presentModalViewController:v11 fromPopoverSource:v10 useAdaptivePresentationInCompact:a3 != 11 animated:a4 completion:v9];
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

- (void)_setSheetPresentationIfNeededForController:(uint64_t)a1
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1 && (_SFDeviceIsPad() & 1) == 0 && (SFDeviceIsAlwaysReachable() & 1) == 0)
  {
    v4 = [*(a1 + 264) capsuleCollectionViewLayout];
    v5 = v4;
    if (v4 && [v4 integerValue] != 2 && objc_msgSend(v3, "safari_prefersHalfHeightSheetPresentationWithLoweredBar"))
    {
      v6 = [v3 presentationController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [MEMORY[0x277D75A28] mediumDetent];
        v11[0] = v8;
        v9 = [MEMORY[0x277D75A28] largeDetent];
        v11[1] = v9;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
        [v7 setDetents:v10];
      }
    }
  }
}

- (BookmarksNavigationController)_newModalBookmarksControllerWithCollection:(uint64_t)a3 showsOnlyActiveCollection:
{
  v5 = a2;
  if (a1)
  {
    if ((a3 & 1) != 0 || ![MEMORY[0x277D49A08] isSaveForLaterEnabled])
    {
      v8 = [[BookmarksNavigationController alloc] initWithBookmarksDelegate:a1 linkPreviewProvider:a1 collection:v5 showsOnlyActiveCollection:a3];
      [(BookmarksNavigationController *)v8 setNavigationIntentHandler:a1];
    }

    else
    {
      v6 = [BookmarksViewController alloc];
      v7 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      v8 = [(BookmarksViewController *)v6 initWithBookmarkCollection:v7 focusedCollectionType:v5];

      [(BookmarksNavigationController *)v8 setBookmarksNavigationControllerDelegate:a1];
      [(BookmarksNavigationController *)v8 setLinkPreviewProvider:a1];
      [(BookmarksNavigationController *)v8 setNavigationIntentHandler:a1];
      v9 = [a1 tabGroupProvider];
      [(BookmarksNavigationController *)v8 setTabGroupProvider:v9];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)showBookmarksPanelWithNonAnimatedTransitionWithCollection:(id)a3
{
  v5 = a3;
  v4 = [(BrowserController *)self _bookmarksPresentationStyle];
  if ((v4 - 1) >= 2)
  {
    if (!v4)
    {
      [(BrowserController *)self setPresentingModalBookmarksController:1 withExclusiveCollection:v5 bookmarkUUIDString:0 animated:0];
    }
  }

  else
  {
    [(SidebarUIProxy *)self->_sidebarUIProxy setShowingSidebar:1 completion:0];
  }
}

- (void)makeSpaceForTabWithPrivateBrowsing:(BOOL)a3 resultHandler:(id)a4
{
  v4 = a3;
  v8 = a4;
  if ([(TabController *)self->_tabController canAddNewTabForPrivateBrowsing:v4])
  {
    v8[2](v8, 1);
  }

  else
  {
    v6 = [[TabLimitCleanupWizard alloc] initForPrivateBrowsing:v4 withBrowserController:self resultHandler:v8];
    v7 = [v6 makeViewController];
    [(BrowserController *)self _presentModalViewController:v7 fromBarItem:7 completion:0];
  }
}

- (void)barManager:(id)a3 didReceiveTapForBarItem:(int64_t)a4
{
  v6 = [(BrowserController *)self tabBarManager];
  [v6 setActiveItemIsExpanded:0 animated:objc_msgSend(v6 completionHandler:{"displayMode") != 2, 0}];
  if (a4 != 12)
  {
    if (a4 == 13)
    {
      v7 = 6;
    }

    else
    {
      v7 = 2;
    }

    [(BrowserController *)self _dismissTransientUIAnimated:v7 dismissalOptions:0 completionHandler:?];
  }

  v8 = [(BrowserRootViewController *)self->_rootViewController primaryNavigationBar];
  switch(a4)
  {
    case 0:
      [(BrowserController *)&self->super.super.super.isa _goBackAllowingNewTabToSpawnIfNeeded:?];
      v15 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v15, OS_LOG_TYPE_DEFAULT, "Tap back button from the toolbar", buf, 2u);
      }

      v10 = [MEMORY[0x277D499B8] sharedLogger];
      [v10 reportIOSToolbarButtonUsage:0 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
      goto LABEL_31;
    case 1:
      [(BrowserController *)&self->super.super.super.isa _goForwardAllowingNewTabToSpawnIfNeeded:?];
      v18 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_DEFAULT, "Tap forward button from the toolbar", buf, 2u);
      }

      v10 = [MEMORY[0x277D499B8] sharedLogger];
      [v10 reportIOSToolbarButtonUsage:1 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
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

      v10 = [MEMORY[0x277D499B8] sharedLogger];
      [v10 reportIOSToolbarButtonUsage:33 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
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
      v12 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
      [v12 presentAnimated:1];

      v13 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "Tap tab expose button from the toolbar", buf, 2u);
      }

      v14 = [MEMORY[0x277D499B8] sharedLogger];
      [v14 didEnterTabViewWithMethod:0];

      v10 = [MEMORY[0x277D499B8] sharedLogger];
      [v10 reportIOSToolbarButtonUsage:8 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
      goto LABEL_31;
    case 11:
      v9 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Tap downloads button from the toolbar", buf, 2u);
      }

      [(BrowserController *)self presentDownloadsViewController];
      v10 = [MEMORY[0x277D499B8] sharedLogger];
      [v10 reportIOSToolbarButtonUsage:21 withLayout:{-[BrowserController analyticsLayoutProvenance](self, "analyticsLayoutProvenance")}];
LABEL_31:

      break;
    case 12:
      [(BrowserController *)self navigationBarCancelButtonWasTapped:0];
      break;
    case 13:
      [(BrowserController *)self navigationBarFormatMenuButtonWasTapped:v8];
      break;
    case 14:
      [(BrowserController *)self navigationBarStopLoadingButtonWasTapped:v8];
      break;
    case 15:
      [(BrowserController *)self navigationBarReloadButtonWasTapped:v8];
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

- (void)barManager:(id)a3 didReceiveTouchDownForBarItem:(int64_t)a4
{
  if ((a4 | 8) == 0xD)
  {
    v5 = [(TabController *)self->_tabController activeTabDocument];
    v4 = [v5 readerContext];
    [v4 checkReaderAvailability];
  }
}

- (void)barManager:(id)a3 didReceiveLongPressForBarItem:(int64_t)a4
{
  [(BrowserController *)self _dismissTransientUIAnimated:4 * (a4 == 13) dismissalOptions:0 completionHandler:?];
  if (a4 == 13)
  {
    v7 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
    v6 = [v7 selectedItemNavigationBar];
    [(BrowserController *)self navigationBarReaderButtonWasTapped:v6];
  }

  else if (a4 == 5)
  {

    [(BrowserController *)self _readerButtonTapped];
  }
}

- (void)barManager:(id)a3 willRegisterBarWithToken:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
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
    v9 = [v5 UIBarButtonItemForItem:3];
    [v9 setSpringLoaded:1];

    v10 = [v5 UIBarButtonItemForItem:7];
    [v10 _setInteractions:v8];
LABEL_11:

    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v5 viewForBarItem:3];
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
          v16 = [v5 viewForBarItem:{7, v17}];
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

- (id)barManager:(id)a3 visibleBarItemsForLayout:(int64_t)a4 availableItems:(id)a5
{
  v7 = a5;
  if ([(BrowserRootViewController *)self->_rootViewController toolbarPlacement]== 1)
  {
    if (a4 == 1)
    {
      v8 = [MEMORY[0x277CBEB98] setWithObject:&unk_2827FBEF0];
    }

    else
    {
      if (a4)
      {
        goto LABEL_7;
      }

      v8 = [MEMORY[0x277CBEB98] set];
    }

    v9 = v8;

    v7 = v9;
  }

LABEL_7:

  return v7;
}

- (void)_didDismissManageExtensionsViewController:(id)a3
{
  v9 = [a3 object];
  v4 = [v9 presentingPageFormatMenu];
  v5 = +[Application sharedApplication];
  if ([v5 isPrivateBrowsingLocked])
  {
    v6 = [(_SFPageFormatMenuController *)v4 browserContentController];
    v7 = [v6 activeDocument];
    v8 = [v7 isPrivateBrowsingEnabled];
  }

  else
  {
    v8 = 0;
  }

  if ((v8 & 1) == 0 && v4 && v4 == self->_pageFormatMenuController)
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
  v3 = [(BrowserController *)self _bookmarksPresentationStyle];
  if ((v3 - 1) >= 2)
  {
    if (!v3)
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

- (void)openBookmark:(id)a3
{
  v14 = [a3 propertyList];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v12 = [v14 integerValue];
    v13 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v4 = [v13 bookmarkWithID:v12];

    v7 = [MEMORY[0x277D28F40] builder];
    v8 = [v7 navigationIntentWithBookmark:v4];
    [(BrowserController *)self dispatchNavigationIntent:v8];
    goto LABEL_6;
  }

  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v14];
  v5 = [MEMORY[0x277D28CD8] sharedController];
  v6 = [v5 topLevelManagedBookmarkFolder];
  v7 = [v6 findChildBookmarkWithUUID:v4];

  if (v7)
  {
    v8 = [MEMORY[0x277D28F40] builder];
    v9 = [v7 allDescendantsAsWebBookmarks];
    v10 = [v9 firstObject];
    v11 = [v8 navigationIntentWithBookmark:v10];

    [(BrowserController *)self dispatchNavigationIntent:v11];
LABEL_6:
  }

LABEL_8:
}

- (void)openHistoryURL:(id)a3
{
  v11 = a3;
  v4 = [v11 propertyList];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [MEMORY[0x277D28F40] builder];
    v7 = MEMORY[0x277CBEBC0];
    v8 = [v11 propertyList];
    v9 = [v7 URLWithString:v8];
    v10 = [v6 navigationIntentWithHistoryURL:v9];

    [(BrowserController *)self dispatchNavigationIntent:v10];
  }
}

- (void)openRecentlyClosedTab:(id)a3
{
  v12 = a3;
  v4 = [v12 propertyList];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D28FA8]];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = [v12 propertyList];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D28FB0]];
  v10 = [v7 initWithUUIDString:v9];

  v11 = [(BrowserController *)self tabController];
  [v11 openRecentlyClosedTabWithUUID:v10 inTabGroupWithUUID:v6];
}

- (void)_prepareToPresentActivityViewController
{
  if (a1)
  {
    v2 = [a1 tabController];
    v3 = [v2 activeTabDocument];

    *(a1 + 115) = 0;
    *(a1 + 113) = 0;
    [*(a1 + 216) _cancel];
    v4 = [[ActionPanel alloc] initWithTabDocument:v3 activityDelegate:a1 menuStyle:0];
    v5 = *(a1 + 216);
    *(a1 + 216) = v4;

    [*(a1 + 216) setDelegate:a1];
    objc_initWeak(&location, *(a1 + 216));
    objc_initWeak(&from, a1);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__BrowserController__prepareToPresentActivityViewController__block_invoke;
    v6[3] = &unk_2781D6C28;
    objc_copyWeak(&v7, &from);
    objc_copyWeak(&v8, &location);
    [v3 fetchCanonicalURLWithCompletionHandler:v6];
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
  if (a1 && *(a1 + 216) && *(a1 + 115) == 1 && *(a1 + 113) == 1)
  {
    v2 = [a1 tabController];
    v3 = [v2 activeTabDocument];
    [v3 hideFindOnPage];

    [a1 setCanFocusNavigationBarURL:0];
    v4 = *(a1 + 216);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__BrowserController__presentActionPanelIfReady__block_invoke;
    v9[3] = &unk_2781D60B8;
    v9[4] = a1;
    [a1 _presentModalViewController:v4 fromBarItem:6 completion:v9];
    objc_storeWeak((a1 + 176), *(a1 + 216));
    v5 = *(a1 + 216);
    *(a1 + 216) = 0;

    *(a1 + 115) = 0;
    *(a1 + 113) = 0;
    v6 = [a1 tabController];
    v7 = [v6 activeTabDocument];

    v8 = [v7 webExtensionsController];
    [v8 didViewToolbarItemBadgesInTab:v7];
  }
}

- (id)activityItemsConfiguration
{
  v3 = objc_opt_new();
  v4 = [(TabController *)self->_tabController activeTabGroupOrTabGroupVisibleInSwitcher];
  if ([v4 isNamed] && (-[TabController shareRecordForActiveTabGroupIfIsShared](self->_tabController, "shareRecordForActiveTabGroupIfIsShared"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_alloc(MEMORY[0x277D28D78]), -[BrowserController tabGroupManager](self, "tabGroupManager"), v7 = objc_claimAutoreleasedReturnValue(), -[TabController iconForSharingActiveTabGroup](self->_tabController, "iconForSharingActiveTabGroup"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "initWithTabGroup:inTabGroupManager:existingShare:icon:", v4, v7, v5, v8), v8, v7, v5, v9) || (v9 = 0, v10 = 0, objc_msgSend(v3, "count")))
  {
    v10 = [[ActivityItemConfiguration alloc] initWithInnerItemConfigurationProvider:v9 additionalItemProviders:v3];
  }

  return v10;
}

- (id)newCollaborationButton
{
  v3 = [(TabController *)self->_tabController activeTabGroupOrTabGroupVisibleInSwitcher];
  v4 = [(TabController *)self->_tabController shareRecordForActiveTabGroupIfIsShared];
  v5 = [(BrowserController *)self newCollaborationButtonWithActiveTabGroup:v3 existingShare:v4];

  return v5;
}

- (id)newCollaborationButtonWithActiveTabGroup:(id)a3 existingShare:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(BrowserController *)self tabGroupManager];
    v9 = objc_alloc(MEMORY[0x277D28D78]);
    v10 = [(TabController *)self->_tabController iconForSharingTabGroup:v6];
    v11 = [v9 initWithTabGroup:v6 inTabGroupManager:v8 existingShare:v7 icon:v10];

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
    v15 = [v11 itemProvider];
    v16 = [v14 initWithItemProvider:v15];

    [(BrowserController *)&self->super.super.super.isa _updateParticipantsListForCollaborationButton:v16 contacts:MEMORY[0x277CBEBF8]];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__BrowserController_newCollaborationButtonWithActiveTabGroup_existingShare___block_invoke;
    v19[3] = &unk_2781D6C50;
    v19[4] = self;
    v17 = v16;
    v20 = v17;
    [v8 getActiveParticipantsInTabGroup:v6 completionHandler:v19];
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

- (id)_participantsListForCollaborationView:(id *)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1)
  {
    if (v3)
    {
      v5 = [a1[67] objectForKey:v3];
      if (!v5)
      {
        v6 = [a1[41] activeTabGroup];
        v7 = objc_alloc(MEMORY[0x277D28C98]);
        v5 = [v7 initWithContacts:MEMORY[0x277CBEBF8]];
        [a1[67] setObject:v5 forKey:v4];
        objc_initWeak(&location, a1);
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
        v8 = v6;
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
  v3 = [(BannerController *)self->_bannerController tabGroupBanner];
  [v3 setCollaborationButton:0];
}

- (void)presentAutomaticTabClosingAlertController
{
  v3 = MEMORY[0x277D75110];
  v4 = _WBSLocalizedString();
  v5 = _WBSLocalizedString();
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:_SFDeviceAlertStyle()];

  v7 = [v6 view];
  [v7 setAccessibilityIdentifier:@"AutomaticallyCloseTabsSheet"];

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

  v14 = [(BrowserController *)self viewControllerToPresentFrom];
  [v14 presentViewController:v6 animated:1 completion:0];
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

- (void)_addBookmarkForCurrentTabKeyPressed:(void *)a3 title:
{
  v5 = a3;
  if (a1)
  {
    [(BrowserController *)a1 _addBookmarkForCurrentTabKeyPressed:a2 title:v5 addToFavorites:0];
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
  v3 = [(TabController *)self->_tabController currentTabs];
  [(BrowserController *)self addBookmarkFolderForTabs:?];
}

- (void)fastAddBookmark
{
  if (![(BrowserController *)self showDemoModeFeatureDisabledAlert])
  {
    v3 = [(TabController *)self->_tabController activeTabDocument];
    [(BrowserController *)self fastAddBookmarkForTabDocument:?];
  }
}

- (void)fastAddBookmarkForTabDocument:(id)a3
{
  v4 = a3;
  v5 = [v4 makeBookmark];
  if (v5)
  {
    v6 = +[FolderSuggestionManager sharedManager];
    v7 = [v6 suggestedFolderDestinations];

    if ([v7 count])
    {
      v8 = [v7 firstObject];
      v9 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      v10 = [v9 readingListFolder];

      if (v8 == v10)
      {
        [v5 migrateToReadingListItem];
      }

      v11 = objc_alloc(MEMORY[0x277CDB6C8]);
      v12 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      v13 = [v11 initWithCollection:v12 syntheticBookmarkProvider:0];

      v14 = [v7 firstObject];
      v15 = [v13 saveBookmark:v5 inFolder:v14];

      v16 = +[ReadingListMetadataFetcher sharedMetadataFetcher];
      if ([v4 hasDoneReaderDetection])
      {
        v17 = v4;
      }

      else
      {
        v17 = 0;
      }

      [v16 fetchMetadataForReadingListBookmark:v5 withProvider:v17];
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
        v25 = v5;
        v26 = v7;
        [WeakRetained browserController:self animateSafariIconLinkFromPoint:webView inView:v24 withCompletionHandler:{v20, v22}];
      }
    }
  }
}

- (void)addBookmarkFolderForTabs:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v27 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v26 = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v25;
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
          v10 = [v7 uuid];
          v11 = [v9 initWithUUIDString:v10];
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
          v17 = [v7 titleForNewBookmark];
          v18 = [v7 addressForNewBookmark];
          v19 = [v27 configuration];
          v20 = [v16 initWithTitle:v17 address:v18 collectionType:{objc_msgSend(v19, "collectionType")}];

          [v26 addObject:v20];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v4);
  }

  v21 = [objc_alloc(MEMORY[0x277CDB8C8]) initWithFolderOfBookmarks:v26 inCollection:v27];
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
    v23 = [(BrowserController *)self viewControllerToPresentFrom];
    [v22 showLockedDatabaseAlertForAction:1 fromViewController:v23];

    v24 = [MEMORY[0x277D499B8] sharedLogger];
    [v24 didPreventBookmarkActionWithBookmarkType:0 actionType:0];

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
    v6 = [(BrowserController *)self tabBarManager];
    v7 = [v6 inlineTabBar];
    v8 = [v7 usesMoreMenu];

    if (v8)
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

- (void)presentPrintControllerForTabDocument:(id)a3 frame:(id)a4 initiatedByWebContent:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v8 = a4;
  if (self->_speculativeLoadDocument == v10)
  {
    [(BrowserController *)self clearSpeculativeLoadDocument];
  }

  else if ([(BrowserController *)self isContinuousReadingDocument:?])
  {
    [(BrowserController *)self clearDocumentForContinuousReading:v10];
  }

  else if (-[BrowserController _canPrintForTabDocument:](self, v10) && -[BrowserController _canUpdateInterfaceWithTabDocument:](self, v10) && !-[TabDocument isShowingFindOnPage](v10, "isShowingFindOnPage") && [MEMORY[0x277D41248] isPrintingAvailable])
  {
    v9 = [(TabDocument *)v10 printController];
    [v9 printFrame:v8 initiatedByWebContent:v5 completion:&__block_literal_global_1098];
  }
}

- (uint64_t)_canUpdateInterfaceWithTabDocument:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 904));
    v5 = [WeakRetained activationState];

    if (v5)
    {
      a1 = 0;
    }

    else
    {
      v6 = [*(a1 + 328) activeTabDocument];
      a1 = v6 == v3;
    }
  }

  return a1;
}

void __86__BrowserController_presentPrintControllerForTabDocument_frame_initiatedByWebContent___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v2 = [MEMORY[0x277D499B8] sharedLogger];
    [v2 didPrintPage];
  }
}

- (void)dispatchNavigationIntent:(id)a3
{
  v8 = a3;
  v4 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [v4 uuid];
  [v8 setSourceTabUUID:v5];

  v6 = [(BrowserController *)self UUID];
  [v8 setSourceWindowUUID:v6];

  v7 = +[Application sharedApplication];
  [v7 handleNavigationIntent:v8 completion:0];
}

- (void)handleNavigationIntent:(id)a3 completion:(id)a4
{
  v130 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v83 = a4;
  v7 = WBS_LOG_CHANNEL_PREFIXPageLoading();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [v6 privacyPreservingDescription];
    objc_claimAutoreleasedReturnValue();
    [BrowserController handleNavigationIntent:completion:];
  }

  if ([v6 policy] == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserControllerWillCreateBackgroundTab:self];
    }
  }

  if ([v6 provenance] == 1)
  {
    if ([v6 type] == 5)
    {
      v9 = 0;
    }

    else if ([v6 type] != 4 || (objc_msgSend(v6, "text"), v10 = objc_claimAutoreleasedReturnValue(), v11 = WBSUnifiedFieldInputTypeForString(), v10, v9 = 0, v11) && v11 != 3)
    {
      v12 = [v6 URL];
      v13 = v12;
      if (v12)
      {
        v9 = v12;
      }

      else
      {
        v14 = [v6 text];
        v9 = [v14 safari_bestURLForUserTypedString];
      }
    }

    [(BrowserController *)self _recordIgnoredSiriSuggestedSitesWithURL:v9];
  }

  if (self->_allowsAutoDismissSidebar && [v6 shouldDismissSidebarOnLoad] && -[SidebarUIProxy isShowingSidebar](self->_sidebarUIProxy, "isShowingSidebar") && -[BrowserController isShowingStartPage](self, "isShowingStartPage"))
  {
    [(BrowserController *)self toggleBookmarksPresentationWithCollection:0 completion:?];
  }

  self->_allowsAutoDismissSidebar = 0;
  v15 = [(TabController *)self->_tabController activeTabDocument];
  v16 = v15;
  if ([v15 isPinned])
  {
    v16 = [(TabController *)self->_tabController singleUnpinnedBlankTab];
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
  v17 = v16;
  v117 = v17;
  v119 = v120;
  v18 = v15;
  v118 = v18;
  v19 = _Block_copy(aBlock);
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke_2;
  v110[3] = &unk_2781D6DA0;
  v20 = v19;
  v114 = v20;
  v21 = v6;
  v111 = v21;
  v115 = v120;
  v22 = v17;
  v112 = v22;
  v113 = self;
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
  v25 = v83;
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
      v30 = [(TabController *)self->_tabController tabDocumentForSpotlightSearch];
      if (v30)
      {
        v31 = v123[5];
        v123[5] = v30;
        v32 = v30;

        [(TabDocumentDropHandler *)v32 handleNavigationIntent:v28 completion:v86];
LABEL_71:

        goto LABEL_72;
      }
    }

    tabController = self->_tabController;
    v34 = [v28 URL];
    v32 = [(TabController *)tabController tabDocumentForURL:v34 forceUnhibernate:1];

    if (v32)
    {
      objc_storeStrong(v123 + 5, v32);
      [(TabDocumentDropHandler *)v32 unhibernate];
      [(TabDocumentDropHandler *)v32 handleNavigationIntent:v28 completion:v86];
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
      v40 = [(BrowserController *)self viewControllerToPresentFrom];
      v32 = [(TabDocumentDropHandler *)v39 initWithAlertPresentationViewController:v40];

      v41 = [v28 navigationIntents];
      v42 = [v41 count];
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke_10;
      v93[3] = &unk_2781D6C00;
      v94 = v85;
      v95 = v86;
      [(TabDocumentDropHandler *)v32 promptIfNeededToConfirmNumberOfNavigationIntents:v42 withCompletionHandler:v93];

      v43 = v94;
LABEL_70:

      goto LABEL_71;
    }

    v44 = [v28 policy];
    if (v44 > 4)
    {
      if (v44 != 5)
      {
        if (v44 != 6)
        {
          goto LABEL_72;
        }

        v32 = [v28 URL];
        if (!v32)
        {
          v67 = WBS_LOG_CHANNEL_PREFIXPageLoading();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            v68 = [v28 privacyPreservingDescription];
            *buf = 138543362;
            v129 = v68;
            _os_log_impl(&dword_215819000, v67, OS_LOG_TYPE_INFO, "Unable to download intent because there's no URL: %{public}@", buf, 0xCu);
          }

          (*(v86 + 2))(v86, 0);
          goto LABEL_71;
        }

        v80 = [(TabController *)self->_tabController activeTabDocument];
        v53 = [v80 isSearchPage];
        v54 = [(TabController *)self->_tabController activeTabDocument];
        [v54 setNextLoadComesFromSearchPage:v53];

        v55 = [(TabController *)self->_tabController activeTabDocument];
        v56 = [v28 sourceElementInfo];
        [v55 animateElementToDownloadsBarItemSoon:v56];

        v57 = [MEMORY[0x277CDB7A0] sharedDownloadDispatcher];
        v58 = [(TabController *)self->_tabController activeTabDocument];
        v59 = [v58 webView];
        v43 = [v57 startDownloadFromWebView:v59 URL:v32];

        v60 = [MEMORY[0x277CDB7A8] sharedManager];
        [v43 setDelegate:v60];

        [v43 setExplicitlySaved:1];
        (*(v86 + 2))(v86, 1);
        goto LABEL_70;
      }

      v32 = [v28 URL];
      v65 = [v28 text];
      v66 = v65;
      if (v65)
      {
        v79 = v65;
      }

      else
      {
        v79 = [(TabDocumentDropHandler *)v32 safari_userVisibleString];
      }

      if (v32)
      {
        v69 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
        v70 = [(WebBookmarkCollection *)v69 saveReadingListBookmarkWithTitle:v79 address:v32];

        if (v70)
        {
          v71 = [MEMORY[0x277D499B8] sharedLogger];
          [v71 didAddReadingListItemWithMethod:5];
        }

        v72 = [(TabController *)self->_tabController activeTabDocument];
        v73 = [v28 sourceElementInfo];
        [v72 animateElement:v73 toBarItem:3];
      }

      else
      {
        v72 = WBS_LOG_CHANNEL_PREFIXPageLoading();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          v74 = [v28 privacyPreservingDescription];
          *buf = 138543362;
          v129 = v74;
          _os_log_impl(&dword_215819000, v72, OS_LOG_TYPE_INFO, "Unable to add intent to reading list because there's no URL: %{public}@", buf, 0xCu);
        }
      }

      (*(v86 + 2))(v86, v32 != 0);
LABEL_69:
      v43 = v79;
      goto LABEL_70;
    }

    if ((v44 - 1) < 4)
    {
      v79 = [v28 webClip];
      if (!v79 || ([(TabController *)self->_tabController switchToTabDocumentForWebClip:v79], (v45 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v45 = (*(v84 + 2))(v84, 0);
      }

      if ([v28 shouldRelateToSourceTab])
      {
        v46 = [(BrowserController *)self browserWindowController];
        v47 = [v28 sourceWindowUUID];
        v78 = [v46 browserControllerWithUUID:v47];

        v48 = [v78 tabController];
        v49 = [v28 sourceTabUUID];
        v77 = [v48 tabDocumentWithUUID:v49];

        v75 = [v77 trackerInfo];
        v76 = [v75 queryParameterFilteringDataQueue];
        v50 = [v45 trackerInfo];
        v51 = [v50 queryParameterFilteringDataQueue];
        [v76 transferPendingDataToQueue:v51];
      }

      v52 = [(TabController *)self->_tabController activeTabDocument];
      [v45 setNextLoadComesFromSearchPage:{objc_msgSend(v52, "isSearchPage")}];

      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __55__BrowserController_handleNavigationIntent_completion___block_invoke_11;
      v87[3] = &unk_2781D6EB8;
      v88 = v28;
      v92 = &v122;
      v32 = v45;
      v89 = v32;
      v90 = self;
      v91 = v86;
      [(TabDocumentDropHandler *)v32 handleNavigationIntent:v88 completion:v87];

      goto LABEL_69;
    }

    if (v44)
    {
      goto LABEL_72;
    }

    v32 = [(TabController *)self->_tabController activeTabDocument];
    objc_storeStrong(v123 + 5, v32);
    [(TabDocumentDropHandler *)v32 setNextLoadComesFromSearchPage:[(TabDocumentDropHandler *)v32 isSearchPage]];
    v61 = [v28 bookmark];
    v62 = [v61 localAttributes];
    if (v62)
    {
      v63 = [v28 bookmark];
      v64 = [v63 isReadingListItem];

      if (!v64)
      {
LABEL_55:
        [(TabDocumentDropHandler *)v32 handleNavigationIntent:v28 completion:v86];
        goto LABEL_71;
      }

      v61 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v61 safari_incrementNumberForKey:*MEMORY[0x277D4A288]];
    }

    goto LABEL_55;
  }

  v35 = [v28 recentlyClosedTabStateData];
  v36 = (*(v29 + 2))(v29, 0, v35);
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

- (id)bookmarksNavigationControllerCurrentContinuousReadingItem:(id)a3
{
  v3 = [(BrowserController *)self continuousReadingController];
  v4 = [v3 currentReadingListItem];

  return v4;
}

- (void)bookmarksNavigationController:(id)a3 updateReadingListUnreadFilterShowingAllBookmarks:(BOOL)a4
{
  v4 = a4;
  v5 = [(BrowserController *)self continuousReadingController];
  [v5 setUnreadReadingListItemsOnly:!v4];
}

- (void)bookmarksNavigationControllerViewDidAppear:(id)a3
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

- (void)bookmarksNavigationControllerViewDidDisappear:(id)a3
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

- (void)bookmarksNavigationControllerContentDidBecomeDirty:(id)a3
{
  v6 = a3;
  v4 = [v6 viewIfLoaded];
  v5 = [v4 window];

  if (v5)
  {
    [(BrowserController *)self setNeedsSnapshotUpdateForActiveTabIfTabIsBlank];
  }
}

- (void)actionPanelAddTabDocumentToReadingList:(id)a3 activityDidFinish:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__BrowserController_actionPanelAddTabDocumentToReadingList_activityDidFinish___block_invoke;
  v7[3] = &unk_2781D6EE0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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

- (void)actionPanel:(id)a3 prepareForMailActivityWithMailController:(id)a4 completionHandler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(BrowserController *)self _mailContentProvider];
  [v10 setRestrictAddingPDFContent:1];
  v11 = [v14 customizationController];
  [v11 selectedContentType];
  v12 = _SFPreferredMailContentTypeForActivityContentType();

  v13 = [v14 sharingURL];
  [v10 prepareMailComposeViewController:v8 withMailToURL:0 contentURL:v13 preferredContentType:v12 completionHandler:v9];

  [v10 setRestrictAddingPDFContent:0];
}

- (id)downloadsViewControllerForActionPanel:(id)a3
{
  v4 = objc_alloc_init(DownloadsViewController);
  [(DownloadsViewController *)v4 setDownloadOpenHandler:self];
  objc_storeWeak(&self->_downloadsViewController, v4);

  return v4;
}

- (void)addBookmarkActivityFailedToAcquireBookmarkLock:(id)a3
{
  v7 = a3;
  v4 = MEMORY[0x277D28BE0];
  v5 = [(BrowserController *)self viewControllerToPresentFrom];
  [v4 showLockedDatabaseAlertForAction:1 fromViewController:v5];

  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();
  v6 = [MEMORY[0x277D499B8] sharedLogger];
  [v6 didPreventBookmarkActionWithBookmarkType:(v4 & 1) == 0 actionType:0];
}

- (id)readerControllerForMailContentProvider:(id)a3
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  v4 = [v3 readerContext];

  return v4;
}

- (BOOL)readerViewIsVisibleForMailContentProvider:(id)a3
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  v4 = [v3 isShowingReader];

  return v4;
}

- (id)webViewForMailContentProvider:(id)a3
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  if ([v3 isBlank])
  {
    v4 = 0;
  }

  else
  {
    if ([v3 isShowingReader])
    {
      [v3 readerWebView];
    }

    else
    {
      [v3 webView];
    }
    v4 = ;
  }

  return v4;
}

- (id)printControllerForContentProvider:(id)a3
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  if ([v3 isBlank])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 printController];
  }

  return v4;
}

- (void)tabDocumentDidUpdateShowingContinuous:(id)a3
{
  v5 = a3;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:v5])
  {
    [(BrowserController *)self updateInterface];
  }

  v4 = [(TabController *)self->_tabController activeTabDocument];

  if (v4 == v5)
  {
    [(BrowserController *)self didChangeContinuousReadingItemInActiveDocument];
  }
}

- (void)tabDocumentDidStartLoading:(id)a3
{
  v8 = a3;
  v4 = [(TabController *)self->_tabController activeTabDocument];

  if (v4 == v8)
  {
    [(BrowserController *)self updateInterface];
    if ([v8 isBlank])
    {
      v5 = [(BrowserController *)self tabBarManager];
      v6 = [v5 inlineTabBar];
      [v6 updateCloseButtonVisibility];
    }

    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserController:self tabDocumentDidStartLoading:v8];
    }
  }
}

- (void)willStartLoadFromUserTap:(id)a3
{
  v5 = a3;
  v4 = [(TabController *)self->_tabController activeTabDocument];

  if (v4 == v5 && ![(BrowserRootViewController *)self->_rootViewController keepBarsMinimized])
  {
    [(BrowserController *)self showBars];
  }
}

- (BOOL)tabDocumentCanDownloadFile:(id)a3
{
  v4 = a3;
  if (self->_speculativeLoadDocument == v4)
  {
    [(BrowserController *)self cancelSpeculativeLoad];
  }

  else
  {
    if (![(BrowserController *)self isContinuousReadingDocument:v4])
    {
      v5 = ![(TabDocument *)v4 isControlledByAutomation];
      goto LABEL_7;
    }

    [(BrowserController *)self clearDocumentForContinuousReading:v4];
  }

  LOBYTE(v5) = 0;
LABEL_7:

  return v5;
}

- (BOOL)tabDocument:(id)a3 canShowDownload:(id)a4
{
  v5 = a3;
  v6 = [(TabController *)self->_tabController activeTabDocument];
  if (v6 == v5)
  {
    v8 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([v8 presentationState] == 1)
    {
      v7 = 0;
      v9 = v8;
    }

    else
    {
      v10 = [v8 presentationState];

      if (v10 == 2)
      {
        v7 = 0;
LABEL_9:

        goto LABEL_10;
      }

      v9 = [(BrowserController *)self viewControllerToPresentFrom];
      v11 = [v9 presentedViewController];
      v7 = v11 == 0;
    }

    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (BOOL)tabDocumentCanRedirectToExternalApplication:(id)a3
{
  v4 = a3;
  if ([(TabDocument *)v4 isControlledByAutomation])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(TabController *)self->_tabController tabBeingActivated];
    if (v6 == v4)
    {
      speculativeLoadDocument = self->_speculativeLoadDocument;

      if (speculativeLoadDocument != v4)
      {
        v5 = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v5 = [(TabDocument *)v4 isPerformingRedirectAfterOpenInBackground];
  }

LABEL_8:

  return v5;
}

- (void)tabDocumentDidCancelRedirectToExternalApplication:(id)a3
{
  if (self->_speculativeLoadDocument == a3)
  {
    [(BrowserController *)self cancelSpeculativeLoad];
  }
}

- (void)tabDocument:(id)a3 didFinishLoadingWithError:(BOOL)a4
{
  v17 = a3;
  v6 = +[(WBReusableTabManager *)ReusableTabManager];
  v7 = [v6 isTabSuspended:v17];

  if ((v7 & 1) == 0)
  {
    if (!a4 && ![(BrowserController *)self isContinuousReadingDocument:v17]&& self->_speculativeLoadDocument != v17 && self->_previewDocument != v17)
    {
      [(TabController *)self->_tabController updateWBTabWithTab:v17 notify:1 persist:1];
    }

    v8 = [(TabController *)self->_tabController activeTabDocument];

    if (v8 == v17)
    {
      [(BrowserRootViewController *)self->_rootViewController stopRefreshing];
      [(BrowserController *)self updateInterface];
      [(BrowserController *)self _sendPDFRepresentationForScreenshotWithTabDocument:v17];
      if (![(BrowserController *)self isShowingFavorites]&& ![(BrowserController *)self _hasPresentedViewController])
      {
        v9 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
        v10 = [v9 presentationState];

        if (!v10)
        {
          v11 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
          v12 = [v11 capsuleCollectionView];
          [v12 showTipIfNeeded];
        }
      }

      webClipIDPendingYttriumState = self->_webClipIDPendingYttriumState;
      v14 = [(TabDocument *)v17 webClipID];
      LODWORD(webClipIDPendingYttriumState) = [(NSUUID *)webClipIDPendingYttriumState isEqual:v14];

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

- (void)_sendPDFRepresentationForScreenshotWithTabDocument:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (a1[5])
    {
      v5 = [v3 webView];
      v6 = [v5 scrollView];
      [v6 visibleBounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [v6 zoomScale];
      v14 = v13;
      [v6 contentSize];
      v16 = v15;
      [v6 contentOffset];
      v18 = v17;
      objc_initWeak(&location, a1);
      v19 = v16 / v14 - (*&v12 + v18 / v14);
      if ([v5 _isDisplayingPDF])
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
        [v5 _getMainResourceDataWithCompletionHandler:v27];
      }

      else
      {
        v21 = WBS_LOG_CHANNEL_PREFIXPrinting();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_215819000, v21, OS_LOG_TYPE_INFO, "Generating Screenshot PDF for Markup", buf, 2u);
        }

        v22 = [v4 printController];
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
        [v22 getPDFDataForUsage:2 withCompletion:v24];
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

- (void)tabDocumentDidCommitNavigation:(id)a3
{
  v4 = a3;
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

  [(TabController *)self->_tabController updateWBTabWithTab:v4 notify:0 persist:0];
}

- (void)webViewDidFirstVisuallyNonEmptyLayoutForTabDocument:(id)a3
{
  v5 = a3;
  [v5 updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:1];
  v4 = [MEMORY[0x277CBEB98] setWithObject:v5];
  [(BrowserController *)self _updateDigitalHealthOverlayForTabDocuments:v4];
}

- (void)tabDocumentDidUpdateTitle:(id)a3
{
  v4 = a3;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:v4])
  {
    v5 = [(BrowserController *)self tabBarManager];
    v6 = [v5 displayMode];

    if (v6 == 2)
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

  [(TabController *)self->_tabController updateWBTabWithTab:v4 notify:1 persist:0];
  v7 = [(BrowserRootViewController *)self->_rootViewController tabSwitcherViewController];
  [v7 setNeedsApplyContentAnimated:0];

  [v4 indexTabToCoreSpotlight];
  v8 = [MEMORY[0x277D499B8] sharedLogger];
  [v8 reportTabUpdatedWithUpdateType:1];
}

- (void)tabDocumentDidUpdateURL:(id)a3
{
  v5 = a3;
  [(BrowserController *)self _updateSceneTitle];
  [(BrowserController *)self clearCachedTabCompletionData];
  [(TabController *)self->_tabController updateWBTabWithTab:v5 notify:1 persist:0];
  [v5 indexTabToCoreSpotlight];
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 reportTabUpdatedWithUpdateType:2];
}

- (void)tabDocumentDidUpdateBackForward:(id)a3
{
  v4 = a3;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:v4])
  {
    [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
    [(BrowserRootViewController *)self->_rootViewController setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
  }
}

- (void)tabDocumentFluidProgressRocketAnimationDidComplete:(id)a3
{
  v4 = a3;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:v4])
  {
    [(BrowserController *)&self->super.super.super.isa prefetchNextContinuousItemIfNeeded];
  }
}

- (BOOL)tabDocumentIsBackgroundPreloading:(id)a3
{
  v4 = a3;
  v5 = self->_speculativeLoadDocument == v4 || [(BrowserController *)self isContinuousReadingDocument:v4];

  return v5;
}

- (BOOL)tabDocumentShouldHandleAuthentication:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_speculativeLoadDocument == v4)
  {
    [(BrowserController *)self cancelSpeculativeLoad];
    v5 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = v4;
      v6 = "TabDocument %p: returning NO for tabDocumentShouldHandleAuthentication because speculative load.";
      goto LABEL_20;
    }
  }

  else if ([(BrowserController *)self isContinuousReadingDocument:v4])
  {
    [(BrowserController *)self clearDocumentForContinuousReading:v4];
    v5 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = v4;
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
      v19 = v4;
      v6 = "TabDocument %p: returning NO for tabDocumentShouldHandleAuthentication because isControlledByAutomation.";
      goto LABEL_20;
    }
  }

  else
  {
    v7 = [(BrowserController *)self viewControllerToPresentFrom];
    v8 = [v7 presentedViewController];

    if (v8 && NSClassFromString(@"OBWelcomeController") && (-[BrowserController viewControllerToPresentFrom](self, "viewControllerToPresentFrom"), v9 = objc_claimAutoreleasedReturnValue(), [v9 presentedViewController], v10 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v10, v9, (isKindOfClass & 1) != 0))
    {
      v5 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134217984;
        v19 = v4;
        v6 = "TabDocument %p: returning NO for tabDocumentShouldHandleAuthentication because presentedViewController.";
        goto LABEL_20;
      }
    }

    else
    {
      v12 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
      if ([v12 presentationState] == 1)
      {
      }

      else
      {
        v13 = [v12 presentationState];

        if (v13 != 2)
        {
          if (!-[TabDocument isPrivateBrowsingEnabled](v4, "isPrivateBrowsingEnabled") || (+[Application sharedApplication](Application, "sharedApplication"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isPrivateBrowsingLocked], v16, !v17))
          {
            v14 = 1;
            goto LABEL_22;
          }

          v5 = WBS_LOG_CHANNEL_PREFIXPageLoading();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 134217984;
            v19 = v4;
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
        v19 = v4;
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

- (BOOL)tabDocumentShouldHandleCertificateError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((gRunningPurpleTest & 1) == 0)
  {
    if (self->_speculativeLoadDocument == v4)
    {
      [(BrowserController *)self cancelSpeculativeLoad];
    }

    else
    {
      if (![(BrowserController *)self isContinuousReadingDocument:v4])
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

- (BOOL)tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((gRunningPurpleTest & 1) == 0)
  {
    if (self->_speculativeLoadDocument == v4)
    {
      [(BrowserController *)self cancelSpeculativeLoad];
    }

    else
    {
      if (![(BrowserController *)self isContinuousReadingDocument:v4])
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

- (void)tabDocumentDidAddAlert:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_speculativeLoadDocument == v4)
  {
    [(BrowserController *)self cancelSpeculativeLoad];
  }

  else if ([(BrowserController *)self isContinuousReadingDocument:v4])
  {
    [(BrowserController *)self clearDocumentForContinuousReading:v5];
  }
}

- (void)tabDocument:(id)a3 didDetectReaderAvailability:(BOOL)a4
{
  v8 = a3;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:v8])
  {
    [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
  }

  if (a4)
  {
    if ([(BrowserController *)self isContinuousReadingDocument:v8]&& [(BrowserController *)self readerShouldBeShownIfPossible])
    {
      [v8 createBrowserReaderViewIfNeeded];
      [(BrowserController *)&self->super.super.super.isa _setContinuousReadingContentViewFromTabDocument:v8 useReaderView:1];
    }
  }

  else
  {
    v6 = [v8 contextController];
    v7 = [v8 URL];
    [v6 contextForPageURL:v7 content:0 contentType:0 metadata:0 isPrivate:objc_msgSend(v8 isReaderAvailable:"isPrivateBrowsingEnabled") withCompletionHandler:{0, 0}];
  }
}

- (void)tabDocumentDidChangeMediaState:(id)a3 needsUpdateGlobalAudioState:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self tabDocumentDidChangeMediaState:v9];
  }

  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:v9])
  {
    [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
  }

  if (v4)
  {
    v7 = objc_loadWeakRetained(&self->_browserWindowController);
    v8 = [v7 browserControllers];
    [v8 enumerateObjectsUsingBlock:&__block_literal_global_1123];
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

- (void)tabDocumentDidUpdateTabCollectionItem:(id)a3
{
  v3 = [(BrowserRootViewController *)self->_rootViewController tabSwitcherViewController];
  [v3 setNeedsApplyContentAnimated:1];
}

- (void)tabDocumentDidUpdateIsScribbling:(id)a3
{
  v4 = a3;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:v4])
  {
    [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
  }
}

- (void)tabDocument:(id)a3 didExtractArticleText:(id)a4 withMetadata:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  [(BrowserController *)self _requestQueryResultsOnTabDocument:v11 forText:v8 contentType:1 pageMetadata:v9];
  v10 = [MEMORY[0x277CBEB98] setWithObject:v11];
  [(BrowserController *)self _updateDigitalHealthOverlayForTabDocuments:v10];
}

- (void)_requestQueryResultsOnTabDocument:(void *)a3 forText:(uint64_t)a4 contentType:(void *)a5 pageMetadata:
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v12 = [v9 contextController];
    [v12 invalidateCachedResults];
    objc_initWeak(&location, a1);
    v13 = [v9 URL];
    v14 = [v9 isPrivateBrowsingEnabled];
    v15 = [v9 isReaderAvailable];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__BrowserController__requestQueryResultsOnTabDocument_forText_contentType_pageMetadata___block_invoke;
    v16[3] = &unk_2781D6FE8;
    objc_copyWeak(&v17, &location);
    [v12 contextForPageURL:v13 content:v10 contentType:a4 metadata:v11 isPrivate:v14 isReaderAvailable:v15 withCompletionHandler:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)filteredArticleTextDidBecomeReadyInTabDocument:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  v7 = [v6 isEqualToString:self->_tabUUIDStringForSiriReadThisVocalInvocation];

  if (v7)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__BrowserController_filteredArticleTextDidBecomeReadyInTabDocument___block_invoke;
    v12[3] = &unk_2781D60B8;
    v12[4] = self;
    [(BrowserController *)self _extractTextFromReaderWebViewOfTab:v4 withCompletion:v12];
  }

  else
  {
    v8 = [v4 uuid];
    v9 = [v8 UUIDString];
    v10 = [v9 isEqualToString:self->_tabUUIDStringForSiriReadThisMenuInvocation];

    if (v10)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __68__BrowserController_filteredArticleTextDidBecomeReadyInTabDocument___block_invoke_2;
      v11[3] = &unk_2781D60B8;
      v11[4] = self;
      [(BrowserController *)self _extractTextFromReaderWebViewOfTab:v4 withCompletion:v11];
    }
  }
}

- (void)_siriReadThisVocalInvocation
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return;
  }

  v2 = [a1[41] activeTabDocument];
  v23 = [v2 readerContext];
  v3 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
  v4 = [v3 activeSiriReaderSessionIdentifier];
  if (v4)
  {
    v5 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    v6 = [v5 activeSiriReaderSessionURL];
    v7 = [v23 readerURL];
    v8 = WBSIsEqual();

    if (v8)
    {
      v9 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
      v10 = [v9 activeSiriReaderSessionIdentifier];
      goto LABEL_7;
    }
  }

  else
  {
  }

  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v9 UUIDString];
LABEL_7:
  v11 = v10;

  v22 = objc_alloc_init(getSiriReaderConnectionClass());
  v12 = [a1 siriReaderPlaybackStateForActiveTab];
  v13 = [v2 webView];
  v14 = [v13 title];
  if (v12 <= 3 && v12 != 1)
  {
    v15 = [MEMORY[0x277D28D48] sharedPlaybackController];
    [v15 setDelegate:a1];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__3;
    v36 = __Block_byref_object_dispose__3;
    v37 = 0;
    v16 = objc_alloc_init(MEMORY[0x277CD46E0]);
    objc_initWeak(&location, a1);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__BrowserController__siriReadThisVocalInvocation__block_invoke;
    aBlock[3] = &unk_2781D7238;
    objc_copyWeak(&v31, &location);
    p_buf = &buf;
    v25 = v22;
    v26 = v14;
    v17 = v11;
    v27 = v17;
    v28 = v23;
    v29 = v2;
    v18 = _Block_copy(aBlock);
    v19 = [v13 URL];
    [v16 startFetchingMetadataForURL:v19 completionHandler:v18];

    v20 = [a1[41] activeTabDocument];
    [v20 setLastSiriReaderSessionIdentifier:v17];

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

- (void)_extractTextFromReaderWebViewOfTab:(void *)a3 withCompletion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 readerWebView];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__BrowserController__extractTextFromReaderWebViewOfTab_withCompletion___block_invoke;
    v9[3] = &unk_2781D6F50;
    v10 = v7;
    v11 = a1;
    v12 = v5;
    v13 = v6;
    v8 = v7;
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

- (id)_stringByRemovingContentBetweenZeroWidthSpacesForText:(uint64_t)a1
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
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
  v3 = [WeakRetained tabsWithSound];
  v4 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_1135];

  return v4;
}

- (void)setActiveAudioPlayingTabWithUUID:(id)a3 tabGroupUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  v9 = [WeakRetained browserControllers];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__BrowserController_setActiveAudioPlayingTabWithUUID_tabGroupUUID___block_invoke;
  v14[3] = &unk_2781D6FC0;
  v10 = v6;
  v15 = v10;
  v11 = v7;
  v16 = v11;
  v12 = [v9 safari_firstObjectPassingTest:v14];

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

- (void)_requestActivationOfBrowserController:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v10 = v3;
    v4 = [(BrowserController *)v3 _sceneSession];
    v5 = [(BrowserController *)a1 _sceneSession];
    if (v5 != v4)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75950]);
      v7 = [v5 scene];
      [v6 setRequestingScene:v7];

      [v6 setPreserveLayout:1];
      v8 = [MEMORY[0x277D75128] sharedApplication];
      [v8 requestSceneSessionActivation:v4 userActivity:0 options:v6 errorHandler:&__block_literal_global_1155];
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

- (void)tabDocument:(id)a3 didCreateNewTabDocument:(id)a4
{
  v11 = a3;
  v6 = a4;
  [v6 updateAncestryWithParentTab:v11];
  [(TabController *)self->_tabController insertNewTabDocumentWithDefaultOrdering:v6 inBackground:0 animated:1];
  v7 = [v11 trackerInfo];
  v8 = [v7 queryParameterFilteringDataQueue];
  v9 = [v6 trackerInfo];
  v10 = [v9 queryParameterFilteringDataQueue];
  [v8 transferPendingDataToQueue:v10];
}

- (void)tabDocumentShouldCloseAndSwitchToParentTab:(id)a3
{
  v4 = a3;
  tabController = self->_tabController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__BrowserController_tabDocumentShouldCloseAndSwitchToParentTab___block_invoke;
  v7[3] = &unk_2781D61F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (unint64_t)popUpPolicyForTabDocument:(id)a3
{
  v4 = a3;
  v5 = +[Application sharedApplication];
  v6 = [v5 isRunningCanvasTest];

  if (v6)
  {
    v7 = 1;
  }

  else if (self->_speculativeLoadDocument == v4)
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

- (void)_closePreviewDocumentTimerFired:(id)a3
{
  v4 = a3;
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
    v4 = [(TabDocument *)previewDocument webView];
    v5 = [v4 window];

    if (!v5)
    {
      [(TabDocument *)self->_previewDocument willClose];
      v6 = self->_previewDocument;
      self->_previewDocument = 0;

      objc_storeWeak(&self->_backForwardListItemNeedingSnapshot, 0);
      v7 = +[History sharedHistory];
      [v7 cancelDeferredUpdates];

      if ([(NSTimer *)self->_previewDocumentCloseTimer isValid])
      {
        v8 = [(NSTimer *)self->_previewDocumentCloseTimer userInfo];
        [v8 updateUsageTrackingInformationAfterLinkPreviewDismissal];
      }

      [(BrowserController *)self _invalidatePreviewDocumentCloseTimer];
    }
  }
}

- (void)tabDocument:(id)a3 didCreatePreviewDocument:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_previewDocument != v7)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      previewDocument = self->_previewDocument;
      v13 = 138740483;
      v14 = v7;
      v15 = 2117;
      v16 = v6;
      v17 = 2117;
      v18 = previewDocument;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Creating link preview %{sensitive}@ from source tab %{sensitive}@. Previous link preview: %{sensitive}@", &v13, 0x20u);
    }

    v10 = self->_previewDocument;
    if (v10)
    {
      [(TabDocument *)v10 willClose];
      [(BrowserController *)self _invalidatePreviewDocumentCloseTimer];
    }

    objc_storeStrong(&self->_previewDocument, a4);
    v11 = [(TabDocument *)self->_previewDocument _backForwardList];
    v12 = [v11 currentItem];
    objc_storeWeak(&self->_backForwardListItemNeedingSnapshot, v12);
  }
}

- (void)tabDocumentCommitPreviewedDocument:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    previewDocument = self->_previewDocument;
    v16 = 134218240;
    v17 = previewDocument;
    v18 = 2048;
    v19 = v4;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Committing link preview %p to load in source tab %p", &v16, 0x16u);
  }

  v7 = [(BrowserController *)self tabController];
  v8 = [v7 activeTabDocument];

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
        [v8 willClose];
      }

      v13 = self->_previewDocument;
      self->_previewDocument = 0;

      [(BrowserController *)self _invalidatePreviewDocumentCloseTimer];
      v14 = [v4 history];
      [v14 commitDeferredUpdates];

      v15 = [(BrowserController *)self webView];
      [(BrowserController *)&self->super.super.super.isa _updateScrollOffsetForReplacementWebView:v15];
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

- (void)tabDocumentCommitPreviewedDocumentAsNewTab:(id)a3 inBackground:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self->_previewDocument;
  v8 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218240;
    v18 = v7;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Committing link preview %p in new tab from source tab %p", &v17, 0x16u);
  }

  if (v7)
  {
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained browserControllerWillCreateBackgroundTab:self];
      }
    }

    previewDocument = self->_previewDocument;
    self->_previewDocument = 0;

    v11 = [(TabController *)self->_tabController activeTabDocument];
    [(TabDocument *)v7 updateAncestryWithParentTab:v11];

    [(TabController *)self->_tabController insertNewTabDocumentWithDefaultOrdering:v7 inBackground:v4 animated:1];
    v12 = [MEMORY[0x277D499B8] sharedLogger];
    [v12 didOpenNewTabWithURLWithTrigger:1 tabCollectionViewType:{-[TabCollectionViewProviding visibleTabCollectionViewType](self->_tabCollectionViewProvider, "visibleTabCollectionViewType")}];

    if (v4)
    {
      v13 = [(TabDocument *)v7 webView];
      [(BrowserController *)self updateInsetsForBackgroundWebView:v13];
    }

    v14 = [v6 history];
    [v14 commitDeferredUpdates];

    v15 = [(TabDocument *)v7 webView];
    [(BrowserController *)&self->super.super.super.isa _updateScrollOffsetForReplacementWebView:v15];
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(BrowserController *)v4 tabDocumentCommitPreviewedDocumentAsNewTab:v6 inBackground:v16];
    }
  }
}

- (void)tabDocumentDidDimissPreviewedDocument:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  [(BrowserController *)v5 tabDocumentDidDimissPreviewedDocument:v4];
  [(BrowserController *)self _invalidatePreviewDocumentCloseTimer];
  v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__closePreviewDocumentTimerFired_ selector:v4 userInfo:0 repeats:0.0];
  previewDocumentCloseTimer = self->_previewDocumentCloseTimer;
  self->_previewDocumentCloseTimer = v6;
}

- (void)tabDocumentWillDisableLinkPreview
{
  [(TabDocument *)self->_previewDocument willClose];
  previewDocument = self->_previewDocument;
  self->_previewDocument = 0;
}

- (BOOL)tabDocumentCanDisplayModalUI:(id)a3
{
  v4 = a3;
  if (![v4 isPrivateBrowsingEnabled] || (+[Application sharedApplication](Application, "sharedApplication"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isPrivateBrowsingLocked"), v5, (v6 & 1) == 0))
  {
    v8 = [(TabController *)self->_tabController activeTabDocument];
    if (v8 != v4)
    {
      LOBYTE(v7) = 0;
LABEL_12:

      goto LABEL_13;
    }

    v9 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([v9 presentationState] == 1)
    {
    }

    else
    {
      v10 = [v9 presentationState];

      if (v10 != 2)
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

- (BOOL)tabDocumentCanBeginInputSessionForStreamlinedLogin:(id)a3
{
  v4 = a3;
  v5 = [(TabController *)self->_tabController activeTabDocument];
  if (v5 == v4)
  {
    v7 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    if ([v7 presentationState] == 1)
    {
      LOBYTE(v6) = 0;
      v8 = v7;
    }

    else
    {
      v9 = [v7 presentationState];

      if (v9 == 2 || [(BrowserController *)self isShowingFavorites])
      {
        LOBYTE(v6) = 0;
        goto LABEL_9;
      }

      v8 = [(BrowserController *)self viewControllerToPresentFrom];
      v11 = [v8 presentedViewController];
      if (v11)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = [v4 shouldObscureForDigitalHealth] ^ 1;
      }
    }

LABEL_9:
    goto LABEL_10;
  }

  LOBYTE(v6) = 0;
LABEL_10:

  return v6;
}

- (void)switchFromTabDocument:(id)a3 toTabDocument:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXTabView();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BrowserController switchFromTabDocument:toTabDocument:];
    }
  }

  if (v6 == v7)
  {
    [(BrowserController *)self updateInterface];
  }

  else
  {
    v9 = [v6 isBlockedByScreenTime];
    if (v9)
    {
      LOBYTE(v9) = [v7 isShowingSystemStartPage];
    }

    self->_shouldAwaitAnimationCompletionForNextSnapshot = v9;
    [v6 updateUserActivity];
    if (([v6 isShowingReader] & 1) != 0 || objc_msgSend(v6, "shouldRestoreReader"))
    {
      [(BrowserController *)self hideReaderForTabDocument:v6 animated:0 deactivationMode:2];
    }

    [(UIScrollView *)self->_scrollView _stopScrollingAndZoomingAnimations];
    [(UIScrollView *)self->_scrollView contentOffset];
    [v6 setScrollPoint:?];
    [(BrowserController *)self setWebViewFromTabDocument:v7];
    if ([v7 shouldShowReaderOnActivate])
    {
      [(BrowserController *)self setShowingReader:1 animated:0];
    }

    [(BrowserController *)self updateInterface];
    v10 = [v6 appBanner];
    [(BrowserController *)self _setShowingAppBanner:v10 isShowing:0];

    v11 = [v7 appBanner];
    [(BrowserController *)self _setShowingAppBanner:v11 isShowing:1];

    v12 = [v6 privateBrowsingPrivacyProtectionsBanner];
    [(BrowserController *)self _setShowingPrivateBrowsingPrivacyProtectionsBanner:v12 isShowing:0];

    v13 = [v7 privateBrowsingPrivacyProtectionsBanner];
    [(BrowserController *)self _setShowingPrivateBrowsingPrivacyProtectionsBanner:v13 isShowing:1];

    v14 = [v7 navigationBarItem];
    v15 = [(BrowserRootViewController *)self->_rootViewController navigationBar];
    [v15 setItem:v14];

    v16 = [(BrowserRootViewController *)self->_rootViewController view];
    [v16 setNeedsLayout];

    [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerViewIfNeeded];
    if (v6)
    {
      [(BrowserController *)self updateFavoritesForNewDocument];
    }

    [(BrowserController *)self _updateLibraryTypeForNewDocument];
    v17 = [v7 dialogController];
    [v17 presentNextDialogIfNeeded];

    if (v7)
    {
      v18 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
      if ([v18 presentationState] == 1)
      {
      }

      else
      {
        v19 = [v18 presentationState];

        if (v19 != 2)
        {
          v20 = [MEMORY[0x277CBEB98] setWithObject:v7];
          [(BrowserController *)self _updateDigitalHealthOverlayForTabDocuments:v20];

          [(BrowserController *)&self->super.super.super.isa _presentPendingViewControllerForActiveTab];
        }
      }
    }

    [(BrowserRootViewController *)self->_rootViewController setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
    [(BrowserController *)self _updateSceneTitle];
    v21 = [MEMORY[0x277CDB7A8] sharedManager];
    [v21 totalProgress];
    v23 = v22;
    v24 = [v7 unifiedTabBarItem];
    [v24 setDownloadProgress:v23];

    [(BrowserController *)&self->super.super.super.isa _updateUnifiedBarBackgroundVisibility];
    [(BrowserRootViewController *)self->_rootViewController updateThemeColorIfNeededAnimated:0];
  }
}

- (void)tabControllerDocumentCountDidChange:(id)a3
{
  v4 = [(BrowserController *)self _animationsAreEnabled];
  [(BrowserController *)self _updateButtonsAnimatingTabBar:v4];

  [(BrowserController *)self _updateSceneTitle];
}

- (void)tabController:(id)a3 didSwitchFromTabDocument:(id)a4 toTabDocument:(id)a5
{
  v27 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 != v10)
  {
    if (!self->_isMakingFocusedTabDocumentActive)
    {
      v11 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
      v12 = [v11 presentationState];

      if (!v12)
      {
        v13 = [(TabController *)self->_tabController updatingTabGroupTabs];
        if (v13)
        {
          v14 = 0;
          v15 = 1;
        }

        else
        {
          v12 = [v9 libraryType];
          if (v12)
          {
            v14 = 0;
            v15 = 1;
          }

          else
          {
            v5 = [v10 libraryType];
            v12 = 0;
            v15 = v5 != 0;
            v14 = 1;
          }
        }

        [(BrowserController *)self dismissTransientUIAnimated:v15];
        if (v14)
        {
        }

        if (!v13)
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
    [v9 hideFindOnPage];
    if ([v10 shouldObscureForDigitalHealth])
    {
      -[BrowserController _showDigitalHealthOverlayForTabDocument:withPolicy:animated:](self, v10, [v10 policy], 0);
    }

    else
    {
      [(BrowserController *)&self->super.super.super.isa _hideDigitalHealthOverlayForTabDocument:v10];
    }

    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    [WeakRetained browserControllerMakeKey:self];
  }

  [(BrowserController *)self switchFromTabDocument:v9 toTabDocument:v10];
  [v10 updateTabTitle];
  [v10 updateTabIcon];
  if (v9 != v10)
  {
    v17 = [(BrowserController *)self tabCollectionViewProvider];
    v18 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    v19 = [v18 presentationState] != 1 && objc_msgSend(v18, "presentationState") != 2;

    [v17 scrollTabBarToActiveTabAnimated:v19];
    v20 = [(BrowserController *)self tabBarManager];
    v21 = [v20 minimizedProgressView];

    if (v21)
    {
      v22 = [v9 navigationBarItem];
      v23 = [v22 fluidProgressController];
      [v23 unregisterObserver:v21];

      v24 = [v10 navigationBarItem];
      v25 = [v24 fluidProgressController];
      [v25 registerObserver:v21];
    }
  }

  v26 = ([(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar]& 1) == 0 && [(BrowserController *)self isShowingStartPage];
  self->_allowsAutoDismissSidebar = v26;
  [(BrowserController *)self updatePresenceForActiveUser];
  [(BrowserController *)self dismissAutoFillInternalFeedbackToastImmediately:1];
}

- (void)tabController:(id)a3 didSwitchFromTabGroup:(id)a4
{
  [(BrowserController *)&self->super.super.super.isa _updateTabGroupBanner];
  [(BrowserController *)self updateTabOverviewButton];
  [(BrowserController *)self clearParticipantsList];
  [(BrowserController *)self updateCollaborationButton];

  [(BrowserController *)self dismissAutoFillInternalFeedbackToastImmediately:1];
}

- (BOOL)tabDocumentCanBecomeCurrentUserActivity:(id)a3
{
  v4 = a3;
  if (-[BrowserController sf_inResponderChain](self, "sf_inResponderChain") && ([v4 isControlledByAutomation] & 1) == 0)
  {
    v5 = [v4 isPrivateBrowsingEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)tabDocumentShouldBecomeActive:(id)a3
{
  v13 = a3;
  if ([*MEMORY[0x277D76620] supportsMultipleScenes])
  {
    v4 = objc_alloc_init(MEMORY[0x277D75950]);
    [v4 setPreserveLayout:1];
    v5 = [MEMORY[0x277D75128] sharedApplication];
    v6 = [(BrowserController *)&self->super.super.super.isa _sceneSession];
    [v5 requestSceneSessionActivation:v6 userActivity:0 options:v4 errorHandler:&__block_literal_global_1143];
  }

  v7 = [(TabController *)self->_tabController activeTabDocument];

  v8 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([v8 presentationState] == 1)
  {

    v9 = 1;
  }

  else
  {
    v10 = [v8 presentationState];
    v9 = v10 == 2;

    if (v7 == v13 && v10 != 2)
    {
      goto LABEL_16;
    }
  }

  v12 = [v13 isPrivateBrowsingEnabled];
  if (v12 != [(BrowserController *)self isPrivateBrowsingEnabled])
  {
    [(BrowserController *)self togglePrivateBrowsingEnabled];
  }

  if (v7 != v13)
  {
    [(TabController *)self->_tabController setActiveTabDocument:v13];
  }

  if (v9)
  {
    [v8 dismissAnimated:0];
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

- (id)loadURLInNewTab:(id)a3 inBackground:(BOOL)a4
{
  v4 = [(BrowserController *)self loadURLInNewTab:a3 inBackground:a4 animated:1];

  return v4;
}

- (id)loadURLInNewTab:(id)a3 inBackground:(BOOL)a4 animated:(BOOL)a5
{
  v5 = [(BrowserController *)self loadURLInNewTab:a3 title:0 UUID:0 inBackground:a4 animated:a5 restoringCloudTab:0];

  return v5;
}

- (id)loadURLInNewTab:(id)a3 title:(id)a4 UUID:(id)a5 inBackground:(BOOL)a6 animated:(BOOL)a7 restoringCloudTab:(BOOL)a8
{
  v9 = a7;
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v29 = v15;
  v30 = a5;
  if (![(TabController *)self->_tabController updatingTabGroupTabs])
  {
    [(BrowserController *)self dismissTransientUIAnimated:v9];
  }

  if (a8)
  {
    v16 = [[TabDocument alloc] initWithTitle:v15 URL:v14 UUID:v30 privateBrowsingEnabled:[(BrowserController *)self isPrivateBrowsingEnabled] hibernated:1 bookmark:0 browserController:self];
    v17 = 0;
  }

  else
  {
    v16 = [[TabDocument alloc] initWithBrowserController:self];
    v17 = [(TabController *)self->_tabController activeTabDocument];
    if (v17)
    {
      [(TabDocument *)v16 updateAncestryWithParentTab:v17];
      [(TabDocument *)v16 setParentTabDocumentForBackClosesSpawnedTab:v17];
    }
  }

  [(TabController *)self->_tabController insertNewTabDocumentWithDefaultOrdering:v16 inBackground:v10 animated:v9];
  v18 = [(TabDocument *)v16 supportsAdvancedPrivacyProtectionsForURL:v14];
  v19 = [(TabDocument *)v16 reloadOptionsController];
  [v19 setSupportsAdvancedPrivacyProtections:v18];

  v20 = [v17 trackerInfo];
  v21 = [v20 queryParameterFilteringDataQueue];
  v22 = [(TabDocument *)v16 trackerInfo];
  v23 = [v22 queryParameterFilteringDataQueue];
  [v21 transferPendingDataToQueue:v23];

  v24 = [v17 reloadOptionsController];
  LODWORD(v23) = [v24 loadedUsingDesktopUserAgent];

  if (v23)
  {
    v25 = [(TabDocument *)v16 reloadOptionsController];
    [v25 requestDesktopSiteWithURL:v14];
  }

  else
  {
    v26 = [(TabDocument *)v16 loadURL:v14 userDriven:1];
  }

  [(TabDocument *)v16 setTabReuseURL:v14];
  [(TabDocument *)v16 setWasOpenedFromLink:v9 && ~v10];
  if ([(TabCollectionViewProviding *)self->_tabCollectionViewProvider hasTabBar])
  {
    [(BrowserController *)self showBars];
    [(TabCollectionViewProviding *)self->_tabCollectionViewProvider updateTabBarAnimated:1];
  }

  if (v10)
  {
    v27 = [(TabDocument *)v16 webView];
    [(BrowserController *)self updateInsetsForBackgroundWebView:v27];
  }

  return v16;
}

- (void)loadCloudTabsForDeviceRestoration:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudTabs();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = [v4 count];
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Loading %zu CloudTabs for device restoration", buf, 0xCu);
  }

  [(BrowserController *)self _dismissTransientUIAnimated:3 dismissalOptions:0 completionHandler:?];
  v6 = [(WBTabGroupManager *)self->_tabGroupManager deviceIdentifier];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__BrowserController_loadCloudTabsForDeviceRestoration___block_invoke;
  v15[3] = &unk_2781D7010;
  v7 = v6;
  v16 = v7;
  v8 = [v4 safari_mapObjectsUsingBlock:v15];
  tabGroupManager = self->_tabGroupManager;
  v10 = [(WBWindowState *)self->_windowState localTabGroup];
  v11 = [v10 uuid];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__BrowserController_loadCloudTabsForDeviceRestoration___block_invoke_2;
  v13[3] = &unk_2781D7038;
  v12 = v8;
  v14 = v12;
  [(WBTabGroupManager *)tabGroupManager updateTabsInTabGroupWithUUID:v11 persist:1 usingBlock:v13];
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

- (void)tabDocumentDidCompleteCheckForAppBanner:(id)a3
{
  v6 = a3;
  if ([(BrowserController *)self _canUpdateInterfaceWithTabDocument:v6])
  {
    v4 = [v6 appBanner];

    if (v4)
    {
      v5 = [v6 appBanner];
      [(BrowserController *)self _setShowingAppBanner:v5 isShowing:1];
    }
  }
}

- (BOOL)tabDocumentShouldDeferAppBannerRemoval:(id)a3
{
  v3 = [(BrowserRootViewController *)self->_rootViewController refreshControl];
  v4 = [v3 isRefreshing];

  return v4;
}

- (void)removeAppBannerFromTabDocument:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [v7 appBanner];
  [v7 setAppBanner:0];
  [v7 setAppBannerRemovalWasDeferred:0];
  if (([(BrowserController *)self _setShowingOverlayForBanner:v6 showing:0]& 1) == 0)
  {
    [(BannerController *)self->_bannerController setAppBanner:0 animated:v4];
  }
}

- (void)setAppBannerPinnedToTop:(BOOL)a3 forTabDocument:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [v6 appBanner];
  v8 = [v7 isPinnedToTop];

  if (v8 != v4)
  {
    v9 = [v6 appBanner];
    if (v4)
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
    v16 = v4;
    v14 = v9;
    v15 = self;
    v12 = v9;
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

- (void)tabDocumentWillShowInlineDialog:(id)a3
{
  v5 = a3;
  v4 = [(TabController *)self->_tabController activeTabDocument];

  if (v4 == v5)
  {
    [(BrowserController *)self setFavoritesAreEmbedded:0 animated:1];
    [(BrowserController *)self showBars];
  }
}

- (void)tabDocumentWillDismissInlineDialog:(id)a3
{
  v5 = a3;
  if ([v5 isShowingSystemStartPage])
  {
    v4 = [(TabController *)self->_tabController activeTabDocument];

    if (v4 == v5)
    {
      [(BrowserController *)self setFavoritesAreEmbedded:1 animated:1];
    }
  }
}

- (void)tabDocument:(id)a3 didClearLibraryType:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(LibraryController *)self->_libraryController clearPresentedItemController];
  [(TabController *)self->_tabController openTab:v7 navigatedFromLibraryType:v6];
}

- (void)tabDocument:(id)a3 presentViewControllerAnimated:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 presentingViewController];

  if (v8)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v7 presentingViewController];
      objc_claimAutoreleasedReturnValue();
      [BrowserController tabDocument:presentViewControllerAnimated:];
    }
  }

  v10 = [(TabController *)self->_tabController activeTabDocument];
  if (v10 != v6)
  {
    goto LABEL_10;
  }

  v11 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([v11 presentationState] == 1)
  {

LABEL_9:
LABEL_10:

    goto LABEL_11;
  }

  v12 = [v11 presentationState] == 2;

  if (v12)
  {
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_viewControllerToDismissWhileBeingPresented);
  v19 = WeakRetained == 0;

  if (v19)
  {
    v20 = [(BrowserController *)self viewControllerToPresentFrom];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __63__BrowserController_tabDocument_presentViewControllerAnimated___block_invoke;
    v21[3] = &unk_2781D61F8;
    v21[4] = self;
    v22 = v7;
    [v20 presentViewController:v22 animated:1 completion:v21];

    goto LABEL_16;
  }

LABEL_11:
  viewControllersPendingPresentation = self->_viewControllersPendingPresentation;
  if (!viewControllersPendingPresentation)
  {
    v16 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v17 = self->_viewControllersPendingPresentation;
    self->_viewControllersPendingPresentation = v16;

LABEL_15:
    [(NSMapTable *)self->_viewControllersPendingPresentation setObject:v7 forKey:v6];
    goto LABEL_16;
  }

  v14 = [(NSMapTable *)viewControllersPendingPresentation objectForKey:v6];
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

- (void)tabDocument:(id)a3 dismissViewControllerAnimated:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_viewControllersPendingPresentation objectForKey:v10];

  if (v7 == v6)
  {
    [(NSMapTable *)self->_viewControllersPendingPresentation removeObjectForKey:v10];
  }

  else
  {
    v8 = [v6 presentingViewController];
    if (v8 && (v9 = [v6 isBeingPresented], v8, !v9))
    {
      [v6 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      objc_storeWeak(&self->_viewControllerToDismissWhileBeingPresented, v6);
    }
  }
}

- (BOOL)tabDocumentCanCloseWindow:(id)a3
{
  v4 = a3;
  v5 = [(TabController *)self->_tabController currentTabs];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(BrowserController *)self viewControllerToPresentFrom];
    v8 = [v7 presentedViewController];
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tabDocumentDidChangeSafeAreaShouldAffectObscuredInsets:(id)a3
{
  [(BrowserRootViewController *)self->_rootViewController updateWebViewSizeAttributes];
  [(BrowserController *)self updateExposedScrollViewRect];
  needsImmediateLayoutForWebViewObscuredInsetsUpdate = self->_needsImmediateLayoutForWebViewObscuredInsetsUpdate;
  self->_needsImmediateLayoutForWebViewObscuredInsetsUpdate = 1;
  [(BrowserController *)self updateWebViewObscuredInsets];
  self->_needsImmediateLayoutForWebViewObscuredInsetsUpdate = needsImmediateLayoutForWebViewObscuredInsetsUpdate;
}

- (id)pageZoomPreferenceManagerForTabDocument:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserWindowController);
  if ([v4 isPrivateBrowsingEnabled])
  {
    v6 = [WeakRetained privateBrowsingPageZoomManager];
  }

  else
  {
    v7 = [WeakRetained perSitePreferencesVendor];
    v6 = [v7 pageZoomPreferenceManager];
  }

  return v6;
}

- (void)tabDocumentDidChangeCanStopLoadingState:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedActivityViewController);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [WeakRetained updateReloadActivity];
  }

  v4 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
  [v4 updateVisibleContextMenu];
}

- (BOOL)tabDocumentShouldFillStringForFind:(id)a3
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

- (BOOL)tabDocumentCanFindNextOrPrevious:(id)a3
{
  if (![(BrowserController *)self _showingTabDocumentWithURL])
  {
    return 0;
  }

  v3 = [MEMORY[0x277CE3850] _stringForFind];
  v4 = [v3 length] != 0;

  return v4;
}

- (int64_t)orderIndexForTab:(id)a3
{
  v4 = a3;
  v5 = [v4 wbTab];
  v6 = [v5 tabGroupUUID];

  if (v6)
  {
    v7 = [(TabController *)self->_tabController activeTabGroupUUID];
    if (WBSIsEqual())
    {
    }

    else
    {
      v8 = [(TabController *)self->_tabController windowState];
      v9 = [v8 privateTabGroup];
      v10 = [v9 uuid];
      v11 = WBSIsEqual();

      if (!v11)
      {
        v14 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:v6];
        v17 = [v14 tabs];
        v18 = [v4 wbTab];
        v15 = [v17 indexOfObject:v18];

        goto LABEL_9;
      }
    }
  }

  v12 = [v4 isPrivateBrowsingEnabled];
  tabController = self->_tabController;
  if (v12)
  {
    [(TabController *)tabController privateTabs];
  }

  else
  {
    [(TabController *)tabController normalTabs];
  }
  v14 = ;
  v15 = [v14 indexOfObject:v4];
LABEL_9:

  return v15;
}

- (void)_updateCurrentPageBannerViewBeforeContinuousTransition
{
  if (a1)
  {
    v1 = [*(a1 + 80) topBannerView];
    [v1 removeFromSuperview];
  }
}

- (id)_cachedDocumentForContinuousReadingItem:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 cachedDocumentOnContinuousTransition];
    v5 = [v3 readingListBookmark];
    v6 = [v5 identifier];
    if (v6 == [v4 readingListBookmarkID])
    {
      v7 = [v4 webView];

      v8 = v7 == 0;
      if (v7)
      {
        v9 = v4;
      }

      else
      {
        v9 = 0;
      }

      if (!v8)
      {
        v4 = 0;
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

- (void)_startLoadDocument:(void *)a3 continuousReadingItem:
{
  v12 = a2;
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 URL];
    v8 = [v6 readingListBookmark];
    v9 = [a1 tabController];
    v10 = [v9 activeTabDocument];
    v11 = [v10 sessionState];

    [v12 restoreSessionState:v11 andNavigate:0];
    [v12 loadURLForContinuousReadingList:v7 fromBookmark:v8];
  }
}

- (void)loadNextContinuousDocumentIfNeeded
{
  if (a1)
  {
    if (([a1[20] isLoading] & 1) == 0 && (objc_msgSend(a1[20], "didFinishDocumentLoad") & 1) == 0)
    {
      [(BrowserController *)a1 _prepareTabDocumentForNextContinuousItemIfNeeded];
      v2 = [a1[10] previewView];
      if (!v2 || (v8 = v2, [a1[10] previewView], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isPrefetchingDisabled"), v3, v8, (v4 & 1) == 0))
      {
        if (([a1[10] isCommittingToContinuousDocument] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAC38], "processInfo"), v9 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v9, "isLowPowerModeEnabled"), v9, (v5 & 1) == 0))
        {
          v6 = a1[20];
          v10 = [a1 continuousReadingController];
          v7 = [v10 nextReadingListItem];
          [(BrowserController *)a1 _startLoadDocument:v6 continuousReadingItem:v7];
        }
      }
    }
  }
}

- (void)_commitToTabDocumentForNextContinuousItem
{
  if (a1)
  {
    v4 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    v2 = [v4 isNetworkReachable];

    v5 = [MEMORY[0x277D499B8] sharedLogger];
    [v5 didOpenReadingListItemWithReachableNetwork:v2 isContinuousTransition:1];

    v6 = [(BrowserController *)a1 _tabDocumentForNextContinuousItem];
    v3 = [a1[10] previewView];
    [v3 setPrefetchingDisabled:0];

    [(BrowserController *)a1 loadNextContinuousDocumentIfNeeded];
    [a1 setNextContinuousItemDocument:0];
    [v6 setWantsReaderWhenActivated:{objc_msgSend(a1, "readerShouldBeShownIfPossible")}];
    [(BrowserController *)a1 _commitToSpeculativeLoadForDocument:v6];
    [v6 setWantsReaderWhenActivated:0];
  }
}

- (void)_commitToTabDocumentForPreviousContinuousItem
{
  if (a1)
  {
    v3 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    v2 = [v3 isNetworkReachable];

    v4 = [MEMORY[0x277D499B8] sharedLogger];
    [v4 didOpenReadingListItemWithReachableNetwork:v2 isContinuousTransition:1];

    v5 = [a1[10] previousItemPreviewView];
    [v5 setPrefetchingDisabled:0];

    [(BrowserController *)a1 _loadPreviousContinuousDocumentIfNeeded];
    v6 = [a1 previousContinuousItemDocument];
    [a1 setPreviousContinuousItemDocument:0];
    [v6 setWantsReaderWhenActivated:{objc_msgSend(a1, "readerShouldBeShownIfPossible")}];
    [(BrowserController *)a1 _commitToSpeculativeLoadForDocument:v6];
    [v6 setWantsReaderWhenActivated:0];
  }
}

- (void)_loadPreviousContinuousDocumentIfNeeded
{
  if (a1)
  {
    v2 = [a1 continuousReadingController];
    v7 = [v2 previousReadingListItem];

    if (v7)
    {
      if (([a1[26] isLoading] & 1) == 0 && (objc_msgSend(a1[26], "didFinishDocumentLoad") & 1) == 0)
      {
        [(BrowserController *)a1 _preparePreviousContinuousDocumentIfNeeded];
        v3 = [a1[10] previousItemPreviewView];
        v4 = [v3 isPrefetchingDisabled];

        if ((v4 & 1) == 0)
        {
          if (([a1[10] isCommittingToContinuousDocument] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAC38], "processInfo"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isLowPowerModeEnabled"), v5, (v6 & 1) == 0))
          {
            [(BrowserController *)a1 _startLoadDocument:v7 continuousReadingItem:?];
          }
        }
      }
    }
  }
}

- (double)_frameForCurrentPageBannerView
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 288) bounds];
  v3 = v2;
  v4 = *(a1 + 264);
  [*(a1 + 288) bounds];
  [v4 sidebarObscuredInsetsForRect:*(a1 + 288) inCoordinateSpace:?];
  v6 = v5;
  v7 = [*(a1 + 80) topBannerView];
  [v7 bounds];
  CGRectGetHeight(v10);
  v8 = v3 + v6;

  [(BrowserController *)a1 _verticalOffsetForContinuousReadingBanner];
  return v8;
}

- (void)_preparePreviousContinuousDocumentIfNeeded
{
  if (a1)
  {
    v2 = [a1 continuousReadingController];
    v12 = [v2 previousReadingListItem];

    v3 = v12;
    if (v12 && !a1[26])
    {
      v4 = [(BrowserController *)a1 _cachedDocumentForContinuousReadingItem:v12];
      v5 = a1[26];
      a1[26] = v4;

      v6 = a1[26];
      if (!v6)
      {
        v7 = [[TabDocument alloc] initForBackgroundLoadingWithBrowserController:a1 relatedWebView:0 webViewToCloneSessionStorageFrom:0];
        v8 = a1[26];
        a1[26] = v7;

        v6 = a1[26];
      }

      [v6 beginSuppressingProgressAnimation];
      [a1[26] setAllowsRemoteInspection:0];
      if ([a1 readerShouldBeShownIfPossible] && (objc_msgSend(a1[26], "readerWebView"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v10 = [a1[26] readerWebView];
      }

      else
      {
        v10 = [a1[26] webView];
      }

      [a1[10] didCreateWebViewForPreviousDocument:v10];
      if (([a1[26] suppressWebExtensionEvents] & 1) == 0)
      {
        v11 = [a1[26] webExtensionsController];
        [v11 didOpenTab:a1[26]];
      }

      v3 = v12;
    }
  }
}

- (void)setCurrentContinuousReadingItem:(id *)a1
{
  v6 = a2;
  if (a1)
  {
    v3 = [a1[10] currentItem];
    if (v3 == v6)
    {
    }

    else
    {
      v4 = [a1[10] currentItem];
      v5 = [v4 isEqual:v6];

      if ((v5 & 1) == 0)
      {
        [a1[10] setCurrentItem:v6];
        [(BrowserController *)a1 _updateCurrentPageBannerView];
        [a1 didChangeContinuousReadingItemInActiveDocument];
      }
    }
  }
}

- (void)_setContinuousReadingPreviewView:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v3 = [a1[10] previewView];
    if (v3 != v4)
    {
      [v3 removeFromSuperview];
      [a1[10] setPreviewView:v4];
      [v4 setAutoresizingMask:10];
      [a1 updateContinuousPreviewViewFrame];
      [a1[36] addSubview:v4];
      [a1[33] updateWebViewSizeAttributes];
    }
  }
}

- (void)markReadingListBookmark:(id)a3 asRead:(BOOL)a4 postNotification:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v7 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  [(WebBookmarkCollection *)v7 markReadingListBookmark:v8 asRead:a4 postNotification:v5];
}

- (void)continuousReadingViewController:(id)a3 scrollViewDidScroll:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v6 contentOffset];
  v8 = v7;
  [v10 scrollOffsetYForCurrentDocument];
  if (v8 >= v9)
  {
    [(BrowserController *)&self->super.super.super.isa prefetchNextContinuousItemIfNeeded];
  }

  else
  {
    [(BrowserController *)&self->super.super.super.isa _loadPreviousContinuousDocumentIfNeeded];
  }
}

- (void)continuousReadingViewControllerWillCommitToLoadNextItem:(id)a3
{
  [(BrowserController *)self _updateCurrentPageBannerViewBeforeContinuousTransition];
  v4 = [(BrowserController *)self tabController];
  v5 = [v4 activeTabDocument];
  [(BrowserController *)self setCachedDocumentOnContinuousTransition:v5];

  [(TabDocument *)self->_nextContinuousItemDocument estimatedProgress];
  if (v6 == 1.0)
  {
    [(StatusBarSpinnerController *)self->_spinnerController setEnabled:0];
  }

  [(BrowserController *)&self->super.super.super.isa _commitToTabDocumentForNextContinuousItem];
  spinnerController = self->_spinnerController;

  [(StatusBarSpinnerController *)spinnerController setEnabled:1];
}

- (void)continuousReadingViewControllerCommitToLoadPreviousItem:(id)a3
{
  [(BrowserController *)self _updateCurrentPageBannerViewBeforeContinuousTransition];
  v4 = [(BrowserController *)self tabController];
  v5 = [v4 activeTabDocument];
  [(BrowserController *)self setCachedDocumentOnContinuousTransition:v5];

  [(BrowserController *)&self->super.super.super.isa _commitToTabDocumentForPreviousContinuousItem];
}

- (void)continuousReadingViewController:(id)a3 didCommitToLoadItem:(id)a4
{
  v6 = a4;
  [(BrowserController *)&self->super.super.super.isa _updateCurrentPageBannerView];
  [(BrowserController *)self setCachedDocumentOnContinuousTransition:0];
  v5 = [v6 readingListBookmark];
  [(BrowserController *)self markReadingListBookmark:v5 asRead:1 postNotification:1];
}

- (double)continuousReadingViewControllerNextWebViewLandingOffset:(id)a3 includeBottomBar:(BOOL)a4
{
  v4 = a4;
  [(BrowserController *)self updateDynamicBarGeometry];
  v6 = [(BrowserController *)&self->super.super.super.isa tabContentContainerView];
  [(BrowserRootViewController *)self->_rootViewController navigationBarFrameInCoordinateSpace:v6];
  MaxY = CGRectGetMaxY(v18);
  [v6 frame];
  v8 = MaxY + CGRectGetMinY(v19);
  if (v4)
  {
    [(BrowserRootViewController *)self->_rootViewController bottomToolbarFrameInCoordinateSpace:v6 includeKeyboard:1];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v6 bounds];
    v22.origin.x = v10;
    v22.origin.y = v12;
    v22.size.width = v14;
    v22.size.height = v16;
    v21 = CGRectIntersection(v20, v22);
    v8 = v8 + v21.size.height;
  }

  return v8;
}

- (void)_automaticPasswordInputViewNotification:(id)a3
{
  v14 = a3;
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [v14 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277CDB958]];
  v7 = [v4 initWithUUIDString:v6];

  v8 = [v14 userInfo];
  v9 = [v8 safari_numberForKey:*MEMORY[0x277CDB968]];

  if (v9)
  {
    v10 = [v9 integerValue];
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_8;
      }

      v11 = [(TabController *)self->_tabController activeTabDocument];
      [v11 userDeclinedAutomaticStrongPasswordForCurrentDomainOnTabWithUUID:v7];

      v12 = [(TabController *)self->_tabController activeTabDocument];
      [v12 removeAutomaticPasswordButton];
    }

    else
    {
      if (![MEMORY[0x277D49A08] isPasswordsAppInstalled])
      {
        goto LABEL_8;
      }

      v12 = [(TabController *)self->_tabController tabDocumentWithUUID:v7];
      v13 = [v12 autoFillController];
      [v13 fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution:1 completionHandler:&__block_literal_global_1151];
    }
  }

LABEL_8:
}

- (void)_automaticPasswordInputViewAutoFillContextProviderRequiredNotification:(id)a3
{
  v12 = a3;
  tabController = self->_tabController;
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [v12 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x277CDB958]];
  v8 = [v5 initWithUUIDString:v7];
  v9 = [(TabController *)tabController tabDocumentWithUUID:v8];

  v10 = [v12 userInfo];
  v11 = [v10 objectForKey:*MEMORY[0x277CDB960]];

  [v11 setAutoFillContextProvider:v9];
}

- (uint64_t)_isTabDocumentFrontMostForDigitalHealth:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 184);
    if (v5)
    {
      a1 = v5 == v3;
    }

    else
    {
      v6 = [*(a1 + 328) activeTabDocument];
      a1 = v6 == v4;
    }
  }

  return a1;
}

- (id)_screenTimeHostingViewControllerForTabDocument:(id)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 23);
    if (v4 == v3)
    {
      v5 = [v4 linkPreviewViewController];
    }

    else
    {
      v5 = *(a1 + 33);
    }

    a1 = v5;
  }

  return a1;
}

- (id)_screenTimeOverlayViewControllerForTabDocument:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(BrowserController *)a1 _screenTimeHostingViewControllerForTabDocument:v3];
    v5 = [v4 screenTimeOverlayViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)policyDidChangeForDigitalHealthManager:(id)a3
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

- (void)_toggleDigitalHealthOverlayGivenOverlayStates:(void *)a3 forTabDocuments:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = v6;
    obj = v6;
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
          v12 = [v11 safari_canonicalURL];
          v13 = [v5 objectForKeyedSubscript:v12];
          v14 = [v13 integerValue];

          [v10 setPolicy:v14];
          if ((v14 - 1) >= 5)
          {
            if (!v14 && ([a1 tabDocumentIsBackgroundPreloading:v10] & 1) == 0)
            {
              [(BrowserController *)a1 _fullyRemoveDigitalHealthTreatmentForTabDocumentIfNecessary:v10];
            }
          }

          else
          {
            [(BrowserController *)a1 _showDigitalHealthOverlayForTabDocument:v10 withPolicy:v14 animated:1];
          }

          ++v9;
        }

        while (v7 != v9);
        v15 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
        v7 = v15;
      }

      while (v15);
    }

    v6 = v16;
  }
}

- (void)_fullyRemoveDigitalHealthTreatmentForTabDocumentIfNecessary:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(BrowserController *)a1 _screenTimeOverlayViewControllerForTabDocument:v3];
    if (([(BrowserController *)a1 _isTabDocumentFrontMostForDigitalHealth:v3]& 1) != 0)
    {
      [v3 setPolicy:0];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __81__BrowserController__fullyRemoveDigitalHealthTreatmentForTabDocumentIfNecessary___block_invoke;
      v5[3] = &unk_2781D61F8;
      v5[4] = a1;
      v6 = v3;
      [v4 hideBlockingViewControllerWithCompletionHandler:v5];
    }
  }
}

- (double)_frameForScreenTimeOverlayViewControllerView
{
  if (!a1)
  {
    return 0.0;
  }

  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    [a1[117] bounds];
    return v2;
  }

  else
  {
    v4 = [a1[33] documentAndTopBarsContainerView];
    [v4 bounds];
    v6 = v5;
    [a1[33] obscuredInsetsForRect:v4 inCoordinateSpace:?];
    [a1 _shouldUseNarrowLayout];
    UIEdgeInsetsReplace();
    v3 = v6 + v7;
  }

  return v3;
}

- (void)tabDocument:(id)a3 didChangePIPState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = v6;
  if (v4)
  {
    v7 = v6;
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

- (void)switchToTabWithUUID:(id)a3 inWindowWithUUID:(id)a4 forTabGroupWithUUID:(id)a5
{
  v24 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(BrowserController *)self browserWindowController];
  v11 = [v10 browserControllerWithUUID:v8];

  if (v11)
  {
    v12 = [(BrowserController *)v11 tabController];
    v13 = [v12 tabWithUUID:v24];

    if (v13)
    {
      v14 = [(BrowserController *)v11 tabController];
      v15 = [v14 currentTabs];
      v16 = [v15 indexOfObjectIdenticalTo:v13];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [(TabController *)self->_tabController activeTabDocument];
        v18 = [v13 browserController];
        [(BrowserController *)&self->super.super.super.isa _requestActivationOfBrowserController:v18];

        v19 = [(BrowserController *)v11 tabController];
        [v19 setActiveTab:v13 animated:0];

        [(BrowserController *)v11 dismissTransientUIAnimated:1];
        if ([v17 isBlank] && (-[TabController currentTabs](self->_tabController, "currentTabs"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v21 >= 2))
        {
          [(TabController *)self->_tabController closeTab:v17 animated:0];
        }

        else if (v11 != self)
        {
          [(BrowserController *)self cancelFavorites];
        }
      }
    }

    else if (v9 && ![(TabController *)self->_tabController switchToTabWithUUID:v24 inTabGroupWithUUID:v9])
    {
      v22 = [(TabController *)self->_tabController browserControllerContainingLocalTabGroupUUID:v9];

      if (v22)
      {
        [(BrowserController *)&self->super.super.super.isa _requestActivationOfBrowserController:v22];
        v23 = [(BrowserController *)v22 tabController];
        [v23 switchToTabWithUUID:v24 inTabGroupWithUUID:v9];

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

- (BOOL)containsTabWithUUID:(id)a3
{
  v3 = [(TabController *)self->_tabController tabWithUUID:a3];
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

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v103[1] = *MEMORY[0x277D85DE8];
  v87 = a3;
  v90 = a4;
  v8 = a5;
  v9 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v90 persistentIdentifier];
    v11 = [(BrowserController *)self UUID];
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Connecting to scene session with sceneID = %{public}@, uuid = %{public}@", buf, 0x16u);
  }

  v12 = v87;
  [v12 setDelegate:self];
  v13 = [v12 screenshotService];
  [v13 setDelegate:self];

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
  [WeakRetained browserController:self willConnectToScene:v12 session:v90 options:v8];
  v17 = [WeakRetained sidebarUIProxyForBrowserController:self];
  [(BrowserController *)self _setSidebarUIProxy:v17];

  if (!self->_didConnectToScene)
  {
    [(BrowserController *)self setUpWithURL:0 launchOptions:0];
    self->_didConnectToScene = 1;
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browserController:self didConnectToScene:v12 session:v90 options:v8];
  }

  [(WBWindowState *)self->_windowState setNewlyCreated:0];
  v88 = objc_loadWeakRetained(&self->_browserWindowController);
  if (!v8)
  {
    v89 = 0;
LABEL_14:
    v19 = 0;
    goto LABEL_16;
  }

  v18 = [MEMORY[0x277CC1EF0] _sf_windowCreationActivityFromSceneConnectionOptions:v8];
  if (v18)
  {
    v89 = v18;
    if ([v88 modeForNewWindowUserActivity:?] == 1)
    {
      [(BrowserController *)self setPrivateBrowsingEnabled:1];
    }

    goto LABEL_14;
  }

  v20 = [v8 userActivities];
  v89 = [v20 anyObject];

  userActivityController = self->_userActivityController;
  v22 = [v89 activityType];
  v19 = [(UserActivityController *)userActivityController willContinueUserActivityWithType:v22];

LABEL_16:
  v23 = [v8 shortcutItem];
  if (v23)
  {
    v24 = WBS_LOG_CHANNEL_PREFIXTabs();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v23 type];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_215819000, v24, OS_LOG_TYPE_DEFAULT, "Handling session connection as shortcutItem of type: %{public}@", buf, 0xCu);
    }

    [(BrowserController *)self windowScene:v12 performActionForShortcutItem:v23 completionHandler:&__block_literal_global_1161];
    goto LABEL_44;
  }

  if (!v19)
  {
    v28 = [v89 _sf_windowCreationNavigationIntent];
    if (v28 || ([(BrowserController *)self _openURLNavigationIntentForSceneConnectionOptions:v8], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v29 = WBS_LOG_CHANNEL_PREFIXTabs();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v28 privacyPreservingDescription];
        *buf = 138543362;
        *&buf[4] = v30;
        _os_log_impl(&dword_215819000, v29, OS_LOG_TYPE_DEFAULT, "Handling session connection as navigationIntent: %{public}@", buf, 0xCu);
      }

      if ([v28 policy] == 4)
      {
        v31 = [(BrowserController *)self browserWindowController];
        v32 = [v28 sourceWindowUUID];
        v33 = [v31 browserControllerWithUUID:v32];
        v34 = [v33 activeProfileIdentifier];

        if ([v34 length])
        {
          [(TabController *)self->_tabController setActiveProfileIdentifier:v34];
        }
      }

      if ([v28 type] == 9)
      {
        v35 = [v28 URL];
        v36 = [v35 safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL];
        v37 = [v36 second];

        if ([v37 length])
        {
          [(TabController *)self->_tabController setActiveProfileIdentifier:v37];
        }
      }

      if (![(BrowserController *)self shouldStayInFocusedTabGroupForExternalLinks])
      {
        [(TabController *)self->_tabController switchOutOfSyncedTabGroup];
      }

      v38 = [v8 URLContexts];
      v39 = [(BrowserController *)self handleOpenURLContextsForReadingListWidget:v38];

      if ((v39 & 1) == 0)
      {
        v40 = +[Application sharedApplication];
        v41 = [v40 needsFocusProfileUpdate];

        if (v41)
        {
          objc_storeStrong(&self->_navigationIntentPendingProfileUpdate, v28);
        }

        else
        {
          [(BrowserController *)self handleNavigationIntent:v28 completion:0];
        }
      }

      [v89 _sf_invalidateWindowCreationData];
      goto LABEL_43;
    }

    v46 = [v89 _sf_windowCreationTabUUID];
    if (v46)
    {
    }

    else
    {
      v47 = [v89 _sf_windowCreationTabGroupUUID];
      v48 = v47 == 0;

      if (v48)
      {
        v86 = [v89 safari_windowCreationTabUUIDs];
        if (v86)
        {
          v83 = [v89 safari_windowCreationSelectedTabUUID];
          v61 = [v89 _sf_windowCreationSourceBrowserControllerUUID];
          v62 = [v88 browserControllerWithUUID:v61];
          v85 = [v62 tabController];

          v63 = [v85 activeProfileIdentifier];
          [(BrowserController *)self setActiveProfileIdentifier:v63];

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
          v64 = v85;
          v95 = v64;
          v96 = self;
          v80 = v83;
          v97 = v80;
          v98 = buf;
          v65 = [v86 safari_mapAndFilterObjectsUsingBlock:v94];
          v66 = v65;
          tabController = self->_tabController;
          v68 = *(*&buf[8] + 40);
          v69 = v68;
          if (!v68)
          {
            v69 = [v65 firstObject];
          }

          [(TabController *)tabController replaceBlankActiveTabWithTabs:v66 andSelectTab:v69];
          if (!v68)
          {
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v74 = [v89 _sf_windowCreationRecentlyClosedTabUUID];
          v80 = v74;
          if (v74)
          {
            v75 = [(_SFBrowserSavedState *)self->_savedState tabStateDataForUUID:v74];
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

    v50 = [v89 _sf_windowCreationTabUUID];
    v86 = v50;
    if (v50)
    {
      v51 = self->_tabController;
      v52 = [v50 UUIDString];
      v80 = [(TabController *)v51 wbTabWithUUID:v52];
    }

    else
    {
      v80 = 0;
    }

    v84 = [v89 _sf_windowCreationTabGroupUUID];
    v81 = [v84 UUIDString];
    if (v81 || ([v80 tabGroupUUID], (v81 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v53 = [(TabController *)self->_tabController tabGroupManager];
      v54 = [v53 tabGroupWithUUID:v81];
      v82 = [v54 profileIdentifier];
    }

    else
    {
      if (!v86)
      {
        v81 = 0;
        v82 = 0;
        [(TabController *)self->_tabController setActiveProfileIdentifier:0];
LABEL_61:
        if (v84)
        {
          v55 = WBS_LOG_CHANNEL_PREFIXTabs();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v84;
            _os_log_impl(&dword_215819000, v55, OS_LOG_TYPE_DEFAULT, "Connecting a scene session with explicit tab group: %{public}@", buf, 0xCu);
          }

          if (v86)
          {
            v56 = [(BrowserController *)self tabController];
            [v56 switchToTabWithUUID:v86 inTabGroupWithUUID:v84];
LABEL_71:

            goto LABEL_72;
          }

          v56 = [v84 UUIDString];
          v60 = [(BrowserController *)self tabController];
          [v60 setActiveTabGroupUUID:v56];
        }

        else
        {
          if (!v86)
          {
LABEL_72:

LABEL_73:
            v28 = 0;
LABEL_43:

            goto LABEL_44;
          }

          v57 = [v89 _sf_windowCreationSourceBrowserControllerUUID];
          v58 = [v88 browserControllerWithUUID:v57];
          v56 = [v58 tabController];

          v59 = [v56 tabWithUUID:v86];
          v60 = v59;
          if (v59)
          {
            -[BrowserController setPrivateBrowsingEnabled:](self, "setPrivateBrowsingEnabled:", [v59 isPrivateBrowsingEnabled]);
            [(TabController *)self->_tabController replaceBlankActiveTabWithTab:v60];
          }

          else if (v80)
          {
            -[BrowserController setPrivateBrowsingEnabled:](self, "setPrivateBrowsingEnabled:", [v80 isPrivateBrowsing]);
            v71 = self->_tabController;
            v103[0] = v80;
            v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:1];
            v73 = [(TabController *)self->_tabController activeTabGroup];
            [(TabController *)v71 moveWBTabs:v72 toTabGroup:v73];

            v60 = 0;
            [(TabController *)self->_tabController removeSingleBlankTabFromActiveTabGroup];
          }
        }

        goto LABEL_71;
      }

      v53 = [(TabController *)self->_tabController pinnedTabsManager];
      v54 = [v86 UUIDString];
      v70 = [v53 containerForTabWithUUID:v54];
      v82 = [v70 activeProfileIdentifier];

      v81 = 0;
    }

    [(TabController *)self->_tabController setActiveProfileIdentifier:v82];
    goto LABEL_61;
  }

  v26 = WBS_LOG_CHANNEL_PREFIXTabs();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v89 activityType];
    *buf = 138543362;
    *&buf[4] = v27;
    _os_log_impl(&dword_215819000, v26, OS_LOG_TYPE_DEFAULT, "Handling session connection as generic NSUserActivity of type: %{public}@", buf, 0xCu);
  }

  [(BrowserController *)self scene:v12 continueUserActivity:v89];
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
  v43 = v90;
  v92 = v43;
  [v42 doAfterUIBecomesActive:v91];

  v44 = [v8 cloudKitShareMetadata];
  if (v44)
  {
    [(BrowserController *)self windowScene:v12 userDidAcceptCloudKitShareWithMetadata:v44];
  }

  v45 = [MEMORY[0x277D7B588] sharedProxy];
  [v45 addSyncObserver:self];

  [(WBTabGroupManager *)self->_tabGroupManager addTabGroupObserver:self];
}

- (id)_openURLNavigationIntentForSceneConnectionOptions:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 webClipID];
      if (v4)
      {
        v5 = [MEMORY[0x277D75D70] _sf_webClipWithUUID:v4];
        if (v5)
        {
          v6 = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
          v7 = [v6 navigationIntentWithWebClip:v5];
          goto LABEL_11;
        }
      }
    }

    v4 = [v3 URLContexts];
    if ([v4 count])
    {
      v5 = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
      v6 = [v4 allObjects];
      v7 = [v5 navigationIntentWithOpenURLContexts:v6];
    }

    else
    {
      v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v5 = [v8 stringForKey:@"URLToLoadInPlaceOfStartPage"];

      if (!v5)
      {
        v9 = 0;
        goto LABEL_12;
      }

      v6 = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
      v7 = [v6 navigationIntentWithText:v5];
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

- (uint64_t)handleOpenURLContextsForReadingListWidget:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count] == 1)
  {
    v5 = [v4 anyObject];
    v6 = [v5 URL];

    v7 = [v6 safari_isReadingListURL];
    if (v7)
    {
      v8 = [v6 safari_readingListItemUUIDString];
      if (v8)
      {
        [a1 openBookmarkWithUUIDString:v8];
      }

      else
      {
        v9 = [a1 currentBookmarksCollection];
        v10 = [v9 isEqualToString:@"ReadingListCollection"];

        if ((v10 & 1) == 0)
        {
          [(BrowserController *)a1 _switchToCollectionOrToggleSidebar:?];
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
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

- (void)activateWebClipWithID:(id)a3
{
  v4 = [MEMORY[0x277D75D70] _sf_webClipWithUUID:a3];
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
  v3 = [(TabController *)self->_tabController activeTabDocument];
  webClipIDPendingYttriumState = self->_webClipIDPendingYttriumState;
  v8 = v3;
  v5 = [v3 webClipID];
  LODWORD(webClipIDPendingYttriumState) = [(NSUUID *)webClipIDPendingYttriumState isEqual:v5];

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
  v2 = [(TabController *)self->_tabController activeTabDocument];
  [v2 validateWebClip];
}

- (void)windowScene:(id)a3 userDidAcceptCloudKitShareWithMetadata:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v6 safari_setOriginatingWindowScene:v10];
  v7 = [(BrowserController *)self tabGroupManager];
  [v7 acceptTabGroupShareWithMetadata:v6 handler:self];

  v8 = [(BrowserController *)self tabController];
  v9 = [v6 share];
  [v8 attemptToSelectTabGroupFromShare:v9];
}

- (void)_postUserDidAcceptCloudKitShareActivityNoticeWithMetadata:(uint64_t)a1
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = a2;
  if (a1)
  {
    v22 = a1;
    [*(a1 + 328) allTabGroups];
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
            v8 = [v23 share];
            v9 = [v8 recordID];
            v10 = [v9 recordName];
            v11 = [v7 bookmark];
            v12 = [v11 serverID];
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
    v15 = [v23 share];
    v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277CBC098]];
    v17 = [v14 initWithTitleText:v16];

    v18 = MEMORY[0x277CCACA8];
    v19 = _WBSLocalizedString();
    v20 = [v18 stringWithFormat:v19];
    [v17 setMessageText:v20];

    v21 = [objc_alloc(MEMORY[0x277D28E48]) initWithContentViewController:v17];
    [v21 setDelegate:v22];
    [(BrowserController *)v22 _presentToastViewControllerQueuingIfNecessary:v21];

LABEL_13:
  }
}

- (void)tabGroupManager:(id)a3 didFinishAcceptingTabGroupShareWithMetadata:(id)a4 result:(int64_t)a5
{
  v14 = a3;
  v8 = a4;
  switch(a5)
  {
    case 3:
      [(BrowserController *)self _presentSharedTabGroupsUnsupportedError];
      break;
    case 2:
      v9 = [(BrowserController *)self tabGroupManager];
      v10 = [v8 share];
      v11 = [v9 tabGroupMatchingShare:v10];

      tabController = self->_tabController;
      v13 = [v11 uuid];
      [(TabController *)tabController displayAlreadyAcceptedSharedTabGroupWithUUID:v13];

      break;
    case 1:
      [(BrowserController *)self _presentSharedTabGroupsPendingAcceptanceError];
      break;
  }
}

- (void)_presentSharedTabGroupsPendingAcceptanceError
{
  if (a1)
  {
    v2 = _WBSLocalizedString();
    [(BrowserController *)a1 _presentSharedTabGroupErrorWithTitle:v2 message:0];
  }
}

- (void)_presentSharedTabGroupsUnsupportedError
{
  if (a1)
  {
    v2 = _WBSLocalizedString();
    [(BrowserController *)a1 _presentSharedTabGroupErrorWithTitle:v2 message:0];
  }
}

- (void)_presentSharedTabGroupErrorWithTitle:(void *)a3 message:
{
  v11 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [MEMORY[0x277D75110] alertControllerWithTitle:v11 message:v5 preferredStyle:1];
    v7 = MEMORY[0x277D750F8];
    v8 = _WBSLocalizedString();
    v9 = [v7 actionWithTitle:v8 style:1 handler:&__block_literal_global_1175];
    [v6 addAction:v9];

    v10 = [a1 viewControllerToPresentFrom];
    [v10 presentViewController:v6 animated:1 completion:0];
  }
}

- (void)tabGroupManager:(id)a3 selectProfileIdentifierForShareMetadata:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 safari_originatingWindowScene];
  v10 = [v7 share];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBC098]];

  v12 = MEMORY[0x277D28BA8];
  v13 = [(BrowserController *)self tabGroupManager];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __95__BrowserController_tabGroupManager_selectProfileIdentifierForShareMetadata_completionHandler___block_invoke;
  v15[3] = &unk_2781D70F8;
  v14 = v8;
  v16 = v14;
  [v12 presentDialogInScene:v9 forSharedTabGroupWithTitle:v11 tabGroupManager:v13 completionHandler:v15];
}

- (void)sceneDidDisconnect:(id)a3
{
  v14 = a3;
  v4 = [MEMORY[0x277D7B588] sharedProxy];
  [v4 removeSyncObserver:self];

  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained browserController:self didDisconnectFromScene:v14];

  [v14 setDelegate:0];
  v6 = [v14 screenshotService];
  [v6 setDelegate:0];

  objc_storeWeak(&self->_scene, 0);
  digitalHealthManager = self->_digitalHealthManager;
  self->_digitalHealthManager = 0;

  v8 = +[Application sharedApplication];
  [v8 updateShouldLockPrivateBrowsingWithTimerIfNecessary];

  v9 = +[Application sharedApplication];
  v10 = [v9 proxy];
  v11 = [v10 currentScene];
  v12 = [v11 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  setPrimaryWindowEntityFromBrowserController(v13);
}

- (void)sceneWillEnterForeground:(id)a3
{
  [(BrowserController *)self willEnterForeground];
  v4 = [(TabController *)self->_tabController activeTabDocument];
  [v4 updateUserActivity];

  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  [WeakRetained browserControllerDidEndObfuscating:self];
}

- (void)sceneDidBecomeActive:(id)a3
{
  v5 = a3;
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

- (void)sceneDidEnterBackground:(id)a3
{
  [(BrowserController *)self didEnterBackground];
  if ([(BrowserController *)self isPrivateBrowsingEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    [WeakRetained browserControllerWillBeginObfuscating:self];
  }
}

- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v9 = [WeakRetained interfaceOrientation];

  if (v9 != a5)
  {
    barManager = self->_barManager;

    [(_SFBarManager *)barManager setDownloadsItemNeedsLayout];
  }
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v5 = a4;
  v6 = self;
  v10 = v6;
  v7 = v5;
  v11 = v7;
  if (v6->_suspendedOrSuspending)
  {
    v8 = MEMORY[0x277D75D18];
    aBlock = MEMORY[0x277D85DD0];
    v13 = 3321888768;
    v14 = ___ZZ43__BrowserController_scene_openURLContexts__ENK3__2cvU13block_pointerFvvEEv_block_invoke;
    v15 = &__block_descriptor_48_ea8_32c56_ZTSKZ43__BrowserController_scene_openURLContexts__E3__2_e5_v8__0l;
    v16 = v6;
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
  if (([(BrowserController *)*a1 handleOpenURLContextsForReadingListWidget:?]& 1) == 0)
  {
    v2 = [MEMORY[0x277D28F40] builderWithModifierFlags:0];
    v3 = [a1[1] allObjects];
    v4 = [v2 navigationIntentWithOpenURLContexts:v3];

    if ([v4 type] == 9)
    {
      WeakRetained = objc_loadWeakRetained(*a1 + 93);
      v6 = [WeakRetained perSitePreferencesVendor];
      v7 = [v6 profilePreferenceManager];

      v8 = [v4 URL];
      v9 = [v8 safari_userVisibleHostWithoutWWWSubdomain];
      v10 = [v7 identifierForProfilePreferenceForDomain:v9];

      v11 = *a1;
      if (v10)
      {
        [v11 setActiveProfileIdentifier:v10];
      }

      else
      {
        v12 = [v11 tabController];
        [v12 updateFocusProfileEnteringForeground];
      }
    }

    v13 = *(*a1 + 41);
    v14 = [v4 URL];
    v15 = [v13 tabForURL:v14];

    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = [*a1 shouldStayInFocusedTabGroupForExternalLinks];
    }

    if ([v4 type] != 9 || objc_msgSend(v4, "externalURLSourceApplicationIsSpotlight") & 1 | ((v16 & 1) == 0))
    {
      [*(*a1 + 41) switchOutOfSyncedTabGroup];
    }

    v17 = +[Application sharedApplication];
    v18 = [v17 defaultWebExtensionsController];

    v19 = [v4 URL];
    v20 = [v19 safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL];

    v21 = [v20 second];
    if ([v21 length])
    {
      v22 = *(*a1 + 720);
      [*(*a1 + 41) setActiveProfileIdentifier:v21];
      if (v22 && [*a1 isInDefaultProfile] && (objc_msgSend(v20, "first"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "webExtensionForComposedIdentifier:", v23), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "allowedInPrivateBrowsing"), v24, v23, v25))
      {
        [*(*a1 + 41) selectPrivateTabGroup];
      }

      else
      {
        v26 = WBS_LOG_CHANNEL_PREFIXTabGroup();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *v29 = 0;
          _os_log_impl(&dword_215819000, v26, OS_LOG_TYPE_DEFAULT, "Will switch to local tab group for navigation intent handling.", v29, 2u);
        }

        [*(*a1 + 41) selectLocalTabGroup];
      }
    }

    v27 = [v2 prefersOpenInNewWindow];
    v28 = *a1;
    if (v27)
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
  v4 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v5 = [v4 BOOLForKey:*MEMORY[0x277D49C48]];

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

  v7 = [(TabController *)self->_tabController activeTabGroup];
  v8 = [v7 uuid];
  v9 = [v3 focusedTabGroupUUIDString];
  v10 = [v8 isEqualToString:v9];

  return v5 & v10;
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = self;
  v9 = v7;
  v10 = _Block_copy(a5);
  if (v8->_suspendedOrSuspending)
  {
    v11 = MEMORY[0x277D75D18];
    aBlock = MEMORY[0x277D85DD0];
    v17 = 3321888768;
    v18 = ___ZZ80__BrowserController_windowScene_performActionForShortcutItem_completionHandler__ENK3__3cvU13block_pointerFvvEEv_block_invoke;
    v19 = &__block_descriptor_56_ea8_32c93_ZTSKZ80__BrowserController_windowScene_performActionForShortcutItem_completionHandler__E3__3_e5_v8__0l;
    v20 = v8;
    v21 = v9;
    v22 = _Block_copy(v10);
    v12 = _Block_copy(&aBlock);

    [v11 performWithoutAnimation:{v12, v8, v9, v10, aBlock, v17, v18, v19}];
  }

  else
  {
    shortcutController = v8->_shortcutController;
    v14 = [v9 type];
    v15 = [(ApplicationShortcutController *)shortcutController handleShortcutItemWithType:v14];

    (*(v10 + 2))(v10, v15);
  }
}

- (void)screenshotService:(id)a3 generatePDFRepresentationWithCompletion:(id)a4
{
  v5 = a4;
  v6 = WBS_LOG_CHANNEL_PREFIXPrinting();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_DEFAULT, "User took a screenshot, will attempt to generate a PDF representation", buf, 2u);
  }

  v7 = [(BrowserController *)self tabController];
  v8 = [v7 activeTabDocument];

  if ([v8 isBlank])
  {
    goto LABEL_9;
  }

  v9 = [(BrowserController *)self viewControllerToPresentFrom];
  v10 = [v9 presentedViewController];
  if (v10)
  {
    goto LABEL_8;
  }

  v10 = [v8 dialogController];
  v11 = [v10 presentedDialog];
  if (v11 || ([v8 shouldObscureForDigitalHealth] & 1) != 0)
  {

LABEL_8:
LABEL_9:
    v12 = WBS_LOG_CHANNEL_PREFIXPrinting();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:
      (*(v5 + 2))(v5, 0, 0, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24));
      goto LABEL_13;
    }

    *buf = 0;
    v13 = "Not returning a webpage PDF representation because Safari isn't showing a webpage right now";
LABEL_11:
    _os_log_impl(&dword_215819000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    goto LABEL_12;
  }

  v14 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  v15 = [v14 presentationState];

  if (v15)
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
    v27 = v5;
    v18 = v17;
    v19 = _Block_copy(v25);
    blockRequestingScreenshotPDFData = self->_blockRequestingScreenshotPDFData;
    self->_blockRequestingScreenshotPDFData = v19;
  }

  else
  {
    v21 = _Block_copy(v5);
    v22 = self->_blockRequestingScreenshotPDFData;
    self->_blockRequestingScreenshotPDFData = v21;

    if ([v8 isLoading])
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

      [(BrowserController *)self _sendPDFRepresentationForScreenshotWithTabDocument:v8];
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

- (void)openDownload:(id)a3
{
  v6 = a3;
  if ([v6 fileType] == 2)
  {
    [(BrowserController *)self _openDownload:v6];
  }

  else
  {
    v4 = [(BrowserController *)self tabController];
    v5 = [v4 activeTabDocument];
    [v5 showDownload:v6];
  }
}

- (void)_openDownload:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 completedFileURL];
    v6 = [v4 uti];
    if (_SFTypeIsExtractableArchive())
    {
      v7 = [v4 canReveal];

      if (v7)
      {
        v8 = [MEMORY[0x277D499B8] sharedLogger];
        v9 = [v4 mimeType];
        v10 = [v4 uti];
        [v8 didRevealDownloadWithMIMEType:v9 uti:v10 result:1];

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
    v12 = v5;
    v22 = v12;
    v23 = a1;
    v24 = v11;
    v13 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __35__BrowserController__openDownload___block_invoke_4;
    v15[3] = &unk_2781D71E8;
    v17 = a1;
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

- (void)_previewDownloadInQuickLook:(void *)a3 url:(uint64_t)a4 isContentManaged:
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 46);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserController:a1 overrideDownloadQuickLookPreview:v8 isContentManaged:a4];
    }

    else
    {
      objc_storeStrong(a1 + 25, a2);
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
      v21[0] = v9;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      v15 = [v13 initWithPreviewItems:v14];

      [v15 setDelegate:a1];
      [v15 setModalPresentationStyle:0];
      [v15 setIsContentManaged:a4];
      [(BrowserController *)a1 _presentModalViewController:v15];
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

- (void)previewControllerDidDismiss:(id)a3
{
  previewedDownload = self->_previewedDownload;
  self->_previewedDownload = 0;
}

- (BOOL)previewController:(id)a3 shouldOpenURL:(id)a4 forPreviewItem:(id)a5
{
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__BrowserController_previewController_shouldOpenURL_forPreviewItem___block_invoke;
  v9[3] = &unk_2781D61F8;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
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

- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadsViewController);
  v6 = [WeakRetained quickLookTransitionViewForDownload:self->_previewedDownload];

  return v6;
}

- (void)saveToFilesOperation:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  saveToFilesOperation = self->_saveToFilesOperation;
  self->_saveToFilesOperation = 0;
}

- (void)saveToFilesOperation:(id)a3 presentViewController:(id)a4
{
  v6 = a4;
  v5 = [(BrowserController *)self viewControllerToPresentFrom];
  [v5 presentViewController:v6 animated:1 completion:0];
}

- (void)beginIgnoringUserInteraction:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Begin ignoring interaction for <BrowserController: %p>: %{public}@", &v11, 0x16u);
  }

  v6 = [(NSMutableSet *)self->_reasonsForIgnoringUserInteraction count];
  reasonsForIgnoringUserInteraction = self->_reasonsForIgnoringUserInteraction;
  if (reasonsForIgnoringUserInteraction)
  {
    [(NSMutableSet *)reasonsForIgnoringUserInteraction addObject:v4];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB58] setWithObject:v4];
    v9 = self->_reasonsForIgnoringUserInteraction;
    self->_reasonsForIgnoringUserInteraction = v8;
  }

  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    [WeakRetained browserControllerDidBeginIgnoringUserInteraction:self];
  }
}

- (void)endIgnoringUserInteraction:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "End ignoring interaction for <BrowserController: %p>: %{public}@", &v7, 0x16u);
  }

  [(NSMutableSet *)self->_reasonsForIgnoringUserInteraction removeObject:v4];
  if (![(NSMutableSet *)self->_reasonsForIgnoringUserInteraction count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
    [WeakRetained browserControllerDidEndIgnoringUserInteraction:self];
  }
}

- (void)editBookmark:(id)a3
{
  v10 = a3;
  v4 = objc_alloc(MEMORY[0x277CDB8C8]);
  v5 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v6 = [v4 initWithBookmark:v10 inCollection:v5];

  [v6 setSyntheticBookmarkProvider:self->_tabController];
  if ([v6 prepareForPresentationForAddingBookmark:0])
  {
    [v6 setBookmarkNavDelegate:self];
    [(BrowserController *)self _presentModalViewController:v6];
  }

  else
  {
    v7 = MEMORY[0x277D28BE0];
    v8 = [(BrowserController *)self viewControllerToPresentFrom];
    [v7 showLockedDatabaseAlertForAction:0 fromViewController:v8];

    v9 = [MEMORY[0x277D499B8] sharedLogger];
    [v9 didPreventBookmarkActionWithBookmarkType:1 actionType:2];
  }
}

- (BOOL)getContextForCurrentPageWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(TabController *)self->_tabController activeTabDocument];
  v6 = [v5 contextController];
  v7 = [v5 URL];
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    [v6 cachedResponseForURL:v7 completionHandler:v4];
  }

  return v9;
}

- (void)presentPrivacyReport
{
  if (([MEMORY[0x277CDB6D0] trackingPreventionEnabled] & 1) != 0 || (v13[0] = MEMORY[0x277D85DD0], v13[1] = 3221225472, v13[2] = __41__BrowserController_presentPrivacyReport__block_invoke, v13[3] = &unk_2781D63F8, v13[4] = self, objc_msgSend(MEMORY[0x277CDB6F0], "onboardingViewControllerWithCompletionHandler:", v13), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = [(TabController *)self->_tabController activeTabDocument];
    isWindowLockedForPrivate = [(BrowserController *)self _isWindowLockedForPrivateBrowsing];
    if (([v3 isBlank] & 1) == 0)
    {
      v6 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
      if ([v6 presentationState] == 1)
      {

LABEL_8:
        goto LABEL_9;
      }

      v7 = [v6 presentationState];

      if (v7 == 2)
      {
        goto LABEL_8;
      }

      if ((isWindowLockedForPrivate & 1) == 0)
      {
        v4 = [v3 webView];
        goto LABEL_10;
      }
    }

LABEL_9:
    v4 = 0;
LABEL_10:
    v8 = [objc_alloc(MEMORY[0x277CDB6F8]) initWithWebView:v4];
    [v8 setWebsiteDetailShouldSeparateBlockedTrackers:{objc_msgSend(v3, "privacyReportShouldSeparateBlockedTrackers")}];
    v9 = [(WBTabGroupManager *)self->_tabGroupManager allProfileIdentifiers];
    [v8 setProfileIdentifiers:v9];

    v10 = +[Application sharedApplication];
    v11 = [v10 historiesForProfiles];
    [v8 setHistories:v11];

    v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
    [v12 setModalPresentationStyle:1];
    [(BrowserController *)self _presentModalViewController:v12];

    goto LABEL_11;
  }

  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
  [v4 setModalPresentationStyle:2];
  [(BrowserController *)self _presentModalViewController:v4];
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

- (void)presentBookmarkPickerWithImportHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__BrowserController_presentBookmarkPickerWithImportHandler___block_invoke;
  v6[3] = &unk_2781D7210;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
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

- (void)presentCloudTabsPickerWithPrimaryDeviceUUID:(id)a3
{
  v9 = a3;
  v4 = [CloudTabsViewController alloc];
  v5 = [(BrowserController *)self cloudTabStore];
  v6 = [(BrowserController *)self activeProfileIdentifier];
  v7 = [(CloudTabsViewController *)v4 initWithDeviceProvider:v5 primaryDeviceUUID:v9 profileIdentifier:v6];

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
  v3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = *MEMORY[0x277D290A0];
  v8 = v3;
  v5 = [v3 BOOLForKey:*MEMORY[0x277D290A0]];
  v6 = v5;
  [v8 setBool:v5 ^ 1u forKey:v4];
  if ((v6 & 1) == 0)
  {
    [(BrowserRootViewController *)self->_rootViewController updateUsesWebpageStatusBar];
    v7 = [(BrowserRootViewController *)self->_rootViewController statusBarView];
    [v7 displayStatusBarIsEnabledMessage];
  }
}

- (BOOL)shouldIncreaseTopSpacingForStartPageController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);
  if ([MEMORY[0x277D49A08] isSolariumEnabled] && (objc_msgSend(v4, "viewController"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "presentingViewController"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7) || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = [WeakRetained browserControllerShouldIncreaseTopPaddingForStartPage:self];
  }

  return v8;
}

- (int64_t)updatePolicyForStartPageController:(id)a3
{
  v4 = +[LaunchStateController sharedController];
  if ([v4 hasCompletedLaunch])
  {
  }

  else
  {
    v5 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    v6 = [v5 presentationState];

    if (v6)
    {
      return 0;
    }
  }

  v8 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  cachedCatalogViewController = v8;
  if (!v8)
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
  v2 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  v3 = [v2 popoverIsShowing];

  return v3;
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
  v2 = [(BrowserController *)&self->super.super.super.isa tabContentContainerView];
  [v2 bounds];
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
    v3 = 0;
  }

  else
  {
    v3 = [WeakRetained _isKeyWindowScene];
  }

  return v3;
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(TabController *)self->_tabController activeTabDocument];
  [v3 safari_addObjectUnlessNil:v4];

  [v3 safari_addObjectUnlessNil:self->_previewDocument];
  [v3 safari_addObjectUnlessNil:self->_previousContinuousItemDocument];
  [v3 safari_addObjectUnlessNil:self->_nextContinuousItemDocument];

  return v3;
}

- (id)webExtensionWindowWithID:(double)a3
{
  p_normalExtensionWindow = &self->_normalExtensionWindow;
  [(WebExtensionWindow *)self->_normalExtensionWindow idForWebExtensions];
  if (v6 == a3 || [(BrowserController *)self isPrivateBrowsingAvailable]&& (p_normalExtensionWindow = &self->_privateExtensionWindow, [(WebExtensionWindow *)self->_privateExtensionWindow idForWebExtensions], v8 == a3))
  {
    v7 = *p_normalExtensionWindow;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)webExtensionWindowForTab:(id)a3
{
  v4 = a3;
  if (([v4 isPrivateBrowsingEnabled] & 1) == 0)
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

- (void)validateExtensionToolbarItemsInWindow:(id)a3
{
  v6 = a3;
  v4 = [v6 isPrivateWindow];
  if (v4 == [(BrowserController *)self isPrivateBrowsingEnabled])
  {
    v5 = [(TabController *)self->_tabController activeTabDocument];
    [v5 validateExtensionToolbarItems];

    [(BrowserController *)self _updateButtonsAnimatingTabBar:?];
  }
}

- (void)overlayDidHide:(id)a3
{
  v4 = [(BrowserController *)self _visibleAppBanner];
  [v4 setInitiallyBehindNavigationBar:1];
  [(BrowserController *)self _setShowingAppBanner:v4 isShowing:1];
  [v4 setInitiallyBehindNavigationBar:0];
}

- (void)tabBarManager:(id)a3 didCreateTabBar:(id)a4
{
  v6 = a4;
  [v6 setNavigationIntentHandler:self];
  if ([(BrowserController *)self tabBarDisplayMode]!= 2)
  {
    v5 = WBSMakeAccessibilityIdentifier();
    [v6 setAccessibilityIdentifier:v5];
  }

  [(BrowserController *)self _addInteractionsForTabBar:v6];
  if ([v6 isStandalone])
  {
    [v6 setContentHidden:{-[BrowserRootViewController isShowingTabBar](self->_rootViewController, "isShowingTabBar") ^ 1}];
  }
}

- (void)tabBarManagerDidUpdateDisplayMode:(id)a3
{
  v5 = a3;
  [(BrowserRootViewController *)self->_rootViewController updateTabHoverPreview];
  [(BrowserController *)self _updateBookmarksMenuProvider];
  [(BrowserController *)self updateShowingTabBarAnimated:0];
  if ([v5 displayMode])
  {
    [(BrowserController *)self updateDynamicBarGeometry];
  }

  else
  {
    [(UIContextMenuInteraction *)self->_unifiedTabBarContextMenuInteraction dismissMenu];
  }

  v4 = [(TabController *)self->_tabController activeTabDocument];
  [v4 validateExtensionToolbarItems];
}

- (BOOL)_isTabBarShown
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 264) unifiedBar];
  v2 = v1;
  if (v1 && ([v1 isHidden] & 1) == 0)
  {
    v4 = [v2 window];
    v3 = v4 != 0;
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
  v2 = [(BrowserController *)self tabBarManager];
  v3 = [v2 itemArrangement];
  v4 = [v3 items];
  v5 = [v4 count];

  return v5;
}

- (BOOL)tabBarIsCurrentlyScrollable
{
  v2 = [(BrowserController *)self tabBarManager];
  v3 = [v2 effectiveTabBar];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isCurrentlyScrollable];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)backgroundColorInTabBarEnabled
{
  v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D29000]];

  return v3 ^ 1;
}

- (void)createNewBookmarkWithTitle:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v3 = [(TabController *)self->_tabController activeTabDocument];
    v5 = [v3 titleForNewBookmark];
  }

  [(BrowserController *)&self->super.super.super.isa _addBookmarkForCurrentTabKeyPressed:v5 title:?];
  v6 = v7;
  if (!v7)
  {

    v6 = 0;
  }
}

- (void)openBookmarkWithUUIDString:(id)a3 inTabWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v9 = [v8 bookmarkWithUUID:v6];
  if (v9)
  {
    if (v7)
    {
      v10 = [(TabController *)self->_tabController tabWithUUID:v7];
      if (v10)
      {
LABEL_8:
        v12 = [MEMORY[0x277D28F40] builder];
        [v12 setPreferredTabOrder:1];
        if (v10)
        {
          [(TabController *)self->_tabController setActiveTab:v10 animated:1];
          [(BrowserController *)self dismissTransientUIAnimated:1];
        }

        else
        {
          [v12 setPrefersOpenInNewTab:1];
        }

        v14 = [v12 navigationIntentWithBookmark:v9];
        [(BrowserController *)self dispatchNavigationIntent:v14];

        goto LABEL_14;
      }

      v11 = WBS_LOG_CHANNEL_PREFIXSiriLink();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [v7 UUIDString];
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

- (void)performSearchUsingQuery:(id)a3
{
  v9 = a3;
  v4 = [(TabController *)self->_tabController activeTabDocument];
  if ([v4 isBlank])
  {
    [v4 unhibernate];
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
      v6 = [(BrowserRootViewController *)self->_rootViewController capsuleViewController];
      [v6 transitionToState:2 options:0 animated:1 completionHandler:0];
    }

    else
    {
      [(BrowserController *)self _focusNavigationBarWithCompletionHandler:?];
    }
  }

  v7 = [(BrowserController *)self unifiedField];
  [v7 setPerformingExternalSearch:1];
  v8 = [(BrowserController *)&self->super.super.super.isa _catalogViewController];
  [v8 setQueryString:v9];

  [v7 endExternalSearch];
  [v7 setPerformingExternalSearch:0];
}

- (void)performTabSearchUsingQuery:(id)a3
{
  v7 = a3;
  v4 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([v4 presentationState] == 1)
  {
  }

  else
  {
    v5 = [v4 presentationState];

    if (v5 != 2)
    {
      [v4 presentAnimated:0];
    }
  }

  if (SFEnhancedTabOverviewEnabled())
  {
    v6 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabSwitcherViewController];
    [v6 beginSearchingWithSearchString:v7];
  }
}

- (void)findString:(id)a3 onTabWithUUID:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(TabController *)self->_tabController tabWithUUID:v6];
  if (v7 && [(BrowserController *)self canFindOnTabWithUUID:v6])
  {
    [(TabController *)self->_tabController setActiveTab:v7 animated:1];
    [(BrowserController *)self dismissTransientUIAnimated:1];
    v8 = [(TabController *)self->_tabController activeTabDocument];
    v9 = [v8 findInteraction];
    [v9 setSearchText:v10];

    [v8 showFindOnPage];
  }
}

- (id)activeTabUUIDString
{
  if (a1)
  {
    v1 = [*(a1 + 328) activeTabDocument];
    v2 = [v1 uuid];
    v3 = [v2 UUIDString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)canReadThis
{
  if (([(BrowserController *)self _isWindowLockedForPrivateBrowsing]& 1) != 0)
  {
    return 0;
  }

  v3 = [(TabController *)self->_tabController activeTabDocument];
  if (([v3 isReaderAvailable] & 1) == 0)
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

  v4 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [v4 mediaSuspensionReasons];

  if (v5)
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
  v2 = [(BrowserController *)self activeDocument];
  v3 = [v2 translationContext];
  v4 = [v3 lastDeterminedWebpageLanguage];

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
  v7 = [objc_opt_class() sharedPreferences];
  v8 = [v7 outputVoice];

  v9 = MEMORY[0x277CBEAF8];
  v10 = [v8 languageCode];
  v11 = [v9 localeWithLocaleIdentifier:v10];

  v12 = [v11 languageCode];
  v13 = [v12 isEqualToString:v4];

  if (v13)
  {
    v14 = 1;
  }

  else if (v8)
  {
    v14 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    v16 = [v15 downloadedSiriVoiceLanguages];
    v14 = [v16 containsObject:v4];
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
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v4;
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
  v3 = [MEMORY[0x277D28D48] sharedPlaybackController];
  [v3 setupNowPlayingListenerIfNeeded];

  if (-[NSString length](self->_extractedArticleText, "length") && ([MEMORY[0x277D28D50] sharedVoiceUtilities], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "activeSiriReaderSessionURL"), v5 = objc_claimAutoreleasedReturnValue(), -[TabController activeTabDocument](self->_tabController, "activeTabDocument"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "readerContext"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "readerURL"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v5, "safari_isEqualToURL:", v8), v8, v7, v6, v5, v4, v9))
  {

    [(BrowserController *)&self->super.super.super.isa _siriReadThisVocalInvocation];
  }

  else
  {
    v10 = [(TabController *)self->_tabController activeTabDocument];
    v11 = [v10 readerWebView];

    if (v11)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__BrowserController_siriReadThisVocalInvocation__block_invoke;
      v14[3] = &unk_2781D60B8;
      v14[4] = self;
      [(BrowserController *)self _extractTextFromReaderWebViewOfTab:v10 withCompletion:v14];
    }

    else
    {
      [v10 createBrowserReaderViewIfNeeded];
      v12 = [(BrowserController *)self activeTabUUIDString];
      tabUUIDStringForSiriReadThisVocalInvocation = self->_tabUUIDStringForSiriReadThisVocalInvocation;
      self->_tabUUIDStringForSiriReadThisVocalInvocation = v12;
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
  v3 = [MEMORY[0x277D28D48] sharedPlaybackController];
  [v3 setupNowPlayingListenerIfNeeded];

  if (-[NSString length](self->_extractedArticleText, "length") && ([MEMORY[0x277D28D50] sharedVoiceUtilities], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "activeSiriReaderSessionURL"), v5 = objc_claimAutoreleasedReturnValue(), -[TabController activeTabDocument](self->_tabController, "activeTabDocument"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "readerContext"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "readerURL"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v5, "safari_isEqualToURL:", v8), v8, v7, v6, v5, v4, v9))
  {

    [(BrowserController *)&self->super.super.super.isa _siriReadThisMenuInvocation];
  }

  else
  {
    v10 = [(TabController *)self->_tabController activeTabDocument];
    v11 = [v10 readerWebView];

    if (v11)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __47__BrowserController_siriReadThisMenuInvocation__block_invoke;
      v14[3] = &unk_2781D60B8;
      v14[4] = self;
      [(BrowserController *)self _extractTextFromReaderWebViewOfTab:v10 withCompletion:v14];
    }

    else
    {
      [v10 createBrowserReaderViewIfNeeded];
      v12 = [(BrowserController *)self activeTabUUIDString];
      tabUUIDStringForSiriReadThisMenuInvocation = self->_tabUUIDStringForSiriReadThisMenuInvocation;
      self->_tabUUIDStringForSiriReadThisMenuInvocation = v12;
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

- (void)createNewTabWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(TabController *)self->_tabController switchToTabGroupVisibleInSwitcherIfNeeded];
  tabController = self->_tabController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__BrowserController_createNewTabWithCompletionHandler___block_invoke;
  v7[3] = &unk_2781D7260;
  v6 = v4;
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

- (void)createNewTabWithURL:(id)a3 isPrivate:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [(TabController *)self->_tabController switchToTabGroupVisibleInSwitcherIfNeeded];
  tabController = self->_tabController;
  if (v6)
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
  v12 = v9;
  v16 = v12;
  v14[4] = self;
  v13 = v8;
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

- (void)openTabWithUUID:(id)a3
{
  v4 = [(TabController *)self->_tabController tabWithUUID:a3];
  if (v4)
  {
    [(TabController *)self->_tabController setActiveTab:v4 animated:1];
    v5 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
    [v5 dismissAnimated:1];
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

- (void)closeTabWithUUID:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(BrowserController *)self closeTabsWithUUIDs:v5];
}

- (void)closeTabsWithUUIDs:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__BrowserController_closeTabsWithUUIDs___block_invoke;
  v5[3] = &unk_2781D6A48;
  v5[4] = self;
  v4 = [a3 safari_mapAndFilterObjectsUsingBlock:v5];
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

- (id)createNewTabGroupWithTitle:(id)a3
{
  v4 = [(TabController *)self->_tabController addNewTabGroupWithTitle:a3 fromExistingTabs:0];
  [(BrowserController *)self scrollSidebarToTopAnimated:1];
  v5 = [v4 uuid];

  return v5;
}

- (void)openTabGroupOfKind:(int64_t)a3 uuidString:(id)a4
{
  v6 = a4;
  v9 = v6;
  if ((a3 - 2) < 2)
  {
    v7 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:v6];
    v8 = [v7 profileIdentifier];
    [(TabController *)self->_tabController setActiveProfileIdentifier:v8];

    [(TabController *)self->_tabController setActiveTabGroupUUID:v9];
  }

  else if (a3 == 1)
  {
    [(TabController *)self->_tabController selectPrivateTabGroup];
  }

  else if (!a3)
  {
    [(TabController *)self->_tabController selectLocalTabGroup];
  }
}

- (void)setView:(unint64_t)a3 visible:(BOOL)a4
{
  v4 = a4;
  if ([(BrowserController *)self isViewVisible:?]!= a4 && [(BrowserController *)self canToggleVisibilityForView:a3])
  {
    if (v4)
    {
      [(BrowserController *)self dismissTransientUIAnimated:1];
    }

    if (a3 > 2)
    {
      switch(a3)
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
      if (a3)
      {
        if (a3 == 1)
        {
          v7 = kCollectionTypeHistory;
        }

        else
        {
          if (a3 != 2)
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
  v3 = [(TabController *)self->_tabController currentTabs];
  v6 = [v3 lastObject];

  if (![v6 isBlank])
  {
    [(BrowserController *)self openNewTab:0];
    goto LABEL_8;
  }

  [(TabController *)self->_tabController setActiveTab:v6];
  v4 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([v4 presentationState] == 1)
  {

LABEL_6:
    [v4 dismissAnimated:1];
    goto LABEL_7;
  }

  v5 = [v4 presentationState];

  if (v5 == 2)
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

- (void)navigateContinuousReadingListToDirection:(unint64_t)a3
{
  if ([(BrowserController *)self canNavigateContinuousReadingListInDirection:?])
  {
    if (a3 == 1)
    {
      continuousReadingViewController = self->_continuousReadingViewController;

      [(ContinuousReadingViewController *)continuousReadingViewController loadNextItem];
    }

    else if (!a3)
    {
      v5 = self->_continuousReadingViewController;

      [(ContinuousReadingViewController *)v5 loadPreviousItem];
    }
  }
}

- (void)openClearHistoryViewControllerFor:(id)a3
{
  v6 = a3;
  v4 = objc_alloc_init(SafariClearBrowsingDataController);
  objc_storeStrong(&self->_clearBrowsingDataController, v4);
  [(BrowserController *)&self->super.super.super.isa _switchToCollectionOrToggleSidebar:?];
  v5 = [(BrowserController *)self rootViewController];
  [(SafariClearBrowsingDataController *)v4 showClearHistoryMenuFromViewController:v5 profileIdentifier:v6];
}

- (BOOL)isReaderAvailable
{
  if (![(BrowserController *)&self->super.super.super.isa _isReaderModeFormatMenuItemAvailable])
  {
    return 0;
  }

  v3 = [(TabController *)self->_tabController activeTabDocument];
  v4 = [v3 isReaderAvailable];

  return v4;
}

- (BOOL)canFindOnTabWithUUID:(id)a3
{
  v4 = [(TabController *)self->_tabController tabWithUUID:a3];
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
  v3 = [v2 isCustomTabGroupsEnabled];

  return v3;
}

- (BOOL)canToggleVisibilityForView:(unint64_t)a3
{
  v5 = +[FeatureManager sharedFeatureManager];
  v6 = [(BrowserController *)self canShowSidebar];
  privateBrowsingAvailable = 1;
  if (a3 <= 3)
  {
    if (a3)
    {
      if (a3 != 2)
      {
        privateBrowsingAvailable = a3 != 3 || v6;
        goto LABEL_18;
      }

      v8 = [v5 isReadingListAvailable];
    }

    else
    {
      v8 = [v5 isBookmarksAvailable];
    }

    privateBrowsingAvailable = v8;
    goto LABEL_18;
  }

  if (a3 > 5)
  {
    if (a3 == 6)
    {
      v9 = [(BrowserController *)self activeLibraryType];
      privateBrowsingAvailable = v9 == 0;
    }

    else if (a3 == 8)
    {
      privateBrowsingAvailable = self->_privateBrowsingAvailable;
    }
  }

  else if (a3 == 4)
  {
    privateBrowsingAvailable = v6;
  }

  else
  {
    privateBrowsingAvailable = a3 != 5;
  }

LABEL_18:

  return privateBrowsingAvailable;
}

- (BOOL)activeTabIsBlank
{
  v3 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([v3 presentationState])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TabController *)self->_tabController activeTabDocument];
    v4 = [v5 isBlank];
  }

  return v4;
}

- (BOOL)isShowingContinuousReadingList
{
  v3 = [(TabCollectionViewProviding *)self->_tabCollectionViewProvider tabThumbnailCollectionView];
  if ([v3 presentationState] == 1)
  {
  }

  else
  {
    v4 = [v3 presentationState];

    if (v4 != 2)
    {
      v5 = [(BrowserController *)self _isInContinuousMode];
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (BOOL)canNavigateContinuousReadingListInDirection:(unint64_t)a3
{
  v4 = [(BrowserController *)self continuousReadingController];
  v5 = v4;
  if (a3)
  {
    [v4 nextReadingListItem];
  }

  else
  {
    [v4 previousReadingListItem];
  }
  v6 = ;

  return v6 != 0;
}

- (void)prepareIntentInteractionWithCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = +[LaunchStateController sharedController];
  v5 = [v4 hasCompletedLaunch];

  if (v5)
  {
    v6[2]();
  }

  else
  {
    [(BrowserRootViewController *)self->_rootViewController setIntentInteractionCompletion:v6];
  }
}

- (void)playbackStateDidChangeForSiriReaderPlaybackController:(id)a3
{
  v4 = [MEMORY[0x277D28D48] sharedPlaybackController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__BrowserController_playbackStateDidChangeForSiriReaderPlaybackController___block_invoke;
  v5[3] = &unk_2781D72B0;
  v5[4] = self;
  [v4 updateContentIdentifierOnQueue:MEMORY[0x277D85CD0] completion:v5];
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

- (void)playbackContentIdentifierDidChangeForSiriReaderPlaybackController:(id)a3
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  [v3 updateShowsSiriReaderPlayingIcon];
}

- (void)profileWindow:(id)a3 selectProfile:(id)a4
{
  v7 = a4;
  v5 = [v7 identifier];
  [(TabController *)self->_tabController setActiveProfileIdentifier:v5];

  v6 = [(BrowserRootViewController *)self->_rootViewController bookmarksBar];
  [v6 setNeedsReloadData];
}

- (void)profileWindow:(id)a3 selectTabGroup:(id)a4
{
  v5 = [a4 uuid];
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

- (void)_debugAutoFillConsoleLoggingEnabledPreferenceDidChange:(id)a3
{
  v16 = a3;
  if (([MEMORY[0x277D49A08] isInternalInstall] & 1) == 0)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_2827BF158];
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Safari/iOS/MobileSafari/BrowserController.mm"];
    v11 = [v10 lastPathComponent];
    v12 = [v8 length];
    if (v12)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@", %@", v8];
    }

    else
    {
      v13 = &stru_2827BF158;
    }

    v14 = [v9 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "WBSFeatureAvailability.isInternalInstall", "-[BrowserController _debugAutoFillConsoleLoggingEnabledPreferenceDidChange:]", v11, 16751, v13];
    if (v12)
    {
    }

    v15 = [MEMORY[0x277CCACC8] callStackSymbols];
    NSLog(@"%@\n%@", v14, v15);

    abort();
  }

  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = *MEMORY[0x277D4A180];
  v5 = [v3 BOOLForKey:*MEMORY[0x277D4A180]];

  v6 = +[Application sharedApplication];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v6 setObject:v7 forInjectedBundleParameter:v4];
}

- (_SFActivityViewController)presentedActivityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedActivityViewController);

  return WeakRetained;
}

- (uint64_t)_shouldShowBookmarksBarForViewSize:(uint64_t)a1
{
  if (!a1 || !_SFDeviceIsPad() || a2 <= *MEMORY[0x277D29130])
  {
    return 0;
  }

  return [(BrowserController *)a1 _prefersShowingBookmarksBar];
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
  v3 = [(BrowserRootViewController *)self->_rootViewController currentBarAnimator];
  [v3 endScrolling];

  v4 = [(TabController *)self->_tabController activeTabDocument];
  [v4 webViewDidScroll];
}

- (id)_titleForToggleFavoritesBarKeyCommand
{
  if (a1)
  {
    [(BrowserController *)a1 _prefersShowingBookmarksBar];
    a1 = _WBSLocalizedString();
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)_shouldShowCollectionInSidebar
{
  v1 = a1;
  if (a1)
  {
    if (_SFDeviceIsPad())
    {
      v2 = [*(v1 + 264) capsuleViewController];
      v1 = v2 == 0;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

- (NSString)currentBookmarksCollection
{
  shouldShowCollectionIn = [(BrowserController *)self _shouldShowCollectionInSidebar];
  v4 = &OBJC_IVAR___BrowserController__modalBookmarksController;
  if (shouldShowCollectionIn)
  {
    v4 = &OBJC_IVAR___BrowserController__libraryController;
  }

  v5 = [*(&self->super.super.super.isa + *v4) currentCollection];

  return v5;
}

- (id)_titleForToggleBookmarksKeyCommand
{
  if (a1)
  {
    [(BrowserController *)a1 _isShowingCollectionInSidebar:?];
    a1 = _WBSLocalizedString();
    v1 = vars8;
  }

  return a1;
}

- (id)_titleForToggleReadingListKeyCommand
{
  if (a1)
  {
    [(BrowserController *)a1 _isShowingCollectionInSidebar:?];
    a1 = _WBSLocalizedString();
    v1 = vars8;
  }

  return a1;
}

- (id)_titleForToggleHistoryKeyCommand
{
  if (a1)
  {
    [(BrowserController *)a1 _isShowingCollectionInSidebar:?];
    a1 = _WBSLocalizedString();
    v1 = vars8;
  }

  return a1;
}

- (id)_titleForToggleSharedWithYouKeyCommand
{
  if (a1)
  {
    [(BrowserController *)a1 _isShowingCollectionInSidebar:?];
    a1 = _WBSLocalizedString();
    v1 = vars8;
  }

  return a1;
}

- (id)_titleForToggleCloudTabsKeyCommand
{
  if (a1)
  {
    [(BrowserController *)a1 _isShowingCollectionInSidebar:?];
    a1 = _WBSLocalizedString();
    v1 = vars8;
  }

  return a1;
}

- (id)_findCommandTitle
{
  if (a1)
  {
    [(BrowserController *)a1 _showingTabDocumentWithURL];
    a1 = _WBSLocalizedString();
    v1 = vars8;
  }

  return a1;
}

- (void)_presentActivityViewController
{
  if (a1)
  {
    [(BrowserController *)a1 _prepareToPresentActivityViewController];
    *(a1 + 113) = 1;

    [(BrowserController *)a1 _presentActionPanelIfReady];
  }
}

- (void)_mailContentProvider
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[7];
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277CDB810]);
      v5 = v2[7];
      v2[7] = v4;

      [v2[7] setDataSource:v2];
      v3 = v2[7];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)_cancelPendingAutoFillInternalFeedbackToastDismissal
{
  if (a1)
  {
    [*(a1 + 640) invalidate];
    v2 = *(a1 + 640);
    *(a1 + 640) = 0;
  }
}

- (void)_invalidatePreviewDocumentCloseTimer
{
  if (a1)
  {
    [*(a1 + 192) invalidate];
    v2 = *(a1 + 192);
    *(a1 + 192) = 0;
  }
}

- (id)_tabDocumentForNextContinuousItem
{
  if (a1)
  {
    v2 = a1;
    [(BrowserController *)a1 _prepareTabDocumentForNextContinuousItemIfNeeded];
    a1 = v2[20];
    v1 = vars8;
  }

  return a1;
}

- (BOOL)isViewVisible:(unint64_t)a3
{
  if ([(BrowserController *)self _shouldShowCollectionInSidebar])
  {
    v5 = [(SidebarUIProxy *)self->_sidebarUIProxy isShowingSidebar];
    if (a3 <= 2 && !v5)
    {
      return 0;
    }
  }

  v6 = 0;
  switch(a3)
  {
    case 0uLL:
      v7 = [(BrowserController *)self currentBookmarksCollection];
      v8 = [v7 isEqualToString:@"BookmarksCollection"];
      goto LABEL_15;
    case 1uLL:
      v7 = [(BrowserController *)self currentBookmarksCollection];
      v8 = [v7 isEqualToString:@"HistoryCollection"];
      goto LABEL_15;
    case 2uLL:
      v7 = [(BrowserController *)self currentBookmarksCollection];
      v8 = [v7 isEqualToString:@"ReadingListCollection"];
      goto LABEL_15;
    case 3uLL:
      v7 = [(LibraryController *)self->_libraryController currentCollection];
      v8 = [v7 isEqualToString:@"SharedWithYouCollection"];
      goto LABEL_15;
    case 4uLL:
      sidebarUIProxy = self->_sidebarUIProxy;

      return [(SidebarUIProxy *)sidebarUIProxy isShowingSidebar];
    case 6uLL:
      tabCollectionViewProvider = self->_tabCollectionViewProvider;

      return [(TabCollectionViewProviding *)tabCollectionViewProvider isShowingTabView];
    case 7uLL:
      v7 = [(TabController *)self->_tabController activeTabGroup];
      v8 = [v7 isLocal];
      goto LABEL_15;
    case 8uLL:
      v7 = [(TabController *)self->_tabController activeTabGroup];
      v8 = [v7 isPrivateBrowsing];
LABEL_15:
      v6 = v8;

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