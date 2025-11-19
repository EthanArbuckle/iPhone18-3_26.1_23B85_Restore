@interface TabDocument
+ (id)blankTabTitleWithLibraryType:(id)a3 controlledByAutomation:(BOOL)a4;
+ (id)tabDocumentForWKWebView:(id)a3;
+ (id)urlForExternalURL:(id)a3 forPrivateBrowsing:(BOOL)a4;
- (ActionPanelActivityItemProvider)activityItemProvider;
- (BOOL)_handleTwoFingerTapOnLinkWithContext:(uint64_t)a1;
- (BOOL)_isDeallocating;
- (BOOL)_loadServiceWorkerOpenedURLIntent:(_BOOL8)a1;
- (BOOL)_loadWebClip:(id *)a1;
- (BOOL)_showICSControllerForPath:(void *)a3 sourceURL:(void *)a4 beforeDismissHandler:;
- (BOOL)_tryRetain;
- (BOOL)_webView:(id)a3 fileUploadPanelContentIsManagedWithInitiatingFrame:(id)a4;
- (BOOL)_webView:(id)a3 focusRequiresStrongPasswordAssistance:(id)a4;
- (BOOL)_webView:(id)a3 gestureRecognizerCanBePreventedByTouchEvents:(id)a4;
- (BOOL)_webView:(id)a3 gestureRecognizerCouldPinch:(id)a4;
- (BOOL)_webView:(id)a3 performDataInteractionOperationWithItemProviders:(id)a4;
- (BOOL)_webViewCanBecomeFocused:(id)a3;
- (BOOL)allowsBrowsingAssistant;
- (BOOL)atLeastOneOtherTabPlayingAudio;
- (BOOL)browserHasMultipleProfiles;
- (BOOL)canFindOnPage;
- (BOOL)canGoBackToParentTab;
- (BOOL)canHideToolbar;
- (BOOL)canOverrideStatusBar;
- (BOOL)canShowPageFormatMenu;
- (BOOL)createFluidProgressState;
- (BOOL)formAutoFillControllerCanPrefillForm:(id)a3;
- (BOOL)formAutoFillControllerDidUserDeclineAutomaticStrongPasswordForCurrentDomain:(id)a3;
- (BOOL)hasFailedURL;
- (BOOL)hasQuickLookContent;
- (BOOL)hideFindOnPage;
- (BOOL)inElementFullscreen;
- (BOOL)inWebClipScope;
- (BOOL)isAudible;
- (BOOL)isFrecentlyVisitedSite;
- (BOOL)isFrontmost;
- (BOOL)isLoadingStartPage;
- (BOOL)isPageReloaded;
- (BOOL)isReaderAvailable;
- (BOOL)isReusableForURL:(id)a3 webClipURL:(id)a4;
- (BOOL)isSearchPage;
- (BOOL)isSecure;
- (BOOL)isShowingErrorPage;
- (BOOL)isShowingFindOnPage;
- (BOOL)isShowingManagedNewTabPage;
- (BOOL)isShowingReadingListArchive;
- (BOOL)isShowingStartPageOverriddenByExtension;
- (BOOL)isShowingSystemStartPage;
- (BOOL)linkPreviewHelper:(id)a3 supportsAction:(int64_t)a4 forURL:(id)a5;
- (BOOL)mustShowBarsForBackForwardListItem:(id)a3;
- (BOOL)pageLoadErrorControllerShouldHandleCertificateError:(id)a3;
- (BOOL)pageLoadErrorControllerShouldReloadAfterError:(id)a3;
- (BOOL)printControllerCanPresentPrintUI:(id)a3;
- (BOOL)printControllerShouldPrintReader:(id)a3;
- (BOOL)privacyReportShouldSeparateBlockedTrackers;
- (BOOL)sfWebViewCanFindNextOrPrevious:(id)a3;
- (BOOL)sfWebViewShouldFillStringForFind:(id)a3;
- (BOOL)shouldBlockAppSuggestionBanner:(id)a3;
- (BOOL)shouldGrantPermissionsOnUserGestureForWebExtensionContext:(id)a3;
- (BOOL)shouldShowReaderOnActivate;
- (BOOL)shouldSpawnNewTabOnNavigationFromPinnedTabWithDestinationURL:(id)a3;
- (BOOL)supportsAdvancedPrivacyProtectionsForURL:(id)a3;
- (BrowserController)browserController;
- (CGPoint)getLastWindowTapLocation;
- (CGPoint)scrollPoint;
- (CGRect)sourceRectForPopoverActionPicker:(id)a3;
- (CGSize)tabViewSize;
- (History)history;
- (LPLinkMetadata)linkMetadataForSharing;
- (LoadProgressObserver)loadProgressObserver;
- (NSArray)mediaStateMuteButtonMenuElements;
- (NSArray)normalBrowsingUserContentControllers;
- (NSArray)tabCollectionItems;
- (NSSet)allBrowserHistories;
- (NSSet)allBrowserProfileIdentifiers;
- (NSString)URLString;
- (NSString)addressForNewBookmark;
- (NSString)currentSearchQuery;
- (NSString)currentSearchQueryAllowingQueryThatLooksLikeURL;
- (NSString)description;
- (NSString)identifier;
- (NSString)suggestedTitleForCurrentURL;
- (NSString)tabGroupUUID;
- (NSString)tabTitle;
- (NSString)windowIdentifier;
- (NSURL)URLForPerSitePreferences;
- (NSURL)cachedCanonicalURLOrURLForSharing;
- (NSURL)pendingURLForWebExtensions;
- (NSURL)urlForExtensions;
- (NSURL)urlForSharing;
- (NSUUID)ownerUUID;
- (SFBrowserDocumentTrackerInfo)trackerInfo;
- (SFContentBlockerManager)contentBlockerManager;
- (SFNavigationBarItem)navigationBarItem;
- (SFQuickLookDocument)quickLookDocument;
- (SFScribbleController)sfScribbleController;
- (SFTabStateData)tabStateData;
- (SFWebExtensionsController)webExtensionsController;
- (STBlockingViewController)associatedBlockingViewController;
- (TabDocument)init;
- (TabDocument)initWithBrowserController:(id)a3;
- (TabDocument)initWithHibernatedTab:(id)a3;
- (TabDocument)initWithTabGroupTab:(id)a3 privateBrowsingEnabled:(BOOL)a4 hibernated:(BOOL)a5 bookmark:(id)a6 browserController:(id)a7;
- (TabDocument)initWithTabStateData:(id)a3 hibernated:(BOOL)a4 browserController:(id)a5;
- (TabDocument)initWithTitle:(id)a3 URL:(id)a4 UUID:(id)a5 privateBrowsingEnabled:(BOOL)a6 controlledByAutomation:(BOOL)a7 hibernated:(BOOL)a8 bookmark:(id)a9 browserController:(id)a10 relatedWebView:(id)a11;
- (TabDocument)initWithTitle:(id)a3 URL:(id)a4 UUID:(id)a5 privateBrowsingEnabled:(BOOL)a6 hibernated:(BOOL)a7 bookmark:(id)a8 browserController:(id)a9;
- (TabDocument)parentTabDocumentForBackClosesSpawnedTab;
- (TabDocument)retain;
- (TabDocumentDelegate)delegate;
- (TabDocumentView)view;
- (UIEdgeInsets)_webView:(id)a3 finalObscuredInsetsForScrollView:(id)a4 withVelocity:(CGPoint)a5 targetContentOffset:(CGPoint *)a6;
- (UIFindInteraction)findInteraction;
- (UnifiedTabBarItem)currentUnifiedTabBarItem;
- (WBProfile)profile;
- (WBSCloudTab)cloudTab;
- (WBSHistoryContextController)contextController;
- (WBSPrivateBrowsingUserDefinedContentBlockerManager)privateBrowsingUserDefinedContentBlockerManager;
- (WBSScribbleQuirksManager)scribbleQuirksManager;
- (WBSSiriIntelligenceDonorTabData)tabDataForSpotlightDonation;
- (WBSUserDefinedContentBlockerManager)normalBrowsingUserDefinedContentBlockerManager;
- (WBSWebExtensionWindow)webExtensionWindow;
- (WKBackForwardListItem)currentBackForwardListItem;
- (_BYTE)_loadingStateForWebExtensionsMayHaveChanged;
- (_BYTE)loadWebClip:(_BYTE *)a1 userDriven:(void *)a2;
- (_SFInjectedJavaScriptController)activityJSController;
- (_SFPerSitePreferencesVendor)perSitePreferencesVendor;
- (_SFSafariSharingExtensionController)sharingExtensionController;
- (_SFWebClipMetadataFetcher)webClipMetadataFetcher;
- (_SFWebView)activeWebView;
- (_SFWebView)frontWebView;
- (_WKSessionState)sessionState;
- (double)_convertRectFromDocumentToWebView:(double)a3;
- (double)pageZoomFactor;
- (id)URLForStatePersisting;
- (id)URLStringForPrintController:(id)a3;
- (id)_actionForSwitchingToTabPlayingAudio:(id *)a1;
- (id)_addTitlePrefixToString:(id *)a1;
- (id)_backListWithLimit:(uint64_t)a1;
- (id)_blankTabTitle;
- (id)_contentBlockerStatisticsStore;
- (id)_debugOverrideTitle;
- (id)_fileURLNavigationResultForURL:(void *)a1;
- (id)_forwardListWithLimit:(uint64_t)a1;
- (id)_initWithBrowserController:(id)a3 configuration:(id)a4;
- (id)_initWithTitle:(void *)a3 URL:(void *)a4 UUID:(uint64_t)a5 privateBrowsingEnabled:(uint64_t)a6 controlledByAutomation:(void *)a7 bookmark:(void *)a8 browserController:(void *)a9 createDocumentView:;
- (id)_loadRequest:(uint64_t)a1 userDriven:(void *)a2 shouldOpenExternalURLs:(uint64_t)a3;
- (id)_loadRequest:(uint64_t)a3 userDriven:(uint64_t)a4 shouldOpenExternalURLs:(void *)a5 eventAttribution:(char)a6 skipSyncableTabUpdates:;
- (id)_loadURL:(uint64_t)a3 userDriven:(void *)a4 eventAttribution:(char)a5 skipSyncableTabUpdates:;
- (id)_loadURLInternal:(uint64_t)a3 userDriven:;
- (id)_loadURLInternal:(uint64_t)a3 userDriven:(void *)a4 eventAttribution:(char)a5 skipSyncableTabUpdates:;
- (id)_loadedTitle;
- (id)_localAttributes;
- (id)_menuElementForBackForwardListItem:(void *)a1;
- (id)_muteToggleMenuElement;
- (id)_muteToggleMenuElementForOtherTabsWithCount:(id *)a1;
- (id)_presentingViewControllerForWebView:(id)a3;
- (id)_readingListArchiveNextPageLinkForRequest:(void *)a3 targetFrame:;
- (id)_removeParentChildTabDocumentRelations;
- (id)_requestBySettingAdvancedPrivacyProtectionsFlag:(void *)a1;
- (id)_resultOfLoadingRequest:(uint64_t)a3 inMainFrame:(int)a4 userInitiated:;
- (id)_startedLoadingResources;
- (id)_stoppedLoadingResources;
- (id)_tabDocumentsSharingWebProcess;
- (id)_titleForStatePersistingForTabGroupTab;
- (id)_titleForStatePersistingForTabStateData;
- (id)_titleIncludeLoading:(int)a3 allowURLStringFallback:;
- (id)_titleIncludeLoading:(int)a3 allowURLStringFallback:(int)a4 allowUntitled:;
- (id)_webView:(id)a3 adjustedDataInteractionItemProvidersForItemProvider:(id)a4 representingObjects:(id)a5 additionalData:(id)a6;
- (id)_webView:(id)a3 alternateURLFromImage:(id)a4 userInfo:(id *)a5;
- (id)_webView:(id)a3 contextMenuContentPreviewForElement:(id)a4;
- (id)_webViewAdditionalContextForStrongPasswordAssistance:(id)a3;
- (id)backListMenuWithLimit:(int)a3;
- (id)createTabDocumentView;
- (id)createWebViewConfiguration;
- (id)currentFluidProgressStateSource;
- (id)currentHostForScribbleController:(id)a3;
- (id)currentSavedAccountContextForFormAutoFillController:(id)a3;
- (id)customUserVisibleStringForReadingListBookmarkURL:(id)a3;
- (id)formAutoFillControllerURLForFormAutoFill:(id)a3;
- (id)forwardListMenuWithLimit:(int)a3;
- (id)initForBackgroundLoadingWithBrowserController:(id)a3 relatedWebView:(id)a4 webViewToCloneSessionStorageFrom:(id)a5;
- (id)itemForTabCollectionView:(id)a3;
- (id)linkPreviewHelper:(id)a3 previewViewControllerForURL:(id)a4;
- (id)linkPreviewHelper:(id)a3 resultOfLoadingURL:(id)a4;
- (id)loadRequest:(id)a3 userDriven:(BOOL)a4;
- (id)loadURL:(id)a3 userDriven:(BOOL)a4;
- (id)loadURL:(uint64_t)a3 userDriven:(char)a4 skipSyncableTabUpdates:;
- (id)loadingDialogPageTitleForPrintController:(id)a3;
- (id)makeBookmark;
- (id)openInTabGroupMenuWithNewTabGroupName:(id)a3 URL:(id)a4 descendantCount:(int64_t)a5 handler:(id)a6;
- (id)overlayContainerViewForScribbleController:(id)a3;
- (id)overrideUndoManagerForSFWebView:(id)a3;
- (id)pageLoadErrorControllerGetSecIdentityPreferencesController:(id)a3;
- (id)pageTitleForPrintController:(id)a3;
- (id)parentTabForWebExtensionContext:(id)a3;
- (id)pdfView;
- (id)pendingURLForWebExtensionContext:(id)a3;
- (id)permissionDialogThrottler;
- (id)presentingViewControllerForAction:(id)a3;
- (id)presentingViewControllerForPrintController:(id)a3;
- (id)previewViewControllerForURL:(id)a3;
- (id)profileIdentifier;
- (id)quickLookDocumentForCurrentBackForwardListItem;
- (id)readerPageArchiveURL;
- (id)readerURLForReaderController:(id)a3;
- (id)resultOfLoadingURL:(id)a3;
- (id)resultOfLoadingURL:(int)a3 userInitiated:;
- (id)safariApplicationVersionForTranslationContext:(id)a3;
- (id)sfWebView:(id)a3 didStartDownload:(id)a4;
- (id)suggestedFileNameForQuickLookDocument:(id)a3;
- (id)tabDocumentForPreviewURL:(void *)a3 relatedToWebView:;
- (id)tabEntityUUIDForView:(id)a3;
- (id)tabUpdateBlock;
- (id)titleForSharing;
- (id)titleForWebExtensionContext:(id)a3;
- (id)translationConsentAlertHelperViewControllerToPresentDetailsFrom:(id)a3;
- (id)urlForWebExtensionContext:(id)a3;
- (id)webViewForWebExtensionContext:(id)a3;
- (id)windowForWebExtensionContext:(id)a3;
- (int)readingListBookmarkID;
- (int64_t)_webView:(id)a3 decidePolicyForFocusedElement:(id)a4;
- (int64_t)dialogController:(id)a3 presentationPolicyForDialog:(id)a4;
- (int64_t)pageStatus;
- (uint64_t)_analyticsRecorderShouldIgnoreURLWithNavigationPolicy:(void *)a3 forNavigationAction:;
- (uint64_t)_canShowDownloadWithoutPrompting:(uint64_t)a1;
- (uint64_t)_createNewDocumentViewIfNecessaryForURL:(uint64_t)a1;
- (uint64_t)_isNewDocumentViewNecessaryForURL:(void *)a1;
- (uint64_t)_isShowingNativePage;
- (uint64_t)_loadBookmark:(uint64_t)a1;
- (uint64_t)_loadNextFallbackURLWithWebClip:(void *)a3 navigation:;
- (uint64_t)_loadSearchResultForQuery:(id *)a1;
- (uint64_t)_loadURL:(void *)a3 fromBookmark:;
- (uint64_t)_loadUserTypedAddress:(uint64_t)a1;
- (uint64_t)_setUpNavigationBarItem;
- (uint64_t)_shouldCleanUpAfterRedirectToExternalApp;
- (uint64_t)_shouldDisallowRedirectToExternalAppsForUserInitiatedRequest:(uint64_t)result;
- (uint64_t)_shouldUpdateUsageTrackingWhenTransitioningToState:(uint64_t)a1;
- (uint64_t)_suppressReloadToPreventLoadingJavaScriptIfNecessary;
- (uint64_t)_terminateWebProcessAndReloadIfActive:(uint64_t)result;
- (uint64_t)_trySwitchingToPinnedTabOnNavigationToURL:(uint64_t)a1;
- (uint64_t)_usageStateIfTabDocumentIsCurrent:(uint64_t)a1;
- (uint64_t)isPageEligibileToShowNotSecureWarning;
- (uint64_t)pageLoadStatusForNavigationError:(uint64_t)a1;
- (unint64_t)_webView:(id)a3 willUpdateDataInteractionOperationToOperation:(unint64_t)a4 forSession:(id)a5;
- (unint64_t)indexInWindowForWebExtensionContext:(id)a3;
- (unint64_t)numberOfOtherUnmutedTabsPlayingAudio;
- (unint64_t)webPageID;
- (void)_URLForWebExtensionsMayHaveChanged;
- (void)_activeParticipantsDidUpdateInTabWithUUID:(id *)a1;
- (void)_addNoFeedAppSupportAlert;
- (void)_attemptDeferredDropNavigation;
- (void)_authenticateForAutoFillIfNeeded;
- (void)_cancelFaviconUpdate;
- (void)_checkForAppLinkWithCompletion:(uint64_t)a1;
- (void)_checkForHighlight;
- (void)_clearAppBannerIfNotCurrentStoreBannerDeferringRemoval:(uint64_t)a1;
- (void)_clearCachedCanonicalURL;
- (void)_clearLibraryType;
- (void)_clearNavigationSource;
- (void)_closeTabDocumentAnimated:(BOOL)a3;
- (void)_commitPreviewedViewControllerInSafari:(id *)a1;
- (void)_completeRedirectToExternalNavigationResult:(uint64_t)a3 fromOriginalRequest:(uint64_t)a4 dialogResult:;
- (void)_createBrowserReaderViewIfNeeded:(uint64_t)a1;
- (void)_createDocumentViewRelatedTo:(void *)a1 webViewToCloneSessionStorageFrom:(void *)a2 websiteDataStore:(void *)a3 deferrableUserScriptsShouldWaitUntilNotification:(void *)a4;
- (void)_createDocumentViewWithConfiguration:(uint64_t)a1;
- (void)_destroyDocumentViewAllowingDeferral:(uint64_t)a1;
- (void)_detectWebpageLocaleWithTextSamples:(void *)a3 url:;
- (void)_determineResultOfLoadingRequest:(uint64_t)a3 inMainFrame:(int)a4 userInitiated:(void *)a5 completionHandler:;
- (void)_didCancelSummarizationAlertToReset;
- (void)_didCommitPreviewViewController:(uint64_t)a1;
- (void)_didDecideNavigationPolicy:(void *)a3 forNavigationAction:;
- (void)_didDecideNavigationPolicy:(void *)a3 forNavigationResponse:;
- (void)_didFinishLoading;
- (void)_didFinishNavigation:(uint64_t)a1;
- (void)_didOKSummarizationAlertToReset;
- (void)_didUserInitiatedReload;
- (void)_disablePrivateRelaySetting:(uint64_t)a1;
- (void)_dismissSiriReaderMediaSession;
- (void)_displayAttributionBannerForHighlight:(unsigned __int8 *)a1;
- (void)_donateCurrentNavigationWithNavigationResponse:(id *)a1;
- (void)_donateCurrentPageLoad;
- (void)_donateTextAllowingDonationWithoutReaderText:(id *)a1;
- (void)_donateTextSoon;
- (void)_fireOnUpdatedExtensionEvent;
- (void)_fireOnUpdatedExtensionEventSoon;
- (void)_getAuthenticationForAutoFillController:(void *)a3 withCompletion:;
- (void)_goBackAllowingNewTabToSpawnIfNeeded:(char)a3 shouldDismissReader:;
- (void)_goForwardAllowingNewTabToSpawnIfNeeded:(char)a3 shouldDismissReader:;
- (void)_goToBackForwardListItem:(char)a3 shouldDismissReader:;
- (void)_handleNavigationIntent:(void *)a3 completion:;
- (void)_hidePrivateBrowsingPrivacyProtectionsBannerIfNecessary;
- (void)_internalWebView:(void *)a3 decidePolicyForNavigationAction:(void *)a4 preferences:(void *)a5 decisionHandler:;
- (void)_internalWebView:(void *)a3 decidePolicyForNavigationAction:(void *)a4 withResult:(uint64_t)a5 preferences:(void *)a6 decisionHandler:;
- (void)_loadActivityItemProviderIfNeeded;
- (void)_loadDeferredURLIfNeeded;
- (void)_loadExternalURL:(void *)a3 withIntent:;
- (void)_loadQueuedNavigation:(void *)a1;
- (void)_loadingControllerDidStartLoading;
- (void)_loadingControllerDidStopLoadingWithError:(uint64_t)a1;
- (void)_loadingControllerEstimatedProgressChangedTo:(uint64_t)a1;
- (void)_loadingControllerWillLoadRequest:(uint64_t)a3 webView:(int)a4 userDriven:;
- (void)_notifyDidUpdateTabCollectionItem;
- (void)_notifyImpressionAnalyticsRecorderIfNeededTabDocumentDidBecomeActive:(uint64_t)a1;
- (void)_openAppLinkInApp:(void *)a3 fromOriginalRequest:(uint64_t)a4 updateAppLinkStrategy:(void *)a5 webBrowserState:(void *)a6 completionHandler:;
- (void)_presentDialogToAllowDownload:(void *)a3 initiatingSecurityOrigin:(uint64_t)a4 allowViewAction:(void *)a5 completionHandler:;
- (void)_presentTranslationConsentAlertWithType:(void *)a3 completionHandler:;
- (void)_presentViewControllerAnimatedForSummarizationContent:(uint64_t)a1;
- (void)_queueAlertForRedirectToExternalNavigationResult:(void *)a3 fromOriginalRequest:(void *)a4 navigationAction:(char)a5 isMainFrame:(uint64_t)a6 promptPolicy:(void *)a7 userAction:;
- (void)_reconfigureLibraryItemView;
- (void)_redirectToExternalNavigationResult:(void *)a3 fromOriginalRequest:(void *)a4 navigationAction:(uint64_t)a5 promptPolicy:(uint64_t)a6 isMainFrame:(void *)a7 userAction:;
- (void)_reloadFromOrigin:(uint64_t)a1;
- (void)_searchEngineControllerDidFinishPopulating:(id)a3;
- (void)_sessionStateWithoutParentItem;
- (void)_setAppBannerWhenPainted:(uint64_t)a1;
- (void)_setDeferredNavigationURL:(void *)a3 title:;
- (void)_setIcon:(int)a3 isMonogram:;
- (void)_setReaderArticleSummary:(uint64_t)a1;
- (void)_setUp;
- (void)_showDownload:(void *)a3 path:;
- (void)_showFinanceKitOrderPreviewControllerWithURL:(void *)a3 dismissalHandler:;
- (void)_showPassBookControllerForPasses:(uint64_t)a1;
- (void)_showPerSitePreferencesPopoverViewControllerIfPossible;
- (void)_showPrivateBrowsingPrivacyProtectionsBannerForReload;
- (void)_startAppBannerRemovalTimer;
- (void)_terminateWebProcessIfNeededAndShowCrashBanner:(void *)a3 thenDo:;
- (void)_terminateWebProcessThenDoUnresponsiveWebProcessBlock;
- (void)_titleForWebExtensionsMayHaveChanged;
- (void)_translationAvailabilityDidChange:(id)a3;
- (void)_translationContextStateDidChange:(id)a3;
- (void)_unresponsiveWebProcessTimerFired:(id)a3;
- (void)_updateActiveExtensionsIfNecessary;
- (void)_updateAudioUI:(id)a3;
- (void)_updateBarItemsWithCurrentMediaState;
- (void)_updateFallbackURLsForUserTypedAddress:(char)a3 userExplicitlyRequestedAsHTTP:;
- (void)_updateFindCompletionProviderWithNumberOfMatches:(void *)a3 forString:;
- (void)_updateMaxVisibleHeightPercentageUserDriven:(id *)a1;
- (void)_updateNavigationBarItem;
- (void)_updatePageLoadDonorWithNavigationPolicy:(void *)a3 inMainFrameForNavigationAction:;
- (void)_updatePageZoomWithPreference;
- (void)_updateSnapshotForWebClip:(void *)a1;
- (void)_updateSnapshotIfNeeded;
- (void)_updateTabBarFavicon;
- (void)_updateUsageTrackingInformationIfNecessaryToState:(uint64_t)a1;
- (void)_voiceSearchAvailabilityDidChange:(id)a3;
- (void)_webView:(id)a3 authenticationChallenge:(id)a4 shouldAllowLegacyTLS:(id)a5;
- (void)_webView:(id)a3 checkUserMediaPermissionForURL:(id)a4 mainFrameURL:(id)a5 frameIdentifier:(unint64_t)a6 decisionHandler:(id)a7;
- (void)_webView:(id)a3 contentRuleListWithIdentifier:(id)a4 performedAction:(id)a5 forURL:(id)a6;
- (void)_webView:(id)a3 contextMenuConfigurationForElement:(id)a4 completionHandler:(id)a5;
- (void)_webView:(id)a3 contextMenuDidEndForElement:(id)a4;
- (void)_webView:(id)a3 contextMenuForElement:(id)a4 willCommitWithAnimator:(id)a5;
- (void)_webView:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 windowFeatures:(id)a6 completionHandler:(id)a7;
- (void)_webView:(id)a3 dataInteractionOperationWasHandled:(BOOL)a4 forSession:(id)a5 itemProviders:(id)a6;
- (void)_webView:(id)a3 decideDatabaseQuotaForSecurityOrigin:(id)a4 currentQuota:(unint64_t)a5 currentOriginUsage:(unint64_t)a6 currentDatabaseUsage:(unint64_t)a7 expectedUsage:(unint64_t)a8 decisionHandler:(id)a9;
- (void)_webView:(id)a3 decidePolicyForSOAuthorizationLoadWithCurrentPolicy:(int64_t)a4 forExtension:(id)a5 completionHandler:(id)a6;
- (void)_webView:(id)a3 didAdjustVisibilityWithSelectors:(id)a4;
- (void)_webView:(id)a3 didChangeLookalikeCharactersFromURL:(id)a4 toURL:(id)a5;
- (void)_webView:(id)a3 didChangeSafeAreaShouldAffectObscuredInsets:(BOOL)a4;
- (void)_webView:(id)a3 didCommitLoadWithRequest:(id)a4 inFrame:(id)a5;
- (void)_webView:(id)a3 didFailLoadDueToNetworkConnectionIntegrityWithURL:(id)a4;
- (void)_webView:(id)a3 didFinishLoadForQuickLookDocumentInMainFrame:(id)a4;
- (void)_webView:(id)a3 didGeneratePageLoadTiming:(id)a4;
- (void)_webView:(id)a3 didNegotiateModernTLSForURL:(id)a4;
- (void)_webView:(id)a3 didStartInputSession:(id)a4;
- (void)_webView:(id)a3 didStartLoadForQuickLookDocumentInMainFrameWithFileName:(id)a4 uti:(id)a5;
- (void)_webView:(id)a3 hasVideoInPictureInPictureDidChange:(BOOL)a4;
- (void)_webView:(id)a3 logDiagnosticMessage:(id)a4 description:(id)a5;
- (void)_webView:(id)a3 logDiagnosticMessage:(id)a4 description:(id)a5 valueDictionary:(id)a6;
- (void)_webView:(id)a3 logDiagnosticMessageWithDomain:(id)a4 domain:(int64_t)a5;
- (void)_webView:(id)a3 logDiagnosticMessageWithEnhancedPrivacy:(id)a4 description:(id)a5;
- (void)_webView:(id)a3 logDiagnosticMessageWithResult:(id)a4 description:(id)a5 result:(int64_t)a6;
- (void)_webView:(id)a3 logDiagnosticMessageWithValue:(id)a4 description:(id)a5 value:(id)a6;
- (void)_webView:(id)a3 mediaCaptureStateDidChange:(unint64_t)a4;
- (void)_webView:(id)a3 mouseDidMoveOverElement:(id)a4 withFlags:(int64_t)a5 userInfo:(id)a6;
- (void)_webView:(id)a3 navigation:(id)a4 didSameDocumentNavigation:(int64_t)a5;
- (void)_webView:(id)a3 printFrame:(id)a4;
- (void)_webView:(id)a3 queryPermission:(id)a4 forOrigin:(id)a5 completionHandler:(id)a6;
- (void)_webView:(id)a3 renderingProgressDidChange:(unint64_t)a4;
- (void)_webView:(id)a3 requestGeolocationAuthorizationForURL:(id)a4 frame:(id)a5 decisionHandler:(id)a6;
- (void)_webView:(id)a3 requestStorageAccessPanelForDomain:(id)a4 underCurrentDomain:(id)a5 completionHandler:(id)a6;
- (void)_webView:(id)a3 requestUserMediaAuthorizationForDevices:(unint64_t)a4 url:(id)a5 mainFrameURL:(id)a6 decisionHandler:(id)a7;
- (void)_webView:(id)a3 requestWebAuthenticationConditionalMediationRegistrationForUser:(id)a4 completionHandler:(id)a5;
- (void)_webView:(id)a3 shouldGoToBackForwardListItem:(id)a4 inPageCache:(BOOL)a5 completionHandler:(id)a6;
- (void)_webView:(id)a3 storeAppHighlight:(id)a4 inNewGroup:(BOOL)a5 requestOriginatedInApp:(BOOL)a6;
- (void)_webView:(id)a3 takeFocus:(int64_t)a4;
- (void)_webView:(id)a3 willSnapshotBackForwardListItem:(id)a4;
- (void)_webView:(id)a3 willStartInputSession:(id)a4;
- (void)_webView:(id)a3 willSubmitFormValues:(id)a4 userObject:(id)a5 submissionHandler:(id)a6;
- (void)_webView:(std::__shared_weak_count *)a1 willSubmitFormValues:userObject:submissionHandler:;
- (void)_webView:(uint64_t)a1 willSubmitFormValues:userObject:submissionHandler:;
- (void)_webViewDidBeginNavigationGesture:(id)a3;
- (void)_webViewDidDisableInspectorBrowserDomain:(id)a3;
- (void)_webViewDidEnableInspectorBrowserDomain:(id)a3;
- (void)_webViewDidEndNavigationGesture:(id)a3 withNavigationToBackForwardListItem:(id)a4;
- (void)_webViewDidEnterElementFullscreen:(id)a3;
- (void)_webViewDidEnterFullscreen:(id)a3;
- (void)_webViewDidExitElementFullscreen:(id)a3;
- (void)_webViewDidExitFullscreen:(id)a3;
- (void)_webViewFullscreenMayReturnToInline:(id)a3;
- (void)_webViewWebProcessDidCrash:(id)a3;
- (void)_webViewWillEndNavigationGesture:(id)a3 withNavigationToBackForwardListItem:(id)a4;
- (void)_webViewWillEnterElementFullscreen:(id)a3;
- (void)_webViewWillEnterFullscreen:(id)a3;
- (void)_webViewWillExitElementFullscreen:(id)a3;
- (void)_willCommitPreviewViewController:(id *)a1;
- (void)activateForWebExtensionContext:(id)a3 completionHandler:(id)a4;
- (void)addAppHighlightCreatingLink:(BOOL)a3;
- (void)addMediaSuspensionReason:(unint64_t)a3;
- (void)addPassesViewControllerDidFinish:(id)a3;
- (void)animateElement:(id)a3 toBarItem:(int64_t)a4;
- (void)animateProgressForCompletedDocument;
- (void)applyHighlightFromNotesIfNeeded;
- (void)beginSuppressingProgressAnimation;
- (void)browsingAssistantController:(id)a3 didUpdateContentOptionsForURL:(id)a4;
- (void)browsingAssistantControllerDidUpdateUserConsentState:(id)a3;
- (void)clearBackForwardList;
- (void)clearBackForwardListKeepingCurrentItem;
- (void)clearBrowserController;
- (void)clearFindOnPageMatchesCounter;
- (void)clearFluidProgressState;
- (void)clearPageLoadStatistics;
- (void)clearReaderScrollInformation;
- (void)clearReaderView;
- (void)clearTabReuseURL;
- (void)closeForWebExtensionContext:(id)a3 completionHandler:(id)a4;
- (void)commitPreviewViewController:(id)a3;
- (void)createBrowserReaderViewIfNeeded;
- (void)createReaderWebViewForReaderController:(id)a3;
- (void)dataForQuickLookDocument:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)decreasePageZoomSetting;
- (void)detectWebpageLocaleForWebExtensionContext:(id)a3 completionHandler:(id)a4;
- (void)dialogController:(id)a3 didDismissDialog:(id)a4;
- (void)dialogController:(id)a3 dismissViewController:(id)a4 withAdditionalAnimations:(id)a5;
- (void)dialogController:(id)a3 presentViewController:(id)a4 withAdditionalAnimations:(id)a5;
- (void)dialogController:(id)a3 willPresentDialog:(id)a4;
- (void)didActivateReader;
- (void)didAutoDetectSiteSpecificSearchProviderWithOriginatingURL:(id)a3 searchURLTemplate:(id)a4;
- (void)didFindAppBannerWithContent:(id)a3;
- (void)didFindSummarizationRestrictionsForReaderController:(id)a3;
- (void)didReplaceTabDocument:(id)a3;
- (void)dismissAppSuggestionBanner:(id)a3;
- (void)dismissAutoFillInternalFeedbackActivityForFormAutoFillController:(id)a3 immediately:(BOOL)a4;
- (void)dismissSiriReaderMediaSessionImmediately:(BOOL)a3;
- (void)dispatchNavigationIntent:(id)a3;
- (void)displayAttributionBannerForHighlightIfNeeded:(id)a3;
- (void)displayNewTabOverridePageIfNecessary;
- (void)donateCurrentNavigationWithNavigationResponse:(id)a3;
- (void)donateSameDocumentNavigationIfNecessary;
- (void)downloadDidFail:(id)a3;
- (void)downloadDidFinish:(id)a3;
- (void)downloadDidStart:(id)a3;
- (void)downloadShouldContinueAfterReceivingResponse:(id)a3 decisionHandler:(id)a4;
- (void)duplicateUsingConfiguration:(id)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)endSuppressingProgressAnimationAnimated:(BOOL)a3;
- (void)evictFromTabReuse;
- (void)fetchCanonicalURLWithCompletionHandler:(id)a3;
- (void)fetchMetadataForBookmark:(id)a3 completion:(id)a4;
- (void)filteredArticleTextDidBecomeReadyForReaderController:(id)a3;
- (void)findOnPageCompletionProvider:(id)a3 setStringToComplete:(id)a4;
- (void)fluidProgressRocketAnimationDidComplete;
- (void)formAutoFillControllerDidFocusSensitiveFormField:(id)a3;
- (void)formAutoFillControllerGetAuthenticationForAutoFill:(id)a3 completion:(id)a4;
- (void)formAutoFillControllerUserChoseToUseGeneratedPassword:(id)a3;
- (void)getApplicationManifestWithCompletionHandler:(id)a3;
- (void)goBackAllowingNewTabToSpawnIfNeeded:(BOOL)a3;
- (void)goBackForWebExtensionContext:(id)a3 completionHandler:(id)a4;
- (void)goBackToParentTab;
- (void)goForwardAllowingNewTabToSpawnIfNeeded:(BOOL)a3;
- (void)goForwardForWebExtensionContext:(id)a3 completionHandler:(id)a4;
- (void)goToBackForwardListItem:(id)a3;
- (void)handleNavigationIntent:(id)a3 completion:(id)a4;
- (void)hibernate;
- (void)hideBannerForHighlightIdentifier:(id)a3;
- (void)history;
- (void)increasePageZoomSetting;
- (void)indexTabToCoreSpotlight;
- (void)invalidateUserActivity;
- (void)keyboardWillHide:(id)a3;
- (void)linkPreviewHelper:(id)a3 addURLToReadingList:(id)a4;
- (void)linkPreviewHelper:(id)a3 commitPreviewViewControllerForAction:(int64_t)a4 withTabOrder:(int64_t)a5;
- (void)linkPreviewHelper:(id)a3 didProduceNavigationIntent:(id)a4 forAction:(int64_t)a5;
- (void)linkPreviewHelper:(id)a3 redirectToExternalNavigationResult:(id)a4;
- (void)linkPreviewHelperWillBeginDownload:(id)a3;
- (void)linkPreviewHelperWillDisableLinkPreview;
- (void)loadCloudTab:(id)a3;
- (void)loadTestURL:(id)a3 withInjectedBundle:(BOOL)a4 withCallback:(id)a5 pagesNeedingMemoryWarningSent:(id)a6;
- (void)loadURL:(id)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)loadURL:(id)a3 title:(id)a4 skipSyncableTabUpdates:(BOOL)a5;
- (void)loadingController:(id)a3 willLoadRequest:(id)a4 webView:(id)a5 userDriven:(BOOL)a6;
- (void)loadingControllerWillStartUserDrivenLoad:(id)a3;
- (void)mediaStateDidChangeNeedsDelay:(uint64_t)a1;
- (void)mute;
- (void)muteMediaCapture;
- (void)muteOtherTabs;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pageContextDataFetcherDidFinishFetching:(id)a3 forURL:(id)a4 withError:(id)a5;
- (void)pageLoadErrorController:(id)a3 allowLegacyTLSConnectionForURL:(id)a4 navigateToURL:(id)a5;
- (void)pageLoadErrorController:(id)a3 loadFailedRequestAfterError:(id)a4;
- (void)pageLoadErrorController:(id)a3 presentViewController:(id)a4;
- (void)pageLoadErrorControllerClosePage:(id)a3;
- (void)pageLoadErrorControllerDidAddAlert:(id)a3;
- (void)pageLoadErrorControllerReloadUsingHTTPSOnlyBypass:(id)a3;
- (void)pageLoadErrorControllerReloadWithoutPrivateRelay:(id)a3;
- (void)prepareToContinueUserActivity;
- (void)prepareToUseReader;
- (void)presentAutoFillInternalFeedbackToastForFormAutoFillController:(id)a3 diagnosticsDataWithoutPageContents:(id)a4;
- (void)presentNextDialogIfNeeded;
- (void)readerController:(id)a3 didClickLinkInReaderWithRequest:(id)a4;
- (void)readerController:(id)a3 didClickLinkRequestingNewWindowInReaderWithRequest:(id)a4;
- (void)readerController:(id)a3 didDeactivateReaderWithMode:(unint64_t)a4;
- (void)readerController:(id)a3 didDetermineAdditionalTextSamples:(id)a4 dueTo:(int64_t)a5;
- (void)readerController:(id)a3 didDetermineReaderAvailability:(id)a4 dueTo:(int64_t)a5;
- (void)readerController:(id)a3 didEncounterErrorForSummarization:(id)a4;
- (void)readerController:(id)a3 didExtractArticleText:(id)a4 withMetadata:(id)a5;
- (void)readerController:(id)a3 didFinishOnDemandSummarization:(id)a4;
- (void)readerController:(id)a3 didTwoFingerTapLinkInReaderWithContext:(id)a4;
- (void)release;
- (void)reloadDisablingAdvancedPrivateBrowsingPrivacyProtections:(BOOL)a3;
- (void)reloadDisablingContentBlockers:(BOOL)a3;
- (void)reloadEnablingDowngradedPrivateRelay:(BOOL)a3;
- (void)reloadFromOrigin:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)reloadFromOriginUserInitiated;
- (void)reloadUserInitiated;
- (void)removeMediaSuspensionReason:(unint64_t)a3;
- (void)resetPageZoomSetting;
- (void)resetPendingAutoFillInternalFeedbackToastDismissalTimer;
- (void)resetTabViewItems;
- (void)restoreAllHighlightsData;
- (void)restoreScrollPositionWithCloudTab:(id)a3;
- (void)restoreSessionState:(id)a3 andNavigate:(BOOL)a4 fromSafariViewService:(BOOL)a5;
- (void)restoreStateFromTab:(id)a3;
- (void)saveWebArchiveToPath:(id)a3 completion:(id)a4;
- (void)select;
- (void)setActive:(BOOL)a3;
- (void)setAllowsRemoteInspection:(BOOL)a3;
- (void)setAppSuggestionBanner:(id)a3 isPinned:(BOOL)a4;
- (void)setAudioState:(int)a3 needsDelay:;
- (void)setBrowserController:(id)a3 afterTabGroupReuse:(BOOL)a4;
- (void)setChangedPropertiesForOnUpdatedWebExtensionEvent:(unint64_t)a3;
- (void)setClosed:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setInitialURLForStatePersisting:(id)a3 title:(id)a4;
- (void)setIsBlank:(BOOL)a3;
- (void)setMediaStateIcon:(uint64_t)a1;
- (void)setMuted:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)setNeedsNewTabSnapshot;
- (void)setPageZoomFactor:(double)a3;
- (void)setParentTabDocumentForBackClosesSpawnedTab:(id)a3;
- (void)setPinned:(BOOL)a3;
- (void)setPinned:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)setQuickLookDocumentForCurrentBackForwardListItem:(uint64_t)a1;
- (void)setReaderModeActive:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)setReadingListBookmark:(id)a3;
- (void)setSelected:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)setShareParticipants:(id)a3;
- (void)setShowingContinuous:(BOOL)a3;
- (void)setShowingReader:(BOOL)a3;
- (void)setSourceApplicationBundleIdentifierForNextCommit:(id)a3;
- (void)setSuppressWebExtensionEvents:(BOOL)a3;
- (void)setSuppressingProgressAnimationForNavigationGesture:(BOOL)a3;
- (void)setUnifiedTabBarItem:(uint64_t)a1;
- (void)setUnread:(BOOL)a3;
- (void)setUpBackClosesSpawnedTabWithParent:(id)a3;
- (void)setUuid:(id)a3;
- (void)setWebClip:(uint64_t)a1;
- (void)setZoomFactor:(double)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5;
- (void)sfScribbleController:(id)a3 presentAlert:(id)a4;
- (void)sfScribbleControllerDidEndScribbling:(id)a3;
- (void)sfScribbleControllerDidStartScribbling:(id)a3;
- (void)sfScribbleControllerDidUpdateHiddenElementCount:(id)a3;
- (void)sfWebViewDidChangeSafeAreaInsets:(id)a3;
- (void)sfWebViewDidDismissFindOnPage:(id)a3;
- (void)showDownload:(id)a3;
- (void)showFindOnPage;
- (void)snapshotForWebClipIcon:(id)a3;
- (void)snapshotWithSize:(CGSize)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)statusBarIndicatorTapped;
- (void)stopAdvertisingProactiveActivityContent;
- (void)stopLoading;
- (void)stopLoadingUserInitiated;
- (void)tabGroupManager:(id)a3 didUpadateActiveParticipants:(id)a4 inTabWithUUID:(id)a5;
- (void)toggleGlobalMediaStateMuted;
- (void)toggleMediaStateMuted;
- (void)toggleReader;
- (void)touchIconFetcher;
- (void)translationContext:(id)a3 shouldReportProgressInUnifiedField:(BOOL)a4;
- (void)translationContext:(id)a3 showTranslationErrorAlertWithTitle:(id)a4 message:(id)a5;
- (void)translationContext:(id)a3 urlForCurrentPageWithCompletionHandler:(id)a4;
- (void)translationContextReloadPageInOriginalLanguage:(id)a3;
- (void)translationContextWillRequestTranslatingWebpage:(id)a3;
- (void)unfreezeAfterNavigationGesture:(BOOL)a3;
- (void)unhibernate;
- (void)unmute;
- (void)unmuteOtherTabs;
- (void)updateAccessibilityIdentifier;
- (void)updateAncestryToChildOfTopLevelAncestorRelatedTab:(id)a3;
- (void)updateAncestryWithParentTab:(id)a3;
- (void)updateGlobalMediaStateIcon;
- (void)updateLockedBrowsingState;
- (void)updateMenuButtonShowsBadge;
- (void)updateReadingListItemPreviewText:(id)a3;
- (void)updateShowsSiriReaderPlayingIcon;
- (void)updateTabIcon;
- (void)updateTabIconWithDelay:(double)a3;
- (void)updateTabTitle;
- (void)updateThemeColorAndUnderPageBackground:(BOOL)a3;
- (void)updateUsageTrackingInformationAfterLinkPreviewDismissal;
- (void)updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:(BOOL)a3;
- (void)updateUserActivity;
- (void)updateUsesDarkTheme;
- (void)userDeclinedAutomaticStrongPasswordForCurrentDomainOnTabWithUUID:(id)a3;
- (void)validateExtensionToolbarItems;
- (void)validateWebClip;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 preferences:(id)a5 decisionHandler:(id)a6;
- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didCommitNavigation:(id)a4;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
- (void)webView:(id)a3 navigationAction:(id)a4 didBecomeDownload:(id)a5;
- (void)webView:(id)a3 navigationResponse:(id)a4 didBecomeDownload:(id)a5;
- (void)webView:(id)a3 runJavaScriptAlertPanelWithMessage:(id)a4 initiatedByFrame:(id)a5 completionHandler:(id)a6;
- (void)webView:(id)a3 runJavaScriptConfirmPanelWithMessage:(id)a4 initiatedByFrame:(id)a5 completionHandler:(id)a6;
- (void)webView:(id)a3 runJavaScriptTextInputPanelWithPrompt:(id)a4 defaultText:(id)a5 initiatedByFrame:(id)a6 completionHandler:(id)a7;
- (void)webView:(id)a3 shouldLoadIconWithParameters:(id)a4 completionHandler:(id)a5;
- (void)webViewDidChangeSize;
- (void)webViewDidClose:(id)a3;
- (void)webViewDidIncreaseZoom;
- (void)webViewWillChangeSize;
- (void)willClose;
- (void)willDismissLinkPreviewViewController;
@end

@implementation TabDocument

- (WBSUserDefinedContentBlockerManager)normalBrowsingUserDefinedContentBlockerManager
{
  v2 = +[Application sharedApplication];
  v3 = [v2 userDefinedContentBlockerManager];

  return v3;
}

- (id)_blankTabTitle
{
  if (a1)
  {
    v2 = objc_opt_class();
    v3 = [a1 libraryType];
    v4 = [v2 blankTabTitleWithLibraryType:v3 controlledByAutomation:{objc_msgSend(a1, "isControlledByAutomation")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)urlForExtensions
{
  if ([(TabDocument *)self isHibernated])
  {
    [(LoadingController *)self->_loadingController URL];
  }

  else
  {
    [(TabDocument *)self expectedOrCurrentURL];
  }
  v3 = ;

  return v3;
}

- (void)displayNewTabOverridePageIfNecessary
{
  v4 = newTabOverridePageURLForTab(self);
  if (v4)
  {
    v3 = [(TabDocument *)self loadURL:v4 userDriven:0];
  }
}

- (WBSPrivateBrowsingUserDefinedContentBlockerManager)privateBrowsingUserDefinedContentBlockerManager
{
  v2 = +[Application sharedApplication];
  v3 = [v2 userDefinedContentBlockerManagerForPrivateBrowsing];

  return v3;
}

- (void)release
{
  add = atomic_fetch_add(&self->_retainCount, 0xFFFFFFFFFFFFFFFELL);
  if (add <= 0)
  {
    if (add < 0 || (v4 = __30__TabDocument_NonARC__release__block_invoke(), v5 = -2, atomic_compare_exchange_strong(&self->_retainCount, &v5, 1uLL), v5 != -2))
    {
      __break(1u);
    }

    else if (v4 == 1)
    {

      [(TabDocument *)self dealloc];
    }

    else
    {
      v6 = MEMORY[0x277D85CD0];
      v7 = MEMORY[0x277D82BC8];

      dispatch_barrier_async_f(v6, self, v7);
    }
  }
}

- (BOOL)_isDeallocating
{
  retainCount = self->_retainCount;
  if (retainCount == -2)
  {
    LOBYTE(self) = 1;
  }

  else if (retainCount <= -3)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(self) = retainCount & 1;
  }

  return self;
}

- (void)_setUp
{
  v3 = [MEMORY[0x277D4A888] isLockdownModeEnabledForSafari];
  *(a2 + 665) = v3;
  *(a2 + 664) = v3;
  v4 = objc_alloc_init(MEMORY[0x277D4A070]);
  v5 = *(a2 + 1416);
  *(a2 + 1416) = v4;
}

- (id)_loadedTitle
{
  if (a1)
  {
    if ([a1[105] length])
    {
      v2 = a1[105];
    }

    else
    {
      v2 = [a1[21] title];
    }

    v3 = v2;
    if ([v2 length])
    {
      v4 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      v5 = [v4 BOOLForKey:@"DebugOverrideTabTitleWithMatchingBookmark"];

      if (v5)
      {
        v6 = [(TabDocument *)a1 _debugOverrideTitle];
        if ([v6 length])
        {
          v7 = v6;
        }

        else
        {
          v7 = v3;
        }

        v8 = v7;

        v9 = v3;
        v3 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = v3;
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)tabTitle
{
  v2 = self;
  if ([(TabDocument *)self isHibernated])
  {
    v2 = v2->_loadingController;
  }

  v3 = [(TabDocument *)v2 title];

  return v3;
}

- (TabDocument)init
{
  v9.receiver = self;
  v9.super_class = TabDocument;
  v2 = [(TabDocument *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    renderingProgressEventObservers = v2->_renderingProgressEventObservers;
    v2->_renderingProgressEventObservers = v3;

    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    navigationObservers = v2->_navigationObservers;
    v2->_navigationObservers = v5;

    v7 = v2;
  }

  return v2;
}

- (TabDocument)retain
{
  if (atomic_fetch_add(&self->_retainCount, 2uLL) <= -3)
  {
    __break(1u);
  }

  return self;
}

- (BOOL)_tryRetain
{
  while (1)
  {
    retainCount = self->_retainCount;
    v3 = (retainCount & 1) != 0 || retainCount == -2;
    v4 = !v3;
    if (v3)
    {
LABEL_10:
      LOBYTE(self) = v4;
      return self;
    }

    if (retainCount <= -3)
    {
      break;
    }

    v5 = self->_retainCount;
    atomic_compare_exchange_strong(&self->_retainCount, &v5, retainCount + 2);
    if (v5 == retainCount)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return self;
}

- (_SFPerSitePreferencesVendor)perSitePreferencesVendor
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained perSitePreferencesVendor];

  return v3;
}

- (BrowserController)browserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);

  return WeakRetained;
}

- (void)resetTabViewItems
{
  v3 = objc_alloc_init(TabDocumentCollectionItem);
  tabCollectionItem = self->_tabCollectionItem;
  self->_tabCollectionItem = v3;

  [(TabDocumentCollectionItem *)self->_tabCollectionItem setUUID:self->_uuid];
  [(TabDocumentCollectionItem *)self->_tabCollectionItem setMediaStateIcon:[(TabDocument *)self mediaStateIcon]];
  [(TabDocumentCollectionItem *)self->_tabCollectionItem setPinned:self->_pinned];

  [(TabDocument *)self updateTabTitle];
}

- (void)updateTabTitle
{
  v9 = [(TabDocumentCollectionItem *)self->_tabCollectionItem title];
  if (self->_displayingStandaloneImage)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(TabDocument *)self _titleIncludeLoading:1 allowURLStringFallback:1 allowUntitled:?];
  }

  v4 = [(TabDocument *)&self->super.isa _addTitlePrefixToString:v3];

  [(TabDocumentCollectionItem *)self->_tabCollectionItem setTitle:v4];
  v5 = [(TabDocument *)self tabBarTitle];
  v6 = [(TabDocument *)&self->super.isa _addTitlePrefixToString:v5];

  [(TabBarItem *)self->_tabBarItem setTitle:v6];
  [(UnifiedTabBarItem *)self->_unifiedTabBarItem setTitle:v6];
  [(TabDocument *)&self->super.isa _reconfigureLibraryItemView];
  linkPreviewViewController = self->_linkPreviewViewController;
  v8 = [(TabDocument *)self URLString];
  [(LinkPreviewViewController *)linkPreviewViewController updatePreviewLoadingUIWithURLString:v8];

  [(TabDocument *)self _titleForWebExtensionsMayHaveChanged];
  [(TabDocument *)&self->super.isa _URLForWebExtensionsMayHaveChanged];
  if ((WBSIsEqual() & 1) == 0)
  {
    [(TabDocument *)self _notifyDidUpdateTabCollectionItem];
  }
}

- (NSString)URLString
{
  if (self->_webView && ([(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator UIShouldReflectCommittedURLInsteadOfCurrentURL]& 1) != 0)
  {
    v3 = [(_SFWebView *)self->_webView _committedURL];
  }

  else
  {
    v3 = [(LoadingController *)self->_loadingController URL];
  }

  v4 = v3;
  if (!v3)
  {
    activeDownload = self->_activeDownload;
    if (activeDownload)
    {
      v4 = [(_SFDownload *)activeDownload sourceURL];
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = [(TabDocument *)self customUserVisibleStringForReadingListBookmarkURL:v4];
  if (!v6)
  {
    v6 = [v4 safari_userVisibleStringConsideringLongURLs];
  }

  return v6;
}

- (void)_reconfigureLibraryItemView
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 124);
    v4 = [WeakRetained libraryController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [a1 uuidString];
      [v4 reconfigureTabCellWithUUIDString:v3];
    }
  }
}

- (void)_titleForWebExtensionsMayHaveChanged
{
  if (a1)
  {
    v4 = [a1 tabTitle];
    if (v4 != a1[182] && ([v4 isEqualToString:?] & 1) == 0)
    {
      v2 = [v4 copy];
      v3 = a1[182];
      a1[182] = v2;

      [a1 setChangedPropertiesForOnUpdatedWebExtensionEvent:{objc_msgSend(a1, "changedPropertiesForOnUpdatedWebExtensionEvent") | 1}];
    }
  }
}

- (void)_URLForWebExtensionsMayHaveChanged
{
  if (a1)
  {
    obj = [a1 urlForExtensions];
    v2 = a1[183];
    if ((WBSIsEqual() & 1) == 0)
    {
      objc_storeStrong(a1 + 183, obj);
      [a1 setChangedPropertiesForOnUpdatedWebExtensionEvent:{objc_msgSend(a1, "changedPropertiesForOnUpdatedWebExtensionEvent") | 2}];
      [a1 validateExtensionToolbarItems];
    }
  }
}

- (void)_notifyDidUpdateTabCollectionItem
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 1248));
    [WeakRetained tabDocumentDidUpdateTabCollectionItem:a1];
  }
}

- (SFWebExtensionsController)webExtensionsController
{
  v3 = +[Application sharedApplication];
  v4 = [(_SFBrowserConfiguration *)self->_configuration isPrivateBrowsingEnabled];
  v5 = [(TabDocument *)self profile];
  v6 = [v3 webExtensionsControllerForTabWithPrivateBrowsingEnabled:v4 profile:v5];

  return v6;
}

- (WBProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained effectiveProfile];

  return v3;
}

- (id)tabUpdateBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__TabDocument_tabUpdateBlock__block_invoke;
  v4[3] = &unk_2781DA750;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __29__TabDocument_tabUpdateBlock__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 975) == 1 && (*(WeakRetained + 785) & 1) == 0)
    {
      [v8 setPinned:*(WeakRetained + 951) title:WeakRetained[143] url:WeakRetained[144]];
    }

    else
    {
      *(WeakRetained + 785) = 0;
      v5 = [(TabDocument *)WeakRetained _localAttributes];
      [v8 setLocalAttributes:v5];

      v6 = [(TabDocument *)v4 _titleForStatePersistingForTabGroupTab];
      v7 = [v4 URLForStatePersisting];
      if (v7)
      {
        if (*(v4 + 709) == 1)
        {
          [v8 setLocalTitle:v6];
          [v8 setLocalURL:v7];
        }

        else if ((*(v4 + 975) & 1) == 0)
        {
          [v8 setTitle:v6];
          [v8 setUrl:v7];
        }
      }

      [v8 setPinned:*(v4 + 951) title:v4[143] url:v4[144]];
    }
  }
}

- (_SFWebView)activeWebView
{
  if ([(TabDocument *)self isShowingReader])
  {
    [(TabDocument *)self readerWebView];
  }

  else
  {
    [(TabDocument *)self webView];
  }
  v3 = ;

  return v3;
}

- (BOOL)isShowingSystemStartPage
{
  if (!self->_isBlank)
  {
    return 0;
  }

  if ([(TabDocument *)self isLoading])
  {
    return 0;
  }

  return ![(TabDocument *)self isShowingStartPageOverriddenByExtension];
}

- (BOOL)isShowingStartPageOverriddenByExtension
{
  v3 = [(TabDocument *)self URL];
  v4 = extensionOverridenStartPageURLForTab(self);
  v5 = [v3 isEqual:v4];

  return v5;
}

- (SFNavigationBarItem)navigationBarItem
{
  navigationBarItem = self->_navigationBarItem;
  if (!navigationBarItem)
  {
    v4 = objc_alloc_init(MEMORY[0x277D28CE8]);
    v5 = self->_navigationBarItem;
    self->_navigationBarItem = v4;

    [(TabDocument *)self _setUpNavigationBarItem];
    [(LoadingController *)self->_loadingController estimatedProgress];
    v8 = v6 < 1.0 && v6 > 0.0;
    [(SFNavigationBarItem *)self->_navigationBarItem setStopReloadButtonShowsStop:v8];
    [(TabDocument *)self _updateNavigationBarItem];
    [(SFNavigationBarItem *)self->_navigationBarItem setShowsStopReloadButtons:!self->_isBlank];
    navigationBarItem = self->_navigationBarItem;
  }

  v9 = navigationBarItem;

  return v9;
}

- (uint64_t)_setUpNavigationBarItem
{
  if (result)
  {
    v1 = result;
    [*(result + 280) setFluidProgressController:*(result + 176)];
    [*(v1 + 280) setFluidProgressStateSource:v1];
    v2 = *(v1 + 1104);
    if (v2)
    {
      [v2 setNavigationBarItem:*(v1 + 280)];
    }

    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v1 selector:sel__voiceSearchAvailabilityDidChange_ name:*MEMORY[0x277D29198] object:0];

    return [v1 _voiceSearchAvailabilityDidChange:0];
  }

  return result;
}

- (void)_updateNavigationBarItem
{
  if (!a1 || !*(a1 + 280))
  {
    return;
  }

  v2 = [a1 URL];
  v35 = v2;
  if ([v2 safari_isSafariWebExtensionURL])
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 URLString];
  }

  v34 = [MEMORY[0x277CDB8A8] sharedInstance];
  v4 = [v34 defaultSearchEngineIfPopulatedForPrivateBrowsing:{objc_msgSend(a1, "isPrivateBrowsingEnabled")}];
  v33 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277CDBA28];
    [v5 removeObserver:a1 name:*MEMORY[0x277CDBA28] object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:a1 selector:sel__searchEngineControllerDidFinishPopulating_ name:v6 object:0];
  }

  if ([*(a1 + 48) UIShouldReflectCommittedURLInsteadOfCurrentURL])
  {
    [*(a1 + 1064) _committedURL];
  }

  else
  {
    [*(a1 + 168) URL];
  }
  v32 = ;
  v8 = [v4 userVisibleQueryFromSearchURL:v32];
  if (*(a1 + 192) || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = 0;
  }

  else
  {
    v9 = [*(a1 + 1064) _safeBrowsingWarning];
    v10 = v9 != 0;
  }

  [*(a1 + 280) setOverrideBarStyleForSecurityWarning:v10];
  v38 = 0;
  v36 = [v3 safari_simplifiedUserVisibleURLStringWithSimplifications:133 forDisplayOnly:0 simplifiedStringOffset:&v38];
  v37 = 0;
  v11 = [v3 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:&v37];
  *(a1 + 974) = 0;
  if (*(a1 + 192))
  {
    v12 = _WBSLocalizedString();
    goto LABEL_17;
  }

  if (([v2 safari_isDataURL] & 1) == 0)
  {
    if ([v2 safari_looksLikeAboutBlankURL])
    {
      v19 = MEMORY[0x277D4A6E0];
    }

    else
    {
      if (([v2 safari_looksLikeAboutSrcdocURL] & 1) == 0)
      {
        if (!v8)
        {
          v13 = v11;
          v18 = v36;
          v16 = 0;
          v17 = 0;
          if (v37 <= v38)
          {
            v14 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v37 - v38;
          }

          if (v11)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        v31 = v8;
        *(a1 + 974) = 1;
        v13 = v31;
        v14 = 0;
        goto LABEL_21;
      }

      v19 = MEMORY[0x277D4A0D0];
    }

    v12 = *v19;
LABEL_17:
    v13 = v12;
    if (v8)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v13 = @"data:";
  if (v8)
  {
LABEL_18:
    if (v13 == v8)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_21:
    v15 = [a1 expectedOrCurrentURL];
    v16 = [v15 safari_isEligibleToShowNotSecureWarning];

    v17 = 1;
    v18 = v8;
    if (v11)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_25:
  v18 = v36;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (v13 == v11)
  {
    v16 = 0;
    v17 = 0;
    if (v37 > v38)
    {
      v14 = v37 - v38;
    }

    if (v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    if (v11)
    {
      goto LABEL_34;
    }
  }

LABEL_33:
  if (!v16)
  {
LABEL_36:
    [*(a1 + 280) setSecurityAnnotation:0 hasFocusedInputFieldOnCurrentPage:*(a1 + 736)];
    v20 = 0;
    goto LABEL_37;
  }

LABEL_34:
  if (![(TabDocument *)a1 isPageEligibileToShowNotSecureWarning])
  {
    goto LABEL_36;
  }

  v20 = 1;
  [*(a1 + 280) setSecurityAnnotation:1 hasFocusedInputFieldOnCurrentPage:*(a1 + 736)];
LABEL_37:
  if ([a1 isBlank])
  {
    v21 = 0;
  }

  else if (*(a1 + 664))
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  [*(a1 + 280) setLockdownModeAnnotation:v21];
  if ((v16 & v20) == 1)
  {
    v22 = v11;

    v13 = v22;
    v23 = 0;
    v18 = v13;
  }

  else
  {
    v23 = v17;
  }

  if (*(a1 + 192))
  {
    v24 = 1;
  }

  else
  {
    v24 = v20;
  }

  if ((v17 | v24))
  {
    v25 = v24 ^ 1u;
  }

  else
  {
    v25 = [v36 length] == 0;
  }

  [*(a1 + 280) setShowsSearchIndicator:v25];
  [*(a1 + 280) setText:v13 textWhenExpanded:v18 startIndex:v14];
  [*(a1 + 280) setShowsSearchTermsWhenExpanded:v23];
  v26 = [a1 URL];
  [*(a1 + 280) setShowsStopReloadButtons:v26 != 0];

  [*(a1 + 280) setShowsPageFormatButton:{objc_msgSend(a1, "canShowPageFormatMenu")}];
  v27 = *(a1 + 280);
  if (*(a1 + 192))
  {
    v28 = 0;
  }

  else
  {
    v28 = [a1 isReaderAvailable];
  }

  [v27 setShowsReaderButton:v28 showsAvailabilityText:0];
  v29 = *(a1 + 280);
  if (*(a1 + 192))
  {
    v30 = 0;
  }

  else
  {
    v30 = [*(a1 + 1056) detectionNotificationLevel] == 1;
  }

  [v29 setShowsTranslationButton:v30 showsAvailabilityText:0];
  [*(a1 + 1272) updatePreviewLoadingUIWithURLString:v3];
}

- (BOOL)canShowPageFormatMenu
{
  v3 = [(TabDocument *)self URL];
  if ([v3 safari_isSafariWebExtensionURL])
  {
    LOBYTE(v4) = 1;
  }

  else if ((([v3 safari_isHTTPFamilyURL] & 1) != 0 || objc_msgSend(v3, "sf_isOfflineReadingListURL")) && !-[TabDocument isPDFDocument](self, "isPDFDocument") && !-[TabDocument isDisplayingStandaloneImage](self, "isDisplayingStandaloneImage"))
  {
    v4 = ![(TabDocument *)self isDisplayingStandaloneMedia];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isReaderAvailable
{
  if (self->_hasDoneReaderAvailabilityDetection && (readerContext = self->_readerContext) != 0)
  {
    return [(_SFReaderController *)readerContext isReaderAvailable];
  }

  else
  {
    return 0;
  }
}

- (TabDocumentView)view
{
  cachedView = self->_cachedView;
  if (!cachedView)
  {
    v4 = [(TabDocument *)self createTabDocumentView];
    v5 = self->_cachedView;
    self->_cachedView = v4;

    [(TabDocument *)self updateAccessibilityIdentifier];
    [(TabDocumentView *)self->_cachedView setReaderWebView:self->_readerWebView];
    [(TabDocumentView *)self->_cachedView setWebView:self->_webView];
    [(TabDocumentView *)self->_cachedView safari_setTabEntityProviderWithInfoProvider:self];
    cachedView = self->_cachedView;
  }

  return cachedView;
}

- (id)createTabDocumentView
{
  v2 = objc_alloc_init(TabDocumentView);

  return v2;
}

- (void)updateAccessibilityIdentifier
{
  v14[6] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v13[0] = @"UUID";
  v4 = [(NSUUID *)self->_uuid UUIDString];
  v14[0] = v4;
  v13[1] = @"IsPrivate";
  if ([(TabDocument *)self isPrivateBrowsingEnabled])
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  if (self->_didFirstLayout)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v14[1] = v5;
  v14[2] = v6;
  v13[2] = @"IsPageLoaded";
  v13[3] = @"InReaderMode";
  if ([WeakRetained isShowingReader])
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  v14[3] = v7;
  v13[4] = @"WebViewProcessID";
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[_SFWebView _webProcessIdentifier](self->_webView, "_webProcessIdentifier")];
  v14[4] = v8;
  v13[5] = @"IsLoadedUsingDesktopUserAgent";
  if ([(_SFReloadOptionsController *)self->_reloadOptionsController loadedUsingDesktopUserAgent])
  {
    v9 = @"true";
  }

  else
  {
    v9 = @"false";
  }

  v14[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v11 = WBSMakeAccessibilityIdentifier();
  [(TabDocumentView *)self->_cachedView setAccessibilityIdentifier:v11];

  v12 = [WeakRetained rootViewController];
  [v12 updateAccessibilityIdentifier];
}

- (BOOL)isSecure
{
  if (![(_SFWebView *)self->_webView hasOnlySecureContent]|| (objc_opt_respondsToSelector() & 1) != 0 && ([(_SFWebView *)self->_webView _negotiatedLegacyTLS]& 1) != 0)
  {
    return 0;
  }

  v4 = [(LoadingController *)self->_loadingController URL];
  v5 = [(_SFWebView *)self->_webView _committedURL];
  v3 = [v4 isEqual:v5];

  return v3;
}

- (BOOL)isShowingManagedNewTabPage
{
  v3 = [MEMORY[0x277D49A60] sharedController];
  v4 = [v3 managedNewTabPageState];

  if (v4 == 1)
  {

    return [(TabDocument *)self isShowingSystemStartPage];
  }

  else
  {
    if (v4 == 2)
    {
      v11 = [(TabDocument *)self webExtensionsController];
      v12 = [MEMORY[0x277D49A60] sharedController];
      v13 = [v12 managedNewTabPageExtensionComposedIdentifier];
      v14 = [v11 webExtensionForComposedIdentifier:v13];

      v15 = [(TabDocument *)self URL];
      v16 = [v14 newTabOverridePageURL];
      v10 = [v15 safari_isEqualToURL:v16];
    }

    else if (v4 == 3)
    {
      v5 = [(TabDocument *)self URL];
      v6 = MEMORY[0x277CBEBC0];
      v7 = [MEMORY[0x277D49A60] sharedController];
      v8 = [v7 managedNewTabPageHomepageURLString];
      v9 = [v6 URLWithString:v8];
      v10 = [v5 safari_isEqualToURL:v9];
    }

    else
    {
      return 0;
    }

    return v10;
  }
}

- (BOOL)isShowingErrorPage
{
  v3 = [(TabDocument *)self hasQuickLookContent];
  if (!v3)
  {
    v4 = [(_SFWebView *)self->_webView _unreachableURL];
    if (v4)
    {
      v5 = 1;
LABEL_9:

      return v5;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [(_SFWebView *)self->_webView _safeBrowsingWarning];
    v5 = v6 != 0;

    if (v3)
    {
      return v5;
    }

    goto LABEL_8;
  }

  v5 = 0;
  if (!v3)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  return v5;
}

- (BOOL)hasQuickLookContent
{
  v2 = [(TabDocument *)self quickLookDocument];
  v3 = v2 != 0;

  return v3;
}

- (SFQuickLookDocument)quickLookDocument
{
  quickLookDocumentCheckCompleted = self->_quickLookDocumentCheckCompleted;
  quickLookDocument = self->_quickLookDocument;
  if (!quickLookDocumentCheckCompleted && !quickLookDocument)
  {
    self->_quickLookDocumentCheckCompleted = 1;
    v5 = [(SFQuickLookDocumentWriter *)self->_quickLookDocumentWriter quickLookDocument];
    v6 = self->_quickLookDocument;
    self->_quickLookDocument = v5;

    v7 = self->_quickLookDocument;
    if (!v7 || ([(TabDocument *)self setQuickLookDocumentForCurrentBackForwardListItem:v7], (v8 = self->_quickLookDocument) == 0))
    {
      if ([(TabDocument *)self isPDFDocument])
      {
        v9 = [(TabDocument *)self suggestedFilenameForDisplayedPDF];
        v10 = objc_alloc(MEMORY[0x277D28D20]);
        v11 = [v10 initWithFileName:v9 mimeType:0 uti:*MEMORY[0x277CC2108] needsQuickLookDocumentView:0];
        v12 = self->_quickLookDocument;
        self->_quickLookDocument = v11;
      }

      v8 = self->_quickLookDocument;
      if (!v8)
      {
        v13 = [(TabDocument *)self quickLookDocumentForCurrentBackForwardListItem];
        v14 = self->_quickLookDocument;
        self->_quickLookDocument = v13;

        v8 = self->_quickLookDocument;
      }
    }

    v15 = [(TabDocument *)self urlForSharing];
    [(SFQuickLookDocument *)v8 setSourceURL:v15];

    [(SFQuickLookDocument *)self->_quickLookDocument setDocumentSource:self];
    quickLookDocument = self->_quickLookDocument;
  }

  return quickLookDocument;
}

- (id)quickLookDocumentForCurrentBackForwardListItem
{
  if (a1)
  {
    v1 = [*(a1 + 1064) backForwardList];
    v2 = [v1 currentItem];
    v3 = [v2 _sf_quickLookDocument];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURL)urlForSharing
{
  v3 = [(TabDocument *)self URL];
  v4 = [(TabDocument *)self customUserVisibleStringForReadingListBookmarkURL:v3];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];

    v3 = v5;
  }

  v6 = [(TabDocument *)self titleForSharing];
  if (v6)
  {
    [v3 _setTitle:v6];
  }

  return v3;
}

- (id)titleForSharing
{
  if ([(TabDocument *)self isShowingErrorPage])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(TabDocument *)self _titleIncludeLoading:0 allowURLStringFallback:0 allowUntitled:?];
  }

  return v3;
}

- (void)updateUserActivity
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [CloudTabStore cloudTabForTabDocument:?];
  v4 = [v3 url];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v4 resolvingAgainstBaseURL:0];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 URL];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained tabDocumentCanBecomeCurrentUserActivity:self];

  if (self->_active && ([v6 safari_isHTTPFamilyURL] & v8 & 1) != 0)
  {
    if (self->_userActivity)
    {
      if (self->_forwardActivityToCoreSpotlight)
      {
        v9 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_INFO, "Stopping updates of NSUserActivity through CoreSpotlight", &v27, 2u);
        }

        [(NSUserActivity *)self->_userActivity _updateForwardToCoreSpotlightIndexer:0xFFFFFFFFLL];
        self->_forwardActivityToCoreSpotlight = 0;
      }
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x277CC1EF0]);
      v11 = [v10 initWithActivityType:*MEMORY[0x277CCA850]];
      userActivity = self->_userActivity;
      self->_userActivity = v11;
    }

    v13 = [v3 dictionaryRepresentationForUserActivityUserInfo];
    [(NSUserActivity *)self->_userActivity setUserInfo:v13];

    v14 = [v3 title];
    [(NSUserActivity *)self->_userActivity setTitle:v14];

    [(NSUserActivity *)self->_userActivity setWebpageURL:v6];
    v15 = [(TabDocument *)self searchableItemAttributes];
    [(NSUserActivity *)self->_userActivity setContentAttributeSet:v15];

    v16 = [(TabDocument *)self searchableItemAttributes];
    LOBYTE(v15) = v16 == 0;

    if ((v15 & 1) == 0)
    {
      [(NSUserActivity *)self->_userActivity _updateForwardToCoreSpotlightIndexer:1];
      self->_forwardActivityToCoreSpotlight = 1;
      v17 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_215819000, v17, OS_LOG_TYPE_INFO, "Sending NSUserActivity through CoreSpotlight since metadata was found on webpage", &v27, 2u);
      }

      v18 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v25 = [(TabDocument *)self searchableItemAttributes];
        v26 = [v25 relatedUniqueIdentifier];
        v27 = 138478083;
        v28 = v26;
        v29 = 2113;
        v30 = v6;
        _os_log_debug_impl(&dword_215819000, v18, OS_LOG_TYPE_DEBUG, "Sending NSUserActivity through CoreSpotlight; relatedUniqueIdentifier '%{private}@' and URL '%{private}@'", &v27, 0x16u);
      }
    }

    v19 = +[Application sharedApplication];
    v20 = [v19 systemNoteTakingController];

    [v20 insertCanonicalURLIfAvailableForUserActivity:self->_userActivity];
    v21 = [(NSUserActivity *)self->_userActivity userInfo];
    v22 = [v21 mutableCopy];

    v23 = [(NSUserActivity *)self->_userActivity _uniqueIdentifier];
    [v22 setObject:v23 forKeyedSubscript:@"uniqueIdentifier"];

    v24 = [v22 copy];
    [(NSUserActivity *)self->_userActivity setUserInfo:v24];

    [(NSUserActivity *)self->_userActivity setNeedsSave:1];
    [(NSUserActivity *)self->_userActivity becomeCurrent];
  }

  else
  {
    [(TabDocument *)&self->super.isa invalidateUserActivity];
  }
}

- (void)invalidateUserActivity
{
  if (*(a2 + 706))
  {
    v5 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Stopping updates of NSUserActivity through CoreSpotlight due to invalidating NSUserActivity", v7, 2u);
    }

    [*a3 _updateForwardToCoreSpotlightIndexer:0xFFFFFFFFLL];
    *(a2 + 706) = 0;
  }

  [*a3 invalidate];
  v6 = *a3;
  *a3 = 0;
}

- (BOOL)isAudible
{
  if (([(_SFWebView *)self->_webView _isPlayingAudio]& 1) != 0)
  {
    return 1;
  }

  lastSiriReaderSessionIdentifier = self->_lastSiriReaderSessionIdentifier;
  v5 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
  v6 = [v5 activeSiriReaderSessionIdentifier];
  LODWORD(lastSiriReaderSessionIdentifier) = [(NSString *)lastSiriReaderSessionIdentifier isEqualToString:v6];

  if (!lastSiriReaderSessionIdentifier)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v8 = [WeakRetained siriReaderPlaybackStateForActiveTab];

  return v8 == 1;
}

- (void)webViewDidChangeSize
{
  [(TabDocument *)&self->super.isa _updateMaxVisibleHeightPercentageUserDriven:?];
  v3 = [(TabDocument *)self readerContext];
  [v3 webViewWillChangeSize];
}

- (void)updateShowsSiriReaderPlayingIcon
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TabDocument_updateShowsSiriReaderPlayingIcon__block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __47__TabDocument_updateShowsSiriReaderPlayingIcon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 992));
  v3 = [WeakRetained siriReaderPlaybackStateForActiveTab];

  v4 = *(*(a1 + 32) + 280);

  return [v4 setShowsSiriReaderPlayingIcon:(v3 - 1) < 2];
}

- (void)unhibernate
{
  if (self->_hibernated)
  {
    [(NSTimer *)self->_unresponsiveWebProcessTimer invalidate];
    unresponsiveWebProcessBlock = self->_unresponsiveWebProcessBlock;
    self->_unresponsiveWebProcessBlock = 0;

    self->_suppressCrashBanner = 0;
    self->_hibernated = 0;
    v4 = [(TabDocument *)self URL];
    v5 = [(TabDocument *)self createWebViewConfiguration];
    [(TabDocument *)self _createDocumentViewWithConfiguration:v5];
    if (self->_savedSessionState)
    {
      goto LABEL_8;
    }

    if (![(TabDocument *)self isBlank])
    {
      v6 = [(WBTab *)self->_tabGroupTab localAttributes];
      v7 = [v6 sessionStateData];

      if ([v7 length])
      {
        v8 = [objc_alloc(MEMORY[0x277CE38A0]) initWithData:v7];
        savedSessionState = self->_savedSessionState;
        self->_savedSessionState = v8;
      }
    }

    if (self->_savedSessionState)
    {
LABEL_8:
      self->_sessionStateRestorationSource = 1;
      self->_externalAppRedirectState = 4;
      self->_userDrivenLoadWasConsumed = 1;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __26__TabDocument_unhibernate__block_invoke;
      v11[3] = &unk_2781D61F8;
      v12 = v4;
      v13 = self;
      [(TabDocument *)self _terminateWebProcessIfNeededAndShowCrashBanner:v11 thenDo:?];
    }

    else if (v4)
    {
      v10 = [(TabDocument *)self _loadURLInternal:v4 userDriven:1];
    }
  }
}

- (id)createWebViewConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = objc_alloc_init(MEMORY[0x277CE3858]);
  v4 = [WeakRetained processPool];
  [v3 setProcessPool:v4];

  [v3 setShowsSystemScreenTimeBlockingView:0];
  v49 = [WeakRetained wkPreferences];
  if ([MEMORY[0x277D49A08] isWAPEnabled])
  {
    v5 = [(TabDocument *)self profileIdentifier];
    v6 = [v5 isEqualToString:{*MEMORY[0x277D49BD8], WeakRetained}];

    if (v6)
    {
      v7 = [v49 copy];

      [v7 _setNotificationsEnabled:1];
      [v7 _setPushAPIEnabled:1];
      [v7 _setNotificationEventEnabled:1];
      v49 = v7;
      [v7 _setAppBadgeEnabled:1];
    }
  }

  [v3 setPreferences:{v49, WeakRetained}];
  if (self->_webClip)
  {
    [v3 setIgnoresViewportScaleLimits:1];
    v8 = [v3 preferences];
    [v8 _setStandalone:1];
  }

  if ([(TabDocument *)self isPrivateBrowsingEnabled])
  {
    v9 = [MEMORY[0x277CE3830] safari_privateBrowsingUserContentController];
  }

  else
  {
    v10 = [(TabDocument *)self webExtensionsController];
    v9 = [v10 userContentController];

    v11 = [(TabDocument *)self history];
    v12 = [v11 visitedLinkStore];
    [v3 _setVisitedLinkStore:v12];
  }

  [v3 setUserContentController:v9];
  v15 = _SFApplicationNameForUserAgent();
  [v3 setApplicationNameForUserAgent:v15];

  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v14 = [v13 valueForKey:*MEMORY[0x277D291B8]];
  LODWORD(v15) = [v14 BOOLValue];

  v16 = [v13 valueForKey:*MEMORY[0x277D292A0]];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    v15 = v15 | 2;
  }

  else
  {
    v15 = v15;
  }

  [v3 setMediaTypesRequiringUserActionForPlayback:v15];
  IsPad = _SFDeviceIsPad();
  if (v15)
  {
    v19 = IsPad;
  }

  else
  {
    v19 = 1;
  }

  [v3 _setMediaDataLoadsAutomatically:v19];
  v20 = [v13 valueForKey:*MEMORY[0x277D29240]];
  [v3 _setMainContentUserGestureOverrideEnabled:{objc_msgSend(v20, "BOOLValue")}];

  v21 = [v13 valueForKey:*MEMORY[0x277D29258]];
  [v3 setAllowsInlineMediaPlayback:{objc_msgSend(v21, "BOOLValue")}];

  v22 = [v13 valueForKey:*MEMORY[0x277D29218]];
  [v3 _setInlineMediaPlaybackRequiresPlaysInlineAttribute:{objc_msgSend(v22, "BOOLValue")}];

  v23 = [v13 valueForKey:*MEMORY[0x277D29220]];
  [v3 _setInvisibleAutoplayNotPermitted:{objc_msgSend(v23, "BOOLValue")}];

  [v3 _setApplePayEnabled:1];
  [v3 setIgnoresViewportScaleLimits:1];
  [v3 _setNeedsStorageAccessFromFileURLsQuirk:0];
  [v3 _setDragLiftDelay:2];
  v24 = [(TabDocument *)self configuration];
  [v3 _setControlledByAutomation:{objc_msgSend(v24, "isControlledByAutomation")}];

  v25 = +[Application sharedApplication];
  v26 = [v25 systemNoteTakingController];

  if ([v26 isNoteTakingSupportedWithPrivateBrowsing:{-[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 _setAppHighlightsEnabled:1];
  }

  if ([(_SFBrowserConfiguration *)self->_configuration usesPersistentDataStore])
  {
    v27 = MEMORY[0x277CE3868];
    v28 = [(TabDocument *)self profileIdentifier];
    v29 = [v27 safari_dataStoreForProfileWithIdentifier:v28];
    [v3 setWebsiteDataStore:v29];
LABEL_22:

    goto LABEL_24;
  }

  v30 = [(TabDocument *)self isControlledByAutomation];
  v31 = MEMORY[0x277CE3868];
  if (v30)
  {
    v28 = +[Application sharedApplication];
    v29 = [v28 automationController];
    v32 = [v29 automationSession];
    v33 = [v32 sessionIdentifier];
    v34 = [v31 safari_dataStoreForAutomationSessionWithIdentifier:v33];
    [v3 setWebsiteDataStore:v34];

    goto LABEL_22;
  }

  v28 = [MEMORY[0x277CE3868] safari_nonPersistentDataStore];
  [v3 setWebsiteDataStore:v28];
LABEL_24:

  [v3 _setLegacyEncryptedMediaAPIEnabled:{objc_msgSend(v13, "BOOLForKey:", *MEMORY[0x277D29238])}];
  v35 = [v3 websiteDataStore];
  v36 = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
  [v35 _setResourceLoadStatisticsEnabled:{objc_msgSend(v36, "webui_trackerProtectionEnabled")}];

  v37 = [v3 preferences];
  v38 = objc_opt_respondsToSelector();

  if (v38)
  {
    v39 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v40 = [v39 safari_warnAboutFraudulentWebsites];
    v41 = [v3 preferences];
    [v41 _setSafeBrowsingEnabled:v40];
  }

  [v3 _setSystemPreviewEnabled:1];
  v42 = [(TabDocument *)self webExtensionsController];
  v43 = [v42 webKitController];
  [v3 _setWebExtensionController:v43];

  if (objc_opt_respondsToSelector())
  {
    [v13 safari_doubleForKey:@"DebugSampledPageTopColorMaxDifference" defaultValue:*MEMORY[0x277D4A8D8]];
    [v3 _setSampledPageTopColorMaxDifference:?];
  }

  if (objc_opt_respondsToSelector())
  {
    [v13 safari_doubleForKey:@"DebugSampledPageTopColorMinHeight" defaultValue:*MEMORY[0x277D4A8E0]];
    [v3 _setSampledPageTopColorMinHeight:?];
  }

  v44 = [v3 defaultWebpagePreferences];
  v45 = _SFApplicationNameForDesktopUserAgent();
  [v44 _setApplicationNameForUserAgentWithModernCompatibility:v45];

  return v3;
}

- (History)history
{
  v19 = *MEMORY[0x277D85DE8];
  history = self->_history;
  if (history)
  {
    v3 = history;
  }

  else
  {
    v5 = [(TabDocument *)self profile];
    v6 = [v5 identifier];
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v5 title];
      [(TabDocument *)v8 history:v6];
    }

    v9 = +[Application sharedApplication];
    v10 = [v9 historyController];
    v11 = [v10 historyForProfileIdentifier:v6 loadIfNeeded:1];
    v12 = self->_history;
    self->_history = v11;

    v13 = self->_history;
    if (!v13)
    {
      v14 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [TabDocument history];
      }

      v15 = +[History sharedHistory];
      v16 = self->_history;
      self->_history = v15;

      v13 = self->_history;
    }

    v3 = v13;
  }

  return v3;
}

- (id)profileIdentifier
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 992));
    v2 = [WeakRetained effectiveProfileIdentifier];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_SFInjectedJavaScriptController)activityJSController
{
  activityJSController = self->_activityJSController;
  if (!activityJSController)
  {
    v4 = [objc_alloc(MEMORY[0x277CDB7F0]) initWithWebView:self->_webView];
    v5 = self->_activityJSController;
    self->_activityJSController = v4;

    activityJSController = self->_activityJSController;
  }

  return activityJSController;
}

- (void)_updateActiveExtensionsIfNecessary
{
  if (!a1)
  {
    return;
  }

  if ([MEMORY[0x277D49A08] isInternalInstall])
  {
    v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v3 = [v2 BOOLForKey:@"DebugHideAllExtensionButtons"];

    if (v3)
    {
      return;
    }
  }

  v4 = [a1 webExtensionsController];
  [*(a1 + 280) setNeedsExtensionBadge:{objc_msgSend(v4, "hasUpdatedToolbarItemBadgeTextInTab:", a1)}];
  v5 = [a1 urlForExtensions];
  if ([v5 safari_isSafariWebExtensionURL])
  {
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    v7 = [v5 host];
    v8 = [v6 initWithUUIDString:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 enabledExtensions];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __49__TabDocument__updateActiveExtensionsIfNecessary__block_invoke;
  v28[3] = &unk_2781DB088;
  v10 = v4;
  v29 = v10;
  v30 = a1;
  v11 = v5;
  v31 = v11;
  v12 = v8;
  v32 = v12;
  v13 = [v9 safari_mapAndFilterObjectsUsingBlock:v28];

  v14 = [v13 count];
  WeakRetained = objc_loadWeakRetained((a1 + 992));
  v26 = [a1 contentBlockerManager];
  if ([a1 isPrivateBrowsingEnabled])
  {
    v16 = [v10 enabledExtensions];
    if (![v16 count])
    {
      v17 = [v26 enabledExtensions];
      v18 = v17 != 0;
LABEL_15:

      goto LABEL_16;
    }
  }

  else
  {
    v16 = [v10 extensions];
    if (![v16 count])
    {
      v17 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      if ([v17 BOOLForKey:*MEMORY[0x277D4A210]])
      {
        v18 = 1;
      }

      else
      {
        v24 = [v26 extensions];
        v18 = [v24 count] != 0;
      }

      goto LABEL_15;
    }
  }

  v18 = 1;
LABEL_16:

  v19 = [WeakRetained tabBarManager];
  if (v18)
  {
    if ([WeakRetained hasDedicatedExtensionsButton])
    {
      v20 = 1;
    }

    else
    {
      v21 = [v19 inlineTabBar];
      if (([v21 usesMoreMenu] & 1) != 0 || *(a1 + 970) != 1)
      {
        v20 = 0;
      }

      else
      {
        v25 = [*(a1 + 280) text];
        v20 = [v25 length] == 0;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  if (v14 > 2)
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __49__TabDocument__updateActiveExtensionsIfNecessary__block_invoke_2;
    v27[3] = &unk_2781DB0B0;
    v27[4] = a1;
    v22 = [v13 safari_mapAndFilterObjectsUsingBlock:v27];
  }

  v23 = [objc_alloc(MEMORY[0x277D28EC8]) initWithActiveExtensionCount:v14 alwaysShowMultipleExtensionsButton:v20 buttons:v22 extensionsController:v10];
  [*(a1 + 280) setExtensionButtonConfiguration:v23];

  [*(a1 + 280) setExtensionsAreActive:v14 != 0];
}

- (void)validateExtensionToolbarItems
{
  [(TabDocument *)self _updateActiveExtensionsIfNecessary];

  [(TabDocument *)self updateMenuButtonShowsBadge];
}

- (SFContentBlockerManager)contentBlockerManager
{
  v3 = [(_SFBrowserConfiguration *)self->_configuration isPrivateBrowsingEnabled];
  v4 = +[Application sharedApplication];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contentBlockerManagerForProfileServerID:*MEMORY[0x277D49BD8]];
  }

  else
  {
    v7 = [(TabDocument *)self profile];
    v8 = [v7 identifierForExtensions];
    v6 = [v5 contentBlockerManagerForProfileServerID:v8];
  }

  return v6;
}

- (void)updateMenuButtonShowsBadge
{
  v3 = [MEMORY[0x277CDB7A8] sharedManager];
  LODWORD(v9) = [v3 hasUnviewedDownloads];

  v4 = [(TabDocument *)self webExtensionsController];
  v5 = [v4 hasUpdatedToolbarItemBadgeTextInTab:self];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v7 = [WeakRetained tabBarManager];
  v8 = [v7 displayMode];
  v9 = v9;

  unifiedTabBarItem = self->_unifiedTabBarItem;
  if (v8 == 2)
  {
    [(SFUnifiedTabBarItem *)unifiedTabBarItem setShowsBadgeOnExtensionsButton:v5 & 1];
  }

  else
  {
    [(SFUnifiedTabBarItem *)unifiedTabBarItem setShowsBadgeOnExtensionsButton:0];
    if (v5)
    {
      v9 = v9 | 2;
    }
  }

  if (SFMediaStateIconIsCaptureDevice())
  {
    v11 = v9 | 4;
  }

  else
  {
    v11 = v9;
  }

  v12 = self->_unifiedTabBarItem;

  [(SFUnifiedTabBarItem *)v12 setMenuButtonBadges:v11];
}

- (void)indexTabToCoreSpotlight
{
  if (self && [(_SFBrowserConfiguration *)self->_configuration allowsUserActivityFeedback]&& ([(TabDocument *)self _isShowingNativePage]& 1) == 0)
  {
    v3 = [MEMORY[0x277D4A060] sharedInstance];
    [v3 setTabNeedsSpotlightDonation:self];
  }
}

- (uint64_t)_isShowingNativePage
{
  if (result)
  {
    v1 = result;
    if ([result isShowingErrorPage])
    {
      return 1;
    }

    v2 = [v1[133] _safeBrowsingWarning];

    if (v2)
    {
      return 1;
    }

    else
    {

      return [v1 isShowingSystemStartPage];
    }
  }

  return result;
}

- (BOOL)hideFindOnPage
{
  v3 = [(TabDocument *)self isShowingFindOnPage];
  if (v3)
  {
    v4 = [(TabDocument *)self findInteraction];
    [v4 dismissFindNavigator];
  }

  return v3;
}

- (BOOL)isShowingFindOnPage
{
  v2 = [(TabDocument *)self findInteraction];
  v3 = [v2 isFindNavigatorVisible];

  return v3;
}

- (UIFindInteraction)findInteraction
{
  v2 = [(TabDocument *)self activeWebView];
  v3 = [v2 findInteraction];

  return v3;
}

- (void)updateGlobalMediaStateIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained browserWindowController];
  v8 = [v4 tabsWithSound];

  LODWORD(WeakRetained) = [v8 safari_containsObjectPassingTest:&__block_literal_global_487];
  v5 = [v8 count];
  v6 = 5;
  if (!WeakRetained)
  {
    v6 = 6;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [(SFNavigationBarItem *)self->_navigationBarItem setGlobalMediaStateIcon:v7];
  [(SFUnifiedTabBarItem *)self->_unifiedTabBarItem setGlobalMediaStateIcon:v7];
}

- (BOOL)inElementFullscreen
{
  if ([(TabDocument *)self isExitingElementFullscreen])
  {
    return 1;
  }

  webView = self->_webView;

  return [(_SFWebView *)webView _isInFullscreen];
}

- (BOOL)shouldShowReaderOnActivate
{
  if ([(TabDocument *)self isReaderAvailable])
  {
    return self->_showingReader || self->_wantsReaderWhenActivated;
  }

  else
  {
    return 0;
  }
}

- (int)readingListBookmarkID
{
  result = [(WebBookmark *)self->_readingListBookmark isReadingListItem];
  if (result)
  {
    readingListBookmark = self->_readingListBookmark;

    return [(WebBookmark *)readingListBookmark identifier];
  }

  return result;
}

- (void)_fireOnUpdatedExtensionEventSoon
{
  if (a1)
  {
    [a1[101] invalidate];
    v2 = a1[101];
    a1[101] = 0;

    objc_initWeak(&location, a1);
    v3 = MEMORY[0x277CBEBB8];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__TabDocument__fireOnUpdatedExtensionEventSoon__block_invoke;
    v6[3] = &unk_2781DA668;
    objc_copyWeak(&v7, &location);
    v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:0.1];
    v5 = a1[101];
    a1[101] = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (BOOL)inWebClipScope
{
  webClip = self->_webClip;
  v3 = [(TabDocument *)self URL];
  LOBYTE(webClip) = [(UIWebClip *)webClip safari_isURLWithinNavigationScope:v3];

  return webClip;
}

- (void)updateTabIcon
{
  v3 = [(TabDocument *)self URL];
  if ([v3 isEqual:self->_cachedURL])
  {
    goto LABEL_24;
  }

  [(TabDocument *)self _cancelFaviconUpdate];
  objc_storeStrong(&self->_cachedURL, v3);
  if (!v3)
  {
    libraryType = self->_libraryType;
    if (!libraryType)
    {
      v17 = [MEMORY[0x277D28F20] favoritesFavicon];
LABEL_23:
      [(TabDocument *)self _setIcon:v17 isMonogram:0];

      goto LABEL_24;
    }

    v8 = libraryType;
    if ([(NSString *)v8 isEqualToString:@"BookmarksCollection"])
    {
      v9 = [MEMORY[0x277D28F20] bookmarksFavicon];
    }

    else if ([(NSString *)v8 isEqualToString:@"CloudTabsCollection"])
    {
      v9 = [MEMORY[0x277D28F20] fallbackFavicon];
    }

    else if ([(NSString *)v8 isEqualToString:@"HistoryCollection"])
    {
      v9 = [MEMORY[0x277D28F20] historyFavicon];
    }

    else if ([(NSString *)v8 isEqualToString:@"ReadingListCollection"])
    {
      v9 = [MEMORY[0x277D28F20] readingListFavicon];
    }

    else
    {
      if (![(NSString *)v8 isEqualToString:@"SharedWithYouCollection"])
      {
        v17 = 0;
        goto LABEL_22;
      }

      v9 = [MEMORY[0x277D28F20] sharedWithYouFavicon];
    }

    v17 = v9;
LABEL_22:

    goto LABEL_23;
  }

  v4 = [v3 absoluteString];
  v5 = [v4 isEqualToString:@"about:blank"];

  if (v5)
  {
    v6 = [MEMORY[0x277D28F20] fallbackFavicon];
    [(TabDocument *)self _setIcon:v6 isMonogram:0];
  }

  else
  {
    if (![v3 safari_isSafariWebExtensionURL])
    {
      objc_initWeak(&location, self);
      v13 = [objc_alloc(MEMORY[0x277D4A730]) initWithURL:v3 iconSize:2 fallbackType:+[TabIconAndTitleView defaultTabIconSize]()];
      v14 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __28__TabDocument_updateTabIcon__block_invoke;
      v18[3] = &unk_2781DA690;
      objc_copyWeak(&v19, &location);
      v15 = [v14 registerRequest:v13 priority:2 responseHandler:v18];
      faviconToken = self->_faviconToken;
      self->_faviconToken = v15;

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
      goto LABEL_24;
    }

    v10 = [(TabDocument *)self webExtensionsController];
    v11 = [v3 host];
    v6 = [v10 webExtensionForBaseURIHost:v11];

    v12 = [v6 icon];
    [(TabDocument *)self _setIcon:v12 isMonogram:0];
  }

LABEL_24:
}

- (void)_cancelFaviconUpdate
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 576));
    if (([WeakRetained isValid] & 1) != 0 || *(a1 + 560))
    {
      v2 = *(a1 + 552);
      *(a1 + 552) = 0;
    }

    [WeakRetained invalidate];
    v3 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    [v3 cancelRequestWithToken:*(a1 + 560)];

    v4 = *(a1 + 560);
    *(a1 + 560) = 0;
  }
}

uint64_t __30__TabDocument_NonARC__release__block_invoke()
{
  if (pthread_main_np())
  {
    return 1;
  }

  v1 = WBS_LOG_CHANNEL_PREFIXPageLoading();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    __30__TabDocument_NonARC__release__block_invoke_cold_1(v1);
  }

  return 2;
}

- (void)dealloc
{
  self->_beingReleased = 1;
  [(NSTimer *)self->_fireOnUpdatedWebExtensionEventTimer invalidate];
  fireOnUpdatedWebExtensionEventTimer = self->_fireOnUpdatedWebExtensionEventTimer;
  self->_fireOnUpdatedWebExtensionEventTimer = 0;

  [(NSTimer *)self->_updateAudioUITimer invalidate];
  updateAudioUITimer = self->_updateAudioUITimer;
  self->_updateAudioUITimer = 0;

  [TabDocument _destroyDocumentViewAllowingDeferral:?];
  [(LoadingController *)self->_loadingController setDelegate:0];
  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator removeObserver:self forKeyPath:@"UIShouldReflectCommittedURLInsteadOfCurrentURL" context:kTabDocumentObserverContext];
  [(TabDocument *)self willClose];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v6 removeObserver:self];

  [(WBSFluidProgressController *)self->_fluidProgressController setWindowDelegate:0];
  [(WBSFluidProgressController *)self->_fluidProgressController setDelegate:0];
  [(TabDocument *)self clearReaderContext];
  [(TabDocument *)&self->super.isa invalidateUserActivity];
  [(TabDocument *)self clearPageLoadStatistics];
  pendingNavigationActionDueToExternalSchemePromptHandler = self->_pendingNavigationActionDueToExternalSchemePromptHandler;
  if (pendingNavigationActionDueToExternalSchemePromptHandler)
  {
    pendingNavigationActionDueToExternalSchemePromptHandler[2](pendingNavigationActionDueToExternalSchemePromptHandler, 0);
  }

  v8.receiver = self;
  v8.super_class = TabDocument;
  [(TabDocument *)&v8 dealloc];
}

- (void)clearReaderView
{
  [(_SFWebView *)self->_readerWebView removeObserver:self forKeyPath:@"underPageBackgroundColor" context:kTabDocumentObserverContext];
  [(_SFWebView *)self->_readerWebView removeObserver:self forKeyPath:@"_isPlayingAudio" context:kTabDocumentObserverContext];
  [(_SFWebView *)self->_readerWebView _close];
  readerWebView = self->_readerWebView;
  self->_readerWebView = 0;
}

- (void)willClose
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained tabDocumentPlayingPIPVideo];

  if (v3 == self)
  {
    [WeakRetained setTabDocumentPlayingPIPVideo:0];
  }

  if (!self->_beingReleased && !self->_suppressWebExtensionEvents)
  {
    v4 = [(TabDocument *)self webExtensionsController];
    [v4 didCloseTab:self windowIsClosing:0];
  }

  [(_SFCalendarEventDetector *)self->_calendarEventDetector cancelCheckForConfirmationPage];
  [(_SFWebView *)self->_webView setUIDelegate:0];
  [(SFDialogController *)self->_dialogController owningTabWillClose];
  [(WBSPermissionDialogThrottler *)self->_permissionDialogThrottler invalidate];
  [(TabDocument *)&self->super.isa _removeParentChildTabDocumentRelations];
  [(_SFPageLoadErrorController *)self->_pageLoadErrorController clearCrashCountResetTimer];
  [TabDocument _destroyDocumentViewAllowingDeferral:?];
  [(TabDocument *)self _cancelFaviconUpdate];
  if ([(TabDocument *)self isActive])
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 removeAppBannerFromTabDocument:self animated:0];
  }

  appBanner = self->_appBanner;
  self->_appBanner = 0;

  appBannerPendingFirstPaint = self->_appBannerPendingFirstPaint;
  self->_appBannerPendingFirstPaint = 0;

  self->_appBannerRemovalWasDeferred = 0;
  contentBlockerStatisticsStore = self->_contentBlockerStatisticsStore;
  self->_contentBlockerStatisticsStore = 0;

  if (([WeakRetained isBackgrounded] & 1) == 0)
  {
    v9 = [(_SFReaderController *)self->_readerContext readerURL];
    v10 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    v11 = [v10 activeSiriReaderSessionURL];
    v12 = [v9 isEqual:v11];

    if (v12)
    {
      [(TabDocument *)self dismissSiriReaderMediaSessionImmediately:0];
    }
  }
}

- (id)_removeParentChildTabDocumentRelations
{
  v11 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if (([result canGoBackToParentTab] & 1) == 0)
    {
      [v1 setParentTabDocumentForBackClosesSpawnedTab:0];
    }

    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v2 = [v1[65] allObjects];
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

          [*(*(&v6 + 1) + 8 * v5++) setParentTabDocumentForBackClosesSpawnedTab:0];
        }

        while (v3 != v5);
        v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
      }

      while (v3);
    }

    return [v1[65] setCount:0];
  }

  return result;
}

- (BOOL)canGoBackToParentTab
{
  WeakRetained = objc_loadWeakRetained(&self->_parentTabDocumentForBackClosesSpawnedTab);
  if (WeakRetained && (-[TabDocument _backForwardList](self, "_backForwardList"), v4 = objc_claimAutoreleasedReturnValue(), [v4 backList], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, v6 <= 1))
  {
    v8 = [(TabDocument *)self _backForwardList];
    v9 = [v8 backItem];
    v10 = [v9 URL];
    v11 = [WeakRetained _backForwardList];
    v12 = [v11 currentItem];
    v13 = [v12 URL];
    v7 = [v10 isEqual:v13];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)clearPageLoadStatistics
{
  pageLoadStatistics = self->_pageLoadStatistics;
  self->_pageLoadStatistics = 0;
}

+ (id)urlForExternalURL:(id)a3 forPrivateBrowsing:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 safari_isXWebSearchURL])
  {
    v6 = [SearchQueryBuilder searchQueryBuilderWithXWebSearchURL:v5 forPrivateBrowsing:v4];
    v7 = [v6 searchURL];

    goto LABEL_5;
  }

  v7 = v5;
  if ([v5 safari_isSafariSpecificURL])
  {
    [v5 safari_URLByNormalizingSafariSpecificURL];
    v7 = v6 = v5;
LABEL_5:

    if (v7 != v5)
    {
      goto LABEL_7;
    }
  }

  v8 = MEMORY[0x277CBEBC0];
  v9 = [v5 safari_userVisibleString];
  v10 = [v8 safari_URLWithUserTypedString:v9];

  v7 = v10;
LABEL_7:
  v11 = [v7 scheme];
  v12 = [v11 isEqualToString:@"com-apple-mobilesafari-tab"];

  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = [v7 resourceSpecifier];
  v14 = [v13 componentsSeparatedByString:@"?"];

  if ([v14 count] <= 2 && objc_msgSend(v14, "count"))
  {
    v15 = [v14 objectAtIndex:0];
    v16 = [v15 stringByRemovingPercentEncoding];

    v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 scheme];
      if ([v19 isEqualToString:@"http"])
      {

LABEL_14:
        v22 = v7;
LABEL_16:

        v7 = v18;
        goto LABEL_17;
      }

      v20 = [v18 scheme];
      v21 = [v20 isEqualToString:@"https"];

      if (v21)
      {
        goto LABEL_14;
      }
    }

    v22 = v18;
    v18 = v7;
    goto LABEL_16;
  }

LABEL_17:

LABEL_18:

  return v7;
}

- (TabDocument)initWithBrowserController:(id)a3
{
  v4 = a3;
  v5 = -[TabDocument initWithTitle:URL:UUID:privateBrowsingEnabled:controlledByAutomation:hibernated:bookmark:browserController:relatedWebView:](self, "initWithTitle:URL:UUID:privateBrowsingEnabled:controlledByAutomation:hibernated:bookmark:browserController:relatedWebView:", 0, 0, 0, [v4 isPrivateBrowsingEnabled], objc_msgSend(v4, "isControlledByAutomation"), 0, 0, v4, 0);

  return v5;
}

- (id)initForBackgroundLoadingWithBrowserController:(id)a3 relatedWebView:(id)a4 webViewToCloneSessionStorageFrom:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 isPrivateBrowsingEnabled];
  v12 = [v8 isControlledByAutomation];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __109__TabDocument_initForBackgroundLoadingWithBrowserController_relatedWebView_webViewToCloneSessionStorageFrom___block_invoke;
  v17[3] = &unk_2781D6AC0;
  v18 = self;
  v13 = v9;
  v19 = v13;
  v14 = v10;
  v20 = v14;
  v15 = [(TabDocument *)v18 _initWithTitle:0 URL:0 UUID:v11 privateBrowsingEnabled:v12 controlledByAutomation:0 bookmark:v8 browserController:v17 createDocumentView:?];

  return v15;
}

void __109__TabDocument_initForBackgroundLoadingWithBrowserController_relatedWebView_webViewToCloneSessionStorageFrom___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v5 = [v2 configuration];
  v4 = [v5 websiteDataStore];
  [TabDocument _createDocumentViewRelatedTo:v1 webViewToCloneSessionStorageFrom:v2 websiteDataStore:v3 deferrableUserScriptsShouldWaitUntilNotification:v4];
}

- (void)_createDocumentViewRelatedTo:(void *)a1 webViewToCloneSessionStorageFrom:(void *)a2 websiteDataStore:(void *)a3 deferrableUserScriptsShouldWaitUntilNotification:(void *)a4
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = [a1 createWebViewConfiguration];
    v10 = v9;
    if (v15)
    {
      [v9 _setRelatedWebView:?];
      v11 = [v15 configuration];
      v12 = [v11 processPool];
      [v10 setProcessPool:v12];

      v13 = [v15 configuration];
      v14 = [v13 websiteDataStore];
      [v10 setWebsiteDataStore:v14];
    }

    else if (v8)
    {
      [v9 setWebsiteDataStore:v8];
    }

    [v10 _setWebViewToCloneSessionStorageFrom:v7];
    [(TabDocument *)a1 _createDocumentViewWithConfiguration:v10];
  }
}

- (id)_initWithTitle:(void *)a3 URL:(void *)a4 UUID:(uint64_t)a5 privateBrowsingEnabled:(uint64_t)a6 controlledByAutomation:(void *)a7 bookmark:(void *)a8 browserController:(void *)a9 createDocumentView:
{
  v16 = a2;
  v51 = a3;
  v49 = a4;
  v50 = a7;
  v17 = a8;
  v18 = a9;
  if (a1)
  {
    v19 = [a1 init];
    if (v19)
    {
      v47 = v16;
      if (v18)
      {
        v20 = [MEMORY[0x277CCAD78] UUID];
      }

      else
      {
        v20 = [v49 copy];
      }

      v21 = *(v19 + 1376);
      *(v19 + 1376) = v20;

      v48 = [TabDocument blankTabTitleWithLibraryType:0 controlledByAutomation:0];
      v22 = objc_alloc(MEMORY[0x277D7B560]);
      v23 = [*(v19 + 1376) UUIDString];
      if ([v16 length])
      {
        v24 = v16;
      }

      else
      {
        v24 = v48;
      }

      v25 = [v17 tabController];
      v26 = [v25 deviceIdentifier];
      v27 = [v22 initWithUUID:v23 title:v24 url:v51 deviceIdentifier:v26 isPrivateBrowsing:a5];
      v28 = *(v19 + 1384);
      *(v19 + 1384) = v27;

      v16 = v47;
      [v19 setBrowserController:v17 afterTabGroupReuse:0];
      v29 = objc_alloc(MEMORY[0x277CDB768]);
      v30 = [v17 rootViewController];
      v31 = [v29 initWithPrivateBrowsingEnabled:a5 traitEnvironment:v30 controlledByAutomation:a6];
      v32 = *(v19 + 1264);
      *(v19 + 1264) = v31;

      v33 = objc_alloc_init(LoadingController);
      v34 = *(v19 + 168);
      *(v19 + 168) = v33;

      [*(v19 + 168) setDelegate:v19];
      [v19 setReadingListBookmark:v50];
      *(v19 + 975) = v18 == 0;
      if (v18)
      {
        v18[2](v18);
      }

      else
      {
        [*(v19 + 168) setTitle:v47];
        [*(v19 + 168) setURL:v51];
      }

      *(v19 + 1168) = 0xBFF0000000000000;
      [(TabDocument *)v19 _setUp];
      v35 = objc_alloc_init(UnifiedTabBarItem);
      v36 = *(v19 + 1104);
      *(v19 + 1104) = v35;

      [*(v19 + 1104) setUUID:*(v19 + 1376)];
      v37 = [MEMORY[0x277D28C70] sharedFeatureManager];
      v38 = [v37 showRectangularTabsInSeparateBar];

      if (v38)
      {
        v39 = objc_alloc_init(TabBarItem);
        v40 = *(v19 + 1096);
        *(v19 + 1096) = v39;

        [*(v19 + 1096) setUUID:*(v19 + 1376)];
      }

      v41 = [v19 browserController];
      [*(v19 + 1104) setMenuButtonConfigurator:v41];

      [v19 resetTabViewItems];
      v42 = *(v19 + 1136);
      v43 = MEMORY[0x277CBEBF8];
      *(v19 + 1136) = MEMORY[0x277CBEBF8];

      [MEMORY[0x277D4A8B0] nextTabID];
      *(v19 + 792) = v44;
      [v19 setChangedPropertiesForOnUpdatedWebExtensionEvent:0];
      v45 = *(v19 + 1160);
      *(v19 + 1160) = v43;

      a1 = v19;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (TabDocument)initWithTitle:(id)a3 URL:(id)a4 UUID:(id)a5 privateBrowsingEnabled:(BOOL)a6 hibernated:(BOOL)a7 bookmark:(id)a8 browserController:(id)a9
{
  v10 = a7;
  v11 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v20 = -[TabDocument initWithTitle:URL:UUID:privateBrowsingEnabled:controlledByAutomation:hibernated:bookmark:browserController:relatedWebView:](self, "initWithTitle:URL:UUID:privateBrowsingEnabled:controlledByAutomation:hibernated:bookmark:browserController:relatedWebView:", v15, v16, v17, v11, [v19 isControlledByAutomation], v10, v18, v19, 0);

  return v20;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  if ([(TabDocument *)self isPrivateBrowsingEnabled])
  {
    [v6 appendString:@"PRIVATE; "];
  }

  if ([(TabDocument *)self isControlledByAutomation])
  {
    [v6 appendString:@"AUTOMATION; "];
  }

  if (self->_pinned)
  {
    [v6 appendString:@"PINNED; "];
  }

  if ([(TabDocument *)self isHibernated])
  {
    [v6 appendString:@"HIBERNATED; "];
  }

  v7 = [(TabDocument *)self URL];
  [v6 appendFormat:@"url = %@>", v7];

  return v6;
}

- (void)setInitialURLForStatePersisting:(id)a3 title:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(LoadingController *)self->_loadingController setTitle:v6];
  [(LoadingController *)self->_loadingController setURL:v7];
}

- (void)_destroyDocumentViewAllowingDeferral:(uint64_t)a1
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
    {
      v2 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        [TabDocument _destroyDocumentViewAllowingDeferral:];
      }
    }

    if (*(a1 + 1064))
    {
      v3 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 1064);
        v11 = 134218240;
        v12 = a1;
        v13 = 2048;
        v14 = v4;
        _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "TabDocument %p: destroying web view %p", &v11, 0x16u);
      }

      if (*(a1 + 1064))
      {
        v5 = +[Application sharedApplication];
        v6 = [v5 systemNoteTakingController];

        [v6 removeObserver:a1 forKeyPath:*MEMORY[0x277D4A900] context:kTabDocumentObserverContext];
      }
    }

    [a1 clearReaderView];
    [a1 updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:0];
    [*(a1 + 1280) invalidate];
    v7 = *(a1 + 1280);
    *(a1 + 1280) = 0;

    v8 = [*(a1 + 1064) _remoteObjectRegistry];
    [v8 unregisterExportedObject:a1 interface:*(a1 + 64)];

    v9 = *(a1 + 64);
    *(a1 + 64) = 0;

    v10 = [*(a1 + 1064) _remoteObjectRegistry];
    [v10 unregisterExportedObject:a1 interface:*(a1 + 72)];
    [(TabDocument *)v10 _destroyDocumentViewAllowingDeferral:a1, (a1 + 1064)];
  }
}

- (id)_titleIncludeLoading:(int)a3 allowURLStringFallback:(int)a4 allowUntitled:
{
  if (a1)
  {
    v5 = *(a1 + 192);
    if (v5)
    {
      v6 = [v5 safari_userVisibleHost];
      goto LABEL_19;
    }

    v6 = [(TabDocument *)a1 _loadedTitle];
    if (![v6 length])
    {
      if (([*(a1 + 1064) isLoading] & a2 & 1) != 0 || (WeakRetained = objc_loadWeakRetained((a1 + 992)), objc_msgSend(WeakRetained, "userActivityController"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "tabDocumentPendingUserActivityPayload"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, WeakRetained, v12 == a1))
      {
        v17 = _WBSLocalizedString();
LABEL_18:

        v6 = v17;
        goto LABEL_19;
      }

      v13 = [*(a1 + 1064) _committedURL];
      if ([v13 safari_isSafariWebExtensionURL])
      {
        v14 = [a1 webExtensionsController];
        v15 = [v13 host];
        v16 = [v14 webExtensionForBaseURIHost:v15];
        v17 = [v16 displayName];
      }

      else
      {
        if (!a3 || ([a1 URLString], v18 = objc_claimAutoreleasedReturnValue(), (v14 = v18) == 0))
        {
          if (a4)
          {
            v17 = [(TabDocument *)a1 _blankTabTitle];
          }

          else
          {
            v17 = &stru_2827BF158;
          }

          goto LABEL_17;
        }

        v17 = [v18 safari_simplifiedUserVisibleURLStringWithSimplifications:URLSimplificationOptionsForTabTitle forDisplayOnly:1 simplifiedStringOffset:0];
      }

LABEL_17:
      goto LABEL_18;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_19:

  return v6;
}

- (id)_debugOverrideTitle
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 URL];
    if (WBSIsEqual())
    {
      v1 = v1[106];
    }

    else
    {
      objc_storeStrong(v1 + 107, v2);
      v3 = v1[106];
      v1[106] = 0;

      v4 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      v5 = [v2 absoluteString];
      v6 = [v4 listWithID:0 skipOffset:0 includeHidden:0 includeDescendantsAsChildren:1 filteredUsingString:v5];

      if ([v6 bookmarkCount])
      {
        v7 = [v6 bookmarkAtIndex:0];
        v8 = [v7 title];
        v9 = v1[106];
        v1[106] = v8;
      }

      v1 = v1[106];
    }
  }

  return v1;
}

+ (id)blankTabTitleWithLibraryType:(id)a3 controlledByAutomation:(BOOL)a4
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    startPageTitleForCollectionType(v4);
  }

  else
  {
    _WBSLocalizedString();
  }
  v6 = ;

  return v6;
}

- (id)_addTitlePrefixToString:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [v4 BOOLForKey:@"DebugShowTabMetadata"];
    v6 = [v4 BOOLForKey:*MEMORY[0x277D4A1A0]];
    if ((v5 | v6))
    {
      v7 = [MEMORY[0x277CBEB18] array];
      if (v5)
      {
        v8 = a1[133];
        v9 = v8;
        if (v8)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"p%d", objc_msgSend(v8, "_webProcessIdentifier")];
          [v7 addObject:v10];
        }

        else
        {
          [v7 addObject:@"p?"];
        }
      }

      if (v6)
      {
        WeakRetained = objc_loadWeakRetained(a1 + 124);
        v13 = [WeakRetained tabController];
        v14 = [v13 tabOrderManager];

        v15 = [a1 identifier];
        v16 = [v14 simplifiedIdentifierForDisplayInTabTitle:v15];

        v17 = [a1 ancestorTabIdentifiers];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __39__TabDocument__addTitlePrefixToString___block_invoke;
        v25[3] = &unk_2781DAC00;
        v18 = v14;
        v26 = v18;
        v19 = [v17 safari_mapObjectsUsingBlock:v25];

        v20 = [v19 componentsJoinedByString:{@", "}];
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"t%@ {%@}", v16, v20];
        [v7 addObject:v21];
      }

      v22 = [v7 componentsJoinedByString:@" "];

      v11 = v3;
      v3 = v22;
    }

    else
    {
      v11 = 0;
    }

    v23 = v3;

    v3 = v11;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)updateTabIconWithDelay:(double)a3
{
  objc_initWeak(&location, self);
  [(TabDocument *)self _cancelFaviconUpdate];
  v5 = MEMORY[0x277CBEBB8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__TabDocument_updateTabIconWithDelay___block_invoke;
  v7[3] = &unk_2781DA668;
  objc_copyWeak(&v8, &location);
  v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:a3];
  objc_storeWeak(&self->_updateFaviconTimer, v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __38__TabDocument_updateTabIconWithDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateTabIcon];
}

- (void)updateUsesDarkTheme
{
  v8 = [(TabDocument *)self configuration];
  v3 = [v8 traitEnvironment];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceStyle];
  v6 = [(_SFReaderController *)self->_readerContext configurationManager];
  [v6 setDarkModeEnabled:v5 == 2];

  [(_SFReaderController *)self->_readerContext sendConfigurationToWebProcess];
  if (!self->_hibernated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v7 = [WeakRetained tabCollectionViewProvider];
    [v7 invalidateSnapshotForTab:self];
  }
}

- (void)_setIcon:(int)a3 isMonogram:
{
  v9 = a2;
  if (a1)
  {
    [*(a1 + 1096) setIcon:v9];
    [*(a1 + 1104) setIcon:v9];
    if (a3)
    {
      v5 = 0;
    }

    else
    {
      v5 = v9;
    }

    [*(a1 + 1112) setIcon:v5];
    WeakRetained = objc_loadWeakRetained((a1 + 992));
    v7 = [WeakRetained tabCollectionViewProvider];
    v8 = [v7 iconPool];
    [v8 iconDidChangeForIdentifier:*(a1 + 1376)];

    [(TabDocument *)a1 _updateTabBarFavicon];
  }
}

void __28__TabDocument_updateTabIcon__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v9;
    v5 = [v4 favicon];
    v6 = objc_loadWeakRetained(WeakRetained + 124);
    v7 = [v6 rootViewController];
    v8 = [v7 tabBar];

    if (v8)
    {
      [v5 sf_registerFaviconForDarkUserInterfaceStyle];
    }

    -[TabDocument _setIcon:isMonogram:](WeakRetained, v5, [v4 faviconType] == 0);
  }
}

- (void)_updateTabBarFavicon
{
  if (a1 && *(a1 + 990) == 1)
  {
    v5 = [*(a1 + 1112) icon];
    if ((*(a1 + 970) & 1) != 0 || [*(a1 + 280) showsSearchIndicator])
    {
      v2 = [MEMORY[0x277D755B8] systemImageNamed:@"magnifyingglass"];

      v5 = v2;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 992));
    v4 = [WeakRetained tabBarManager];
    [v4 setActiveFavicon:v5];
  }
}

- (void)webView:(id)a3 shouldLoadIconWithParameters:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(TabDocument *)self URL];
  if (!v9 || [v7 iconType] || (objc_msgSend(v7, "attributes"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", @"mask"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v8[2](v8, 0);
  }

  else
  {
    v12 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v13 = [v12 faviconProvider];

    v14 = [(TabDocument *)self isPrivateBrowsingEnabled];
    v15 = [v7 size];
    [v15 floatValue];
    v17 = v16;
    v18 = [v7 size];
    [v18 floatValue];
    v20 = v19;

    v21 = self->_originalURL;
    v22 = [v7 url];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __70__TabDocument_webView_shouldLoadIconWithParameters_completionHandler___block_invoke;
    v26[3] = &unk_2781DA728;
    v27 = v9;
    v28 = v22;
    v31 = v8;
    v23 = v13;
    v29 = v23;
    v24 = v21;
    v30 = v24;
    v32 = v17;
    v33 = v20;
    v34 = v14;
    v25 = v22;
    [v23 shouldIconDataBeSavedForIconWithPageURL:v27 originalPageURL:v24 iconURL:v25 size:v14 isPrivate:v26 completionHandler:{v17, v20}];
  }
}

void __70__TabDocument_webView_shouldLoadIconWithParameters_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__TabDocument_webView_shouldLoadIconWithParameters_completionHandler___block_invoke_2;
  v9[3] = &unk_2781DA700;
  v14 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v12 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v13 = *(a1 + 72);
  v15 = *(a1 + 88);
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __70__TabDocument_webView_shouldLoadIconWithParameters_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v2 = *(a1 + 64);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__TabDocument_webView_shouldLoadIconWithParameters_completionHandler___block_invoke_4;
    v10[3] = &unk_2781DA6D8;
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    *&v8 = v3;
    *(&v8 + 1) = v4;
    v11 = v8;
    v12 = v7;
    v13 = *(a1 + 72);
    v14 = *(a1 + 89);
    (*(v2 + 16))(v2, v10);
  }

  else
  {
    [*(a1 + 32) safari_hasSameSiteAsURL:*(a1 + 40)];
    v9 = *(*(a1 + 64) + 16);

    v9();
  }
}

- (void)_searchEngineControllerDidFinishPopulating:(id)a3
{
  [(TabDocument *)self _updateNavigationBarItem];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277CDBA28] object:0];
}

- (uint64_t)isPageEligibileToShowNotSecureWarning
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 expectedOrCurrentURL];
    if (([v2 safari_isEligibleToShowNotSecureWarning] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v1[133], "_negotiatedLegacyTLS"))
    {
      v3 = [v1[133] _committedURL];
      v4 = [v3 host];
      v5 = [v4 safari_highLevelDomainFromHost];
      v6 = [v1 expectedOrCurrentURL];
      v7 = [v6 host];
      v8 = [v7 safari_highLevelDomainFromHost];
      if ([v5 isEqualToString:v8])
      {
        if ([v1[35] showsSecurityAnnotation])
        {
          if (v1[123])
          {
            LOBYTE(v1) = 1;
          }

          else
          {
            LOBYTE(v1) = *(v1 + 721);
          }
        }

        else
        {
          v9 = v1[91];
          v10 = [v1 expectedOrCurrentURL];
          if ([v9 isEqual:v10])
          {
            if (v1[123])
            {
              LOBYTE(v1) = 1;
            }

            else
            {
              LOBYTE(v1) = *(v1 + 721);
            }
          }

          else
          {
            LOBYTE(v1) = 0;
          }
        }
      }

      else
      {
        LOBYTE(v1) = 0;
      }
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

- (void)_translationAvailabilityDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__TabDocument__translationAvailabilityDidChange___block_invoke;
  v6[3] = &unk_2781D61F8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __49__TabDocument__translationAvailabilityDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  if (v2 == *(*(a1 + 40) + 1056))
  {
    v8 = v2;
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 safari_numberForKey:*MEMORY[0x277D4A998]];

    if ([v4 unsignedIntegerValue])
    {
      [*(*(a1 + 40) + 280) setShowsTranslationButton:1];
      v5 = *(a1 + 40);
      v6 = v5[136];
      v7 = [v5 URL];
      [v6 didFindLocalContentWithOptions:64 forURL:v7];
    }

    v2 = v8;
  }
}

- (void)_voiceSearchAvailabilityDidChange:(id)a3
{
  v4 = [MEMORY[0x277D28EB8] sharedManager];
  -[SFNavigationBarItem setShowsVoiceSearchButton:](self->_navigationBarItem, "setShowsVoiceSearchButton:", [v4 availability] != 0);
}

- (SFBrowserDocumentTrackerInfo)trackerInfo
{
  trackerInfo = self->_trackerInfo;
  if (!trackerInfo)
  {
    v4 = [objc_alloc(MEMORY[0x277CDB6D0]) initWithDocument:self];
    v5 = self->_trackerInfo;
    self->_trackerInfo = v4;

    v6 = [(SFBrowserDocumentTrackerInfo *)self->_trackerInfo queryParameterFilteringDataQueue];
    [v6 setDelegate:self];

    trackerInfo = self->_trackerInfo;
  }

  return trackerInfo;
}

- (id)itemForTabCollectionView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1096;
LABEL_7:
    unifiedTabBarItem = *(&self->super.isa + v5);
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 1112;
    goto LABEL_7;
  }

  v6 = [v4 isStandalone];
  unifiedTabBarItem = self->_unifiedTabBarItem;
  if (v6)
  {
    v8 = [(UnifiedTabBarItem *)unifiedTabBarItem secondaryItem];
    goto LABEL_9;
  }

LABEL_8:
  v8 = unifiedTabBarItem;
LABEL_9:
  v9 = v8;

  return v9;
}

- (NSArray)tabCollectionItems
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = self->_tabCollectionItem;
  unifiedTabBarItem = self->_unifiedTabBarItem;
  if (unifiedTabBarItem)
  {
    tabBarItem = [(TabDocument *)self currentUnifiedTabBarItem];
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

- (id)_localAttributes
{
  v1 = a1;
  v22[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(a1 + 824) == 1)
    {
      v21[0] = @"url";
      v2 = [a1[104] absoluteString];
      v3 = v2;
      v4 = &stru_2827BF158;
      if (v2)
      {
        v5 = v2;
      }

      else
      {
        v5 = &stru_2827BF158;
      }

      v21[1] = @"title";
      v22[0] = v5;
      if (v1[105])
      {
        v4 = v1[105];
      }

      v22[1] = v4;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    }

    else
    {
      v20 = 0;
    }

    v6 = objc_alloc(MEMORY[0x277D7B530]);
    v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(v1 + 146)];
    v18 = [(TabDocument *)v1 _sessionStateWithoutParentItem];
    v7 = [v18 data];
    v8 = [v1 ancestorTabIdentifiers];
    v9 = *(v1 + 713);
    v10 = v1[149];
    v11 = [v1 readingListBookmarkID];
    v12 = *(v1 + 955);
    v13 = *(v1 + 956);
    v14 = [v1[170] uuid];
    v15 = [v14 UUIDString];
    LOBYTE(v17) = v13;
    v1 = [v6 initWithLastVisitTime:v19 sessionStateData:v7 ancestorTabUUIDs:v8 displayingStandaloneImage:v9 readerViewTopScrollOffset:v11 readingListBookmarkID:v12 openedFromLink:v10 showingReader:v17 queuedNavigation:v20 webClipIDString:v15];
  }

  return v1;
}

- (void)_sessionStateWithoutParentItem
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 147);

    if (WeakRetained)
    {
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x2020000000;
      v7 = 0;
      v3 = v1[133];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __45__TabDocument__sessionStateWithoutParentItem__block_invoke;
      v5[3] = &unk_2781DA7C8;
      v5[4] = v1;
      v5[5] = v6;
      v1 = [v3 _sessionStateWithFilter:v5];
      _Block_object_dispose(v6, 8);
    }

    else
    {
      v1 = [v1 sessionState];
    }
  }

  return v1;
}

- (id)_titleForStatePersistingForTabGroupTab
{
  if (a1)
  {
    v2 = [(TabDocument *)a1 _titleIncludeLoading:0 allowURLStringFallback:0 allowUntitled:?];
    if (![v2 length] && objc_msgSend(a1[133], "isLoading"))
    {
      WeakRetained = objc_loadWeakRetained(a1 + 124);
      v4 = [WeakRetained tabController];
      v5 = [v4 existingPersistedTitleForTabDocument:a1];

      v2 = v5;
    }

    if (![v2 length])
    {
      v6 = [a1 URL];
      if (v6)
      {
        v7 = [a1 URL];
        v8 = [v7 safari_userVisibleHostWithoutWWWSubdomain];

        v2 = v7;
      }

      else
      {
        v8 = [(TabDocument *)a1 _blankTabTitle];
      }

      v2 = v8;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)openInTabGroupMenuWithNewTabGroupName:(id)a3 URL:(id)a4 descendantCount:(int64_t)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v14 = [WeakRetained tabController];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__TabDocument_openInTabGroupMenuWithNewTabGroupName_URL_descendantCount_handler___block_invoke;
  v18[3] = &unk_2781D7260;
  v15 = v12;
  v18[4] = self;
  v19 = v15;
  v16 = [v14 openInTabGroupMenuWithNewTabGroupName:v10 URL:v11 descendantCount:a5 handler:v18];

  return v16;
}

void __81__TabDocument_openInTabGroupMenuWithNewTabGroupName_URL_descendantCount_handler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 992));
  v2 = [WeakRetained tabController];
  [v2 removeSingleBlankTabFromActiveTabGroup];
}

- (void)setBrowserController:(id)a3 afterTabGroupReuse:(BOOL)a4
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v7 = WeakRetained;
  if (!a4)
  {
    v8 = [WeakRetained tabController];
    [v8 willLoseOwnershipOfTab:self];
  }

  objc_storeWeak(&self->_browserController, obj);
  [(TabDocument *)self setDelegate:obj];
  v9 = [obj loadProgressObserver];
  objc_storeWeak(&self->_loadProgressObserver, v9);

  v10 = [obj tabController];
  [v10 didGainOwnershipOfTab:self];

  v11 = [v7 tabGroupManager];
  [v11 removeTabGroupObserver:self];

  v12 = [obj tabGroupManager];
  [v12 addTabGroupObserver:self];

  v13 = [(WBTab *)self->_tabGroupTab uuid];
  [(TabDocument *)&self->super.isa _activeParticipantsDidUpdateInTabWithUUID:v13];
}

- (void)_activeParticipantsDidUpdateInTabWithUUID:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[173] uuid];
    v5 = [v3 isEqualToString:v4];

    if (v5)
    {
      objc_initWeak(&location, a1);
      WeakRetained = objc_loadWeakRetained(a1 + 124);
      v7 = [WeakRetained tabGroupManager];
      v8 = a1[173];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __57__TabDocument__activeParticipantsDidUpdateInTabWithUUID___block_invoke;
      v9[3] = &unk_2781DB3E8;
      objc_copyWeak(&v10, &location);
      [v7 getActiveParticipantsInTab:v8 completionHandler:v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    if (WeakRetained)
    {
      [(TabDocument *)self removeRenderingProgressObserver:WeakRetained];
      [(TabDocument *)self removeNavigationObserver:WeakRetained];
    }

    if (obj)
    {
      [(TabDocument *)self addRenderingProgressObserver:obj];
      [(TabDocument *)self addNavigationObserver:obj];
    }
  }
}

- (void)setParentTabDocumentForBackClosesSpawnedTab:(id)a3
{
  WeakRetained = a3;
  if ([WeakRetained isBlank])
  {

    p_parentTabDocumentForBackClosesSpawnedTab = &self->_parentTabDocumentForBackClosesSpawnedTab;
    WeakRetained = objc_loadWeakRetained(&self->_parentTabDocumentForBackClosesSpawnedTab);

    if (!WeakRetained)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  p_parentTabDocumentForBackClosesSpawnedTab = &self->_parentTabDocumentForBackClosesSpawnedTab;
  v6 = objc_loadWeakRetained(&self->_parentTabDocumentForBackClosesSpawnedTab);

  if (v6 != WeakRetained)
  {
    if (WeakRetained)
    {
      v7 = [WeakRetained _backForwardList];
      v8 = [v7 currentItem];
      parentTabItem = self->_parentTabItem;
      self->_parentTabItem = v8;

      v10 = [WeakRetained webView];
      [v10 _saveBackForwardSnapshotForItem:self->_parentTabItem];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__TabDocument_setParentTabDocumentForBackClosesSpawnedTab___block_invoke;
      v15[3] = &unk_2781DA778;
      v15[4] = self;
      v11 = [v10 _sessionStateWithFilter:v15];
      v12 = [(_SFWebView *)self->_webView _restoreSessionState:v11 andNavigate:0];
      [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator reflectCommittedURLIfPossible];

LABEL_8:
      objc_storeWeak(p_parentTabDocumentForBackClosesSpawnedTab, WeakRetained);
      goto LABEL_9;
    }

LABEL_7:
    v13 = [(TabDocument *)&self->super.isa _sessionStateWithoutParentItem];
    [(TabDocument *)self restoreSessionState:v13 andNavigate:0];

    v14 = self->_parentTabItem;
    self->_parentTabItem = 0;

    WeakRetained = 0;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setUpBackClosesSpawnedTabWithParent:(id)a3
{
  v4 = a3;
  v5 = [v4 _backForwardList];
  v6 = [v5 currentItem];
  parentTabItem = self->_parentTabItem;
  self->_parentTabItem = v6;

  v8 = [v4 webView];
  [v8 _saveBackForwardSnapshotForItem:self->_parentTabItem];
  v9 = [(_SFWebView *)self->_webView backForwardList];
  v10 = [v9 currentItem];

  v11 = [(_SFWebView *)self->_webView URL];
  if (v11)
  {
    v12 = [(_SFWebView *)self->_webView backForwardList];
    v13 = [v12 backItem];
  }

  else
  {
    v13 = 0;
  }

  webView = self->_webView;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __51__TabDocument_setUpBackClosesSpawnedTabWithParent___block_invoke;
  v22 = &unk_2781DA7A0;
  v15 = v13;
  v23 = v15;
  v16 = v10;
  v24 = v16;
  v17 = [(_SFWebView *)webView _sessionStateWithFilter:&v19];
  v18 = [(_SFWebView *)self->_webView _restoreSessionState:v17 andNavigate:0, v19, v20, v21, v22];
  objc_storeWeak(&self->_parentTabDocumentForBackClosesSpawnedTab, v4);
}

uint64_t __51__TabDocument_setUpBackClosesSpawnedTabWithParent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqual:*(a1 + 32)])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqual:*(a1 + 40)];
  }

  return v4;
}

uint64_t __45__TabDocument__sessionStateWithoutParentItem__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 200))
  {
    return 1;
  }

  v1 = *(*(a1 + 40) + 8);
  result = 1;
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return 0;
  }

  return result;
}

- (TabDocument)initWithTitle:(id)a3 URL:(id)a4 UUID:(id)a5 privateBrowsingEnabled:(BOOL)a6 controlledByAutomation:(BOOL)a7 hibernated:(BOOL)a8 bookmark:(id)a9 browserController:(id)a10 relatedWebView:(id)a11
{
  v12 = a7;
  v13 = a6;
  v27 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  if (a8)
  {
    v22 = 0;
  }

  else
  {
    v22 = v28;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __137__TabDocument_initWithTitle_URL_UUID_privateBrowsingEnabled_controlledByAutomation_hibernated_bookmark_browserController_relatedWebView___block_invoke;
    v28[3] = &unk_2781D61F8;
    v26 = &v29;
    v29 = self;
    v25 = &v30;
    v30 = v21;
  }

  v23 = [(TabDocument *)self _initWithTitle:v27 URL:v17 UUID:v18 privateBrowsingEnabled:v13 controlledByAutomation:v12 bookmark:v19 browserController:v20 createDocumentView:v22];
  if (!a8)
  {
  }

  return v23;
}

void __137__TabDocument_initWithTitle_URL_UUID_privateBrowsingEnabled_controlledByAutomation_hibernated_bookmark_browserController_relatedWebView___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v2 configuration];
  v3 = [v4 websiteDataStore];
  [TabDocument _createDocumentViewRelatedTo:v1 webViewToCloneSessionStorageFrom:v2 websiteDataStore:0 deferrableUserScriptsShouldWaitUntilNotification:v3];
}

- (TabDocument)initWithTabStateData:(id)a3 hibernated:(BOOL)a4 browserController:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v11 = [v10 bookmarkWithID:{objc_msgSend(v8, "readingListBookmarkID")}];

  v12 = MEMORY[0x277CBEBC0];
  v13 = [v8 url];
  v14 = [v12 safari_URLWithDataAsString:v13];

  v15 = [v8 title];
  v16 = objc_alloc(MEMORY[0x277CCAD78]);
  v17 = [v8 UUIDString];
  v18 = [v16 initWithUUIDString:v17];
  v19 = -[TabDocument initWithTitle:URL:UUID:privateBrowsingEnabled:hibernated:bookmark:browserController:](self, "initWithTitle:URL:UUID:privateBrowsingEnabled:hibernated:bookmark:browserController:", v15, v14, v18, [v8 privateBrowsing], v6, v11, v9);

  if (v19)
  {
    if (v6)
    {
      [v8 lastViewedTime];
      [(TabDocument *)v19 setLastViewedTime:?];
    }

    -[TabDocument setShouldRestoreReader:](v19, "setShouldRestoreReader:", [v8 showingReader]);
    -[TabDocument setReaderViewTopScrollOffset:](v19, "setReaderViewTopScrollOffset:", [v8 readerViewTopScrollOffset]);
    -[TabDocument setWasOpenedFromLink:](v19, "setWasOpenedFromLink:", [v8 wasOpenedFromLink]);
    -[TabDocument setDisplayingStandaloneImage:](v19, "setDisplayingStandaloneImage:", [v8 displayingStandaloneImage]);
    v20 = [v8 url];
    -[TabDocument setIsBlank:](v19, "setIsBlank:", [v20 length] == 0);

    v21 = [v8 sessionStateData];

    if (v21)
    {
      v22 = objc_alloc(MEMORY[0x277CE38A0]);
      v23 = [v8 sessionStateData];
      v24 = [v22 initWithData:v23];

      if (v24)
      {
        [(TabDocument *)v19 restoreSessionState:v24 andNavigate:1];
      }
    }

    else if (!v6)
    {
      v25 = [(TabDocument *)v19 loadURL:v14 userDriven:1];
    }

    v26 = v19;
  }

  return v19;
}

- (TabDocument)initWithTabGroupTab:(id)a3 privateBrowsingEnabled:(BOOL)a4 hibernated:(BOOL)a5 bookmark:(id)a6 browserController:(id)a7
{
  v9 = a5;
  v10 = a4;
  v13 = a3;
  v40 = a6;
  v39 = a7;
  v14 = [v13 url];
  if (v14)
  {
    v15 = [v13 title];
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc(MEMORY[0x277CCAD78]);
  v17 = [v13 uuid];
  v18 = [v16 initWithUUIDString:v17];
  v19 = [(TabDocument *)self initWithTitle:v15 URL:v14 UUID:v18 privateBrowsingEnabled:v10 hibernated:v9 bookmark:v40 browserController:v39];

  if (v19)
  {
    objc_storeStrong(&v19->_tabGroupTab, a3);
    [(TabDocument *)v19 setIsBlank:v14 == 0];
    v20 = [v13 localAttributes];
    v21 = [v20 ancestorTabUUIDs];
    v22 = [v21 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_189_1];
    ancestorUUIDs = v19->_ancestorUUIDs;
    v19->_ancestorUUIDs = v22;

    -[TabDocument setDisplayingStandaloneImage:](v19, "setDisplayingStandaloneImage:", [v20 isDisplayingStandaloneImage]);
    -[TabDocument setWasOpenedFromLink:](v19, "setWasOpenedFromLink:", [v20 wasOpenedFromLink]);
    [v20 readerViewTopScrollOffset];
    [(TabDocument *)v19 setReaderViewTopScrollOffset:v24];
    -[TabDocument setShouldRestoreReader:](v19, "setShouldRestoreReader:", [v20 isShowingReader]);
    if (v9)
    {
      v25 = [v20 lastVisitTime];
      [v25 timeIntervalSinceReferenceDate];
      [(TabDocument *)v19 setLastViewedTime:?];
    }

    v26 = objc_alloc(MEMORY[0x277CCAD78]);
    v27 = [v20 webClipIDString];
    v28 = [v26 initWithUUIDString:v27];

    if (v28)
    {
      v29 = [MEMORY[0x277D75D70] _sf_webClipWithUUID:v28];
      [(TabDocument *)v19 setWebClip:v29];
    }

    -[TabDocument setPinned:](v19, "setPinned:", [v13 isPinned]);
    v30 = [v13 pinnedURL];
    v31 = [v30 copy];
    pinnedURL = v19->_pinnedURL;
    v19->_pinnedURL = v31;

    v33 = [v13 pinnedTitle];
    v34 = [v33 copy];
    pinnedTitle = v19->_pinnedTitle;
    v19->_pinnedTitle = v34;

    if ([v13 isShared])
    {
      v36 = [v13 isMarkedAsRead] ^ 1;
    }

    else
    {
      v36 = 0;
    }

    [(TabDocument *)v19 setUnread:v36];
    v19->_shouldDonatePageLoad = 1;
    [(TabDocument *)v19 restoreStateFromTab:v13];
    v37 = v19;
  }

  return v19;
}

id __96__TabDocument_initWithTabGroupTab_privateBrowsingEnabled_hibernated_bookmark_browserController___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];

  return v3;
}

- (void)setWebClip:(uint64_t)a1
{
  v8 = a2;
  if (a1)
  {
    v4 = [*(a1 + 1360) uuid];
    v5 = [v8 uuid];
    v6 = WBSIsEqual();

    if ((v6 & 1) == 0)
    {
      objc_storeStrong((a1 + 1360), a2);
      WeakRetained = objc_loadWeakRetained((a1 + 1248));
      [WeakRetained tabDocumentDidChangeWebClip:a1];
    }
  }
}

- (TabDocument)initWithHibernatedTab:(id)a3
{
  v4 = a3;
  v5 = [(TabDocument *)self init];
  if (v5)
  {
    v6 = [v4 wbTab];
    tabGroupTab = v5->_tabGroupTab;
    v5->_tabGroupTab = v6;

    v8 = [v4 url];
    v9 = [v4 isBlank];
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = [v4 title];
    }

    v11 = [v4 uuid];
    uuid = v5->_uuid;
    v5->_uuid = v11;

    v13 = [v4 browserController];
    [(TabDocument *)v5 setBrowserController:v13 afterTabGroupReuse:0];
    v14 = objc_alloc(MEMORY[0x277CDB768]);
    v15 = [v4 isPrivateBrowsingEnabled];
    v16 = [v13 rootViewController];
    v17 = [v14 initWithPrivateBrowsingEnabled:v15 traitEnvironment:v16 controlledByAutomation:{objc_msgSend(v13, "isControlledByAutomation")}];
    configuration = v5->_configuration;
    v5->_configuration = v17;

    v5->_hibernated = 1;
    v19 = objc_alloc_init(LoadingController);
    loadingController = v5->_loadingController;
    v5->_loadingController = v19;

    [(LoadingController *)v5->_loadingController setDelegate:v5];
    [(LoadingController *)v5->_loadingController setTitle:v10];
    [(LoadingController *)v5->_loadingController setURL:v8];
    [(TabDocument *)v5 _setUp];
    v21 = [v4 unifiedTabBarItem];
    unifiedTabBarItem = v5->_unifiedTabBarItem;
    v5->_unifiedTabBarItem = v21;

    v23 = [v4 tabBarItem];
    tabBarItem = v5->_tabBarItem;
    v5->_tabBarItem = v23;

    v25 = [v4 tabCollectionItem];
    tabCollectionItem = v5->_tabCollectionItem;
    v5->_tabCollectionItem = v25;

    v27 = [v4 cachedNavigationBarItem];

    if (v27)
    {
      v28 = [v4 cachedNavigationBarItem];
      navigationBarItem = v5->_navigationBarItem;
      v5->_navigationBarItem = v28;

      [(TabDocument *)v5 _setUpNavigationBarItem];
    }

    [v4 idForWebExtensions];
    v5->_idForWebExtensions = v30;
    [(TabDocument *)v5 setChangedPropertiesForOnUpdatedWebExtensionEvent:0];
    [(TabDocument *)v5 setIsBlank:v9];
    v31 = [v4 ancestorUUIDs];
    ancestorUUIDs = v5->_ancestorUUIDs;
    v5->_ancestorUUIDs = v31;

    v33 = [(WBTab *)v5->_tabGroupTab localAttributes];
    v5->_displayingStandaloneImage = [v33 isDisplayingStandaloneImage];
    v5->_wasOpenedFromLink = [v33 wasOpenedFromLink];
    [v33 readerViewTopScrollOffset];
    v5->_readerViewTopScrollOffset = v34;
    v5->_shouldRestoreReader = [v33 isShowingReader];
    v35 = [v33 lastVisitTime];
    [v35 timeIntervalSinceReferenceDate];
    v5->_lastViewedTime = v36;

    v37 = objc_alloc(MEMORY[0x277CCAD78]);
    v38 = [v33 webClipIDString];
    v39 = [v37 initWithUUIDString:v38];

    if (v39)
    {
      v40 = [MEMORY[0x277D75D70] _sf_webClipWithUUID:v39];
      [(TabDocument *)v5 setWebClip:v40];
    }

    -[TabDocument setPinned:](v5, "setPinned:", [v4 isPinned]);
    v41 = [v4 pinnedURL];
    v42 = [v41 copy];
    pinnedURL = v5->_pinnedURL;
    v5->_pinnedURL = v42;

    v44 = [v4 pinnedTitle];
    v45 = [v44 copy];
    pinnedTitle = v5->_pinnedTitle;
    v5->_pinnedTitle = v45;

    v47 = [v4 shareParticipants];
    shareParticipants = v5->_shareParticipants;
    v5->_shareParticipants = v47;

    v5->_unread = [v4 isUnread];
    v5->_shouldDonatePageLoad = 1;
    [(TabDocument *)v5 restoreStateFromTab:v5->_tabGroupTab];
    v49 = v5;
  }

  return v5;
}

- (void)setUnifiedTabBarItem:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = *(a1 + 1104);
    if (v5 != v4)
    {
      v11 = v4;
      v6 = [v5 title];
      [v11 setTitle:v6];
      v7 = (a1 + 1104);

      v8 = [*(a1 + 1104) icon];
      [v11 setIcon:v8];

      [v11 setUUID:*(a1 + 1376)];
      [v11 setNavigationBarItem:*(a1 + 280)];
      [v11 setPinned:*(a1 + 951)];
      v9 = [*(a1 + 1104) navigationBarItem];
      v10 = *(a1 + 280);

      if (v9 == v10)
      {
        [*v7 setNavigationBarItem:0];
      }

      objc_storeStrong(v7, a2);
      v4 = v11;
    }
  }
}

- (UnifiedTabBarItem)currentUnifiedTabBarItem
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

- (void)updateThemeColorAndUnderPageBackground:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v5 = [(TabDocument *)self activeWebView];
  v6 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  if ([v6 BOOLForKey:*MEMORY[0x277D29000]])
  {

    goto LABEL_4;
  }

  v7 = [WeakRetained tabBarManager];
  v8 = [v7 displayMode];

  if (v8 == 2)
  {
LABEL_4:
    v9 = [WeakRetained rootViewController];
    v10 = [v9 isInYttriumState];

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (![(TabDocument *)self isShowingSystemStartPage]&& ![(TabDocument *)self isPDFDocument]&& ([(_SFBrowserConfiguration *)self->_configuration isControlledByAutomation]& 1) == 0 && ![(TabDocument *)self inElementFullscreen])
  {
    v13 = [WeakRetained rootViewController];
    if ([v13 usingLoweredBar])
    {
      v14 = 0;
    }

    else
    {
      v15 = [(_SFBrowserConfiguration *)self->_configuration traitEnvironment];
      v16 = [v15 traitCollection];
      v14 = [v16 userInterfaceStyle] == 2;
    }

    v11 = [MEMORY[0x277D4A868] updateThemeColorForWebView:v5 darkModeEnabled:v14 allowFallbackColors:1 updateUnderPageBackgroundColor:v3];
    goto LABEL_10;
  }

LABEL_9:
  [v5 setUnderPageBackgroundColor:0];
  v11 = 0;
LABEL_10:
  themeColor = self->_themeColor;
  self->_themeColor = v11;
}

- (void)setIsBlank:(BOOL)a3
{
  if (self->_isBlank != a3)
  {
    self->_isBlank = a3;
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    if (self->_isBlank)
    {
      v4 = 0;
    }

    else
    {
      [(TabDocument *)self _clearLibraryType];
      [WeakRetained updateFocusForTab:self webViewCanTakeFocus:1];
      v4 = !self->_isBlank;
    }

    [(SFNavigationBarItem *)self->_navigationBarItem setShowsStopReloadButtons:v4];
    if (self->_hasBeenInserted)
    {
      v5 = [WeakRetained tabController];
      [v5 updateLocalTabGroupTitle];
    }
  }
}

- (void)_clearLibraryType
{
  if (a1)
  {
    v2 = *(a1 + 1320);
    if (v2)
    {
      *(a1 + 1320) = 0;
      v3 = v2;

      WeakRetained = objc_loadWeakRetained((a1 + 1248));
      [WeakRetained tabDocument:a1 didClearLibraryType:v3];
    }
  }
}

- (void)unfreezeAfterNavigationGesture:(BOOL)a3
{
  if (!a3)
  {
    [(TabDocument *)self setSuppressingProgressAnimationForNavigationGesture:0];
  }
}

- (void)setNeedsNewTabSnapshot
{
  if (!self->_closed && !self->_hibernated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v3 = [WeakRetained tabCollectionViewProvider];
    [v3 invalidateSnapshotForTab:self];
  }
}

- (void)_updateSnapshotIfNeeded
{
  if (a1 && (*(a1 + 954) & 1) == 0 && (*(a1 + 975) & 1) == 0 && (*(a1 + 990) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 992));
    v1 = [WeakRetained tabCollectionViewProvider];
    [v1 updateSnapshotsForTabHoverPreviewIfNeeded];
  }
}

- (_SFWebView)frontWebView
{
  v2 = 1064;
  if (self->_showingReader)
  {
    v2 = 1432;
  }

  return *(&self->super.isa + v2);
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(TabBarItem *)self->_tabBarItem setActive:?];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [(TabDocument *)self setLastViewedTime:?];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v5 = [WeakRetained tabController];
    [v5 saveTabDocumentUserActivitySoon:self];

    if (self->_active)
    {
      v6 = [MEMORY[0x277D499B8] sharedLogger];
      [v6 reportTabUpdatedWithUpdateType:7];

      if (self->_closed)
      {
        v7 = WBS_LOG_CHANNEL_PREFIXPageLoading();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          [TabDocument setActive:];
        }
      }

      v8 = [(TabDocument *)self navigationBarItem];
      if (self->_hibernated)
      {
        [(TabDocument *)self unhibernate];
      }

      else
      {
        [(TabDocument *)self _loadDeferredURLIfNeeded];
      }

      [(SFDialogController *)self->_dialogController owningWebViewWillBecomeActive];
      if (*(&self->_flags + 8))
      {
        *(&self->_flags + 8) &= ~1u;
        self->_flags.impressionProvenance = 0;
      }

      [(TabDocument *)self validateExtensionToolbarItems];
      [(TabDocument *)self indexTabToCoreSpotlight];
    }

    else
    {
      [(SFScribbleController *)self->_sfScribbleController endScribblingAndSaveChanges:0];
    }

    [(TabDocument *)self _updateTabBarFavicon];
  }
}

- (void)_loadDeferredURLIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1 && *(a1 + 824) == 1)
  {
    v2 = *(a1 + 832);
    v3 = *(a1 + 832);
    *(a1 + 832) = 0;

    v4 = *(a1 + 840);
    *(a1 + 840) = 0;

    *(a1 + 824) = 0;
    v5 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134218499;
      v8 = a1;
      v9 = 2160;
      v10 = 1752392040;
      v11 = 2117;
      v12 = v2;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Apply deferred navigation: (document: %p) %{sensitive, mask.hash}@", &v7, 0x20u);
    }

    v6 = [(TabDocument *)a1 loadURL:v2 userDriven:0 skipSyncableTabUpdates:*(a1 + 709)];
  }
}

- (void)_notifyImpressionAnalyticsRecorderIfNeededTabDocumentDidBecomeActive:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 784);
    if (v3)
    {
      *(a1 + 784) = v3 & 0xFE;
LABEL_12:
      *(a1 + 776) = 0;
      return;
    }

    if ((*(a1 + 784) & 2) != 0 && (a2 & 1) == 0)
    {
      *(a1 + 784) = v3 & 0xFC;
      WeakRetained = objc_loadWeakRetained((a1 + 992));
      v5 = [WeakRetained tabController];
      v6 = [v5 activeTabDocument];
      *(a1 + 784) = *(a1 + 784) & 0xFB | (4 * (v6 != a1));

      if ((*(a1 + 784) & 4) != 0)
      {
        return;
      }

      goto LABEL_11;
    }

    if ((*(a1 + 784) & 4) != 0 && (a2 & 1) == 0)
    {
      *(a1 + 784) = v3 & 0xFA;
LABEL_11:
      v7 = [MEMORY[0x277D4A808] sharedRecorder];
      v8 = [*(a1 + 1064) URL];
      [v7 didActualizeImpressionForURL:v8 provenance:*(a1 + 776)];

      goto LABEL_12;
    }
  }
}

- (void)stopAdvertisingProactiveActivityContent
{
  [(TabDocument *)self setSearchableItemAttributes:0];

  [(TabDocument *)self updateUserActivity];
}

- (void)_closeTabDocumentAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained closeTabDocument:self animated:v3];

  v6 = [MEMORY[0x277D4A060] sharedInstance];
  [v6 setTabNeedsSpotlightDeletion:self];
}

- (void)didReplaceTabDocument:(id)a3
{
  v13 = a3;
  v4 = [v13 unifiedTabBarItem];
  [(TabDocument *)self setUnifiedTabBarItem:v4];

  [(TabDocument *)v13 setUnifiedTabBarItem:?];
  [(TabDocument *)self _updateBarItemsWithCurrentMediaState];
  [(TabDocument *)self setPinned:*(v13 + 951)];
  objc_storeStrong(&self->_pinnedTitle, v13[143]);
  objc_storeStrong(&self->_pinnedURL, v13[144]);
  self->_suppressWebExtensionEvents = 0;
  [v13 idForWebExtensions];
  self->_idForWebExtensions = v5;
  v6 = [v13 previousURLForWebExtensionOnUpdatedEvent];
  previousURLForWebExtensionOnUpdatedEvent = self->_previousURLForWebExtensionOnUpdatedEvent;
  self->_previousURLForWebExtensionOnUpdatedEvent = v6;

  v8 = [v13 previousTitleForWebExtensionOnUpdatedEvent];
  v9 = [v8 copy];
  previousTitleForWebExtensionOnUpdatedEvent = self->_previousTitleForWebExtensionOnUpdatedEvent;
  self->_previousTitleForWebExtensionOnUpdatedEvent = v9;

  self->_previousLoadingCompleteStateForWebExtensionOnUpdatedEvent = [v13 previousLoadingCompleteStateForWebExtensionOnUpdatedEvent];
  [(TabDocument *)self _loadingStateForWebExtensionsMayHaveChanged];
  speculativeLoadNavigationResponse = self->_speculativeLoadNavigationResponse;
  if (speculativeLoadNavigationResponse)
  {
    [(TabDocument *)&self->super.isa _donateCurrentNavigationWithNavigationResponse:?];
    v12 = self->_speculativeLoadNavigationResponse;
    self->_speculativeLoadNavigationResponse = 0;
  }
}

- (void)_donateCurrentNavigationWithNavigationResponse:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    if (([a1 isPrivateBrowsingEnabled] & 1) == 0)
    {
      v4 = [v3 URL];
      v5 = [a1 URL];
      v6 = [v4 isEqual:v5];

      if (v6)
      {
        v7 = [a1[11] loadedUsingDesktopUserAgent];
        v8 = [a1[133] _wasPrivateRelayed];
        v9 = [v3 statusCode];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__TabDocument__donateCurrentNavigationWithNavigationResponse___block_invoke;
        block[3] = &unk_2781DB488;
        block[4] = a1;
        v11 = v3;
        v12 = v7 ^ 1u;
        v14 = v8;
        v13 = v9;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }
}

- (void)setShowingReader:(BOOL)a3
{
  if (self->_showingReader != a3)
  {
    v3 = a3;
    self->_showingReader = a3;
    [(SFNavigationBarItem *)self->_navigationBarItem setReaderButtonSelected:?];
    [(SFDialogController *)self->_dialogController owningTabWillClose];
    [(_SFReaderController *)self->_readerContext setReaderIsActive:v3];
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      v5 = [WeakRetained processPool];
      SafariShared::ReaderAvailabilityController::updateReaderOrTranslationLastActivated(v5, v6);
    }
  }
}

- (void)addAppHighlightCreatingLink:(BOOL)a3
{
  v3 = a3;
  v5 = +[Application sharedApplication];
  v15 = [v5 systemNoteTakingController];

  v6 = [(TabDocument *)self webView];
  v7 = [v6 _selectionAttributes];

  if ((v7 & 2) != 0)
  {
    v13 = [(TabDocument *)self webView];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_6;
    }

    v9 = [(TabDocument *)self webView];
    [v9 _addAppHighlightInNewGroup:objc_msgSend(v15 originatedInApp:{"isNotesPIPVisible") ^ 1, !v3}];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CC1EF0]);
    v9 = [v8 initWithActivityType:*MEMORY[0x277CCA850]];
    v10 = [(TabDocument *)self urlForSharing];
    [v9 setWebpageURL:v10];

    v11 = [(TabDocument *)self title];
    [v9 setTitle:v11];

    LODWORD(v11) = [v15 isNotesPIPVisible];
    v12 = [(TabDocument *)self webView];
    [v15 saveHighlightsData:0 selectedText:0 selectedImage:0 newGroup:v11 ^ 1 originatedInApp:!v3 webView:v12 userActivity:v9];
  }

LABEL_6:
}

- (void)applyHighlightFromNotesIfNeeded
{
  if (self->_userActivityFromNotes)
  {
    v3 = +[Application sharedApplication];
    v4 = [v3 systemNoteTakingController];

    if ([v4 isNoteTakingSupportedWithPrivateBrowsing:{-[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}])
    {
      userActivityFromNotes = self->_userActivityFromNotes;
      v6 = [(TabDocument *)self webView];
      [v4 applyHighlightInUserActivity:userActivityFromNotes webView:v6];
    }

    else
    {
      v7 = WBS_LOG_CHANNEL_PREFIXSystemNoteTaking();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_INFO, "Not applying highlights from Notes because Quick Note is disabled in Private Browsing", v8, 2u);
      }
    }
  }
}

- (void)restoreAllHighlightsData
{
  v3 = +[Application sharedApplication];
  v4 = [v3 systemNoteTakingController];

  if ([v4 isNotesPIPVisible])
  {
    v5 = self->_userActivityFromNotes;
    if (!v5)
    {
      v6 = objc_alloc(MEMORY[0x277CC1EF0]);
      v7 = [v6 initWithActivityType:*MEMORY[0x277CCA850]];
      v8 = [(TabDocument *)self urlForSharing];
      if ([v8 safari_isHTTPFamilyURL])
      {
        [(NSUserActivity *)v7 setWebpageURL:v8];
      }

      v9 = [(TabDocument *)self title];
      [(NSUserActivity *)v7 setTitle:v9];

      v5 = v7;
    }

    v10 = [(_SFWebView *)self->_webView backForwardList];
    v11 = [v10 currentItem];
    backForwardListItemForCurrentNoteTakingCheck = self->_backForwardListItemForCurrentNoteTakingCheck;
    self->_backForwardListItemForCurrentNoteTakingCheck = v11;

    objc_initWeak(&location, self);
    v13 = [(TabDocument *)self isPrivateBrowsingEnabled];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __39__TabDocument_restoreAllHighlightsData__block_invoke;
    v14[3] = &unk_2781DA7F0;
    objc_copyWeak(&v15, &location);
    [v4 fetchHighlightsForUserActivity:v5 privateBrowsing:v13 completion:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __39__TabDocument_restoreAllHighlightsData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (!WeakRetained)
    {
      goto LABEL_10;
    }

    v8 = WeakRetained;
    v9 = WeakRetained[43];
    v10 = [WeakRetained[133] backForwardList];
    v11 = [v10 currentItem];

    if (v9 == v11)
    {
      [v8[133] _restoreAppHighlights:v5];
    }

    v12 = v8[43];
    v8[43] = 0;
  }

  if (v6)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXSystemNoteTaking();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __39__TabDocument_restoreAllHighlightsData__block_invoke_cold_1();
    }
  }

LABEL_10:
}

- (void)_loadingControllerWillLoadRequest:(uint64_t)a3 webView:(int)a4 userDriven:
{
  v12 = a2;
  if (a1)
  {
    *(a1 + 712) = 0;
    *(a1 + 1240) = 0;
    [*(a1 + 288) owningWebViewWillNavigate];
    WeakRetained = objc_loadWeakRetained((a1 + 992));
    v7 = [WeakRetained userActivityController];
    v8 = [v7 tabDocumentPendingUserActivityPayload];

    if (v8 == a1)
    {
      [v7 setTabDocumentPendingUserActivityPayload:0];
    }

    v9 = *(a1 + 1288);
    if (v9)
    {
      [v9 startedPageLoad];
    }

    v10 = [v12 URL];
    v11 = [v10 _webkit_scriptIfJavaScriptURL];

    if (!v11)
    {
      *(a1 + 711) = 0;
      *(a1 + 707) = a4;
      *(a1 + 708) = 0;
      *(a1 + 718) = a4;
      [(TabDocument *)a1 _clearLibraryType];
    }

    if (*(a1 + 1368) && a4)
    {
      [a1 clearTabReuseURL];
    }

    if (*(a1 + 990) == 1 && a4)
    {
      [WeakRetained setWantsUnifiedFieldFocused:0];
    }
  }
}

- (void)_loadingControllerDidStartLoading
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 711) = 0;
    [*(a1 + 1304) clearFailedRequest];
    [a1 updateTabTitle];
    [(TabDocument *)a1 _updateNavigationBarItem];
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(a1 + 264);
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = *v8;
      do
      {
        v5 = 0;
        do
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v7 + 1) + 8 * v5);
          if (objc_opt_respondsToSelector())
          {
            [v6 tabDocumentDidStartLoading:{a1, v7}];
          }

          ++v5;
        }

        while (v3 != v5);
        v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v3);
    }
  }
}

- (void)_loadingControllerEstimatedProgressChangedTo:(uint64_t)a1
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 1256));
    [WeakRetained updateProgressWithResource:a1];

    [*(a1 + 176) updateFluidProgressWithProgressStateSource:a1];
    v4 = 0;
    v5 = *(a1 + 977);
    if (a2 > 0.0 && a2 < 1.0)
    {
      v4 = *(a1 + 1000) != 0;
    }

    *(a1 + 977) = v4;
    [*(a1 + 280) setStopReloadButtonShowsStop:?];
    if (v5 != *(a1 + 977))
    {
      v7 = objc_loadWeakRetained((a1 + 1248));
      [v7 tabDocumentDidChangeCanStopLoadingState:a1];
    }
  }
}

- (void)_didDecideNavigationPolicy:(void *)a3 forNavigationAction:
{
  v5 = a3;
  if (a1)
  {
    v21 = v5;
    v6 = [v5 targetFrame];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v21 sourceFrame];
    }

    v9 = v8;

    if ([v9 isMainFrame])
    {
      v10 = *(a1 + 1056);
      v11 = [*(a1 + 1064) backForwardList];
      v12 = [v11 currentItem];
      [v10 owningWebViewDidDecidePolicy:a2 forNavigationAction:v21 currentBackForwardListItem:v12];

      if (![v21 navigationType])
      {
        [a1 setNextLoadComesFromSearchPage:{objc_msgSend(a1, "isSearchPage")}];
      }

      [(TabDocument *)a1 _updatePageLoadDonorWithNavigationPolicy:a2 inMainFrameForNavigationAction:v21];
      *(a1 + 784) &= ~4u;
      v13 = [(TabDocument *)a1 _analyticsRecorderShouldIgnoreURLWithNavigationPolicy:a2 forNavigationAction:v21];
      v14 = *(a1 + 784) & 0xFC;
      if (v13)
      {
        *(a1 + 784) = v14 | 1;
        *(a1 + 776) = 0;
      }

      else
      {
        *(a1 + 784) = v14 | 2;
        *(a1 + 786) = 0;
        if (![v21 navigationType])
        {
          if (*(a1 + 872))
          {
            v15 = [MEMORY[0x277CBEAA8] date];
            [v15 timeIntervalSinceDate:*(a1 + 872)];
            v17 = v16;

            v18 = v17 < 10.0;
          }

          else
          {
            v18 = 0;
          }

          v19 = [MEMORY[0x277D499B8] sharedLogger];
          [a1 pageZoomFactor];
          *&v20 = v20;
          [v19 didActivateLinkWithZoomScale:v18 recentlyZoomedIn:v20];
        }
      }
    }

    v5 = v21;
  }
}

- (void)_updatePageLoadDonorWithNavigationPolicy:(void *)a3 inMainFrameForNavigationAction:
{
  v11 = a3;
  if (a1)
  {
    if (!a2 || ([a1 committedURL], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "request"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "URL"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "isEqual:", v7), v7, v6, v5, (v8 & 1) != 0) || (v9 = objc_msgSend(v11, "navigationType"), v9 - 2 < 3))
    {
      v10 = 0;
      goto LABEL_8;
    }

    if (v9 < 2)
    {
LABEL_6:
      v10 = 1;
LABEL_8:
      *(a1 + 904) = v10;
      goto LABEL_9;
    }

    if (v9 == -1)
    {
      if (([v11 _isUserInitiated] & 1) == 0 && (*(a1 + 905) & 1) == 0)
      {
        v10 = [*(a1 + 48) navigationSource] == 0;
        goto LABEL_8;
      }

      goto LABEL_6;
    }
  }

LABEL_9:
}

- (uint64_t)_analyticsRecorderShouldIgnoreURLWithNavigationPolicy:(void *)a3 forNavigationAction:
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (a2 && ([v5 navigationType] & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v8 = [a1 committedURL];
      v9 = [v6 request];
      v10 = [v9 URL];
      v7 = [v8 isEqual:v10];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)webPageID
{
  v2 = [(TabDocument *)self webView];
  v3 = [v2 _handle];
  v4 = [v3 _webPageID];

  return v4;
}

- (void)animateProgressForCompletedDocument
{
  if (!self->_fluidProgressState)
  {
    [(WBSFluidProgressController *)self->_fluidProgressController startFluidProgressWithProgressStateSource:self];
    fluidProgressState = self->_fluidProgressState;

    [(WBSFluidProgressState *)fluidProgressState setHasCompletedLoad:1];
  }
}

- (BOOL)createFluidProgressState
{
  if (!self->_fluidProgressState)
  {
    v3 = [objc_alloc(MEMORY[0x277D4A750]) initWithType:0];
    fluidProgressState = self->_fluidProgressState;
    self->_fluidProgressState = v3;

    v5 = self->_fluidProgressState;
    v6 = [(TabDocument *)self expectedOrCurrentURL];
    v7 = [v6 safari_originalDataAsString];
    [(WBSFluidProgressState *)v5 setLoadURL:v7];
  }

  return 1;
}

- (void)clearFluidProgressState
{
  fluidProgressState = self->_fluidProgressState;
  self->_fluidProgressState = 0;
}

- (void)setSuppressingProgressAnimationForNavigationGesture:(BOOL)a3
{
  if (self->_suppressingProgressAnimationForNavigationGesture != a3)
  {
    self->_suppressingProgressAnimationForNavigationGesture = a3;
    if (a3)
    {
      [(TabDocument *)self beginSuppressingProgressAnimation];
    }

    else
    {
      [(TabDocument *)self endSuppressingProgressAnimation];
    }
  }
}

- (void)beginSuppressingProgressAnimation
{
  progressAnimationSuppressedCount = self->_progressAnimationSuppressedCount;
  if (!progressAnimationSuppressedCount)
  {
    [(WBSFluidProgressController *)self->_fluidProgressController setProgressAnimationSuppressed:1 forProgressStateSource:self animated:1];
    progressAnimationSuppressedCount = self->_progressAnimationSuppressedCount;
  }

  self->_progressAnimationSuppressedCount = progressAnimationSuppressedCount + 1;
}

- (void)endSuppressingProgressAnimationAnimated:(BOOL)a3
{
  progressAnimationSuppressedCount = self->_progressAnimationSuppressedCount;
  if (progressAnimationSuppressedCount)
  {
    v4 = progressAnimationSuppressedCount - 1;
    self->_progressAnimationSuppressedCount = v4;
    if (!v4)
    {
      [(WBSFluidProgressController *)self->_fluidProgressController setProgressAnimationSuppressed:0 forProgressStateSource:self animated:a3];
    }
  }
}

- (void)fluidProgressRocketAnimationDidComplete
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentFluidProgressRocketAnimationDidComplete:self];

  if (self->_shouldReflectTranslationAsFluidProgress)
  {
    translationContext = self->_translationContext;

    [(WBSTranslationContext *)translationContext clearFluidProgressState];
  }
}

- (id)currentFluidProgressStateSource
{
  downloadReflectedInFluidProgress = self->_downloadReflectedInFluidProgress;
  if (!downloadReflectedInFluidProgress)
  {
    if (self->_shouldReflectTranslationAsFluidProgress)
    {
      downloadReflectedInFluidProgress = self->_translationContext;
    }

    else
    {
      downloadReflectedInFluidProgress = self;
    }
  }

  v4 = downloadReflectedInFluidProgress;

  return v4;
}

- (id)customUserVisibleStringForReadingListBookmarkURL:(id)a3
{
  v4 = a3;
  if ([v4 isFileURL] && -[TabDocument readingListBookmarkID](self, "readingListBookmarkID"))
  {
    v5 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v6 = [v5 bookmarkWithID:{-[TabDocument readingListBookmarkID](self, "readingListBookmarkID")}];
    v7 = [v6 address];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)fetchCanonicalURLWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(TabDocument *)self isShowingStartPageOverriddenByExtension];
  if ([(TabDocument *)self isBlank]|| v5)
  {
    cachedCanonicalURL = self->_cachedCanonicalURL;
    self->_cachedCanonicalURL = 0;

    v7 = [(TabDocument *)self cachedCanonicalURLOrURLForSharing];
    v4[2](v4, v7);
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = [objc_alloc(MEMORY[0x277CDB8C0]) initWithWebView:self->_webView];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__TabDocument_fetchCanonicalURLWithCompletionHandler___block_invoke;
    v9[3] = &unk_2781DA818;
    objc_copyWeak(&v11, &location);
    v9[4] = self;
    v10 = v4;
    [v8 fetchSharingLinkWithCompletionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __54__TabDocument_fetchCanonicalURLWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_storeStrong(WeakRetained + 66, a2);
  [(TabDocument *)WeakRetained _loadActivityItemProviderIfNeeded];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) cachedCanonicalURLOrURLForSharing];
  (*(v5 + 16))(v5, v6);
}

- (NSURL)cachedCanonicalURLOrURLForSharing
{
  cachedCanonicalURL = self->_cachedCanonicalURL;
  if (cachedCanonicalURL)
  {
    v3 = cachedCanonicalURL;
  }

  else
  {
    v3 = [(TabDocument *)self urlForSharing];
  }

  return v3;
}

- (id)URLForStatePersisting
{
  deferredNavigationURL = self->_deferredNavigationURL;
  if (deferredNavigationURL)
  {
    v3 = deferredNavigationURL;
  }

  else
  {
    v3 = [(LoadingController *)self->_loadingController URLForStatePersisting];
  }

  return v3;
}

- (void)clearTabReuseURL
{
  tabReuseURL = self->_tabReuseURL;
  self->_tabReuseURL = 0;
}

- (void)clearBrowserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  [v4 willLoseOwnershipOfTab:self];

  objc_storeWeak(&self->_browserController, 0);
}

- (void)setUuid:(id)a3
{
  v11 = a3;
  v4 = [MEMORY[0x277D4A060] sharedInstance];
  [v4 setTabNeedsSpotlightDeletion:self];

  v5 = self->_uuid;
  v6 = [v11 copy];
  uuid = self->_uuid;
  self->_uuid = v6;

  [(TabBarItem *)self->_tabBarItem setUUID:self->_uuid];
  [(UnifiedTabBarItem *)self->_unifiedTabBarItem setUUID:self->_uuid];
  [(TabDocumentCollectionItem *)self->_tabCollectionItem setUUID:self->_uuid];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v9 = [WeakRetained tabController];
  [v9 tabDocumentDidUpdateUUID:self previousUUID:v5];

  v10 = [(WBTab *)self->_tabGroupTab uuid];
  [(TabDocument *)&self->super.isa _activeParticipantsDidUpdateInTabWithUUID:v10];

  [(TabDocument *)self indexTabToCoreSpotlight];
  if ((WBSIsEqual() & 1) == 0)
  {
    [(TabDocument *)self _notifyDidUpdateTabCollectionItem];
  }
}

- (BOOL)isLoadingStartPage
{
  if (![(TabDocument *)self isLoading])
  {
    return 0;
  }

  v3 = [(LoadingController *)self->_loadingController URL];
  v4 = newTabOverridePageURLForTab(self);
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)setQuickLookDocumentForCurrentBackForwardListItem:(uint64_t)a1
{
  v5 = a2;
  if (a1)
  {
    v3 = [*(a1 + 1064) backForwardList];
    v4 = [v3 currentItem];
    [v4 _sf_setQuickLookDocument:v5];
  }
}

- (NSString)suggestedTitleForCurrentURL
{
  if ([(TabDocument *)self isShowingErrorPage])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(TabDocument *)self _titleIncludeLoading:0 allowURLStringFallback:1 allowUntitled:?];
    if ([v4 length])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v3 = v5;
  }

  return v3;
}

- (id)loadRequest:(id)a3 userDriven:(BOOL)a4
{
  v4 = [TabDocument _loadRequest:a3 userDriven:a4 shouldOpenExternalURLs:?];

  return v4;
}

- (id)_loadRequest:(uint64_t)a1 userDriven:(void *)a2 shouldOpenExternalURLs:(uint64_t)a3
{
  v5 = a2;
  if (a1)
  {
    v6 = [(TabDocument *)a1 _loadRequest:v5 userDriven:a3 shouldOpenExternalURLs:0 eventAttribution:0 skipSyncableTabUpdates:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_loadRequest:(uint64_t)a3 userDriven:(uint64_t)a4 shouldOpenExternalURLs:(void *)a5 eventAttribution:(char)a6 skipSyncableTabUpdates:
{
  v11 = a2;
  v12 = a5;
  if (a1)
  {
    *(a1 + 709) = a6;
    v13 = [v11 safari_requestBySettingIsUserInitiated:1];

    v14 = [(TabDocument *)a1 _requestBySettingAdvancedPrivacyProtectionsFlag:v13];

    v15 = [v14 URL];
    v16 = [v15 isEqual:*(a1 + 920)];

    if ((v16 & 1) == 0)
    {
      v17 = *(a1 + 920);
      *(a1 + 920) = 0;
    }

    v18 = [a1 webExtensionsController];
    v19 = [v14 URL];
    v20 = [v18 canonicalURLForWebExtensionURL:v19];

    if (v20)
    {
      v21 = [v14 mutableCopy];
      [v21 setURL:v20];
      v11 = [v21 copy];
    }

    else
    {
      v11 = v14;
    }

    v22 = [v11 URL];
    [(TabDocument *)a1 _createNewDocumentViewIfNecessaryForURL:v22];

    v23 = *(a1 + 128);
    *(a1 + 128) = 0;

    *(a1 + 136) = 1;
    if (a3)
    {
      v24 = [*(a1 + 288) presentedDialog];
      v25 = [v24 completionHandlerBlocksWebProcess];
    }

    else
    {
      v25 = 0;
    }

    v26 = [a1 webExtensionsController];
    v27 = [v11 URL];
    v28 = [v26 webExtensionForURL:v27];

    if (!v28 || ([v28 extensionsController], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "extension"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v29, "extensionIsEnabled:", v30), v30, v29, (v31 & 1) != 0))
    {
      v32 = *(a1 + 1064);
      if (!v32 || !(v25 & 1 | (([v32 _webProcessIsResponsive] & 1) == 0)))
      {
        a1 = [*(a1 + 168) loadRequest:v11 userDriven:a3 shouldOpenExternalURLs:a4 eventAttribution:v12];
        goto LABEL_17;
      }

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __102__TabDocument__loadRequest_userDriven_shouldOpenExternalURLs_eventAttribution_skipSyncableTabUpdates___block_invoke;
      v34[3] = &unk_2781DA840;
      v34[4] = a1;
      v35 = v11;
      v37 = a3;
      v38 = a4;
      v36 = v12;
      [(TabDocument *)a1 _terminateWebProcessIfNeededAndShowCrashBanner:v34 thenDo:?];
    }

    a1 = 0;
LABEL_17:
  }

  return a1;
}

- (id)_requestBySettingAdvancedPrivacyProtectionsFlag:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 URL];
    v6 = [a1 supportsAdvancedPrivacyProtectionsForURL:v5];

    v7 = [v4 safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:v6];

    v4 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_createNewDocumentViewIfNecessaryForURL:(uint64_t)a1
{
  v3 = a2;
  if (a1 && ([(TabDocument *)a1 _isNewDocumentViewNecessaryForURL:v3]& 1) != 0)
  {
    v4 = [a1 webExtensionsController];
    v5 = [v4 webExtensionForURL:v3];

    if (v5)
    {
      [v5 extensionWebViewConfiguration];
    }

    else
    {
      [a1 createWebViewConfiguration];
    }
    v7 = ;

    v8 = [a1 webView];
    v9 = [v8 _sessionState];

    [TabDocument _destroyDocumentViewAllowingDeferral:a1];
    [(TabDocument *)a1 _createDocumentViewWithConfiguration:v7];
    if (*(a1 + 928) == 1)
    {
      v10 = v9;
      v11 = *(a1 + 936);
      *(a1 + 936) = v10;
    }

    else
    {
      v11 = [a1 webView];
      v12 = [v11 _restoreSessionState:v9 andNavigate:0];
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_terminateWebProcessIfNeededAndShowCrashBanner:(void *)a3 thenDo:
{
  v5 = a3;
  if (a1)
  {
    if (*(a1 + 440))
    {
      v6 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [TabDocument _terminateWebProcessIfNeededAndShowCrashBanner:thenDo:];
      }
    }

    v7 = [*(a1 + 288) presentedDialog];
    v8 = [v7 completionHandlerBlocksWebProcess];

    if (v8)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [TabDocument _terminateWebProcessIfNeededAndShowCrashBanner:thenDo:];
      }

      v10 = _Block_copy(v5);
      v11 = *(a1 + 440);
      *(a1 + 440) = v10;

      *(a1 + 737) = a2 ^ 1;
      [(TabDocument *)a1 _terminateWebProcessThenDoUnresponsiveWebProcessBlock];
    }

    else
    {
      v12 = *(a1 + 1064);
      if (v12 && ![v12 _webProcessIsResponsive])
      {
        v13 = _Block_copy(v5);
        v14 = *(a1 + 440);
        *(a1 + 440) = v13;

        *(a1 + 737) = a2 ^ 1;
        [*(a1 + 432) invalidate];
        v15 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:a1 target:sel__unresponsiveWebProcessTimerFired_ selector:0 userInfo:0 repeats:0.3];
        v16 = *(a1 + 432);
        *(a1 + 432) = v15;
      }

      else
      {
        v5[2](v5);
      }
    }
  }
}

- (void)_updateSnapshotForWebClip:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 iconIsScreenShotBased])
    {
      v5 = [v4 iconImage];
      [v5 scale];
      v7 = v6;

      v8 = [MEMORY[0x277D759A0] mainScreen];
      [v8 scale];
      v10 = v9;

      if (v7 != v10 || ([v4 iconIsPrerendered] & 1) == 0)
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __41__TabDocument__updateSnapshotForWebClip___block_invoke;
        v11[3] = &unk_2781DA868;
        v12 = v4;
        [a1 snapshotForWebClipIcon:v11];
      }
    }
  }
}

void __41__TabDocument__updateSnapshotForWebClip___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setIconImageFromScreenshot:v3];
    [*(a1 + 32) updateOnDisk];
    [*(a1 + 32) requestIconUpdateInSpringBoard];
  }
}

- (void)snapshotForWebClipIcon:(id)a3
{
  v11 = a3;
  [MEMORY[0x277CC1E60] _applicationIconCanvasSize];
  v5 = v4;
  v7 = v6;
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  v10 = v9;

  [(TabDocument *)self snapshotWithSize:0 options:v11 completion:v5 / v10, v7 / v10];
}

- (void)snapshotWithSize:(CGSize)a3 options:(unint64_t)a4 completion:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__TabDocument_snapshotWithSize_options_completion___block_invoke;
  v12[3] = &unk_2781DA890;
  v13 = v9;
  v11 = v9;
  [WeakRetained snapshotTabDocument:self size:a4 | 0x80 options:v12 completion:{width, height}];
}

void __51__TabDocument_snapshotWithSize_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 image];
  (*(v2 + 16))(v2);
}

- (void)dispatchNavigationIntent:(id)a3
{
  v8 = a3;
  v4 = [(TabDocument *)self uuid];
  [v8 setSourceTabUUID:v4];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [WeakRetained UUID];
  [v8 setSourceWindowUUID:v6];

  v7 = +[Application sharedApplication];
  [v7 handleNavigationIntent:v8 completion:0];
}

- (void)handleNavigationIntent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__TabDocument_handleNavigationIntent_completion___block_invoke;
  v14[3] = &unk_2781DA8B8;
  objc_copyWeak(&v17, &location);
  v15 = v6;
  v16 = v7;
  v8 = v7;
  v9 = v6;
  v10 = _Block_copy(v14);
  v10[2](v10, v11, v12, v13);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __49__TabDocument_handleNavigationIntent_completion___block_invoke(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [(TabDocument *)WeakRetained _handleNavigationIntent:a1[5] completion:?];
}

- (void)_handleNavigationIntent:(void *)a3 completion:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_41;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 992));
  v8 = [WeakRetained tabController];
  v9 = [v8 activeTabDocument];

  if (v9 == a1)
  {
    [a1 setActive:1];
  }

  else
  {
    [a1 unhibernate];
  }

  v10 = WBS_LOG_CHANNEL_PREFIXPageLoading();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v5 privacyPreservingDescription];
    v12 = *(a1 + 1064);
    v25 = 134218498;
    v26 = a1;
    v27 = 2114;
    v28 = v11;
    v29 = 2048;
    v30 = v12;
    _os_log_impl(&dword_215819000, v10, OS_LOG_TYPE_DEFAULT, "TabDocument %p: loading intent %{public}@, web view: %p", &v25, 0x20u);
  }

  if (![v5 policy] && objc_msgSend(a1, "isActive"))
  {
    [WeakRetained setFavoritesState:0 animated:1];
  }

  *(a1 + 776) = [v5 provenance];
  *(a1 + 786) = [v5 type] == 10;
  v13 = *(a1 + 978);
  *(a1 + 978) = 0;
  v14 = [v5 highlight];
  v15 = *(a1 + 336);
  *(a1 + 336) = v14;

  if ([v5 policy])
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = [v5 isChildIntent] ^ 1;
  }

  *(a1 + 744) = v16;
  *(a1 + 745) = 0;
  v17 = [v5 type];
  v18 = 0;
  if (v17 > 5)
  {
    if (v17 <= 7)
    {
      if (v17 != 6)
      {
        v19 = [v5 webClip];
        v20 = [(TabDocument *)a1 _loadWebClip:v19];
        goto LABEL_34;
      }
    }

    else
    {
      if (v17 == 8)
      {
        v18 = [(TabDocument *)a1 _loadServiceWorkerOpenedURLIntent:v5];
        goto LABEL_38;
      }

      if (v17 == 9)
      {
        v23 = [v5 externalURLSourceApplicationIsSpotlight];
        v24 = v23;
        [*(a1 + 1064) setObscuringContents:v23 & v13];
        *(a1 + 978) = v24;
        v19 = [v5 URL];
        [(TabDocument *)a1 _loadExternalURL:v19 withIntent:v5];
        goto LABEL_36;
      }

      if (v17 != 10)
      {
        goto LABEL_38;
      }
    }

    v19 = [v5 URL];
    v21 = [a1 loadURL:v19 userDriven:1];
    v18 = v21 != 0;

LABEL_37:
    goto LABEL_38;
  }

  if (v17 <= 1)
  {
    if (!v17)
    {
      v19 = [v5 bookmark];
      v20 = [(TabDocument *)a1 _loadBookmark:v19];
      goto LABEL_34;
    }

    if (v17 != 1)
    {
      goto LABEL_38;
    }

    v19 = [v5 cloudTab];
    [a1 loadCloudTab:v19];
LABEL_36:
    v18 = 1;
    goto LABEL_37;
  }

  switch(v17)
  {
    case 2:
      v19 = [v5 URL];
      v18 = 1;
      v22 = [a1 loadURL:v19 userDriven:1];
      goto LABEL_37;
    case 4:
      v19 = [v5 text];
      v20 = [(TabDocument *)a1 _loadUserTypedAddress:v19];
      goto LABEL_34;
    case 5:
      v19 = [v5 text];
      v20 = [(TabDocument *)a1 _loadSearchResultForQuery:v19];
LABEL_34:
      v18 = v20;
      goto LABEL_37;
  }

LABEL_38:
  if (v6)
  {
    v6[2](v6, v18 & ~*(a1 + 745) & 1);
  }

LABEL_41:
}

- (uint64_t)_loadBookmark:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [(WebBookmark *)v3 safari_bestCurrentURL];
    if ([v4 isReadingListItem])
    {
      v6 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
      v7 = [v6 isNetworkReachable];

      if (v5)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      if ((v8 & 1) == 0)
      {
        v10 = *(a1 + 1304);
        v11 = _WBSLocalizedString();
        v12 = _WBSLocalizedString();
        [v10 addAlertWithTitle:v11 bodyText:v12];

        goto LABEL_12;
      }

      if (v5)
      {
        v9 = [MEMORY[0x277D499B8] sharedLogger];
        [v9 didOpenReadingListItemWithReachableNetwork:v7 isContinuousTransition:0];
      }
    }

    if (([(TabDocument *)a1 _trySwitchingToPinnedTabOnNavigationToURL:v5]& 1) == 0)
    {
      [(TabDocument *)a1 _loadURL:v5 fromBookmark:v4];
      a1 = 1;
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    a1 = 0;
    goto LABEL_13;
  }

LABEL_14:

  return a1;
}

- (uint64_t)_loadUserTypedAddress:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if ((gTestFileURLs & 1) == 0)
    {
      v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
      v5 = [v4 isFileURL];

      if (v5)
      {
        [*(a1 + 1304) addDisallowedFileURLAlert];
LABEL_7:
        a1 = 0;
        goto LABEL_8;
      }
    }

    if ([v3 safari_isJavaScriptURLString])
    {
      [*(a1 + 1304) addDisallowedUseOfJavaScriptAlert];
      goto LABEL_7;
    }

    [a1 setReadingListBookmark:0];
    *(a1 + 955) = 0;
    *(a1 + 709) = 0;
    v7 = WBSUnifiedFieldInputTypeForString();
    if ((v7 - 1) >= 2)
    {
      if (!v7 || v7 == 3)
      {
        a1 = [(TabDocument *)a1 _loadSearchResultForQuery:v3];
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v8 = [MEMORY[0x277CBEBC0] URLWithString:v3];
    v9 = [v8 safari_isSafariWebExtensionURL];
    v10 = [a1 webView];
    v11 = [v10 _committedURL];
    v12 = [v11 safari_isSafariWebExtensionURL];

    if (!(v9 & 1 | ((v12 & 1) == 0)))
    {
      [TabDocument _destroyDocumentViewAllowingDeferral:a1];
      v13 = [a1 createWebViewConfiguration];
      [(TabDocument *)a1 _createDocumentViewWithConfiguration:v13];
    }

    -[TabDocument _updateFallbackURLsForUserTypedAddress:userExplicitlyRequestedAsHTTP:](a1, v3, [v8 safari_hasScheme:@"http"]);
    a1 = [(TabDocument *)a1 _loadNextFallbackURLWithWebClip:0 navigation:?];
  }

LABEL_8:

  return a1;
}

- (uint64_t)_loadSearchResultForQuery:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 124);
    [WeakRetained updateSearchEngineIfNeeded];
    v5 = [v3 _web_stringByTrimmingWhitespace];

    v6 = +[SearchQueryBuilder searchQueryBuilderWithQuery:forPrivateBrowsing:](SearchQueryBuilder, "searchQueryBuilderWithQuery:forPrivateBrowsing:", v5, [a1 isPrivateBrowsingEnabled]);
    v7 = [v6 searchURL];
    if (v7 && ([(TabDocument *)a1 _trySwitchingToPinnedTabOnNavigationToURL:v7]& 1) == 0)
    {
      v8 = 1;
      v9 = [a1 loadURL:v7 userDriven:1];
    }

    else
    {
      v8 = 0;
    }

    v10 = [WeakRetained rootViewController];
    v11 = [v10 tipsCoordinator];
    [v11 invalidateWebSearchTip];

    v3 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_loadWebClip:(id *)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = [v3 pageURL];
    if ([v4 fullScreen])
    {
      v7 = [a1[170] uuid];
      v8 = [v4 uuid];
      v9 = WBSIsEqual();

      if (v9)
      {
        if ([a1 inWebClipScope])
        {
          v5 = 1;
LABEL_9:

          goto LABEL_10;
        }
      }

      else
      {
        [(TabDocument *)a1 setWebClip:v4];
      }
    }

    v10 = [a1 loadURL:v6 userDriven:1];
    v5 = v10 != 0;

    goto LABEL_9;
  }

LABEL_10:

  return v5;
}

- (BOOL)_loadServiceWorkerOpenedURLIntent:(_BOOL8)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    [v3 setUsedTabDocument:a1];
    v5 = [v4 URL];
    v6 = [a1 loadURL:v5 userDriven:1];
    a1 = v6 != 0;
  }

  return a1;
}

- (void)_loadExternalURL:(void *)a3 withIntent:
{
  v17 = a2;
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 externalOptions];
    v8 = +[TabDocument urlForExternalURL:forPrivateBrowsing:](TabDocument, "urlForExternalURL:forPrivateBrowsing:", v17, [a1 isPrivateBrowsingEnabled]);
    objc_storeStrong((a1 + 1296), v8);
    v9 = [v6 eventAttribution];
    v10 = [(TabDocument *)a1 _loadURL:v8 userDriven:1 eventAttribution:v9 skipSyncableTabUpdates:0];

    objc_storeStrong((a1 + 1368), v8);
    v11 = [v7 safari_stringForKey:*MEMORY[0x277D76690]];
    if ([v11 isEqualToString:@"com.apple.SafariViewService"])
    {
      *(a1 + 957) = [v7 safari_BOOLForKey:*MEMORY[0x277D290C0]];
      v12 = [v7 safari_stringForKey:*MEMORY[0x277D290D0]];
      v13 = *(a1 + 1424);
      *(a1 + 1424) = v12;

      v14 = [v7 safari_dataForKey:*MEMORY[0x277D290C8]];
      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x277CE38A0]) initWithData:v14];
        if (v15)
        {
          [a1 restoreSessionState:v15 andNavigate:1 fromSafariViewService:1];
        }
      }
    }

    else
    {
      objc_storeStrong((a1 + 1424), v11);
      v16 = v11;
      v14 = *(a1 + 1216);
      *(a1 + 1216) = v16;
    }
  }
}

- (void)validateWebClip
{
  if (self->_webClip)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = MEMORY[0x277D75D70];
      v4 = [(UIWebClip *)self->_webClip identifier];
      LOBYTE(v3) = [v3 webClipWithIdentifierExists:v4];

      if ((v3 & 1) == 0)
      {

        [(TabDocument *)self setWebClip:?];
      }
    }
  }
}

- (id)loadURL:(id)a3 userDriven:(BOOL)a4
{
  v4 = [(TabDocument *)self loadURL:a3 userDriven:a4 skipSyncableTabUpdates:0];

  return v4;
}

- (id)loadURL:(uint64_t)a3 userDriven:(char)a4 skipSyncableTabUpdates:
{
  v7 = a2;
  if (a1)
  {
    v8 = [(TabDocument *)a1 _loadURL:v7 userDriven:a3 eventAttribution:0 skipSyncableTabUpdates:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_loadURL:(uint64_t)a3 userDriven:(void *)a4 eventAttribution:(char)a5 skipSyncableTabUpdates:
{
  v9 = a2;
  v10 = a4;
  if (a1)
  {
    [a1 setReadingListBookmark:0];
    v11 = [(TabDocument *)a1 _loadURLInternal:v9 userDriven:a3 eventAttribution:v10 skipSyncableTabUpdates:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)loadURL:(id)a3 title:(id)a4 skipSyncableTabUpdates:(BOOL)a5
{
  v10 = a3;
  v8 = a4;
  if (self->_active && !self->_hibernated)
  {
    v9 = [(TabDocument *)self loadURL:v10 userDriven:0 skipSyncableTabUpdates:a5];
  }

  else
  {
    self->_skipSyncableTabUpdates = a5;
    [(TabDocument *)self _setDeferredNavigationURL:v10 title:v8];
  }
}

- (void)_setDeferredNavigationURL:(void *)a3 title:
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 992));
    v9 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = 134218499;
      v16 = a1;
      v17 = 2160;
      v18 = 1752392040;
      v19 = 2117;
      v20 = v6;
      _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_INFO, "Store deferred navigation: (document: %p) %{sensitive, mask.hash}@", &v15, 0x20u);
    }

    *(a1 + 824) = 1;
    objc_storeStrong((a1 + 832), a2);
    v10 = [v7 copy];
    v11 = *(a1 + 840);
    *(a1 + 840) = v10;

    *(a1 + 984) = 0;
    v12 = [WeakRetained tabCollectionViewProvider];
    v13 = [a1 uuid];
    [v12 removeSnapshotForTabWithUUID:v13];

    [*(a1 + 168) setTitle:v7];
    [*(a1 + 168) setURL:v6];
    [a1 updateTabTitle];
    [a1 updateTabIcon];
    v14 = [WeakRetained tabController];
    [v14 updateWBTabWithTab:a1 notify:0 persist:0];

    [a1 hibernate];
  }
}

- (id)_loadURLInternal:(uint64_t)a3 userDriven:(void *)a4 eventAttribution:(char)a5 skipSyncableTabUpdates:
{
  v9 = a2;
  v10 = a4;
  if (a1)
  {
    *(a1 + 824) = 0;
    v11 = *(a1 + 832);
    *(a1 + 832) = 0;

    v12 = [MEMORY[0x277CBABA0] safari_nonAppInitiatedRequestWithURL:v9];
    if (*(a1 + 1288))
    {
      [a1 clearPageLoadStatistics];
    }

    [a1 setSuppressingProgressAnimationForNavigationGesture:0];
    v13 = *(a1 + 312);
    *(a1 + 312) = 0;

    v14 = [MEMORY[0x277D75D70] webClipWithURL:v9];
    if (v14)
    {
      v15 = [TabDocument loadWebClip:a1 userDriven:v14];
    }

    else
    {
      if ([a1 shouldSpawnNewTabOnNavigationFromPinnedTabWithDestinationURL:v9])
      {
        v16 = [MEMORY[0x277D28F40] builder];
        [v16 setPrefersOpenInNewTabReusingExistingBlankTabIfPossible:1];
        v17 = [v16 navigationIntentWithURL:v9];
        [a1 dispatchNavigationIntent:v17];

        *(a1 + 745) = 1;
        a1 = 0;
LABEL_10:

        goto LABEL_11;
      }

      v15 = [(TabDocument *)a1 _loadRequest:v12 userDriven:a3 shouldOpenExternalURLs:*(a1 + 1296) != 0 eventAttribution:v10 skipSyncableTabUpdates:a5];
    }

    a1 = v15;
    goto LABEL_10;
  }

LABEL_11:

  return a1;
}

- (id)_loadURLInternal:(uint64_t)a3 userDriven:
{
  v5 = a2;
  if (a1)
  {
    v6 = [(TabDocument *)a1 _loadURLInternal:v5 userDriven:a3 eventAttribution:0 skipSyncableTabUpdates:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_BYTE)loadWebClip:(_BYTE *)a1 userDriven:(void *)a2
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = WBS_LOG_CHANNEL_PREFIXWebClips();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [v3 identifier];
        *buf = 138543618;
        v15 = v5;
        v16 = 2048;
        v17 = [v3 bundleVersion];
        _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_INFO, "Loading UIWebClip with identifier %{public}@'; version: %lu", buf, 0x16u);
      }
    }

    a1[709] = 0;
    a1[743] = 1;
    v6 = [v3 pageURL];
    v7 = [v6 absoluteString];

    [(TabDocument *)a1 _updateFallbackURLsForUserTypedAddress:v7 userExplicitlyRequestedAsHTTP:0];
    v13 = 0;
    v8 = [(TabDocument *)a1 _loadNextFallbackURLWithWebClip:v3 navigation:&v13];
    v9 = v13;
    v10 = v8 == 0;
    if (v8)
    {
      a1 = v9;
    }

    else
    {
      a1 = 0;
    }

    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  return a1;
}

- (uint64_t)_loadURL:(void *)a3 fromBookmark:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 address];
    v9 = [v8 safari_scriptIfJavaScriptURLString];

    if (v9)
    {
      [*(a1 + 1064) evaluateJavaScript:v9 completionHandler:0];
    }

    else
    {
      if (!v5)
      {
        a1 = 0;
        goto LABEL_5;
      }

      v11 = [(TabDocument *)a1 _loadURLInternal:v5 userDriven:1];
      if ([v7 isReadingListItem])
      {
        [a1 setReadingListBookmark:v7];
      }

      else
      {
        [a1 setReadingListBookmark:0];
        objc_storeStrong((a1 + 312), a3);
      }
    }

    a1 = 1;
LABEL_5:
  }

  return a1;
}

- (uint64_t)_trySwitchingToPinnedTabOnNavigationToURL:(uint64_t)a1
{
  v3 = a2;
  if (a1 && *(a1 + 744) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 992));
    v5 = [WeakRetained tabController];
    v6 = [v5 trySwitchingToPinnedTabOnNavigationToURL:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)loadCloudTab:(id)a3
{
  v6 = a3;
  v4 = [v6 url];
  v5 = [(TabDocument *)self loadURL:v4 userDriven:1];

  [(TabDocument *)self restoreScrollPositionWithCloudTab:v6];
}

- (void)restoreScrollPositionWithCloudTab:(id)a3
{
  v8 = a3;
  [(TabDocument *)self clearReaderScrollInformation];
  if ([v8 isShowingReader])
  {
    self->_shouldRestoreReader = 1;
    v4 = MEMORY[0x277CBEAC0];
    v5 = [v8 readerScrollPositionDictionary];
    v6 = [v4 dictionaryWithDictionary:v5];
    initialArticleScrollDictionaryForCloudTab = self->_initialArticleScrollDictionaryForCloudTab;
    self->_initialArticleScrollDictionaryForCloudTab = v6;
  }
}

- (void)goBackAllowingNewTabToSpawnIfNeeded:(BOOL)a3
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__TabDocument_goBackAllowingNewTabToSpawnIfNeeded___block_invoke;
  aBlock[3] = &unk_2781DA8E0;
  objc_copyWeak(&v6, &location);
  v7 = a3;
  v4 = _Block_copy(aBlock);
  v4[2](v4, 1);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __51__TabDocument_goBackAllowingNewTabToSpawnIfNeeded___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(TabDocument *)WeakRetained _goBackAllowingNewTabToSpawnIfNeeded:a2 shouldDismissReader:?];
}

- (void)_goBackAllowingNewTabToSpawnIfNeeded:(char)a3 shouldDismissReader:
{
  if (a1)
  {
    *(a1 + 712) = 1;
    *(a1 + 710) = a3;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __72__TabDocument__goBackAllowingNewTabToSpawnIfNeeded_shouldDismissReader___block_invoke;
    v3[3] = &unk_2781D6638;
    v3[4] = a1;
    v4 = a2;
    [(TabDocument *)a1 _terminateWebProcessIfNeededAndShowCrashBanner:v3 thenDo:?];
  }
}

void __72__TabDocument__goBackAllowingNewTabToSpawnIfNeeded_shouldDismissReader___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1064) backForwardList];
  v11 = [v2 backItem];

  v3 = [v11 URL];
  v4 = [v3 absoluteString];
  v5 = [v4 safari_isJavaScriptURLString];

  if (v5)
  {
    [*(*(a1 + 32) + 1304) addDisallowedUseOfJavaScriptAlert];
    goto LABEL_12;
  }

  if (*(a1 + 40) == 1)
  {
    v6 = [MEMORY[0x277D28F40] builder];
    v7 = [v6 navigationIntentWithHistoryURL:v3];
    v8 = [v11 safari_highlight];
    [v7 setHighlight:v8];

    if ([v7 policy])
    {
      [*(a1 + 32) dispatchNavigationIntent:v7];
LABEL_11:

      goto LABEL_12;
    }
  }

  [*(*(a1 + 32) + 168) goBack];
  v9 = [*(a1 + 32) canGoBackToParentTab];
  v10 = *(a1 + 32);
  if (v9)
  {
    [v10 goBackToParentTab];
    goto LABEL_12;
  }

  if ([v10 canGoBack])
  {
    v6 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v7 = [v6 bookmarkWithID:-[WKBackForwardListItem safari_bookmarkID](v11)];
    [*(a1 + 32) setReadingListBookmark:v7];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)goBackToParentTab
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentShouldCloseAndSwitchToParentTab:self];
}

- (void)goForwardAllowingNewTabToSpawnIfNeeded:(BOOL)a3
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__TabDocument_goForwardAllowingNewTabToSpawnIfNeeded___block_invoke;
  aBlock[3] = &unk_2781DA8E0;
  objc_copyWeak(&v6, &location);
  v7 = a3;
  v4 = _Block_copy(aBlock);
  v4[2](v4, 1);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __54__TabDocument_goForwardAllowingNewTabToSpawnIfNeeded___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(TabDocument *)WeakRetained _goForwardAllowingNewTabToSpawnIfNeeded:a2 shouldDismissReader:?];
}

- (void)_goForwardAllowingNewTabToSpawnIfNeeded:(char)a3 shouldDismissReader:
{
  if (a1)
  {
    *(a1 + 712) = 1;
    *(a1 + 710) = a3;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __75__TabDocument__goForwardAllowingNewTabToSpawnIfNeeded_shouldDismissReader___block_invoke;
    v3[3] = &unk_2781D6638;
    v3[4] = a1;
    v4 = a2;
    [(TabDocument *)a1 _terminateWebProcessIfNeededAndShowCrashBanner:v3 thenDo:?];
  }
}

void __75__TabDocument__goForwardAllowingNewTabToSpawnIfNeeded_shouldDismissReader___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1064) backForwardList];
  v9 = [v2 forwardItem];

  v3 = [v9 URL];
  v4 = [v3 absoluteString];
  v5 = [v4 safari_isJavaScriptURLString];

  if (v5)
  {
    [*(*(a1 + 32) + 1304) addDisallowedUseOfJavaScriptAlert];
    goto LABEL_10;
  }

  if (*(a1 + 40) == 1)
  {
    v6 = [MEMORY[0x277D28F40] builder];
    v7 = [v6 navigationIntentWithHistoryURL:v3];
    v8 = [v9 safari_highlight];
    [v7 setHighlight:v8];

    if ([v7 policy])
    {
      [*(a1 + 32) dispatchNavigationIntent:v7];
      goto LABEL_9;
    }
  }

  [*(*(a1 + 32) + 168) goForward];
  if (![*(a1 + 32) canGoForward])
  {
    goto LABEL_10;
  }

  v6 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v7 = [v6 bookmarkWithID:-[WKBackForwardListItem safari_bookmarkID](v9)];
  [*(a1 + 32) setReadingListBookmark:v7];
LABEL_9:

LABEL_10:
}

- (uint64_t)_suppressReloadToPreventLoadingJavaScriptIfNecessary
{
  if (result)
  {
    v1 = result;
    v2 = [result expectedOrCurrentURL];
    v3 = [v2 absoluteString];
    v4 = [v3 safari_isJavaScriptURLString];

    if (v4)
    {
      [*(v1 + 1304) addDisallowedUseOfJavaScriptAlert];
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_reloadFromOrigin:(uint64_t)a1
{
  if (a1 && ([(TabDocument *)a1 _suppressReloadToPreventLoadingJavaScriptIfNecessary]& 1) == 0)
  {
    if ([*(a1 + 304) isScribbling])
    {
      [*(a1 + 304) endScribblingAndSaveChanges:0];
    }

    *(a1 + 1224) = 4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__TabDocument__reloadFromOrigin___block_invoke;
    v6[3] = &unk_2781D6638;
    v6[4] = a1;
    v7 = a2;
    [(TabDocument *)a1 _terminateWebProcessIfNeededAndShowCrashBanner:v6 thenDo:?];
    v4 = [a1 expectedOrCurrentURL];
    v5 = *(a1 + 920);
    *(a1 + 920) = v4;
  }
}

- (void)reloadUserInitiated
{
  if (([(TabDocument *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary]& 1) == 0)
  {
    [(TabDocument *)self reload];
    [(TabDocument *)&self->super.isa _didUserInitiatedReload];
    self->_isNavigatingViaNormalReload = 1;
  }
}

- (void)_didUserInitiatedReload
{
  if (a1)
  {
    v2 = [MEMORY[0x277CBEAA8] date];
    [a1[138] setLastReloadDate:v2];

    v3 = [a1 expectedOrCurrentURL];
    v4 = [v3 safari_isSafariWebExtensionURL];

    if ((v4 & 1) == 0)
    {
      [(TabDocument *)a1 _hidePrivateBrowsingPrivacyProtectionsBannerIfNecessary];

      [(TabDocument *)a1 _showPrivateBrowsingPrivacyProtectionsBannerForReload];
    }
  }
}

- (void)reloadFromOriginUserInitiated
{
  if (([(TabDocument *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary]& 1) == 0)
  {
    [(TabDocument *)self reloadFromOrigin];
    [(TabDocument *)&self->super.isa _didUserInitiatedReload];
    self->_isNavigatingViaReloadFromOrigin = 1;
  }
}

- (void)_hidePrivateBrowsingPrivacyProtectionsBannerIfNecessary
{
  if (a1 && *(a1 + 1208))
  {
    *(a1 + 376) = 0;
    if ([a1 isActive])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 992));
      [WeakRetained showPrivateBrowsingPrivacyProtectionsBanner:0];
    }

    v3 = *(a1 + 1208);
    *(a1 + 1208) = 0;
  }
}

- (void)_showPrivateBrowsingPrivacyProtectionsBannerForReload
{
  if (a1)
  {
    v2 = [MEMORY[0x277CBEAA8] now];
    [v2 timeIntervalSinceDate:*(a1 + 384)];
    v4 = v3;

    if (v4 > 60.0)
    {
      *(a1 + 376) = 0;
      return;
    }

    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [v5 safari_enableAdvancedPrivacyProtections:{objc_msgSend(a1, "isPrivateBrowsingEnabled")}];

    if (*(a1 + 376) == 1)
    {
      v7 = *(a1 + 377);
      if (!v6)
      {
        return;
      }
    }

    else
    {
      v7 = 1;
      if (!v6)
      {
        return;
      }
    }

    if (!(v7 & 1 | ((*(a1 + 949) & 1) == 0)))
    {
      objc_initWeak(&location, a1);
      v8 = objc_alloc_init(MEMORY[0x277D28D10]);
      v9 = *(a1 + 1208);
      *(a1 + 1208) = v8;

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __68__TabDocument__showPrivateBrowsingPrivacyProtectionsBannerForReload__block_invoke;
      v13[3] = &unk_2781D67C8;
      objc_copyWeak(&v14, &location);
      [*(a1 + 1208) setReducePrivacyProtectionsActionHandler:v13];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __68__TabDocument__showPrivateBrowsingPrivacyProtectionsBannerForReload__block_invoke_2;
      v11[3] = &unk_2781D67C8;
      objc_copyWeak(&v12, &location);
      [*(a1 + 1208) setDismissButtonHandler:v11];
      WeakRetained = objc_loadWeakRetained((a1 + 992));
      [WeakRetained showPrivateBrowsingPrivacyProtectionsBanner:*(a1 + 1208)];

      *(a1 + 377) = 1;
      objc_destroyWeak(&v12);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

- (BOOL)isPageReloaded
{
  v2 = self;
  v3 = [(TabDocument *)self expectedOrCurrentURL];
  LOBYTE(v2) = [v3 isEqual:v2->_lastReloadedURL];

  return v2;
}

- (void)setPageZoomFactor:(double)a3
{
  if (([(SFScribbleController *)self->_sfScribbleController isScribbling]& 1) == 0)
  {
    v7 = [(TabDocument *)self webView];
    [v7 _viewScale];
    v6 = v5;

    if (v6 < a3)
    {
      [(TabDocument *)self webViewDidIncreaseZoom];
    }

    v8 = [(TabDocument *)self webView];
    [v8 _setViewScale:a3];
  }
}

- (double)pageZoomFactor
{
  v2 = [(TabDocument *)self webView];
  [v2 _viewScale];
  v4 = v3;

  return v4;
}

- (void)_updatePageZoomWithPreference
{
  if (val)
  {
    objc_initWeak(&location, val);
    WeakRetained = objc_loadWeakRetained(val + 156);
    v3 = [WeakRetained pageZoomPreferenceManagerForTabDocument:val];
    v4 = [val URLForPerSitePreferences];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__TabDocument__updatePageZoomWithPreference__block_invoke;
    v5[3] = &unk_2781DA930;
    objc_copyWeak(&v6, &location);
    [v3 getPageZoomFactorForURL:v4 usingBlock:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __44__TabDocument__updatePageZoomWithPreference__block_invoke(uint64_t a1, double a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__TabDocument__updatePageZoomWithPreference__block_invoke_2;
  v3[3] = &unk_2781DA908;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = *&a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(v4);
}

void __44__TabDocument__updatePageZoomWithPreference__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v5 = WeakRetained;
  v4 = [WeakRetained webView];
  [v4 _setViewScale:v3];
}

- (void)increasePageZoomSetting
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained pageZoomPreferenceManagerForTabDocument:self];
  v5 = [(TabDocument *)self URLForPerSitePreferences];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__TabDocument_increasePageZoomSetting__block_invoke;
  v6[3] = &unk_2781DA958;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  [v4 zoomInOnURL:v5 completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __38__TabDocument_increasePageZoomSetting__block_invoke(uint64_t a1, int a2, double a3)
{
  if (a2)
  {
    v5 = [MEMORY[0x277D499B8] sharedLogger];
    [v5 didModifyPerSitePreferencesWithPreferenceIdentifier:*MEMORY[0x277D4A6D8] modificationLevel:1 type:0 method:3];

    [*(a1 + 32) webViewDidIncreaseZoom];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__TabDocument_increasePageZoomSetting__block_invoke_2;
    v6[3] = &unk_2781DA908;
    objc_copyWeak(v7, (a1 + 40));
    v7[1] = *&a3;
    dispatch_async(MEMORY[0x277D85CD0], v6);
    objc_destroyWeak(v7);
  }
}

void __38__TabDocument_increasePageZoomSetting__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained webView];
  [v2 _setViewScale:v1];
}

- (void)decreasePageZoomSetting
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained pageZoomPreferenceManagerForTabDocument:self];
  v5 = [(TabDocument *)self URLForPerSitePreferences];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__TabDocument_decreasePageZoomSetting__block_invoke;
  v6[3] = &unk_2781DA980;
  objc_copyWeak(&v7, &location);
  [v4 zoomOutOnURL:v5 completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __38__TabDocument_decreasePageZoomSetting__block_invoke(uint64_t a1, int a2, double a3)
{
  if (a2)
  {
    v5 = [MEMORY[0x277D499B8] sharedLogger];
    [v5 didModifyPerSitePreferencesWithPreferenceIdentifier:*MEMORY[0x277D4A6D8] modificationLevel:1 type:0 method:3];

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__TabDocument_decreasePageZoomSetting__block_invoke_2;
    v6[3] = &unk_2781DA908;
    objc_copyWeak(v7, (a1 + 32));
    v7[1] = *&a3;
    dispatch_async(MEMORY[0x277D85CD0], v6);
    objc_destroyWeak(v7);
  }
}

void __38__TabDocument_decreasePageZoomSetting__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained webView];
  [v2 _setViewScale:v1];
}

- (void)resetPageZoomSetting
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained pageZoomPreferenceManagerForTabDocument:self];
  v5 = [(TabDocument *)self URLForPerSitePreferences];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__TabDocument_resetPageZoomSetting__block_invoke;
  v6[3] = &unk_2781DA980;
  objc_copyWeak(&v7, &location);
  [v4 resetZoomLevelOnURL:v5 completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __35__TabDocument_resetPageZoomSetting__block_invoke(uint64_t a1, int a2, double a3)
{
  if (a2)
  {
    v5 = [MEMORY[0x277D499B8] sharedLogger];
    [v5 didModifyPerSitePreferencesWithPreferenceIdentifier:*MEMORY[0x277D4A6D8] modificationLevel:1 type:1 method:3];

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__TabDocument_resetPageZoomSetting__block_invoke_2;
    v6[3] = &unk_2781DA908;
    objc_copyWeak(v7, (a1 + 32));
    v7[1] = *&a3;
    dispatch_async(MEMORY[0x277D85CD0], v6);
    objc_destroyWeak(v7);
  }
}

void __35__TabDocument_resetPageZoomSetting__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v3 = [WeakRetained webView];
    [v3 _setViewScale:*(a1 + 40)];
    v4 = [v11 view];
    [v3 _minimumEffectiveDeviceWidth];
    if (v5 == 0.0)
    {
      v9 = 1.0;
    }

    else
    {
      [v4 bounds];
      v7 = v6;
      [v3 _minimumEffectiveDeviceWidth];
      v9 = v7 / v8;
    }

    v10 = [v3 scrollView];
    [v10 setZoomScale:v9];

    WeakRetained = v11;
  }
}

- (void)reloadEnablingDowngradedPrivateRelay:(BOOL)a3
{
  if (([(TabDocument *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary]& 1) == 0)
  {
    if (!a3)
    {
      v5 = [MEMORY[0x277D4A008] sharedManager];
      v6 = [(TabDocument *)self expectedOrCurrentURL];
      [v5 clearPrivateRelayFailClosedExceptionIfNecessaryForURL:v6];
    }

    [(TabDocument *)self _disablePrivateRelaySetting:a3];

    [(TabDocument *)self _reloadFromOrigin:?];
  }
}

- (void)reloadDisablingContentBlockers:(BOOL)a3
{
  if (([(TabDocument *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary]& 1) == 0)
  {
    [(SFScribbleController *)self->_sfScribbleController reloadWithoutScribbleElements];
    v5 = [(TabDocument *)self URL];
    urlToReloadForcingContentBlockers = self->_urlToReloadForcingContentBlockers;
    self->_urlToReloadForcingContentBlockers = v5;

    self->_disableContentBlockersWhenReloading = a3;

    [(TabDocument *)self _reloadFromOrigin:?];
  }
}

- (BOOL)supportsAdvancedPrivacyProtectionsForURL:(id)a3
{
  v4 = a3;
  if ([v4 safari_isSafariWebExtensionURL])
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v5 = [v6 safari_enableAdvancedPrivacyProtections:{-[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}];
  }

  return v5;
}

- (void)reloadDisablingAdvancedPrivateBrowsingPrivacyProtections:(BOOL)a3
{
  if (([(TabDocument *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary]& 1) == 0)
  {
    v5 = [(TabDocument *)self URL];
    urlToReloadForAdvancedPrivateBrowsingPrivacyProtections = self->_urlToReloadForAdvancedPrivateBrowsingPrivacyProtections;
    self->_urlToReloadForAdvancedPrivateBrowsingPrivacyProtections = v5;

    self->_disableAdvancedPrivateBrowsingPrivacyProtectionsWhenReloading = a3;

    [(TabDocument *)self _reloadFromOrigin:?];
  }
}

void __68__TabDocument__showPrivateBrowsingPrivacyProtectionsBannerForReload__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained reloadDisablingAdvancedPrivateBrowsingPrivacyProtections:1];
    [(TabDocument *)WeakRetained _hidePrivateBrowsingPrivacyProtectionsBannerIfNecessary];
  }
}

void __68__TabDocument__showPrivateBrowsingPrivacyProtectionsBannerForReload__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [(TabDocument *)WeakRetained _hidePrivateBrowsingPrivacyProtectionsBannerIfNecessary];
  }
}

- (void)_showPerSitePreferencesPopoverViewControllerIfPossible
{
  if (a1)
  {
    v2 = [a1 URLForPerSitePreferences];
    v9 = [v2 safari_userVisibleHostWithoutWWWSubdomain];

    if ([v9 length])
    {
      WeakRetained = objc_loadWeakRetained(a1 + 124);
      v4 = objc_alloc(MEMORY[0x277CDB848]);
      v5 = [a1 perSitePreferencesVendor];
      v6 = [v4 initWithBrowserDocument:a1 perSitePreferencesVendor:v5];

      v7 = [v6 view];
      [v7 setAccessibilityIdentifier:@"PerSitePreferencesPopoverView"];

      v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
      [v8 setModalPresentationStyle:2];
      [WeakRetained _presentModalViewController:v8 fromBarItem:*MEMORY[0x277D291C0] completion:0];
    }
  }
}

- (BOOL)privacyReportShouldSeparateBlockedTrackers
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  LOBYTE(self) = [v3 safari_enableAdvancedPrivacyProtections:{-[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}];

  return self;
}

- (BOOL)browserHasMultipleProfiles
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained hasMultipleProfiles];

  return v3;
}

- (NSSet)allBrowserProfileIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained tabGroupManager];
  v4 = [v3 allProfileIdentifiers];

  return v4;
}

- (NSSet)allBrowserHistories
{
  v2 = +[Application sharedApplication];
  v3 = [v2 historiesForProfiles];

  return v3;
}

- (BOOL)canHideToolbar
{
  v2 = [MEMORY[0x277D28C70] sharedFeatureManager];
  v3 = [v2 tabDocumentCanHideToolbar];

  return v3;
}

- (NSURL)URLForPerSitePreferences
{
  v3 = [(TabDocument *)self committedURL];
  v4 = [(TabDocument *)self customUserVisibleStringForReadingListBookmarkURL:v3];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];

    v3 = v5;
  }

  if (!v3 || ([v3 safari_isHTTPFamilyURL] & 1) == 0 && -[TabDocument isShowingErrorPage](self, "isShowingErrorPage"))
  {
    v6 = [(TabDocument *)self URL];

    v3 = v6;
  }

  return v3;
}

- (SFScribbleController)sfScribbleController
{
  sfScribbleController = self->_sfScribbleController;
  if (!sfScribbleController)
  {
    v4 = [objc_alloc(MEMORY[0x277D28D38]) initWithWebView:self->_webView delegate:self];
    v5 = self->_sfScribbleController;
    self->_sfScribbleController = v4;

    sfScribbleController = self->_sfScribbleController;
  }

  return sfScribbleController;
}

- (void)setReadingListBookmark:(id)a3
{
  v10 = a3;
  v5 = [(WebBookmark *)self->_readingListBookmark identifier];
  p_readingListBookmark = &self->_readingListBookmark;
  if (v5 != [v10 identifier] || (-[WebBookmark dateLastViewed](*p_readingListBookmark, "dateLastViewed"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "dateLastViewed"), v8 = objc_claimAutoreleasedReturnValue(), v9 = (v7 == 0) ^ (v8 != 0), v8, v7, (v9 & 1) == 0))
  {
    objc_storeStrong(&self->_readingListBookmark, a3);
    [(TabDocument *)self setShowingContinuous:[(WebBookmark *)*p_readingListBookmark isReadingListItem]];
  }
}

- (void)setShowingContinuous:(BOOL)a3
{
  if (self->_showingContinuous != a3)
  {
    self->_showingContinuous = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained tabDocumentDidUpdateShowingContinuous:self];
  }
}

- (id)backListMenuWithLimit:(int)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = [(TabDocument *)self _backListWithLimit:a3];
  if (-[TabDocument canGoBackToParentTab](self, "canGoBackToParentTab") && [v4 count] == 1)
  {
    objc_initWeak(&location, self);
    v5 = [v4 firstObject];
    v6 = MEMORY[0x277CCACA8];
    v7 = _WBSLocalizedString();
    v8 = [v5 title];
    v9 = [v6 stringWithFormat:v7, v8];

    v10 = MEMORY[0x277D750C8];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __37__TabDocument_backListMenuWithLimit___block_invoke;
    v17[3] = &unk_2781D6528;
    objc_copyWeak(&v18, &location);
    v11 = [v10 actionWithTitle:v9 image:0 identifier:0 handler:v17];
    v12 = [(WKBackForwardListItem *)v5 safari_urlForDisplay];
    v13 = [v12 safari_stringForListDisplay];
    [v11 setSubtitle:v13];

    v20[0] = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __37__TabDocument_backListMenuWithLimit___block_invoke_2;
    v16[3] = &unk_2781DA9A8;
    v16[4] = self;
    v14 = [v4 safari_mapAndFilterObjectsWithOptions:2 usingBlock:v16];
  }

  return v14;
}

- (id)_backListWithLimit:(uint64_t)a1
{
  if (a1)
  {
    v3 = [*(a1 + 1064) backForwardList];
    v4 = [v3 backList];

    v5 = [v4 count];
    if (v5 <= a2)
    {
      v6 = v4;
    }

    else
    {
      v6 = [v4 subarrayWithRange:{v5 - a2, a2}];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __37__TabDocument_backListMenuWithLimit___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained goBackAllowingNewTabToSpawnIfNeeded:1];
}

id __37__TabDocument_backListMenuWithLimit___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [(TabDocument *)*(a1 + 32) _menuElementForBackForwardListItem:a2];
  [v2 setAccessibilityIdentifier:@"BackListMenuItem"];

  return v2;
}

- (id)_menuElementForBackForwardListItem:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = MEMORY[0x277D750C8];
    v5 = [v3 title];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__TabDocument__menuElementForBackForwardListItem___block_invoke;
    v19[3] = &unk_2781DA9F8;
    objc_copyWeak(&v21, &location);
    v6 = v3;
    v20 = v6;
    v7 = [v4 actionWithTitle:v5 image:0 identifier:0 handler:v19];

    v8 = [(WKBackForwardListItem *)v6 safari_urlForDisplay];
    v9 = [v8 safari_stringForListDisplay];
    [v7 setSubtitle:v9];

    v10 = [v6 URL];
    LODWORD(v9) = [v10 safari_isSafariWebExtensionURL];

    if (v9)
    {
      v11 = [a1 webExtensionsController];
      v12 = [v6 URL];
      v13 = [v12 host];
      v14 = [v11 webExtensionForBaseURIHost:v13];

      v15 = [v14 displayName];
      v16 = [v6 title];
      if ([v16 isEqualToString:v15])
      {
        v17 = &stru_2827BF158;
      }

      else
      {
        v17 = v15;
      }

      [v7 setSubtitle:v17];
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)forwardListMenuWithLimit:(int)a3
{
  v4 = [(TabDocument *)self _forwardListWithLimit:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__TabDocument_forwardListMenuWithLimit___block_invoke;
  v7[3] = &unk_2781DA9D0;
  v7[4] = self;
  v5 = [v4 safari_mapObjectsUsingBlock:v7];

  return v5;
}

- (id)_forwardListWithLimit:(uint64_t)a1
{
  if (a1)
  {
    v3 = [*(a1 + 1064) backForwardList];
    v4 = [v3 forwardList];

    if ([v4 count] <= a2)
    {
      v5 = v4;
    }

    else
    {
      v5 = [v4 subarrayWithRange:{0, a2}];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __40__TabDocument_forwardListMenuWithLimit___block_invoke(uint64_t a1, void *a2)
{
  v2 = [(TabDocument *)*(a1 + 32) _menuElementForBackForwardListItem:a2];
  [v2 setAccessibilityIdentifier:@"ForwardListMenuItem"];

  return v2;
}

void __50__TabDocument__menuElementForBackForwardListItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [MEMORY[0x277D28F40] builder];
    v4 = [*(a1 + 32) URL];
    v5 = [v3 navigationIntentWithURL:v4];

    v6 = [*(a1 + 32) safari_highlight];
    [v5 setHighlight:v6];

    if ([v5 policy])
    {
      [v7 dispatchNavigationIntent:v5];
    }

    else
    {
      [v7 goToBackForwardListItem:*(a1 + 32)];
    }

    WeakRetained = v7;
  }
}

- (void)_clearAppBannerIfNotCurrentStoreBannerDeferringRemoval:(uint64_t)a1
{
  if (a1)
  {
    [*(a1 + 368) invalidate];
    v4 = *(a1 + 368);
    *(a1 + 368) = 0;

    v5 = *(a1 + 360);
    if (v5 != *(a1 + 352))
    {
      *(a1 + 360) = 0;
    }

    v6 = *(a1 + 1200);
    if (v6 && v6 != *(a1 + 352))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 1248));
      v8 = WeakRetained;
      if ((*(a1 + 959) & 1) == 0 && ((a2 & 1) != 0 || (v12 = WeakRetained, v10 = [WeakRetained tabDocumentShouldDeferAppBannerRemoval:a1], v8 = v12, v10)))
      {
        *(a1 + 959) = 1;
      }

      else
      {
        v11 = v8;
        [v8 removeAppBannerFromTabDocument:a1 animated:0];
        v9 = *(a1 + 1200);
        *(a1 + 1200) = 0;

        v8 = v11;
      }
    }
  }
}

- (void)_setAppBannerWhenPainted:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v9 = v4;
    if (*(a1 + 716))
    {
      [*(a1 + 368) invalidate];
      v5 = *(a1 + 368);
      *(a1 + 368) = 0;

      v4 = v9;
      if (*(a1 + 1200) == v9)
      {
        goto LABEL_11;
      }

      if (*(a1 + 959) == 1)
      {
        [v9 setInitiallyBehindNavigationBar:0];
      }

      WeakRetained = objc_loadWeakRetained((a1 + 1248));
      v7 = WeakRetained;
      if (*(a1 + 1200))
      {
        [WeakRetained removeAppBannerFromTabDocument:a1 animated:0];
      }

      objc_storeStrong((a1 + 1200), a2);
      [v7 tabDocumentDidCompleteCheckForAppBanner:a1];
    }

    else
    {
      v8 = v4;
      v7 = *(a1 + 360);
      *(a1 + 360) = v8;
    }

    v4 = v9;
  }

LABEL_11:
}

- (void)_startAppBannerRemovalTimer
{
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = MEMORY[0x277CBEBB8];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __42__TabDocument__startAppBannerRemovalTimer__block_invoke;
    v9 = &unk_2781DA668;
    objc_copyWeak(&v10, &location);
    v3 = [v2 timerWithTimeInterval:0 repeats:&v6 block:2.5 + 0.3];
    v4 = *(val + 46);
    *(val + 46) = v3;

    v5 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v5 addTimer:*(val + 46) forMode:*MEMORY[0x277CBE738]];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __42__TabDocument__startAppBannerRemovalTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[46] invalidate];
    v2 = v4[46];
    v4[46] = 0;

    v3 = objc_loadWeakRetained(v4 + 156);
    [v3 removeAppBannerFromTabDocument:v4 animated:0];

    WeakRetained = v4;
  }
}

- (id)_startedLoadingResources
{
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained(result + 157);
    [WeakRetained didStartLoadingResource];

    result = v1[161];
    if (result)
    {

      return [result startedLoadingResources];
    }
  }

  return result;
}

- (id)_stoppedLoadingResources
{
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained(result + 157);
    [WeakRetained didStopLoadingResource];

    result = v1[161];
    if (result)
    {

      return [result finishedLoadingResources];
    }
  }

  return result;
}

- (void)_completeRedirectToExternalNavigationResult:(uint64_t)a3 fromOriginalRequest:(uint64_t)a4 dialogResult:
{
  v12 = a2;
  if (a1)
  {
    v6 = [(TabDocument *)a1 _shouldCleanUpAfterRedirectToExternalApp]^ 1;
    if (a4 == 2)
    {
      LOBYTE(v6) = 1;
    }

    if (v6)
    {
      if (([v12 appliesOneTimeUserInitiatedActionPolicy] & 1) == 0)
      {
        v7 = a1[153];
        a1[153] = v7 | 2;
        if (a4)
        {
          a1[153] = v7 | 6;
        }
      }
    }

    else if ([a1 canGoBack])
    {
      [a1 goBack];
    }

    else if (!a4)
    {
      [a1 _closeTabDocumentAnimated:0];
    }

    v8 = [v12 appLink];
    v9 = v8;
    if (a4 == 1 && v8)
    {
      [v8 disableTemporarily];
      v10 = [v9 url];
      v11 = -[TabDocument _loadURLInternal:userDriven:](a1, v10, [v12 loadWasUserDriven]);
    }
  }
}

- (void)_addNoFeedAppSupportAlert
{
  if (a1)
  {
    v1 = *(a1 + 1304);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __40__TabDocument__addNoFeedAppSupportAlert__block_invoke;
    v3[3] = &unk_2781D63F8;
    v3[4] = a1;
    v2 = [MEMORY[0x277D28C48] noFeedAppDialogWithCompletionHandler:v3];
    [v1 addDialog:v2];
  }
}

void __40__TabDocument__addNoFeedAppSupportAlert__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"itms-apps://?action=search"];
    v7 = [v3 URLWithString:v4];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 992));
    v6 = [WeakRetained scene];
    [v6 openURL:v7 options:0 completionHandler:0];
  }
}

- (void)_queueAlertForRedirectToExternalNavigationResult:(void *)a3 fromOriginalRequest:(void *)a4 navigationAction:(char)a5 isMainFrame:(uint64_t)a6 promptPolicy:(void *)a7 userAction:
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  if (a1)
  {
    objc_initWeak(&location, a1);
    aBlock = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __137__TabDocument__queueAlertForRedirectToExternalNavigationResult_fromOriginalRequest_navigationAction_isMainFrame_promptPolicy_userAction___block_invoke;
    v26 = &unk_2781DAA20;
    objc_copyWeak(&v31, &location);
    v17 = v13;
    v27 = v17;
    v22 = v14;
    v28 = v22;
    v29 = v15;
    v32 = a5;
    v30 = v16;
    v18 = _Block_copy(&aBlock);
    if (([v17 externalApplicationCategory] | 2) == 2)
    {
      a1[153] |= 8uLL;
      v19 = a6;
      v20 = a1[163];
      v21 = [MEMORY[0x277D28C48] redirectDialogWithNavigationResult:v17 promptPolicy:v19 completionHandler:v18];
      [v20 addDialog:v21];
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

void __137__TabDocument__queueAlertForRedirectToExternalNavigationResult_fromOriginalRequest_navigationAction_isMainFrame_promptPolicy_userAction___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (a2)
    {
      if (![v4 appliesOneTimeUserInitiatedActionPolicy] || objc_msgSend(*(a1 + 32), "externalApplicationCategory") != 2)
      {
        WeakRetained[153] &= ~8uLL;
      }

      [(TabDocument *)WeakRetained _completeRedirectToExternalNavigationResult:v5 fromOriginalRequest:a2 dialogResult:?];
    }

    else
    {
      if (![v4 appliesOneTimeUserInitiatedActionPolicy] || objc_msgSend(*(a1 + 32), "externalApplicationCategory") == 2)
      {
        WeakRetained[153] = 0;
      }

      [(TabDocument *)WeakRetained _redirectToExternalNavigationResult:*(a1 + 40) fromOriginalRequest:*(a1 + 48) navigationAction:0 promptPolicy:*(a1 + 72) isMainFrame:*(a1 + 56) userAction:?];
    }

    v6 = _Block_copy(WeakRetained[68]);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, 1);
    }
  }
}

- (void)_redirectToExternalNavigationResult:(void *)a3 fromOriginalRequest:(void *)a4 navigationAction:(uint64_t)a5 promptPolicy:(uint64_t)a6 isMainFrame:(void *)a7 userAction:
{
  v51[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 1248));
    if ([WeakRetained tabDocumentCanRedirectToExternalApplication:a1])
    {
      if (*(a1 + 1224) != 8)
      {
        v35 = objc_loadWeakRetained((a1 + 992));
        v18 = [MEMORY[0x277D75128] sharedApplication];
        if ([v18 isSuspended] & 1) != 0 || !objc_msgSend(a1, "isActive") || (objc_msgSend(v35, "isPrivateBrowsingEnabled"))
        {
          v19 = 1;
        }

        else
        {
          v33 = [v35 tabCollectionViewProvider];
          v19 = [v33 isShowingTabView];
        }

        if ([v13 shouldPromptWithPolicy:a5 telephonyNavigationPolicy:*(a1 + 392) userAction:v16 inBackgroundOrPrivateBrowsing:v19 inLockdownMode:*(a1 + 664)])
        {
          [(TabDocument *)a1 _queueAlertForRedirectToExternalNavigationResult:v13 fromOriginalRequest:v14 navigationAction:v15 isMainFrame:a6 promptPolicy:a5 userAction:v16];
          [WeakRetained tabDocumentDidCancelRedirectToExternalApplication:a1];
        }

        else
        {
          v20 = [v13 URL];
          if ([v13 appliesOneTimeUserInitiatedActionPolicy])
          {
            [v16 consume];
          }

          v21 = [v13 externalApplicationCategory];
          if (!v21 || v21 == 2)
          {
            v23 = [v13 appLink];
            v24 = [*MEMORY[0x277D76620] canOpenURL:v20];
            if (v23)
            {
              v25 = 1;
            }

            else
            {
              v25 = v24;
            }

            if (v25)
            {
              v26 = *(a1 + 1296);
              if (v26)
              {
                [v26 absoluteString];
              }

              else
              {
                [v14 valueForHTTPHeaderField:@"Referer"];
              }
              v27 = ;
              v28 = *(a1 + 1296);
              *(a1 + 1296) = 0;

              *(a1 + 958) = 0;
              v29 = *(a1 + 1216);
              *(a1 + 1216) = 0;

              *(a1 + 717) = 0;
              if (v23)
              {
                v50 = *MEMORY[0x277D66E78];
                v51[0] = MEMORY[0x277CBEC38];
                v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
                v41[0] = MEMORY[0x277D85DD0];
                v41[1] = 3221225472;
                v41[2] = __124__TabDocument__redirectToExternalNavigationResult_fromOriginalRequest_navigationAction_promptPolicy_isMainFrame_userAction___block_invoke_3;
                v41[3] = &unk_2781D75E0;
                v41[4] = a1;
                v42 = v13;
                v43 = v14;
                [(TabDocument *)a1 _openAppLinkInApp:v23 fromOriginalRequest:v43 updateAppLinkStrategy:0 webBrowserState:v30 completionHandler:v41];
              }

              else
              {
                if (v27)
                {
                  v48 = *MEMORY[0x277CC1E20];
                  v49 = v27;
                  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
                }

                else
                {
                  v34 = 0;
                }

                v32 = [MEMORY[0x277CC1E80] defaultWorkspace];
                v31 = [v13 externalApplication];
                v36[0] = MEMORY[0x277D85DD0];
                v36[1] = 3221225472;
                v36[2] = __124__TabDocument__redirectToExternalNavigationResult_fromOriginalRequest_navigationAction_promptPolicy_isMainFrame_userAction___block_invoke_4;
                v36[3] = &unk_2781DAA48;
                v37 = v15;
                v38 = a1;
                v39 = v13;
                v40 = v14;
                [v32 _sf_openURL:v20 inApplication:v31 withOptions:v34 completionHandler:v36];
              }
            }

            else
            {
              if (a6)
              {
                [*(a1 + 1304) addInvalidURLAlert];
              }

              [WeakRetained tabDocumentDidCancelRedirectToExternalApplication:a1];
            }
          }

          else if (v21 == 1 && (*(a1 + 720) & 1) == 0)
          {
            *(a1 + 720) = 1;
            v22 = *(a1 + 392);
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __124__TabDocument__redirectToExternalNavigationResult_fromOriginalRequest_navigationAction_promptPolicy_isMainFrame_userAction___block_invoke;
            v44[3] = &unk_2781DAA48;
            v44[4] = a1;
            v45 = v20;
            v46 = v13;
            v47 = v14;
            [v22 handleNavigationToURL:v45 completionHandler:v44];
          }
        }
      }
    }

    else
    {
      [WeakRetained tabDocumentDidCancelRedirectToExternalApplication:a1];
    }
  }
}

void __124__TabDocument__redirectToExternalNavigationResult_fromOriginalRequest_navigationAction_promptPolicy_isMainFrame_userAction___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 992));
    v5 = [WeakRetained scene];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __124__TabDocument__redirectToExternalNavigationResult_fromOriginalRequest_navigationAction_promptPolicy_isMainFrame_userAction___block_invoke_2;
    v9[3] = &unk_2781D67A0;
    v6 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    [v5 _sf_openTelURL:v6 completionHandler:v9];
  }

  else
  {
    *(v3 + 720) = 0;
    v7 = *(*(a1 + 32) + 544);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }
}

uint64_t __124__TabDocument__redirectToExternalNavigationResult_fromOriginalRequest_navigationAction_promptPolicy_isMainFrame_userAction___block_invoke_2(uint64_t a1, int a2)
{
  *(*(a1 + 32) + 720) = 0;
  v3 = *(*(a1 + 32) + 392);
  if (a2)
  {
    [v3 userAcceptedCallPrompt];
    [(TabDocument *)*(a1 + 32) _completeRedirectToExternalNavigationResult:v4 fromOriginalRequest:0 dialogResult:?];
  }

  else
  {
    [v3 userDeclinedCallPrompt];
  }

  result = *(*(a1 + 32) + 544);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)_openAppLinkInApp:(void *)a3 fromOriginalRequest:(uint64_t)a4 updateAppLinkStrategy:(void *)a5 webBrowserState:(void *)a6 completionHandler:
{
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (a1)
  {
    v14 = [v11 valueForHTTPHeaderField:@"Referer"];
    if (v14)
    {
      v15 = [MEMORY[0x277CBEBC0] safari_URLWithDataAsString:v14];
    }

    else
    {
      v15 = *(a1 + 1296);
    }

    v16 = v15;
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 1064) _willOpenAppLink];
    }

    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__11;
    v18[4] = __Block_byref_object_dispose__11;
    v19 = _Block_copy(v13);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __109__TabDocument__openAppLinkInApp_fromOriginalRequest_updateAppLinkStrategy_webBrowserState_completionHandler___block_invoke;
    v17[3] = &unk_2781DACC8;
    v17[4] = v18;
    [v10 openExternallyWithWebBrowserState:v12 referrerURL:v16 completionHandler:v17];
    _Block_object_dispose(v18, 8);
  }
}

void __124__TabDocument__redirectToExternalNavigationResult_fromOriginalRequest_navigationAction_promptPolicy_isMainFrame_userAction___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _storeSKAdNetworkAttribution];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [(TabDocument *)v4 _completeRedirectToExternalNavigationResult:v5 fromOriginalRequest:v3 dialogResult:0];
  }
}

- (id)_readingListArchiveNextPageLinkForRequest:(void *)a3 targetFrame:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (![a1 currentPageLoadedFromReadingList])
    {
LABEL_5:
      a1 = 0;
      goto LABEL_9;
    }

    v7 = [v6 request];
    v8 = [v7 URL];
    if ([v8 isFileURL])
    {
      v9 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
      v10 = [v9 isNetworkReachable];

      if (v10)
      {
        goto LABEL_5;
      }

      v11 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      v7 = [v11 bookmarkWithID:{objc_msgSend(a1, "readingListBookmarkID")}];

      v8 = [v5 URL];
      a1 = [v7 webarchivePathForNextPageURL:v8];
    }

    else
    {
      a1 = 0;
    }
  }

LABEL_9:

  return a1;
}

- (id)_fileURLNavigationResultForURL:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 readingListBookmarkID];
    a1 = 0;
    if ((gTestFileURLs & 1) == 0 && !v4)
    {
      if ([v3 isFileURL])
      {
        a1 = [MEMORY[0x277CDB820] resultOfType:4 withURL:v3];
      }

      else
      {
        a1 = 0;
      }
    }
  }

  return a1;
}

- (uint64_t)_shouldDisallowRedirectToExternalAppsForUserInitiatedRequest:(uint64_t)result
{
  if (result)
  {
    {
      v2 = result;
      v3 = a2;
      a2 = v3;
      v5 = v4;
      result = v2;
      if (v5)
      {
        if ([MEMORY[0x277D49A08] hasInternalContent])
        {
          v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v7 = [v6 BOOLForKey:@"RedirectToExternalAppsDisallowed"];
        }

        else
        {
          v7 = 0;
        }

        [TabDocument _shouldDisallowRedirectToExternalAppsForUserInitiatedRequest:]::redirectToExternalAppsDisallowedByUserDefault = v7;
        a2 = v3;
        result = v2;
      }
    }

    if ([TabDocument _shouldDisallowRedirectToExternalAppsForUserInitiatedRequest:]::redirectToExternalAppsDisallowedByUserDefault)
    {
      return 1;
    }

    else
    {
      return (a2 ^ 1) & (*(result + 1224) >> 2);
    }
  }

  return result;
}

- (id)_resultOfLoadingRequest:(uint64_t)a3 inMainFrame:(int)a4 userInitiated:
{
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    v9 = [v7 URL];
    v10 = [(TabDocument *)a1 _fileURLNavigationResultForURL:v9];

    if (!v10)
    {
      v11 = [(TabDocument *)a1 _shouldDisallowRedirectToExternalAppsForUserInitiatedRequest:a4];
      v12 = MEMORY[0x277CDB820];
      v13 = a1[178];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __65__TabDocument__resultOfLoadingRequest_inMainFrame_userInitiated___block_invoke;
      v15[3] = &unk_2781DAA70;
      v16 = v8;
      v17 = a1;
      v10 = [v12 resultOfLoadingRequest:v16 isMainFrame:a3 disallowRedirectToExternalApps:v11 preferredApplicationBundleIdentifier:v13 redirectDecisionHandler:v15];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __65__TabDocument__resultOfLoadingRequest_inMainFrame_userInitiated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v5 = [*(a1 + 32) URL];
  v6 = [*(a1 + 40) committedURL];
  v7 = [v4 _sf_shouldOverrideiCloudSharingURL:v5 withAppRedirectURL:v3 referrerURL:v6 loadedUsingDesktopUserAgent:{objc_msgSend(*(*(a1 + 40) + 88), "loadedUsingDesktopUserAgent")}];

  return v7;
}

- (void)_determineResultOfLoadingRequest:(uint64_t)a3 inMainFrame:(int)a4 userInitiated:(void *)a5 completionHandler:
{
  v9 = a2;
  v10 = a5;
  if (a1)
  {
    v11 = [v9 URL];
    v12 = [(TabDocument *)a1 _fileURLNavigationResultForURL:v11];

    if (v12)
    {
      v10[2](v10, v12);
    }

    else
    {
      v13 = [(TabDocument *)a1 _shouldDisallowRedirectToExternalAppsForUserInitiatedRequest:a4];
      v14 = *(a1 + 786);
      v20 = [a1 committedURL];
      v15 = [*(a1 + 88) loadedUsingDesktopUserAgent];
      v16 = v14 | v13;
      v17 = MEMORY[0x277CDB820];
      v18 = *(a1 + 1424);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __92__TabDocument__determineResultOfLoadingRequest_inMainFrame_userInitiated_completionHandler___block_invoke;
      v21[3] = &unk_2781DAA98;
      v22 = v9;
      v19 = v20;
      v23 = v19;
      v24 = v15;
      [v17 determineResultOfLoadingRequest:v22 isMainFrame:a3 disallowRedirectToExternalApps:v16 & 1 preferredApplicationBundleIdentifier:v18 redirectDecisionHandler:v21 completionHandler:v10];
    }
  }
}

uint64_t __92__TabDocument__determineResultOfLoadingRequest_inMainFrame_userInitiated_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v5 = [*(a1 + 32) URL];
  v6 = [v4 _sf_shouldOverrideiCloudSharingURL:v5 withAppRedirectURL:v3 referrerURL:*(a1 + 40) loadedUsingDesktopUserAgent:*(a1 + 48)];

  return v6;
}

- (id)resultOfLoadingURL:(id)a3
{
  v3 = [(TabDocument *)self resultOfLoadingURL:a3 userInitiated:0];

  return v3;
}

- (id)resultOfLoadingURL:(int)a3 userInitiated:
{
  v5 = a2;
  if (a1)
  {
    v6 = [MEMORY[0x277CBABA0] safari_nonAppInitiatedRequestWithURL:v5];
    v7 = [(TabDocument *)a1 _resultOfLoadingRequest:v6 inMainFrame:1 userInitiated:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_showFinanceKitOrderPreviewControllerWithURL:(void *)a3 dismissalHandler:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v7 = getFKSaveOrderClass(void)::softClass;
    v17 = getFKSaveOrderClass(void)::softClass;
    if (!getFKSaveOrderClass(void)::softClass)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = ___ZL19getFKSaveOrderClassv_block_invoke;
      v13[3] = &unk_2781D60E0;
      v13[4] = &v14;
      ___ZL19getFKSaveOrderClassv_block_invoke(v13);
      v7 = v15[3];
    }

    v8 = v7;
    _Block_object_dispose(&v14, 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__TabDocument__showFinanceKitOrderPreviewControllerWithURL_dismissalHandler___block_invoke;
    v9[3] = &unk_2781DAAC0;
    objc_copyWeak(&v11, &location);
    v10 = v6;
    [v7 saveOrderAtURL:v5 completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __77__TabDocument__showFinanceKitOrderPreviewControllerWithURL_dismissalHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [v4 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __77__TabDocument__showFinanceKitOrderPreviewControllerWithURL_dismissalHandler___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__TabDocument__showFinanceKitOrderPreviewControllerWithURL_dismissalHandler___block_invoke_278;
    block[3] = &unk_2781D6840;
    objc_copyWeak(v8, (a1 + 40));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(v8);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

void __77__TabDocument__showFinanceKitOrderPreviewControllerWithURL_dismissalHandler___block_invoke_278(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pageLoadErrorController];
  v2 = _WBSLocalizedString();
  v3 = _WBSLocalizedString();
  [v1 addAlertWithTitle:v2 bodyText:v3];
}

- (void)_showPassBookControllerForPasses:(uint64_t)a1
{
  v5 = a2;
  if (a1)
  {
    v3 = [objc_alloc(getPKAddPassesViewControllerClass()) initWithPasses:v5 fromPresentationSource:0];
    [v3 setDelegate:a1];
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 1248));
      [WeakRetained tabDocument:a1 presentViewControllerAnimated:v3];
    }
  }
}

- (BOOL)_showICSControllerForPath:(void *)a3 sourceURL:(void *)a4 beforeDismissHandler:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [objc_alloc(MEMORY[0x277CDB7E8]) initWithFilePath:v7 sourceURL:v8];
    v11 = v10;
    v12 = v10 != 0;
    if (v10)
    {
      [v10 setModalPresentationStyle:2];
      [v11 setBeforeDismissHandler:v9];
      WeakRetained = objc_loadWeakRetained((a1 + 1248));
      [WeakRetained tabDocument:a1 presentViewControllerAnimated:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)showDownload:(id)a3
{
  v4 = a3;
  v5 = [v4 completedFileURL];
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__TabDocument_showDownload___block_invoke;
    v7[3] = &unk_2781D6AC0;
    v7[4] = self;
    v8 = v4;
    v9 = v5;
    [v9 safari_accessingSecurityScopedResource:v7];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [TabDocument showDownload:];
    }

    [(TabDocument *)self _showDownload:v4 path:0];
  }
}

void __28__TabDocument_showDownload___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) path];
  [(TabDocument *)v1 _showDownload:v2 path:v3];
}

- (void)_showDownload:(void *)a3 path:
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 fileType];
    v8 = [v5 sourceURL];
    v9 = [v5 userInitiatedAction];
    v10 = [v9 isConsumed];

    if ((v10 & 1) == 0)
    {
      v11 = [v5 userInitiatedAction];
      [v11 consume];
    }

    *(a1 + 708) = 1;
    if (v7 == 2)
    {
      goto LABEL_59;
    }

    if (v7 == 6)
    {
      v47 = 0;
      v48 = &v47;
      v49 = 0x2050000000;
      v12 = getCLKWatchFaceLibraryClass(void)::softClass;
      v50 = getCLKWatchFaceLibraryClass(void)::softClass;
      if (!getCLKWatchFaceLibraryClass(void)::softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        v52 = 3221225472;
        v53 = ___ZL27getCLKWatchFaceLibraryClassv_block_invoke;
        v54 = &unk_2781D60E0;
        v55 = &v47;
        ___ZL27getCLKWatchFaceLibraryClassv_block_invoke(buf);
        v12 = v48[3];
      }

      v13 = v12;
      _Block_object_dispose(&v47, 8);
      v14 = objc_alloc_init(v12);
      v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:0];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __34__TabDocument__showDownload_path___block_invoke;
      v46[3] = &unk_2781DAAE8;
      v46[4] = a1;
      [v14 _addWatchFaceAtURL:v15 shouldValidate:0 completionHandler:v46];

      goto LABEL_59;
    }

    objc_initWeak(&location, a1);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __34__TabDocument__showDownload_path___block_invoke_287;
    aBlock[3] = &unk_2781D6840;
    objc_copyWeak(&v44, &location);
    v16 = _Block_copy(aBlock);
    if (v7 > 4)
    {
      if (v7 == 5)
      {
        v29 = [v5 explicitlySaved];
        if (!v6 || (v18 = [objc_alloc(MEMORY[0x277CDB780]) initWithFilePath:v6 sourceURL:v8 deleteFileWhenDone:v29 ^ 1u beforeDismissHandler:v16]) == 0)
        {
          if ((v29 & 1) == 0)
          {
            [v5 removeFromDisk];
          }

LABEL_16:
          [*(a1 + 1304) addDownloadFailedAlertWithDescription:0];
LABEL_58:

          objc_destroyWeak(&v44);
          objc_destroyWeak(&location);
LABEL_59:

          goto LABEL_60;
        }

        WeakRetained = objc_loadWeakRetained((a1 + 1248));
        [WeakRetained tabDocument:a1 presentViewControllerAnimated:v18];

LABEL_57:
        goto LABEL_58;
      }

      if (v7 == 7)
      {
        v18 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v6 isDirectory:0];
        [(TabDocument *)a1 _showFinanceKitOrderPreviewControllerWithURL:v18 dismissalHandler:v16];
        if (([v5 explicitlySaved] & 1) == 0)
        {
          [v5 removeFromDisk];
        }

        goto LABEL_57;
      }

LABEL_21:
      v18 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
      if (([v5 explicitlySaved] & 1) == 0)
      {
        [v5 removeFromDisk];
      }

      if (v18)
      {
        v19 = [MEMORY[0x277D262A0] sharedConnection];
        v20 = [v6 lastPathComponent];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __34__TabDocument__showDownload_path___block_invoke_294;
        v39[3] = &unk_2781DAB38;
        v39[4] = a1;
        [v19 queueFileDataForAcceptance:v18 originalFileName:v20 forBundleID:0 completion:v39];

        v21 = [a1 URL];
        LODWORD(v19) = v21 == 0;

        if (v19)
        {
          [a1 _closeTabDocumentAnimated:0];
        }
      }

      else
      {
        v35 = WBS_LOG_CHANNEL_PREFIXDownloads();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [TabDocument _showDownload:path:];
        }

        [*(a1 + 1304) addInvalidProfileAlert];
      }

      goto LABEL_57;
    }

    if (v7 != 3)
    {
      if (v7 == 4)
      {
        if (v6 && [(TabDocument *)a1 _showICSControllerForPath:v6 sourceURL:v8 beforeDismissHandler:v16])
        {
          goto LABEL_58;
        }

        v17 = WBS_LOG_CHANNEL_PREFIXDownloads();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [TabDocument _showDownload:path:];
        }

        goto LABEL_16;
      }

      goto LABEL_21;
    }

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v6 isDirectory:0];
    v23 = [v5 uti];
    v36 = v23;
    if (v23 && ([MEMORY[0x277CE1CB8] typeWithIdentifier:v23], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v37 = v24;
      if ([v24 conformsToType:*MEMORY[0x277CE1F28]])
      {
        v47 = 0;
        v48 = &v47;
        v49 = 0x2050000000;
        v25 = getPKPassesXPCContainerClass(void)::softClass;
        v50 = getPKPassesXPCContainerClass(void)::softClass;
        if (!getPKPassesXPCContainerClass(void)::softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          v52 = 3221225472;
          v53 = ___ZL28getPKPassesXPCContainerClassv_block_invoke;
          v54 = &unk_2781D60E0;
          v55 = &v47;
          ___ZL28getPKPassesXPCContainerClassv_block_invoke(buf);
          v25 = v48[3];
        }

        v26 = v25;
        _Block_object_dispose(&v47, 8);
        v27 = [[v25 alloc] initWithFileURL:v38];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __34__TabDocument__showDownload_path___block_invoke_2;
        v40[3] = &unk_2781DAB10;
        v41 = v22;
        [v27 unarchivePassesWithBlock:v40];
        v18 = 0;
        v28 = v41;
LABEL_43:

        if (![v22 count] || v18)
        {
          v34 = WBS_LOG_CHANNEL_PREFIXDownloads();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [v18 safari_privacyPreservingDescription];
            objc_claimAutoreleasedReturnValue();
            [TabDocument _showDownload:path:];
          }

          [*(a1 + 1304) addDownloadFailedAlertWithDescription:0];
          v16[2](v16);
        }

        else
        {
          v33 = WBS_LOG_CHANNEL_PREFIXDownloads();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_215819000, v33, OS_LOG_TYPE_INFO, "PassBook passes download succeeded, showing passbook adding passes view controller.", buf, 2u);
          }

          [(TabDocument *)a1 _showPassBookControllerForPasses:v22];
        }

        if (([v5 explicitlySaved] & 1) == 0)
        {
          [v5 removeFromDisk];
        }

        goto LABEL_57;
      }
    }

    else
    {
      v37 = 0;
    }

    v27 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v38];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v31 = getPKPassClass(void)::softClass;
    v50 = getPKPassClass(void)::softClass;
    if (!getPKPassClass(void)::softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v52 = 3221225472;
      v53 = ___ZL14getPKPassClassv_block_invoke;
      v54 = &unk_2781D60E0;
      v55 = &v47;
      ___ZL14getPKPassClassv_block_invoke(buf);
      v31 = v48[3];
    }

    v32 = v31;
    _Block_object_dispose(&v47, 8);
    v42 = 0;
    v28 = [v31 createWithData:v27 warnings:0 error:&v42];
    v18 = v42;
    if (v28)
    {
      [v22 addObject:v28];
    }

    goto LABEL_43;
  }

LABEL_60:
}

void __34__TabDocument__showDownload_path___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __34__TabDocument__showDownload_path___block_invoke_cold_1();
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      [*(v5 + 1304) addDownloadFailedAlertWithDescription:0];
    }
  }
}

void __34__TabDocument__showDownload_path___block_invoke_287(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained URL];
  if (v1)
  {
  }

  else if (([WeakRetained isClosed] & 1) == 0)
  {
    [WeakRetained _closeTabDocumentAnimated:0];
  }
}

void __34__TabDocument__showDownload_path___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __34__TabDocument__showDownload_path___block_invoke_294(uint64_t a1, uint64_t a2, void *a3)
{
  block[8] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [v4 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __34__TabDocument__showDownload_path___block_invoke_294_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__TabDocument__showDownload_path___block_invoke_295;
    block[3] = &unk_2781D60B8;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (uint64_t)_canShowDownloadWithoutPrompting:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 fileType] == 1 || objc_msgSend(v4, "fileType") == 6 || (WeakRetained = objc_loadWeakRetained((a1 + 1248)), v6 = objc_msgSend(WeakRetained, "tabDocument:canShowDownload:", a1, v4), WeakRetained, (v6 & 1) == 0))
    {
      LOBYTE(a1) = 0;
    }

    else
    {
      v7 = [v4 userInitiatedAction];
      v8 = v7;
      if (v7)
      {
        if (v7 == *(a1 + 400))
        {
          LOBYTE(a1) = [v7 isConsumed] ^ 1;
        }

        else
        {
          LOBYTE(a1) = 0;
        }
      }

      else
      {
        LOBYTE(a1) = *(a1 + 708) ^ 1;
      }
    }
  }

  return a1 & 1;
}

- (void)downloadDidStart:(id)a3
{
  v4 = a3;
  if (self->_elementInfoToAnimateForNextDownload)
  {
    v5 = *MEMORY[0x277D76620];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__TabDocument_downloadDidStart___block_invoke;
    v6[3] = &unk_2781D60B8;
    v6[4] = self;
    [v5 _performBlockAfterCATransactionCommits:v6];
  }

  if (self->_closeWhenNextDownloadStarts)
  {
    [(TabDocument *)self _closeTabDocumentAnimated:0];
    self->_closeWhenNextDownloadStarts = 0;
  }
}

void __32__TabDocument_downloadDidStart___block_invoke(uint64_t a1)
{
  [*(a1 + 32) animateElement:*(*(a1 + 32) + 688) toBarItem:11];
  v2 = *(a1 + 32);
  v3 = *(v2 + 688);
  *(v2 + 688) = 0;
}

- (void)downloadDidFail:(id)a3
{
  downloadReflectedInFluidProgress = self->_downloadReflectedInFluidProgress;
  if (self->_activeDownload == a3 || downloadReflectedInFluidProgress == a3)
  {
    self->_downloadReflectedInFluidProgress = 0;

    activeDownload = self->_activeDownload;
    self->_activeDownload = 0;
  }
}

- (void)downloadDidFinish:(id)a3
{
  v4 = a3;
  activeDownload = self->_activeDownload;
  if (activeDownload == v4)
  {
    self->_activeDownload = 0;

    v6 = [MEMORY[0x277CDB7A8] sharedManager];
    v7 = [v6 shouldExcludeDownloadFromList:v4];

    if (v7)
    {
      if ([(TabDocument *)self _canShowDownloadWithoutPrompting:v4])
      {
        [(TabDocument *)self showDownload:v4];
      }

      else if ([(_SFDownload *)v4 fileType]!= 2)
      {
        objc_initWeak(&location, self);
        v8 = MEMORY[0x277D28C48];
        v9 = [(_SFDownload *)v4 fileType];
        v10 = [(_SFDownload *)v4 wkDownload];
        v11 = [v10 originatingFrame];
        v12 = [v11 securityOrigin];
        v13 = [(_SFWebView *)self->_webView URL];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __33__TabDocument_downloadDidFinish___block_invoke;
        v15[3] = &unk_2781DAB60;
        objc_copyWeak(&v17, &location);
        v16 = v4;
        v14 = [v8 downloadBlockedDialogWithFileType:v9 initiatingSecurityOrigin:v12 presentingURL:v13 completionHandler:v15];

        [(SFDialogController *)self->_dialogController presentDialog:v14];
        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __33__TabDocument_downloadDidFinish___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && WeakRetained)
  {
    [WeakRetained showDownload:*(a1 + 32)];
  }

  else
  {
    [*(a1 + 32) removeFromDisk];
  }
}

- (void)_presentDialogToAllowDownload:(void *)a3 initiatingSecurityOrigin:(uint64_t)a4 allowViewAction:(void *)a5 completionHandler:
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v12 = MEMORY[0x277D28C48];
    v13 = *(a1 + 1064);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __104__TabDocument__presentDialogToAllowDownload_initiatingSecurityOrigin_allowViewAction_completionHandler___block_invoke;
    v18 = &unk_2781DAB88;
    v19 = v9;
    v20 = v11;
    v14 = [v12 allowDownloadDialogWithDownload:v19 initiatingSecurityOrigin:v10 navigatedWebView:v13 allowViewAction:a4 completionHandler:&v15];
    [*(a1 + 288) presentDialog:{v14, v15, v16, v17, v18}];
  }
}

uint64_t __104__TabDocument__presentDialogToAllowDownload_initiatingSecurityOrigin_allowViewAction_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    v4 = [MEMORY[0x277D499B8] sharedLogger];
    v5 = [*(a1 + 32) mimeType];
    v6 = [*(a1 + 32) uti];
    if (a2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    [v4 _sf_didBeginDownloadWithMIMEType:v5 uti:v6 downloadType:0 promptType:v7 browserPersona:0];
  }

  v8 = *(*(a1 + 40) + 16);

  return v8();
}

- (void)downloadShouldContinueAfterReceivingResponse:(id)a3 decisionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CDB7A8] sharedManager];
  if ([v7 suppressesPrompt] & 1) != 0 || (objc_msgSend(v9, "downloads"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", v7), v10, (v11))
  {
    v12 = 1;
LABEL_4:
    v8[2](v8, v12);
    goto LABEL_5;
  }

  if ([*MEMORY[0x277D76620] applicationState] == 2)
  {
    v12 = 0;
    goto LABEL_4;
  }

  if ([v9 shouldExcludeDownloadFromList:v7])
  {
    v8[2](v8, 1);
    objc_storeStrong(&self->_downloadReflectedInFluidProgress, a3);
    [v7 setFluidProgressController:self->_fluidProgressController];
    [(WBSFluidProgressController *)self->_fluidProgressController startFluidProgressWithProgressStateSource:v7];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__TabDocument_downloadShouldContinueAfterReceivingResponse_decisionHandler___block_invoke;
    v13[3] = &unk_2781DABB0;
    v13[4] = self;
    v14 = v8;
    [(TabDocument *)self _presentDialogToAllowDownload:v7 initiatingSecurityOrigin:0 allowViewAction:0 completionHandler:v13];
  }

LABEL_5:
}

void __76__TabDocument_downloadShouldContinueAfterReceivingResponse_decisionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), a2 == 0);
  if (a2 != 2)
  {
    v4 = [*(a1 + 32) committedURL];
    if (v4)
    {
    }

    else
    {
      v5 = *(a1 + 32);
      if (!v5[159])
      {

        [v5 _closeTabDocumentAnimated:0];
      }
    }
  }
}

- (void)setClosed:(BOOL)a3
{
  self->_closed = a3;
  if (a3)
  {
    [(_SFDownload *)self->_downloadReflectedInFluidProgress cancel];
  }

  [(TabDocument *)self setSearchableItemAttributes:0];
  [(TabDocument *)self setMediaStateIcon:?];

  [(TabDocument *)&self->super.isa invalidateUserActivity];
}

- (void)setMediaStateIcon:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 504);
    if (v4 != a2 || *(a1 + 496) == 1)
    {
      if ((a2 - 1) > 1)
      {
        if ((v4 - 3) >= 0xFFFFFFFFFFFFFFFELL)
        {
          v7 = +[MediaCaptureStatusBarManager sharedManager];
          [v7 recordingDocumentDidEndMediaCapture:a1];
        }
      }

      else if ((v4 - 1) >= 2)
      {
        v6 = +[MediaCaptureStatusBarManager sharedManager];
        [v6 recordingDocumentDidBeginMediaCapture:a1 audioOnly:a2 == 1];
      }

      *(a1 + 504) = a2;
      [(TabDocument *)a1 _updateBarItemsWithCurrentMediaState];
      WeakRetained = objc_loadWeakRetained((a1 + 992));
      if (WeakRetained)
      {
        [WeakRetained tabDocumentDidChangeMediaState:a1 needsUpdateGlobalAudioState:*(a1 + 496)];
        v5 = [a1 navigationBarItem];
        [v5 setMediaStateIcon:a2];
      }

      *(a1 + 496) = 0;
      [(TabDocument *)a1 _notifyDidUpdateTabCollectionItem];
    }
  }
}

- (void)dismissAppSuggestionBanner:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained removeAppBannerFromTabDocument:self animated:1];

  storeBanner = self->_storeBanner;
  self->_storeBanner = 0;
}

- (void)setAppSuggestionBanner:(id)a3 isPinned:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setAppBannerPinnedToTop:v4 forTabDocument:self];
}

- (BOOL)shouldBlockAppSuggestionBanner:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained isPrivateBrowsingEnabled];

  return v4 ^ 1;
}

- (void)prepareToContinueUserActivity
{
  [(WBSFluidProgressController *)self->_fluidProgressController startFluidProgressWithProgressStateSource:self];
  navigationBarItem = self->_navigationBarItem;
  v4 = _WBSLocalizedString();
  [(SFNavigationBarItem *)navigationBarItem setCustomPlaceholderText:?];
}

+ (id)tabDocumentForWKWebView:(id)a3
{
  v3 = a3;
  v4 = webViewToTabDocumentMap();
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (id)_initWithBrowserController:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 isPrivateBrowsingEnabled];
  v9 = [v6 isControlledByAutomation];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__TabDocument__initWithBrowserController_configuration___block_invoke;
  v13[3] = &unk_2781D61F8;
  v14 = self;
  v10 = v7;
  v15 = v10;
  v11 = [(TabDocument *)v14 _initWithTitle:0 URL:0 UUID:v8 privateBrowsingEnabled:v9 controlledByAutomation:0 bookmark:v6 browserController:v13 createDocumentView:?];

  return v11;
}

- (void)_createDocumentViewWithConfiguration:(uint64_t)a1
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 992));
    v5 = [a1 configuration];
    v6 = [v5 traitEnvironment];

    v7 = [v6 traitCollection];
    if ([v7 userInterfaceStyle] == 2)
    {
      v8 = [v6 traitCollection];
      v9 = [v8 userInterfaceIdiom] == 6;
    }

    else
    {
      v9 = 1;
    }

    [v3 _setDrawsBackground:v9];
    v10 = objc_alloc(MEMORY[0x277CDB918]);
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 bounds];
    v12 = [v10 initWithFrame:v3 configuration:?];
    v13 = *(a1 + 1064);
    *(a1 + 1064) = v12;

    v14 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 1064);
      v55 = 134218240;
      v56 = a1;
      v57 = 2048;
      v58 = v15;
      _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_DEFAULT, "TabDocument %p: created web view %p", &v55, 0x16u);
    }

    v16 = webViewToTabDocumentMap();
    [v16 setObject:a1 forKey:*(a1 + 1064)];

    [*(a1 + 224) setReaderWebView:*(a1 + 1432)];
    [*(a1 + 224) setWebView:*(a1 + 1064)];
    [*(a1 + 1064) setAllowsLinkPreview:1];
    [*(a1 + 1064) _setObservedRenderingProgressEvents:335];
    [*(a1 + 168) setWebView:*(a1 + 1064)];
    [*(a1 + 1064) setNavigationDelegate:a1];
    [*(a1 + 1064) setUIDelegate:a1];
    [*(a1 + 1064) setDelegate:a1];
    [*(a1 + 1064) _setFullscreenDelegate:a1];
    [*(a1 + 1064) _setInputDelegate:a1];
    v17 = *(a1 + 1064);
    v18 = [a1 history];
    [v17 _setHistoryDelegate:v18];

    [*(a1 + 1064) _setIconLoadingDelegate:a1];
    [*(a1 + 1064) _setDiagnosticLoggingDelegate:a1];
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 1064) _setAppHighlightDelegate:a1];
    }

    [*(a1 + 1064) _setFindInteractionEnabled:1];
    [*(a1 + 1064) setAccessibilityIdentifier:@"WebView"];
    [*(a1 + 1064) setInspectable:{objc_msgSend(a1, "allowsRemoteInspection")}];
    v19 = _SFCustomUserAgentStringIfNeeded();
    if (v19)
    {
      [*(a1 + 1064) setCustomUserAgent:v19];
    }

    [*(a1 + 1064) addObserver:a1 forKeyPath:@"URL" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1064) addObserver:a1 forKeyPath:@"estimatedProgress" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1064) addObserver:a1 forKeyPath:@"_networkRequestsInProgress" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1064) addObserver:a1 forKeyPath:@"hasOnlySecureContent" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1064) addObserver:a1 forKeyPath:@"_negotiatedLegacyTLS" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1064) addObserver:a1 forKeyPath:@"title" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1064) addObserver:a1 forKeyPath:@"canGoBack" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1064) addObserver:a1 forKeyPath:@"canGoForward" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1064) addObserver:a1 forKeyPath:@"_webProcessIsResponsive" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1064) addObserver:a1 forKeyPath:@"loading" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1064) addObserver:a1 forKeyPath:@"themeColor" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1064) addObserver:a1 forKeyPath:@"underPageBackgroundColor" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1064) addObserver:a1 forKeyPath:@"_sampledPageTopColor" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1064) addObserver:a1 forKeyPath:@"_isPlayingAudio" options:0 context:kTabDocumentObserverContext];
    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      [*(a1 + 1064) addObserver:a1 forKeyPath:@"_sampledTopFixedPositionContentColor" options:0 context:kTabDocumentObserverContext];
    }

    [*(a1 + 1064) _setBackgroundExtendsBeyondPage:1];
    v20 = [objc_alloc(MEMORY[0x277CDB7C8]) initWithWebView:*(a1 + 1064) delegate:a1];
    v21 = *(a1 + 1280);
    *(a1 + 1280) = v20;

    v22 = [objc_alloc(MEMORY[0x277CDB878]) initWithWebView:*(a1 + 1064)];
    v23 = *(a1 + 296);
    *(a1 + 296) = v22;

    [*(a1 + 296) setDelegate:a1];
    [*(a1 + 296) setWebViewUIDelegate:a1];
    v24 = [v6 traitCollection];
    v25 = [v24 userInterfaceStyle];
    v26 = [*(a1 + 296) configurationManager];
    [v26 setDarkModeEnabled:v25 == 2];

    v27 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_282862DC0];
    v28 = *(a1 + 64);
    *(a1 + 64) = v27;

    v29 = [*(a1 + 1064) _remoteObjectRegistry];
    [v29 registerExportedObject:a1 interface:*(a1 + 64)];

    v30 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_282862A00];
    v31 = *(a1 + 72);
    *(a1 + 72) = v30;

    v32 = [*(a1 + 1064) _remoteObjectRegistry];
    [v32 registerExportedObject:a1 interface:*(a1 + 72)];

    v33 = objc_alloc(MEMORY[0x277CDB838]);
    v34 = *(a1 + 1064);
    v35 = [v3 websiteDataStore];
    v36 = [v35 safari_secIdentitiesCache];
    v37 = [v33 initWithWebView:v34 secIdentitiesCache:v36];
    v38 = *(a1 + 1304);
    *(a1 + 1304) = v37;

    [*(a1 + 1304) setDelegate:a1];
    [*(a1 + 1304) setDialogPresenter:a1];
    v39 = objc_alloc(MEMORY[0x277CDB890]);
    v40 = *(a1 + 1064);
    v41 = [a1 activityJSController];
    v42 = [a1 perSitePreferencesVendor];
    v43 = [v42 requestDesktopSitePreferenceManager];
    v44 = [v39 initWithWebView:v40 activityJSController:v41 perSitePreferenceManager:v43];
    v45 = *(a1 + 88);
    *(a1 + 88) = v44;

    [*(a1 + 88) setTryUsingMobileIfPossible:{objc_msgSend(WeakRetained, "isShowingInOneThirdMode")}];
    v46 = [*(a1 + 1064) URL];
    [*(a1 + 88) setSupportsAdvancedPrivacyProtections:{objc_msgSend(a1, "supportsAdvancedPrivacyProtectionsForURL:", v46)}];

    [*(a1 + 672) setReloadOptionsController:*(a1 + 88)];
    v47 = [objc_alloc(MEMORY[0x277CDB778]) initWithWebView:*(a1 + 1064)];
    v48 = *(a1 + 96);
    *(a1 + 96) = v47;

    v49 = objc_alloc_init(MEMORY[0x277D28C50]);
    v50 = *(a1 + 288);
    *(a1 + 288) = v49;

    [*(a1 + 288) setDelegate:a1];
    [*(a1 + 288) setDialogPresenter:*(a1 + 1064)];
    [*(a1 + 288) setViewControllerPresenter:a1];
    v51 = objc_alloc_init(MEMORY[0x277CDB868]);
    v52 = *(a1 + 1400);
    *(a1 + 1400) = v51;

    [*(a1 + 1400) setDelegate:a1];
    [*(a1 + 1400) setWebView:*(a1 + 1064)];
    [*(a1 + 1400) setReaderController:*(a1 + 296)];
    [*(a1 + 1400) setDialogPresenter:a1];
    [a1 updateAccessibilityIdentifier];
    v53 = +[Application sharedApplication];
    v54 = [v53 systemNoteTakingController];

    [v54 addObserver:a1 forKeyPath:*MEMORY[0x277D4A900] options:0 context:kTabDocumentObserverContext];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (kTabDocumentObserverContext == a6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v12 = objc_loadWeakRetained(&self->_delegate);
    if (self->_webView == v10 || self->_readerWebView == v10)
    {
      if ([v9 isEqualToString:@"loading"])
      {
        if ([(_SFWebView *)self->_webView isLoading])
        {
          self->_webViewIsLoading = 1;
          self->_shouldSuppressDialogsThatBlockWebProcessForProvisionalNavigation = 1;
          autoFillAuthenticationCompletionBlock = self->_autoFillAuthenticationCompletionBlock;
          self->_autoFillAuthenticationCompletionBlock = 0;

          [(_SFDownload *)self->_downloadReflectedInFluidProgress cancel];
          [(_SFDownload *)self->_downloadReflectedInFluidProgress setFluidProgressController:0];
          downloadReflectedInFluidProgress = self->_downloadReflectedInFluidProgress;
          self->_downloadReflectedInFluidProgress = 0;

          activeDownload = self->_activeDownload;
          self->_activeDownload = 0;

          [(WBSFluidProgressController *)self->_fluidProgressController startFluidProgressWithProgressStateSource:self];
          [(_SFWebView *)self->_webView estimatedProgress];
          [(TabDocument *)self _loadingControllerEstimatedProgressChangedTo:v23];
          [(TabDocument *)self _loadingControllerDidStartLoading];
        }

        else
        {
          self->_webViewIsLoading = 0;
          [WeakRetained updateInterface];
          if (self->_didQuickStopWhileBlank)
          {
            [WeakRetained updateFavoritesForNewDocument];
            self->_didQuickStopWhileBlank = 0;
          }
        }

        [(TabDocument *)self updateAccessibilityIdentifier];
        [(TabDocument *)self _loadingStateForWebExtensionsMayHaveChanged];
        goto LABEL_37;
      }

      if ([v9 isEqualToString:@"URL"])
      {
        [(TabDocument *)self _updateNavigationBarItem];
        [(TabDocument *)self updateTabIconWithDelay:0.1];
        [v12 tabDocumentDidUpdateURL:self];
        goto LABEL_37;
      }

      if ([v9 isEqualToString:@"estimatedProgress"])
      {
        [(_SFWebView *)self->_webView estimatedProgress];
        [(TabDocument *)self _loadingControllerEstimatedProgressChangedTo:v24];
        goto LABEL_37;
      }

      if ([v9 isEqualToString:@"_networkRequestsInProgress"])
      {
        if ([(_SFWebView *)self->_webView _networkRequestsInProgress])
        {
          [(TabDocument *)&self->super.isa _startedLoadingResources];
        }

        else
        {
          [(TabDocument *)&self->super.isa _stoppedLoadingResources];
        }

        goto LABEL_37;
      }

      if (([v9 isEqualToString:@"hasOnlySecureContent"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"_negotiatedLegacyTLS") & 1) == 0)
      {
        if ([v9 isEqualToString:@"title"])
        {
          [v12 tabDocumentDidUpdateTitle:self];
          [(TabDocument *)self updateTabTitle];
          goto LABEL_37;
        }

        if (([v9 isEqualToString:@"canGoBack"] & 1) == 0 && !objc_msgSend(v9, "isEqualToString:", @"canGoForward"))
        {
          if ([v9 isEqualToString:@"_webProcessIsResponsive"])
          {
            if ([(_SFWebView *)self->_webView _webProcessIsResponsive]&& [(NSTimer *)self->_unresponsiveWebProcessTimer isValid])
            {
              [(NSTimer *)self->_unresponsiveWebProcessTimer invalidate];
              (*(self->_unresponsiveWebProcessBlock + 2))();
              unresponsiveWebProcessBlock = self->_unresponsiveWebProcessBlock;
              self->_unresponsiveWebProcessBlock = 0;

              self->_suppressCrashBanner = 0;
            }
          }

          else if (([v9 isEqualToString:@"themeColor"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"underPageBackgroundColor") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"_sampledPageTopColor") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"_sampledTopFixedPositionContentColor"))
          {
            [v12 tabDocumentDidUpdateThemeColor:self];
          }

          else if ([v9 isEqualToString:@"_isPlayingAudio"])
          {
            if ([(TabDocument *)self isPlayingAudio])
            {
              if ([(TabDocument *)self isMuted])
              {
                v26 = 2;
              }

              else
              {
                v26 = 1;
              }
            }

            else
            {
              v26 = 0;
            }

            [(TabDocument *)self setAudioState:v26 needsDelay:1];
          }

          goto LABEL_37;
        }

        [v12 tabDocumentDidUpdateBackForward:self];
      }
    }

    else
    {
      if (self->_URLSpoofingMitigator != v10)
      {
        v13 = +[Application sharedApplication];
        v14 = [v13 systemNoteTakingController];

        if (v14 == v10 && [v9 isEqualToString:*MEMORY[0x277D4A900]])
        {
          v15 = +[Application sharedApplication];
          v16 = [v15 systemNoteTakingController];
          v17 = [v16 isNotesPIPVisible];

          v18 = WBS_LOG_CHANNEL_PREFIXContinuity();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = @"not visible";
            if (v17)
            {
              v19 = @"visible";
            }

            v27 = 134218242;
            v28 = self;
            v29 = 2112;
            v30 = v19;
            _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_INFO, "TabDocument: %p Notes PIP becomes %@", &v27, 0x16u);
          }

          if (v17)
          {
            [(TabDocument *)self restoreAllHighlightsData];
          }
        }

        goto LABEL_37;
      }

      if (![v9 isEqualToString:@"UIShouldReflectCommittedURLInsteadOfCurrentURL"])
      {
LABEL_37:

        goto LABEL_38;
      }
    }

    [(TabDocument *)self _updateNavigationBarItem];
    goto LABEL_37;
  }

LABEL_38:
}

- (void)setAudioState:(int)a3 needsDelay:
{
  if (a1 && *(a1 + 488) != a2)
  {
    *(a1 + 488) = a2;
    *(a1 + 496) = 1;
    if (a2)
    {
      v6 = [MEMORY[0x277CBEAA8] date];
    }

    else
    {
      v6 = 0;
    }

    [a1 setAudioStartTimestamp:v6];
    if (a2)
    {
    }

    [(TabDocument *)a1 mediaStateDidChangeNeedsDelay:a3];
  }
}

- (void)_loadingControllerDidStopLoadingWithError:(uint64_t)a1
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 1064) isLoading];
    if ((v4 & 1) == 0)
    {
      *(a1 + 707) = 0;
      *(a1 + 979) = 0;
    }

    *(a1 + 711) = 1;
    [a1 updateTabTitle];
    [(TabDocument *)a1 _updateNavigationBarItem];
    if (([a1 isShowingErrorPage] & 1) == 0)
    {
      v5 = [(TabDocument *)a1 pageLoadStatusForNavigationError:v3];
      v6 = [MEMORY[0x277D499B8] sharedLogger];
      [v6 didFinishPageLoadWithPageLoadStatus:v5];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 1248));
    [WeakRetained tabDocument:a1 didFinishLoadingWithError:v3 != 0];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [*(a1 + 264) copy];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 tabDocumentDidFinishLoading:a1];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    if (v3)
    {
      [*(a1 + 1304) handleFrameLoadError:v3];
      [*(a1 + 176) cancelFluidProgressWithProgressStateSource:a1];
      if (v4)
      {
        [*(a1 + 176) startFluidProgressWithProgressStateSource:a1];
        [*(a1 + 1064) estimatedProgress];
        [(TabDocument *)a1 _loadingControllerEstimatedProgressChangedTo:v13];
      }

      v14 = objc_loadWeakRetained((a1 + 1256));
      [v14 didFailLoadingResource:a1];

      v15 = [*(a1 + 1280) testController];
      v16 = v15;
      if (v15)
      {
        [v15 autoFillController:*(a1 + 1280) didFailFormMetadataForTesting:v3];
      }
    }
  }
}

- (uint64_t)pageLoadStatusForNavigationError:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if ([v3 _web_errorIsInDomain:*MEMORY[0x277CCA738]] && (objc_msgSend(v4, "code") == -999 || objc_msgSend(v4, "code") == -1012))
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  return v5;
}

- (id)pdfView
{
  if ([(TabDocument *)self isPDFDocument])
  {
    v3 = self->_webView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateFallbackURLsForUserTypedAddress:(char)a3 userExplicitlyRequestedAsHTTP:
{
  v5 = a2;
  if (a1)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = *(a1 + 128);
    *(a1 + 128) = v6;

    *(a1 + 136) = a3 ^ 1;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __84__TabDocument__updateFallbackURLsForUserTypedAddress_userExplicitlyRequestedAsHTTP___block_invoke;
    v10[3] = &unk_2781DABD8;
    v10[4] = a1;
    [MEMORY[0x277CBEBC0] safari_enumeratePossibleURLsForUserTypedString:v5 withBlock:v10];
    if ([*(a1 + 128) count] >= 2)
    {
      v8 = *(a1 + 128);
      v9 = [v8 firstObject];
      [v8 addObject:v9];
    }
  }
}

- (uint64_t)_loadNextFallbackURLWithWebClip:(void *)a3 navigation:
{
  v5 = a2;
  if (a1)
  {
    v6 = [*(a1 + 128) firstObject];
    if (v6 && ([(TabDocument *)a1 _trySwitchingToPinnedTabOnNavigationToURL:v6]& 1) == 0)
    {
      [*(a1 + 128) removeObjectAtIndex:0];
      v8 = [MEMORY[0x277CBABA0] safari_nonAppInitiatedRequestWithURL:v6];
      v9 = [(TabDocument *)a1 _requestBySettingAdvancedPrivacyProtectionsFlag:v8];

      objc_setAssociatedObject(v9, kWebClipToNSURLRequestAssociationKey, v5, 1);
      v10 = *(a1 + 1064);
      if (v10 && (![v10 _webProcessIsResponsive] || (objc_msgSend(*(a1 + 288), "presentedDialog"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "completionHandlerBlocksWebProcess"), v11, (v12 & 1) != 0)))
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __58__TabDocument__loadNextFallbackURLWithWebClip_navigation___block_invoke;
        v15[3] = &unk_2781D61F8;
        v15[4] = a1;
        v16 = v9;
        [(TabDocument *)a1 _terminateWebProcessIfNeededAndShowCrashBanner:v15 thenDo:?];
      }

      else
      {
        v13 = [*(a1 + 168) loadRequest:v9 userDriven:1];
        if (a3)
        {
          v13 = v13;
          *a3 = v13;
        }
      }

      v7 = 1;
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

- (void)stopLoadingUserInitiated
{
  v2 = self->_isBlank && !self->_didCommitCurrentNavigation;
  self->_didQuickStopWhileBlank = v2;
  [(TabDocument *)self stopLoading];
}

- (void)stopLoading
{
  [(LoadingController *)self->_loadingController stopLoading];
  fluidProgressController = self->_fluidProgressController;

  [(WBSFluidProgressController *)fluidProgressController cancelFluidProgressWithProgressStateSource:self];
}

- (void)goToBackForwardListItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__TabDocument_goToBackForwardListItem___block_invoke;
    aBlock[3] = &unk_2781DAB60;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    v5 = _Block_copy(aBlock);
    v5[2](v5, 1);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __39__TabDocument_goToBackForwardListItem___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(TabDocument *)WeakRetained _goToBackForwardListItem:a2 shouldDismissReader:?];
}

- (void)_goToBackForwardListItem:(char)a3 shouldDismissReader:
{
  v5 = a2;
  v6 = v5;
  if (a1 && v5)
  {
    *(a1 + 712) = 1;
    *(a1 + 710) = a3;
    v7 = +[Application sharedApplication];
    v8 = [v6 URL];
    [v7 checkExtendedLaunchPageLoad:v8 forTabDocument:a1];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__TabDocument__goToBackForwardListItem_shouldDismissReader___block_invoke;
    v9[3] = &unk_2781D61F8;
    v9[4] = a1;
    v10 = v6;
    [(TabDocument *)a1 _terminateWebProcessIfNeededAndShowCrashBanner:v9 thenDo:?];
  }
}

- (void)clearBackForwardListKeepingCurrentItem
{
  v2 = [(_SFWebView *)self->_webView backForwardList];
  [v2 _clear];
}

- (void)clearBackForwardList
{
  v2 = [(_SFWebView *)self->_webView backForwardList];
  [v2 _removeAllItems];
}

- (void)hibernate
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_215819000, a2, OS_LOG_TYPE_ERROR, "TabDocument %p is hibernating even though it has queued work to perform after terminating an unresponsive web process.", &v2, 0xCu);
}

void __26__TabDocument_unhibernate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safari_isSafariWebExtensionURL];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 loadURL:*(a1 + 32)];
  }

  else
  {
    v4 = [*(v3 + 1064) _restoreSessionState:*(v3 + 56) andNavigate:1];
    [(TabDocument *)*(a1 + 40) _loadDeferredURLIfNeeded];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 992));
  v10 = [WeakRetained tabCollectionViewProvider];

  v6 = [v10 cachedContentImageForTabWithUUID:*(*(a1 + 40) + 1376) allowScaledImage:0];
  if (v6)
  {
    v7 = [v10 cachedSnapshotMetadataForTabWithUUID:*(*(a1 + 40) + 1376)];
    [*(*(a1 + 40) + 1064) setPlaceholderImage:v6 verticalOffset:v7 metadata:0.0];
    [*(a1 + 40) setSuppressingProgressAnimationForNavigationGesture:1];
  }

  v8 = *(a1 + 40);
  v9 = *(v8 + 56);
  *(v8 + 56) = 0;
}

- (_WKSessionState)sessionState
{
  if (self->_hibernated)
  {
    v2 = self->_savedSessionState;
  }

  else
  {
    v2 = [(_SFWebView *)self->_webView _sessionState];
  }

  return v2;
}

- (void)restoreSessionState:(id)a3 andNavigate:(BOOL)a4 fromSafariViewService:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  v10 = v9;
  if (self->_hibernated)
  {
    objc_storeStrong(&self->_savedSessionState, a3);
  }

  else
  {
    v11 = 1;
    if (v5)
    {
      v11 = 2;
    }

    self->_sessionStateRestorationSource = v11;
    if (v6)
    {
      self->_externalAppRedirectState = 4;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__TabDocument_restoreSessionState_andNavigate_fromSafariViewService___block_invoke;
    v12[3] = &unk_2781D63D0;
    v12[4] = self;
    v13 = v9;
    v14 = v6;
    [(TabDocument *)self _terminateWebProcessIfNeededAndShowCrashBanner:v12 thenDo:?];
  }
}

- (void)_loadQueuedNavigation:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = MEMORY[0x277CBEBC0];
    v12 = v3;
    v5 = [v3 localAttributes];
    v6 = [v5 queuedNavigation];
    v7 = [v6 objectForKeyedSubscript:@"url"];
    v8 = [v4 URLWithString:v7];

    v9 = [v12 localAttributes];
    v10 = [v9 queuedNavigation];
    v11 = [v10 objectForKeyedSubscript:@"title"];

    [a1 loadURL:v8 title:v11 skipSyncableTabUpdates:0];
    v3 = v12;
  }
}

- (void)restoreStateFromTab:(id)a3
{
  v22 = a3;
  v5 = [v22 localAttributes];
  v6 = [v5 sessionStateData];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CE38A0]) initWithData:v6];
    if (v7)
    {
      v8 = [v22 localAttributes];
      v9 = [v8 queuedNavigation];
      [(TabDocument *)self restoreSessionState:v7 andNavigate:v9 == 0];
    }

    v10 = [v22 localAttributes];
    v11 = [v10 queuedNavigation];

    if (v11)
    {
      [(TabDocument *)self _loadQueuedNavigation:v22];
    }

    goto LABEL_6;
  }

  if (!self->_hibernated)
  {
    v12 = [v22 localAttributes];
    v13 = [v12 queuedNavigation];

    if (!v13)
    {
      v7 = [v22 url];
      v21 = [v22 title];
      [(TabDocument *)self loadURL:v7 title:v21 skipSyncableTabUpdates:0];

LABEL_6:
      goto LABEL_10;
    }

    [(TabDocument *)self _loadQueuedNavigation:v22];
  }

LABEL_10:
  -[TabDocument setPinned:](self, "setPinned:", [v22 isPinned]);
  v14 = [v22 pinnedTitle];
  v15 = [v14 copy];
  pinnedTitle = self->_pinnedTitle;
  self->_pinnedTitle = v15;

  v17 = [v22 pinnedURL];
  v18 = [v17 copy];
  pinnedURL = self->_pinnedURL;
  self->_pinnedURL = v18;

  objc_storeStrong(&self->_tabGroupTab, a3);
  v20 = [(WBTab *)self->_tabGroupTab uuid];
  [(TabDocument *)&self->super.isa _activeParticipantsDidUpdateInTabWithUUID:v20];
}

- (BOOL)mustShowBarsForBackForwardListItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_parentTabItem)
  {
    v6 = 1;
  }

  else
  {
    v6 = [(WKBackForwardListItem *)v4 safari_navigationSnapshotRequiresBars];
  }

  return v6;
}

- (BOOL)hasFailedURL
{
  v2 = [(_SFWebView *)self->_webView _unreachableURL];
  v3 = v2 != 0;

  return v3;
}

- (void)setAllowsRemoteInspection:(BOOL)a3
{
  if (self->_allowsInspectionWhenUnlocked != a3)
  {
    self->_allowsInspectionWhenUnlocked = a3;
    v5 = [(TabDocument *)self allowsRemoteInspection];
    [(_SFWebView *)self->_webView setInspectable:v5];
    readerWebView = self->_readerWebView;

    [(_SFWebView *)readerWebView setInspectable:v5];
  }
}

- (void)presentNextDialogIfNeeded
{
  [(TabDocument *)self _authenticateForAutoFillIfNeeded];
  dialogController = self->_dialogController;

  [(SFDialogController *)dialogController presentNextDialogIfNeeded];
}

- (void)_getAuthenticationForAutoFillController:(void *)a3 withCompletion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 authenticationContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__TabDocument__getAuthenticationForAutoFillController_withCompletion___block_invoke;
    v8[3] = &unk_2781DB2D8;
    v10 = v6;
    v9 = v5;
    [v7 authenticateForClient:v9 userInitiated:1 completion:v8];
  }
}

id __39__TabDocument__addTitlePrefixToString___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) simplifiedIdentifierForDisplayInTabTitle:a2];

  return v2;
}

- (void)dataForQuickLookDocument:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TabDocument_dataForQuickLookDocument_completionHandler___block_invoke;
  block[3] = &unk_2781DAC50;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__TabDocument_dataForQuickLookDocument_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 133);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__TabDocument_dataForQuickLookDocument_completionHandler___block_invoke_2;
    v5[3] = &unk_2781DAC28;
    v6 = *(a1 + 32);
    [v4 _getMainResourceDataWithCompletionHandler:v5];
  }
}

- (id)suggestedFileNameForQuickLookDocument:(id)a3
{
  v3 = [(_SFWebView *)self->_webView _sf_suggestedFilename];

  return v3;
}

- (void)loadTestURL:(id)a3 withInjectedBundle:(BOOL)a4 withCallback:(id)a5 pagesNeedingMemoryWarningSent:(id)a6
{
  v7 = a4;
  v17 = a5;
  v10 = a6;
  v11 = [MEMORY[0x277CBABA0] safari_nonAppInitiatedRequestWithURL:a3];
  [(TabDocument *)self clearPageLoadStatistics];
  v12 = [[PageLoadTestStatistics alloc] initWithInjectedBundle:v7 withCallback:v17];
  pageLoadStatistics = self->_pageLoadStatistics;
  self->_pageLoadStatistics = v12;

  if (!self->_pageLoadTest)
  {
    v14 = [[PageLoadTest alloc] initWithTabDocument:self pagesNeedingMemoryWarningSent:v10];
    pageLoadTest = self->_pageLoadTest;
    self->_pageLoadTest = v14;
  }

  v16 = [(TabDocument *)self loadRequest:v11 userDriven:0];
  [(PageLoadTestStatistics *)self->_pageLoadStatistics setNavigation:v16];
}

- (_SFSafariSharingExtensionController)sharingExtensionController
{
  sharingExtensionController = self->_sharingExtensionController;
  if (!sharingExtensionController)
  {
    v4 = objc_alloc(MEMORY[0x277CDB898]);
    v5 = [(TabDocument *)self webView];
    v6 = [v4 initWithWebView:v5];
    v7 = self->_sharingExtensionController;
    self->_sharingExtensionController = v6;

    sharingExtensionController = self->_sharingExtensionController;
  }

  return sharingExtensionController;
}

- (void)saveWebArchiveToPath:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  webView = self->_webView;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__TabDocument_saveWebArchiveToPath_completion___block_invoke;
  v11[3] = &unk_2781DAC78;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [(_SFWebView *)webView _getWebArchiveDataWithCompletionHandler:v11];
}

void __47__TabDocument_saveWebArchiveToPath_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 length])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    if (([v7 hasSuffix:@".webarchive"] & 1) == 0)
    {
      v8 = [*(a1 + 32) stringByAppendingString:@".webarchive"];

      v7 = v8;
    }

    v9 = 0;
    [v5 writeToFile:v7 options:0x40000000 error:&v9];
    v6 = v9;
    (*(*(a1 + 40) + 16))();
  }
}

- (void)setSourceApplicationBundleIdentifierForNextCommit:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  sourceApplicationBundleIdentifierForNextCommit = self->_sourceApplicationBundleIdentifierForNextCommit;
  self->_sourceApplicationBundleIdentifierForNextCommit = v4;

  if (v6)
  {
    self->_sourceApplicationIsValid = 1;
  }
}

- (NSUUID)ownerUUID
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained UUID];

  return v3;
}

- (SFTabStateData)tabStateData
{
  v3 = objc_alloc_init(MEMORY[0x277D28DC0]);
  v4 = [(TabDocument *)self URLForStatePersisting];
  v5 = [v4 safari_originalDataAsString];
  v6 = v5;
  v7 = &stru_2827BF158;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(TabDocument *)self uuid];
  v10 = [v9 UUIDString];
  [v3 setUUIDString:v10];

  v11 = [(TabDocument *)&self->super.isa _titleForStatePersistingForTabStateData];
  [v3 setTitle:v11];

  [v3 setUrl:v8];
  if (self->_hasDeferredNavigation)
  {
    [v3 setUserVisibleURL:v8];
    [v3 setLastViewedTime:-1.0];
    [v3 setReadingListBookmarkID:0];
    [v3 setShowingReader:0];
    [v3 setReaderViewTopScrollOffset:0];
    [v3 setDisplayingStandaloneImage:0];
    v12 = 0;
  }

  else
  {
    v13 = [v4 isFileURL];
    v14 = v8;
    if (v13)
    {
      v14 = [(TabDocument *)self URLString];
    }

    [v3 setUserVisibleURL:v14];
    if (v13)
    {
    }

    [(TabDocument *)self lastViewedTime];
    [v3 setLastViewedTime:?];
    [v3 setReadingListBookmarkID:{-[TabDocument readingListBookmarkID](self, "readingListBookmarkID")}];
    if (self->_hibernated)
    {
      v15 = [(TabDocument *)self shouldRestoreReader];
    }

    else
    {
      v15 = [(TabDocument *)self isShowingReader];
    }

    [v3 setShowingReader:v15];
    [v3 setReaderViewTopScrollOffset:{-[TabDocument readerViewTopScrollOffset](self, "readerViewTopScrollOffset")}];
    [v3 setDisplayingStandaloneImage:{-[TabDocument isDisplayingStandaloneImage](self, "isDisplayingStandaloneImage")}];
    v12 = [(TabDocument *)self wasOpenedFromLink];
  }

  [v3 setWasOpenedFromLink:v12];
  [v3 setPrivateBrowsing:{-[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}];
  v16 = [(TabDocument *)&self->super.isa _sessionStateWithoutParentItem];
  v17 = [v16 data];
  [v3 setSessionStateData:v17];

  v18 = [(TabDocument *)self ownerUUID];
  v19 = [v18 UUIDString];
  [v3 setOwningBrowserWindowUUIDString:v19];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [v3 setOrderIndex:{objc_msgSend(WeakRetained, "orderIndexForTab:", self)}];

  if ([(TabDocument *)self isHibernated])
  {
    v21 = [(TabDocument *)self persistWhenHibernated]^ 1;
  }

  else
  {
    v21 = 0;
  }

  [v3 setSkipUpdate:v21];
  v22 = [v3 sessionStateData];
  [v3 setUncompressedSessionStateDataSize:{objc_msgSend(v22, "length")}];

  v23 = [(TabDocument *)self tabGroupTab];
  v24 = [v23 tabGroupUUID];
  [v3 setTabGroupUUID:v24];

  v25 = [(TabDocument *)self profileIdentifier];
  [v3 setProfileIdentifier:v25];

  [(TabDocument *)self setPersistWhenHibernated:0];

  return v3;
}

- (int64_t)pageStatus
{
  if ([(TabDocument *)self isShowingErrorPage])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void __109__TabDocument__openAppLinkInApp_fromOriginalRequest_updateAppLinkStrategy_webBrowserState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __109__TabDocument__openAppLinkInApp_fromOriginalRequest_updateAppLinkStrategy_webBrowserState_completionHandler___block_invoke_2;
  v6[3] = &unk_2781DACA0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __109__TabDocument__openAppLinkInApp_fromOriginalRequest_updateAppLinkStrategy_webBrowserState_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  if (v3)
  {
    v3[2](v3, *(a1 + 32));
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v2 + 40);
  }

  *(v2 + 40) = 0;
}

- (void)_checkForAppLinkWithCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 1064) URL];
    if ([v4 safari_isHTTPFamilyURL] && !objc_msgSend(a1, "isShowingErrorPage"))
    {
      v6 = [*(a1 + 1064) backForwardList];
      v7 = [v6 currentItem];
      v8 = *(a1 + 320);
      *(a1 + 320) = v7;

      v9 = *(a1 + 958);
      v10 = *(a1 + 1216);
      v11 = [objc_alloc(MEMORY[0x277D4A6F0]) initWithURL:v4];
      objc_initWeak(&location, a1);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __46__TabDocument__checkForAppLinkWithCompletion___block_invoke;
      v14[3] = &unk_2781DAD40;
      v12 = v11;
      v15 = v12;
      objc_copyWeak(&v18, &location);
      v17 = v3;
      v13 = v10;
      v16 = v13;
      v19 = v9;
      [v12 decideOpenStrategyWithCompletionHandler:v14];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v5 = *(a1 + 320);
      *(a1 + 320) = 0;

      (*(v3 + 2))(v3, 0);
    }
  }
}

void __46__TabDocument__checkForAppLinkWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) synchronousTargetApplicationProxy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__TabDocument__checkForAppLinkWithCompletion___block_invoke_2;
  block[3] = &unk_2781DAD18;
  objc_copyWeak(v12, (a1 + 56));
  v5 = *(a1 + 48);
  v12[1] = a2;
  v11 = v5;
  v8 = v4;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = *(a1 + 64);
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v12);
}

void __46__TabDocument__checkForAppLinkWithCompletion___block_invoke_2(uint64_t a1)
{
  v24[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained[133] backForwardList], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "currentItem"), v5 = objc_claimAutoreleasedReturnValue(), v6 = *(v3 + 320), v5, v4, v5 == v6))
  {
    v7 = *(a1 + 72);
    if ((atomic_load_explicit(&_ZGVZZZ46__TabDocument__checkForAppLinkWithCompletion__EUb_EUb0_E24systemServiceIdentifiers, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZZ46__TabDocument__checkForAppLinkWithCompletion__EUb_EUb0_E24systemServiceIdentifiers))
    {
      v16 = *MEMORY[0x277D49BB8];
      v24[0] = *MEMORY[0x277D49BC8];
      v24[1] = v16;
      _ZZZZ46__TabDocument__checkForAppLinkWithCompletion__EUb_EUb0_E24systemServiceIdentifiers = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
      __cxa_guard_release(&_ZGVZZZ46__TabDocument__checkForAppLinkWithCompletion__EUb_EUb0_E24systemServiceIdentifiers);
    }

    if (v7 - 1) > 2 || (v8 = _ZZZZ46__TabDocument__checkForAppLinkWithCompletion__EUb_EUb0_E24systemServiceIdentifiers, [*(a1 + 32) bundleIdentifier], v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v8) = objc_msgSend(v8, "containsObject:", v9), v9, (v8))
    {
      v10 = *(v3 + 352);
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x277D28BB8]);
      v12 = *(a1 + 40);
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __46__TabDocument__checkForAppLinkWithCompletion___block_invoke_3;
      v20 = &unk_2781DACF0;
      objc_copyWeak(&v23, (a1 + 64));
      v22 = *(a1 + 56);
      v21 = *(a1 + 48);
      v10 = [v11 initWithAppLink:v12 openActionHandler:&v17];
      [v10 setInitiallyBehindNavigationBar:{(*(a1 + 80) & 1) == 0, v17, v18, v19, v20}];

      objc_destroyWeak(&v23);
    }

    v13 = *(v3 + 320);
    *(v3 + 320) = 0;

    v14 = objc_loadWeakRetained((v3 + 1248));
    v15 = v14;
    if (v10)
    {
      [(TabDocument *)v3 _setAppBannerWhenPainted:v10];
    }

    else if (*(v3 + 959) == 1 && ([v14 tabDocumentShouldDeferAppBannerRemoval:v3] & 1) == 0)
    {
      [v15 removeAppBannerFromTabDocument:v3 animated:0];
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __46__TabDocument__checkForAppLinkWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D66E70]];
    if (*(a1 + 32) && WeakRetained[719] == 1)
    {
      [v4 setObject:? forKeyedSubscript:?];
    }

    v5 = [v6 appLink];
    [v5 openExternallyWithWebBrowserState:v4 referrerURL:0 completionHandler:0];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_contentBlockerStatisticsStore
{
  if (a1)
  {
    v1 = a1;
    v2 = [a1 isPrivateBrowsingEnabled];
    v3 = *(v1 + 640);
    if (v2)
    {
      if (!v3)
      {
        v4 = objc_alloc_init(MEMORY[0x277D49EE8]);
        v5 = *(v1 + 640);
        *(v1 + 640) = v4;
LABEL_7:

        v3 = *(v1 + 640);
      }
    }

    else if (!v3)
    {
      v6 = MEMORY[0x277D49EF0];
      v5 = [(TabDocument *)v1 profileIdentifier];
      v7 = [v6 storeForProfileWithIdentifier:v5];
      v8 = *(v1 + 640);
      *(v1 + 640) = v7;

      goto LABEL_7;
    }

    a1 = v3;
  }

  return a1;
}

- (void)_displayAttributionBannerForHighlight:(unsigned __int8 *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = [objc_alloc(MEMORY[0x277D28C88]) initWithHighlight:v3];
    v5 = [v3 identifier];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__TabDocument__displayAttributionBannerForHighlight___block_invoke;
    v9[3] = &unk_2781DAD68;
    objc_copyWeak(&v11, &location);
    v6 = v5;
    v10 = v6;
    [v4 setCloseActionHandler:v9];
    [v4 setInitiallyBehindNavigationBar:a1[958]];
    [(TabDocument *)a1 _setAppBannerWhenPainted:v4];
    v7 = +[Application sharedApplication];
    v8 = [v7 highlightManager];
    [v8 setPresenter:a1 forHighlightIdentifier:v6];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __53__TabDocument__displayAttributionBannerForHighlight___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained hideBannerForHighlightIdentifier:*(a1 + 32)];
    v3 = [MEMORY[0x277D28C90] sharedTracker];
    [v3 blockBannerForHighlight:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)_checkForHighlight
{
  if (!a1 || ([a1 isPrivateBrowsingEnabled] & 1) != 0)
  {
    return;
  }

  v12 = [*(a1 + 1064) URL];
  v2 = +[Application sharedApplication];
  v3 = [v2 highlightManager];

  if (![v12 safari_isHTTPFamilyURL] || (objc_msgSend(a1, "isShowingErrorPage") & 1) != 0)
  {
    goto LABEL_6;
  }

  v5 = [v3 highlights];
  if ([v5 count])
  {
  }

  else
  {
    v6 = [v3 isFetchingHighlights];

    if ((v6 & 1) == 0)
    {
LABEL_6:
      v4 = *(a1 + 328);
      *(a1 + 328) = 0;
      goto LABEL_7;
    }
  }

  v7 = [*(a1 + 1064) backForwardList];
  v8 = [v7 currentItem];
  v4 = [v8 safari_highlight];

  if (v4)
  {
    [(TabDocument *)a1 _displayAttributionBannerForHighlight:v4];
  }

  else
  {
    v9 = [*(a1 + 1064) backForwardList];
    v10 = [v9 currentItem];
    v11 = *(a1 + 328);
    *(a1 + 328) = v10;

    [v3 updateHighlightForAttributionPresenter:a1];
  }

LABEL_7:
}

- (void)displayAttributionBannerForHighlightIfNeeded:(id)a3
{
  v4 = a3;
  if (![(TabDocument *)self isPrivateBrowsingEnabled])
  {
    v5 = [(_SFWebView *)self->_webView backForwardList];
    v6 = [v5 currentItem];
    backForwardListItemForCurrentHighlightBannerCheck = self->_backForwardListItemForCurrentHighlightBannerCheck;

    if (v6 == backForwardListItemForCurrentHighlightBannerCheck)
    {
      if (!v4 || (self->_appBanner || self->_appBannerPendingFirstPaint) && !self->_appBannerRemovalWasDeferred)
      {
        v11 = self->_backForwardListItemForCurrentHighlightBannerCheck;
        self->_backForwardListItemForCurrentHighlightBannerCheck = 0;
      }

      else
      {
        objc_initWeak(&location, self);
        v8 = [v4 identifier];
        v9 = [MEMORY[0x277D28C90] sharedTracker];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __60__TabDocument_displayAttributionBannerForHighlightIfNeeded___block_invoke;
        v12[3] = &unk_2781DAD90;
        objc_copyWeak(&v15, &location);
        v10 = v8;
        v13 = v10;
        v14 = v4;
        [v9 isBannerBlockedForHighlight:v10 completion:v12];

        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __60__TabDocument_displayAttributionBannerForHighlightIfNeeded___block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained[133] backForwardList];
    v7 = [v6 currentItem];
    v8 = v5[41];

    if (v7 == v8)
    {
      v9 = v5[41];
      v5[41] = 0;

      if (a2)
      {
        v10 = WBS_LOG_CHANNEL_PREFIXInterstellar();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = *(a1 + 32);
          v15 = 138543362;
          v16 = v11;
          _os_log_impl(&dword_215819000, v10, OS_LOG_TYPE_INFO, "Highlight <%{public}@> is in banner block list.", &v15, 0xCu);
        }
      }

      else
      {
        v12 = *(a1 + 40);
        v13 = [v5[133] backForwardList];
        v14 = [v13 currentItem];
        [v14 safari_setHighlight:v12];

        [(TabDocument *)v5 _displayAttributionBannerForHighlight:?];
      }
    }
  }
}

- (WKBackForwardListItem)currentBackForwardListItem
{
  v2 = [(_SFWebView *)self->_webView backForwardList];
  v3 = [v2 currentItem];

  return v3;
}

- (void)hideBannerForHighlightIdentifier:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(SFPinnableBanner *)self->_appBanner highlight];
    v5 = [v4 identifier];
    v6 = [v11 isEqualToString:v5];

    if (v6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained removeAppBannerFromTabDocument:self animated:1];

      appBanner = self->_appBanner;
      self->_appBanner = 0;

      v9 = [(_SFWebView *)self->_webView backForwardList];
      v10 = [v9 currentItem];
      [v10 safari_setHighlight:0];
    }
  }
}

- (void)_webView:(id)a3 mouseDidMoveOverElement:(id)a4 withFlags:(int64_t)a5 userInfo:(id)a6
{
  v21 = a3;
  v10 = a4;
  v11 = a6;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      v13 = [WeakRetained rootViewController];
      v14 = [v13 statusBarView];

      v15 = [v11 safari_URLForKey:*MEMORY[0x277CDB9D8]];
      v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277CDB9C8]];
      v17 = [v11 objectForKeyedSubscript:*MEMORY[0x277CDB9D0]];
      v18 = objc_alloc(MEMORY[0x277D28CA8]);
      v19 = [(TabDocument *)self URL];
      v20 = [v18 initWithHoveredLinkURL:v15 forCurrentURL:v19 modifierFlags:a5 frame:v16 targetFrame:v17];
      [v14 setStatusMessage:v20];
    }
  }
}

- (void)addPassesViewControllerDidFinish:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocument:self dismissViewControllerAnimated:v4];

  v6 = [(TabDocument *)self URL];
  if (v6)
  {
  }

  else if (![(TabDocument *)self isClosed])
  {

    [(TabDocument *)self _closeTabDocumentAnimated:0];
  }
}

- (void)_webView:(id)a3 storeAppHighlight:(id)a4 inNewGroup:(BOOL)a5 requestOriginatedInApp:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v20 = a3;
  v10 = a4;
  v11 = +[Application sharedApplication];
  v12 = [v11 systemNoteTakingController];

  v13 = objc_alloc(MEMORY[0x277CC1EF0]);
  v14 = [v13 initWithActivityType:*MEMORY[0x277CCA850]];
  v15 = [(NSUserActivity *)self->_userActivity title];
  [v14 setTitle:v15];

  v16 = [(NSUserActivity *)self->_userActivity webpageURL];
  [v14 setWebpageURL:v16];

  v17 = [v10 highlight];
  v18 = [v10 text];
  v19 = [v10 image];
  [v12 saveHighlightsData:v17 selectedText:v18 selectedImage:v19 newGroup:v7 originatedInApp:v6 webView:v20 userActivity:v14];
}

- (void)sfWebViewDidChangeSafeAreaInsets:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentDidChangeSafeAreaInsets:self];
}

- (void)sfWebViewDidDismissFindOnPage:(id)a3
{
  if ([(TabDocument *)self isPrivateBrowsingEnabled])
  {
    v4 = persistedFindInteractionSearchText;
    v5 = [(_SFWebView *)self->_webView findInteraction];
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = &stru_2827BF158;
    }

    v11 = v5;
    [v5 setSearchText:v6];

    [MEMORY[0x277D754E8] _setGlobalFindBuffer:persistedFindInteractionSearchText];
    v7 = MEMORY[0x277CE3850];
    if (persistedFindInteractionSearchText)
    {
      v8 = persistedFindInteractionSearchText;
    }

    else
    {
      v8 = &stru_2827BF158;
    }

    [v7 _setStringForFind:v8];
  }

  else
  {
    v12 = [(_SFWebView *)self->_webView findInteraction];
    v9 = [v12 searchText];
    v10 = persistedFindInteractionSearchText;
    persistedFindInteractionSearchText = v9;
  }
}

- (id)sfWebView:(id)a3 didStartDownload:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CDB7A0] sharedDownloadDispatcher];
  v7 = [v6 downloadFromWKDownload:v5 userInitiatedAction:self->_lastUserInitiatedAction];
  v8 = [MEMORY[0x277CDB7A8] sharedManager];
  [v7 setDelegate:v8];
  [v8 deferAddingDownloadWhenStarted:v7];
  objc_storeStrong(&self->_activeDownload, v7);

  return v7;
}

- (id)overrideUndoManagerForSFWebView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained overridesUndoManagerForClosedTabs])
  {
    v4 = [WeakRetained tabController];
    v5 = [v4 undoManager];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)sfWebViewShouldFillStringForFind:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained tabDocumentShouldFillStringForFind:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)sfWebViewCanFindNextOrPrevious:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained tabDocumentCanFindNextOrPrevious:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)statusBarIndicatorTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained tabDocumentShouldBecomeActive:self];
}

- (BOOL)canOverrideStatusBar
{
  v2 = self;
  v3 = [(TabDocument *)self browserController];
  v4 = [v3 tabCollectionViewProvider];
  v5 = [v4 tabThumbnailCollectionView];

  v6 = [v2 isActive];
  if (v6)
  {
    v2 = [MEMORY[0x277D75128] sharedApplication];
    if ([v2 applicationState] != 2)
    {
      v8 = 0;
LABEL_9:

      goto LABEL_10;
    }
  }

  v7 = v5;
  v8 = [v7 presentationState] != 1 && objc_msgSend(v7, "presentationState") != 2;

  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (void)muteMediaCapture
{
  [(TabDocument *)self mediaStateIcon];
  if ((_SFMediaStateIconIsMuted() & 1) == 0)
  {
    webView = self->_webView;

    [(_SFWebView *)webView _setPageMuted:2];
  }
}

- (void)toggleMediaStateMuted
{
  [(TabDocument *)self mediaStateIcon];
  if (_SFMediaStateIconIsMuted())
  {
    webView = self->_webView;
    v4 = 0;
  }

  else
  {
    [(TabDocument *)self mediaStateIcon];
    v5 = _SFMediaStateIconMirroredMediaCaptureState();
    webView = self->_webView;
    if (v5)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  [(_SFWebView *)webView _setPageMuted:v4];
  [(TabDocument *)self mediaStateIcon];
  if ((_SFMediaStateIconMirroredMediaCaptureState() & 1) == 0)
  {
    [(TabDocument *)self mediaStateIcon];
    v6 = _SFAudioStateForTogglingNonMirroredMediaStateIcon();

    [(TabDocument *)self setAudioState:v6 needsDelay:0];
  }
}

- (void)toggleGlobalMediaStateMuted
{
  if ([(SFUnifiedTabBarItem *)self->_unifiedTabBarItem globalMediaStateIcon]== 6)
  {

    [(TabDocument *)self unmuteOtherTabs];
  }

  else
  {

    [(TabDocument *)self muteOtherTabs];
  }
}

- (BOOL)atLeastOneOtherTabPlayingAudio
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained browserWindowController];
  v5 = [v4 tabsWithSound];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__TabDocument_atLeastOneOtherTabPlayingAudio__block_invoke;
  v7[3] = &unk_2781D6F98;
  v7[4] = v2;
  LOBYTE(v2) = [v5 safari_containsObjectPassingTest:v7];

  return v2;
}

- (unint64_t)numberOfOtherUnmutedTabsPlayingAudio
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained browserWindowController];
  v5 = [v4 tabsWithSound];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__TabDocument_numberOfOtherUnmutedTabsPlayingAudio__block_invoke;
  v9[3] = &unk_2781DADB8;
  v9[4] = self;
  v6 = [v5 indexesOfObjectsPassingTest:v9];
  v7 = [v6 count];

  return v7;
}

uint64_t __51__TabDocument_numberOfOtherUnmutedTabsPlayingAudio__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 isMuted] ^ 1;
  }

  return v5;
}

- (void)muteOtherTabs
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained browserWindowController];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 tabsWithSound];
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

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (v9 != self)
        {
          [(TabDocument *)v9 mute];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)unmuteOtherTabs
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained browserWindowController];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 tabsWithSound];
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

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (v9 != self)
        {
          [(TabDocument *)v9 unmute];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (NSString)tabGroupUUID
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  v5 = [v4 tabGroups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__TabDocument_tabGroupUUID__block_invoke;
  v9[3] = &unk_2781DAE08;
  v9[4] = self;
  v6 = [v5 safari_firstObjectPassingTest:v9];

  v7 = [v6 uuid];

  return v7;
}

uint64_t __27__TabDocument_tabGroupUUID__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabs];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__TabDocument_tabGroupUUID__block_invoke_2;
  v6[3] = &unk_2781DADE0;
  v6[4] = *(a1 + 32);
  v4 = [v3 safari_containsObjectPassingTest:v6];

  return v4;
}

uint64_t __27__TabDocument_tabGroupUUID__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuidString];
  v5 = WBSIsEqual();

  return v5;
}

- (void)mediaStateDidChangeNeedsDelay:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  [*(a1 + 512) invalidate];
  v4 = *(a1 + 512);
  *(a1 + 512) = 0;

  v5 = *(a1 + 480);
  if ((v5 & 2) != 0)
  {
    v8 = a1;
    v9 = 2;
  }

  else if (v5)
  {
    v8 = a1;
    v9 = 1;
  }

  else if ((v5 & 8) != 0)
  {
    v8 = a1;
    v9 = 4;
  }

  else if ((v5 & 4) != 0)
  {
    v8 = a1;
    v9 = 3;
  }

  else
  {
    if (*(a1 + 488))
    {
      if (a2)
      {
        v6 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:a1 target:sel__updateAudioUI_ selector:0 userInfo:0 repeats:1.75];
        v7 = *(a1 + 512);
        *(a1 + 512) = v6;

        v10 = [MEMORY[0x277CBEB88] currentRunLoop];
        [v10 addTimer:*(a1 + 512) forMode:*MEMORY[0x277CBE738]];
      }

      else
      {

        [a1 _updateAudioUI:0];
      }

      return;
    }

    v8 = a1;
    v9 = 0;
  }

  [(TabDocument *)v8 setMediaStateIcon:v9];
}

- (void)addMediaSuspensionReason:(unint64_t)a3
{
  if (a3)
  {
    mediaSuspensionReasons = self->_mediaSuspensionReasons;
    if (!mediaSuspensionReasons)
    {
      v6 = [(TabDocument *)self webView];
      [v6 _suspendAllMediaPlayback];

      [(TabDocument *)self dismissSiriReaderMediaSessionImmediately:0];
      mediaSuspensionReasons = self->_mediaSuspensionReasons;
    }

    self->_mediaSuspensionReasons = mediaSuspensionReasons | a3;
  }
}

- (void)removeMediaSuspensionReason:(unint64_t)a3
{
  if (a3)
  {
    v3 = (self->_mediaSuspensionReasons & ~a3) == 0;
    self->_mediaSuspensionReasons &= ~a3;
    if (v3)
    {
      v4 = [(TabDocument *)self webView];
      [v4 _resumeAllMediaPlayback];
    }
  }
}

- (BOOL)_handleTwoFingerTapOnLinkWithContext:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 992));
    v5 = [v3 navigationAction];
    v6 = [v5 request];
    v7 = [v6 URL];

    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [v8 BOOLForKey:*MEMORY[0x277D29270]];

    v10 = [WeakRetained loadURLInNewTab:v7 inBackground:v9];
    v11 = [MEMORY[0x277D499B8] sharedLogger];
    v12 = [WeakRetained tabCollectionViewProvider];
    [v11 didOpenNewTabWithURLWithTrigger:5 tabCollectionViewType:{objc_msgSend(v12, "visibleTabCollectionViewType")}];

    if (v9)
    {
      v13 = [v3 webView];
      v14 = [v3 navigationAction];
      v15 = [WeakRetained tabCollectionViewProvider];
      v16 = [v15 hasTabBar];

      if ((v16 & 1) == 0)
      {
        [v14 _clickLocationInRootViewCoordinates];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __52__TabDocument__handleTwoFingerTapOnLinkWithContext___block_invoke;
        v18[3] = &unk_2781DAE30;
        v18[4] = a1;
        [v13 _requestActivatedElementAtPosition:v18 completionBlock:?];
      }
    }
  }

  return a1 != 0;
}

- (NSArray)mediaStateMuteButtonMenuElements
{
  v25[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained browserWindowController];
  v5 = [v4 tabsWithSound];

  if ([v5 count])
  {
    v6 = [v5 count];
    v7 = [v5 containsObject:self];
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [(TabDocument *)&self->super.isa _muteToggleMenuElement];
    [v8 safari_addObjectUnlessNil:v9];
    v10 = v6 - v7;

    v11 = [(TabDocument *)&self->super.isa _muteToggleMenuElementForOtherTabsWithCount:v10];
    [v8 safari_addObjectUnlessNil:v11];

    v12 = [MEMORY[0x277CBEB18] array];
    if (v10)
    {
      v13 = MEMORY[0x277D750C8];
      v14 = [v5 count];
      v15 = MEMORY[0x277CCACA8];
      v16 = _WBSLocalizedString();
      v17 = [v15 localizedStringWithFormat:v16, v14];

      v18 = [v13 actionWithTitle:v17 image:0 identifier:0 handler:&__block_literal_global_492];

      [v18 setAttributes:1];
      [v12 addObject:v18];

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __47__TabDocument_mediaStateMuteButtonMenuElements__block_invoke_2;
      v24[3] = &unk_2781DAE58;
      v24[4] = self;
      v19 = [v5 safari_mapObjectsUsingBlock:v24];
      [v12 addObjectsFromArray:v19];
    }

    v20 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v8];
    v25[0] = v20;
    v21 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v12];
    v25[1] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  return v22;
}

- (id)_muteToggleMenuElement
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[138] mediaStateIcon];
    if ((v2 - 7) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v3 = v2;
      v4 = SFTitleForTogglingMediaStateIcon();
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __37__TabDocument__muteToggleMenuElement__block_invoke;
      v6[3] = &unk_2781DAE80;
      v6[4] = v1;
      v6[5] = v3;
      v1 = [MEMORY[0x277D750C8] actionWithTitle:v4 image:0 identifier:0 handler:v6];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (id)_muteToggleMenuElementForOtherTabsWithCount:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    if ([a1 atLeastOneOtherTabPlayingAudio])
    {
      v4 = [v2[138] globalMediaStateIcon];
      if (a2 > 1)
      {
        SFMultipleOtherTabsTitleForTogglingMediaStateIcon();
      }

      else
      {
        SFOtherTabsTitleForTogglingMediaStateIcon();
      }
      v5 = ;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __59__TabDocument__muteToggleMenuElementForOtherTabsWithCount___block_invoke;
      v7[3] = &unk_2781DAE80;
      v7[4] = v2;
      v7[5] = v4;
      v2 = [MEMORY[0x277D750C8] actionWithTitle:v5 image:0 identifier:0 handler:v7];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id __47__TabDocument_mediaStateMuteButtonMenuElements__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [(TabDocument *)*(a1 + 32) _actionForSwitchingToTabPlayingAudio:a2];

  return v2;
}

- (id)_actionForSwitchingToTabPlayingAudio:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = MEMORY[0x277D750C8];
    v5 = [v3 title];
    v6 = [v3 icon];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__TabDocument__actionForSwitchingToTabPlayingAudio___block_invoke;
    v13[3] = &unk_2781DA9F8;
    objc_copyWeak(&v15, &location);
    v7 = v3;
    v14 = v7;
    v8 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:v13];

    WeakRetained = objc_loadWeakRetained(a1 + 124);
    v10 = [WeakRetained tabController];
    v11 = [v10 activeTabDocument];

    if (v11 == v7)
    {
      [v8 setState:1];
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __37__TabDocument__muteToggleMenuElement__block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  if (*(v2 + 8) == 6)
  {
    return [v1 unmute];
  }

  else
  {
    return [v1 mute];
  }
}

uint64_t __59__TabDocument__muteToggleMenuElementForOtherTabsWithCount___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  if (*(v2 + 8) == 6)
  {
    return [v1 unmuteOtherTabs];
  }

  else
  {
    return [v1 muteOtherTabs];
  }
}

void __52__TabDocument__actionForSwitchingToTabPlayingAudio___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained browserController];
  v3 = [*(a1 + 32) uuid];
  v4 = [*(a1 + 32) tabGroupUUID];
  [v2 setActiveAudioPlayingTabWithUUID:v3 tabGroupUUID:v4];
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 preferences:(id)a5 decisionHandler:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = [v11 targetFrame];
  if (v14 && ([v11 targetFrame], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isMainFrame"), v15, v14, !v16))
  {
    v20 = 0;
  }

  else
  {
    ++self->_concurrentNavigationActionPolicyDecisions;
    v17 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      concurrentNavigationActionPolicyDecisions = self->_concurrentNavigationActionPolicyDecisions;
      *buf = 134218240;
      v30 = self;
      v31 = 2048;
      v32 = concurrentNavigationActionPolicyDecisions;
      _os_log_impl(&dword_215819000, v17, OS_LOG_TYPE_INFO, "(%p) Concurrent navigation action policy decisions: %zd", buf, 0x16u);
    }

    if (self->_concurrentNavigationActionPolicyDecisions >= 21)
    {
      v19 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [TabDocument webView:v19 decidePolicyForNavigationAction:? preferences:? decisionHandler:?];
      }

      [v10 _killWebContentProcessAndResetState];
    }

    v20 = 1;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __83__TabDocument_webView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke;
  v23[3] = &unk_2781DAEA8;
  objc_copyWeak(&v26, &location);
  v21 = v11;
  v24 = v21;
  v22 = v13;
  v25 = v22;
  v27 = v20;
  [(TabDocument *)self _internalWebView:v10 decidePolicyForNavigationAction:v21 preferences:v12 decisionHandler:v23];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __83__TabDocument_webView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [(TabDocument *)WeakRetained _didDecideNavigationPolicy:a2 forNavigationAction:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
  if (WeakRetained)
  {
    v7 = [*(a1 + 32) targetFrame];
    if (v7 && ([*(a1 + 32) targetFrame], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isMainFrame"), v8, v7, !v9))
    {
      v10 = 0;
    }

    else
    {
      v10 = [*(a1 + 32) safari_shouldDonateWithPolicy:a2];
    }

    WeakRetained[880] = v10;
    if (*(a1 + 56) == 1)
    {
      --*(WeakRetained + 31);
      v11 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(WeakRetained + 31);
        v13 = 134218240;
        v14 = WeakRetained;
        v15 = 2048;
        v16 = v12;
        _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_INFO, "(%p) Concurrent navigation action policy decisions: %zd", &v13, 0x16u);
      }
    }
  }
}

- (void)_internalWebView:(void *)a3 decidePolicyForNavigationAction:(void *)a4 preferences:(void *)a5 decisionHandler:
{
  v93 = a2;
  v9 = a3;
  v90 = a4;
  v92 = a5;
  if (a1)
  {
    v89 = [v9 request];
    v91 = [v89 URL];
    v10 = [v9 navigationType];
    objc_initWeak(location, a1);
    if ((*(a1 + 1224) & 8) != 0 || *(a1 + 720) == 1)
    {
      v11 = [v9 targetFrame];
      v12 = [v11 isMainFrame];

      if (v12)
      {
        v13 = *(a1 + 544);
        if (v13)
        {
          (*(v13 + 16))(v13, 0);
        }

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke;
        aBlock[3] = &unk_2781DAED0;
        objc_copyWeak(&v124, location);
        v123 = v92;
        v120 = v93;
        v121 = v9;
        v122 = v90;
        v14 = _Block_copy(aBlock);
        v15 = *(a1 + 544);
        *(a1 + 544) = v14;

        objc_destroyWeak(&v124);
        goto LABEL_93;
      }
    }

    v16 = [v9 targetFrame];
    v86 = v16;
    if (v16)
    {
      v17 = [v16 isMainFrame];
    }

    else
    {
      v17 = 1;
    }

    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_2;
    v112[3] = &unk_2781DAF20;
    objc_copyWeak(v117, location);
    v84 = v92;
    v116 = v84;
    v18 = v9;
    v113 = v18;
    v118 = v17;
    v19 = v91;
    v114 = v19;
    v117[1] = v10;
    v85 = v93;
    v115 = v85;
    v88 = _Block_copy(v112);
    v20 = [v18 _userInitiatedAction];
    v21 = *(a1 + 400);
    *(a1 + 400) = v20;

    v22 = (*(a1 + 707) & 1) == 0 && (*(a1 + 955) & 1) == 0 && *(a1 + 1240) == 0;
    [*(a1 + 48) setNavigationSource:v22];
    if ([v18 _syntheticClickType] == 2)
    {
      v87 = [objc_alloc(MEMORY[0x277CDB8D0]) initWithWebView:v85 navigationAction:v18];
      if ([(TabDocument *)a1 _handleTwoFingerTapOnLinkWithContext:v87])
      {
        goto LABEL_17;
      }
    }

    if (v10 < 2)
    {
      v23 = v17;
    }

    else
    {
      v23 = 0;
    }

    if (v23 == 1)
    {
      v87 = [MEMORY[0x277D28F40] builder];
      [v87 setNavigationType:v10];
      v24 = [v87 navigationIntentWithURL:v19];
      if ([v24 policy] == 6)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 1248));
        v26 = [WeakRetained tabDocumentCanDownloadFile:a1];

        if (v26)
        {
          [v18 _clickLocationInRootViewCoordinates];
          v28 = v27;
          v30 = v29;
          v105[0] = MEMORY[0x277D85DD0];
          v105[1] = 3221225472;
          v105[2] = __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_504;
          v105[3] = &unk_2781DAF48;
          v106 = v24;
          v107 = a1;
          v108 = v85;
          v109 = v89;
          v110 = v18;
          v111 = v88;
          [v108 _requestActivatedElementAtPosition:v105 completionBlock:{v28, v30}];
        }

        else
        {
          (*(v88 + 2))(v88, 0);
        }

        goto LABEL_44;
      }

      if ([v24 policy])
      {
        if ([v24 opensInNewTab])
        {
          v31 = [v24 shouldOrderToForeground] ^ 1;
        }

        else
        {
          v31 = 0;
        }

        if ([v24 policy] == 5)
        {
          v33 = 1;
        }

        else
        {
          v33 = v31;
        }

        if (v33 == 1)
        {
          [v18 _clickLocationInRootViewCoordinates];
          v35 = v34;
          v37 = v36;
          v102[0] = MEMORY[0x277D85DD0];
          v102[1] = 3221225472;
          v102[2] = __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_2_505;
          v102[3] = &unk_2781DAF70;
          v103 = v24;
          v104 = a1;
          [v85 _requestActivatedElementAtPosition:v102 completionBlock:{v35, v37}];
        }

        else
        {
          [a1 dispatchNavigationIntent:v24];
        }

        (*(v88 + 2))(v88, 0);
        goto LABEL_44;
      }
    }

    if (v17 && [v18 safari_isEligibleToSpawnNewTabFromPinnedTab] && objc_msgSend(a1, "shouldSpawnNewTabOnNavigationFromPinnedTabWithDestinationURL:", v19))
    {
      v87 = [MEMORY[0x277D28F40] builder];
      [v87 setNavigationType:v10];
      [v87 setPrefersOpenInNewTabReusingExistingBlankTabIfPossible:1];
      v32 = [v87 navigationIntentWithURL:v19];
      if ([v32 policy])
      {
        [a1 dispatchNavigationIntent:v32];
        (*(v88 + 2))(v88, 0);

        goto LABEL_92;
      }
    }

    if ([v18 _isUserInitiated])
    {
      *(a1 + 1240) = 0;
      *(a1 + 978) = 0;
    }

    v87 = objc_loadWeakRetained((a1 + 992));
    if ([*(a1 + 1304) crashesSinceLastSuccessfulLoad])
    {
      v38 = [v18 targetFrame];
      if ([v38 isMainFrame])
      {
        v39 = [v18 targetFrame];
        v40 = [v39 request];
        v41 = [v40 URL];

        if (v41)
        {
          [v87 setShowingCrashBanner:0 animated:1];
        }
      }

      else
      {
      }
    }

    if (!v89)
    {
LABEL_17:
      (*(v88 + 2))(v88, 0);
LABEL_92:

      objc_destroyWeak(v117);
LABEL_93:
      objc_destroyWeak(location);

      goto LABEL_94;
    }

    v42 = *(a1 + 707);
    *(a1 + 905) = v42;
    if ((v42 & 1) == 0)
    {
      *(a1 + 707) = v10 != -1;
    }

    if (v17 && (([v19 safari_isHTTPFamilyURL] & 1) != 0 || objc_msgSend(v19, "safari_hasScheme:", @"ftp")) && objc_msgSend(v19, "safari_hasUserOrPassword"))
    {
      v43 = [v19 safari_URLByDeletingUserAndPassword];
      if (v43)
      {
        if (objc_opt_respondsToSelector())
        {
          v44 = MEMORY[0x277CBABA0];
          v45 = [v19 safari_URLByDeletingUserAndPassword];
          v46 = [v44 safari_nonAppInitiatedRequestWithURL:v45];
          [v90 _setAlternateRequest:v46];

          (*(v84 + 2))(v84, 1, v90);
        }

        else
        {
          (*(v88 + 2))(v88, 0);
        }
      }

      goto LABEL_91;
    }

    if ([v18 safari_shouldProhibitNavigationToSafariSpecificURL])
    {
      goto LABEL_17;
    }

    v47 = [a1 readingListBookmarkID];
    v48 = [v19 sf_isOfflineReadingListURL];
    if (v47)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    if (v49 == 1)
    {
      v50 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      v24 = [v50 bookmarkWithID:v47];

      if (([v24 isFullArchiveAvailable] & 1) == 0)
      {
        (*(v88 + 2))(v88, 0);
        v54 = MEMORY[0x277CBEBC0];
        v55 = [v24 address];
        v56 = [v54 safari_URLWithDataAsString:v55];
        v57 = [a1 loadURL:v56 userDriven:*(a1 + 707)];

LABEL_44:
        goto LABEL_92;
      }
    }

    if (*(a1 + 1368) && v10 != -1)
    {
      [a1 clearTabReuseURL];
    }

    if ([v18 _sf_shouldAskAboutInsecureFormSubmission])
    {
      v52 = *(a1 + 1304);
      v43 = _WBSLocalizedString();
      [v52 addFormAlertWithTitle:v43 decisionHandler:v88];
LABEL_91:

      goto LABEL_92;
    }

    if (v10 == 4)
    {
      v53 = *(a1 + 1304);
      v43 = WBSLocalizedStringWithValue(@"Are you sure you want to submit this form again?", v51);
      [v53 addFormAlertWithTitle:v43 decisionHandler:v88];
      goto LABEL_91;
    }

    v58 = [v18 _isUserInitiated];
    if (v10)
    {
      v59 = 0;
    }

    else
    {
      v59 = v17;
    }

    if (v59 == 1)
    {
      v82 = +[(WBSParsecDSession *)UniversalSearchSession];
      v60 = [a1 browserController];
      v83 = [v60 activeSearchEngine];

      v61 = [v87 idOfParsecQueryOriginatingFromSearchSuggestion];
      if (v61)
      {
        v62 = v58;
      }

      else
      {
        v62 = 0;
      }

      if (v62 == 1)
      {
        v63 = [a1 committedURL];
        if ([v83 urlIsValidSearch:v63])
        {
          v64 = [v83 urlIsValidSearch:v19];

          if ((v64 & 1) == 0)
          {
            [v82 sendCBAEngagementFeedback:v19 query:v61];
          }
        }

        else
        {
        }
      }

      [v87 clearParsecQueryOriginatingFromSearchSuggestion];
      v65 = [v18 targetFrame];
      v66 = [(TabDocument *)a1 _readingListArchiveNextPageLinkForRequest:v89 targetFrame:v65];

      if (v66)
      {
        (*(v88 + 2))(v88, 0);
        v67 = [MEMORY[0x277CBEBC0] fileURLWithPath:v66 isDirectory:0];
        v68 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
        v69 = [v68 bookmarkWithID:{objc_msgSend(a1, "readingListBookmarkID")}];
        [(TabDocument *)a1 _loadURL:v67 fromBookmark:v69];

        goto LABEL_92;
      }
    }

    if (v17)
    {
      v70 = [v18 _originalURL];
      v71 = *(a1 + 568);
      *(a1 + 568) = v70;

      v24 = [*(a1 + 568) absoluteString];
      if (v58)
      {
        v72 = [(WebBookmark *)*(a1 + 312) safari_bestCurrentURL];
        v73 = [v72 absoluteString];
        v74 = [v73 isEqualToString:v24];

        if ((v74 & 1) == 0)
        {
          v75 = *(a1 + 312);
          *(a1 + 312) = 0;
        }

        v76 = [(WebBookmark *)*(a1 + 1232) safari_bestCurrentURL];
        v77 = [v76 absoluteString];
        v78 = [v77 isEqualToString:v24];

        if ((v78 & 1) == 0)
        {
          [a1 setReadingListBookmark:0];
        }
      }

      else if (v10 == 2)
      {
        v79 = *(a1 + 312);
        *(a1 + 312) = 0;
      }

      if ([(TabDocument *)a1 _isNewDocumentViewNecessaryForURL:v19])
      {
        (*(v84 + 2))(v84, 0, 0);
        v80 = [a1 loadRequest:v89 userDriven:*(a1 + 707)];
        goto LABEL_44;
      }
    }

    if ((*(a1 + 610) & 1) == 0 && (*(a1 + 611) & 1) == 0 && ((v58 ^ 1) & 1) == 0 && ((v17 ^ 1) & 1) == 0)
    {
      [(TabDocument *)a1 _hidePrivateBrowsingPrivacyProtectionsBannerIfNecessary];
    }

    v81 = *(a1 + 707);
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_3_518;
    v94[3] = &unk_2781DAF98;
    objc_copyWeak(&v100, location);
    v98 = v84;
    v101 = v81;
    v95 = v85;
    v96 = v18;
    v97 = v90;
    v99 = v88;
    [(TabDocument *)a1 _determineResultOfLoadingRequest:v89 inMainFrame:v17 userInitiated:(v58 | v81) & 1 completionHandler:v94];

    objc_destroyWeak(&v100);
    goto LABEL_92;
  }

LABEL_94:
}

void __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    _Block_copy(WeakRetained[68]);
    v5 = v6[68];
    v6[68] = 0;

    WeakRetained = v6;
  }

  if (a2 && ![WeakRetained isLoading])
  {
    [(TabDocument *)v6 _internalWebView:*(a1 + 40) decidePolicyForNavigationAction:*(a1 + 48) preferences:*(a1 + 56) decisionHandler:?];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (a2 && [*(a1 + 32) _sf_shouldPerformDownload])
    {
      v5 = objc_loadWeakRetained(WeakRetained + 156);
      [v5 tabDocumentCanDownloadFile:WeakRetained];

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      if (*(a1 + 80) == 1)
      {
        v6 = +[Application sharedApplication];
        v7 = [v6 historyController];
        v8 = [(TabDocument *)WeakRetained profileIdentifier];
        v9 = [v7 frequentlyVisitedSitesControllerForProfileIdentifier:v8 loadIfNeeded:0];

        [v9 sendAnalyticsIfNecessaryForURLNavigation:*(a1 + 40)];
        v10 = *(a1 + 80);
      }

      else
      {
        v10 = 0;
      }

      v11 = WeakRetained[84];
      v12 = *(a1 + 40);
      v13 = *(a1 + 72);
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_3;
      v20 = &unk_2781DAEF8;
      objc_copyWeak(v24, (a1 + 64));
      v23 = *(a1 + 56);
      v21 = *(a1 + 40);
      v25 = *(a1 + 80);
      v22 = *(a1 + 48);
      v24[1] = a2;
      [v11 websitePoliciesForURL:v12 isForMainFrameNavigation:v10 & 1 navigationType:v13 completionHandler:&v17];
      if (a2)
      {
        v14 = [MEMORY[0x277CDB8F8] sharedController];
        v15 = [*(a1 + 32) sourceFrame];
        v16 = [v15 _handle];
        [v14 didCommitLoadForFrameWithIdentifier:{objc_msgSend(v16, "hash")}];
      }

      else
      {
        [WeakRetained[22] cancelFluidProgressWithProgressStateSource:{WeakRetained, v17, v18, v19, v20, v21}];
        [(TabDocument *)WeakRetained _didFinishLoading];
      }

      objc_destroyWeak(v24);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_106;
  }

  if (WeakRetained[592] == 1)
  {
    [v3 _setVisibilityAdjustmentSelectorsIncludingShadowHosts:MEMORY[0x277CBEBF8]];
  }

  v72 = [MEMORY[0x277D4A008] sharedManager];
  if (*(v5 + 610) == 1)
  {
    [v72 clearPrivateRelayFailClosedExceptionIfNecessaryForURL:*(a1 + 32)];
  }

  if ([v72 shouldPrivateRelayFailClosedExceptionApplyForURL:*(a1 + 32)])
  {
    [v3 _setAllowPrivacyProxy:0];
    [(TabDocument *)v5 _disablePrivateRelaySetting:?];
  }

  else if ([v72 wasExceptionClearedForCurrentBrowsingSession:*(a1 + 32)])
  {
    v6 = *(v5 + 600);
    *(v5 + 600) = 0;
  }

  v7 = [*(a1 + 32) safari_hasSameSiteAsURL:*(v5 + 600)];
  if (*(a1 + 72) != 1)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v8 = [*(a1 + 32) safari_isSafariWebExtensionURL];
  v9 = v8;
  if ((*(a1 + 72) & 1) == 0)
  {
LABEL_16:
    v10 = [*(a1 + 40) _mainFrameURL];
    v70 = [v10 safari_isSafariWebExtensionURL];

    if (v9)
    {
      goto LABEL_17;
    }

    if (v70)
    {
      v12 = [MEMORY[0x277D4A7B8] sharedManager];
      [v3 _setAllowPrivacyProxy:{objc_msgSend(v12, "isPrivacyProxySetToTrackersAndWebsites")}];

      v11 = 0;
      v70 = 1;
      goto LABEL_30;
    }

    goto LABEL_20;
  }

  if (v8)
  {
    v70 = 0;
LABEL_17:
    [v3 _setAllowPrivacyProxy:0];
    v11 = 1;
    goto LABEL_30;
  }

LABEL_20:
  if ((!v7 || *(v5 + 610) == 1) && *(a1 + 72) == 1 && ([v5 isShowingErrorPage] & 1) == 0)
  {
    v13 = *(v5 + 600);
    *(v5 + 600) = 0;

    v11 = 0;
    v70 = 0;
    *(v5 + 948) = 0;
  }

  else if ([*(a1 + 32) isEqual:*(v5 + 600)])
  {
    [v3 _setAllowPrivacyProxy:(*(v5 + 608) & 1) == 0];
    v11 = 0;
    v70 = 0;
    *(v5 + 609) = *(v5 + 608) ^ 1;
  }

  else
  {
    if (v7)
    {
      [v3 _setAllowPrivacyProxy:*(v5 + 609)];
    }

    v11 = 0;
    v70 = 0;
  }

LABEL_30:
  if ([v5 isControlledByAutomation])
  {
    v14 = +[Application sharedApplication];
    v15 = [v14 automationController];
    v16 = [v15 automationSession];
    v17 = [v16 configuration];
    v18 = [v17 alwaysAllowAutoplay];

    if (v18)
    {
      [v3 _setAutoplayPolicy:1];
    }
  }

  v19 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v69 = [v19 safari_enableAdvancedPrivacyProtections:{objc_msgSend(v5, "isPrivateBrowsingEnabled")}];

  if (v11)
  {
    v20 = [v5 isPrivateBrowsingEnabled];
    v21 = 0;
LABEL_37:
    [v3 safari_setAdvancedPrivacyProtectionsEnabled:v21 privateBrowsing:v20];
    goto LABEL_49;
  }

  if (v70)
  {
    v20 = [v5 isPrivateBrowsingEnabled];
    v21 = v69;
    goto LABEL_37;
  }

  v22 = [v5 isPrivateBrowsingEnabled];
  if ([*(a1 + 32) isEqual:*(v5 + 624)])
  {
    v23 = *(v5 + 632) ^ 1;
    *(v5 + 633) = v23;
  }

  else
  {
    [*(a1 + 32) host];
    v67 = v66 = v22;
    v24 = [v67 safari_highLevelDomainFromHost];
    v25 = (v5 + 624);
    v26 = [*(v5 + 624) host];
    v27 = [v26 safari_highLevelDomainFromHost];
    v28 = [v24 isEqualToString:v27];

    if (v28)
    {
      objc_storeStrong((v5 + 624), *(a1 + 32));
      v23 = *(v5 + 633);
    }

    else if (*(a1 + 72) == 1)
    {
      v29 = *v25;
      *v25 = 0;

      v23 = v69;
    }

    else
    {
      v23 = 0;
    }

    v22 = v66;
  }

  if (*(v5 + 634) != v69)
  {
    v23 = v69;
  }

  *(v5 + 634) = v69;
  [v3 safari_setAdvancedPrivacyProtectionsEnabled:v23 & 1 privateBrowsing:v22];
LABEL_49:
  if (*(a1 + 72) == 1 && *(v5 + 136) == 1)
  {
    v30 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_215819000, v30, OS_LOG_TYPE_INFO, "Performing applicable HTTPS upgrade", buf, 2u);
    }

    v31 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v32 = [v31 BOOLForKey:*MEMORY[0x277D4A5E0]];

    if (v32)
    {
      [v3 _setNetworkConnectionIntegrityPolicy:{objc_msgSend(v3, "_networkConnectionIntegrityPolicy") | 4}];
      v33 = [*(a1 + 32) host];
      v34 = [v33 safari_highLevelDomainFromHost];
      v35 = WBSIsEqual();

      if (!v35)
      {
        v37 = *(v5 + 656);
        *(v5 + 656) = 0;

        goto LABEL_59;
      }

      v36 = [v3 _networkConnectionIntegrityPolicy] | 8;
    }

    else
    {
      v36 = [v3 _networkConnectionIntegrityPolicy] | 2;
    }

    [v3 _setNetworkConnectionIntegrityPolicy:v36];
  }

LABEL_59:
  v38 = [v5 browserController];
  v39 = [v38 activeSearchEngine];

  if (([v39 urlIsValidSearch:*(a1 + 32)] & 1) != 0 || (*(a1 + 72) & 1) == 0 && (objc_msgSend(*(v5 + 1064), "_mainFrameURL"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v39, "urlIsValidSearch:", v40), v40, v41))
  {
    [v3 _setNetworkConnectionIntegrityPolicy:{objc_msgSend(v3, "_networkConnectionIntegrityPolicy") | 0x20}];
  }

  if ([v5 isSearchPage] && (objc_msgSend(v5, "isPrivateBrowsingEnabled") & 1) == 0)
  {
    v42 = [MEMORY[0x277CDB8A8] sharedInstance];
    v43 = [v42 userVisibleQueryFromSearchURL:*(a1 + 32) allowQueryThatLooksLikeURL:1];

    v44 = +[RecentWebSearchesController sharedController];
    [v44 addRecentSearch:v43 fromURL:*(a1 + 32)];
  }

  if (v11)
  {
    v45 = 0;
  }

  else if (v70)
  {
    v45 = [*(v5 + 672) isContentBlockersPerSiteSettingEnabled];
  }

  else if ([*(a1 + 32) isEqual:*(v5 + 584)])
  {
    v45 = *(v5 + 592) ^ 1;
    *(v5 + 593) = v45;
  }

  else
  {
    v46 = [*(a1 + 32) host];
    v47 = [v46 safari_highLevelDomainFromHost];
    v48 = [*(v5 + 584) host];
    v49 = [v48 safari_highLevelDomainFromHost];
    v50 = [v47 isEqualToString:v49];

    if (!v50)
    {
      if (*(a1 + 72) == 1)
      {
        v61 = *(v5 + 584);
        *(v5 + 584) = 0;

        *(v5 + 946) = [*(v5 + 672) isContentBlockersPerSiteSettingEnabled];
      }

      goto LABEL_75;
    }

    objc_storeStrong((v5 + 584), *(a1 + 32));
    v45 = *(v5 + 593);
  }

  [v3 _setContentBlockersEnabled:v45 & 1];
LABEL_75:
  if (([v72 shouldPrivateRelayFailClosedExceptionApplyForURL:*(a1 + 32)] & 1) == 0 && (*(a1 + 72) & v69 & 1) != 0 && (*(v5 + 948) & 1) == 0)
  {
    [v3 _setNetworkConnectionIntegrityPolicy:{objc_msgSend(v3, "_networkConnectionIntegrityPolicy") | 0x10}];
  }

  if (v70)
  {
    [MEMORY[0x277D4A728] determineContentRuleListStateForWebpagePreferences:v3 wasLoadedWithContentBlockersEnabled:objc_msgSend(v3 wasLoadedWithAdvancedPrivacyProtectionsEnabled:{"_contentBlockersEnabled"), objc_msgSend(v3, "safari_areAdvancedPrivacyProtectionsEnabled")}];
  }

  if (*(a1 + 72) == 1)
  {
    [*(v5 + 224) setWebViewGeometryNeedsUpdate];
    *(v5 + 946) = [v3 _contentBlockersEnabled];
    *(v5 + 947) = [v3 _allowPrivacyProxy];
    v51 = [v3 safari_areAdvancedPrivacyProtectionsEnabled];
    *(v5 + 949) = v51;
    [MEMORY[0x277D4A728] determineContentRuleListStateForWebpagePreferences:v3 wasLoadedWithContentBlockersEnabled:*(v5 + 946) wasLoadedWithAdvancedPrivacyProtectionsEnabled:v51];
    if ([MEMORY[0x277D4A888] isLockdownModeEnabledForSafari])
    {
      if (objc_opt_respondsToSelector())
      {
        *(v5 + 665) = [v3 _captivePortalModeEnabled];
      }
    }
  }

  if ([MEMORY[0x277D49A08] isWAPEnabled])
  {
    v52 = [(TabDocument *)v5 profileIdentifier];
    v53 = [v52 isEqualToString:*MEMORY[0x277D49BD8]];

    if (v53)
    {
      v54 = *(a1 + 32);
      v55 = [*(v5 + 1360) pageURL];
      v71 = v3;
      v56 = v54;
      v57 = v55;
      v58 = [MEMORY[0x277CDB748] sharedWebClipCache];
      v59 = [v58 webClipURLs];

      v60 = v71;
      if (v59 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v71 _setPushAndNotificationAPIEnabled:0];
        if ([v57 safari_hasSameOriginAsURL:v56])
        {
          [v71 _setPushAndNotificationAPIEnabled:1];
        }

        else
        {
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v62 = v59;
          v63 = [v62 countByEnumeratingWithState:&v73 objects:buf count:16];
          if (v63)
          {
            v64 = *v74;
            v68 = v39;
            while (2)
            {
              for (i = 0; i != v63; ++i)
              {
                if (*v74 != v64)
                {
                  objc_enumerationMutation(v62);
                }

                if ([*(*(&v73 + 1) + 8 * i) safari_hasSameOriginAsURL:v56])
                {
                  v39 = v68;
                  [v71 _setPushAndNotificationAPIEnabled:1];
                  goto LABEL_103;
                }
              }

              v63 = [v62 countByEnumeratingWithState:&v73 objects:buf count:16];
              v39 = v68;
              if (v63)
              {
                continue;
              }

              break;
            }
          }

LABEL_103:

          v60 = v71;
        }
      }
    }
  }

  (*(*(a1 + 48) + 16))();

LABEL_106:
}

void __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_504(uint64_t a1, void *a2)
{
  v11 = a2;
  [*(a1 + 32) setSourceElementInfo:?];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) sourceElementInfo];
  [v3 animateElementToDownloadsBarItemSoon:v4];

  v5 = [MEMORY[0x277CDB7A0] sharedDownloadDispatcher];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = [*(a1 + 64) _userInitiatedAction];
  v9 = [v5 prepareForDownloadFromWebView:v6 request:v7 MIMEType:0 uti:0 userInitiatedAction:v8];

  v10 = [MEMORY[0x277CDB7A8] sharedManager];
  [v9 setDelegate:v10];

  [v9 setExplicitlySaved:1];
  (*(*(a1 + 72) + 16))();
}

void __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_2_505(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setSourceElementInfo:?];
  [*(a1 + 40) dispatchNavigationIntent:*(a1 + 32)];
}

- (uint64_t)_isNewDocumentViewNecessaryForURL:(void *)a1
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (a1[170])
  {
    v4 = [a1 webView];
    v5 = [v4 configuration];
    v6 = [v5 preferences];
    v7 = [v6 _isStandalone];

    if ((v7 & 1) == 0)
    {
      v10 = 1;
      goto LABEL_13;
    }
  }

  if (([a1 isShowingErrorPage] & 1) != 0 || (-[TabDocument resultOfLoadingURL:userInitiated:](a1, v3, 1), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "type"), v8, v9 <= 4) && ((1 << v9) & 0x19) != 0)
  {
LABEL_7:
    v10 = 0;
  }

  else
  {
    v11 = [a1 webExtensionsController];
    v12 = [v11 canonicalURLForWebExtensionURL:v3];

    v13 = [a1 webView];
    v14 = [v13 _requiredWebExtensionBaseURL];

    v15 = [v14 safari_isSafariWebExtensionURL];
    v16 = [v12 safari_isSafariWebExtensionURL];
    if ((v15 & v16) == 1)
    {
      v17 = [v14 host];
      v18 = [v12 host];
      v19 = [v17 isEqualToString:v18];

      v10 = v19 ^ 1;
    }

    else
    {
      v10 = v15 | v16;
    }
  }

LABEL_13:

  return v10 & 1;
}

void __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_3_518(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    [v5 setLoadWasUserDriven:*(a1 + 80)];
    [(TabDocument *)WeakRetained _internalWebView:*(a1 + 40) decidePolicyForNavigationAction:v5 withResult:v4 preferences:*(a1 + 64) decisionHandler:?];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)_internalWebView:(void *)a3 decidePolicyForNavigationAction:(void *)a4 withResult:(uint64_t)a5 preferences:(void *)a6 decisionHandler:
{
  v51 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a1)
  {
    v13 = [v10 targetFrame];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 isMainFrame];
    }

    else
    {
      v15 = 1;
    }

    v16 = [v10 _isUserInitiated];
    WeakRetained = objc_loadWeakRetained((a1 + 1248));
    if (((v15 | v16) & 1) == 0 && [v11 isRedirectToAppleServices])
    {
      v12[2](v12, 0);
LABEL_52:

      goto LABEL_53;
    }

    v17 = [v10 request];
    v50 = [v17 URL];
    v18 = [v11 type];
    v19 = 0;
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v12[2](v12, 0);
        v20 = [v11 URL];
        v21 = [(TabDocument *)a1 _loadURLInternal:v20 userDriven:1];

LABEL_51:
        goto LABEL_52;
      }

      if (v18 != 3)
      {
        if (v18 == 4)
        {
          [*(a1 + 1304) addDisallowedFileURLAlert];
LABEL_49:
          v19 = 0;
          goto LABEL_50;
        }

        goto LABEL_50;
      }

      v22 = *(a1 + 979);
      v12[2](v12, 0);
      if (!v15 || ![v10 _shouldOpenExternalSchemes])
      {
        goto LABEL_51;
      }

      *(a1 + 980) = v22;
      v23 = [v10 sourceFrame];
      v24 = v51;
      v25 = [v23 webView];

      v48 = v25;
      if (v25)
      {
        v26 = v25 == v51;
      }

      else
      {
        v26 = 1;
      }

      v27 = !v26;
      v47 = [v51 URL];
      HIDWORD(v46) = v27;
      if (v47)
      {
        v28 = [v51 URL];
        LODWORD(v46) = [v50 isEqual:v28] ^ 1;

        v24 = v51;
      }

      else
      {
        LODWORD(v46) = 0;
      }

      v40 = [v24 _committedURL];

      if ((HIDWORD(v46) & ((v40 != 0) | v46)) == 1)
      {
        v41 = [TabDocument tabDocumentForWKWebView:v48];
        [v41 loadWindowDotOpenExternalNavigationResult:v11 fromOriginalRequest:v17];

        [WeakRetained tabDocumentDidCancelRedirectToExternalApplication:a1];
      }

      else
      {
        if (v16)
        {
          v42 = 2;
        }

        else if (*(a1 + 1296))
        {
          v42 = 2;
        }

        else
        {
          v42 = 3;
        }

        if (*(a1 + 743) == 1)
        {
          if (!*(a1 + 664))
          {
            v42 = 0;
          }

          *(a1 + 743) = 0;
        }

        v45 = [v10 _userInitiatedAction];
        [(TabDocument *)a1 _redirectToExternalNavigationResult:v11 fromOriginalRequest:v17 navigationAction:v10 promptPolicy:v42 isMainFrame:1 userAction:v45];
      }

      *(a1 + 980) = 0;
      v44 = v48;
LABEL_72:

      goto LABEL_51;
    }

    if (!v18)
    {
      v29 = [v11 URL];
      v30 = [v29 safari_hasFeedScheme];

      if (v30)
      {
        [(TabDocument *)a1 _addNoFeedAppSupportAlert];
      }

      else
      {
        v31 = [v11 URL];
        v32 = [v31 _webkit_isJavaScriptURL];

        if (v32)
        {
          [*(a1 + 1304) addDisallowedUseOfJavaScriptAlert];
        }

        else if (v15)
        {
          [*(a1 + 1304) addInvalidURLAlert];
        }
      }

      goto LABEL_49;
    }

    if (v18 != 1)
    {
LABEL_50:
      v12[2](v12, v19);
      goto LABEL_51;
    }

    if (!v15)
    {
      goto LABEL_46;
    }

    if ([WeakRetained tabDocumentIsBackgroundPreloading:a1] && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(MEMORY[0x277CBEBC0], "_web_willPerformSOKerberosAuthorizationWithURL:", v50))
    {
      if ([WeakRetained tabDocumentShouldHandleAuthentication:a1])
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v33 = v16 ^ 1;
    if (!v14)
    {
      v33 = 1;
    }

    if ((v33 & 1) == 0)
    {
      [WeakRetained willStartLoadFromUserTap:a1];
    }

    if (![v10 _shouldOpenAppLinks])
    {
LABEL_46:
      v19 = 3;
      goto LABEL_50;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __103__TabDocument__internalWebView_decidePolicyForNavigationAction_withResult_preferences_decisionHandler___block_invoke;
    aBlock[3] = &unk_2781DAFE8;
    aBlock[4] = a1;
    v49 = v12;
    v64 = v49;
    v61 = v10;
    v34 = v50;
    v62 = v34;
    v65 = v16;
    v63 = v17;
    v66 = v15;
    v35 = _Block_copy(aBlock);
    if (*(a1 + 1296))
    {
      if (([v34 isEqual:?] & 1) != 0 || (v36 = *(a1 + 1216)) != 0 && (objc_msgSend(v36, "isEqualToString:", @"com.apple.springboard") & 1) == 0)
      {
        v49[2](v49, 3);
LABEL_62:

        v44 = v64;
        goto LABEL_72;
      }

      v37 = [objc_alloc(MEMORY[0x277D4A6F0]) initWithURL:*(a1 + 1296)];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __103__TabDocument__internalWebView_decidePolicyForNavigationAction_withResult_preferences_decisionHandler___block_invoke_4;
      v53[3] = &unk_2781DB010;
      v54 = v34;
      v55 = v35;
      v56 = v49;
      [v37 _sf_decideOpenStrategyAndCallCompletionHandlerOnMainThread:v53];
      v38 = &v54;
      v39 = &v55;
    }

    else
    {
      v43 = [objc_alloc(MEMORY[0x277D4A6F0]) initWithURL:v34];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __103__TabDocument__internalWebView_decidePolicyForNavigationAction_withResult_preferences_decisionHandler___block_invoke_3;
      v57[3] = &unk_2781DABB0;
      v58 = v43;
      v59 = v35;
      v37 = v43;
      [v37 _sf_decideOpenStrategyAndCallCompletionHandlerOnMainThread:v57];
      v38 = &v59;
      v39 = &v58;
    }

    goto LABEL_62;
  }

LABEL_53:
}

void __103__TabDocument__internalWebView_decidePolicyForNavigationAction_withResult_preferences_decisionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ((*(*(a1 + 32) + 954) & 1) == 0 && (a3 + 1) > 3)
  {
    v6 = [*(a1 + 40) _userInitiatedAction];
    if ([*(a1 + 32) isPrivateBrowsingEnabled])
    {
      goto LABEL_11;
    }

    v7 = *(a1 + 32);
    if (*(v7 + 708) == 1)
    {
      if (!v6 || ([v6 isConsumed] & 1) != 0)
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 32);
    }

    WeakRetained = objc_loadWeakRetained((v7 + 992));
    if (![WeakRetained isSuspendedOrSuspending])
    {
      if (*(*(a1 + 32) + 664))
      {
        v12 = [*(a1 + 48) hasTelephonyScheme];

        if ((v12 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      objc_initWeak(&location, *(a1 + 32));
      if (v6 && ([v6 isConsumed] & 1) == 0)
      {
        [v6 consume];
      }

      else
      {
        *(*(a1 + 32) + 708) = 1;
      }

      v13 = *(a1 + 32);
      v14 = *(a1 + 56);
      v21 = *MEMORY[0x277D66E78];
      v22[0] = MEMORY[0x277CBEC38];
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __103__TabDocument__internalWebView_decidePolicyForNavigationAction_withResult_preferences_decisionHandler___block_invoke_2;
      v16[3] = &unk_2781DAFC0;
      v18 = *(a1 + 64);
      v17 = *(a1 + 40);
      objc_copyWeak(&v19, &location);
      [(TabDocument *)v13 _openAppLinkInApp:v5 fromOriginalRequest:v14 updateAppLinkStrategy:0 webBrowserState:v15 completionHandler:v16];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
      goto LABEL_17;
    }

LABEL_11:
    v9 = [MEMORY[0x277CDB820] resultWithAppLink:v5];
    [v9 setLoadWasUserDriven:*(*(a1 + 32) + 707)];
    (*(*(a1 + 64) + 16))();
    v10 = *(a1 + 32);
    if (*(a1 + 72))
    {
      v11 = 2;
    }

    else if (v10[162])
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    [(TabDocument *)v10 _queueAlertForRedirectToExternalNavigationResult:v9 fromOriginalRequest:*(a1 + 56) navigationAction:*(a1 + 40) isMainFrame:*(a1 + 73) promptPolicy:v11 userAction:v6];

LABEL_17:
    goto LABEL_18;
  }

  (*(*(a1 + 64) + 16))();
LABEL_18:
}

void __103__TabDocument__internalWebView_decidePolicyForNavigationAction_withResult_preferences_decisionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  (*(v4 + 16))(v4, v5);
  if (!a2)
  {
    [*(a1 + 32) _storeSKAdNetworkAttribution];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      if ([(TabDocument *)WeakRetained _shouldCleanUpAfterRedirectToExternalApp])
      {
        if ([v7 canGoBack])
        {
          [v7 goBack];
        }

        else
        {
          [v7 _closeTabDocumentAnimated:0];
        }
      }
    }
  }
}

void __103__TabDocument__internalWebView_decidePolicyForNavigationAction_withResult_preferences_decisionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
    if ((a2 + 1) <= 1)
    {
      v4 = [objc_alloc(MEMORY[0x277D4A6F0]) initWithURL:*(a1 + 32)];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __103__TabDocument__internalWebView_decidePolicyForNavigationAction_withResult_preferences_decisionHandler___block_invoke_5;
      v7[3] = &unk_2781DABB0;
      v5 = *(a1 + 40);
      v8 = v4;
      v9 = v5;
      v6 = v4;
      [v6 _sf_decideOpenStrategyAndCallCompletionHandlerOnMainThread:v7];
    }
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

- (void)_didDecideNavigationPolicy:(void *)a3 forNavigationResponse:
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (a2 == 1)
    {
      v18 = v5;
      v7 = [v5 isForMainFrame];
      v6 = v18;
      if (v7)
      {
        v8 = [v18 _frame];
        v9 = [v8 webView];
        v10 = a1[133];

        v6 = v18;
        if (v9 == v10)
        {
          v11 = [v18 _sf_explicitSuggestedFilename];
          v12 = a1[95];
          a1[95] = v11;

          v13 = [a1 isPrivate];
          v6 = v18;
          if ((v13 & 1) == 0)
          {
            v14 = [v18 response];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v18 response];
              v16 = [v15 URL];
              v17 = [v16 safari_isHTTPFamilyURL];

              v6 = v18;
              if (!v17)
              {
                goto LABEL_10;
              }

              v14 = [v18 response];
              [a1 donateCurrentNavigationWithNavigationResponse:v14];
            }

            v6 = v18;
          }
        }
      }
    }
  }

LABEL_10:
}

- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__TabDocument_webView_decidePolicyForNavigationResponse_decisionHandler___block_invoke;
  aBlock[3] = &unk_2781DB038;
  aBlock[4] = self;
  v11 = v9;
  v79 = v11;
  v12 = v10;
  v80 = v12;
  v13 = _Block_copy(aBlock);
  v76 = 0;
  v77 = 0;
  v14 = [v11 _sf_responsePolicy:&v77 uti:&v76];
  v15 = v76;
  if (self->_wasLoadedWithLockdownModeEnabled && v14 != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v13[2](v13, 1);
    goto LABEL_27;
  }

  if (!self->_loadNextNavigationInline || ![v11 isForMainFrame])
  {
    if ([v11 isForMainFrame])
    {
      self->_isDecidingNavigationResponsePolicyForMainFrameDownload = 1;
    }

    v62 = v8;
    v63 = [v11 response];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __73__TabDocument_webView_decidePolicyForNavigationResponse_decisionHandler___block_invoke_2;
    v72[3] = &unk_2781DB038;
    v17 = v11;
    v73 = v17;
    v74 = self;
    v75 = v13;
    v18 = _Block_copy(v72);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v20 = [WeakRetained tabDocumentCanDownloadFile:self];

    if ((v20 & 1) == 0)
    {
      v8 = v62;
      v18[2](v18, 0);
LABEL_26:

      goto LABEL_27;
    }

    v21 = [v17 isForMainFrame];
    v61 = [v63 MIMEType];
    if ([v61 isEqualToString:@"application/rdf+xml"] & 1) != 0 || (objc_msgSend(v61, "isEqualToString:", @"application/rss+xml") & 1) != 0 || (objc_msgSend(v61, "isEqualToString:", @"application/atom+xml"))
    {
    }

    else
    {
      v29 = [v61 isEqualToString:@"application/syndication+xml"];

      if (!v29)
      {
        v60 = [v63 suggestedFilename];
        v55 = [v60 safari_filenameByFixingIllegalCharacters];
        v30 = [v55 safari_lastPathComponentWithoutZipExtension];

        v59 = v30;
        v31 = v30;
        v8 = v62;
        v56 = [v31 pathExtension];
        obj = [v56 caseInsensitiveCompare:@"swf"];

        v32 = [v61 caseInsensitiveCompare:@"application/x-shockwave-flash"];
        if (v21)
        {
          v33 = 0;
        }

        else
        {
          if (obj)
          {
            v34 = v32 == 0;
          }

          else
          {
            v34 = 1;
          }

          v33 = v34;
        }

        if (!v77 || (v33 & 1) != 0 || v77 == 3 && ![getPKAddPassesViewControllerClass() canAddPasses])
        {
          if (v21)
          {
            [(_SFPageLoadErrorController *)self->_pageLoadErrorController addDownloadFailedAlertWithDescription:0];
          }

          v18[2](v18, 0);
          goto LABEL_24;
        }

        v57 = MEMORY[0x277CDB788];
        v35 = [v17 _request];
        v36 = [v17 _sf_suggestedFilename];
        v37 = v57;
        objb = v35;
        v58 = v36;
        v38 = [v37 provisionalDownloadWithMIMEType:v61 request:v35 response:v63 filename:v36 uti:v15 userInitiatedAction:self->_lastUserInitiatedAction];

        obja = v38;
        [v38 setNavigatedWebView:v62];
        v54 = [MEMORY[0x277CDB7A0] sharedDownloadDispatcher];
        objc_storeStrong(&self->_activeDownload, v38);
        if (v38)
        {
          v47 = [MEMORY[0x277CDB7A8] sharedManager];
          [v38 setDelegate:v47];
          [v47 deferAddingDownloadWhenStarted:v38];
          if ((v16 - 2) > 2)
          {
            v49 = v62;
            v23 = v38;
            if (objc_opt_respondsToSelector())
            {
              v41 = [v17 _navigationInitiatingFrame];
              v42 = [v41 webView];
              v43 = v42;
              if (v42)
              {
                v44 = v42;
              }

              else
              {
                v44 = v49;
              }

              v45 = v44;

              v46 = v45;
              v8 = v62;
            }

            else
            {
              v46 = v49;
            }

            v50 = v46;
            [v54 setPendingDownload:obja forWebView:?];
            v18[2](v18, 2);
          }

          else
          {
            [v38 setSuppressesPrompt:1];
            if (objc_opt_respondsToSelector())
            {
              v39 = [v17 _navigationInitiatingFrame];
              v48 = [v39 securityOrigin];

              v40 = v48;
            }

            else
            {
              v40 = 0;
            }

            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = __73__TabDocument_webView_decidePolicyForNavigationResponse_decisionHandler___block_invoke_3;
            v64[3] = &unk_2781DB060;
            v65 = v62;
            v66 = v17;
            v67 = v54;
            v68 = obja;
            v69 = self;
            v70 = v18;
            v71 = v16;
            v50 = v40;
            [(TabDocument *)self _presentDialogToAllowDownload:v68 initiatingSecurityOrigin:v40 allowViewAction:v16 != 2 completionHandler:v64];

            v8 = v62;
            v23 = obja;
          }
        }

        else
        {
          v18[2](v18, 0);
          v23 = 0;
        }

LABEL_23:

LABEL_24:
        goto LABEL_25;
      }
    }

    if ((v21 & 1) == 0)
    {
      v8 = v62;
      v18[2](v18, 0);
LABEL_25:

      goto LABEL_26;
    }

    v8 = v62;
    v22 = [v17 _request];
    v23 = [v22 URL];

    v24 = [v23 scheme];
    v25 = [v24 compare:@"http" options:1];

    v26 = [v23 absoluteString];
    if (v25)
    {
      v59 = [@"feed:" stringByAppendingString:v26];
    }

    else
    {
      v27 = [v26 substringFromIndex:5];
      v59 = [@"feed:" stringByAppendingString:v27];
    }

    v54 = [MEMORY[0x277CBEBC0] URLWithString:v59];
    v18[2](v18, 0);
    v28 = [(TabDocument *)self _loadURLInternal:v54 userDriven:1];
    goto LABEL_23;
  }

  v13[2](v13, 1);
  self->_loadNextNavigationInline = 0;
LABEL_27:
}

uint64_t __73__TabDocument_webView_decidePolicyForNavigationResponse_decisionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [(TabDocument *)*(a1 + 32) _didDecideNavigationPolicy:a2 forNavigationResponse:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __73__TabDocument_webView_decidePolicyForNavigationResponse_decisionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v11 = *(*(a1 + 72) + 16);
    if (*(a1 + 80) == 4)
    {
      v11();
      *(*(a1 + 64) + 705) = 1;
      v12 = *(a1 + 64);
      v26 = [*(a1 + 40) _request];
      v13 = [TabDocument _loadRequest:v12 userDriven:v26 shouldOpenExternalURLs:1];
LABEL_26:

      return;
    }

    v11();
  }

  else
  {
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      v24 = *(a1 + 32);
      if (objc_opt_respondsToSelector())
      {
        v3 = [*(a1 + 40) _navigationInitiatingFrame];
        v4 = [v3 webView];
        if (v4)
        {
          v5 = v4;
        }

        else
        {
          v5 = v24;
        }

        v6 = v5;

        v7 = v6;
      }

      else
      {
        v7 = v24;
      }

      v26 = v7;
      [*(a1 + 48) setPendingDownload:*(a1 + 56) forWebView:?];
      (*(*(a1 + 72) + 16))();
      v14 = [*(*(a1 + 64) + 1064) backForwardList];
      v15 = [v14 currentItem];
      *(*(a1 + 64) + 704) = v15 == 0;

      v16 = *(a1 + 64);
      if (v16[704])
      {
        goto LABEL_26;
      }

      v17 = [v16 committedURL];

      if (v17)
      {
        goto LABEL_26;
      }

      v18 = *(*(a1 + 64) + 1064);
      v19 = [v18 backForwardList];
      v20 = [v19 currentItem];
      v21 = [v18 goToBackForwardListItem:v20];

      goto LABEL_25;
    }

    (*(*(a1 + 72) + 16))();
    v25 = [*(*(a1 + 64) + 1064) backForwardList];
    v8 = [v25 currentItem];

    v9 = *(a1 + 64);
    if (v8)
    {
      v10 = [v9 committedURL];

      if (v10)
      {
        return;
      }

      v22 = *(*(a1 + 64) + 1064);
      v26 = [v22 backForwardList];
      v19 = [v26 currentItem];
      v23 = [v22 goToBackForwardListItem:v19];
LABEL_25:

      goto LABEL_26;
    }

    [v9 _closeTabDocumentAnimated:0];
  }
}

- (void)webView:(id)a3 navigationAction:(id)a4 didBecomeDownload:(id)a5
{
  v6 = a5;
  v5 = [MEMORY[0x277CDB7A0] sharedDownloadDispatcher];
  [v5 downloadDidStart:v6];
}

- (void)webView:(id)a3 navigationResponse:(id)a4 didBecomeDownload:(id)a5
{
  v6 = a5;
  v5 = [MEMORY[0x277CDB7A0] sharedDownloadDispatcher];
  [v5 downloadDidStart:v6];
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAD78] UUID];
  biomeWebpageIdentifier = self->_biomeWebpageIdentifier;
  self->_biomeWebpageIdentifier = v8;

  lastLoadError = self->_lastLoadError;
  self->_lastLoadError = 0;

  v11 = [v6 _unreachableURL];

  if (!v11)
  {
    lastLoadErrorForFormatMenu = self->_lastLoadErrorForFormatMenu;
    self->_lastLoadErrorForFormatMenu = 0;
  }

  self->_didCommitCurrentNavigation = 0;
  self->_didFirstPaint = 0;
  *&self->_didFinishDocumentLoad = 0;
  appBannerPendingFirstPaint = self->_appBannerPendingFirstPaint;
  self->_appBannerPendingFirstPaint = 0;

  quickLookDocumentWriter = self->_quickLookDocumentWriter;
  self->_quickLookDocumentWriter = 0;

  quickLookDocument = self->_quickLookDocument;
  self->_quickLookDocument = 0;

  self->_haveRestoredCompletionList = 0;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v17 = [WeakRetained tabController];
  [v17 saveTabDocumentUserActivitySoon:self];

  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator didStartProvisionalNavigationWithUserInitiatedAction:self->_lastUserInitiatedAction];
  if (self->_pageLoadStatistics)
  {
    v22 = [v7 _request];
    v23 = [v22 URL];
    v24 = [v23 absoluteString];
    v25 = [v24 isEqualToString:@"about:blank"];

    if ((v25 & 1) == 0)
    {
      [(PageLoadTestStatistics *)self->_pageLoadStatistics startedNavigation:v7];
    }
  }

  [(_SFCalendarEventDetector *)self->_calendarEventDetector cancelCheckForConfirmationPage];
  if (self->_needsSendTelemetryForProvisionalLoad)
  {
    self->_needsSendTelemetryForProvisionalLoad = 0;
    v18 = WBS_LOG_CHANNEL_PREFIXSignposts();
    if (os_signpost_enabled(v18))
    {
      *v26 = 0;
      _os_signpost_emit_with_name_impl(&dword_215819000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "LaunchToFirstLoad", "beganLoad=YES enableTelemetry=YES ", v26, 2u);
    }
  }

  if (!self->_translationContext)
  {
    v19 = [MEMORY[0x277D4A880] translationContextWithWebView:self->_webView delegate:self];
    translationContext = self->_translationContext;
    self->_translationContext = v19;

    [(WBSTranslationContext *)self->_translationContext setFluidProgressController:self->_fluidProgressController];
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:self selector:sel__translationContextStateDidChange_ name:*MEMORY[0x277D4A9A0] object:self->_translationContext];
  }

  [(TabDocument *)self updateAccessibilityIdentifier];
  [(_SFFormAutoFillController *)self->_autoFillController offerToSaveUnsubmittedFormDataIfNeededWithCompletionHandler:&__block_literal_global_543];
  [(TabDocument *)self _updateActiveExtensionsIfNecessary];
  if (self->_loadWasUserDriven && ([v7 _isUserInitiated] & 1) != 0 || self->_lastUserInitiatedAction)
  {
    [(WBSPermissionDialogThrottler *)self->_permissionDialogThrottler willPerformUserInitiatedNavigation];
  }
}

id __49__TabDocument__updateActiveExtensionsIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) webExtensionForExtension:a2];
  if ([*(a1 + 32) isTab:*(a1 + 40) visibleToExtension:v3])
  {
    v4 = [v3 hasPermissionToAccessURL:*(a1 + 48) inTab:*(a1 + 40)];
    v5 = [v3 baseURIHost];
    v6 = [v5 isEqual:*(a1 + 56)];

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v3;
    }

    if (!v4)
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __49__TabDocument__updateActiveExtensionsIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 toolbarItem];
  v5 = [v4 iconForTab:*(a1 + 32) size:{*MEMORY[0x277D291A0], *(MEMORY[0x277D291A0] + 8)}];
  v6 = [v4 badgeTextForTab:*(a1 + 32)];
  v7 = [v6 length];

  if (v7)
  {
    [v4 didViewBadgeInTab:*(a1 + 32)];
  }

  v8 = [objc_alloc(MEMORY[0x277D28EC0]) initWithExtension:v3 image:v5 badged:v7 != 0];

  return v8;
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v18 = a4;
  v7 = a5;
  [(TabDocument *)self _didFinishNavigation:v18];
  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator didFailProvisionalNavigationWithError:v7];
  v8 = [(SFBrowserDocumentTrackerInfo *)self->_trackerInfo queryParameterFilteringDataQueue];
  [v8 clearPendingData];

  v9 = [v7 code];
  if (-[NSMutableArray count](self->_fallbackURLs, "count") && ((v10 = [v7 _web_errorIsInDomain:*MEMORY[0x277CCA738]], (v9 & 0xFFFFFFFFFFFFFFFELL) == 0xFFFFFFFFFFFFFC14) ? (v11 = v10) : (v11 = 0), v11 == 1))
  {
    v12 = [v18 _request];
    suggestedFilenameForNextCommit = objc_getAssociatedObject(v12, kWebClipToNSURLRequestAssociationKey);

    [(TabDocument *)self _loadNextFallbackURLWithWebClip:0 navigation:?];
  }

  else
  {
    [(TabDocument *)self _clearNavigationSource];
    [(_SFWebView *)self->_webView setObscuringContents:0];
    self->_contentIsReadyForSnapshot = 1;
    [(TabDocument *)self updateAccessibilityIdentifier];
    objc_storeStrong(&self->_lastLoadError, a5);
    objc_storeStrong(&self->_lastLoadErrorForFormatMenu, a5);
    [(TabDocument *)self _didFinishLoading];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v15 = [WeakRetained tabController];
    [v15 saveTabDocumentUserActivitySoon:self];

    v16 = [MEMORY[0x277D499B8] sharedLogger];
    [v16 reportTabUpdatedWithUpdateType:0];

    pageLoadStatistics = self->_pageLoadStatistics;
    if (pageLoadStatistics)
    {
      [(PageLoadTestStatistics *)pageLoadStatistics failedNavigation:v18 withError:v7];
    }

    self->_shouldResetPrintSuppressionOnNextCommit = 0;
    self->_loadNextNavigationInline = 0;
    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
    self->_suggestedFilenameForNextCommit = 0;
  }
}

- (void)_didFinishNavigation:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    if (*(a1 + 928) == 1 && *(a1 + 936))
    {
      v4 = [a1 webView];
      v5 = [v4 _restoreSessionState:*(a1 + 936) andNavigate:0];
    }

    *(a1 + 928) = 0;
    v6 = *(a1 + 936);
    *(a1 + 936) = 0;

    v3 = v7;
  }
}

- (void)_webView:(id)a3 contentRuleListWithIdentifier:(id)a4 performedAction:(id)a5 forURL:(id)a6
{
  v13 = a3;
  v9 = a5;
  v10 = a6;
  if (([v9 blockedLoad] & 1) != 0 || objc_msgSend(v9, "blockedCookies"))
  {
    v11 = [(TabDocument *)self _contentBlockerStatisticsStore];
    v12 = [v13 URL];
    [v11 recordThirdPartyResourceBlocked:v10 onFirstParty:v12 completionHandler:0];
  }
}

- (void)_webView:(id)a3 decidePolicyForSOAuthorizationLoadWithCurrentPolicy:(int64_t)a4 forExtension:(id)a5 completionHandler:(id)a6
{
  v8 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  LODWORD(self) = [WeakRetained tabDocumentShouldHandleAuthentication:self];

  v8[2](v8, self ^ 1);
}

- (void)_webView:(id)a3 didGeneratePageLoadTiming:(id)a4
{
  v6 = a4;
  pageLoadStatistics = self->_pageLoadStatistics;
  if (pageLoadStatistics)
  {
    [(PageLoadTestStatistics *)pageLoadStatistics didGeneratePageLoadTiming:v6];
  }
}

- (void)_donateTextSoon
{
  if (a1 && [a1[158] allowsUserActivityFeedback] && (-[TabDocument _isShowingNativePage](a1) & 1) == 0)
  {
    objc_initWeak(&location, a1);
    [a1[53] invalidate];
    v2 = MEMORY[0x277CBEBB8];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __30__TabDocument__donateTextSoon__block_invoke;
    v5[3] = &unk_2781DA668;
    objc_copyWeak(&v6, &location);
    v3 = [v2 scheduledTimerWithTimeInterval:0 repeats:v5 block:5.0];
    v4 = a1[53];
    a1[53] = v3;

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __30__TabDocument__donateTextSoon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(TabDocument *)WeakRetained _donateTextAllowingDonationWithoutReaderText:?];
}

- (void)_donateTextAllowingDonationWithoutReaderText:(id *)a1
{
  if (a1 && a1[53])
  {
    if (![a1[158] allowsUserActivityFeedback] || -[TabDocument _isShowingNativePage](a1))
    {
      v4 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [TabDocument _donateTextAllowingDonationWithoutReaderText:];
      }

      v5 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [a1[133] URL];
        objc_claimAutoreleasedReturnValue();
        [TabDocument _donateTextAllowingDonationWithoutReaderText:];
      }
    }

    else
    {
      v6 = [a1[37] unfilteredArticleText];
      v5 = v6;
      if ((a2 & 1) != 0 || v6 || ![a1[37] isReaderAvailable])
      {
        [a1[53] invalidate];
        v8 = a1[53];
        a1[53] = 0;

        if ([a1 isSecure])
        {
          v9 = [a1[37] doesPageUseSearchEngineOptimizationMetadata];
        }

        else
        {
          v9 = 1;
        }

        v10 = [a1 personalizationData];
        v11 = [v10 copy];

        v12 = [a1 personalizationData];
        [v12 clearData];

        v13 = [MEMORY[0x277D4A060] sharedInstance];
        v14 = a1[133];
        v15 = [(TabDocument *)a1 profileIdentifier];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = *MEMORY[0x277D49BD8];
        }

        [v13 donateTextInWebView:v14 extractedReaderText:v5 canDonateFullPageText:v9 profileIdentifier:v17 personalizationData:v11 extractInnerText:&__block_literal_global_553];
      }

      else
      {
        v7 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [TabDocument _donateTextAllowingDonationWithoutReaderText:];
        }
      }
    }
  }
}

- (BOOL)isFrecentlyVisitedSite
{
  v3 = [(TabDocument *)self cachedCanonicalURLOrURLForSharing];
  v4 = +[Application sharedApplication];
  v5 = [v4 historyController];
  v6 = [(TabDocument *)self profileIdentifier];
  v7 = [v5 frequentlyVisitedSitesControllerForProfileIdentifier:v6 loadIfNeeded:0];

  v8 = [v7 frequentlyVisitedSites];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__TabDocument_isFrecentlyVisitedSite__block_invoke;
  v11[3] = &unk_2781DB0F8;
  v9 = v3;
  v12 = v9;
  LOBYTE(v5) = [v8 safari_containsObjectPassingTest:v11];

  return v5;
}

uint64_t __37__TabDocument_isFrecentlyVisitedSite__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 address];
  v4 = [*(a1 + 32) absoluteString];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)makeBookmark
{
  v3 = MEMORY[0x277D7B5A0];
  v4 = [(TabDocument *)self titleForNewBookmark];
  v5 = [v3 _trimmedTitle:v4];

  v6 = [(TabDocument *)self cachedCanonicalURLOrURLForSharing];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D7B5A0]);
    v8 = [v6 absoluteString];
    v9 = [v7 initWithTitle:v5 address:v8 collectionType:0];

    [v9 setAddedLocally:1];
    v10 = [MEMORY[0x277D7B590] sharedWebFilterSettings];
    [v9 setWebFilterStatus:{objc_msgSend(v10, "webFilterStatusForURL:", v6)}];

    v11 = [MEMORY[0x277CBEAA8] now];
    [v9 setDateAdded:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WBSSiriIntelligenceDonorTabData)tabDataForSpotlightDonation
{
  if (self && [(_SFBrowserConfiguration *)self->_configuration allowsUserActivityFeedback]&& ![(TabDocument *)self _isShowingNativePage])
  {
    v4 = objc_alloc_init(MEMORY[0x277D4A078]);
    v6 = [(NSUUID *)self->_uuid UUIDString];
    [v4 setUuidString:v6];

    v7 = [(TabDocument *)self url];
    [v4 setUrl:v7];

    v8 = [(TabDocument *)self title];
    [v4 setTitle:v8];

    v9 = [(TabDocument *)self profileIdentifier];
    [v4 setProfileIdentifier:v9];

    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_lastViewedTime];
    [v4 setLastVisitedDate:v10];

    v3 = [(WBTab *)self->_tabGroupTab tabGroupUUID];
    [v4 setTabGroupUUID:v3];
  }

  else
  {
    v3 = [MEMORY[0x277D4A060] sharedInstance];
    [v3 setTabNeedsSpotlightDeletion:self];
    v4 = 0;
  }

  return v4;
}

- (void)webView:(id)a3 didCommitNavigation:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v47 = a4;
  self->_didCommitCurrentNavigation = 1;
  v49 = v6;
  v7 = [(TabDocument *)self trackerInfo];
  [v7 documentDidCommitNavigation];

  [v6 setOpaque:1];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v50 = [v6 URL];
  if (!self->_disableContentBlockersWhenReloading)
  {
    v8 = [(TabDocument *)self sfScribbleController];
    v9 = [v50 host];
    [v8 updateUserDefinedContentBlockerWithHost:v9];
  }

  [(TabDocument *)self setIsBlank:[(TabDocument *)self isShowingStartPageOverriddenByExtension]];
  [(TabDocument *)self setNeedsNewTabSnapshot];
  fallbackURLs = self->_fallbackURLs;
  self->_fallbackURLs = 0;

  webClipMetadataFetcher = self->_webClipMetadataFetcher;
  self->_webClipMetadataFetcher = 0;

  applicationManifestFetcher = self->_applicationManifestFetcher;
  self->_applicationManifestFetcher = 0;

  [(TouchIconFetcher *)self->_touchIconFetcher invalidate];
  touchIconFetcher = self->_touchIconFetcher;
  self->_touchIconFetcher = 0;

  -[_SFReloadOptionsController setEffectiveContentMode:](self->_reloadOptionsController, "setEffectiveContentMode:", [v47 effectiveContentMode]);
  [(NSTimer *)self->_donateTextTimer invalidate];
  donateTextTimer = self->_donateTextTimer;
  self->_donateTextTimer = 0;

  [(TabDocument *)self setSearchableItemAttributes:0];
  if (!self->_gestureRequiresGoBackToParentTab)
  {
    [(TabDocument *)&self->super.isa _removeParentChildTabDocumentRelations];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__TabDocument_webView_didCommitNavigation___block_invoke;
  block[3] = &unk_2781D60B8;
  v15 = WeakRetained;
  v57 = v15;
  if ([TabDocument webView:didCommitNavigation:]::__once_crash_checkpoint != -1)
  {
    dispatch_once(&[TabDocument webView:didCommitNavigation:]::__once_crash_checkpoint, block);
  }

  self->_externalAppRedirectState = 0;
  self->_hasFocusedInputFieldOnCurrentPage = 0;
  self->_hasFormControlInteraction = 0;
  if (self->_active)
  {
    [(TabDocument *)self hideFindOnPage];
    if (([v15 wantsUnifiedFieldFocused] & 1) == 0)
    {
      [v15 setFavoritesState:0 animated:1];
    }
  }

  v16 = [(TabDocument *)self shouldActivateReaderWhenAvailable];
  if (!v16)
  {
    if (![v15 isShowingReader] || !self->_active)
    {
      goto LABEL_20;
    }

LABEL_19:
    [v15 hideReaderForTabDocument:self animated:v16 deactivationMode:0];
    goto LABEL_20;
  }

  v17 = [v15 nextContinuousItemDocument];
  v18 = v17 == self;

  if (v18)
  {
    goto LABEL_20;
  }

  if ([v15 readerShouldBeShownIfPossible])
  {
    v19 = [(_SFWebView *)self->_readerWebView _webProcessIdentifier];
    if (v19 == [(_SFWebView *)self->_webView _webProcessIdentifier])
    {
      [v15 setReaderViewStale:{objc_msgSend(v15, "isShowingReader")}];
      goto LABEL_20;
    }
  }

  if ([v15 isShowingReader])
  {
    goto LABEL_19;
  }

LABEL_20:
  [(_SFReaderController *)self->_readerContext owningWebViewDidCommitNavigation];
  if ([(TabDocument *)self isShowingReader])
  {
    [(_SFReaderController *)self->_readerContext clearAvailability];
  }

  else
  {
    [(TabDocument *)self clearReaderContext];
  }

  self->_displayingStandaloneImage = [(_SFWebView *)self->_webView _isDisplayingStandaloneImageDocument];
  self->_displayingStandaloneMedia = [(_SFWebView *)self->_webView _isDisplayingStandaloneMediaDocument];
  self->_hasDoneReaderAvailabilityDetection = 0;
  [(WBSTranslationContext *)self->_translationContext owningWebViewDidCommitNavigationWithURL:v50 completionHandler:0];
  v20 = [(TabDocument *)self readingListBookmarkID];
  v45 = [(_SFWebView *)self->_webView backForwardList];
  v48 = [v45 currentItem];
  if (v20 && ![(WKBackForwardListItem *)v48 safari_bookmarkID])
  {
    [(WKBackForwardListItem *)v48 safari_setBookmarkID:v20];
  }

  if (self->_highlightFromNavigation)
  {
    [v48 safari_setHighlight:?];
    highlightFromNavigation = self->_highlightFromNavigation;
    self->_highlightFromNavigation = 0;
  }

  self->_wasLoadedWithLockdownModeEnabled = self->_pendingNavigationWillLoadWithLockdownModeEnabled;
  v22 = [(TabDocument *)self readingListBookmarkID];
  if (self->_active && v22)
  {
    [v15 markReadingListBookmark:self->_readingListBookmark asRead:1 postNotification:1];
  }

  [(SFDialogController *)self->_dialogController owningWebViewDidCommitNavigationWithURL:v50];
  [(_SFPageLoadErrorController *)self->_pageLoadErrorController clearFailedRequest];
  quickLookDocument = self->_quickLookDocument;
  self->_quickLookDocument = 0;

  self->_quickLookDocumentCheckCompleted = 0;
  if (self->_suggestedFilenameForNextCommit)
  {
    [(_SFWebView *)self->_webView setSuggestedFilenameForCurrentBackForwardListItem:?];
    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
    self->_suggestedFilenameForNextCommit = 0;
  }

  [(TabDocument *)&self->super.isa _updatePageZoomWithPreference];
  v25 = self->_displayingStandaloneImage || [(TabDocument *)self isPDFDocument];
  [(WBSFluidProgressController *)self->_fluidProgressController progressStateSourceDidCommitLoad:self loadingSingleResource:v25];
  if (self->_active)
  {
    [(SFNavigationBarItem *)self->_navigationBarItem setShowsReaderButton:[(TabDocument *)self isReaderAvailable]];
    [v15 updateInterface];
  }

  if ([(TabDocument *)self isPDFDocument])
  {
    v26 = [MEMORY[0x277D499B8] sharedLogger];
    [v26 didLoadTabContent:0];
  }

  else if ([(TabDocument *)self hasQuickLookContent])
  {
    v26 = [MEMORY[0x277D499B8] sharedLogger];
    [v26 didLoadTabContent:1];
  }

  else
  {
    v26 = [MEMORY[0x277D499B8] sharedLogger];
    [v26 didLoadTabContent:2];
  }

  if (([v15 isReaderViewStale] & 1) == 0)
  {
    [v15 document:self willMakeReaderVisible:0];
  }

  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator didCommitNavigation];
  [(TabDocument *)self _updateNavigationBarItem];
  v27 = [v15 tabController];
  [v27 saveTabDocumentUserActivitySoon:self];

  v28 = [MEMORY[0x277D499B8] sharedLogger];
  [v28 reportTabUpdatedWithUpdateType:0];

  storeBanner = self->_storeBanner;
  self->_storeBanner = 0;

  [(TabDocument *)self _clearAppBannerIfNotCurrentStoreBannerDeferringRemoval:?];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __43__TabDocument_webView_didCommitNavigation___block_invoke_2;
  v55[3] = &unk_2781D63F8;
  v55[4] = self;
  [(TabDocument *)self _checkForAppLinkWithCompletion:v55];
  v30 = v49;
  [(TabDocument *)self applyHighlightFromNotesIfNeeded];
  [(TabDocument *)self _clearNavigationSource];
  [(_SFPrintController *)self->_printController clearQueue];
  if (self->_shouldResetPrintSuppressionOnNextCommit)
  {
    [(_SFPrintController *)self->_printController resetPrintUISuppression];
    self->_shouldResetPrintSuppressionOnNextCommit = 0;
  }

  [(TabDocument *)self _clearCachedCanonicalURL];
  v31 = [v50 safari_userVisibleHostWithoutWWWSubdomain];
  if (([v31 isEqualToString:self->_domainWhereUserDeclinedAutomaticStrongPassword] & 1) == 0)
  {
    domainWhereUserDeclinedAutomaticStrongPassword = self->_domainWhereUserDeclinedAutomaticStrongPassword;
    self->_domainWhereUserDeclinedAutomaticStrongPassword = 0;

    v30 = v49;
  }

  [(_SFFormAutoFillController *)self->_autoFillController removeAutomaticPasswordButtonInitiatedByUser:0];
  [(TabDocument *)self _donateCurrentPageLoad];
  [(TabDocument *)self _notifyImpressionAnalyticsRecorderIfNeededTabDocumentDidBecomeActive:?];
  [(TabDocument *)self validateExtensionToolbarItems];
  if (!self->_isNavigatingViaNormalReload && !self->_isNavigatingViaReloadFromOrigin && [(TabDocument *)self isPrivateBrowsingEnabled])
  {
    self->_canShowPrivateBrowsingPrivacyProtectionsBanner = 1;
  }

  v33 = [v30 URL];
  v34 = [v33 safari_hasSameSiteAsURL:self->_previousWebPageURLBeforeNavigation];

  if ((v34 & 1) == 0)
  {
    self->_didAlreadyShowPrivateBrowsingPrivacyProtectionsBannerForDomain = 0;
    self->_hasEnteredScribbleMode = 0;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v35 = [(NSHashTable *)self->_navigationObservers copy];
  v36 = [v35 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v36)
  {
    v37 = *v52;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v52 != v37)
        {
          objc_enumerationMutation(v35);
        }

        v39 = *(*(&v51 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v39 tabDocumentDidCommitNavigation:self];
        }
      }

      v36 = [v35 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v36);
  }

  v40 = [v50 safari_URLByReplacingSchemeWithString:*MEMORY[0x277CDB9F0]];
  v41 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
  v42 = [v41 activeSiriReaderSessionURL];
  if ([v40 isEqual:v42])
  {
    v43 = [v50 safari_isEqualToURL:self->_previousWebPageURLBeforeNavigation];

    if ((v43 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  [(TabDocument *)self dismissSiriReaderMediaSessionImmediately:0];
LABEL_69:
  [(TabDocument *)self updateShowsSiriReaderPlayingIcon];
  [(WBSPageContextDataFetcher *)self->_pageContextDataFetcher clearExtractedSchemaData];
  [(NSTimer *)self->_updateAudioUITimer invalidate];
  updateAudioUITimer = self->_updateAudioUITimer;
  self->_updateAudioUITimer = 0;

  [(WBSBrowsingAssistantController *)self->_assistantController clearAssistantResult];
}

void __43__TabDocument_webView_didCommitNavigation___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tabController];
  [v1 saveStateInBackground:1 needsValidate:1];
}

void __43__TabDocument_webView_didCommitNavigation___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [(TabDocument *)*(a1 + 32) _checkForHighlight];
  }
}

- (void)_donateCurrentPageLoad
{
  if (a1 && *(a1 + 904) == 1)
  {
    v2 = [a1 isSearchPage];
    v3 = [*(a1 + 88) loadedUsingDesktopUserAgent];
    v4 = *(a1 + 776);
    v5 = [MEMORY[0x277D49E30] sharedManager];
    [v5 donatePageLoadWithUserAgent:v3 ^ 1u wasSearch:v2 wasPrivateBrowsing:objc_msgSend(a1 wasActualized:"isPrivateBrowsingEnabled") provenance:{objc_msgSend(a1, "nextLoadComesFromSearchPage"), v4}];
  }
}

- (void)userDeclinedAutomaticStrongPasswordForCurrentDomainOnTabWithUUID:(id)a3
{
  v8 = a3;
  v4 = [(TabDocument *)self committedURL];
  v5 = [v4 safari_userVisibleHostWithoutWWWSubdomain];

  v6 = [(TabDocument *)self uuid];
  v7 = [v8 isEqual:v6];

  if (v7)
  {
    objc_storeStrong(&self->_domainWhereUserDeclinedAutomaticStrongPassword, v5);
  }
}

- (void)_willCommitPreviewViewController:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v12 = v3;
    [v3 willCommitPreviewedWebView];
    v4 = [v12 previewTabDocument];
    v5 = [v4 webView];

    [v5 _setAddsVisitedLinks:1];
    v6 = [v5 _unreachableURL];

    if (v6)
    {
      [a1[163] webViewDidCommitErrorPagePreview:v5];
    }

    else
    {
      v7 = [v5 URL];
      if (v7)
      {
        v8 = [a1 isPrivateBrowsingEnabled];

        if ((v8 & 1) == 0)
        {
          v9 = [a1 history];
          v10 = [v9 visitedLinkStore];
          v11 = [v5 URL];
          [v10 addVisitedLinkWithURL:v11];
        }
      }
    }

    v3 = v12;
  }
}

- (void)_didCommitPreviewViewController:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 previewTabDocument];
    v5 = [v4 webView];

    [v5 _setAllowsMediaDocumentInlinePlayback:0];
    v3 = v6;
  }
}

- (id)tabDocumentForPreviewURL:(void *)a3 relatedToWebView:
{
  v4 = a3;
  if (a1)
  {
    v5 = [a1 createWebViewConfiguration];
    [v5 _setRelatedWebView:v4];
    v6 = [v4 configuration];
    v7 = [v6 websiteDataStore];
    [v5 setWebsiteDataStore:v7];

    v8 = objc_alloc(objc_opt_class());
    WeakRetained = objc_loadWeakRetained(a1 + 124);
    v10 = [v8 _initWithBrowserController:WeakRetained configuration:v5];

    [v10 setNextLoadComesFromSearchPage:{objc_msgSend(a1, "isSearchPage")}];
    v11 = [v10 webView];
    [v11 setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v11 _setAddsVisitedLinks:0];
    [v11 _setAllowsMediaDocumentInlinePlayback:1];
    v12 = [a1 sessionState];
    [v10 restoreSessionState:v12 andNavigate:0];
    v13 = objc_loadWeakRetained(a1 + 156);
    [v13 tabDocument:a1 didCreatePreviewDocument:v10];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_webView:(id)a3 gestureRecognizerCouldPinch:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v7 = [WeakRetained tabCollectionViewProvider];
  v8 = [v7 tabSwitcherViewController];
  v9 = [v8 pinchGestureRecognizer];

  if (v9 == v5)
  {
    v11 = 1;
  }

  else
  {
    v10 = [WeakRetained tabViewPinchRecognizer];
    v11 = v10 == v5;
  }

  return v11;
}

- (BOOL)_webView:(id)a3 gestureRecognizerCanBePreventedByTouchEvents:(id)a4
{
  v4 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)keyboardWillHide:(id)a3
{
  if ([MEMORY[0x277D49A08] isPasswordsAppInstalled])
  {
    autoFillController = self->_autoFillController;

    [(_SFFormAutoFillController *)autoFillController makePasswordFields:0 viewable:0];
  }
}

- (void)_webView:(id)a3 contextMenuConfigurationForElement:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  v8 = [MEMORY[0x277CDB800] contextMenuConfigurationForWebView:a3 elementInfo:a4 handler:self];
  v9[2](v9, v8);
}

- (id)_webView:(id)a3 contextMenuContentPreviewForElement:(id)a4
{
  v4 = [MEMORY[0x277CDB800] contextMenuContentPreviewForWebView:a3 elementInfo:a4 handler:self];

  return v4;
}

- (void)_webView:(id)a3 contextMenuForElement:(id)a4 willCommitWithAnimator:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [v7 previewViewController];
  objc_opt_class();
  [v7 setPreferredCommitStyle:objc_opt_isKindOfClass() & 1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__TabDocument__webView_contextMenuForElement_willCommitWithAnimator___block_invoke;
  v10[3] = &unk_2781D60B8;
  v9 = v6;
  v11 = v9;
  [v7 addAnimations:v10];
}

void __69__TabDocument__webView_contextMenuForElement_willCommitWithAnimator___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CDB800] linkPreviewHelperForWebView:*(a1 + 32)];
  [v1 commitPreviewViewController];
}

- (void)_webView:(id)a3 contextMenuDidEndForElement:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentDidDimissPreviewedDocument:self];
}

- (void)willDismissLinkPreviewViewController
{
  [MEMORY[0x277CDB800] invalidateLinkPreviewHelperForWebView:self->_webView];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentDidDimissPreviewedDocument:self];
}

- (id)linkPreviewHelper:(id)a3 previewViewControllerForURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 webView];
  v10 = [(TabDocument *)&self->super.isa tabDocumentForPreviewURL:v9 relatedToWebView:v8];

  v11 = [[LinkPreviewViewController alloc] initWithTabDocument:v10];
  v12 = [(TabDocument *)self view];
  v13 = [v12 geometryProvider];
  [v13 obscuredScrollViewInsetsForTabDocumentView:v12 unobscuredSafeAreaInsets:0];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(LinkPreviewViewController *)v11 browserView];
  [v22 setObscuredInsets:{v15, v17, v19, v21}];

  v23 = [v10 webExtensionsController];
  [v23 didOpenTab:v10];

  v24 = [(TabDocument *)self supportsAdvancedPrivacyProtectionsForURL:v7];
  v25 = [v10 reloadOptionsController];
  [v25 setSupportsAdvancedPrivacyProtections:v24];

  if ([(_SFReloadOptionsController *)self->_reloadOptionsController loadedUsingDesktopUserAgent])
  {
    v26 = [v10 reloadOptionsController];
    [v26 requestDesktopSiteWithURL:v7];
  }

  else
  {
    v27 = [v10 loadURL:v7 userDriven:1];
  }

  v28 = [(LinkPreviewViewController *)v11 previewHeader];
  [v6 setActiveLinkPreviewHeader:v28];

  return v11;
}

- (void)linkPreviewHelper:(id)a3 commitPreviewViewControllerForAction:(int64_t)a4 withTabOrder:(int64_t)a5
{
  v17 = a3;
  v8 = [v17 previewContentViewController];
  v9 = v8;
  if (a4 == 2)
  {
    [(TabDocument *)&self->super.isa _commitPreviewedViewControllerInSafari:v8];
  }

  else if (a4 == 3)
  {
    if (a5 != 1)
    {
      v10 = [v8 previewTabDocument];
      [v10 setUpBackClosesSpawnedTabWithParent:self];
    }

    [(TabDocument *)&self->super.isa _willCommitPreviewViewController:v9];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (a5 == 2)
    {
      v12 = 1;
    }

    else if (a5)
    {
      v12 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277D28F38] defaultTabOrder] == 2;
    }

    [WeakRetained tabDocumentCommitPreviewedDocumentAsNewTab:self inBackground:v12];

    if ([MEMORY[0x277D28F38] defaultTabOrder] == 2)
    {
      v13 = objc_loadWeakRetained(&self->_browserController);
      v14 = [v13 tabCollectionViewProvider];
      v15 = [v14 hasTabBar];

      if ((v15 & 1) == 0)
      {
        v16 = [v17 elementInfo];
        [(TabDocument *)self animateElement:v16 toBarItem:8];
      }
    }
  }
}

- (void)_commitPreviewedViewControllerInSafari:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    [(TabDocument *)a1 _willCommitPreviewViewController:v4];
    WeakRetained = objc_loadWeakRetained(a1 + 156);
    [WeakRetained tabDocumentCommitPreviewedDocument:a1];

    [(TabDocument *)a1 _didCommitPreviewViewController:v4];
  }
}

- (BOOL)linkPreviewHelper:(id)a3 supportsAction:(int64_t)a4 forURL:(id)a5
{
  v6 = a5;
  if (a4)
  {
    v7 = 1;
  }

  else
  {
    v8 = +[FeatureManager sharedFeatureManager];
    if ([v8 isReadingListAvailable])
    {
      v7 = [MEMORY[0x277D7B558] supportsURL:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)linkPreviewHelper:(id)a3 resultOfLoadingURL:(id)a4
{
  v4 = [(TabDocument *)self resultOfLoadingURL:a4];

  return v4;
}

- (void)linkPreviewHelper:(id)a3 redirectToExternalNavigationResult:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBABA0];
  v9 = v5;
  v7 = [v5 URL];
  v8 = [v6 safari_nonAppInitiatedRequestWithURL:v7];
  [(TabDocument *)self _redirectToExternalNavigationResult:v9 fromOriginalRequest:v8 navigationAction:0 promptPolicy:0 isMainFrame:1 userAction:0];
}

- (void)linkPreviewHelper:(id)a3 didProduceNavigationIntent:(id)a4 forAction:(int64_t)a5
{
  v13 = a3;
  v8 = a4;
  [(TabDocument *)self dispatchNavigationIntent:v8];
  if (a5 == 3 && [MEMORY[0x277D28F38] defaultTabOrder] == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v10 = [WeakRetained tabCollectionViewProvider];
    v11 = [v10 hasTabBar];

    if ((v11 & 1) == 0)
    {
      v12 = [v13 elementInfo];
      [(TabDocument *)self animateElement:v12 toBarItem:8];
    }
  }
}

- (void)linkPreviewHelperWillBeginDownload:(id)a3
{
  v4 = [a3 elementInfo];
  [(TabDocument *)self animateElementToDownloadsBarItemSoon:?];
}

- (void)linkPreviewHelper:(id)a3 addURLToReadingList:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__TabDocument_linkPreviewHelper_addURLToReadingList___block_invoke;
  v11[3] = &unk_2781D6AC0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  [WeakRetained showReadingListAutomaticArchiveAlertIfNeededWithCompletion:v11];
}

void __53__TabDocument_linkPreviewHelper_addURLToReadingList___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v2 = [*(a1 + 32) elementInfo];
  v3 = [v2 title];

  if (![v3 length])
  {
    v4 = [*(a1 + 40) safari_userVisibleString];

    v3 = v4;
  }

  if ([(WebBookmarkCollection *)v8 saveReadingListBookmarkWithTitle:v3 address:*(a1 + 40)])
  {
    v5 = [MEMORY[0x277D499B8] sharedLogger];
    [v5 didAddReadingListItemWithMethod:0];

    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) elementInfo];
    [v6 animateElement:v7 toBarItem:3];
  }
}

- (void)linkPreviewHelperWillDisableLinkPreview
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentWillDisableLinkPreview];
}

- (id)previewViewControllerForURL:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CDB800];
  webView = self->_webView;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v8 = [WeakRetained scene];
  v9 = [v8 keyWindow];
  [v9 bounds];
  v10 = [v5 previewViewControllerWebView:webView windowBounds:v4 url:self handler:?];

  return v10;
}

- (void)commitPreviewViewController:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__TabDocument_commitPreviewViewController___block_invoke;
  v3[3] = &unk_2781D60B8;
  v3[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

void __43__TabDocument_commitPreviewViewController___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CDB800] linkPreviewHelperForWebView:*(*(a1 + 32) + 1064)];
  [v1 commitPreviewViewController];
}

- (_SFWebClipMetadataFetcher)webClipMetadataFetcher
{
  webClipMetadataFetcher = self->_webClipMetadataFetcher;
  if (!webClipMetadataFetcher)
  {
    v4 = objc_alloc(MEMORY[0x277CDB908]);
    v5 = [(TabDocument *)self activityJSController];
    v6 = [v4 initWithInjectedJavascriptController:v5];
    v7 = self->_webClipMetadataFetcher;
    self->_webClipMetadataFetcher = v6;

    webClipMetadataFetcher = self->_webClipMetadataFetcher;
  }

  return webClipMetadataFetcher;
}

- (void)getApplicationManifestWithCompletionHandler:(id)a3
{
  v4 = a3;
  applicationManifestFetcher = self->_applicationManifestFetcher;
  v8 = v4;
  if (!applicationManifestFetcher)
  {
    v6 = [objc_alloc(MEMORY[0x277D4A700]) initWithWebView:self->_webView];
    v7 = self->_applicationManifestFetcher;
    self->_applicationManifestFetcher = v6;

    applicationManifestFetcher = self->_applicationManifestFetcher;
    v4 = v8;
  }

  [(WBSApplicationManifestFetcher *)applicationManifestFetcher getApplicationManifestWithCompletionHandler:v4];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(location, self);
  v59 = v7;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [(TabDocument *)self _didFinishNavigation:v7];
  *&self->_isNavigatingViaNormalReload = 0;
  [(_SFWebView *)self->_webView setObscuringContents:0];
  self->_contentIsReadyForSnapshot = 1;
  v8 = [(TabDocument *)self expectedOrCurrentURL];
  urlForDisplayedContent = self->_urlForDisplayedContent;
  self->_urlForDisplayedContent = v8;

  [(_SFPageLoadErrorController *)self->_pageLoadErrorController scheduleResetCrashCount];
  [(TabDocument *)self _didFinishLoading];
  self->_shouldDismissReaderInReponseToSameDocumentNavigation = 0;
  [(WBSFluidProgressController *)self->_fluidProgressController finishFluidProgressWithProgressStateSource:self];
  v10 = [WeakRetained tabController];
  [v10 saveTabDocumentUserActivitySoon:self];

  v11 = 0x277D49000uLL;
  v12 = [MEMORY[0x277D499B8] sharedLogger];
  [v12 reportTabUpdatedWithUpdateType:0];

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __43__TabDocument_webView_didFinishNavigation___block_invoke;
  v67[3] = &unk_2781D6840;
  objc_copyWeak(&v68, location);
  [v6 _doAfterNextPresentationUpdate:v67];
  [(TabDocument *)self updateAccessibilityIdentifier];
  kdebug_trace();
  pageLoadStatistics = self->_pageLoadStatistics;
  if (pageLoadStatistics)
  {
    [(PageLoadTestStatistics *)pageLoadStatistics finishedNavigation:v7];
  }

  v14 = [v7 _request];
  v15 = objc_getAssociatedObject(v14, kWebClipToNSURLRequestAssociationKey);

  v58 = [(TabDocument *)self urlForSharing];
  if (v15)
  {
    if (![v15 configurationIsManaged] || (objc_msgSend(v15, "iconImagePath"), v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
      [(TabDocument *)self _updateSnapshotForWebClip:v15];
      v17 = [(TabDocument *)self webClipMetadataFetcher];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __43__TabDocument_webView_didFinishNavigation___block_invoke_2;
      v64[3] = &unk_2781DB120;
      v65 = v15;
      v66 = v58;
      [v17 fetchMetadataWithConsumer:v64];
    }
  }

  v18 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  v19 = [v18 touchIconCache];

  v20 = [(WebBookmark *)self->_bookmarkForIconFetching address];
  v56 = v20;
  if (v20)
  {
    v21 = [MEMORY[0x277CBEBC0] safari_URLWithUserTypedString:v20];
    if (v21)
    {
      v57 = v21;
      v22 = [v21 host];
      v55 = v19;
      v23 = [v22 safari_domainFromHost];
      v24 = [(_SFWebView *)self->_webView _committedURL];
      v25 = [v24 host];
      v26 = [v25 safari_domainFromHost];
      if (![v23 isEqualToString:v26])
      {

        v30 = v59;
        v11 = 0x277D49000;
LABEL_17:

        if (!v30)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      v27 = [v19 shouldRequestTouchIconForWebPageNavigationFromBookmarkInteractionForURL:v57];

      if (v27)
      {
        bookmarkForIconFetching = self->_bookmarkForIconFetching;
        self->_bookmarkForIconFetching = 0;

        v19 = v55;
        [(TabDocument *)self touchIconFetcher];
        v29 = v11 = 0x277D49000;
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __43__TabDocument_webView_didFinishNavigation___block_invoke_3;
        v61[3] = &unk_2781DB148;
        v62 = v55;
        v63 = v57;
        [v29 fetchTouchIconURLsWithCompletion:v61];

        v22 = v62;
        v30 = v59;
        goto LABEL_17;
      }

      v19 = v55;
      v11 = 0x277D49000uLL;
      if (!v59)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v57 = 0;
      if (!v7)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v57 = 0;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

LABEL_20:
  if ([MEMORY[0x277D28F58] hasSharedSiteMetadataManager])
  {
    v31 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v32 = [v31 linkPresentationMetadataProvider];
    [v32 updateMetadataIfNeededUsingWebView:v6];
  }

LABEL_22:
  if ([(_SFBrowserConfiguration *)self->_configuration allowsUserActivityFeedback])
  {
    pageContextDataFetcher = self->_pageContextDataFetcher;
    if (!pageContextDataFetcher)
    {
      v34 = objc_alloc_init(MEMORY[0x277D4A7B0]);
      v35 = self->_pageContextDataFetcher;
      self->_pageContextDataFetcher = v34;

      v36 = [(TabDocument *)self webView];
      [(WBSPageContextDataFetcher *)self->_pageContextDataFetcher setWebView:v36];

      [(WBSPageContextDataFetcher *)self->_pageContextDataFetcher setDelegate:self];
      [(WBSPageContextDataFetcher *)self->_pageContextDataFetcher setOwnerUUID:self->_uuid];
      pageContextDataFetcher = self->_pageContextDataFetcher;
    }

    v37 = [(TabDocument *)self webView];
    [(WBSPageContextDataFetcher *)pageContextDataFetcher fetchSchemaDataForWebView:v37];
  }

  if (![(TabDocument *)self isPrivateBrowsingEnabled])
  {
    reloadOptionsController = self->_reloadOptionsController;
    v39 = [v6 URL];
    [(_SFReloadOptionsController *)reloadOptionsController logCompletedPageloadToDifferentialPrivacy:v39];
  }

  if ([(TabDocument *)self isPDFDocument])
  {
    quickLookDocument = self->_quickLookDocument;
    v41 = [(TabDocument *)self suggestedFilenameForDisplayedPDF];
    [(SFQuickLookDocument *)quickLookDocument setFileNameForPDFDocument:v41];
  }

  v42 = [*(v11 + 2488) sharedLogger];
  v43 = [WeakRetained sidebarUIProxy];
  [v42 didRequestPageShowingSideBar:{objc_msgSend(v43, "isShowingSidebar")}];

  [(TabDocument *)&self->super.isa _donateTextSoon];
  v44 = [MEMORY[0x277D49EA8] sharedManager];
  v45 = [v6 URL];
  v46 = [v45 host];
  [v44 clearCertificateBypassesForHostIfNecessary:v46 withTrust:{objc_msgSend(v6, "serverTrust")}];

  v47 = [MEMORY[0x277CBEAA8] now];
  dateOfLastFinishedNavigation = self->_dateOfLastFinishedNavigation;
  self->_dateOfLastFinishedNavigation = v47;

  v49 = [(TabDocument *)self URL];
  previousWebPageURLBeforeNavigation = self->_previousWebPageURLBeforeNavigation;
  self->_previousWebPageURLBeforeNavigation = v49;

  if (!self->_shouldKeepIgnoredSiriSuggestedSitesOnLoad && ![(TabDocument *)self isPrivateBrowsingEnabled])
  {
    v51 = [MEMORY[0x277D49F90] sharedController];
    v52 = [(TabDocument *)self URL];
    v53 = [v52 host];
    v54 = [(TabDocument *)self profileIdentifier];
    [v51 removeIgnoredSiriSuggestedSitesWithURLHost:v53 inProfile:v54];
  }

  self->_shouldKeepIgnoredSiriSuggestedSitesOnLoad = 0;

  objc_destroyWeak(&v68);
  objc_destroyWeak(location);
}

void __43__TabDocument_webView_didFinishNavigation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setNeedsNewTabSnapshot];
    [(TabDocument *)WeakRetained _updateSnapshotIfNeeded];
  }
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v17 = a4;
  v7 = a5;
  [(TabDocument *)self _didFinishNavigation:v17];
  [(_SFWebView *)self->_webView setObscuringContents:0];
  self->_contentIsReadyForSnapshot = 1;
  [(TabDocument *)self updateAccessibilityIdentifier];
  v8 = [(TabDocument *)self expectedOrCurrentURL];
  urlForDisplayedContent = self->_urlForDisplayedContent;
  self->_urlForDisplayedContent = v8;

  if ([v7 code] != 204 || (objc_msgSend(v7, "domain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CE3918]), v10, (v11 & 1) == 0))
  {
    objc_storeStrong(&self->_lastLoadError, a5);
    objc_storeStrong(&self->_lastLoadErrorForFormatMenu, a5);
    [(TabDocument *)self _didFinishLoading];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v13 = [WeakRetained tabController];
    [v13 saveTabDocumentUserActivitySoon:self];

    v14 = [MEMORY[0x277D499B8] sharedLogger];
    [v14 reportTabUpdatedWithUpdateType:0];

    pageLoadStatistics = self->_pageLoadStatistics;
    if (pageLoadStatistics)
    {
      [(PageLoadTestStatistics *)pageLoadStatistics failedNavigation:v17 withError:v7];
    }

    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
    self->_suggestedFilenameForNextCommit = 0;
  }
}

- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 protectionSpace];
  v10 = [v9 authenticationMethod];
  v11 = [v10 isEqualToString:*MEMORY[0x277CBAB00]];

  if (v11)
  {
    if (-[TabDocument isControlledByAutomation](self, "isControlledByAutomation") && (+[Application sharedApplication](Application, "sharedApplication"), v12 = objc_claimAutoreleasedReturnValue(), [v12 automationController], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "automationSession"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "configuration"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "acceptInsecureCertificates"), v15, v14, v13, v12, v16) || (objc_msgSend(MEMORY[0x277D49EA8], "sharedManager"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "protectionSpace"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "didInvalidCertificateExceptionsApplySuccessfullyForProtectionSpace:inPrivateBrowsing:", v23, -[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")), v23, v22, v24))
    {
      v25 = MEMORY[0x277CBAB80];
      v19 = [v7 protectionSpace];
      v26 = [v25 credentialForTrust:{objc_msgSend(v19, "serverTrust")}];
      v8[2](v8, 0, v26);

LABEL_16:
      goto LABEL_17;
    }

    v28 = [v7 protectionSpace];
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController setProtectionSpaceForInvalidCertificateBypass:v28];

    v27 = 3;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = [WeakRetained tabDocumentShouldHandleAuthentication:self];

    if (v18)
    {
      v19 = [v7 protectionSpace];
      if ([v19 _sf_canAuthenticate])
      {
        v20 = [v19 authenticationMethod];
        v21 = [v20 isEqualToString:*MEMORY[0x277CBAAC8]];

        if (v21)
        {
          [(_SFPageLoadErrorController *)self->_pageLoadErrorController handleClientCertificateAuthenticationChallenge:v7 completionHandler:v8];
        }

        else
        {
          dialogController = self->_dialogController;
          v30 = MEMORY[0x277D28C48];
          v31 = [(_SFWebView *)self->_webView _committedURL];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __75__TabDocument_webView_didReceiveAuthenticationChallenge_completionHandler___block_invoke;
          v36[3] = &unk_2781DB170;
          v37 = v8;
          v32 = [v30 authenticationDialogWithAuthenticationChallenge:v7 committedURL:v31 completionHandler:v36];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __75__TabDocument_webView_didReceiveAuthenticationChallenge_completionHandler___block_invoke_2;
          v34[3] = &unk_2781D61F8;
          v34[4] = self;
          v35 = v7;
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __75__TabDocument_webView_didReceiveAuthenticationChallenge_completionHandler___block_invoke_3;
          v33[3] = &unk_2781D60B8;
          v33[4] = self;
          [(SFDialogController *)dialogController presentDialog:v32 animateAlongsidePresentation:v34 dismissal:v33];
        }
      }

      else
      {
        v8[2](v8, 3, 0);
      }

      goto LABEL_16;
    }

    v27 = 2;
  }

  v8[2](v8, v27, 0);
LABEL_17:
}

uint64_t __75__TabDocument_webView_didReceiveAuthenticationChallenge_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) failureResponse];
  v3 = [v2 URL];
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  *(v4 + 192) = v3;

  if ([*(a1 + 32) isShowingReader])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 992));
    [WeakRetained hideReaderForTabDocument:*(a1 + 32) animated:0 deactivationMode:0];
  }

  [(TabDocument *)*(a1 + 32) _updateNavigationBarItem];
  v7 = *(a1 + 32);

  return [v7 updateTabTitle];
}

uint64_t __75__TabDocument_webView_didReceiveAuthenticationChallenge_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  *(v2 + 192) = 0;

  [(TabDocument *)*(a1 + 32) _updateNavigationBarItem];
  v4 = *(a1 + 32);

  return [v4 updateTabTitle];
}

- (void)_webView:(id)a3 authenticationChallenge:(id)a4 shouldAllowLegacyTLS:(id)a5
{
  v28 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[Application sharedApplication];
  v11 = [v10 legacyTLSHostManager];
  v12 = [v8 protectionSpace];
  v13 = [v12 host];
  v14 = [v11 isLegacyTLSAllowedForHost:v13];

  if ((v14 & 1) == 0)
  {
    v15 = [v8 protectionSpace];
    v16 = [v15 safari_URL];
    v17 = [v16 absoluteString];
    v18 = [v28 _unreachableURL];
    v19 = [v18 absoluteString];
    v20 = [v17 isEqualToString:v19];

    if ((v20 & 1) == 0)
    {
      pageLoadErrorController = self->_pageLoadErrorController;
      v22 = [v8 protectionSpace];
      v23 = [v22 safari_URL];
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      v25 = [WeakRetained tabController];
      v26 = [v25 activeTabDocument];
      v27 = [v26 URL];
      [(_SFPageLoadErrorController *)pageLoadErrorController handleLegacyTLSWithFailingURL:v23 clickThroughURL:v27 authenticationChallenge:v8];
    }
  }

  v9[2](v9, v14);
}

- (void)_webView:(id)a3 didNegotiateModernTLSForURL:(id)a4
{
  v7 = a4;
  v4 = +[Application sharedApplication];
  v5 = [v4 legacyTLSHostManager];
  v6 = [v7 host];
  [v5 clearLegacyTLSForHostIfPresent:v6];
}

- (void)_webView:(id)a3 navigation:(id)a4 didSameDocumentNavigation:(int64_t)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v36 = v7;
  [(_SFFormAutoFillController *)self->_autoFillController offerToSaveUnsubmittedFormDataIfNeededInWebView:v7 fromSameDocumentNavigationOfType:a5 completionHandler:&__block_literal_global_579];
  if (([(_SFWebView *)self->_webView isLoading]& 1) == 0)
  {
    [(WBSFluidProgressController *)self->_fluidProgressController cancelFluidProgressWithProgressStateSource:self];
    [(TabDocument *)self _didFinishLoading];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = [(NSHashTable *)self->_navigationObservers copy];
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v9)
  {
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 tabDocumentDidSameDocumentNavigation:self];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v9);
  }

  v13 = [(TabDocument *)self browserController];
  v37 = [v13 activeSearchEngine];

  v14 = [(TabDocument *)self committedURL];
  v15 = [v37 urlIsValidSearch:v14];
  if (a5 == 1)
  {
    v16 = v15;
    v17 = +[(WBSParsecDSession *)UniversalSearchSession];
    v18 = [WeakRetained idOfParsecQueryOriginatingFromSearchSuggestion];
    if (v18)
    {
      v19 = [(_SFWebView *)self->_webView backForwardList];
      v20 = [v19 backItem];
      v21 = [v20 URL];
      v22 = [v37 urlIsValidSearch:v21];

      if (!(v16 & 1 | ((v22 & 1) == 0)))
      {
        [v17 sendCBAEngagementFeedback:v14 query:v18];
      }
    }

    [WeakRetained clearParsecQueryOriginatingFromSearchSuggestion];
  }

  if ([(TabDocument *)self isSearchPage]&& ![(TabDocument *)self isPrivateBrowsingEnabled])
  {
    v23 = [MEMORY[0x277CDB8A8] sharedInstance];
    v24 = [v23 userVisibleQueryFromSearchURL:v14 allowQueryThatLooksLikeURL:1];

    v25 = +[RecentWebSearchesController sharedController];
    [v25 addRecentSearch:v24 fromURL:v14];
  }

  sameDocumentNavigationToHistoryVisitCorrelator = self->_sameDocumentNavigationToHistoryVisitCorrelator;
  v27 = [v36 URL];
  v28 = [(WBSSameDocumentNavigationToHistoryVisitCorrelator *)sameDocumentNavigationToHistoryVisitCorrelator visitForSameDocumentNavigationToURL:v27];

  if (v28)
  {
    [(WBSHistory *)self->_history addAttributes:1 toVisit:v28];
  }

  if ([WeakRetained isShowingReader] && a5 && self->_active && self->_shouldDismissReaderInReponseToSameDocumentNavigation)
  {
    [WeakRetained hideReaderForTabDocument:self animated:0 deactivationMode:0];
    [(TabDocument *)self clearReaderContext];
  }

  self->_shouldDismissReaderInReponseToSameDocumentNavigation = 0;
  [(TabDocument *)self _clearAppBannerIfNotCurrentStoreBannerDeferringRemoval:?];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __61__TabDocument__webView_navigation_didSameDocumentNavigation___block_invoke_2;
  v39[3] = &unk_2781D63F8;
  v39[4] = self;
  [(TabDocument *)self _checkForAppLinkWithCompletion:v39];
  [(TabDocument *)self applyHighlightFromNotesIfNeeded];
  [(TabDocument *)self _clearCachedCanonicalURL];
  v29 = [(TabDocument *)self expectedOrCurrentURL];
  if (a5 == 2)
  {
    if (([(NSURL *)self->_originalURL isEqual:v29]& 1) == 0)
    {
      v30 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
      v31 = [v30 faviconProvider];
      [v31 linkIconFromPageURL:self->_originalURL toCurrentPageURL:v29 isPrivate:-[TabDocument isPrivateBrowsingEnabled](self completionHandler:{"isPrivateBrowsingEnabled"), 0}];
    }
  }

  else if ((a5 - 1) > 1)
  {
    if (!a5)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (([(NSURL *)self->_originalURL isEqual:v29]& 1) == 0)
  {
    [(TabDocument *)self donateSameDocumentNavigationIfNecessary];
  }

LABEL_34:
  v32 = [(WBSBrowsingAssistantController *)self->_assistantController result];
  if (v32)
  {
    v33 = [(WBSBrowsingAssistantController *)self->_assistantController result];
    v34 = [v33 pageURL];
    v35 = [v34 isEqual:v14];

    if ((v35 & 1) == 0)
    {
      [(WBSBrowsingAssistantController *)self->_assistantController clearAssistantResult];
    }
  }

LABEL_37:
}

void __61__TabDocument__webView_navigation_didSameDocumentNavigation___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [(TabDocument *)*(a1 + 32) _checkForHighlight];
  }
}

- (void)_webView:(id)a3 renderingProgressDidChange:(unint64_t)a4
{
  v4 = a4;
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ((v4 & 4) != 0)
  {
    [(WBSFluidProgressController *)self->_fluidProgressController startRocketEffectWithProgressStateSource:self];
  }

  if (v4)
  {
    self->_didFirstLayout = 1;
    [(_SFFormAutoFillController *)self->_autoFillController prefillFormsSoonIfNeeded];
  }

  if ((v4 & 2) != 0)
  {
    linkPreviewViewController = self->_linkPreviewViewController;
    v8 = [(TabDocument *)self URLString];
    [(LinkPreviewViewController *)linkPreviewViewController updatePreviewLoadingUIWithURLString:v8];

    v9 = [(TabDocument *)self expectedOrCurrentURL];
    urlForDisplayedContent = self->_urlForDisplayedContent;
    self->_urlForDisplayedContent = v9;

    [(TabDocument *)self _updateNavigationBarItem];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = self->_renderingProgressEventObservers;
    v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v12)
    {
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v15 webViewDidFirstVisuallyNonEmptyLayoutForTabDocument:self];
          }
        }

        v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v12);
    }
  }

  if ((v4 & 0x100) != 0)
  {
    didFirstMeaningfulPaint = self->_didFirstMeaningfulPaint;
    *&self->_didFirstMeaningfulPaint = 257;
    if (!didFirstMeaningfulPaint)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = self->_renderingProgressEventObservers;
      v18 = [(NSHashTable *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v18)
      {
        v19 = *v26;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v25 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v21 webViewDidFirstMeaningfulPaintForTabDocument:{self, v25}];
            }
          }

          v18 = [(NSHashTable *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v18);
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((v4 & 0x40) != 0)
  {
    [(_SFWebView *)self->_webView setObscuringContents:0];
    self->_didFirstPaint = 1;
    appBannerPendingFirstPaint = self->_appBannerPendingFirstPaint;
    if (appBannerPendingFirstPaint)
    {
      if (self->_appBannerRemovalWasDeferred)
      {
        [WeakRetained removeAppBannerFromTabDocument:self animated:0];
        [(SFPinnableBanner *)self->_appBannerPendingFirstPaint setInitiallyBehindNavigationBar:0];
        appBannerPendingFirstPaint = self->_appBannerPendingFirstPaint;
      }

      objc_storeStrong(&self->_appBanner, appBannerPendingFirstPaint);
      v24 = self->_appBannerPendingFirstPaint;
      self->_appBannerPendingFirstPaint = 0;

      [WeakRetained tabDocumentDidCompleteCheckForAppBanner:self];
    }

    else if (self->_appBannerRemovalWasDeferred)
    {
      [(TabDocument *)self _startAppBannerRemovalTimer];
    }
  }

  if ((v4 & 8) != 0)
  {
    [(_SFWebView *)self->_webView setPlaceholderImage:0];
  }

  [(TabDocument *)self updateAccessibilityIdentifier];
}

- (void)_webViewWebProcessDidCrash:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_closed)
  {
    goto LABEL_25;
  }

  [(SFDialogController *)self->_dialogController owningWebViewDidChangeProcessID];
  [(_SFPageLoadErrorController *)self->_pageLoadErrorController clearCrashCountResetTimer];
  [(TabDocument *)self setMediaStateIcon:?];
  pageLoadTest = self->_pageLoadTest;
  if (pageLoadTest)
  {
    [(PageLoadTest *)pageLoadTest resetAfterWebProcessCrash];
  }

  if (!self->_active)
  {
    [(TabDocument *)self hibernate];
    [(TabDocument *)self setHibernatedDueToMemoryWarning:1];
    [Application postTestNotificationName:@"WebProcessDidCrashNotification" object:self];
    goto LABEL_25;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v7 = [(TabDocument *)self URL];
  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
  }

  else
  {
    v9 = [(_SFWebView *)self->_webView backForwardList];
    v10 = [v9 currentItem];
    v7 = [v10 URL];

    v8 = MEMORY[0x277CCA9B8];
    if (!v7)
    {
      v11 = 0;
      v12 = 1;
      goto LABEL_10;
    }
  }

  v22 = *MEMORY[0x277CCA748];
  v23[0] = v7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v12 = 0;
LABEL_10:
  v13 = [v8 errorWithDomain:@"com.apple.mobilesafari" code:0 userInfo:v11];
  if ((v12 & 1) == 0)
  {
  }

  pageLoadErrorController = self->_pageLoadErrorController;
  v15 = [(TabDocument *)self URLString];
  LODWORD(pageLoadErrorController) = [(_SFPageLoadErrorController *)pageLoadErrorController updateCrashesAndShowCrashError:v13 URLString:v15];

  if (pageLoadErrorController)
  {
    [WeakRetained setShowingCrashBanner:0 animated:1];
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      if (([WeakRetained isSuspendedOrSuspending] & 1) == 0 && !self->_suppressCrashBanner)
      {
        [WeakRetained setShowingCrashBanner:1 animated:1];
      }

      if (!self->_unresponsiveWebProcessBlock)
      {
        v16 = [v4 _committedURL];
        v17 = [v16 isEqual:v7];

        if (v17)
        {
          v18 = [v4 reload];
        }

        else
        {
          v19 = [MEMORY[0x277CBABA0] requestWithURL:v7];
          v20 = [(TabDocument *)self _requestBySettingAdvancedPrivacyProtectionsFlag:v19];

          v21 = [(LoadingController *)self->_loadingController loadRequest:v20 userDriven:0 shouldOpenExternalURLs:0];
        }
      }
    }

    [(TabDocument *)self updateAccessibilityIdentifier];
  }

LABEL_25:
}

- (void)_webView:(id)a3 didStartLoadForQuickLookDocumentInMainFrameWithFileName:(id)a4 uti:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = objc_alloc(MEMORY[0x277D28D28]);
  if (self->_suggestedFilenameForNextCommit)
  {
    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
  }

  else
  {
    suggestedFilenameForNextCommit = v12;
  }

  v10 = [v8 initWithFileName:suggestedFilenameForNextCommit uti:v7];
  quickLookDocumentWriter = self->_quickLookDocumentWriter;
  self->_quickLookDocumentWriter = v10;
}

- (void)_webView:(id)a3 didFinishLoadForQuickLookDocumentInMainFrame:(id)a4
{
  quickLookDocumentWriter = self->_quickLookDocumentWriter;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__TabDocument__webView_didFinishLoadForQuickLookDocumentInMainFrame___block_invoke;
  v5[3] = &unk_2781D72B0;
  v5[4] = self;
  [(SFQuickLookDocumentWriter *)quickLookDocumentWriter writeDataAndClose:a4 completionHandler:v5];
}

void __69__TabDocument__webView_didFinishLoadForQuickLookDocumentInMainFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 992));
  [WeakRetained updateInterface];
}

- (void)_webViewDidBeginNavigationGesture:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_navigationObservers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 tabDocumentDidBeginNavigationGesture:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_webViewWillEndNavigationGesture:(id)a3 withNavigationToBackForwardListItem:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  self->_shouldDismissReaderInReponseToSameDocumentNavigation = 1;
  if (v7 && [(TabDocument *)self canGoBackToParentTab])
  {
    self->_gestureRequiresGoBackToParentTab = 1;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_navigationObservers;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 tabDocumentWillEndNavigationGesture:self withNavigationToBackForwardListItem:{v7, v13}];
        }
      }

      v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_webViewDidEndNavigationGesture:(id)a3 withNavigationToBackForwardListItem:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_navigationObservers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 tabDocumentDidEndNavigationGesture:self withNavigationToBackForwardListItem:{v5, v13}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (v5)
  {
    if (self->_gestureRequiresGoBackToParentTab)
    {
      [(TabDocument *)self goBackToParentTab];
      self->_gestureRequiresGoBackToParentTab = 0;
    }

    else
    {
      v11 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      v12 = [v11 bookmarkWithID:-[WKBackForwardListItem safari_bookmarkID](v5)];
      [(TabDocument *)self setReadingListBookmark:v12];
    }
  }
}

- (void)_webView:(id)a3 willSnapshotBackForwardListItem:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  -[WKBackForwardListItem safari_setNavigationSnapshotRequiresBars:](v6, [WeakRetained canHideBars] ^ 1);
}

- (void)_webView:(id)a3 shouldGoToBackForwardListItem:(id)a4 inPageCache:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v12 = a4;
  v9 = a6;
  v10 = [v12 URL];
  v11 = [v10 safari_isJavaScriptURL];

  if ((v11 & 1) == 0)
  {
    [(WBSTranslationContext *)self->_translationContext owningWebViewWillNavigateToBackForwardListItem:v12 inPageCache:v7];
    self->_isNavigatingViaBackForwardList = 1;
  }

  v9[2](v9, v11 ^ 1u);
}

- (void)_webView:(id)a3 didCommitLoadWithRequest:(id)a4 inFrame:(id)a5
{
  if (!self->_disableContentBlockersWhenReloading)
  {
    v5 = [(TabDocument *)self sfScribbleController:a3];
    [v5 scheduleValidationForHiddenElementsIfNeeded];
  }
}

- (void)_webView:(id)a3 didFailLoadDueToNetworkConnectionIntegrityWithURL:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(TabDocument *)self _contentBlockerStatisticsStore];
  v8 = [v9 URL];
  [v7 recordThirdPartyResourceBlocked:v6 onFirstParty:v8 completionHandler:0];
}

- (void)_webView:(id)a3 didChangeLookalikeCharactersFromURL:(id)a4 toURL:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(TabDocument *)self trackerInfo];
  v9 = [v8 queryParameterFilteringDataQueue];
  [v9 addPendingDataWithAdjustedURL:v7 originalURL:v10];
}

- (void)_webView:(id)a3 requestUserMediaAuthorizationForDevices:(unint64_t)a4 url:(id)a5 mainFrameURL:(id)a6 decisionHandler:(id)a7
{
  v14 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [MEMORY[0x277CDB8F8] sharedController];
  [v13 requestUserMediaAuthorizationForDevices:a4 url:v14 mainFrameURL:v11 decisionHandler:v12 dialogPresenter:self];
}

- (void)_webView:(id)a3 checkUserMediaPermissionForURL:(id)a4 mainFrameURL:(id)a5 frameIdentifier:(unint64_t)a6 decisionHandler:(id)a7
{
  v13 = a4;
  v10 = a5;
  v11 = a7;
  v12 = [MEMORY[0x277CDB8F8] sharedController];
  [v12 checkUserMediaPermissionForURL:v13 mainFrameURL:v10 frameIdentifier:a6 decisionHandler:v11];
}

- (void)_webView:(id)a3 mediaCaptureStateDidChange:(unint64_t)a4
{
  v7 = a3;
  if (self && self->_mediaCaptureState != a4)
  {
    self->_mediaCaptureState = a4;
    [(TabDocument *)self mediaStateDidChangeNeedsDelay:?];
  }

  v6 = +[Application sharedApplication];
  [v6 updateShouldLockPrivateBrowsingWithTimerIfNecessary];
}

- (void)_updateAudioUI:(id)a3
{
  v6 = a3;
  audioState = self->_audioState;
  if (audioState == 2)
  {
    v5 = 6;
  }

  else
  {
    if (audioState != 1)
    {
      goto LABEL_6;
    }

    v5 = 5;
  }

  [(TabDocument *)self setMediaStateIcon:v5];
LABEL_6:
}

- (void)_webView:(id)a3 queryPermission:(id)a4 forOrigin:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = [a5 safari_hostName];
  if ([v8 isEqualToString:@"geolocation"])
  {
    v11 = [MEMORY[0x277CDB7E0] sharedManager];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__TabDocument__webView_queryPermission_forOrigin_completionHandler___block_invoke;
    v17[3] = &unk_2781DB198;
    v18 = v9;
    [v11 getGeolocationSettingForDomain:v10 completionHandler:v17];
    v12 = &v18;
  }

  else
  {
    if (([v8 isEqualToString:@"camera"] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"microphone") & 1) == 0)
    {
      (*(v9 + 2))(v9, 0);
      goto LABEL_7;
    }

    v13 = [MEMORY[0x277CDB8F8] sharedController];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__TabDocument__webView_queryPermission_forOrigin_completionHandler___block_invoke_2;
    v14[3] = &unk_2781DB1C0;
    v15 = v8;
    v16 = v9;
    [v13 getPermissionForOrigin:v10 topLevelOrigin:v10 completionHandler:v14];
    v12 = &v15;

    v11 = v16;
  }

LABEL_7:
}

uint64_t __68__TabDocument__webView_queryPermission_forOrigin_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = WBSUserMediaPermissionToWKPermissionDecision();
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __68__TabDocument__webView_queryPermission_forOrigin_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqualToString:@"camera"];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = WBSUserMediaPermissionToWKPermissionDecisionCamera();
  }

  else
  {
    v4 = WBSUserMediaPermissionToWKPermissionDecisionMicrophone();
  }

  v5 = *(v3 + 16);

  return v5(v3, v4);
}

- (void)webView:(id)a3 runJavaScriptAlertPanelWithMessage:(id)a4 initiatedByFrame:(id)a5 completionHandler:(id)a6
{
  v14 = a4;
  v8 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:self];

  if (v10)
  {
    if ([(TabDocument *)self isControlledByAutomation])
    {
      v11 = +[Application sharedApplication];
      v12 = [v11 automationController];
      [v12 tabDocument:self runJavaScriptAlertPanelWithMessage:v14 completionHandler:v8];
    }

    else
    {
      dialogController = self->_dialogController;
      v11 = [MEMORY[0x277D28C48] javaScriptAlertDialogWithMessage:v14 completionHandler:v8];
      [(SFDialogController *)dialogController presentDialog:v11];
    }
  }

  else
  {
    v8[2](v8);
  }
}

- (void)webView:(id)a3 runJavaScriptConfirmPanelWithMessage:(id)a4 initiatedByFrame:(id)a5 completionHandler:(id)a6
{
  v14 = a4;
  v8 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:self];

  if (v10)
  {
    if ([(TabDocument *)self isControlledByAutomation])
    {
      v11 = +[Application sharedApplication];
      v12 = [v11 automationController];
      [v12 tabDocument:self runJavaScriptConfirmPanelWithMessage:v14 completionHandler:v8];
    }

    else
    {
      dialogController = self->_dialogController;
      v11 = [MEMORY[0x277D28C48] javaScriptConfirmDialogWithMessage:v14 completionHandler:v8];
      [(SFDialogController *)dialogController presentDialog:v11];
    }
  }

  else
  {
    v8[2](v8, 0);
  }
}

- (void)webView:(id)a3 runJavaScriptTextInputPanelWithPrompt:(id)a4 defaultText:(id)a5 initiatedByFrame:(id)a6 completionHandler:(id)a7
{
  v17 = a4;
  v10 = a5;
  v11 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:self];

  if (v13)
  {
    if ([(TabDocument *)self isControlledByAutomation])
    {
      v14 = +[Application sharedApplication];
      v15 = [v14 automationController];
      [v15 tabDocument:self runJavaScriptTextInputPanelWithPrompt:v17 defaultText:v10 completionHandler:v11];
    }

    else
    {
      dialogController = self->_dialogController;
      v14 = [MEMORY[0x277D28C48] javaScriptPromptDialogWithMessage:v17 defaultText:v10 completionHandler:v11];
      [(SFDialogController *)dialogController presentDialog:v14];
    }
  }

  else
  {
    v11[2](v11, 0);
  }
}

- (void)_webView:(id)a3 requestStorageAccessPanelForDomain:(id)a4 underCurrentDomain:(id)a5 completionHandler:(id)a6
{
  v17 = a4;
  v9 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:self];

  if (v12)
  {
    dialogController = self->_dialogController;
    v14 = MEMORY[0x277D28C48];
    v15 = [(TabDocument *)self webExtensionsController];
    v16 = [v14 requestStorageAccessDialogForDomain:v17 underCurrentDomain:v9 extensionsController:v15 completionHandler:v10];
    [(SFDialogController *)dialogController presentDialog:v16];
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (void)_webView:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 windowFeatures:(id)a6 completionHandler:(id)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a7;
  if ([v11 _shouldOpenAppLinks])
  {
    v13 = [v11 request];
    v14 = [v13 URL];

    if ([v14 safari_isHTTPFamilyURL])
    {
      v15 = [objc_alloc(MEMORY[0x277D4A6F0]) initWithURL:v14];
      if ([v15 synchronouslyDecideOpenStrategy] == 3 && !self->_wasLoadedWithLockdownModeEnabled)
      {
        [v15 openExternally];
        v12[2](v12, 0);

        goto LABEL_21;
      }
    }
  }

  if ([v11 _isUserInitiated])
  {
    v16 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = [WeakRetained popUpPolicyForTabDocument:self];
  }

  v18 = [v11 _userInitiatedAction];
  v19 = [v18 isConsumed];

  if (v19)
  {
    v16 = 2;
  }

  else if (v16 == 1)
  {
    v20 = [v11 _userInitiatedAction];
    [v20 consume];

    v16 = 1;
  }

  v21 = objc_loadWeakRetained(&self->_browserController);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__TabDocument__webView_createWebViewWithConfiguration_forNavigationAction_windowFeatures_completionHandler___block_invoke;
  aBlock[3] = &unk_2781DB1E8;
  aBlock[4] = self;
  v35 = v11;
  v39 = v16;
  v22 = v12;
  v38 = v22;
  v14 = v21;
  v36 = v14;
  v37 = v10;
  v23 = _Block_copy(aBlock);
  v24 = v23;
  if (v16)
  {
    if (v16 == 2)
    {
      v22[2](v22, 0);
    }

    else if (v16 == 1)
    {
      v23[2](v23);
    }
  }

  else
  {
    dialogController = self->_dialogController;
    v26 = MEMORY[0x277D28C48];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __108__TabDocument__webView_createWebViewWithConfiguration_forNavigationAction_windowFeatures_completionHandler___block_invoke_2;
    v31 = &unk_2781D6C00;
    v32 = v23;
    v33 = v22;
    v27 = [v26 blockedPopupWindowDialogWithCompletionHandler:&v28];
    [(SFDialogController *)dialogController presentDialog:v27, v28, v29, v30, v31];
  }

LABEL_21:
}

void __108__TabDocument__webView_createWebViewWithConfiguration_forNavigationAction_windowFeatures_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1360);
  v16 = [*(a1 + 40) request];
  v3 = [v16 URL];
  if ([v2 safari_isURLWithinNavigationScope:v3])
  {
    v4 = *(a1 + 72);

    if (v4 == 1)
    {
      v5 = *(a1 + 32);
      v17 = [*(a1 + 40) request];
      v6 = [v5 loadRequest:? userDriven:?];

      v7 = *(*(a1 + 64) + 16);

      v7();
      return;
    }
  }

  else
  {
  }

  if (!*(*(a1 + 32) + 520))
  {
    v8 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    v9 = *(a1 + 32);
    v10 = *(v9 + 520);
    *(v9 + 520) = v8;
  }

  v18 = [objc_alloc(objc_opt_class()) _initWithBrowserController:*(a1 + 48) configuration:*(a1 + 56)];
  [v18 setIsBlank:0];
  [v18 setParentTabDocumentForBackClosesSpawnedTab:*(a1 + 32)];
  [v18 setWasOpenedFromLink:1];
  [*(*(a1 + 32) + 520) addPointer:v18];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1248));
  [WeakRetained tabDocument:*(a1 + 32) didCreateNewTabDocument:v18];

  v12 = [MEMORY[0x277D499B8] sharedLogger];
  v13 = [*(a1 + 48) tabCollectionViewProvider];
  [v12 didOpenNewTabWithURLWithTrigger:3 tabCollectionViewType:{objc_msgSend(v13, "visibleTabCollectionViewType")}];

  v14 = *(a1 + 64);
  v15 = [v18 webView];
  (*(v14 + 16))(v14, v15);
}

uint64_t __108__TabDocument__webView_createWebViewWithConfiguration_forNavigationAction_windowFeatures_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)_webView:(id)a3 takeFocus:(int64_t)a4
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v7 = [WeakRetained rootViewController];
  v8 = [v7 usingUnifiedBar];

  if (v8)
  {
    [v10 resignFirstResponder];
    v9 = [MEMORY[0x277D75518] focusSystemForEnvironment:v10];
    if (objc_opt_respondsToSelector())
    {
      if (a4)
      {
        if (a4 == 1)
        {
          [v9 _safari_moveFocusToNextGroup];
        }
      }

      else
      {
        [v9 _safari_moveFocusToPreviousGroup];
      }
    }
  }

  else
  {
    [WeakRetained setFavoritesFieldFocused:1 animated:1];
  }
}

- (BOOL)_webViewCanBecomeFocused:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained favoritesAreEmbedded];

  return v4 ^ 1;
}

- (void)webViewDidClose:(id)a3
{
  v7 = [TabDocument tabDocumentForWKWebView:a3];
  if (v7)
  {
    if (![(TabDocument *)self isShowingFindOnPage])
    {
      v4 = [(SFDialogController *)self->_dialogController presentedDialog];

      if (!v4 && !self->_isDisplayingTelephonyPrompt)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v6 = [WeakRetained tabDocumentCanCloseWindow:self];

        if (v6)
        {
          [(TabDocument *)self _closeTabDocumentAnimated:1];
        }
      }
    }
  }
}

- (void)_webViewFullscreenMayReturnToInline:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained prepareForTabDocumentWebViewFullscreenMayReturnToInline:self];
}

- (void)_webViewWillEnterFullscreen:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_navigationObservers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 tabDocumentWillEnterFullscreen:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_webViewDidEnterFullscreen:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_navigationObservers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 tabDocumentDidEnterFullscreen:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  self->_webViewIsFullscreen = 1;
  v9 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Web view did enter full screen", v10, 2u);
  }

  if (_PLShouldLogRegisteredEvent())
  {
    v15 = @"subevent";
    v16 = @"Enter";
    _PLLogRegisteredEvent([MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1]);
  }
}

- (void)_webViewDidExitFullscreen:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_navigationObservers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 tabDocumentDidExitFullscreen:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  self->_webViewIsFullscreen = 0;
  v9 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_DEFAULT, "Web view did exit full screen", v10, 2u);
  }

  if (_PLShouldLogRegisteredEvent())
  {
    v15 = @"subevent";
    v16 = @"Exit";
    _PLLogRegisteredEvent([MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1]);
  }
}

- (double)_convertRectFromDocumentToWebView:(double)a3
{
  if (!a1)
  {
    return 0.0;
  }

  v10 = [*(a1 + 1064) scrollView];
  [v10 zoomScale];
  v12 = v11;

  v13 = [*(a1 + 1064) scrollView];
  [v13 convertRect:*(a1 + 1064) toView:{a2 * v12, a3 * v12, a4 * v12, a5 * v12}];
  v15 = v14;

  return v15;
}

- (void)animateElement:(id)a3 toBarItem:(int64_t)a4
{
  v19 = a3;
  v6 = [v19 image];
  if (v6)
  {
    [v19 boundingRect];
    v11 = [(TabDocument *)self _convertRectFromDocumentToWebView:v7, v8, v9, v10];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained animateLinkImage:objc_msgSend(v6 fromRect:"CGImage") inView:self->_webView toBarItem:{a4, v11, v13, v15, v17}];
  }
}

- (id)_webView:(id)a3 alternateURLFromImage:(id)a4 userInfo:(id *)a5
{
  v6 = a4;
  v7 = [MEMORY[0x277CDB870] sharedController];
  v8 = [v7 getActionForImageSynchronously:v6 userInfo:a5];
  v9 = [v8 urlThatCanBeOpened];

  return v9;
}

- (id)presentingViewControllerForAction:(id)a3
{
  v3 = [(TabDocument *)self browserController];
  v4 = [v3 viewControllerToPresentFrom];

  return v4;
}

- (CGRect)sourceRectForPopoverActionPicker:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CDB870] sharedController];
  v6 = [v5 elementForAction:v4];
  [v6 boundingRect];
  v11 = [(TabDocument *)self _convertRectFromDocumentToWebView:v7, v8, v9, v10];
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)_presentingViewControllerForWebView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v5 = [WeakRetained tabController];
  v6 = [v5 activeTabDocument];

  if (v6 == self)
  {
    v7 = [WeakRetained viewControllerToPresentFrom];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_webView:(id)a3 decideDatabaseQuotaForSecurityOrigin:(id)a4 currentQuota:(unint64_t)a5 currentOriginUsage:(unint64_t)a6 currentDatabaseUsage:(unint64_t)a7 expectedUsage:(unint64_t)a8 decisionHandler:(id)a9
{
  v14 = a4;
  v15 = a9;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = [WeakRetained tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:self];

  if (v17)
  {
    v18 = [v14 safari_userVisibleName];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __144__TabDocument__webView_decideDatabaseQuotaForSecurityOrigin_currentQuota_currentOriginUsage_currentDatabaseUsage_expectedUsage_decisionHandler___block_invoke;
    v19[3] = &unk_2781DB210;
    v20 = v15;
    v21 = a5;
    [WebsiteDataUtilities getDatabaseQuotaForOrigin:v18 currentQuota:a5 currentOriginUsage:a6 currentDatabaseUsage:a7 expectedUsage:a8 dialogPresenter:self completionHandler:v19];
  }

  else
  {
    (*(v15 + 2))(v15, a5);
  }
}

uint64_t __144__TabDocument__webView_decideDatabaseQuotaForSecurityOrigin_currentQuota_currentOriginUsage_currentDatabaseUsage_expectedUsage_decisionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (!a2)
  {
    a2 = *(a1 + 40);
  }

  return (*(v3 + 16))(v3, a2);
}

- (void)_webView:(id)a3 printFrame:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained presentPrintControllerForTabDocument:self frame:v5 initiatedByWebContent:1];
}

- (unint64_t)_webView:(id)a3 willUpdateDataInteractionOperationToOperation:(unint64_t)a4 forSession:(id)a5
{
  v7 = a5;
  v8 = [v7 localDragSession];
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webKitDragSession);
    v10 = v8 != WeakRetained;
  }

  else
  {
    v10 = 1;
  }

  if (a4 <= 1 && v10 && [MEMORY[0x277D28F40] canCreateNavigationIntentForDropSession:v7])
  {
    a4 = 2;
  }

  return a4;
}

- (BOOL)_webView:(id)a3 performDataInteractionOperationWithItemProviders:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_deferredDropNavigationIntentGeneration + 1;
  self->_deferredDropNavigationIntentGeneration = v8;
  v9 = [MEMORY[0x277D28F40] builder];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__TabDocument__webView_performDataInteractionOperationWithItemProviders___block_invoke;
  v13[3] = &unk_2781DB238;
  v13[4] = self;
  v13[5] = v8;
  [v9 buildNavigationIntentForItemProviders:v7 completionHandler:v13];

  readerWebView = self->_readerWebView;
  if (readerWebView == v6)
  {
    deferredDropWasHandledByWebKit = self->_deferredDropWasHandledByWebKit;
    self->_deferredDropWasHandledByWebKit = MEMORY[0x277CBEC28];

    [(TabDocument *)self _attemptDeferredDropNavigation];
  }

  return readerWebView == v6;
}

void __73__TabDocument__webView_performDataInteractionOperationWithItemProviders___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = *(a1 + 32);
  if (*(a1 + 40) == *(v4 + 456))
  {
    objc_storeStrong((v4 + 448), a2);
    [(TabDocument *)*(a1 + 32) _attemptDeferredDropNavigation];
  }
}

- (void)_attemptDeferredDropNavigation
{
  if (a1)
  {
    v2 = *(a1 + 464);
    if (v2)
    {
      if (*(a1 + 448))
      {
        if (([v2 BOOLValue] & 1) == 0)
        {
          WeakRetained = objc_loadWeakRetained((a1 + 992));
          [WeakRetained dispatchNavigationIntent:*(a1 + 448)];
        }

        v4 = *(a1 + 448);
        *(a1 + 448) = 0;

        v5 = *(a1 + 464);
        *(a1 + 464) = 0;
      }
    }
  }
}

- (void)_webView:(id)a3 dataInteractionOperationWasHandled:(BOOL)a4 forSession:(id)a5 itemProviders:(id)a6
{
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  deferredDropWasHandledByWebKit = self->_deferredDropWasHandledByWebKit;
  self->_deferredDropWasHandledByWebKit = v7;

  [(TabDocument *)self _attemptDeferredDropNavigation];
}

- (id)_webView:(id)a3 adjustedDataInteractionItemProvidersForItemProvider:(id)a4 representingObjects:(id)a5 additionalData:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v31 = a4;
  v27 = a5;
  v28 = a6;
  v29 = [v27 safari_firstObjectPassingTest:&__block_literal_global_636];
  if (v29)
  {
    v10 = [MEMORY[0x277D28F40] builderWithModifierFlags:{0, v25}];
    v30 = [v10 navigationIntentWithURL:v29];

    v11 = [(TabDocument *)self uuid];
    [v30 setSourceTabUUID:v11];

    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v13 = [WeakRetained UUID];
    [v30 setSourceWindowUUID:v13];

    v33 = v31;
    v14 = [MEMORY[0x277CC1EF0] _sf_windowCreationActivityWithNavigationIntent:v30];
    v15 = objc_alloc_init(MEMORY[0x277CCAA88]);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = [v33 registeredContentTypes];
    obj = v16;
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v17)
    {
      v18 = *v38;
      v19 = *MEMORY[0x277CE1E90];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          if (v14 && [*(*(&v37 + 1) + 8 * i) conformsToType:v19])
          {
            [v15 registerObject:v14 visibility:0];

            v14 = 0;
          }

          v22 = [v21 identifier];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __111__TabDocument__webView_adjustedDataInteractionItemProvidersForItemProvider_representingObjects_additionalData___block_invoke_2;
          v34[3] = &unk_2781DB260;
          v35 = v33;
          v36 = v21;
          [v15 registerItemForTypeIdentifier:v22 loadHandler:v34];
        }

        v16 = obj;
        v17 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v17);
    }

    v42 = v15;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  }

  else
  {
    v41 = v31;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:{1, v25}];
  }

  return v23;
}

uint64_t __111__TabDocument__webView_adjustedDataInteractionItemProvidersForItemProvider_representingObjects_additionalData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __111__TabDocument__webView_adjustedDataInteractionItemProvidersForItemProvider_representingObjects_additionalData___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) identifier];
  [v7 loadItemForTypeIdentifier:v8 options:v6 completionHandler:v9];
}

- (void)_webView:(id)a3 requestGeolocationAuthorizationForURL:(id)a4 frame:(id)a5 decisionHandler:(id)a6
{
  v12 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [MEMORY[0x277CDB7E0] sharedManager];
  [v11 requestPermissionForURL:v12 frame:v9 dialogPresenter:self browserPersona:0 completionHandler:v10];
}

- (BOOL)_webView:(id)a3 fileUploadPanelContentIsManagedWithInitiatingFrame:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [v4 request];
  v7 = [v6 URL];
  v8 = [v7 safari_URLByNormalizingBlobURL];
  v9 = [v5 isURLManaged:v8];

  return v9;
}

- (void)_webView:(id)a3 didChangeSafeAreaShouldAffectObscuredInsets:(BOOL)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentDidChangeSafeAreaShouldAffectObscuredInsets:self];
}

- (void)_webView:(id)a3 requestWebAuthenticationConditionalMediationRegistrationForUser:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CDB7D8] sharedController];
  v10 = [(TabDocument *)self tabIDForAutoFill];
  v11 = [(TabDocument *)self committedURL];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__TabDocument__webView_requestWebAuthenticationConditionalMediationRegistrationForUser_completionHandler___block_invoke;
  v13[3] = &unk_2781D6380;
  v12 = v8;
  v14 = v12;
  [v9 canAutomaticallyRegisterPasskeyForUsername:v7 inTabWithID:v10 currentURL:v11 completionHandler:v13];
}

- (void)_webView:(id)a3 hasVideoInPictureInPictureDidChange:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained tabDocument:self didChangePIPState:v4];

  [(TabDocument *)self updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:[(TabDocument *)self isActive]];
  v7 = [MEMORY[0x277D499B8] sharedLogger];
  [v7 reportPictureInPictureEvent:v4 ^ 1];
}

- (void)_webView:(id)a3 willStartInputSession:(id)a4
{
  v6 = a4;
  v5 = [objc_alloc(MEMORY[0x277CDB7D0]) initWithFormInputSession:v6];
  if (![v6 requiresStrongPasswordAssistance] || (-[_SFFormAutoFillController prepareForShowingAutomaticStrongPasswordWithInputSession:](self->_autoFillController, "prepareForShowingAutomaticStrongPasswordWithInputSession:", v5), (objc_msgSend(MEMORY[0x277D49A08], "isPasswordsAppInstalled") & 1) != 0))
  {
    [(_SFFormAutoFillController *)self->_autoFillController fieldWillFocusWithInputSession:v5];
  }
}

- (void)_webView:(id)a3 didStartInputSession:(id)a4
{
  v5 = a4;
  if (![v5 requiresStrongPasswordAssistance] || (objc_msgSend(MEMORY[0x277D49A08], "isPasswordsAppInstalled") & 1) != 0)
  {
    [(_SFFormAutoFillController *)self->_autoFillController fieldDidFocus];
  }
}

- (BOOL)_webView:(id)a3 focusRequiresStrongPasswordAssistance:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x277CDB7D0]) initWithFocusedElement:v5];
  v7 = [(_SFFormAutoFillController *)self->_autoFillController shouldShowPasswordManagementAppOnboardingViews];
  autoFillController = self->_autoFillController;
  if (v7)
  {
    v9 = [(_SFFormAutoFillController *)autoFillController beginAutomaticPasswordInteractionWithInputSession:v6];
    v10 = 1;
  }

  else
  {
    v11 = [(_SFFormAutoFillController *)autoFillController beginAutomaticPasswordInteractionWithInputSession:v6];
    v10 = v11 != 0;
  }

  return v10;
}

- (id)_webViewAdditionalContextForStrongPasswordAssistance:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CDB958];
  v3 = [(TabDocument *)self uuid];
  v4 = [v3 UUIDString];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (void)_webView:(id)a3 willSubmitFormValues:(id)a4 userObject:(id)a5 submissionHandler:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  operator new();
}

void *__74__TabDocument__webView_willSubmitFormValues_userObject_submissionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v1[8] = 1;
  return (*(*v1 + 16))(v1);
}

- (int64_t)_webView:(id)a3 decidePolicyForFocusedElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  [Application postTestNotificationName:@"WebFormElementDidFocusNotification" object:self];
  if (self->_locked)
  {
    goto LABEL_2;
  }

  if (self->_allowsProgrammaticFocusToBeginInputSession)
  {
    v8 = 1;
    goto LABEL_15;
  }

  if ([(TabDocument *)self isControlledByAutomation])
  {
LABEL_2:
    v8 = 2;
  }

  else
  {
    if ([(_SFFormAutoFillController *)self->_autoFillController elementIsBeingFocusedForStreamlinedLogin:v7])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if ([WeakRetained tabDocumentCanBeginInputSessionForStreamlinedLogin:self])
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      WeakRetained = [(LoadingController *)self->_loadingController URL];
      v10 = [v6 _committedURL];
      if ([WeakRetained isEqual:v10])
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }
    }
  }

LABEL_15:

  return v8;
}

- (void)_webViewDidEnableInspectorBrowserDomain:(id)a3
{
  v10 = a3;
  webExtensionsStateObserver = self->_webExtensionsStateObserver;
  if (!webExtensionsStateObserver)
  {
    v5 = objc_alloc(MEMORY[0x277D4A800]);
    webView = self->_webView;
    v7 = [(TabDocument *)self webExtensionsController];
    v8 = [v5 initWithWebView:webView extensionsController:v7];
    v9 = self->_webExtensionsStateObserver;
    self->_webExtensionsStateObserver = v8;

    webExtensionsStateObserver = self->_webExtensionsStateObserver;
  }

  [(WBSSafariExtensionStateObserver *)webExtensionsStateObserver startObservingExtensionStateChanges];
}

- (void)_webViewDidDisableInspectorBrowserDomain:(id)a3
{
  webExtensionsStateObserver = self->_webExtensionsStateObserver;
  if (webExtensionsStateObserver)
  {
    [(WBSSafariExtensionStateObserver *)webExtensionsStateObserver stopObservingExtensionStateChanges];
  }
}

- (BOOL)allowsBrowsingAssistant
{
  if (-[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled") || [MEMORY[0x277D49E58] userConsentState] != 1)
  {
    return 0;
  }

  v2 = MEMORY[0x277D49E58];

  return [v2 isAvailableInCurrentLocale];
}

- (void)browsingAssistantController:(id)a3 didUpdateContentOptionsForURL:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(TabDocument *)self committedURL];
  v8 = WBSIsEqual();

  if (v8)
  {
    v9 = [v12 result];
    v10 = [v9 contentOptions];

    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained tabDocument:self didReceiveAssistantContentOptions:v10];

    [(SFNavigationBarItem *)self->_navigationBarItem updateContentOptions:v10];
  }
}

- (void)browsingAssistantControllerDidUpdateUserConsentState:(id)a3
{
  if ([(TabDocument *)self allowsBrowsingAssistant])
  {
    assistantController = self->_assistantController;
    v6 = [(TabDocument *)self url];
    v5 = [(WBSTranslationContext *)self->_translationContext webpageLocale];
    [(WBSBrowsingAssistantController *)assistantController checkForAssistantContentFromPegasusForURL:v6 locale:v5];
  }
}

- (void)loadingController:(id)a3 willLoadRequest:(id)a4 webView:(id)a5 userDriven:(BOOL)a6
{
  v6 = a6;
  v11 = a4;
  v9 = a5;
  [(TabDocument *)self _loadingControllerWillLoadRequest:v11 webView:v10 userDriven:v6];
  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator willStartNewBrowserChromeInitiatedNavigation];
}

- (void)loadingControllerWillStartUserDrivenLoad:(id)a3
{
  *&self->_loadWasUserDriven = 1;
  self->_shouldResetPrintSuppressionOnNextCommit = 1;
  self->_sessionStateRestorationSource = 0;
  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator willStartNewBrowserChromeInitiatedNavigation];
}

- (void)_webView:(id)a3 logDiagnosticMessage:(id)a4 description:(id)a5
{
  v8 = a4;
  v6 = a5;
  v7 = [MEMORY[0x277D499B8] sharedLogger];
  [v7 logDiagnosticMessageWithKey:v8 diagnosticMessage:v6];
}

- (void)_webView:(id)a3 logDiagnosticMessageWithResult:(id)a4 description:(id)a5 result:(int64_t)a6
{
  v10 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277D499B8] sharedLogger];
  [v9 logDiagnosticMessageWithKey:v10 diagnosticMessage:v8 result:a6];
}

- (void)_webView:(id)a3 logDiagnosticMessageWithValue:(id)a4 description:(id)a5 value:(id)a6
{
  v11 = a4;
  v8 = a5;
  v9 = a6;
  v10 = [MEMORY[0x277D499B8] sharedLogger];
  [v10 logDiagnosticMessageWithKey:v11 diagnosticMessage:v8 value:v9];
}

- (void)_webView:(id)a3 logDiagnosticMessageWithEnhancedPrivacy:(id)a4 description:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (-[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled") || ([MEMORY[0x277D49E30] sharedManager], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "donateForDiagnosticLoggingKey:value:webPageLoadedOverPrivateRelay:", v8, v9, objc_msgSend(v12, "_wasPrivateRelayed")), v10, (v11 & 1) == 0))
  {
    WBSLogWithDifferentialPrivacy();
  }
}

- (void)_webView:(id)a3 logDiagnosticMessage:(id)a4 description:(id)a5 valueDictionary:(id)a6
{
  v11 = a4;
  v8 = a5;
  v9 = a6;
  v10 = [MEMORY[0x277D499B8] sharedLogger];
  [v10 didReceiveAnalyticsEventFromWebKitWithName:v11 description:v8 payload:v9];
}

- (void)_webView:(id)a3 logDiagnosticMessageWithDomain:(id)a4 domain:(int64_t)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!a5)
  {
    ct_green_tea_logger_create_static();
    v7 = getCTGreenTeaOsLogHandle();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        v11 = [v6 UTF8String];
        _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_INFO, "%s", &v10, 0xCu);
      }
    }
  }
}

- (void)didAutoDetectSiteSpecificSearchProviderWithOriginatingURL:(id)a3 searchURLTemplate:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  if (v7)
  {
    v8 = [(TabDocument *)self browserController];
    v9 = [v8 activeSearchEngine];
    v10 = [v9 urlIsValidSearch:v7];

    if (v10)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      v12 = [WeakRetained rootViewController];
      v13 = [v12 tipsCoordinator];
      [v13 donatePerformSearchFromDefaultSearchEngineWebPageEvent];
    }
  }

  if ([(_SFBrowserConfiguration *)self->_configuration allowsSiteSpecificSearch])
  {
    v14 = [MEMORY[0x277D4A028] sharedController];
    v15 = [objc_alloc(MEMORY[0x277D49FB8]) initWithString:v6];
    v16 = [v17 absoluteString];
    [v14 setSearchURLTemplateFromForm:v15 forSourcePageURLString:v16 completionHandler:0];
  }
}

- (void)didFindAppBannerWithContent:(id)a3
{
  v4 = a3;
  if (!self->_storeBannersAreDisabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v6 = [WeakRetained isPrivateBrowsingEnabled];

    if ((v6 & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = objc_loadWeakRetained(&self->_delegate);
        [v7 removeAppBannerFromTabDocument:self animated:1];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(TabDocument *)self _setAppBannerWhenPainted:?];
      }

      v8 = [(TabDocument *)self URL];
      SFCreateAppSuggestionBannerFromMetaTagContent();
    }
  }
}

void __43__TabDocument_didFindAppBannerWithContent___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v6 = *(a1 + 32);
  if (!*(v6 + 1200) && !*(v6 + 360) || *(v6 + 959) == 1)
  {
    [v4 setDelegate:?];
    objc_storeStrong((*(a1 + 32) + 352), a2);
    v7 = [*(*(a1 + 32) + 1064) backForwardList];
    v8 = [v7 currentItem];

    if (*(*(a1 + 32) + 320) != v8)
    {
      v9 = [v5 overlayProvider];

      if (v9)
      {
        v10 = [v5 overlayProvider];
        v11 = [*(a1 + 32) perSitePreferencesVendor];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __43__TabDocument_didFindAppBannerWithContent___block_invoke_2;
        v12[3] = &unk_2781D61F8;
        v12[4] = *(a1 + 32);
        v13 = v5;
        [v10 requestOverlayWithPreferencesVendor:v11 completion:v12];
      }

      else
      {
        [(TabDocument *)*(a1 + 32) _setAppBannerWhenPainted:v5];
      }
    }
  }
}

- (void)findOnPageCompletionProvider:(id)a3 setStringToComplete:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SFTextSearchMatchesCounter *)self->_findMatchesCounter queryString];
  v9 = [v8 isEqualToString:v7];

  if ((v9 & 1) == 0)
  {
    objc_storeWeak(&self->_findCompletionProvider, v6);
    v10 = [(TabDocument *)self findInteraction];
    v11 = [v10 _configuredSearchOptions];
    if (-[SFTextSearchMatchesCounter canSkipCountingMatchesForQueryString:wordMatchMethod:](self->_findMatchesCounter, "canSkipCountingMatchesForQueryString:wordMatchMethod:", v7, [v11 wordMatchMethod]))
    {
      v12 = -[FindOnPageCompletionItem initWithString:numberOfMatches:forQueryID:]([FindOnPageCompletionItem alloc], "initWithString:numberOfMatches:forQueryID:", v7, 0, [v6 parsecQueryID]);
      v27[0] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      [v6 setCompletions:v13 forString:v7];
    }

    else if ([(SFTextSearchMatchesCounter *)self->_findMatchesCounter searchTookTooLong])
    {
      v14 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_INFO, "Not making additional calls to -performTextSearchWithQueryString because the previous calls took too long", buf, 2u);
      }
    }

    else
    {
      [(SFTextSearchMatchesCounter *)self->_findMatchesCounter invalidate];
      objc_initWeak(buf, self);
      v15 = objc_alloc(MEMORY[0x277D28E30]);
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __64__TabDocument_findOnPageCompletionProvider_setStringToComplete___block_invoke;
      v23 = &unk_2781DB2B0;
      objc_copyWeak(&v25, buf);
      v16 = v7;
      v24 = v16;
      v17 = [v15 initWithQueryString:v16 completionHandler:&v20];
      findMatchesCounter = self->_findMatchesCounter;
      self->_findMatchesCounter = v17;

      v19 = [(TabDocument *)self activeWebView:v20];
      [v19 performTextSearchWithQueryString:v16 usingOptions:v11 resultAggregator:self->_findMatchesCounter];

      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }
  }
}

void __64__TabDocument_findOnPageCompletionProvider_setStringToComplete___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(TabDocument *)WeakRetained _updateFindCompletionProviderWithNumberOfMatches:a2 forString:*(a1 + 32)];
}

- (void)_updateFindCompletionProviderWithNumberOfMatches:(void *)a3 forString:
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 152));
    if (WeakRetained)
    {
      v7 = -[FindOnPageCompletionItem initWithString:numberOfMatches:forQueryID:]([FindOnPageCompletionItem alloc], "initWithString:numberOfMatches:forQueryID:", v5, a2, [WeakRetained parsecQueryID]);
      v9[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      [WeakRetained setCompletions:v8 forString:v5];
    }
  }
}

- (void)clearFindOnPageMatchesCounter
{
  findMatchesCounter = self->_findMatchesCounter;
  self->_findMatchesCounter = 0;
}

- (BOOL)canFindOnPage
{
  v2 = [(TabDocument *)self activeWebView];
  v3 = [v2 _findInteractionEnabled];

  return v3;
}

- (void)showFindOnPage
{
  v2 = [(TabDocument *)self activeWebView];
  [v2 find:0];
}

- (UIEdgeInsets)_webView:(id)a3 finalObscuredInsetsForScrollView:(id)a4 withVelocity:(CGPoint)a5 targetContentOffset:(CGPoint *)a6
{
  y = a5.y;
  x = a5.x;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained finalObscuredInsetsForScrollView:v10 withVelocity:a6 targetContentOffset:{x, y}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (BOOL)formAutoFillControllerCanPrefillForm:(id)a3
{
  v4 = [(TabDocument *)self didFirstLayout];
  if (v4)
  {

    LOBYTE(v4) = [(TabDocument *)self didFinishDocumentLoad];
  }

  return v4;
}

- (id)formAutoFillControllerURLForFormAutoFill:(id)a3
{
  v3 = [(TabDocument *)self URL];

  return v3;
}

- (id)currentSavedAccountContextForFormAutoFillController:(id)a3
{
  v3 = [(TabDocument *)self profileIdentifier];
  if ([v3 isEqualToString:*MEMORY[0x277D49BD8]])
  {
    v4 = [MEMORY[0x277D49B30] defaultContext];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277D49B30]) initWithSafariProfileIdentifier:v3];
  }

  v5 = v4;

  return v5;
}

- (BOOL)formAutoFillControllerDidUserDeclineAutomaticStrongPasswordForCurrentDomain:(id)a3
{
  v4 = [(TabDocument *)self committedURL];
  v5 = [v4 safari_userVisibleHostWithoutWWWSubdomain];

  LOBYTE(v4) = [v5 isEqualToString:self->_domainWhereUserDeclinedAutomaticStrongPassword];
  return v4;
}

- (void)formAutoFillControllerUserChoseToUseGeneratedPassword:(id)a3
{
  domainWhereUserDeclinedAutomaticStrongPassword = self->_domainWhereUserDeclinedAutomaticStrongPassword;
  self->_domainWhereUserDeclinedAutomaticStrongPassword = 0;
}

- (void)formAutoFillControllerDidFocusSensitiveFormField:(id)a3
{
  hasFocusedInputFieldOnCurrentPage = self->_hasFocusedInputFieldOnCurrentPage;
  self->_hasFocusedInputFieldOnCurrentPage = 1;
  if (!hasFocusedInputFieldOnCurrentPage)
  {
    [(TabDocument *)self _updateNavigationBarItem];
  }
}

- (void)formAutoFillControllerGetAuthenticationForAutoFill:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained tabDocumentCanDisplayModalUI:self];

  if (v9)
  {
    [(TabDocument *)self _getAuthenticationForAutoFillController:v6 withCompletion:v7];
  }

  else
  {
    v10 = _Block_copy(v7);
    autoFillAuthenticationCompletionBlock = self->_autoFillAuthenticationCompletionBlock;
    self->_autoFillAuthenticationCompletionBlock = v10;

    v12 = WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_215819000, v12, OS_LOG_TYPE_INFO, "Deferring AutoFill Authentication since the TabDocument can't show modal UI", v13, 2u);
    }
  }
}

void __70__TabDocument__getAuthenticationForAutoFillController_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v5 = [*(a1 + 32) authenticationContext];
  v4 = [v5 authenticatedContext];
  (*(v3 + 16))(v3, a2, v4);
}

- (void)presentAutoFillInternalFeedbackToastForFormAutoFillController:(id)a3 diagnosticsDataWithoutPageContents:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained presentAutoFillInternalFeedbackToastWithDiagnosticsDataWithoutPageContents:v5];
}

- (void)dismissAutoFillInternalFeedbackActivityForFormAutoFillController:(id)a3 immediately:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained dismissAutoFillInternalFeedbackToastImmediately:v4];
}

- (void)resetPendingAutoFillInternalFeedbackToastDismissalTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained resetPendingAutoFillInternalFeedbackToastDismissalTimer];
}

- (BOOL)printControllerShouldPrintReader:(id)a3
{
  if (self->_showingReader)
  {
    return 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v6 = [WeakRetained presentedActivityViewController];

    if (v6)
    {
      v7 = [v6 customizationController];
      showingReader = [v7 selectedContentType] == 2;
    }

    else
    {
      showingReader = self->_showingReader;
    }
  }

  return showingReader;
}

- (BOOL)printControllerCanPresentPrintUI:(id)a3
{
  v4 = a3;
  if (self->_shouldSuppressDialogsThatBlockWebProcessForProvisionalNavigation || [(TabDocument *)self shouldObscureForDigitalHealth])
  {
    v5 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained tabDocumentCanDisplayModalUI:self];
  }

  return v5;
}

- (id)presentingViewControllerForPrintController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained viewControllerToPresentFrom];

  return v4;
}

- (id)URLStringForPrintController:(id)a3
{
  v3 = [(TabDocument *)self URLString];

  return v3;
}

- (id)pageTitleForPrintController:(id)a3
{
  v3 = [(TabDocument *)self titleForSharing];

  return v3;
}

- (id)loadingDialogPageTitleForPrintController:(id)a3
{
  v3 = [(TabDocument *)self titleForNewBookmark];

  return v3;
}

- (int64_t)dialogController:(id)a3 presentationPolicyForDialog:(id)a4
{
  v5 = a4;
  v6 = [v5 completionHandlerBlocksWebProcess] ^ 1;
  if (!self)
  {
    LOBYTE(v6) = 1;
  }

  if ((v6 & 1) == 0 && (self->_shouldSuppressDialogsThatBlockWebProcessForProvisionalNavigation || self->_showingReader))
  {
    v8 = 1;
    goto LABEL_14;
  }

  if ([v5 presentationStyle] != 1)
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained tabDocumentCanDisplayModalUI:self])
  {

LABEL_7:
    v8 = 0;
    goto LABEL_14;
  }

  v9 = [v5 shouldIgnoreGlobalModalUIDisplayPolicy];

  if (v9)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

LABEL_14:

  return v8;
}

- (void)dialogController:(id)a3 willPresentDialog:(id)a4
{
  self->_showingInlineDialog = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentWillShowInlineDialog:self];
}

- (void)dialogController:(id)a3 didDismissDialog:(id)a4
{
  self->_showingInlineDialog = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentWillDismissInlineDialog:self];
}

- (CGPoint)getLastWindowTapLocation
{
  v2 = +[Application sharedApplication];
  v3 = [v2 browserWindowController];

  v4 = +[Application sharedApplication];
  v5 = [v4 primaryBrowserController];

  v6 = [v3 uiDelegateForBrowserController:v5];
  [v6 browserControllerWindowLastTapLocation:v5];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)dialogController:(id)a3 presentViewController:(id)a4 withAdditionalAnimations:(id)a5
{
  v9 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocument:self presentViewControllerAnimated:v9];

  [v9 _sf_animateAlongsideTransitionOrPerform:v7];
}

- (void)dialogController:(id)a3 dismissViewController:(id)a4 withAdditionalAnimations:(id)a5
{
  v9 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocument:self dismissViewControllerAnimated:v9];

  [v9 _sf_animateAlongsideTransitionOrPerform:v7];
}

- (void)pageLoadErrorControllerDidAddAlert:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentDidAddAlert:self];
}

- (BOOL)pageLoadErrorControllerShouldHandleCertificateError:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained tabDocumentShouldHandleCertificateError:v3];

  return v3;
}

- (void)pageLoadErrorController:(id)a3 loadFailedRequestAfterError:(id)a4
{
  v6 = [a3 failedRequest];
  v5 = [TabDocument loadRequest:"loadRequest:userDriven:" userDriven:?];
}

- (id)pageLoadErrorControllerGetSecIdentityPreferencesController:(id)a3
{
  if (!self->_secIdentityPreferencesController)
  {
    if ([(TabDocument *)self isPrivateBrowsingEnabled])
    {
      [MEMORY[0x277CDB8B0] ephemeralSecIdentityPreferencesController];
    }

    else
    {
      [MEMORY[0x277CDB8B0] sharedPersistentSecIdentityPreferencesController];
    }
    v4 = ;
    secIdentityPreferencesController = self->_secIdentityPreferencesController;
    self->_secIdentityPreferencesController = v4;
  }

  v6 = self->_secIdentityPreferencesController;

  return v6;
}

- (void)pageLoadErrorControllerClosePage:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  [v4 closeTab:self animated:1];
}

- (void)pageLoadErrorControllerReloadUsingHTTPSOnlyBypass:(id)a3
{
  v4 = [(TabDocument *)self URL];
  v5 = [v4 host];
  v6 = [v5 safari_highLevelDomainFromHost];
  highLevelDomainForHTTPSOnlyBypass = self->_highLevelDomainForHTTPSOnlyBypass;
  self->_highLevelDomainForHTTPSOnlyBypass = v6;

  [(TabDocument *)self reload];
}

- (void)pageLoadErrorControllerReloadWithoutPrivateRelay:(id)a3
{
  v4 = [MEMORY[0x277D4A008] sharedManager];
  v5 = [(TabDocument *)self expectedOrCurrentURL];
  [v4 rememberPrivateRelayFailClosedExceptionForURL:v5];

  [(TabDocument *)self reloadEnablingDowngradedPrivateRelay:1];
}

- (void)pageLoadErrorController:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocument:self presentViewControllerAnimated:v5];
}

- (BOOL)pageLoadErrorControllerShouldReloadAfterError:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained isSuspendedOrSuspending];

  return v4 ^ 1;
}

- (void)pageLoadErrorController:(id)a3 allowLegacyTLSConnectionForURL:(id)a4 navigateToURL:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = +[Application sharedApplication];
  v9 = [v8 legacyTLSHostManager];
  v10 = [v12 host];
  [v9 allowLegacyTLSForHost:v10];

  v11 = [(TabDocument *)self loadURL:v7 userDriven:1];
}

- (void)clearReaderScrollInformation
{
  initialArticleScrollDictionaryForCloudTab = self->_initialArticleScrollDictionaryForCloudTab;
  self->_initialArticleScrollDictionaryForCloudTab = 0;

  self->_readerViewTopScrollOffset = 0;
}

- (void)updateReadingListItemPreviewText:(id)a3
{
  v9 = a3;
  v4 = [(TabDocument *)self readingListBookmarkID];
  v5 = [(TabDocument *)self titleForNewBookmark];
  v6 = [(TabDocument *)self URL];
  v7 = [v6 absoluteString];

  v8 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  [(WebBookmarkCollection *)v8 updateReadingListBookmarkWithID:v4 setTitle:v5 address:v7 previewText:v9 thumbnailURL:0 siteName:0];
}

- (void)didActivateReader
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (-[TabDocument shouldActivateReaderWhenAvailable](self, "shouldActivateReaderWhenAvailable") && ([WeakRetained readerShouldBeShownIfPossible] & 1) == 0)
  {
    [WeakRetained setReaderShouldBeShownIfPossible:1];
  }

  v3 = [WeakRetained tabController];
  [v3 saveTabDocumentUserActivitySoon:self];

  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 reportTabUpdatedWithUpdateType:9];
}

- (void)_detectWebpageLocaleWithTextSamples:(void *)a3 url:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v7 = a1[132];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__TabDocument__detectWebpageLocaleWithTextSamples_url___block_invoke;
    v8[3] = &unk_2781D6CA0;
    objc_copyWeak(&v10, &location);
    v9 = v6;
    [v7 setWebpageLocaleWithExtractedTextSamples:v5 url:v9 completionHandler:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __55__TabDocument__detectWebpageLocaleWithTextSamples_url___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__TabDocument__detectWebpageLocaleWithTextSamples_url___block_invoke_2;
  block[3] = &unk_2781D7060;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __55__TabDocument__detectWebpageLocaleWithTextSamples_url___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277D499B8] sharedLogger];
    [v2 didVisitWebpageSBAWithUserOptedIn:{objc_msgSend(MEMORY[0x277D49E58], "userConsentState") == 1}];

    if (*(a1 + 32))
    {
      if ([WeakRetained allowsBrowsingAssistant])
      {
        [WeakRetained[136] checkForAssistantContentFromPegasusForURL:*(a1 + 40) locale:*(a1 + 32)];
      }
    }
  }
}

- (void)readerController:(id)a3 didDetermineAdditionalTextSamples:(id)a4 dueTo:(int64_t)a5
{
  translationContext = self->_translationContext;
  v8 = [a4 textSamples];
  v7 = [(TabDocument *)self URL];
  [(WBSTranslationContext *)translationContext setWebpageLocaleWithExtractedTextSamples:v8 url:v7 completionHandler:0];
}

- (void)readerController:(id)a3 didDetermineReaderAvailability:(id)a4 dueTo:(int64_t)a5
{
  v7 = a4;
  v8 = [v7 isReaderAvailable];
  self->_hasDoneReaderAvailabilityDetection = 1;
  v9 = [MEMORY[0x277D499B8] sharedLogger];
  [v9 didDetermineReaderAvailability:v8];

  if (a5 == 2)
  {
    goto LABEL_42;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained isReaderViewStale])
  {
    v11 = [WeakRetained nextContinuousItemDocument];

    if (v11 != self)
    {
      if (v8)
      {
        [(_SFReaderController *)self->_readerContext loadNewArticle];
      }

      else
      {
        [WeakRetained hideReaderForTabDocument:self animated:1 deactivationMode:0];
      }

      [WeakRetained setReaderViewStale:0];
    }
  }

  v12 = [(TabDocument *)self URL];
  if (-[TabDocument readingListBookmarkID](self, "readingListBookmarkID") && !self->_wasOpenedFromHistory && ([v12 isFileURL] & 1) == 0)
  {
    [(TabDocument *)self collectReadingListItemInfo];
  }

  if (-[TabDocument shouldActivateReaderWhenAvailable](self, "shouldActivateReaderWhenAvailable") && [WeakRetained readerShouldBeShownIfPossible])
  {
    v13 = [WeakRetained isShowingReader] ^ 1;
  }

  else
  {
    v13 = 0;
  }

  if (self->_active)
  {
    shouldRestoreReader = self->_shouldRestoreReader;
    if ((v8 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    shouldRestoreReader = 0;
    if ((v8 & 1) == 0)
    {
LABEL_18:
      if (a5 == 1 && [(TabDocument *)self isShowingReader])
      {
        goto LABEL_28;
      }

      [(TabDocument *)self clearReaderScrollInformation];
      [(TabDocument *)self clearReaderContext];
      goto LABEL_26;
    }
  }

  if (((v13 | shouldRestoreReader) & 1) == 0)
  {
    [(TabDocument *)self clearReaderScrollInformation];
    [(_SFReaderController *)self->_readerContext clearUnusedReaderResourcesSoon];
    goto LABEL_28;
  }

  if (self->_active)
  {
    [WeakRetained setShowingReader:1 animated:1];
    v15 = [MEMORY[0x277D499B8] sharedLogger];
    [v15 didActivateReaderWithTrigger:2];
  }

  if (!shouldRestoreReader)
  {
    goto LABEL_28;
  }

LABEL_26:
  self->_shouldRestoreReader = 0;
LABEL_28:
  v16 = [v7 textSamples];
  [(TabDocument *)self _detectWebpageLocaleWithTextSamples:v16 url:v12];

  v17 = +[Application sharedApplication];
  v18 = [v17 systemNoteTakingController];

  v19 = [v7 canonicalURL];
  [v18 cacheCanonicalURL:v19 forWebPageURL:v12];

  [(TabDocument *)self restoreAllHighlightsData];
  if (!self->_assistantController)
  {
    v20 = objc_alloc_init(MEMORY[0x277D49E58]);
    assistantController = self->_assistantController;
    self->_assistantController = v20;

    [(WBSBrowsingAssistantController *)self->_assistantController setDelegate:self];
  }

  if (![(TabDocument *)self isPrivateBrowsingEnabled])
  {
    v22 = [(NSUUID *)self->_biomeWebpageIdentifier UUIDString];
    [(WBSBrowsingAssistantController *)self->_assistantController setWebpageIdentifier:v22];

    v23 = [(NSUUID *)self->_biomeWebpageIdentifier UUIDString];
    [(SFNavigationBarItem *)self->_navigationBarItem setWebpageIdentifier:v23];
  }

  if (v8)
  {
    [(WBSBrowsingAssistantController *)self->_assistantController didFindLocalContentWithOptions:32 forURL:v12];
  }

  [(WBSBrowsingAssistantController *)self->_assistantController setCachedReaderArticleTitle:0];
  if (self->_active)
  {
    v24 = [(TabDocument *)self URLForPerSitePreferences];
    v25 = [v24 safari_userVisibleHostWithoutWWWSubdomain];

    if (![v25 length] || a5 == 1 && self->_lastReaderDeactivationMode == 1)
    {
      v26 = [(TabDocument *)self navigationBarItem];
      [v26 setShowsReaderButton:v8 showsAvailabilityText:v8];

      v27 = objc_loadWeakRetained(&self->_delegate);
      [v27 tabDocument:self didDetectReaderAvailability:v8];
    }

    else
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__TabDocument_readerController_didDetermineReaderAvailability_dueTo___block_invoke;
      aBlock[3] = &unk_2781DA8E0;
      objc_copyWeak(&v32, &location);
      v33 = v8;
      v28 = _Block_copy(aBlock);
      v29 = [(TabDocument *)self perSitePreferencesVendor];
      v30 = [v29 automaticReaderActivationManager];
      [v30 getAutomaticReaderEnabledForDomain:v25 usingBlock:v28];

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }
  }

LABEL_42:
}

void __69__TabDocument_readerController_didDetermineReaderAvailability_dueTo___block_invoke(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__TabDocument_readerController_didDetermineReaderAvailability_dueTo___block_invoke_2;
  v4[3] = &unk_2781DB300;
  objc_copyWeak(&v5, (a1 + 32));
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v5);
}

void __69__TabDocument_readerController_didDetermineReaderAvailability_dueTo___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = [WeakRetained navigationBarItem];
    [v4 setShowsReaderButton:*(a1 + 40) showsAvailabilityText:*(a1 + 40) & (*(a1 + 41) ^ 1u)];

    v5 = objc_loadWeakRetained(v11 + 156);
    [v5 tabDocument:v11 didDetectReaderAvailability:*(a1 + 40)];

    v3 = v11;
    if (*(a1 + 41))
    {
      v6 = [v11 isReaderAvailable];
      v3 = v11;
      if (v6)
      {
        v7 = [v11 isShowingReader];
        v3 = v11;
        if ((v7 & 1) == 0)
        {
          v8 = [v11 isActive];
          v3 = v11;
          if (v8)
          {
            v9 = objc_loadWeakRetained(v11 + 124);
            [v9 setShowingReader:1 animated:1];

            v10 = [MEMORY[0x277D499B8] sharedLogger];
            [v10 didActivateReaderWithTrigger:1];

            v3 = v11;
          }
        }
      }
    }
  }
}

- (void)readerController:(id)a3 didDeactivateReaderWithMode:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = ![(TabDocument *)self shouldActivateReaderWhenAvailable];
  if (a4 != 1)
  {
    LOBYTE(v6) = 1;
  }

  if ((v6 & 1) == 0)
  {
    [WeakRetained setReaderShouldBeShownIfPossible:0];
  }

  [WeakRetained setReaderViewStale:0];
  v7 = [WeakRetained tabController];
  [v7 saveTabDocumentUserActivitySoon:self];

  v8 = [MEMORY[0x277D499B8] sharedLogger];
  [v8 reportTabUpdatedWithUpdateType:10];

  self->_lastReaderDeactivationMode = a4;
}

- (void)readerController:(id)a3 didClickLinkInReaderWithRequest:(id)a4
{
  v12 = a4;
  v5 = [v12 URL];
  v6 = [MEMORY[0x277D28F40] builder];
  v7 = [v6 navigationIntentWithURL:v5];

  if ([v7 policy])
  {
    [(TabDocument *)self dispatchNavigationIntent:v7];
  }

  else
  {
    v8 = [(TabDocument *)self resultOfLoadingURL:v5];
    if ([v8 type] != 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      [WeakRetained hideReaderForTabDocument:self animated:1 deactivationMode:0];
    }

    v10 = [v12 URL];
    v11 = [(TabDocument *)self loadURL:v10 userDriven:1];
  }
}

- (void)readerController:(id)a3 didClickLinkRequestingNewWindowInReaderWithRequest:(id)a4
{
  v10 = a4;
  v5 = [v10 URL];
  v6 = [(TabDocument *)self resultOfLoadingURL:v5];
  if ([v6 type] == 3)
  {
    v7 = [(TabDocument *)self loadRequest:v10 userDriven:1];
  }

  else
  {
    v8 = [MEMORY[0x277D28F40] builder];
    [v8 setPrefersOpenInNewTab:1];
    [v8 setPreferredTabOrder:1];
    v9 = [v8 navigationIntentWithURL:v5];
    [(TabDocument *)self dispatchNavigationIntent:v9];
  }
}

- (void)readerController:(id)a3 didTwoFingerTapLinkInReaderWithContext:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (![(TabDocument *)self _handleTwoFingerTapOnLinkWithContext:v6])
  {
    v7 = [v6 navigationAction];
    v8 = [v7 request];
    [(TabDocument *)self readerController:v9 didClickLinkInReaderWithRequest:v8];
  }
}

- (void)readerController:(id)a3 didExtractArticleText:(id)a4 withMetadata:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocument:self didExtractArticleText:v8 withMetadata:v7];

  if (self->_donateTextTimer)
  {

    [(TabDocument *)&self->super.isa _donateTextAllowingDonationWithoutReaderText:?];
  }
}

- (void)filteredArticleTextDidBecomeReadyForReaderController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained filteredArticleTextDidBecomeReadyInTabDocument:self];
}

- (void)_presentViewControllerAnimatedForSummarizationContent:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v5 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 1248));
    [WeakRetained tabDocument:a1 presentViewControllerAnimated:v5];

    v3 = v5;
  }
}

- (void)_didOKSummarizationAlertToReset
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 1248));
    [WeakRetained tabDocumentDidOKSummarizationAlertToReset:a1];
  }
}

- (void)_didCancelSummarizationAlertToReset
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 1248));
    [WeakRetained tabDocumentDidCancelSummarization:a1];
  }
}

- (void)didFindSummarizationRestrictionsForReaderController:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__TabDocument_didFindSummarizationRestrictionsForReaderController___block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__TabDocument_didFindSummarizationRestrictionsForReaderController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = _WBSLocalizedString();
  v4 = _WBSLocalizedString();
  v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = _WBSLocalizedString();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__TabDocument_didFindSummarizationRestrictionsForReaderController___block_invoke_2;
  v9[3] = &unk_2781D6158;
  v9[4] = *(a1 + 32);
  v8 = [v6 actionWithTitle:v7 style:1 handler:v9];
  [v5 addAction:v8];

  [(TabDocument *)*(a1 + 32) _presentViewControllerAnimatedForSummarizationContent:v5];
}

- (void)readerController:(id)a3 didEncounterErrorForSummarization:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__TabDocument_readerController_didEncounterErrorForSummarization___block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__TabDocument_readerController_didEncounterErrorForSummarization___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = _WBSLocalizedString();
  v4 = _WBSLocalizedString();
  v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = _WBSLocalizedString();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__TabDocument_readerController_didEncounterErrorForSummarization___block_invoke_2;
  v9[3] = &unk_2781D6158;
  v9[4] = *(a1 + 32);
  v8 = [v6 actionWithTitle:v7 style:0 handler:v9];
  [v5 addAction:v8];

  [(TabDocument *)*(a1 + 32) _presentViewControllerAnimatedForSummarizationContent:v5];
}

- (void)readerController:(id)a3 didFinishOnDemandSummarization:(id)a4
{
  v5 = a4;
  if ([v5 isSafe])
  {
    v6 = [v5 summary];
    [(TabDocument *)self _setReaderArticleSummary:v6];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__TabDocument_readerController_didFinishOnDemandSummarization___block_invoke;
    v7[3] = &unk_2781D61F8;
    v7[4] = self;
    v8 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

- (void)_setReaderArticleSummary:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 296);
    v5 = _WBSLocalizedString();
    v6 = _WBSLocalizedString();
    v7 = [*(a1 + 1088) tableOfContentsTitles];
    v8 = [*(a1 + 1088) tableOfContentsPaths];
    v9 = [*(a1 + 1088) tableOfContentsTrailingTexts];
    LODWORD(v11) = [*(a1 + 1088) tableOfContentsType];
    [v4 setArticleSummary:v3 withSummaryHeader:v5 tableOfContentsHeader:v6 readerURLString:&stru_2827BF158 titles:v7 paths:v8 trailingText:v9 tableOfContentsType:v11 attribution:0];

    v10 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    [TabDocument _setReaderArticleSummary:v10];
  }
}

void __63__TabDocument_readerController_didFinishOnDemandSummarization___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = _WBSLocalizedString();
  v4 = _WBSLocalizedString();
  v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = _WBSLocalizedString();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__TabDocument_readerController_didFinishOnDemandSummarization___block_invoke_2;
  v15[3] = &unk_2781D6158;
  v15[4] = *(a1 + 32);
  v8 = [v6 actionWithTitle:v7 style:0 handler:v15];
  [v5 addAction:v8];

  v9 = MEMORY[0x277D750F8];
  v10 = _WBSLocalizedString();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__TabDocument_readerController_didFinishOnDemandSummarization___block_invoke_3;
  v13[3] = &unk_2781DB328;
  v11 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v11;
  v12 = [v9 actionWithTitle:v10 style:0 handler:v13];

  [v5 addAction:v12];
  [v5 setPreferredAction:v12];
  [(TabDocument *)*(a1 + 32) _presentViewControllerAnimatedForSummarizationContent:v5];
}

void __63__TabDocument_readerController_didFinishOnDemandSummarization___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) summary];
  [(TabDocument *)v1 _setReaderArticleSummary:v2];
}

- (WBSHistoryContextController)contextController
{
  if (+[Application systemMemorySize]>= 0x40000001)
  {
    contextController = self->_contextController;
    if (!contextController)
    {
      v5 = objc_alloc(MEMORY[0x277D4A770]);
      v6 = +[History sharedHistory];
      v7 = +[Application contextClient];
      v8 = [v5 initWithHistory:v6 contextClient:v7];
      v9 = self->_contextController;
      self->_contextController = v8;

      contextController = self->_contextController;
    }

    v3 = contextController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isShowingReadingListArchive
{
  if (![(TabDocument *)self readingListBookmarkID])
  {
    return 0;
  }

  v3 = [(TabDocument *)self URL];
  v4 = [v3 isFileURL];

  return v4;
}

- (id)readerPageArchiveURL
{
  if ([(TabDocument *)self readingListBookmarkID])
  {
    v3 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v4 = [v3 bookmarkWithID:{-[TabDocument readingListBookmarkID](self, "readingListBookmarkID")}];

    v8 = 0;
    v5 = [v4 webarchivePathInReaderForm:1 fileExists:&v8];
    if (v8 == 1)
    {
      v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
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

- (void)prepareToUseReader
{
  if ([(TabDocument *)self isReaderAvailable]&& [(_SFReaderController *)self->_readerContext shouldCreateArticleFinder])
  {
    readerContext = self->_readerContext;

    [(_SFReaderController *)readerContext createArticleFinder];
  }
}

- (void)createBrowserReaderViewIfNeeded
{
  [(TabDocument *)self _createBrowserReaderViewIfNeeded:?];

  [(TabDocument *)self didActivateReader];
}

- (void)_createBrowserReaderViewIfNeeded:(uint64_t)a1
{
  v3 = a2;
  if (a1 && !*(a1 + 1432))
  {
    v29 = v3;
    v4 = objc_alloc_init(MEMORY[0x277CE3858]);
    WeakRetained = objc_loadWeakRetained((a1 + 992));
    v6 = [WeakRetained processPool];
    [v4 setProcessPool:v6];

    [v4 _setRelatedWebView:*(a1 + 1064)];
    [v4 _setAlternateWebViewForNavigationGestures:*(a1 + 1064)];
    [v4 _setGroupIdentifier:*MEMORY[0x277CDB9E8]];
    v7 = [*(a1 + 1064) configuration];
    v8 = [v7 websiteDataStore];
    [v4 setWebsiteDataStore:v8];

    v9 = _SFApplicationNameForUserAgent();
    [v4 setApplicationNameForUserAgent:v9];

    [v4 _setNeedsStorageAccessFromFileURLsQuirk:0];
    v10 = [MEMORY[0x277CE3830] safari_readerUserContentController];
    [v4 setUserContentController:v10];

    v11 = objc_alloc(MEMORY[0x277CDB918]);
    v12 = [MEMORY[0x277D759A0] mainScreen];
    [v12 bounds];
    v13 = [v11 initWithFrame:v4 configuration:?];
    v14 = *(a1 + 1432);
    *(a1 + 1432) = v13;

    v15 = webViewToTabDocumentMap();
    [v15 setObject:a1 forKey:*(a1 + 1432)];

    [*(a1 + 224) setReaderWebView:*(a1 + 1432)];
    [*(a1 + 224) setWebView:*(a1 + 1064)];
    v16 = _SFCustomUserAgentStringIfNeeded();
    if (v16)
    {
      [*(a1 + 1432) _setCustomUserAgent:v16];
    }

    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 1432) _grantAccessToAssetServices];
    }

    [*(a1 + 1432) _setBackgroundExtendsBeyondPage:1];
    [*(a1 + 1432) setNavigationDelegate:*(a1 + 296)];
    [*(a1 + 1432) setUIDelegate:*(a1 + 296)];
    [*(a1 + 1432) setAllowsLinkPreview:1];
    [*(a1 + 1432) _setFindInteractionEnabled:1];
    [*(a1 + 1432) setAccessibilityIdentifier:@"ReaderView"];
    [*(a1 + 1432) setInspectable:{objc_msgSend(a1, "allowsRemoteInspection")}];
    [*(a1 + 1432) addObserver:a1 forKeyPath:@"_isPlayingAudio" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 1432) addObserver:a1 forKeyPath:@"underPageBackgroundColor" options:0 context:kTabDocumentObserverContext];
    [*(a1 + 296) didCreateReaderWebView:*(a1 + 1432)];
    v17 = *(a1 + 296);
    v18 = *(a1 + 1192);
    v19 = [v17 configurationManager];
    v20 = [v19 configurationToSendToWebPage];
    [v17 setReaderInitialTopScrollOffset:v18 configuration:v20 isViewingArchive:objc_msgSend(a1 scrollOffsetDictionary:{"isShowingReadingListArchive"), *(a1 + 184)}];

    [a1 clearReaderScrollInformation];
    v21 = [*(a1 + 296) readerURL];
    if ([v21 sf_isOfflineReadingListURL])
    {
      v22 = *(a1 + 1432);
      v23 = MEMORY[0x277CBEBC0];
      v24 = [MEMORY[0x277D7B5A8] readingListArchivesDirectoryPath];
      v25 = [v23 fileURLWithPath:v24];
      v26 = [v22 loadFileURL:v21 allowingReadAccessToURL:v25];
    }

    else
    {
      v27 = [MEMORY[0x277CBABA0] safari_nonAppInitiatedRequestWithURL:v21];
      v24 = [(TabDocument *)a1 _requestBySettingAdvancedPrivacyProtectionsFlag:v27];

      v28 = [*(a1 + 1432) loadRequest:v24];
    }

    [(UIResponder *)*(a1 + 1432) safari_becomeFirstResponderIfNeeded];
    v3 = v29;
  }
}

void __41__TabDocument_collectReadingListItemInfo__block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (*(a1 + 40) == a3)
  {
    v7 = v5;
    v6 = [v5 objectForKey:@"previewText"];
    [*(a1 + 32) updateReadingListItemPreviewText:v6];

    v5 = v7;
  }
}

- (id)readerURLForReaderController:(id)a3
{
  if ([(TabDocument *)self isShowingReadingListArchive])
  {
    v4 = [(TabDocument *)self readerPageArchiveURL];
  }

  else
  {
    v5 = [(TabDocument *)self urlForSharing];
    v4 = [v5 safari_URLByReplacingSchemeWithString:*MEMORY[0x277CDB9F0]];
  }

  return v4;
}

- (void)createReaderWebViewForReaderController:(id)a3
{
  [(TabDocument *)self prepareToUseReader];

  [(TabDocument *)self _createBrowserReaderViewIfNeeded:?];
}

- (id)permissionDialogThrottler
{
  permissionDialogThrottler = self->_permissionDialogThrottler;
  if (!permissionDialogThrottler)
  {
    v4 = objc_alloc_init(MEMORY[0x277D49FF8]);
    v5 = self->_permissionDialogThrottler;
    self->_permissionDialogThrottler = v4;

    permissionDialogThrottler = self->_permissionDialogThrottler;
  }

  return permissionDialogThrottler;
}

- (void)fetchMetadataForBookmark:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__TabDocument_fetchMetadataForBookmark_completion___block_invoke;
  block[3] = &unk_2781DB3A0;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__TabDocument_fetchMetadataForBookmark_completion___block_invoke(id *a1)
{
  v2 = [a1[4] URL];
  v3 = [v2 absoluteString];
  v4 = [a1[5] address];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = [a1[5] identifier];
    v7 = *(a1[4] + 37);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__TabDocument_fetchMetadataForBookmark_completion___block_invoke_2;
    v9[3] = &unk_2781DB378;
    v11 = v6;
    v10 = a1[6];
    [v7 collectReadingListInfoWithBookmarkID:v6 completionHandler:v9];
  }

  else
  {
    v8 = *(a1[6] + 2);

    v8();
  }
}

void __51__TabDocument_fetchMetadataForBookmark_completion___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10 = v5;
  if (*(a1 + 40) == a3)
  {
    v7 = [v5 safari_stringForKey:@"title"];
    v8 = [v10 safari_stringForKey:@"previewText"];
    v9 = [v10 safari_stringForKey:@"mainImageURL"];
    (*(v6 + 16))(v6, 1, v7, v8, v9, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, 0, 0, 0, 0);
  }
}

- (void)_terminateWebProcessThenDoUnresponsiveWebProcessBlock
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_0_2(&dword_215819000, a2, a3, "Killed an unresponsive web process shared by %lu tabs", a1);
}

- (void)_unresponsiveWebProcessTimerFired:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXPageLoading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    webView = self->_webView;
    v7 = 134218496;
    v8 = self;
    v9 = 2048;
    v10 = webView;
    v11 = 1024;
    v12 = [(_SFWebView *)webView _webProcessIsResponsive];
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "TabDocument %p: unresponsive web process timer fired. webview=%p, responsive=%d", &v7, 0x1Cu);
  }

  [(NSTimer *)self->_unresponsiveWebProcessTimer invalidate];
  v6 = self->_webView;
  if (v6)
  {
    if (([(_SFWebView *)v6 _webProcessIsResponsive]& 1) == 0)
    {
      [(TabDocument *)self _terminateWebProcessThenDoUnresponsiveWebProcessBlock];
    }
  }
}

- (id)_tabDocumentsSharingWebProcess
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *(a1 + 1064);
    if (v1)
    {
      v2 = [v1 _webProcessIdentifier];
      v13 = [MEMORY[0x277CBEB18] array];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v3 = +[Application sharedApplication];
      v4 = [v3 browserControllers];

      obj = v4;
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        v6 = *v17;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v17 != v6)
            {
              objc_enumerationMutation(obj);
            }

            v8 = [*(*(&v16 + 1) + 8 * i) tabController];
            v9 = [v8 allTabDocuments];
            v14[0] = MEMORY[0x277D85DD0];
            v14[1] = 3221225472;
            v14[2] = __45__TabDocument__tabDocumentsSharingWebProcess__block_invoke;
            v14[3] = &__block_descriptor_36_e21_B16__0__TabDocument_8l;
            v15 = v2;
            v10 = [v9 safari_filterObjectsUsingBlock:v14];
            [v13 addObjectsFromArray:v10];
          }

          v4 = obj;
          v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v5);
      }
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL __45__TabDocument__tabDocumentsSharingWebProcess__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 webView];
  v4 = [v3 _webProcessIdentifier] == *(a1 + 32);

  return v4;
}

- (uint64_t)_shouldUpdateUsageTrackingWhenTransitioningToState:(uint64_t)a1
{
  v3 = a1;
  if (a1)
  {
    v5 = [MEMORY[0x277D7B590] sharedWebFilterSettings];
    v6 = [v3 expectedOrCurrentURL];
    if ([v3 isPrivateBrowsingEnabled] & 1) != 0 || (objc_msgSend(v3, "isShowingErrorPage"))
    {
      v3 = 0;
LABEL_20:

      return v3;
    }

    WeakRetained = objc_loadWeakRetained((v3 + 1248));
    v8 = [WeakRetained tabDocumentIsBackgroundPreloading:v3];
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v3 = 0;
    }

    else
    {
      v10 = [v5 isWebFilterEnabled];
      if (v10 && ([v5 userSettings], v2 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v2, "contentFilterListsAllowURL:", v6)))
      {
        v3 = 0;
      }

      else
      {
        if (*(v3 + 232) == a2)
        {
          v11 = [v6 isEqual:*(v3 + 240)];
        }

        else
        {
          v11 = 0;
        }

        v3 = v11 ^ 1u;
        if (!v10)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  return v3;
}

- (uint64_t)_usageStateIfTabDocumentIsCurrent:(uint64_t)a1
{
  v2 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 992));
    v5 = WeakRetained;
    if (a2 && ([WeakRetained isSuspendedOrSuspending] & 1) == 0)
    {
      v2 = 2;
    }

    else
    {
      v6 = [v5 tabDocumentPlayingPIPVideo];
      v2 = 2 * (v6 == v2);
    }
  }

  return v2;
}

- (void)_updateUsageTrackingInformationIfNecessaryToState:(uint64_t)a1
{
  if (a1 && [(TabDocument *)a1 _shouldUpdateUsageTrackingWhenTransitioningToState:a2])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 992));
    v4 = [a1 expectedOrCurrentURL];
    v5 = [(TabDocument *)a1 profileIdentifier];
    if (*(a1 + 240) && ([v4 isEqual:?] & 1) == 0)
    {
      v6 = [WeakRetained digitalHealthManager];
      v7 = *(a1 + 240);
      v8 = [a1 sourceApplicationBundleIdentifier];
      [v6 updateUsageTrackingForURL:v7 withBundleIdentifier:v8 profileIdentifier:v5 toState:0];
    }

    *(a1 + 232) = a2;
    objc_storeStrong((a1 + 240), v4);
    v9 = [WeakRetained digitalHealthManager];
    v10 = [a1 sourceApplicationBundleIdentifier];
    [v9 updateUsageTrackingForURL:v4 withBundleIdentifier:v10 profileIdentifier:v5 toState:a2];
  }
}

- (void)updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:(BOOL)a3
{
  v4 = [(TabDocument *)self _usageStateIfTabDocumentIsCurrent:a3];

  [(TabDocument *)self _updateUsageTrackingInformationIfNecessaryToState:v4];
}

- (void)updateUsageTrackingInformationAfterLinkPreviewDismissal
{
  v3 = [(TabDocument *)self browserController];
  v4 = [v3 tabController];
  v5 = [v4 activeTabDocument];
  v6 = [v5 isEqual:self];

  v7 = [(TabDocument *)self _usageStateIfTabDocumentIsCurrent:v6];

  [(TabDocument *)self _updateUsageTrackingInformationIfNecessaryToState:v7];
}

- (void)_webViewWillEnterElementFullscreen:(id)a3
{
  [(SFPinnableBanner *)self->_appBanner setHidden:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentDidUpdateThemeColor:self];
}

- (void)_webViewDidEnterElementFullscreen:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained updatePullToRefreshIsEnabled];
}

- (void)_webViewWillExitElementFullscreen:(id)a3
{
  [(SFPinnableBanner *)self->_appBanner setHidden:0];
  self->_exitingElementFullscreen = 1;
  cachedView = self->_cachedView;

  [(TabDocumentView *)cachedView setWebViewGeometryNeedsUpdate];
}

- (void)_webViewDidExitElementFullscreen:(id)a3
{
  self->_exitingElementFullscreen = 0;
  [(TabDocumentView *)self->_cachedView setWebViewGeometryNeedsUpdate];
  v4 = [(TabDocument *)self browserController];
  [v4 restoreInterfaceAfterElementFullscreen];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained updatePullToRefreshIsEnabled];

  v6 = objc_loadWeakRetained(&self->_delegate);
  [v6 tabDocumentDidUpdateThemeColor:self];
}

- (void)updateAncestryWithParentTab:(id)a3
{
  v11 = a3;
  v4 = [v11 uuid];
  if (v4)
  {
    v5 = [v11 ancestorUUIDs];
    v6 = v5;
    v7 = MEMORY[0x277CBEBF8];
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    v9 = [v8 arrayByAddingObject:v4];
    ancestorUUIDs = self->_ancestorUUIDs;
    self->_ancestorUUIDs = v9;
  }
}

- (void)updateAncestryToChildOfTopLevelAncestorRelatedTab:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 ancestorUUIDs];
    v7 = [v6 firstObject];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v5 uuid];
    }

    v10 = v9;

    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    ancestorUUIDs = self->_ancestorUUIDs;
    self->_ancestorUUIDs = v11;
  }
}

- (NSString)identifier
{
  v2 = [(TabDocument *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

id __37__TabDocument_ancestorTabIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 UUIDString];

  return v2;
}

- (NSString)windowIdentifier
{
  v2 = [(TabDocument *)self ownerUUID];
  v3 = [v2 UUIDString];

  return v3;
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
      v6 = [(TabDocument *)self URL];
      pinnedURL = self->_pinnedURL;
      self->_pinnedURL = v6;

      v8 = [(TabDocument *)self title];
    }

    else
    {
      v9 = self->_pinnedURL;
      self->_pinnedURL = 0;

      v8 = 0;
    }

    pinnedTitle = self->_pinnedTitle;
    self->_pinnedTitle = v8;

    [(TabDocument *)self _notifyDidUpdateTabCollectionItem];

    [(TabDocument *)&self->super.isa _reconfigureLibraryItemView];
  }
}

- (BOOL)shouldSpawnNewTabOnNavigationFromPinnedTabWithDestinationURL:(id)a3
{
  v4 = a3;
  if (-[TabDocument isPinned](self, "isPinned") && ([v4 safari_isBlobURL] & 1) == 0)
  {
    if (self->_isBlank)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v7 = [(TabDocument *)self committedURL];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 host];
        v10 = [v9 safari_highLevelDomainFromHost];

        v11 = [v4 host];
        v12 = [v11 safari_highLevelDomainFromHost];

        v5 = WBSIsEqual() ^ 1;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setUnread:(BOOL)a3
{
  if (self->_unread != a3)
  {
    v3 = a3;
    self->_unread = a3;
    [(TabBarItem *)self->_tabBarItem setUnread:?];
    [(SFUnifiedTabBarItem *)self->_unifiedTabBarItem setUnread:v3];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained updateTabOverviewButton];

    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 tabDocumentDidUpdateTabCollectionItem:self];

    [(TabDocument *)&self->super.isa _reconfigureLibraryItemView];
  }
}

- (void)setShareParticipants:(id)a3
{
  v7 = a3;
  if (![(NSArray *)self->_shareParticipants isEqualToArray:?])
  {
    v4 = [v7 copy];
    shareParticipants = self->_shareParticipants;
    self->_shareParticipants = v4;

    [(TabBarItem *)self->_tabBarItem setShareParticipants:v7];
    [(SFUnifiedTabBarItem *)self->_unifiedTabBarItem setShareParticipants:v7];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained tabDocumentDidUpdateTabCollectionItem:self];

    [(TabDocument *)&self->super.isa _reconfigureLibraryItemView];
  }
}

void __57__TabDocument__activeParticipantsDidUpdateInTabWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__TabDocument__activeParticipantsDidUpdateInTabWithUUID___block_invoke_2;
  v5[3] = &unk_2781D6BD8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __57__TabDocument__activeParticipantsDidUpdateInTabWithUUID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) allObjects];
    [v4 setShareParticipants:v3];

    WeakRetained = v4;
  }
}

- (void)tabGroupManager:(id)a3 didUpadateActiveParticipants:(id)a4 inTabWithUUID:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(WBTab *)self->_tabGroupTab uuid];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [v11 allObjects];
    [(TabDocument *)self setShareParticipants:v10];
  }
}

- (void)translationContextReloadPageInOriginalLanguage:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__TabDocument_translationContextReloadPageInOriginalLanguage___block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)translationContext:(id)a3 urlForCurrentPageWithCompletionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__TabDocument_translationContext_urlForCurrentPageWithCompletionHandler___block_invoke;
  v7[3] = &unk_2781DB410;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __73__TabDocument_translationContext_urlForCurrentPageWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) URL];
  (*(v1 + 16))(v1);
}

- (id)safariApplicationVersionForTranslationContext:(id)a3
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 safari_normalizedVersion];

  return v4;
}

- (void)translationContext:(id)a3 showTranslationErrorAlertWithTitle:(id)a4 message:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__TabDocument_translationContext_showTranslationErrorAlertWithTitle_message___block_invoke;
  v8[3] = &unk_2781D61F8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __77__TabDocument_translationContext_showTranslationErrorAlertWithTitle_message___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isActive])
  {
    v3 = objc_alloc_init(MEMORY[0x277D28C30]);
    [v3 setMessageType:1];
    [v3 setBannerText:*(a1 + 40) manuallyWrappedBannerText:0];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 992));
    [WeakRetained showCrashBanner:v3 animated:1];
  }
}

- (void)translationContext:(id)a3 shouldReportProgressInUnifiedField:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__TabDocument_translationContext_shouldReportProgressInUnifiedField___block_invoke;
  v4[3] = &unk_2781D6638;
  v4[4] = self;
  v5 = a4;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

- (void)_updateMaxVisibleHeightPercentageUserDriven:(id *)a1
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 124);
    v4 = [WeakRetained scene];
    v5 = [v4 activationState];

    if (!v5)
    {
      v6 = [a1[133] scrollView];
      [v6 contentSize];
      v8 = v7;
      v9 = [WeakRetained rootViewController];
      if ([v9 toolbarPlacement] == 1)
      {
        v10 = [v9 view];
        [v10 bounds];
        Height = CGRectGetHeight(v20);
        [v10 bounds];
        [v9 obscuredInsetsForRect:v10 inCoordinateSpace:?];
        [v10 convertPoint:v6 toView:{0.0, Height - v12}];
        v14 = v13;
      }

      else
      {
        [v6 contentOffset];
        v16 = v15;
        [a1[133] frame];
        v14 = v16 + v17;
      }

      [a1[132] updateMaxVisibleHeightPercentageIfNeeded:a2 userDriven:v14 / v8];
    }
  }
}

- (void)translationContextWillRequestTranslatingWebpage:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained processPool];
  SafariShared::ReaderAvailabilityController::updateReaderOrTranslationLastActivated(v3, v4);
}

- (void)_translationContextStateDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__TabDocument__translationContextStateDidChange___block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__TabDocument__translationContextStateDidChange___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 280) setShowsTranslationIcon:{objc_msgSend(*(*(a1 + 32) + 1056), "hasStartedTranslating")}];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1280);
  v4 = [*(v2 + 1056) webpageLocale];
  [v3 setUpFormTelemetryDataMonitorWithWebpageLocale:?];
}

void __73__TabDocument__presentTranslationConsentAlertWithType_completionHandler___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__707;
  v17 = __Block_byref_object_dispose__708;
  v18 = objc_alloc_init(MEMORY[0x277D4A878]);
  [v14[5] setDelegate:*(a1 + 32)];
  v2 = v14[5];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __73__TabDocument__presentTranslationConsentAlertWithType_completionHandler___block_invoke_710;
  v10 = &unk_2781DB438;
  v3 = *(a1 + 48);
  v11 = *(a1 + 40);
  v12 = &v13;
  v4 = [v2 consentAlertForType:v3 withCompletionHandler:&v7];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 992));
  v6 = [WeakRetained viewControllerToPresentFrom];
  [v6 presentViewController:v4 animated:1 completion:0];

  _Block_object_dispose(&v13, 8);
}

void __73__TabDocument__presentTranslationConsentAlertWithType_completionHandler___block_invoke_710(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (id)translationConsentAlertHelperViewControllerToPresentDetailsFrom:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained viewControllerToPresentFrom];

  return v4;
}

- (void)webViewWillChangeSize
{
  v2 = [(TabDocument *)self readerContext];
  [v2 webViewWillChangeSize];
}

- (void)webViewDidIncreaseZoom
{
  v3 = [MEMORY[0x277CBEAA8] date];
  lastWebViewIncreaseZoomDate = self->_lastWebViewIncreaseZoomDate;
  self->_lastWebViewIncreaseZoomDate = v3;
}

- (void)setChangedPropertiesForOnUpdatedWebExtensionEvent:(unint64_t)a3
{
  if (!self->_suppressWebExtensionEvents && self->_changedPropertiesForOnUpdatedWebExtensionEvent != a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v6 = [WeakRetained tabController];
    v7 = [v6 hiddenPrivateTabDocumentWhenShowingPrivateBrowsingExplanationText];
    v8 = [(TabDocument *)self isEqual:v7];

    if ((v8 & 1) == 0)
    {
      self->_changedPropertiesForOnUpdatedWebExtensionEvent = a3;
      if (a3)
      {

        [(TabDocument *)&self->super.isa _fireOnUpdatedExtensionEventSoon];
      }

      else
      {
        [(NSTimer *)self->_fireOnUpdatedWebExtensionEventTimer invalidate];
        fireOnUpdatedWebExtensionEventTimer = self->_fireOnUpdatedWebExtensionEventTimer;
        self->_fireOnUpdatedWebExtensionEventTimer = 0;
      }
    }
  }
}

- (void)setSuppressWebExtensionEvents:(BOOL)a3
{
  if (self->_suppressWebExtensionEvents != a3)
  {
    self->_suppressWebExtensionEvents = a3;
    if (a3)
    {
      [(NSTimer *)self->_fireOnUpdatedWebExtensionEventTimer invalidate];
      fireOnUpdatedWebExtensionEventTimer = self->_fireOnUpdatedWebExtensionEventTimer;
      self->_fireOnUpdatedWebExtensionEventTimer = 0;
    }
  }
}

void __47__TabDocument__fireOnUpdatedExtensionEventSoon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ((*(WeakRetained + 954) & 1) == 0)
    {
      v1 = objc_loadWeakRetained(WeakRetained + 124);

      if (v1)
      {
        [(TabDocument *)WeakRetained _fireOnUpdatedExtensionEvent];
      }
    }
  }
}

- (void)_fireOnUpdatedExtensionEvent
{
  if (a1)
  {
    v2 = a1[134];
    [a1 setChangedPropertiesForOnUpdatedWebExtensionEvent:0];
    v3 = [a1 webExtensionsController];
    [v3 fireOnUpdatedEventForTab:a1 withChangedProperties:v2];
  }
}

- (id)windowForWebExtensionContext:(id)a3
{
  v3 = [(TabDocument *)self webExtensionWindow];

  return v3;
}

- (unint64_t)indexInWindowForWebExtensionContext:(id)a3
{
  v4 = [(TabDocument *)self webExtensionWindow];
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

- (id)webViewForWebExtensionContext:(id)a3
{
  v3 = [(TabDocument *)self webViewForExtensions];

  return v3;
}

- (id)titleForWebExtensionContext:(id)a3
{
  v3 = [(TabDocument *)self tabTitle];

  return v3;
}

- (void)setPinned:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v5 = a3;
  v7 = a5;
  [(TabDocument *)self setPinned:v5];
  v7[2](v7, 0);
}

- (void)setReaderModeActive:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v5 = a3;
  v7 = a5;
  if ([(TabDocument *)self isInReaderMode]!= v5)
  {
    [(TabDocument *)self toggleReader];
  }

  v7[2](v7, 0);
}

- (void)setMuted:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v9 = a4;
  v8 = a5;
  if (v6)
  {
    [(TabDocument *)self mute];
  }

  else
  {
    [(TabDocument *)self unmute];
  }

  v8[2](v8, 0);
}

- (void)setZoomFactor:(double)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  [(TabDocument *)self setZoomFactor:a3];
  v7[2](v7, 0);
}

- (id)urlForWebExtensionContext:(id)a3
{
  v3 = [(TabDocument *)self urlForExtensions];

  return v3;
}

- (id)pendingURLForWebExtensionContext:(id)a3
{
  v3 = [(TabDocument *)self pendingURLForWebExtensions];

  return v3;
}

- (void)detectWebpageLocaleForWebExtensionContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [(TabDocument *)self translationContext];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__TabDocument_detectWebpageLocaleForWebExtensionContext_completionHandler___block_invoke;
  aBlock[3] = &unk_2781D6EE0;
  v7 = v6;
  v26 = v7;
  v8 = v5;
  v27 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [v7 state];
  if (v10 != 5 && v10)
  {
    v9[2](v9);
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__707;
    v23 = __Block_byref_object_dispose__708;
    v24 = 0;
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = [MEMORY[0x277CCABD8] mainQueue];
    v13 = *MEMORY[0x277D4A9A0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__TabDocument_detectWebpageLocaleForWebExtensionContext_completionHandler___block_invoke_2;
    v16[3] = &unk_2781DB460;
    v18 = &v19;
    v17 = v9;
    v14 = [v11 addObserverForName:v13 object:v7 queue:v12 usingBlock:v16];
    v15 = v20[5];
    v20[5] = v14;

    _Block_object_dispose(&v19, 8);
  }
}

void __75__TabDocument_detectWebpageLocaleForWebExtensionContext_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webpageLocale];
  v3 = *(a1 + 40);
  v6 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v2];
  }

  else
  {
    v4 = 0;
  }

  (*(v3 + 16))(v3, v4, 0);
  v5 = v6;
  if (v6)
  {

    v5 = v6;
  }
}

uint64_t __75__TabDocument_detectWebpageLocaleForWebExtensionContext_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

- (void)loadURL:(id)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v7 = a5;
  [(TabDocument *)self loadURL:v8];
  v7[2](v7, 0);
}

- (void)reloadFromOrigin:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v9 = a4;
  v8 = a5;
  if (v6)
  {
    [(TabDocument *)self reloadFromOrigin];
  }

  else
  {
    [(TabDocument *)self reload];
  }

  v8[2](v8, 0);
}

- (void)goBackForWebExtensionContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  [(TabDocument *)self goBack];
  v5[2](v5, 0);
}

- (void)goForwardForWebExtensionContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  [(TabDocument *)self goForward];
  v5[2](v5, 0);
}

- (void)activateForWebExtensionContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  [(TabDocument *)self select];
  v5[2](v5, 0);
}

- (void)setSelected:(BOOL)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v9 = a4;
  v8 = a5;
  if (v6)
  {
    [(TabDocument *)self select];
  }

  v8[2](v8, 0);
}

- (void)duplicateUsingConfiguration:(id)a3 forWebExtensionContext:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v7 = [WeakRetained tabController];
  v8 = [v7 duplicateTab:self];
  v9[2](v9, v8, 0);
}

- (void)closeForWebExtensionContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  [(TabDocument *)self close];
  v5[2](v5, 0);
}

- (BOOL)shouldGrantPermissionsOnUserGestureForWebExtensionContext:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D49A58] sharedController];
  v6 = [(TabDocument *)self urlForExtensions];
  v7 = [v6 host];
  v8 = [MEMORY[0x277D4A898] webExtensionForWebKitExtensionContext:v4];
  v9 = [v8 composedIdentifier];
  v10 = [v5 domainIsDenied:v7 forComposedIdentifier:v9];

  return v10 ^ 1;
}

- (NSURL)pendingURLForWebExtensions
{
  if ([(TabDocument *)self isLoading])
  {
    v3 = [(TabDocument *)self urlForExtensions];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isFrontmost
{
  v3 = +[(WBReusableTabManager *)ReusableTabManager];
  v4 = [v3 isTabSuspended:self];

  if (v4)
  {
    return 0;
  }

  return [(TabDocument *)self isActive];
}

- (CGSize)tabViewSize
{
  cachedView = self->_cachedView;
  if (cachedView)
  {
    [(TabDocumentView *)cachedView bounds];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained webExtensionTabSize];
    v5 = v9;
    v7 = v10;
  }

  v11 = v5;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

- (WBSWebExtensionWindow)webExtensionWindow
{
  v3 = +[(WBReusableTabManager *)ReusableTabManager];
  v4 = [v3 isTabSuspended:self];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v5 = [WeakRetained webExtensionWindowForTab:self];
  }

  return v5;
}

- (void)select
{
  v5 = +[(WBReusableTabManager *)ReusableTabManager];
  v3 = [v5 isTabSuspended:self];

  if ((v3 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v4 = [WeakRetained tabController];
    [v4 setActiveTabDocument:self];
  }
}

- (void)mute
{
  if (![(TabDocument *)self isMuted])
  {
    [(_SFWebView *)self->_webView _setPageMuted:1];

    [(TabDocument *)self setAudioState:0 needsDelay:?];
  }
}

- (void)unmute
{
  if ([(TabDocument *)self isMuted])
  {
    [(_SFWebView *)self->_webView _setPageMuted:0];

    [(TabDocument *)self setAudioState:0 needsDelay:?];
  }
}

- (void)toggleReader
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained setShowingReader:!self->_showingReader animated:1 forTabDocument:self];
}

- (void)evictFromTabReuse
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained tabController];
  [v3 evictTabDocument:self];
}

- (void)donateCurrentNavigationWithNavigationResponse:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [WeakRetained speculativeLoadDocument];

  if (v6 == self)
  {
    objc_storeStrong(&self->_speculativeLoadNavigationResponse, a3);
  }

  else if (self->_shouldDonateResponseForCurrentNavigation)
  {
    [(TabDocument *)&self->super.isa _donateCurrentNavigationWithNavigationResponse:v7];
  }
}

void __62__TabDocument__donateCurrentNavigationWithNavigationResponse___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) webView];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v9 = [MEMORY[0x277D49E30] sharedManager];
    v3 = [*(a1 + 40) URL];
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);
    v6 = [*(a1 + 32) webView];
    v7 = [v6 _proxyName];
    [v9 donateNavigationWithURL:v3 userAgent:v4 wasPrivateRelayed:v5 privateRelayVendorName:v7 statusCode:*(a1 + 56)];
  }
}

- (void)donateSameDocumentNavigationIfNecessary
{
  self->_shouldDonatePageLoad = 1;
  [(TabDocument *)self _donateCurrentPageLoad];
  self->_shouldDonatePageLoad = 0;
}

- (BOOL)isSearchPage
{
  v3 = [MEMORY[0x277D4A808] sharedRecorder];
  v4 = [(TabDocument *)self webView];
  v5 = [v4 URL];
  v6 = [v3 searchProviderForURL:v5];

  return v6 != 0;
}

- (void)dismissSiriReaderMediaSessionImmediately:(BOOL)a3
{
  if (a3)
  {

    [(TabDocument *)self _dismissSiriReaderMediaSession];
  }

  else
  {
    v4 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    v5 = [v4 activeSiriReaderSessionIdentifier];

    if (v5 && (WBSIsEqual() & 1) != 0)
    {
      [(TabDocument *)self _dismissSiriReaderMediaSession];
    }
  }
}

- (void)_dismissSiriReaderMediaSession
{
  if (a1)
  {
    v2 = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    v3 = [v2 activeSiriReaderSessionIdentifier];

    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v4 = getSiriReaderConnectionClass(void)::softClass;
    v18 = getSiriReaderConnectionClass(void)::softClass;
    if (!getSiriReaderConnectionClass(void)::softClass)
    {
      location[0] = MEMORY[0x277D85DD0];
      location[1] = 3221225472;
      location[2] = ___ZL28getSiriReaderConnectionClassv_block_invoke_0;
      location[3] = &unk_2781D60E0;
      location[4] = &v15;
      ___ZL28getSiriReaderConnectionClassv_block_invoke_0(location);
      v4 = v16[3];
    }

    v5 = v4;
    _Block_object_dispose(&v15, 8);
    v6 = objc_alloc_init(v4);
    objc_initWeak(location, *(a1 + 280));
    v7 = dispatch_get_global_queue(9, 0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__TabDocument__dismissSiriReaderMediaSession__block_invoke;
    v10[3] = &unk_2781DB4D8;
    v11 = v6;
    v12 = v3;
    v8 = v3;
    v9 = v6;
    objc_copyWeak(&v13, location);
    dispatch_async(v7, v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }
}

void __45__TabDocument__dismissSiriReaderMediaSession__block_invoke(id *a1)
{
  v2 = [MEMORY[0x277D28D48] sharedPlaybackController];
  v3 = [v2 currentPlaybackState];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__TabDocument__dismissSiriReaderMediaSession__block_invoke_2;
  v4[3] = &unk_2781DB4B0;
  v7[1] = v3;
  v5 = a1[4];
  v6 = a1[5];
  objc_copyWeak(v7, a1 + 6);
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(v7);
}

void __45__TabDocument__dismissSiriReaderMediaSession__block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 56) - 1) <= 1)
  {
    [*(a1 + 32) endMediaSessionForIdentifier:*(a1 + 40)];
    This = WBS_LOG_CHANNEL_PREFIXSiriReadThis();
    if (os_log_type_enabled(This, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_215819000, This, OS_LOG_TYPE_DEFAULT, "Safari requested dismissing playback", v6, 2u);
    }

    v3 = [MEMORY[0x277D28D48] sharedPlaybackController];
    [v3 setCurrentPlaybackState:3];

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained setShowsSiriReaderPlayingIcon:0];
    }
  }
}

- (void)updateLockedBrowsingState
{
  if ([(TabDocument *)self isPrivateBrowsingEnabled])
  {
    v3 = +[Application sharedApplication];
    v4 = [v3 isPrivateBrowsingLocked];
  }

  else
  {
    v4 = 0;
  }

  if (self->_locked != v4)
  {
    self->_locked = v4;
    v5 = [(TabDocument *)self allowsRemoteInspection];
    [(_SFWebView *)self->_webView setInspectable:v5];
    [(_SFWebView *)self->_readerWebView setInspectable:v5];
    if (v4)
    {
      [(_SFWebView *)self->_webView closeAllMediaPresentationsWithCompletionHandler:&__block_literal_global_722];
      [(_SFWebView *)self->_webView pauseAllMediaPlaybackWithCompletionHandler:0];
      [(TabDocument *)self addMediaSuspensionReason:2];
      webView = self->_webView;

      [(_SFWebView *)webView _stopMediaCapture];
    }

    else
    {
      [(TabDocument *)self removeMediaSuspensionReason:2];
      if (self->_active)
      {
        dialogController = self->_dialogController;

        [(SFDialogController *)dialogController owningWebViewWillBecomeActive];
      }
    }
  }
}

- (void)pageContextDataFetcherDidFinishFetching:(id)a3 forURL:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v10 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [TabDocument pageContextDataFetcherDidFinishFetching:forURL:withError:];
    }
  }

  else
  {
    v12 = [(TabDocument *)self webView];
    v13 = [v12 URL];
    v14 = [v9 safari_isEqualToURL:v13];

    if (v14)
    {
      v15 = [(TabDocument *)self _backForwardList];
      v16 = [v15 currentItem];

      if (self)
      {
        v17 = +[Application systemMemorySize]< 0x40000001;
      }

      else
      {
        v17 = 0;
      }

      v18 = [v8 filteredSchemaData];
      v19 = v18;
      if (!v17)
      {
        calendarEventDetector = self->_calendarEventDetector;
        v21 = [v18 objectForKeyedSubscript:@"containsSchemaOrg"];
        [(_SFCalendarEventDetector *)calendarEventDetector containsCalendarEventForPageWithSchemaOrgMarkup:v21 != 0];
      }

      v22 = [(TabDocument *)self _backForwardList];
      v23 = [v22 currentItem];

      if (v23 == v16)
      {
        v24 = MEMORY[0x277CDB8F0];
        v25 = [(TabDocument *)self profileIdentifier];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = *MEMORY[0x277D49BD8];
        }

        v28 = [v24 searchableItemAttributesForDictionary:v19 profileIdentifier:v27];
        [(TabDocument *)self setSearchableItemAttributes:v28];

        [(TabDocument *)self updateUserActivity];
      }
    }
  }
}

- (LPLinkMetadata)linkMetadataForSharing
{
  v3 = MEMORY[0x277D4A788];
  v4 = [(TabDocument *)self urlForSharing];
  v5 = [(TabDocument *)self webView];
  v6 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  v7 = [v6 linkPresentationIconCache];
  v8 = [v3 linkMetadataForURL:v4 webView:v5 iconCache:v7];

  return v8;
}

- (NSString)addressForNewBookmark
{
  v2 = [(TabDocument *)self cachedCanonicalURLOrURLForSharing];
  v3 = [v2 safari_originalDataAsString];

  return v3;
}

- (WBSCloudTab)cloudTab
{
  v3 = [(TabDocument *)self URL];
  if ([v3 isFileURL])
  {
    v4 = [(TabDocument *)self URLString];
    v5 = [v4 safari_bestURLForUserTypedString];
  }

  else
  {
    v5 = [(TabDocument *)self URL];
  }

  v6 = [objc_alloc(MEMORY[0x277D49ED0]) initWithURL:v5];
  [v6 setUuid:self->_uuid];
  v7 = [(TabDocument *)self titleForCloudTab];
  [v6 setTitle:v7];

  [v6 setShowingReader:self->_showingReader];
  v8 = [(_SFReaderController *)self->_readerContext scrollPositionInformation];
  [v6 setReaderScrollPosition:v8];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [WeakRetained windowState];
  v11 = [v10 sceneID];
  [v6 setSceneID:v11];

  [v6 setLastViewedTime:self->_lastViewedTime];
  v12 = [objc_alloc(MEMORY[0x277D49EB8]) initWithParameters:v6];

  return v12;
}

- (BOOL)isReusableForURL:(id)a3 webClipURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TabDocument *)self URL];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [(TabDocument *)self _backForwardList];
    v12 = [v11 currentItem];
    v10 = [v12 URL];
  }

  v13 = [v10 _webkit_URLByRemovingFragment];

  v14 = [(NSURL *)self->_tabReuseURL _webkit_URLByRemovingFragment];
  if ([v13 isEqual:v6] & 1) != 0 || (objc_msgSend(v14, "isEqual:", v6))
  {
    v15 = 1;
  }

  else if (v7)
  {
    v15 = [v13 isEqual:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSString)currentSearchQuery
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained activeSearchEngine];
  v5 = [(_SFWebView *)self->_webView _unreachableURL];
  v6 = v5;
  if (!v5)
  {
    v6 = [(TabDocument *)self committedURL];
  }

  v7 = [v4 userVisibleQueryFromSearchURL:v6];
  if (!v5)
  {
  }

  return v7;
}

- (NSString)currentSearchQueryAllowingQueryThatLooksLikeURL
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained activeSearchEngine];
  v5 = [(_SFWebView *)self->_webView _unreachableURL];
  v6 = v5;
  if (!v5)
  {
    v6 = [(TabDocument *)self committedURL];
  }

  v7 = [v4 userVisibleQueryFromSearchURL:v6 allowQueryThatLooksLikeURL:1];
  if (!v5)
  {
  }

  return v7;
}

- (id)currentHostForScribbleController:(id)a3
{
  v3 = [(TabDocument *)self expectedOrCurrentURL];
  v4 = [v3 host];

  return v4;
}

- (void)sfScribbleControllerDidEndScribbling:(id)a3
{
  v5 = [(TabDocument *)self navigationBarItem];
  [v5 setOverlayConfiguration:0];

  v6 = [(TabDocument *)self navigationBarItem];
  [v6 setOverlayNarrowConfiguration:0];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained pageFormatMenuController];
  [v4 dismissMenu];

  v8 = objc_loadWeakRetained(&self->_delegate);
  [v8 tabDocumentDidUpdateIsScribbling:self];
}

- (void)sfScribbleControllerDidStartScribbling:(id)a3
{
  v12 = a3;
  self->_hasEnteredScribbleMode = 1;
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didEnableScribble];

  v5 = [v12 urlFieldOverlayConfiguration];
  v6 = [(TabDocument *)self navigationBarItem];
  [v6 setOverlayConfiguration:v5];

  v7 = [v12 urlFieldOverlayNarrowConfiguration];
  v8 = [(TabDocument *)self navigationBarItem];
  [v8 setOverlayNarrowConfiguration:v7];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [WeakRetained pageFormatMenuController];
  [v10 dismissMenu];

  v11 = objc_loadWeakRetained(&self->_delegate);
  [v11 tabDocumentDidUpdateIsScribbling:self];
}

- (void)sfScribbleControllerDidUpdateHiddenElementCount:(id)a3
{
  v11 = a3;
  v4 = [(TabDocument *)self navigationBarItem];
  [v4 setHasHiddenElements:{objc_msgSend(v11, "hiddenElementCount") != 0}];
  if ([v11 isScribbling])
  {
    v5 = [v11 urlFieldOverlayConfiguration];
    v6 = [(TabDocument *)self navigationBarItem];
    [v6 setOverlayConfiguration:v5];

    v7 = [v11 urlFieldOverlayNarrowConfiguration];
    v8 = [(TabDocument *)self navigationBarItem];
    [v8 setOverlayNarrowConfiguration:v7];
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [WeakRetained pageFormatMenuController];
  [v10 reloadBrowsingAssistantIfNeeded];
}

- (void)sfScribbleController:(id)a3 presentAlert:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocument:self presentViewControllerAnimated:v5];
}

- (id)overlayContainerViewForScribbleController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained rootViewController];
  v5 = [v4 documentAndTopBarsContainerView];

  return v5;
}

- (NSArray)normalBrowsingUserContentControllers
{
  v2 = +[Application sharedApplication];
  v3 = [v2 cachedUserContentControllersForAllProfiles];

  return v3;
}

- (WBSScribbleQuirksManager)scribbleQuirksManager
{
  v2 = +[Application sharedApplication];
  v3 = [v2 scribbleQuirksManager];

  return v3;
}

- (void)_webView:(id)a3 didAdjustVisibilityWithSelectors:(id)a4
{
  v4 = [(TabDocument *)self sfScribbleController:a3];
  [v4 updateCountForElementsHiddenByPaintingAvoidance];
}

- (id)tabEntityUUIDForView:(id)a3
{
  if (self->_cachedView == a3 && self->_active)
  {
    v4 = self->_uuid;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TabDocument)parentTabDocumentForBackClosesSpawnedTab
{
  WeakRetained = objc_loadWeakRetained(&self->_parentTabDocumentForBackClosesSpawnedTab);

  return WeakRetained;
}

- (TabDocumentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (LoadProgressObserver)loadProgressObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_loadProgressObserver);

  return WeakRetained;
}

- (CGPoint)scrollPoint
{
  x = self->_scrollPoint.x;
  y = self->_scrollPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (STBlockingViewController)associatedBlockingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedBlockingViewController);

  return WeakRetained;
}

- (void)_webView:(std::__shared_weak_count *)a1 willSubmitFormValues:userObject:submissionHandler:
{
  a1->__vftable = &unk_2827BB258;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x216074930);
}

- (void)_webView:(uint64_t)a1 willSubmitFormValues:userObject:submissionHandler:
{
  if ((*(a1 + 32) & 1) == 0 && ([MEMORY[0x277D49A08] hasInternalContent] & 1) == 0)
  {
    (*(*(a1 + 24) + 16))();
  }

  v2 = *(a1 + 24);
}

- (id)_titleIncludeLoading:(int)a3 allowURLStringFallback:
{
  if (a1)
  {
    a1 = [(TabDocument *)a1 _titleIncludeLoading:a2 allowURLStringFallback:a3 allowUntitled:1];
    v3 = vars8;
  }

  return a1;
}

- (void)_updateBarItemsWithCurrentMediaState
{
  if (a1)
  {
    [a1 updateMenuButtonShowsBadge];
    [*(a1 + 1096) setMediaStateIcon:*(a1 + 504)];
    [*(a1 + 1104) setMediaStateIcon:*(a1 + 504)];
    [*(a1 + 1112) setMediaStateIcon:*(a1 + 504)];

    [(TabDocument *)a1 _reconfigureLibraryItemView];
  }
}

- (_BYTE)_loadingStateForWebExtensionsMayHaveChanged
{
  if (result)
  {
    v1 = result;
    result = [result isLoadingComplete];
    if (v1[987] != result)
    {
      v1[987] = result;
      v2 = [v1 changedPropertiesForOnUpdatedWebExtensionEvent] | 8;

      return [v1 setChangedPropertiesForOnUpdatedWebExtensionEvent:v2];
    }
  }

  return result;
}

- (void)_loadActivityItemProviderIfNeeded
{
  if (a1 && !*(a1 + 536))
  {
    v2 = [[ActionPanelActivityItemProvider alloc] initWithTabDocument:a1];
    v3 = *(a1 + 536);
    *(a1 + 536) = v2;
  }
}

- (void)_clearCachedCanonicalURL
{
  if (a1)
  {
    v2 = *(a1 + 528);
    *(a1 + 528) = 0;

    v3 = *(a1 + 536);
    *(a1 + 536) = 0;
  }
}

- (ActionPanelActivityItemProvider)activityItemProvider
{
  [(TabDocument *)self _loadActivityItemProviderIfNeeded];
  cachedActivityItemProvider = self->_cachedActivityItemProvider;

  return cachedActivityItemProvider;
}

- (id)_titleForStatePersistingForTabStateData
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[105];
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      v3 = [a1[21] titleForStatePersisting];
      v4 = v3;
      if (v3)
      {
        v5 = v3;
      }

      else
      {
        v5 = [(TabDocument *)v1 _titleIncludeLoading:1 allowURLStringFallback:0 allowUntitled:?];
      }

      v1 = v5;
    }
  }

  return v1;
}

- (void)_disablePrivateRelaySetting:(uint64_t)a1
{
  if (a1)
  {
    v4 = [a1 URL];
    v5 = *(a1 + 600);
    *(a1 + 600) = v4;

    *(a1 + 608) = a2;
    *(a1 + 948) = a2;
  }
}

- (uint64_t)_shouldCleanUpAfterRedirectToExternalApp
{
  v1 = a1;
  if (a1)
  {
    v2 = [*(a1 + 1064) _committedURL];
    if (v2)
    {
      v1 = 0;
    }

    else
    {
      v1 = [*(v1 + 1064) _webProcessIdentifier] != 0;
    }
  }

  return v1;
}

- (void)_clearNavigationSource
{
  if (a1)
  {
    v2 = *(a1 + 1296);
    *(a1 + 1296) = 0;

    *(a1 + 958) = 0;
    v3 = *(a1 + 1216);
    *(a1 + 1216) = 0;

    *(a1 + 717) = 0;
  }
}

- (void)_didFinishLoading
{
  if (a1)
  {
    [(TabDocument *)a1 _loadingControllerEstimatedProgressChangedTo:?];
    [(TabDocument *)a1 _loadingControllerDidStopLoadingWithError:?];
    v2 = *(a1 + 1488);
    *(a1 + 1488) = 0;

    *(a1 + 709) = 0;
  }
}

- (void)_authenticateForAutoFillIfNeeded
{
  if (a1 && *(a1 + 160))
  {
    v2 = WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_INFO, "Retrying AutoFill authentication", v4, 2u);
    }

    [(TabDocument *)a1 _getAuthenticationForAutoFillController:*(a1 + 160) withCompletion:?];
    v3 = *(a1 + 160);
    *(a1 + 160) = 0;
  }
}

void __73__TabDocument_webView_decidePolicyForNavigationResponse_decisionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) isForMainFrame])
  {
    *(*(a1 + 40) + 721) = 0;
  }

  (*(*(a1 + 48) + 16))();
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      [*(v4 + 176) cancelFluidProgressWithProgressStateSource:v4];

      [(TabDocument *)v4 _didFinishLoading];
    }
  }
}

- (void)touchIconFetcher
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[15];
    if (!v3)
    {
      v4 = [[TouchIconFetcher alloc] initWithWebView:a1[133]];
      v5 = v2[15];
      v2[15] = v4;

      v3 = v2[15];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)_terminateWebProcessAndReloadIfActive:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [*(result + 1064) _killWebContentProcessAndResetState];
    result = [*(v3 + 288) owningWebViewDidChangeProcessID];
    if (*(v3 + 990))
    {
      if (a2)
      {

        return [v3 reload];
      }
    }

    else
    {

      return [v3 hibernate];
    }
  }

  return result;
}

- (void)_presentTranslationConsentAlertWithType:(void *)a3 completionHandler:
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__TabDocument__presentTranslationConsentAlertWithType_completionHandler___block_invoke;
    block[3] = &unk_2781D6B60;
    block[4] = a1;
    v9 = a2;
    v8 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_destroyDocumentViewAllowingDeferral:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_destroyDocumentViewAllowingDeferral:(uint64_t)a3 .cold.2(void *a1, void **a2, uint64_t a3, id *a4)
{
  v7 = *a2;
  *a2 = 0;

  [*(a3 + 88) invalidate];
  v8 = *(a3 + 88);
  *(a3 + 88) = 0;

  [a3 hideFindOnPage];
  v9 = *(a3 + 80);
  *(a3 + 80) = 0;

  v10 = *(a3 + 104);
  *(a3 + 104) = 0;

  v11 = *(a3 + 112);
  *(a3 + 112) = 0;

  v12 = *(a3 + 208);
  *(a3 + 208) = 0;

  [*(a3 + 120) invalidate];
  v13 = *(a3 + 120);
  *(a3 + 120) = 0;

  [*(a3 + 424) invalidate];
  v14 = *(a3 + 424);
  *(a3 + 424) = 0;

  [*(a3 + 1304) clearFailedRequest];
  [*(a3 + 1304) invalidate];
  [*(a3 + 368) invalidate];
  v15 = *(a3 + 368);
  *(a3 + 368) = 0;

  [*a4 removeObserver:a3 forKeyPath:@"URL" context:kTabDocumentObserverContext];
  [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"estimatedProgress" context:?];
  [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"_networkRequestsInProgress" context:?];
  if ([*a4 _networkRequestsInProgress])
  {
    [(TabDocument *)a3 _stoppedLoadingResources];
  }

  [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"hasOnlySecureContent" context:?];
  [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"_negotiatedLegacyTLS" context:?];
  [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"title" context:?];
  [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"canGoBack" context:?];
  [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"canGoForward" context:?];
  [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"_webProcessIsResponsive" context:?];
  [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"loading" context:?];
  [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"themeColor" context:?];
  [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"underPageBackgroundColor" context:?];
  [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"_sampledPageTopColor" context:?];
  [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"_isPlayingAudio" context:?];
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    [OUTLINED_FUNCTION_0_6() removeObserver:a3 forKeyPath:@"_sampledTopFixedPositionContentColor" context:?];
  }

  [OUTLINED_FUNCTION_6_2() _setHistoryDelegate:?];
  [OUTLINED_FUNCTION_6_2() setUIDelegate:?];
  [OUTLINED_FUNCTION_6_2() _setInputDelegate:?];
  [OUTLINED_FUNCTION_6_2() setNavigationDelegate:?];
  [*a4 _close];
  [*(a3 + 168) setWebView:0];
  [*(a3 + 432) invalidate];
  v16 = *(a3 + 432);
  *(a3 + 432) = 0;

  v17 = *(a3 + 440);
  *(a3 + 440) = 0;

  *(a3 + 737) = 0;
  v18 = *(a3 + 304);
  if (v18)
  {
    [v18 invalidate];
    v19 = *(a3 + 304);
    *(a3 + 304) = 0;
  }

  v20 = *a4;
  *a4 = 0;

  *(a3 + 739) = 0;
}

void __39__TabDocument_restoreAllHighlightsData__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Fetching highlight data failed: %{public}@", v5);
}

void __77__TabDocument__showFinanceKitOrderPreviewControllerWithURL_dismissalHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Failed to save Wallet Order: %{public}@", v5);
}

- (void)showDownload:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_showDownload:path:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "PassBook Pass download failed: %{public}@", v5);
}

void __34__TabDocument__showDownload_path___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Greenfield download failed: %{public}@", v5);
}

void __34__TabDocument__showDownload_path___block_invoke_294_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Profile failed to install: %{public}@", v5);
}

- (void)history
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_215819000, log, OS_LOG_TYPE_DEBUG, "Tab created with profile '%@' (%{public}@)", buf, 0x16u);
}

- (void)webView:(uint64_t *)a1 decidePolicyForNavigationAction:(NSObject *)a2 preferences:decisionHandler:.cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_215819000, a2, OS_LOG_TYPE_ERROR, "Killing web process as a mitigation after it has rapidly attempted %zd navigations concurrently", &v3, 0xCu);
}

- (void)_donateTextAllowingDonationWithoutReaderText:.cold.3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.808e-34);
  _os_log_debug_impl(&dword_215819000, v3, OS_LOG_TYPE_DEBUG, "Page URL: %{private}@", v4, 0xCu);
}

- (void)_setReaderArticleSummary:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_215819000, a1, OS_LOG_TYPE_INFO, "Safari did display summary", v2, 2u);
  }
}

- (void)pageContextDataFetcherDidFinishFetching:forURL:withError:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_215819000, v3, v4, "Failed to extract schema data from webpage: %{public}@", v5);
}

@end