@interface TabDocument
+ (id)blankTabTitleWithLibraryType:(id)type controlledByAutomation:(BOOL)automation;
+ (id)tabDocumentForWKWebView:(id)view;
+ (id)urlForExternalURL:(id)l forPrivateBrowsing:(BOOL)browsing;
- (ActionPanelActivityItemProvider)activityItemProvider;
- (BOOL)_handleTwoFingerTapOnLinkWithContext:(uint64_t)context;
- (BOOL)_isDeallocating;
- (BOOL)_loadServiceWorkerOpenedURLIntent:(_BOOL8)intent;
- (BOOL)_loadWebClip:(id *)clip;
- (BOOL)_showICSControllerForPath:(void *)path sourceURL:(void *)l beforeDismissHandler:;
- (BOOL)_tryRetain;
- (BOOL)_webView:(id)view fileUploadPanelContentIsManagedWithInitiatingFrame:(id)frame;
- (BOOL)_webView:(id)view focusRequiresStrongPasswordAssistance:(id)assistance;
- (BOOL)_webView:(id)view gestureRecognizerCanBePreventedByTouchEvents:(id)events;
- (BOOL)_webView:(id)view gestureRecognizerCouldPinch:(id)pinch;
- (BOOL)_webView:(id)view performDataInteractionOperationWithItemProviders:(id)providers;
- (BOOL)_webViewCanBecomeFocused:(id)focused;
- (BOOL)allowsBrowsingAssistant;
- (BOOL)atLeastOneOtherTabPlayingAudio;
- (BOOL)browserHasMultipleProfiles;
- (BOOL)canFindOnPage;
- (BOOL)canGoBackToParentTab;
- (BOOL)canHideToolbar;
- (BOOL)canOverrideStatusBar;
- (BOOL)canShowPageFormatMenu;
- (BOOL)createFluidProgressState;
- (BOOL)formAutoFillControllerCanPrefillForm:(id)form;
- (BOOL)formAutoFillControllerDidUserDeclineAutomaticStrongPasswordForCurrentDomain:(id)domain;
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
- (BOOL)isReusableForURL:(id)l webClipURL:(id)rL;
- (BOOL)isSearchPage;
- (BOOL)isSecure;
- (BOOL)isShowingErrorPage;
- (BOOL)isShowingFindOnPage;
- (BOOL)isShowingManagedNewTabPage;
- (BOOL)isShowingReadingListArchive;
- (BOOL)isShowingStartPageOverriddenByExtension;
- (BOOL)isShowingSystemStartPage;
- (BOOL)linkPreviewHelper:(id)helper supportsAction:(int64_t)action forURL:(id)l;
- (BOOL)mustShowBarsForBackForwardListItem:(id)item;
- (BOOL)pageLoadErrorControllerShouldHandleCertificateError:(id)error;
- (BOOL)pageLoadErrorControllerShouldReloadAfterError:(id)error;
- (BOOL)printControllerCanPresentPrintUI:(id)i;
- (BOOL)printControllerShouldPrintReader:(id)reader;
- (BOOL)privacyReportShouldSeparateBlockedTrackers;
- (BOOL)sfWebViewCanFindNextOrPrevious:(id)previous;
- (BOOL)sfWebViewShouldFillStringForFind:(id)find;
- (BOOL)shouldBlockAppSuggestionBanner:(id)banner;
- (BOOL)shouldGrantPermissionsOnUserGestureForWebExtensionContext:(id)context;
- (BOOL)shouldShowReaderOnActivate;
- (BOOL)shouldSpawnNewTabOnNavigationFromPinnedTabWithDestinationURL:(id)l;
- (BOOL)supportsAdvancedPrivacyProtectionsForURL:(id)l;
- (BrowserController)browserController;
- (CGPoint)getLastWindowTapLocation;
- (CGPoint)scrollPoint;
- (CGRect)sourceRectForPopoverActionPicker:(id)picker;
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
- (TabDocument)initWithBrowserController:(id)controller;
- (TabDocument)initWithHibernatedTab:(id)tab;
- (TabDocument)initWithTabGroupTab:(id)tab privateBrowsingEnabled:(BOOL)enabled hibernated:(BOOL)hibernated bookmark:(id)bookmark browserController:(id)controller;
- (TabDocument)initWithTabStateData:(id)data hibernated:(BOOL)hibernated browserController:(id)controller;
- (TabDocument)initWithTitle:(id)title URL:(id)l UUID:(id)d privateBrowsingEnabled:(BOOL)enabled controlledByAutomation:(BOOL)automation hibernated:(BOOL)hibernated bookmark:(id)bookmark browserController:(id)self0 relatedWebView:(id)self1;
- (TabDocument)initWithTitle:(id)title URL:(id)l UUID:(id)d privateBrowsingEnabled:(BOOL)enabled hibernated:(BOOL)hibernated bookmark:(id)bookmark browserController:(id)controller;
- (TabDocument)parentTabDocumentForBackClosesSpawnedTab;
- (TabDocument)retain;
- (TabDocumentDelegate)delegate;
- (TabDocumentView)view;
- (UIEdgeInsets)_webView:(id)view finalObscuredInsetsForScrollView:(id)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
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
- (_BYTE)loadWebClip:(_BYTE *)clip userDriven:(void *)driven;
- (_SFInjectedJavaScriptController)activityJSController;
- (_SFPerSitePreferencesVendor)perSitePreferencesVendor;
- (_SFSafariSharingExtensionController)sharingExtensionController;
- (_SFWebClipMetadataFetcher)webClipMetadataFetcher;
- (_SFWebView)activeWebView;
- (_SFWebView)frontWebView;
- (_WKSessionState)sessionState;
- (double)_convertRectFromDocumentToWebView:(double)view;
- (double)pageZoomFactor;
- (id)URLForStatePersisting;
- (id)URLStringForPrintController:(id)controller;
- (id)_actionForSwitchingToTabPlayingAudio:(id *)audio;
- (id)_addTitlePrefixToString:(id *)string;
- (id)_backListWithLimit:(uint64_t)limit;
- (id)_blankTabTitle;
- (id)_contentBlockerStatisticsStore;
- (id)_debugOverrideTitle;
- (id)_fileURLNavigationResultForURL:(void *)l;
- (id)_forwardListWithLimit:(uint64_t)limit;
- (id)_initWithBrowserController:(id)controller configuration:(id)configuration;
- (id)_initWithTitle:(void *)title URL:(void *)l UUID:(uint64_t)d privateBrowsingEnabled:(uint64_t)enabled controlledByAutomation:(void *)automation bookmark:(void *)bookmark browserController:(void *)controller createDocumentView:;
- (id)_loadRequest:(uint64_t)request userDriven:(uint64_t)driven shouldOpenExternalURLs:(void *)ls eventAttribution:(char)attribution skipSyncableTabUpdates:;
- (id)_loadRequest:(uint64_t)request userDriven:(void *)driven shouldOpenExternalURLs:(uint64_t)ls;
- (id)_loadURL:(uint64_t)l userDriven:(void *)driven eventAttribution:(char)attribution skipSyncableTabUpdates:;
- (id)_loadURLInternal:(uint64_t)internal userDriven:;
- (id)_loadURLInternal:(uint64_t)internal userDriven:(void *)driven eventAttribution:(char)attribution skipSyncableTabUpdates:;
- (id)_loadedTitle;
- (id)_localAttributes;
- (id)_menuElementForBackForwardListItem:(void *)item;
- (id)_muteToggleMenuElement;
- (id)_muteToggleMenuElementForOtherTabsWithCount:(id *)count;
- (id)_presentingViewControllerForWebView:(id)view;
- (id)_readingListArchiveNextPageLinkForRequest:(void *)request targetFrame:;
- (id)_removeParentChildTabDocumentRelations;
- (id)_requestBySettingAdvancedPrivacyProtectionsFlag:(void *)flag;
- (id)_resultOfLoadingRequest:(uint64_t)request inMainFrame:(int)frame userInitiated:;
- (id)_startedLoadingResources;
- (id)_stoppedLoadingResources;
- (id)_tabDocumentsSharingWebProcess;
- (id)_titleForStatePersistingForTabGroupTab;
- (id)_titleForStatePersistingForTabStateData;
- (id)_titleIncludeLoading:(int)loading allowURLStringFallback:;
- (id)_titleIncludeLoading:(int)loading allowURLStringFallback:(int)fallback allowUntitled:;
- (id)_webView:(id)view adjustedDataInteractionItemProvidersForItemProvider:(id)provider representingObjects:(id)objects additionalData:(id)data;
- (id)_webView:(id)view alternateURLFromImage:(id)image userInfo:(id *)info;
- (id)_webView:(id)view contextMenuContentPreviewForElement:(id)element;
- (id)_webViewAdditionalContextForStrongPasswordAssistance:(id)assistance;
- (id)backListMenuWithLimit:(int)limit;
- (id)createTabDocumentView;
- (id)createWebViewConfiguration;
- (id)currentFluidProgressStateSource;
- (id)currentHostForScribbleController:(id)controller;
- (id)currentSavedAccountContextForFormAutoFillController:(id)controller;
- (id)customUserVisibleStringForReadingListBookmarkURL:(id)l;
- (id)formAutoFillControllerURLForFormAutoFill:(id)fill;
- (id)forwardListMenuWithLimit:(int)limit;
- (id)initForBackgroundLoadingWithBrowserController:(id)controller relatedWebView:(id)view webViewToCloneSessionStorageFrom:(id)from;
- (id)itemForTabCollectionView:(id)view;
- (id)linkPreviewHelper:(id)helper previewViewControllerForURL:(id)l;
- (id)linkPreviewHelper:(id)helper resultOfLoadingURL:(id)l;
- (id)loadRequest:(id)request userDriven:(BOOL)driven;
- (id)loadURL:(id)l userDriven:(BOOL)driven;
- (id)loadURL:(uint64_t)l userDriven:(char)driven skipSyncableTabUpdates:;
- (id)loadingDialogPageTitleForPrintController:(id)controller;
- (id)makeBookmark;
- (id)openInTabGroupMenuWithNewTabGroupName:(id)name URL:(id)l descendantCount:(int64_t)count handler:(id)handler;
- (id)overlayContainerViewForScribbleController:(id)controller;
- (id)overrideUndoManagerForSFWebView:(id)view;
- (id)pageLoadErrorControllerGetSecIdentityPreferencesController:(id)controller;
- (id)pageTitleForPrintController:(id)controller;
- (id)parentTabForWebExtensionContext:(id)context;
- (id)pdfView;
- (id)pendingURLForWebExtensionContext:(id)context;
- (id)permissionDialogThrottler;
- (id)presentingViewControllerForAction:(id)action;
- (id)presentingViewControllerForPrintController:(id)controller;
- (id)previewViewControllerForURL:(id)l;
- (id)profileIdentifier;
- (id)quickLookDocumentForCurrentBackForwardListItem;
- (id)readerPageArchiveURL;
- (id)readerURLForReaderController:(id)controller;
- (id)resultOfLoadingURL:(id)l;
- (id)resultOfLoadingURL:(int)l userInitiated:;
- (id)safariApplicationVersionForTranslationContext:(id)context;
- (id)sfWebView:(id)view didStartDownload:(id)download;
- (id)suggestedFileNameForQuickLookDocument:(id)document;
- (id)tabDocumentForPreviewURL:(void *)l relatedToWebView:;
- (id)tabEntityUUIDForView:(id)view;
- (id)tabUpdateBlock;
- (id)titleForSharing;
- (id)titleForWebExtensionContext:(id)context;
- (id)translationConsentAlertHelperViewControllerToPresentDetailsFrom:(id)from;
- (id)urlForWebExtensionContext:(id)context;
- (id)webViewForWebExtensionContext:(id)context;
- (id)windowForWebExtensionContext:(id)context;
- (int)readingListBookmarkID;
- (int64_t)_webView:(id)view decidePolicyForFocusedElement:(id)element;
- (int64_t)dialogController:(id)controller presentationPolicyForDialog:(id)dialog;
- (int64_t)pageStatus;
- (uint64_t)_analyticsRecorderShouldIgnoreURLWithNavigationPolicy:(void *)policy forNavigationAction:;
- (uint64_t)_canShowDownloadWithoutPrompting:(uint64_t)prompting;
- (uint64_t)_createNewDocumentViewIfNecessaryForURL:(uint64_t)l;
- (uint64_t)_isNewDocumentViewNecessaryForURL:(void *)l;
- (uint64_t)_isShowingNativePage;
- (uint64_t)_loadBookmark:(uint64_t)bookmark;
- (uint64_t)_loadNextFallbackURLWithWebClip:(void *)clip navigation:;
- (uint64_t)_loadSearchResultForQuery:(id *)query;
- (uint64_t)_loadURL:(void *)l fromBookmark:;
- (uint64_t)_loadUserTypedAddress:(uint64_t)address;
- (uint64_t)_setUpNavigationBarItem;
- (uint64_t)_shouldCleanUpAfterRedirectToExternalApp;
- (uint64_t)_shouldDisallowRedirectToExternalAppsForUserInitiatedRequest:(uint64_t)result;
- (uint64_t)_shouldUpdateUsageTrackingWhenTransitioningToState:(uint64_t)state;
- (uint64_t)_suppressReloadToPreventLoadingJavaScriptIfNecessary;
- (uint64_t)_terminateWebProcessAndReloadIfActive:(uint64_t)result;
- (uint64_t)_trySwitchingToPinnedTabOnNavigationToURL:(uint64_t)l;
- (uint64_t)_usageStateIfTabDocumentIsCurrent:(uint64_t)current;
- (uint64_t)isPageEligibileToShowNotSecureWarning;
- (uint64_t)pageLoadStatusForNavigationError:(uint64_t)error;
- (unint64_t)_webView:(id)view willUpdateDataInteractionOperationToOperation:(unint64_t)operation forSession:(id)session;
- (unint64_t)indexInWindowForWebExtensionContext:(id)context;
- (unint64_t)numberOfOtherUnmutedTabsPlayingAudio;
- (unint64_t)webPageID;
- (void)_URLForWebExtensionsMayHaveChanged;
- (void)_activeParticipantsDidUpdateInTabWithUUID:(id *)d;
- (void)_addNoFeedAppSupportAlert;
- (void)_attemptDeferredDropNavigation;
- (void)_authenticateForAutoFillIfNeeded;
- (void)_cancelFaviconUpdate;
- (void)_checkForAppLinkWithCompletion:(uint64_t)completion;
- (void)_checkForHighlight;
- (void)_clearAppBannerIfNotCurrentStoreBannerDeferringRemoval:(uint64_t)removal;
- (void)_clearCachedCanonicalURL;
- (void)_clearLibraryType;
- (void)_clearNavigationSource;
- (void)_closeTabDocumentAnimated:(BOOL)animated;
- (void)_commitPreviewedViewControllerInSafari:(id *)safari;
- (void)_completeRedirectToExternalNavigationResult:(uint64_t)result fromOriginalRequest:(uint64_t)request dialogResult:;
- (void)_createBrowserReaderViewIfNeeded:(uint64_t)needed;
- (void)_createDocumentViewRelatedTo:(void *)to webViewToCloneSessionStorageFrom:(void *)from websiteDataStore:(void *)store deferrableUserScriptsShouldWaitUntilNotification:(void *)notification;
- (void)_createDocumentViewWithConfiguration:(uint64_t)configuration;
- (void)_destroyDocumentViewAllowingDeferral:(uint64_t)deferral;
- (void)_detectWebpageLocaleWithTextSamples:(void *)samples url:;
- (void)_determineResultOfLoadingRequest:(uint64_t)request inMainFrame:(int)frame userInitiated:(void *)initiated completionHandler:;
- (void)_didCancelSummarizationAlertToReset;
- (void)_didCommitPreviewViewController:(uint64_t)controller;
- (void)_didDecideNavigationPolicy:(void *)policy forNavigationAction:;
- (void)_didDecideNavigationPolicy:(void *)policy forNavigationResponse:;
- (void)_didFinishLoading;
- (void)_didFinishNavigation:(uint64_t)navigation;
- (void)_didOKSummarizationAlertToReset;
- (void)_didUserInitiatedReload;
- (void)_disablePrivateRelaySetting:(uint64_t)setting;
- (void)_dismissSiriReaderMediaSession;
- (void)_displayAttributionBannerForHighlight:(unsigned __int8 *)highlight;
- (void)_donateCurrentNavigationWithNavigationResponse:(id *)response;
- (void)_donateCurrentPageLoad;
- (void)_donateTextAllowingDonationWithoutReaderText:(id *)text;
- (void)_donateTextSoon;
- (void)_fireOnUpdatedExtensionEvent;
- (void)_fireOnUpdatedExtensionEventSoon;
- (void)_getAuthenticationForAutoFillController:(void *)controller withCompletion:;
- (void)_goBackAllowingNewTabToSpawnIfNeeded:(char)needed shouldDismissReader:;
- (void)_goForwardAllowingNewTabToSpawnIfNeeded:(char)needed shouldDismissReader:;
- (void)_goToBackForwardListItem:(char)item shouldDismissReader:;
- (void)_handleNavigationIntent:(void *)intent completion:;
- (void)_hidePrivateBrowsingPrivacyProtectionsBannerIfNecessary;
- (void)_internalWebView:(void *)view decidePolicyForNavigationAction:(void *)action preferences:(void *)preferences decisionHandler:;
- (void)_internalWebView:(void *)view decidePolicyForNavigationAction:(void *)action withResult:(uint64_t)result preferences:(void *)preferences decisionHandler:;
- (void)_loadActivityItemProviderIfNeeded;
- (void)_loadDeferredURLIfNeeded;
- (void)_loadExternalURL:(void *)l withIntent:;
- (void)_loadQueuedNavigation:(void *)navigation;
- (void)_loadingControllerDidStartLoading;
- (void)_loadingControllerDidStopLoadingWithError:(uint64_t)error;
- (void)_loadingControllerEstimatedProgressChangedTo:(uint64_t)to;
- (void)_loadingControllerWillLoadRequest:(uint64_t)request webView:(int)view userDriven:;
- (void)_notifyDidUpdateTabCollectionItem;
- (void)_notifyImpressionAnalyticsRecorderIfNeededTabDocumentDidBecomeActive:(uint64_t)active;
- (void)_openAppLinkInApp:(void *)app fromOriginalRequest:(uint64_t)request updateAppLinkStrategy:(void *)strategy webBrowserState:(void *)state completionHandler:;
- (void)_presentDialogToAllowDownload:(void *)download initiatingSecurityOrigin:(uint64_t)origin allowViewAction:(void *)action completionHandler:;
- (void)_presentTranslationConsentAlertWithType:(void *)type completionHandler:;
- (void)_presentViewControllerAnimatedForSummarizationContent:(uint64_t)content;
- (void)_queueAlertForRedirectToExternalNavigationResult:(void *)result fromOriginalRequest:(void *)request navigationAction:(char)action isMainFrame:(uint64_t)frame promptPolicy:(void *)policy userAction:;
- (void)_reconfigureLibraryItemView;
- (void)_redirectToExternalNavigationResult:(void *)result fromOriginalRequest:(void *)request navigationAction:(uint64_t)action promptPolicy:(uint64_t)policy isMainFrame:(void *)frame userAction:;
- (void)_reloadFromOrigin:(uint64_t)origin;
- (void)_searchEngineControllerDidFinishPopulating:(id)populating;
- (void)_sessionStateWithoutParentItem;
- (void)_setAppBannerWhenPainted:(uint64_t)painted;
- (void)_setDeferredNavigationURL:(void *)l title:;
- (void)_setIcon:(int)icon isMonogram:;
- (void)_setReaderArticleSummary:(uint64_t)summary;
- (void)_setUp;
- (void)_showDownload:(void *)download path:;
- (void)_showFinanceKitOrderPreviewControllerWithURL:(void *)l dismissalHandler:;
- (void)_showPassBookControllerForPasses:(uint64_t)passes;
- (void)_showPerSitePreferencesPopoverViewControllerIfPossible;
- (void)_showPrivateBrowsingPrivacyProtectionsBannerForReload;
- (void)_startAppBannerRemovalTimer;
- (void)_terminateWebProcessIfNeededAndShowCrashBanner:(void *)banner thenDo:;
- (void)_terminateWebProcessThenDoUnresponsiveWebProcessBlock;
- (void)_titleForWebExtensionsMayHaveChanged;
- (void)_translationAvailabilityDidChange:(id)change;
- (void)_translationContextStateDidChange:(id)change;
- (void)_unresponsiveWebProcessTimerFired:(id)fired;
- (void)_updateActiveExtensionsIfNecessary;
- (void)_updateAudioUI:(id)i;
- (void)_updateBarItemsWithCurrentMediaState;
- (void)_updateFallbackURLsForUserTypedAddress:(char)address userExplicitlyRequestedAsHTTP:;
- (void)_updateFindCompletionProviderWithNumberOfMatches:(void *)matches forString:;
- (void)_updateMaxVisibleHeightPercentageUserDriven:(id *)driven;
- (void)_updateNavigationBarItem;
- (void)_updatePageLoadDonorWithNavigationPolicy:(void *)policy inMainFrameForNavigationAction:;
- (void)_updatePageZoomWithPreference;
- (void)_updateSnapshotForWebClip:(void *)clip;
- (void)_updateSnapshotIfNeeded;
- (void)_updateTabBarFavicon;
- (void)_updateUsageTrackingInformationIfNecessaryToState:(uint64_t)state;
- (void)_voiceSearchAvailabilityDidChange:(id)change;
- (void)_webView:(id)view authenticationChallenge:(id)challenge shouldAllowLegacyTLS:(id)s;
- (void)_webView:(id)view checkUserMediaPermissionForURL:(id)l mainFrameURL:(id)rL frameIdentifier:(unint64_t)identifier decisionHandler:(id)handler;
- (void)_webView:(id)view contentRuleListWithIdentifier:(id)identifier performedAction:(id)action forURL:(id)l;
- (void)_webView:(id)view contextMenuConfigurationForElement:(id)element completionHandler:(id)handler;
- (void)_webView:(id)view contextMenuDidEndForElement:(id)element;
- (void)_webView:(id)view contextMenuForElement:(id)element willCommitWithAnimator:(id)animator;
- (void)_webView:(id)view createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action windowFeatures:(id)features completionHandler:(id)handler;
- (void)_webView:(id)view dataInteractionOperationWasHandled:(BOOL)handled forSession:(id)session itemProviders:(id)providers;
- (void)_webView:(id)view decideDatabaseQuotaForSecurityOrigin:(id)origin currentQuota:(unint64_t)quota currentOriginUsage:(unint64_t)usage currentDatabaseUsage:(unint64_t)databaseUsage expectedUsage:(unint64_t)expectedUsage decisionHandler:(id)handler;
- (void)_webView:(id)view decidePolicyForSOAuthorizationLoadWithCurrentPolicy:(int64_t)policy forExtension:(id)extension completionHandler:(id)handler;
- (void)_webView:(id)view didAdjustVisibilityWithSelectors:(id)selectors;
- (void)_webView:(id)view didChangeLookalikeCharactersFromURL:(id)l toURL:(id)rL;
- (void)_webView:(id)view didChangeSafeAreaShouldAffectObscuredInsets:(BOOL)insets;
- (void)_webView:(id)view didCommitLoadWithRequest:(id)request inFrame:(id)frame;
- (void)_webView:(id)view didFailLoadDueToNetworkConnectionIntegrityWithURL:(id)l;
- (void)_webView:(id)view didFinishLoadForQuickLookDocumentInMainFrame:(id)frame;
- (void)_webView:(id)view didGeneratePageLoadTiming:(id)timing;
- (void)_webView:(id)view didNegotiateModernTLSForURL:(id)l;
- (void)_webView:(id)view didStartInputSession:(id)session;
- (void)_webView:(id)view didStartLoadForQuickLookDocumentInMainFrameWithFileName:(id)name uti:(id)uti;
- (void)_webView:(id)view hasVideoInPictureInPictureDidChange:(BOOL)change;
- (void)_webView:(id)view logDiagnosticMessage:(id)message description:(id)description;
- (void)_webView:(id)view logDiagnosticMessage:(id)message description:(id)description valueDictionary:(id)dictionary;
- (void)_webView:(id)view logDiagnosticMessageWithDomain:(id)domain domain:(int64_t)a5;
- (void)_webView:(id)view logDiagnosticMessageWithEnhancedPrivacy:(id)privacy description:(id)description;
- (void)_webView:(id)view logDiagnosticMessageWithResult:(id)result description:(id)description result:(int64_t)a6;
- (void)_webView:(id)view logDiagnosticMessageWithValue:(id)value description:(id)description value:(id)a6;
- (void)_webView:(id)view mediaCaptureStateDidChange:(unint64_t)change;
- (void)_webView:(id)view mouseDidMoveOverElement:(id)element withFlags:(int64_t)flags userInfo:(id)info;
- (void)_webView:(id)view navigation:(id)navigation didSameDocumentNavigation:(int64_t)documentNavigation;
- (void)_webView:(id)view printFrame:(id)frame;
- (void)_webView:(id)view queryPermission:(id)permission forOrigin:(id)origin completionHandler:(id)handler;
- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change;
- (void)_webView:(id)view requestGeolocationAuthorizationForURL:(id)l frame:(id)frame decisionHandler:(id)handler;
- (void)_webView:(id)view requestStorageAccessPanelForDomain:(id)domain underCurrentDomain:(id)currentDomain completionHandler:(id)handler;
- (void)_webView:(id)view requestUserMediaAuthorizationForDevices:(unint64_t)devices url:(id)url mainFrameURL:(id)l decisionHandler:(id)handler;
- (void)_webView:(id)view requestWebAuthenticationConditionalMediationRegistrationForUser:(id)user completionHandler:(id)handler;
- (void)_webView:(id)view shouldGoToBackForwardListItem:(id)item inPageCache:(BOOL)cache completionHandler:(id)handler;
- (void)_webView:(id)view storeAppHighlight:(id)highlight inNewGroup:(BOOL)group requestOriginatedInApp:(BOOL)app;
- (void)_webView:(id)view takeFocus:(int64_t)focus;
- (void)_webView:(id)view willSnapshotBackForwardListItem:(id)item;
- (void)_webView:(id)view willStartInputSession:(id)session;
- (void)_webView:(id)view willSubmitFormValues:(id)values userObject:(id)object submissionHandler:(id)handler;
- (void)_webView:(std::__shared_weak_count *)view willSubmitFormValues:userObject:submissionHandler:;
- (void)_webView:(uint64_t)view willSubmitFormValues:userObject:submissionHandler:;
- (void)_webViewDidBeginNavigationGesture:(id)gesture;
- (void)_webViewDidDisableInspectorBrowserDomain:(id)domain;
- (void)_webViewDidEnableInspectorBrowserDomain:(id)domain;
- (void)_webViewDidEndNavigationGesture:(id)gesture withNavigationToBackForwardListItem:(id)item;
- (void)_webViewDidEnterElementFullscreen:(id)fullscreen;
- (void)_webViewDidEnterFullscreen:(id)fullscreen;
- (void)_webViewDidExitElementFullscreen:(id)fullscreen;
- (void)_webViewDidExitFullscreen:(id)fullscreen;
- (void)_webViewFullscreenMayReturnToInline:(id)inline;
- (void)_webViewWebProcessDidCrash:(id)crash;
- (void)_webViewWillEndNavigationGesture:(id)gesture withNavigationToBackForwardListItem:(id)item;
- (void)_webViewWillEnterElementFullscreen:(id)fullscreen;
- (void)_webViewWillEnterFullscreen:(id)fullscreen;
- (void)_webViewWillExitElementFullscreen:(id)fullscreen;
- (void)_willCommitPreviewViewController:(id *)controller;
- (void)activateForWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)addAppHighlightCreatingLink:(BOOL)link;
- (void)addMediaSuspensionReason:(unint64_t)reason;
- (void)addPassesViewControllerDidFinish:(id)finish;
- (void)animateElement:(id)element toBarItem:(int64_t)item;
- (void)animateProgressForCompletedDocument;
- (void)applyHighlightFromNotesIfNeeded;
- (void)beginSuppressingProgressAnimation;
- (void)browsingAssistantController:(id)controller didUpdateContentOptionsForURL:(id)l;
- (void)browsingAssistantControllerDidUpdateUserConsentState:(id)state;
- (void)clearBackForwardList;
- (void)clearBackForwardListKeepingCurrentItem;
- (void)clearBrowserController;
- (void)clearFindOnPageMatchesCounter;
- (void)clearFluidProgressState;
- (void)clearPageLoadStatistics;
- (void)clearReaderScrollInformation;
- (void)clearReaderView;
- (void)clearTabReuseURL;
- (void)closeForWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)commitPreviewViewController:(id)controller;
- (void)createBrowserReaderViewIfNeeded;
- (void)createReaderWebViewForReaderController:(id)controller;
- (void)dataForQuickLookDocument:(id)document completionHandler:(id)handler;
- (void)dealloc;
- (void)decreasePageZoomSetting;
- (void)detectWebpageLocaleForWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)dialogController:(id)controller didDismissDialog:(id)dialog;
- (void)dialogController:(id)controller dismissViewController:(id)viewController withAdditionalAnimations:(id)animations;
- (void)dialogController:(id)controller presentViewController:(id)viewController withAdditionalAnimations:(id)animations;
- (void)dialogController:(id)controller willPresentDialog:(id)dialog;
- (void)didActivateReader;
- (void)didAutoDetectSiteSpecificSearchProviderWithOriginatingURL:(id)l searchURLTemplate:(id)template;
- (void)didFindAppBannerWithContent:(id)content;
- (void)didFindSummarizationRestrictionsForReaderController:(id)controller;
- (void)didReplaceTabDocument:(id)document;
- (void)dismissAppSuggestionBanner:(id)banner;
- (void)dismissAutoFillInternalFeedbackActivityForFormAutoFillController:(id)controller immediately:(BOOL)immediately;
- (void)dismissSiriReaderMediaSessionImmediately:(BOOL)immediately;
- (void)dispatchNavigationIntent:(id)intent;
- (void)displayAttributionBannerForHighlightIfNeeded:(id)needed;
- (void)displayNewTabOverridePageIfNecessary;
- (void)donateCurrentNavigationWithNavigationResponse:(id)response;
- (void)donateSameDocumentNavigationIfNecessary;
- (void)downloadDidFail:(id)fail;
- (void)downloadDidFinish:(id)finish;
- (void)downloadDidStart:(id)start;
- (void)downloadShouldContinueAfterReceivingResponse:(id)response decisionHandler:(id)handler;
- (void)duplicateUsingConfiguration:(id)configuration forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)endSuppressingProgressAnimationAnimated:(BOOL)animated;
- (void)evictFromTabReuse;
- (void)fetchCanonicalURLWithCompletionHandler:(id)handler;
- (void)fetchMetadataForBookmark:(id)bookmark completion:(id)completion;
- (void)filteredArticleTextDidBecomeReadyForReaderController:(id)controller;
- (void)findOnPageCompletionProvider:(id)provider setStringToComplete:(id)complete;
- (void)fluidProgressRocketAnimationDidComplete;
- (void)formAutoFillControllerDidFocusSensitiveFormField:(id)field;
- (void)formAutoFillControllerGetAuthenticationForAutoFill:(id)fill completion:(id)completion;
- (void)formAutoFillControllerUserChoseToUseGeneratedPassword:(id)password;
- (void)getApplicationManifestWithCompletionHandler:(id)handler;
- (void)goBackAllowingNewTabToSpawnIfNeeded:(BOOL)needed;
- (void)goBackForWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)goBackToParentTab;
- (void)goForwardAllowingNewTabToSpawnIfNeeded:(BOOL)needed;
- (void)goForwardForWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)goToBackForwardListItem:(id)item;
- (void)handleNavigationIntent:(id)intent completion:(id)completion;
- (void)hibernate;
- (void)hideBannerForHighlightIdentifier:(id)identifier;
- (void)history;
- (void)increasePageZoomSetting;
- (void)indexTabToCoreSpotlight;
- (void)invalidateUserActivity;
- (void)keyboardWillHide:(id)hide;
- (void)linkPreviewHelper:(id)helper addURLToReadingList:(id)list;
- (void)linkPreviewHelper:(id)helper commitPreviewViewControllerForAction:(int64_t)action withTabOrder:(int64_t)order;
- (void)linkPreviewHelper:(id)helper didProduceNavigationIntent:(id)intent forAction:(int64_t)action;
- (void)linkPreviewHelper:(id)helper redirectToExternalNavigationResult:(id)result;
- (void)linkPreviewHelperWillBeginDownload:(id)download;
- (void)linkPreviewHelperWillDisableLinkPreview;
- (void)loadCloudTab:(id)tab;
- (void)loadTestURL:(id)l withInjectedBundle:(BOOL)bundle withCallback:(id)callback pagesNeedingMemoryWarningSent:(id)sent;
- (void)loadURL:(id)l forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)loadURL:(id)l title:(id)title skipSyncableTabUpdates:(BOOL)updates;
- (void)loadingController:(id)controller willLoadRequest:(id)request webView:(id)view userDriven:(BOOL)driven;
- (void)loadingControllerWillStartUserDrivenLoad:(id)load;
- (void)mediaStateDidChangeNeedsDelay:(uint64_t)delay;
- (void)mute;
- (void)muteMediaCapture;
- (void)muteOtherTabs;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pageContextDataFetcherDidFinishFetching:(id)fetching forURL:(id)l withError:(id)error;
- (void)pageLoadErrorController:(id)controller allowLegacyTLSConnectionForURL:(id)l navigateToURL:(id)rL;
- (void)pageLoadErrorController:(id)controller loadFailedRequestAfterError:(id)error;
- (void)pageLoadErrorController:(id)controller presentViewController:(id)viewController;
- (void)pageLoadErrorControllerClosePage:(id)page;
- (void)pageLoadErrorControllerDidAddAlert:(id)alert;
- (void)pageLoadErrorControllerReloadUsingHTTPSOnlyBypass:(id)bypass;
- (void)pageLoadErrorControllerReloadWithoutPrivateRelay:(id)relay;
- (void)prepareToContinueUserActivity;
- (void)prepareToUseReader;
- (void)presentAutoFillInternalFeedbackToastForFormAutoFillController:(id)controller diagnosticsDataWithoutPageContents:(id)contents;
- (void)presentNextDialogIfNeeded;
- (void)readerController:(id)controller didClickLinkInReaderWithRequest:(id)request;
- (void)readerController:(id)controller didClickLinkRequestingNewWindowInReaderWithRequest:(id)request;
- (void)readerController:(id)controller didDeactivateReaderWithMode:(unint64_t)mode;
- (void)readerController:(id)controller didDetermineAdditionalTextSamples:(id)samples dueTo:(int64_t)to;
- (void)readerController:(id)controller didDetermineReaderAvailability:(id)availability dueTo:(int64_t)to;
- (void)readerController:(id)controller didEncounterErrorForSummarization:(id)summarization;
- (void)readerController:(id)controller didExtractArticleText:(id)text withMetadata:(id)metadata;
- (void)readerController:(id)controller didFinishOnDemandSummarization:(id)summarization;
- (void)readerController:(id)controller didTwoFingerTapLinkInReaderWithContext:(id)context;
- (void)release;
- (void)reloadDisablingAdvancedPrivateBrowsingPrivacyProtections:(BOOL)protections;
- (void)reloadDisablingContentBlockers:(BOOL)blockers;
- (void)reloadEnablingDowngradedPrivateRelay:(BOOL)relay;
- (void)reloadFromOrigin:(BOOL)origin forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)reloadFromOriginUserInitiated;
- (void)reloadUserInitiated;
- (void)removeMediaSuspensionReason:(unint64_t)reason;
- (void)resetPageZoomSetting;
- (void)resetPendingAutoFillInternalFeedbackToastDismissalTimer;
- (void)resetTabViewItems;
- (void)restoreAllHighlightsData;
- (void)restoreScrollPositionWithCloudTab:(id)tab;
- (void)restoreSessionState:(id)state andNavigate:(BOOL)navigate fromSafariViewService:(BOOL)service;
- (void)restoreStateFromTab:(id)tab;
- (void)saveWebArchiveToPath:(id)path completion:(id)completion;
- (void)select;
- (void)setActive:(BOOL)active;
- (void)setAllowsRemoteInspection:(BOOL)inspection;
- (void)setAppSuggestionBanner:(id)banner isPinned:(BOOL)pinned;
- (void)setAudioState:(int)state needsDelay:;
- (void)setBrowserController:(id)controller afterTabGroupReuse:(BOOL)reuse;
- (void)setChangedPropertiesForOnUpdatedWebExtensionEvent:(unint64_t)event;
- (void)setClosed:(BOOL)closed;
- (void)setDelegate:(id)delegate;
- (void)setInitialURLForStatePersisting:(id)persisting title:(id)title;
- (void)setIsBlank:(BOOL)blank;
- (void)setMediaStateIcon:(uint64_t)icon;
- (void)setMuted:(BOOL)muted forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)setNeedsNewTabSnapshot;
- (void)setPageZoomFactor:(double)factor;
- (void)setParentTabDocumentForBackClosesSpawnedTab:(id)tab;
- (void)setPinned:(BOOL)pinned;
- (void)setPinned:(BOOL)pinned forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)setQuickLookDocumentForCurrentBackForwardListItem:(uint64_t)item;
- (void)setReaderModeActive:(BOOL)active forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)setReadingListBookmark:(id)bookmark;
- (void)setSelected:(BOOL)selected forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)setShareParticipants:(id)participants;
- (void)setShowingContinuous:(BOOL)continuous;
- (void)setShowingReader:(BOOL)reader;
- (void)setSourceApplicationBundleIdentifierForNextCommit:(id)commit;
- (void)setSuppressWebExtensionEvents:(BOOL)events;
- (void)setSuppressingProgressAnimationForNavigationGesture:(BOOL)gesture;
- (void)setUnifiedTabBarItem:(uint64_t)item;
- (void)setUnread:(BOOL)unread;
- (void)setUpBackClosesSpawnedTabWithParent:(id)parent;
- (void)setUuid:(id)uuid;
- (void)setWebClip:(uint64_t)clip;
- (void)setZoomFactor:(double)factor forWebExtensionContext:(id)context completionHandler:(id)handler;
- (void)sfScribbleController:(id)controller presentAlert:(id)alert;
- (void)sfScribbleControllerDidEndScribbling:(id)scribbling;
- (void)sfScribbleControllerDidStartScribbling:(id)scribbling;
- (void)sfScribbleControllerDidUpdateHiddenElementCount:(id)count;
- (void)sfWebViewDidChangeSafeAreaInsets:(id)insets;
- (void)sfWebViewDidDismissFindOnPage:(id)page;
- (void)showDownload:(id)download;
- (void)showFindOnPage;
- (void)snapshotForWebClipIcon:(id)icon;
- (void)snapshotWithSize:(CGSize)size options:(unint64_t)options completion:(id)completion;
- (void)statusBarIndicatorTapped;
- (void)stopAdvertisingProactiveActivityContent;
- (void)stopLoading;
- (void)stopLoadingUserInitiated;
- (void)tabGroupManager:(id)manager didUpadateActiveParticipants:(id)participants inTabWithUUID:(id)d;
- (void)toggleGlobalMediaStateMuted;
- (void)toggleMediaStateMuted;
- (void)toggleReader;
- (void)touchIconFetcher;
- (void)translationContext:(id)context shouldReportProgressInUnifiedField:(BOOL)field;
- (void)translationContext:(id)context showTranslationErrorAlertWithTitle:(id)title message:(id)message;
- (void)translationContext:(id)context urlForCurrentPageWithCompletionHandler:(id)handler;
- (void)translationContextReloadPageInOriginalLanguage:(id)language;
- (void)translationContextWillRequestTranslatingWebpage:(id)webpage;
- (void)unfreezeAfterNavigationGesture:(BOOL)gesture;
- (void)unhibernate;
- (void)unmute;
- (void)unmuteOtherTabs;
- (void)updateAccessibilityIdentifier;
- (void)updateAncestryToChildOfTopLevelAncestorRelatedTab:(id)tab;
- (void)updateAncestryWithParentTab:(id)tab;
- (void)updateGlobalMediaStateIcon;
- (void)updateLockedBrowsingState;
- (void)updateMenuButtonShowsBadge;
- (void)updateReadingListItemPreviewText:(id)text;
- (void)updateShowsSiriReaderPlayingIcon;
- (void)updateTabIcon;
- (void)updateTabIconWithDelay:(double)delay;
- (void)updateTabTitle;
- (void)updateThemeColorAndUnderPageBackground:(BOOL)background;
- (void)updateUsageTrackingInformationAfterLinkPreviewDismissal;
- (void)updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:(BOOL)current;
- (void)updateUserActivity;
- (void)updateUsesDarkTheme;
- (void)userDeclinedAutomaticStrongPasswordForCurrentDomainOnTabWithUUID:(id)d;
- (void)validateExtensionToolbarItems;
- (void)validateWebClip;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action preferences:(id)preferences decisionHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler;
- (void)webView:(id)view didCommitNavigation:(id)navigation;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
- (void)webView:(id)view navigationAction:(id)action didBecomeDownload:(id)download;
- (void)webView:(id)view navigationResponse:(id)response didBecomeDownload:(id)download;
- (void)webView:(id)view runJavaScriptAlertPanelWithMessage:(id)message initiatedByFrame:(id)frame completionHandler:(id)handler;
- (void)webView:(id)view runJavaScriptConfirmPanelWithMessage:(id)message initiatedByFrame:(id)frame completionHandler:(id)handler;
- (void)webView:(id)view runJavaScriptTextInputPanelWithPrompt:(id)prompt defaultText:(id)text initiatedByFrame:(id)frame completionHandler:(id)handler;
- (void)webView:(id)view shouldLoadIconWithParameters:(id)parameters completionHandler:(id)handler;
- (void)webViewDidChangeSize;
- (void)webViewDidClose:(id)close;
- (void)webViewDidIncreaseZoom;
- (void)webViewWillChangeSize;
- (void)willClose;
- (void)willDismissLinkPreviewViewController;
@end

@implementation TabDocument

- (WBSUserDefinedContentBlockerManager)normalBrowsingUserDefinedContentBlockerManager
{
  v2 = +[Application sharedApplication];
  userDefinedContentBlockerManager = [v2 userDefinedContentBlockerManager];

  return userDefinedContentBlockerManager;
}

- (id)_blankTabTitle
{
  if (self)
  {
    v2 = objc_opt_class();
    libraryType = [self libraryType];
    v4 = [v2 blankTabTitleWithLibraryType:libraryType controlledByAutomation:{objc_msgSend(self, "isControlledByAutomation")}];
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
  userDefinedContentBlockerManagerForPrivateBrowsing = [v2 userDefinedContentBlockerManagerForPrivateBrowsing];

  return userDefinedContentBlockerManagerForPrivateBrowsing;
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
  isLockdownModeEnabledForSafari = [MEMORY[0x277D4A888] isLockdownModeEnabledForSafari];
  *(a2 + 665) = isLockdownModeEnabledForSafari;
  *(a2 + 664) = isLockdownModeEnabledForSafari;
  v4 = objc_alloc_init(MEMORY[0x277D4A070]);
  v5 = *(a2 + 1416);
  *(a2 + 1416) = v4;
}

- (id)_loadedTitle
{
  if (self)
  {
    if ([self[105] length])
    {
      title = self[105];
    }

    else
    {
      title = [self[21] title];
    }

    v3 = title;
    if ([title length])
    {
      safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      v5 = [safari_browserDefaults BOOLForKey:@"DebugOverrideTabTitleWithMatchingBookmark"];

      if (v5)
      {
        _debugOverrideTitle = [(TabDocument *)self _debugOverrideTitle];
        if ([_debugOverrideTitle length])
        {
          v7 = _debugOverrideTitle;
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
  selfCopy = self;
  if ([(TabDocument *)self isHibernated])
  {
    selfCopy = selfCopy->_loadingController;
  }

  title = [(TabDocument *)selfCopy title];

  return title;
}

- (TabDocument)init
{
  v9.receiver = self;
  v9.super_class = TabDocument;
  v2 = [(TabDocument *)&v9 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    renderingProgressEventObservers = v2->_renderingProgressEventObservers;
    v2->_renderingProgressEventObservers = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    navigationObservers = v2->_navigationObservers;
    v2->_navigationObservers = weakObjectsHashTable2;

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
  perSitePreferencesVendor = [WeakRetained perSitePreferencesVendor];

  return perSitePreferencesVendor;
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
  title = [(TabDocumentCollectionItem *)self->_tabCollectionItem title];
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
  tabBarTitle = [(TabDocument *)self tabBarTitle];
  v6 = [(TabDocument *)&self->super.isa _addTitlePrefixToString:tabBarTitle];

  [(TabBarItem *)self->_tabBarItem setTitle:v6];
  [(UnifiedTabBarItem *)self->_unifiedTabBarItem setTitle:v6];
  [(TabDocument *)&self->super.isa _reconfigureLibraryItemView];
  linkPreviewViewController = self->_linkPreviewViewController;
  uRLString = [(TabDocument *)self URLString];
  [(LinkPreviewViewController *)linkPreviewViewController updatePreviewLoadingUIWithURLString:uRLString];

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
    _committedURL = [(_SFWebView *)self->_webView _committedURL];
  }

  else
  {
    _committedURL = [(LoadingController *)self->_loadingController URL];
  }

  sourceURL = _committedURL;
  if (!_committedURL)
  {
    activeDownload = self->_activeDownload;
    if (activeDownload)
    {
      sourceURL = [(_SFDownload *)activeDownload sourceURL];
    }

    else
    {
      sourceURL = 0;
    }
  }

  safari_userVisibleStringConsideringLongURLs = [(TabDocument *)self customUserVisibleStringForReadingListBookmarkURL:sourceURL];
  if (!safari_userVisibleStringConsideringLongURLs)
  {
    safari_userVisibleStringConsideringLongURLs = [sourceURL safari_userVisibleStringConsideringLongURLs];
  }

  return safari_userVisibleStringConsideringLongURLs;
}

- (void)_reconfigureLibraryItemView
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 124);
    libraryController = [WeakRetained libraryController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuidString = [self uuidString];
      [libraryController reconfigureTabCellWithUUIDString:uuidString];
    }
  }
}

- (void)_titleForWebExtensionsMayHaveChanged
{
  if (self)
  {
    tabTitle = [self tabTitle];
    if (tabTitle != self[182] && ([tabTitle isEqualToString:?] & 1) == 0)
    {
      v2 = [tabTitle copy];
      v3 = self[182];
      self[182] = v2;

      [self setChangedPropertiesForOnUpdatedWebExtensionEvent:{objc_msgSend(self, "changedPropertiesForOnUpdatedWebExtensionEvent") | 1}];
    }
  }
}

- (void)_URLForWebExtensionsMayHaveChanged
{
  if (self)
  {
    obj = [self urlForExtensions];
    v2 = self[183];
    if ((WBSIsEqual() & 1) == 0)
    {
      objc_storeStrong(self + 183, obj);
      [self setChangedPropertiesForOnUpdatedWebExtensionEvent:{objc_msgSend(self, "changedPropertiesForOnUpdatedWebExtensionEvent") | 2}];
      [self validateExtensionToolbarItems];
    }
  }
}

- (void)_notifyDidUpdateTabCollectionItem
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 1248));
    [WeakRetained tabDocumentDidUpdateTabCollectionItem:self];
  }
}

- (SFWebExtensionsController)webExtensionsController
{
  v3 = +[Application sharedApplication];
  isPrivateBrowsingEnabled = [(_SFBrowserConfiguration *)self->_configuration isPrivateBrowsingEnabled];
  profile = [(TabDocument *)self profile];
  v6 = [v3 webExtensionsControllerForTabWithPrivateBrowsingEnabled:isPrivateBrowsingEnabled profile:profile];

  return v6;
}

- (WBProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  effectiveProfile = [WeakRetained effectiveProfile];

  return effectiveProfile;
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v1 selector:sel__voiceSearchAvailabilityDidChange_ name:*MEMORY[0x277D29198] object:0];

    return [v1 _voiceSearchAvailabilityDidChange:0];
  }

  return result;
}

- (void)_updateNavigationBarItem
{
  if (!self || !*(self + 280))
  {
    return;
  }

  v2 = [self URL];
  v35 = v2;
  if ([v2 safari_isSafariWebExtensionURL])
  {
    uRLString = 0;
  }

  else
  {
    uRLString = [self URLString];
  }

  mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
  v4 = [mEMORY[0x277CDB8A8] defaultSearchEngineIfPopulatedForPrivateBrowsing:{objc_msgSend(self, "isPrivateBrowsingEnabled")}];
  v33 = v4;
  if (!v4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277CDBA28];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CDBA28] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__searchEngineControllerDidFinishPopulating_ name:v6 object:0];
  }

  if ([*(self + 48) UIShouldReflectCommittedURLInsteadOfCurrentURL])
  {
    [*(self + 1064) _committedURL];
  }

  else
  {
    [*(self + 168) URL];
  }
  v32 = ;
  v8 = [v4 userVisibleQueryFromSearchURL:v32];
  if (*(self + 192) || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = 0;
  }

  else
  {
    _safeBrowsingWarning = [*(self + 1064) _safeBrowsingWarning];
    v10 = _safeBrowsingWarning != 0;
  }

  [*(self + 280) setOverrideBarStyleForSecurityWarning:v10];
  v38 = 0;
  v36 = [uRLString safari_simplifiedUserVisibleURLStringWithSimplifications:133 forDisplayOnly:0 simplifiedStringOffset:&v38];
  v37 = 0;
  v11 = [uRLString safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:&v37];
  *(self + 974) = 0;
  if (*(self + 192))
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
          safari_isEligibleToShowNotSecureWarning = 0;
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
        *(self + 974) = 1;
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
    expectedOrCurrentURL = [self expectedOrCurrentURL];
    safari_isEligibleToShowNotSecureWarning = [expectedOrCurrentURL safari_isEligibleToShowNotSecureWarning];

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
    safari_isEligibleToShowNotSecureWarning = 0;
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
    safari_isEligibleToShowNotSecureWarning = 0;
    v17 = 0;
    if (v11)
    {
      goto LABEL_34;
    }
  }

LABEL_33:
  if (!safari_isEligibleToShowNotSecureWarning)
  {
LABEL_36:
    [*(self + 280) setSecurityAnnotation:0 hasFocusedInputFieldOnCurrentPage:*(self + 736)];
    v20 = 0;
    goto LABEL_37;
  }

LABEL_34:
  if (![(TabDocument *)self isPageEligibileToShowNotSecureWarning])
  {
    goto LABEL_36;
  }

  v20 = 1;
  [*(self + 280) setSecurityAnnotation:1 hasFocusedInputFieldOnCurrentPage:*(self + 736)];
LABEL_37:
  if ([self isBlank])
  {
    v21 = 0;
  }

  else if (*(self + 664))
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  [*(self + 280) setLockdownModeAnnotation:v21];
  if ((safari_isEligibleToShowNotSecureWarning & v20) == 1)
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

  if (*(self + 192))
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

  [*(self + 280) setShowsSearchIndicator:v25];
  [*(self + 280) setText:v13 textWhenExpanded:v18 startIndex:v14];
  [*(self + 280) setShowsSearchTermsWhenExpanded:v23];
  v26 = [self URL];
  [*(self + 280) setShowsStopReloadButtons:v26 != 0];

  [*(self + 280) setShowsPageFormatButton:{objc_msgSend(self, "canShowPageFormatMenu")}];
  v27 = *(self + 280);
  if (*(self + 192))
  {
    isReaderAvailable = 0;
  }

  else
  {
    isReaderAvailable = [self isReaderAvailable];
  }

  [v27 setShowsReaderButton:isReaderAvailable showsAvailabilityText:0];
  v29 = *(self + 280);
  if (*(self + 192))
  {
    v30 = 0;
  }

  else
  {
    v30 = [*(self + 1056) detectionNotificationLevel] == 1;
  }

  [v29 setShowsTranslationButton:v30 showsAvailabilityText:0];
  [*(self + 1272) updatePreviewLoadingUIWithURLString:uRLString];
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
    createTabDocumentView = [(TabDocument *)self createTabDocumentView];
    v5 = self->_cachedView;
    self->_cachedView = createTabDocumentView;

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
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v14[0] = uUIDString;
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

  rootViewController = [WeakRetained rootViewController];
  [rootViewController updateAccessibilityIdentifier];
}

- (BOOL)isSecure
{
  if (![(_SFWebView *)self->_webView hasOnlySecureContent]|| (objc_opt_respondsToSelector() & 1) != 0 && ([(_SFWebView *)self->_webView _negotiatedLegacyTLS]& 1) != 0)
  {
    return 0;
  }

  v4 = [(LoadingController *)self->_loadingController URL];
  _committedURL = [(_SFWebView *)self->_webView _committedURL];
  v3 = [v4 isEqual:_committedURL];

  return v3;
}

- (BOOL)isShowingManagedNewTabPage
{
  mEMORY[0x277D49A60] = [MEMORY[0x277D49A60] sharedController];
  managedNewTabPageState = [mEMORY[0x277D49A60] managedNewTabPageState];

  if (managedNewTabPageState == 1)
  {

    return [(TabDocument *)self isShowingSystemStartPage];
  }

  else
  {
    if (managedNewTabPageState == 2)
    {
      webExtensionsController = [(TabDocument *)self webExtensionsController];
      mEMORY[0x277D49A60]2 = [MEMORY[0x277D49A60] sharedController];
      managedNewTabPageExtensionComposedIdentifier = [mEMORY[0x277D49A60]2 managedNewTabPageExtensionComposedIdentifier];
      v14 = [webExtensionsController webExtensionForComposedIdentifier:managedNewTabPageExtensionComposedIdentifier];

      v15 = [(TabDocument *)self URL];
      newTabOverridePageURL = [v14 newTabOverridePageURL];
      v10 = [v15 safari_isEqualToURL:newTabOverridePageURL];
    }

    else if (managedNewTabPageState == 3)
    {
      v5 = [(TabDocument *)self URL];
      v6 = MEMORY[0x277CBEBC0];
      mEMORY[0x277D49A60]3 = [MEMORY[0x277D49A60] sharedController];
      managedNewTabPageHomepageURLString = [mEMORY[0x277D49A60]3 managedNewTabPageHomepageURLString];
      v9 = [v6 URLWithString:managedNewTabPageHomepageURLString];
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
  hasQuickLookContent = [(TabDocument *)self hasQuickLookContent];
  if (!hasQuickLookContent)
  {
    _unreachableURL = [(_SFWebView *)self->_webView _unreachableURL];
    if (_unreachableURL)
    {
      v5 = 1;
LABEL_9:

      return v5;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    _safeBrowsingWarning = [(_SFWebView *)self->_webView _safeBrowsingWarning];
    v5 = _safeBrowsingWarning != 0;

    if (hasQuickLookContent)
    {
      return v5;
    }

    goto LABEL_8;
  }

  v5 = 0;
  if (!hasQuickLookContent)
  {
LABEL_8:
    _unreachableURL = 0;
    goto LABEL_9;
  }

  return v5;
}

- (BOOL)hasQuickLookContent
{
  quickLookDocument = [(TabDocument *)self quickLookDocument];
  v3 = quickLookDocument != 0;

  return v3;
}

- (SFQuickLookDocument)quickLookDocument
{
  quickLookDocumentCheckCompleted = self->_quickLookDocumentCheckCompleted;
  quickLookDocument = self->_quickLookDocument;
  if (!quickLookDocumentCheckCompleted && !quickLookDocument)
  {
    self->_quickLookDocumentCheckCompleted = 1;
    quickLookDocument = [(SFQuickLookDocumentWriter *)self->_quickLookDocumentWriter quickLookDocument];
    v6 = self->_quickLookDocument;
    self->_quickLookDocument = quickLookDocument;

    v7 = self->_quickLookDocument;
    if (!v7 || ([(TabDocument *)self setQuickLookDocumentForCurrentBackForwardListItem:v7], (v8 = self->_quickLookDocument) == 0))
    {
      if ([(TabDocument *)self isPDFDocument])
      {
        suggestedFilenameForDisplayedPDF = [(TabDocument *)self suggestedFilenameForDisplayedPDF];
        v10 = objc_alloc(MEMORY[0x277D28D20]);
        v11 = [v10 initWithFileName:suggestedFilenameForDisplayedPDF mimeType:0 uti:*MEMORY[0x277CC2108] needsQuickLookDocumentView:0];
        v12 = self->_quickLookDocument;
        self->_quickLookDocument = v11;
      }

      v8 = self->_quickLookDocument;
      if (!v8)
      {
        quickLookDocumentForCurrentBackForwardListItem = [(TabDocument *)self quickLookDocumentForCurrentBackForwardListItem];
        v14 = self->_quickLookDocument;
        self->_quickLookDocument = quickLookDocumentForCurrentBackForwardListItem;

        v8 = self->_quickLookDocument;
      }
    }

    urlForSharing = [(TabDocument *)self urlForSharing];
    [(SFQuickLookDocument *)v8 setSourceURL:urlForSharing];

    [(SFQuickLookDocument *)self->_quickLookDocument setDocumentSource:self];
    quickLookDocument = self->_quickLookDocument;
  }

  return quickLookDocument;
}

- (id)quickLookDocumentForCurrentBackForwardListItem
{
  if (self)
  {
    backForwardList = [*(self + 1064) backForwardList];
    currentItem = [backForwardList currentItem];
    _sf_quickLookDocument = [currentItem _sf_quickLookDocument];
  }

  else
  {
    _sf_quickLookDocument = 0;
  }

  return _sf_quickLookDocument;
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

  titleForSharing = [(TabDocument *)self titleForSharing];
  if (titleForSharing)
  {
    [v3 _setTitle:titleForSharing];
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

    dictionaryRepresentationForUserActivityUserInfo = [v3 dictionaryRepresentationForUserActivityUserInfo];
    [(NSUserActivity *)self->_userActivity setUserInfo:dictionaryRepresentationForUserActivityUserInfo];

    title = [v3 title];
    [(NSUserActivity *)self->_userActivity setTitle:title];

    [(NSUserActivity *)self->_userActivity setWebpageURL:v6];
    searchableItemAttributes = [(TabDocument *)self searchableItemAttributes];
    [(NSUserActivity *)self->_userActivity setContentAttributeSet:searchableItemAttributes];

    searchableItemAttributes2 = [(TabDocument *)self searchableItemAttributes];
    LOBYTE(searchableItemAttributes) = searchableItemAttributes2 == 0;

    if ((searchableItemAttributes & 1) == 0)
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
        searchableItemAttributes3 = [(TabDocument *)self searchableItemAttributes];
        relatedUniqueIdentifier = [searchableItemAttributes3 relatedUniqueIdentifier];
        v27 = 138478083;
        v28 = relatedUniqueIdentifier;
        v29 = 2113;
        v30 = v6;
        _os_log_debug_impl(&dword_215819000, v18, OS_LOG_TYPE_DEBUG, "Sending NSUserActivity through CoreSpotlight; relatedUniqueIdentifier '%{private}@' and URL '%{private}@'", &v27, 0x16u);
      }
    }

    v19 = +[Application sharedApplication];
    systemNoteTakingController = [v19 systemNoteTakingController];

    [systemNoteTakingController insertCanonicalURLIfAvailableForUserActivity:self->_userActivity];
    userInfo = [(NSUserActivity *)self->_userActivity userInfo];
    v22 = [userInfo mutableCopy];

    _uniqueIdentifier = [(NSUserActivity *)self->_userActivity _uniqueIdentifier];
    [v22 setObject:_uniqueIdentifier forKeyedSubscript:@"uniqueIdentifier"];

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
  mEMORY[0x277D28D50] = [MEMORY[0x277D28D50] sharedVoiceUtilities];
  activeSiriReaderSessionIdentifier = [mEMORY[0x277D28D50] activeSiriReaderSessionIdentifier];
  LODWORD(lastSiriReaderSessionIdentifier) = [(NSString *)lastSiriReaderSessionIdentifier isEqualToString:activeSiriReaderSessionIdentifier];

  if (!lastSiriReaderSessionIdentifier)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  siriReaderPlaybackStateForActiveTab = [WeakRetained siriReaderPlaybackStateForActiveTab];

  return siriReaderPlaybackStateForActiveTab == 1;
}

- (void)webViewDidChangeSize
{
  [(TabDocument *)&self->super.isa _updateMaxVisibleHeightPercentageUserDriven:?];
  readerContext = [(TabDocument *)self readerContext];
  [readerContext webViewWillChangeSize];
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
    createWebViewConfiguration = [(TabDocument *)self createWebViewConfiguration];
    [(TabDocument *)self _createDocumentViewWithConfiguration:createWebViewConfiguration];
    if (self->_savedSessionState)
    {
      goto LABEL_8;
    }

    if (![(TabDocument *)self isBlank])
    {
      localAttributes = [(WBTab *)self->_tabGroupTab localAttributes];
      sessionStateData = [localAttributes sessionStateData];

      if ([sessionStateData length])
      {
        v8 = [objc_alloc(MEMORY[0x277CE38A0]) initWithData:sessionStateData];
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
      selfCopy = self;
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
  processPool = [WeakRetained processPool];
  [v3 setProcessPool:processPool];

  [v3 setShowsSystemScreenTimeBlockingView:0];
  wkPreferences = [WeakRetained wkPreferences];
  if ([MEMORY[0x277D49A08] isWAPEnabled])
  {
    profileIdentifier = [(TabDocument *)self profileIdentifier];
    v6 = [profileIdentifier isEqualToString:{*MEMORY[0x277D49BD8], WeakRetained}];

    if (v6)
    {
      v7 = [wkPreferences copy];

      [v7 _setNotificationsEnabled:1];
      [v7 _setPushAPIEnabled:1];
      [v7 _setNotificationEventEnabled:1];
      wkPreferences = v7;
      [v7 _setAppBadgeEnabled:1];
    }
  }

  [v3 setPreferences:{wkPreferences, WeakRetained}];
  if (self->_webClip)
  {
    [v3 setIgnoresViewportScaleLimits:1];
    preferences = [v3 preferences];
    [preferences _setStandalone:1];
  }

  if ([(TabDocument *)self isPrivateBrowsingEnabled])
  {
    safari_privateBrowsingUserContentController = [MEMORY[0x277CE3830] safari_privateBrowsingUserContentController];
  }

  else
  {
    webExtensionsController = [(TabDocument *)self webExtensionsController];
    safari_privateBrowsingUserContentController = [webExtensionsController userContentController];

    history = [(TabDocument *)self history];
    visitedLinkStore = [history visitedLinkStore];
    [v3 _setVisitedLinkStore:visitedLinkStore];
  }

  [v3 setUserContentController:safari_privateBrowsingUserContentController];
  v15 = _SFApplicationNameForUserAgent();
  [v3 setApplicationNameForUserAgent:v15];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v14 = [standardUserDefaults valueForKey:*MEMORY[0x277D291B8]];
  LODWORD(v15) = [v14 BOOLValue];

  v16 = [standardUserDefaults valueForKey:*MEMORY[0x277D292A0]];
  bOOLValue = [v16 BOOLValue];

  if (bOOLValue)
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
  v20 = [standardUserDefaults valueForKey:*MEMORY[0x277D29240]];
  [v3 _setMainContentUserGestureOverrideEnabled:{objc_msgSend(v20, "BOOLValue")}];

  v21 = [standardUserDefaults valueForKey:*MEMORY[0x277D29258]];
  [v3 setAllowsInlineMediaPlayback:{objc_msgSend(v21, "BOOLValue")}];

  v22 = [standardUserDefaults valueForKey:*MEMORY[0x277D29218]];
  [v3 _setInlineMediaPlaybackRequiresPlaysInlineAttribute:{objc_msgSend(v22, "BOOLValue")}];

  v23 = [standardUserDefaults valueForKey:*MEMORY[0x277D29220]];
  [v3 _setInvisibleAutoplayNotPermitted:{objc_msgSend(v23, "BOOLValue")}];

  [v3 _setApplePayEnabled:1];
  [v3 setIgnoresViewportScaleLimits:1];
  [v3 _setNeedsStorageAccessFromFileURLsQuirk:0];
  [v3 _setDragLiftDelay:2];
  configuration = [(TabDocument *)self configuration];
  [v3 _setControlledByAutomation:{objc_msgSend(configuration, "isControlledByAutomation")}];

  v25 = +[Application sharedApplication];
  systemNoteTakingController = [v25 systemNoteTakingController];

  if ([systemNoteTakingController isNoteTakingSupportedWithPrivateBrowsing:{-[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 _setAppHighlightsEnabled:1];
  }

  if ([(_SFBrowserConfiguration *)self->_configuration usesPersistentDataStore])
  {
    v27 = MEMORY[0x277CE3868];
    profileIdentifier2 = [(TabDocument *)self profileIdentifier];
    automationController = [v27 safari_dataStoreForProfileWithIdentifier:profileIdentifier2];
    [v3 setWebsiteDataStore:automationController];
LABEL_22:

    goto LABEL_24;
  }

  isControlledByAutomation = [(TabDocument *)self isControlledByAutomation];
  v31 = MEMORY[0x277CE3868];
  if (isControlledByAutomation)
  {
    profileIdentifier2 = +[Application sharedApplication];
    automationController = [profileIdentifier2 automationController];
    automationSession = [automationController automationSession];
    sessionIdentifier = [automationSession sessionIdentifier];
    v34 = [v31 safari_dataStoreForAutomationSessionWithIdentifier:sessionIdentifier];
    [v3 setWebsiteDataStore:v34];

    goto LABEL_22;
  }

  profileIdentifier2 = [MEMORY[0x277CE3868] safari_nonPersistentDataStore];
  [v3 setWebsiteDataStore:profileIdentifier2];
LABEL_24:

  [v3 _setLegacyEncryptedMediaAPIEnabled:{objc_msgSend(standardUserDefaults, "BOOLForKey:", *MEMORY[0x277D29238])}];
  websiteDataStore = [v3 websiteDataStore];
  mEMORY[0x277CBAB38] = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
  [websiteDataStore _setResourceLoadStatisticsEnabled:{objc_msgSend(mEMORY[0x277CBAB38], "webui_trackerProtectionEnabled")}];

  preferences2 = [v3 preferences];
  v38 = objc_opt_respondsToSelector();

  if (v38)
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    safari_warnAboutFraudulentWebsites = [safari_browserDefaults safari_warnAboutFraudulentWebsites];
    preferences3 = [v3 preferences];
    [preferences3 _setSafeBrowsingEnabled:safari_warnAboutFraudulentWebsites];
  }

  [v3 _setSystemPreviewEnabled:1];
  webExtensionsController2 = [(TabDocument *)self webExtensionsController];
  webKitController = [webExtensionsController2 webKitController];
  [v3 _setWebExtensionController:webKitController];

  if (objc_opt_respondsToSelector())
  {
    [standardUserDefaults safari_doubleForKey:@"DebugSampledPageTopColorMaxDifference" defaultValue:*MEMORY[0x277D4A8D8]];
    [v3 _setSampledPageTopColorMaxDifference:?];
  }

  if (objc_opt_respondsToSelector())
  {
    [standardUserDefaults safari_doubleForKey:@"DebugSampledPageTopColorMinHeight" defaultValue:*MEMORY[0x277D4A8E0]];
    [v3 _setSampledPageTopColorMinHeight:?];
  }

  defaultWebpagePreferences = [v3 defaultWebpagePreferences];
  v45 = _SFApplicationNameForDesktopUserAgent();
  [defaultWebpagePreferences _setApplicationNameForUserAgentWithModernCompatibility:v45];

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
    profile = [(TabDocument *)self profile];
    identifier = [profile identifier];
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      title = [profile title];
      [(TabDocument *)title history:identifier];
    }

    v9 = +[Application sharedApplication];
    historyController = [v9 historyController];
    v11 = [historyController historyForProfileIdentifier:identifier loadIfNeeded:1];
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
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 992));
    effectiveProfileIdentifier = [WeakRetained effectiveProfileIdentifier];
  }

  else
  {
    effectiveProfileIdentifier = 0;
  }

  return effectiveProfileIdentifier;
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
  if (!self)
  {
    return;
  }

  if ([MEMORY[0x277D49A08] isInternalInstall])
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v3 = [safari_browserDefaults BOOLForKey:@"DebugHideAllExtensionButtons"];

    if (v3)
    {
      return;
    }
  }

  webExtensionsController = [self webExtensionsController];
  [*(self + 280) setNeedsExtensionBadge:{objc_msgSend(webExtensionsController, "hasUpdatedToolbarItemBadgeTextInTab:", self)}];
  urlForExtensions = [self urlForExtensions];
  if ([urlForExtensions safari_isSafariWebExtensionURL])
  {
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    host = [urlForExtensions host];
    v8 = [v6 initWithUUIDString:host];
  }

  else
  {
    v8 = 0;
  }

  enabledExtensions = [webExtensionsController enabledExtensions];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __49__TabDocument__updateActiveExtensionsIfNecessary__block_invoke;
  v28[3] = &unk_2781DB088;
  v10 = webExtensionsController;
  v29 = v10;
  selfCopy = self;
  v11 = urlForExtensions;
  v31 = v11;
  v12 = v8;
  v32 = v12;
  v13 = [enabledExtensions safari_mapAndFilterObjectsUsingBlock:v28];

  v14 = [v13 count];
  WeakRetained = objc_loadWeakRetained((self + 992));
  contentBlockerManager = [self contentBlockerManager];
  if ([self isPrivateBrowsingEnabled])
  {
    enabledExtensions2 = [v10 enabledExtensions];
    if (![enabledExtensions2 count])
    {
      enabledExtensions3 = [contentBlockerManager enabledExtensions];
      v18 = enabledExtensions3 != 0;
LABEL_15:

      goto LABEL_16;
    }
  }

  else
  {
    enabledExtensions2 = [v10 extensions];
    if (![enabledExtensions2 count])
    {
      enabledExtensions3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      if ([enabledExtensions3 BOOLForKey:*MEMORY[0x277D4A210]])
      {
        v18 = 1;
      }

      else
      {
        extensions = [contentBlockerManager extensions];
        v18 = [extensions count] != 0;
      }

      goto LABEL_15;
    }
  }

  v18 = 1;
LABEL_16:

  tabBarManager = [WeakRetained tabBarManager];
  if (v18)
  {
    if ([WeakRetained hasDedicatedExtensionsButton])
    {
      v20 = 1;
    }

    else
    {
      inlineTabBar = [tabBarManager inlineTabBar];
      if (([inlineTabBar usesMoreMenu] & 1) != 0 || *(self + 970) != 1)
      {
        v20 = 0;
      }

      else
      {
        text = [*(self + 280) text];
        v20 = [text length] == 0;
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
    v27[4] = self;
    v22 = [v13 safari_mapAndFilterObjectsUsingBlock:v27];
  }

  v23 = [objc_alloc(MEMORY[0x277D28EC8]) initWithActiveExtensionCount:v14 alwaysShowMultipleExtensionsButton:v20 buttons:v22 extensionsController:v10];
  [*(self + 280) setExtensionButtonConfiguration:v23];

  [*(self + 280) setExtensionsAreActive:v14 != 0];
}

- (void)validateExtensionToolbarItems
{
  [(TabDocument *)self _updateActiveExtensionsIfNecessary];

  [(TabDocument *)self updateMenuButtonShowsBadge];
}

- (SFContentBlockerManager)contentBlockerManager
{
  isPrivateBrowsingEnabled = [(_SFBrowserConfiguration *)self->_configuration isPrivateBrowsingEnabled];
  v4 = +[Application sharedApplication];
  v5 = v4;
  if (isPrivateBrowsingEnabled)
  {
    v6 = [v4 contentBlockerManagerForProfileServerID:*MEMORY[0x277D49BD8]];
  }

  else
  {
    profile = [(TabDocument *)self profile];
    identifierForExtensions = [profile identifierForExtensions];
    v6 = [v5 contentBlockerManagerForProfileServerID:identifierForExtensions];
  }

  return v6;
}

- (void)updateMenuButtonShowsBadge
{
  mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
  LODWORD(v9) = [mEMORY[0x277CDB7A8] hasUnviewedDownloads];

  webExtensionsController = [(TabDocument *)self webExtensionsController];
  v5 = [webExtensionsController hasUpdatedToolbarItemBadgeTextInTab:self];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabBarManager = [WeakRetained tabBarManager];
  displayMode = [tabBarManager displayMode];
  v9 = v9;

  unifiedTabBarItem = self->_unifiedTabBarItem;
  if (displayMode == 2)
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
    mEMORY[0x277D4A060] = [MEMORY[0x277D4A060] sharedInstance];
    [mEMORY[0x277D4A060] setTabNeedsSpotlightDonation:self];
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

    _safeBrowsingWarning = [v1[133] _safeBrowsingWarning];

    if (_safeBrowsingWarning)
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
  isShowingFindOnPage = [(TabDocument *)self isShowingFindOnPage];
  if (isShowingFindOnPage)
  {
    findInteraction = [(TabDocument *)self findInteraction];
    [findInteraction dismissFindNavigator];
  }

  return isShowingFindOnPage;
}

- (BOOL)isShowingFindOnPage
{
  findInteraction = [(TabDocument *)self findInteraction];
  isFindNavigatorVisible = [findInteraction isFindNavigatorVisible];

  return isFindNavigatorVisible;
}

- (UIFindInteraction)findInteraction
{
  activeWebView = [(TabDocument *)self activeWebView];
  findInteraction = [activeWebView findInteraction];

  return findInteraction;
}

- (void)updateGlobalMediaStateIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  browserWindowController = [WeakRetained browserWindowController];
  tabsWithSound = [browserWindowController tabsWithSound];

  LODWORD(WeakRetained) = [tabsWithSound safari_containsObjectPassingTest:&__block_literal_global_487];
  v5 = [tabsWithSound count];
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
  if (self)
  {
    [self[101] invalidate];
    v2 = self[101];
    self[101] = 0;

    objc_initWeak(&location, self);
    v3 = MEMORY[0x277CBEBB8];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__TabDocument__fireOnUpdatedExtensionEventSoon__block_invoke;
    v6[3] = &unk_2781DA668;
    objc_copyWeak(&v7, &location);
    v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:0.1];
    v5 = self[101];
    self[101] = v4;

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
      favoritesFavicon = [MEMORY[0x277D28F20] favoritesFavicon];
LABEL_23:
      [(TabDocument *)self _setIcon:favoritesFavicon isMonogram:0];

      goto LABEL_24;
    }

    v8 = libraryType;
    if ([(NSString *)v8 isEqualToString:@"BookmarksCollection"])
    {
      bookmarksFavicon = [MEMORY[0x277D28F20] bookmarksFavicon];
    }

    else if ([(NSString *)v8 isEqualToString:@"CloudTabsCollection"])
    {
      bookmarksFavicon = [MEMORY[0x277D28F20] fallbackFavicon];
    }

    else if ([(NSString *)v8 isEqualToString:@"HistoryCollection"])
    {
      bookmarksFavicon = [MEMORY[0x277D28F20] historyFavicon];
    }

    else if ([(NSString *)v8 isEqualToString:@"ReadingListCollection"])
    {
      bookmarksFavicon = [MEMORY[0x277D28F20] readingListFavicon];
    }

    else
    {
      if (![(NSString *)v8 isEqualToString:@"SharedWithYouCollection"])
      {
        favoritesFavicon = 0;
        goto LABEL_22;
      }

      bookmarksFavicon = [MEMORY[0x277D28F20] sharedWithYouFavicon];
    }

    favoritesFavicon = bookmarksFavicon;
LABEL_22:

    goto LABEL_23;
  }

  absoluteString = [v3 absoluteString];
  v5 = [absoluteString isEqualToString:@"about:blank"];

  if (v5)
  {
    fallbackFavicon = [MEMORY[0x277D28F20] fallbackFavicon];
    [(TabDocument *)self _setIcon:fallbackFavicon isMonogram:0];
  }

  else
  {
    if (![v3 safari_isSafariWebExtensionURL])
    {
      objc_initWeak(&location, self);
      v13 = [objc_alloc(MEMORY[0x277D4A730]) initWithURL:v3 iconSize:2 fallbackType:+[TabIconAndTitleView defaultTabIconSize]()];
      mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __28__TabDocument_updateTabIcon__block_invoke;
      v18[3] = &unk_2781DA690;
      objc_copyWeak(&v19, &location);
      v15 = [mEMORY[0x277D28F58] registerRequest:v13 priority:2 responseHandler:v18];
      faviconToken = self->_faviconToken;
      self->_faviconToken = v15;

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
      goto LABEL_24;
    }

    webExtensionsController = [(TabDocument *)self webExtensionsController];
    host = [v3 host];
    fallbackFavicon = [webExtensionsController webExtensionForBaseURIHost:host];

    icon = [fallbackFavicon icon];
    [(TabDocument *)self _setIcon:icon isMonogram:0];
  }

LABEL_24:
}

- (void)_cancelFaviconUpdate
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 576));
    if (([WeakRetained isValid] & 1) != 0 || *(self + 560))
    {
      v2 = *(self + 552);
      *(self + 552) = 0;
    }

    [WeakRetained invalidate];
    mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    [mEMORY[0x277D28F58] cancelRequestWithToken:*(self + 560)];

    v4 = *(self + 560);
    *(self + 560) = 0;
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

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
  tabDocumentPlayingPIPVideo = [WeakRetained tabDocumentPlayingPIPVideo];

  if (tabDocumentPlayingPIPVideo == self)
  {
    [WeakRetained setTabDocumentPlayingPIPVideo:0];
  }

  if (!self->_beingReleased && !self->_suppressWebExtensionEvents)
  {
    webExtensionsController = [(TabDocument *)self webExtensionsController];
    [webExtensionsController didCloseTab:self windowIsClosing:0];
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
    readerURL = [(_SFReaderController *)self->_readerContext readerURL];
    mEMORY[0x277D28D50] = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    activeSiriReaderSessionURL = [mEMORY[0x277D28D50] activeSiriReaderSessionURL];
    v12 = [readerURL isEqual:activeSiriReaderSessionURL];

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
    allObjects = [v1[65] allObjects];
    v3 = [allObjects countByEnumeratingWithState:&v6 objects:v10 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v6 + 1) + 8 * v5++) setParentTabDocumentForBackClosesSpawnedTab:0];
        }

        while (v3 != v5);
        v3 = [allObjects countByEnumeratingWithState:&v6 objects:v10 count:16];
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
    _backForwardList = [(TabDocument *)self _backForwardList];
    backItem = [_backForwardList backItem];
    v10 = [backItem URL];
    _backForwardList2 = [WeakRetained _backForwardList];
    currentItem = [_backForwardList2 currentItem];
    v13 = [currentItem URL];
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

+ (id)urlForExternalURL:(id)l forPrivateBrowsing:(BOOL)browsing
{
  browsingCopy = browsing;
  lCopy = l;
  if ([lCopy safari_isXWebSearchURL])
  {
    v6 = [SearchQueryBuilder searchQueryBuilderWithXWebSearchURL:lCopy forPrivateBrowsing:browsingCopy];
    searchURL = [v6 searchURL];

    goto LABEL_5;
  }

  searchURL = lCopy;
  if ([lCopy safari_isSafariSpecificURL])
  {
    [lCopy safari_URLByNormalizingSafariSpecificURL];
    searchURL = v6 = lCopy;
LABEL_5:

    if (searchURL != lCopy)
    {
      goto LABEL_7;
    }
  }

  v8 = MEMORY[0x277CBEBC0];
  safari_userVisibleString = [lCopy safari_userVisibleString];
  v10 = [v8 safari_URLWithUserTypedString:safari_userVisibleString];

  searchURL = v10;
LABEL_7:
  scheme = [searchURL scheme];
  v12 = [scheme isEqualToString:@"com-apple-mobilesafari-tab"];

  if (!v12)
  {
    goto LABEL_18;
  }

  resourceSpecifier = [searchURL resourceSpecifier];
  v14 = [resourceSpecifier componentsSeparatedByString:@"?"];

  if ([v14 count] <= 2 && objc_msgSend(v14, "count"))
  {
    v15 = [v14 objectAtIndex:0];
    stringByRemovingPercentEncoding = [v15 stringByRemovingPercentEncoding];

    v17 = [MEMORY[0x277CBEBC0] URLWithString:stringByRemovingPercentEncoding];
    v18 = v17;
    if (v17)
    {
      scheme2 = [v17 scheme];
      if ([scheme2 isEqualToString:@"http"])
      {

LABEL_14:
        v22 = searchURL;
LABEL_16:

        searchURL = v18;
        goto LABEL_17;
      }

      scheme3 = [v18 scheme];
      v21 = [scheme3 isEqualToString:@"https"];

      if (v21)
      {
        goto LABEL_14;
      }
    }

    v22 = v18;
    v18 = searchURL;
    goto LABEL_16;
  }

LABEL_17:

LABEL_18:

  return searchURL;
}

- (TabDocument)initWithBrowserController:(id)controller
{
  controllerCopy = controller;
  v5 = -[TabDocument initWithTitle:URL:UUID:privateBrowsingEnabled:controlledByAutomation:hibernated:bookmark:browserController:relatedWebView:](self, "initWithTitle:URL:UUID:privateBrowsingEnabled:controlledByAutomation:hibernated:bookmark:browserController:relatedWebView:", 0, 0, 0, [controllerCopy isPrivateBrowsingEnabled], objc_msgSend(controllerCopy, "isControlledByAutomation"), 0, 0, controllerCopy, 0);

  return v5;
}

- (id)initForBackgroundLoadingWithBrowserController:(id)controller relatedWebView:(id)view webViewToCloneSessionStorageFrom:(id)from
{
  controllerCopy = controller;
  viewCopy = view;
  fromCopy = from;
  isPrivateBrowsingEnabled = [controllerCopy isPrivateBrowsingEnabled];
  isControlledByAutomation = [controllerCopy isControlledByAutomation];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __109__TabDocument_initForBackgroundLoadingWithBrowserController_relatedWebView_webViewToCloneSessionStorageFrom___block_invoke;
  v17[3] = &unk_2781D6AC0;
  selfCopy = self;
  v13 = viewCopy;
  v19 = v13;
  v14 = fromCopy;
  v20 = v14;
  v15 = [(TabDocument *)selfCopy _initWithTitle:0 URL:0 UUID:isPrivateBrowsingEnabled privateBrowsingEnabled:isControlledByAutomation controlledByAutomation:0 bookmark:controllerCopy browserController:v17 createDocumentView:?];

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

- (void)_createDocumentViewRelatedTo:(void *)to webViewToCloneSessionStorageFrom:(void *)from websiteDataStore:(void *)store deferrableUserScriptsShouldWaitUntilNotification:(void *)notification
{
  fromCopy = from;
  storeCopy = store;
  notificationCopy = notification;
  if (to)
  {
    createWebViewConfiguration = [to createWebViewConfiguration];
    v10 = createWebViewConfiguration;
    if (fromCopy)
    {
      [createWebViewConfiguration _setRelatedWebView:?];
      configuration = [fromCopy configuration];
      processPool = [configuration processPool];
      [v10 setProcessPool:processPool];

      configuration2 = [fromCopy configuration];
      websiteDataStore = [configuration2 websiteDataStore];
      [v10 setWebsiteDataStore:websiteDataStore];
    }

    else if (notificationCopy)
    {
      [createWebViewConfiguration setWebsiteDataStore:notificationCopy];
    }

    [v10 _setWebViewToCloneSessionStorageFrom:storeCopy];
    [(TabDocument *)to _createDocumentViewWithConfiguration:v10];
  }
}

- (id)_initWithTitle:(void *)title URL:(void *)l UUID:(uint64_t)d privateBrowsingEnabled:(uint64_t)enabled controlledByAutomation:(void *)automation bookmark:(void *)bookmark browserController:(void *)controller createDocumentView:
{
  v16 = a2;
  titleCopy = title;
  lCopy = l;
  automationCopy = automation;
  bookmarkCopy = bookmark;
  controllerCopy = controller;
  if (self)
  {
    v19 = [self init];
    if (v19)
    {
      v47 = v16;
      if (controllerCopy)
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
      }

      else
      {
        uUID = [lCopy copy];
      }

      v21 = *(v19 + 1376);
      *(v19 + 1376) = uUID;

      v48 = [TabDocument blankTabTitleWithLibraryType:0 controlledByAutomation:0];
      v22 = objc_alloc(MEMORY[0x277D7B560]);
      uUIDString = [*(v19 + 1376) UUIDString];
      if ([v16 length])
      {
        v24 = v16;
      }

      else
      {
        v24 = v48;
      }

      tabController = [bookmarkCopy tabController];
      deviceIdentifier = [tabController deviceIdentifier];
      v27 = [v22 initWithUUID:uUIDString title:v24 url:titleCopy deviceIdentifier:deviceIdentifier isPrivateBrowsing:d];
      v28 = *(v19 + 1384);
      *(v19 + 1384) = v27;

      v16 = v47;
      [v19 setBrowserController:bookmarkCopy afterTabGroupReuse:0];
      v29 = objc_alloc(MEMORY[0x277CDB768]);
      rootViewController = [bookmarkCopy rootViewController];
      v31 = [v29 initWithPrivateBrowsingEnabled:d traitEnvironment:rootViewController controlledByAutomation:enabled];
      v32 = *(v19 + 1264);
      *(v19 + 1264) = v31;

      v33 = objc_alloc_init(LoadingController);
      v34 = *(v19 + 168);
      *(v19 + 168) = v33;

      [*(v19 + 168) setDelegate:v19];
      [v19 setReadingListBookmark:automationCopy];
      *(v19 + 975) = controllerCopy == 0;
      if (controllerCopy)
      {
        controllerCopy[2](controllerCopy);
      }

      else
      {
        [*(v19 + 168) setTitle:v47];
        [*(v19 + 168) setURL:titleCopy];
      }

      *(v19 + 1168) = 0xBFF0000000000000;
      [(TabDocument *)v19 _setUp];
      v35 = objc_alloc_init(UnifiedTabBarItem);
      v36 = *(v19 + 1104);
      *(v19 + 1104) = v35;

      [*(v19 + 1104) setUUID:*(v19 + 1376)];
      mEMORY[0x277D28C70] = [MEMORY[0x277D28C70] sharedFeatureManager];
      showRectangularTabsInSeparateBar = [mEMORY[0x277D28C70] showRectangularTabsInSeparateBar];

      if (showRectangularTabsInSeparateBar)
      {
        v39 = objc_alloc_init(TabBarItem);
        v40 = *(v19 + 1096);
        *(v19 + 1096) = v39;

        [*(v19 + 1096) setUUID:*(v19 + 1376)];
      }

      browserController = [v19 browserController];
      [*(v19 + 1104) setMenuButtonConfigurator:browserController];

      [v19 resetTabViewItems];
      v42 = *(v19 + 1136);
      v43 = MEMORY[0x277CBEBF8];
      *(v19 + 1136) = MEMORY[0x277CBEBF8];

      [MEMORY[0x277D4A8B0] nextTabID];
      *(v19 + 792) = v44;
      [v19 setChangedPropertiesForOnUpdatedWebExtensionEvent:0];
      v45 = *(v19 + 1160);
      *(v19 + 1160) = v43;

      self = v19;
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (TabDocument)initWithTitle:(id)title URL:(id)l UUID:(id)d privateBrowsingEnabled:(BOOL)enabled hibernated:(BOOL)hibernated bookmark:(id)bookmark browserController:(id)controller
{
  hibernatedCopy = hibernated;
  enabledCopy = enabled;
  titleCopy = title;
  lCopy = l;
  dCopy = d;
  bookmarkCopy = bookmark;
  controllerCopy = controller;
  v20 = -[TabDocument initWithTitle:URL:UUID:privateBrowsingEnabled:controlledByAutomation:hibernated:bookmark:browserController:relatedWebView:](self, "initWithTitle:URL:UUID:privateBrowsingEnabled:controlledByAutomation:hibernated:bookmark:browserController:relatedWebView:", titleCopy, lCopy, dCopy, enabledCopy, [controllerCopy isControlledByAutomation], hibernatedCopy, bookmarkCopy, controllerCopy, 0);

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

- (void)setInitialURLForStatePersisting:(id)persisting title:(id)title
{
  persistingCopy = persisting;
  titleCopy = title;
  [(LoadingController *)self->_loadingController setTitle:titleCopy];
  [(LoadingController *)self->_loadingController setURL:persistingCopy];
}

- (void)_destroyDocumentViewAllowingDeferral:(uint64_t)deferral
{
  v15 = *MEMORY[0x277D85DE8];
  if (deferral)
  {
    if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
    {
      v2 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        [TabDocument _destroyDocumentViewAllowingDeferral:];
      }
    }

    if (*(deferral + 1064))
    {
      v3 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(deferral + 1064);
        v11 = 134218240;
        deferralCopy = deferral;
        v13 = 2048;
        v14 = v4;
        _os_log_impl(&dword_215819000, v3, OS_LOG_TYPE_DEFAULT, "TabDocument %p: destroying web view %p", &v11, 0x16u);
      }

      if (*(deferral + 1064))
      {
        v5 = +[Application sharedApplication];
        systemNoteTakingController = [v5 systemNoteTakingController];

        [systemNoteTakingController removeObserver:deferral forKeyPath:*MEMORY[0x277D4A900] context:kTabDocumentObserverContext];
      }
    }

    [deferral clearReaderView];
    [deferral updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:0];
    [*(deferral + 1280) invalidate];
    v7 = *(deferral + 1280);
    *(deferral + 1280) = 0;

    _remoteObjectRegistry = [*(deferral + 1064) _remoteObjectRegistry];
    [_remoteObjectRegistry unregisterExportedObject:deferral interface:*(deferral + 64)];

    v9 = *(deferral + 64);
    *(deferral + 64) = 0;

    _remoteObjectRegistry2 = [*(deferral + 1064) _remoteObjectRegistry];
    [_remoteObjectRegistry2 unregisterExportedObject:deferral interface:*(deferral + 72)];
    [(TabDocument *)_remoteObjectRegistry2 _destroyDocumentViewAllowingDeferral:deferral, (deferral + 1064)];
  }
}

- (id)_titleIncludeLoading:(int)loading allowURLStringFallback:(int)fallback allowUntitled:
{
  if (self)
  {
    v5 = *(self + 192);
    if (v5)
    {
      safari_userVisibleHost = [v5 safari_userVisibleHost];
      goto LABEL_19;
    }

    safari_userVisibleHost = [(TabDocument *)self _loadedTitle];
    if (![safari_userVisibleHost length])
    {
      if (([*(self + 1064) isLoading] & a2 & 1) != 0 || (WeakRetained = objc_loadWeakRetained((self + 992)), objc_msgSend(WeakRetained, "userActivityController"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "tabDocumentPendingUserActivityPayload"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, WeakRetained, v12 == self))
      {
        displayName = _WBSLocalizedString();
LABEL_18:

        safari_userVisibleHost = displayName;
        goto LABEL_19;
      }

      _committedURL = [*(self + 1064) _committedURL];
      if ([_committedURL safari_isSafariWebExtensionURL])
      {
        webExtensionsController = [self webExtensionsController];
        host = [_committedURL host];
        v16 = [webExtensionsController webExtensionForBaseURIHost:host];
        displayName = [v16 displayName];
      }

      else
      {
        if (!loading || ([self URLString], v18 = objc_claimAutoreleasedReturnValue(), (webExtensionsController = v18) == 0))
        {
          if (fallback)
          {
            displayName = [(TabDocument *)self _blankTabTitle];
          }

          else
          {
            displayName = &stru_2827BF158;
          }

          goto LABEL_17;
        }

        displayName = [v18 safari_simplifiedUserVisibleURLStringWithSimplifications:URLSimplificationOptionsForTabTitle forDisplayOnly:1 simplifiedStringOffset:0];
      }

LABEL_17:
      goto LABEL_18;
    }
  }

  else
  {
    safari_userVisibleHost = 0;
  }

LABEL_19:

  return safari_userVisibleHost;
}

- (id)_debugOverrideTitle
{
  selfCopy = self;
  if (self)
  {
    v2 = [self URL];
    if (WBSIsEqual())
    {
      selfCopy = selfCopy[106];
    }

    else
    {
      objc_storeStrong(selfCopy + 107, v2);
      v3 = selfCopy[106];
      selfCopy[106] = 0;

      mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      absoluteString = [v2 absoluteString];
      v6 = [mainBookmarkCollection listWithID:0 skipOffset:0 includeHidden:0 includeDescendantsAsChildren:1 filteredUsingString:absoluteString];

      if ([v6 bookmarkCount])
      {
        v7 = [v6 bookmarkAtIndex:0];
        title = [v7 title];
        v9 = selfCopy[106];
        selfCopy[106] = title;
      }

      selfCopy = selfCopy[106];
    }
  }

  return selfCopy;
}

+ (id)blankTabTitleWithLibraryType:(id)type controlledByAutomation:(BOOL)automation
{
  typeCopy = type;
  v5 = typeCopy;
  if (typeCopy)
  {
    startPageTitleForCollectionType(typeCopy);
  }

  else
  {
    _WBSLocalizedString();
  }
  v6 = ;

  return v6;
}

- (id)_addTitlePrefixToString:(id *)string
{
  v3 = a2;
  if (string)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [standardUserDefaults BOOLForKey:@"DebugShowTabMetadata"];
    v6 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D4A1A0]];
    if ((v5 | v6))
    {
      array = [MEMORY[0x277CBEB18] array];
      if (v5)
      {
        v8 = string[133];
        v9 = v8;
        if (v8)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"p%d", objc_msgSend(v8, "_webProcessIdentifier")];
          [array addObject:v10];
        }

        else
        {
          [array addObject:@"p?"];
        }
      }

      if (v6)
      {
        WeakRetained = objc_loadWeakRetained(string + 124);
        tabController = [WeakRetained tabController];
        tabOrderManager = [tabController tabOrderManager];

        identifier = [string identifier];
        v16 = [tabOrderManager simplifiedIdentifierForDisplayInTabTitle:identifier];

        ancestorTabIdentifiers = [string ancestorTabIdentifiers];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __39__TabDocument__addTitlePrefixToString___block_invoke;
        v25[3] = &unk_2781DAC00;
        v18 = tabOrderManager;
        v26 = v18;
        v19 = [ancestorTabIdentifiers safari_mapObjectsUsingBlock:v25];

        v20 = [v19 componentsJoinedByString:{@", "}];
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"t%@ {%@}", v16, v20];
        [array addObject:v21];
      }

      v22 = [array componentsJoinedByString:@" "];

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

- (void)updateTabIconWithDelay:(double)delay
{
  objc_initWeak(&location, self);
  [(TabDocument *)self _cancelFaviconUpdate];
  v5 = MEMORY[0x277CBEBB8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__TabDocument_updateTabIconWithDelay___block_invoke;
  v7[3] = &unk_2781DA668;
  objc_copyWeak(&v8, &location);
  v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:delay];
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
  configuration = [(TabDocument *)self configuration];
  traitEnvironment = [configuration traitEnvironment];
  traitCollection = [traitEnvironment traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  configurationManager = [(_SFReaderController *)self->_readerContext configurationManager];
  [configurationManager setDarkModeEnabled:userInterfaceStyle == 2];

  [(_SFReaderController *)self->_readerContext sendConfigurationToWebProcess];
  if (!self->_hibernated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    tabCollectionViewProvider = [WeakRetained tabCollectionViewProvider];
    [tabCollectionViewProvider invalidateSnapshotForTab:self];
  }
}

- (void)_setIcon:(int)icon isMonogram:
{
  v9 = a2;
  if (self)
  {
    [*(self + 1096) setIcon:v9];
    [*(self + 1104) setIcon:v9];
    if (icon)
    {
      v5 = 0;
    }

    else
    {
      v5 = v9;
    }

    [*(self + 1112) setIcon:v5];
    WeakRetained = objc_loadWeakRetained((self + 992));
    tabCollectionViewProvider = [WeakRetained tabCollectionViewProvider];
    iconPool = [tabCollectionViewProvider iconPool];
    [iconPool iconDidChangeForIdentifier:*(self + 1376)];

    [(TabDocument *)self _updateTabBarFavicon];
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
  if (self && *(self + 990) == 1)
  {
    icon = [*(self + 1112) icon];
    if ((*(self + 970) & 1) != 0 || [*(self + 280) showsSearchIndicator])
    {
      v2 = [MEMORY[0x277D755B8] systemImageNamed:@"magnifyingglass"];

      icon = v2;
    }

    WeakRetained = objc_loadWeakRetained((self + 992));
    tabBarManager = [WeakRetained tabBarManager];
    [tabBarManager setActiveFavicon:icon];
  }
}

- (void)webView:(id)view shouldLoadIconWithParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  v9 = [(TabDocument *)self URL];
  if (!v9 || [parametersCopy iconType] || (objc_msgSend(parametersCopy, "attributes"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", @"mask"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    faviconProvider = [mEMORY[0x277D28F58] faviconProvider];

    isPrivateBrowsingEnabled = [(TabDocument *)self isPrivateBrowsingEnabled];
    v15 = [parametersCopy size];
    [v15 floatValue];
    v17 = v16;
    v18 = [parametersCopy size];
    [v18 floatValue];
    v20 = v19;

    v21 = self->_originalURL;
    v22 = [parametersCopy url];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __70__TabDocument_webView_shouldLoadIconWithParameters_completionHandler___block_invoke;
    v26[3] = &unk_2781DA728;
    v27 = v9;
    v28 = v22;
    v31 = handlerCopy;
    v23 = faviconProvider;
    v29 = v23;
    v24 = v21;
    v30 = v24;
    v32 = v17;
    v33 = v20;
    v34 = isPrivateBrowsingEnabled;
    v25 = v22;
    [v23 shouldIconDataBeSavedForIconWithPageURL:v27 originalPageURL:v24 iconURL:v25 size:isPrivateBrowsingEnabled isPrivate:v26 completionHandler:{v17, v20}];
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

- (void)_searchEngineControllerDidFinishPopulating:(id)populating
{
  [(TabDocument *)self _updateNavigationBarItem];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CDBA28] object:0];
}

- (uint64_t)isPageEligibileToShowNotSecureWarning
{
  selfCopy = self;
  if (self)
  {
    expectedOrCurrentURL = [self expectedOrCurrentURL];
    if (([expectedOrCurrentURL safari_isEligibleToShowNotSecureWarning] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(selfCopy[133], "_negotiatedLegacyTLS"))
    {
      _committedURL = [selfCopy[133] _committedURL];
      host = [_committedURL host];
      safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
      expectedOrCurrentURL2 = [selfCopy expectedOrCurrentURL];
      host2 = [expectedOrCurrentURL2 host];
      safari_highLevelDomainFromHost2 = [host2 safari_highLevelDomainFromHost];
      if ([safari_highLevelDomainFromHost isEqualToString:safari_highLevelDomainFromHost2])
      {
        if ([selfCopy[35] showsSecurityAnnotation])
        {
          if (selfCopy[123])
          {
            LOBYTE(selfCopy) = 1;
          }

          else
          {
            LOBYTE(selfCopy) = *(selfCopy + 721);
          }
        }

        else
        {
          v9 = selfCopy[91];
          expectedOrCurrentURL3 = [selfCopy expectedOrCurrentURL];
          if ([v9 isEqual:expectedOrCurrentURL3])
          {
            if (selfCopy[123])
            {
              LOBYTE(selfCopy) = 1;
            }

            else
            {
              LOBYTE(selfCopy) = *(selfCopy + 721);
            }
          }

          else
          {
            LOBYTE(selfCopy) = 0;
          }
        }
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

  return selfCopy & 1;
}

- (void)_translationAvailabilityDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__TabDocument__translationAvailabilityDidChange___block_invoke;
  v6[3] = &unk_2781D61F8;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
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

- (void)_voiceSearchAvailabilityDidChange:(id)change
{
  mEMORY[0x277D28EB8] = [MEMORY[0x277D28EB8] sharedManager];
  -[SFNavigationBarItem setShowsVoiceSearchButton:](self->_navigationBarItem, "setShowsVoiceSearchButton:", [mEMORY[0x277D28EB8] availability] != 0);
}

- (SFBrowserDocumentTrackerInfo)trackerInfo
{
  trackerInfo = self->_trackerInfo;
  if (!trackerInfo)
  {
    v4 = [objc_alloc(MEMORY[0x277CDB6D0]) initWithDocument:self];
    v5 = self->_trackerInfo;
    self->_trackerInfo = v4;

    queryParameterFilteringDataQueue = [(SFBrowserDocumentTrackerInfo *)self->_trackerInfo queryParameterFilteringDataQueue];
    [queryParameterFilteringDataQueue setDelegate:self];

    trackerInfo = self->_trackerInfo;
  }

  return trackerInfo;
}

- (id)itemForTabCollectionView:(id)view
{
  viewCopy = view;
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

  isStandalone = [viewCopy isStandalone];
  unifiedTabBarItem = self->_unifiedTabBarItem;
  if (isStandalone)
  {
    secondaryItem = [(UnifiedTabBarItem *)unifiedTabBarItem secondaryItem];
    goto LABEL_9;
  }

LABEL_8:
  secondaryItem = unifiedTabBarItem;
LABEL_9:
  v9 = secondaryItem;

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
  selfCopy = self;
  v22[2] = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (*(self + 824) == 1)
    {
      v21[0] = @"url";
      absoluteString = [self[104] absoluteString];
      v3 = absoluteString;
      v4 = &stru_2827BF158;
      if (absoluteString)
      {
        v5 = absoluteString;
      }

      else
      {
        v5 = &stru_2827BF158;
      }

      v21[1] = @"title";
      v22[0] = v5;
      if (selfCopy[105])
      {
        v4 = selfCopy[105];
      }

      v22[1] = v4;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    }

    else
    {
      v20 = 0;
    }

    v6 = objc_alloc(MEMORY[0x277D7B530]);
    v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(selfCopy + 146)];
    _sessionStateWithoutParentItem = [(TabDocument *)selfCopy _sessionStateWithoutParentItem];
    data = [_sessionStateWithoutParentItem data];
    ancestorTabIdentifiers = [selfCopy ancestorTabIdentifiers];
    v9 = *(selfCopy + 713);
    v10 = selfCopy[149];
    readingListBookmarkID = [selfCopy readingListBookmarkID];
    v12 = *(selfCopy + 955);
    v13 = *(selfCopy + 956);
    uuid = [selfCopy[170] uuid];
    uUIDString = [uuid UUIDString];
    LOBYTE(v17) = v13;
    selfCopy = [v6 initWithLastVisitTime:v19 sessionStateData:data ancestorTabUUIDs:ancestorTabIdentifiers displayingStandaloneImage:v9 readerViewTopScrollOffset:readingListBookmarkID readingListBookmarkID:v12 openedFromLink:v10 showingReader:v17 queuedNavigation:v20 webClipIDString:uUIDString];
  }

  return selfCopy;
}

- (void)_sessionStateWithoutParentItem
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 147);

    if (WeakRetained)
    {
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x2020000000;
      v7 = 0;
      v3 = selfCopy[133];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __45__TabDocument__sessionStateWithoutParentItem__block_invoke;
      v5[3] = &unk_2781DA7C8;
      v5[4] = selfCopy;
      v5[5] = v6;
      selfCopy = [v3 _sessionStateWithFilter:v5];
      _Block_object_dispose(v6, 8);
    }

    else
    {
      selfCopy = [selfCopy sessionState];
    }
  }

  return selfCopy;
}

- (id)_titleForStatePersistingForTabGroupTab
{
  if (self)
  {
    v2 = [(TabDocument *)self _titleIncludeLoading:0 allowURLStringFallback:0 allowUntitled:?];
    if (![v2 length] && objc_msgSend(self[133], "isLoading"))
    {
      WeakRetained = objc_loadWeakRetained(self + 124);
      tabController = [WeakRetained tabController];
      v5 = [tabController existingPersistedTitleForTabDocument:self];

      v2 = v5;
    }

    if (![v2 length])
    {
      v6 = [self URL];
      if (v6)
      {
        v7 = [self URL];
        safari_userVisibleHostWithoutWWWSubdomain = [v7 safari_userVisibleHostWithoutWWWSubdomain];

        v2 = v7;
      }

      else
      {
        safari_userVisibleHostWithoutWWWSubdomain = [(TabDocument *)self _blankTabTitle];
      }

      v2 = safari_userVisibleHostWithoutWWWSubdomain;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)openInTabGroupMenuWithNewTabGroupName:(id)name URL:(id)l descendantCount:(int64_t)count handler:(id)handler
{
  nameCopy = name;
  lCopy = l;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__TabDocument_openInTabGroupMenuWithNewTabGroupName_URL_descendantCount_handler___block_invoke;
  v18[3] = &unk_2781D7260;
  v15 = handlerCopy;
  v18[4] = self;
  v19 = v15;
  v16 = [tabController openInTabGroupMenuWithNewTabGroupName:nameCopy URL:lCopy descendantCount:count handler:v18];

  return v16;
}

void __81__TabDocument_openInTabGroupMenuWithNewTabGroupName_URL_descendantCount_handler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 992));
  v2 = [WeakRetained tabController];
  [v2 removeSingleBlankTabFromActiveTabGroup];
}

- (void)setBrowserController:(id)controller afterTabGroupReuse:(BOOL)reuse
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v7 = WeakRetained;
  if (!reuse)
  {
    tabController = [WeakRetained tabController];
    [tabController willLoseOwnershipOfTab:self];
  }

  objc_storeWeak(&self->_browserController, obj);
  [(TabDocument *)self setDelegate:obj];
  loadProgressObserver = [obj loadProgressObserver];
  objc_storeWeak(&self->_loadProgressObserver, loadProgressObserver);

  tabController2 = [obj tabController];
  [tabController2 didGainOwnershipOfTab:self];

  tabGroupManager = [v7 tabGroupManager];
  [tabGroupManager removeTabGroupObserver:self];

  tabGroupManager2 = [obj tabGroupManager];
  [tabGroupManager2 addTabGroupObserver:self];

  uuid = [(WBTab *)self->_tabGroupTab uuid];
  [(TabDocument *)&self->super.isa _activeParticipantsDidUpdateInTabWithUUID:uuid];
}

- (void)_activeParticipantsDidUpdateInTabWithUUID:(id *)d
{
  v3 = a2;
  if (d)
  {
    uuid = [d[173] uuid];
    v5 = [v3 isEqualToString:uuid];

    if (v5)
    {
      objc_initWeak(&location, d);
      WeakRetained = objc_loadWeakRetained(d + 124);
      tabGroupManager = [WeakRetained tabGroupManager];
      v8 = d[173];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __57__TabDocument__activeParticipantsDidUpdateInTabWithUUID___block_invoke;
      v9[3] = &unk_2781DB3E8;
      objc_copyWeak(&v10, &location);
      [tabGroupManager getActiveParticipantsInTab:v8 completionHandler:v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)setParentTabDocumentForBackClosesSpawnedTab:(id)tab
{
  WeakRetained = tab;
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
      _backForwardList = [WeakRetained _backForwardList];
      currentItem = [_backForwardList currentItem];
      parentTabItem = self->_parentTabItem;
      self->_parentTabItem = currentItem;

      webView = [WeakRetained webView];
      [webView _saveBackForwardSnapshotForItem:self->_parentTabItem];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__TabDocument_setParentTabDocumentForBackClosesSpawnedTab___block_invoke;
      v15[3] = &unk_2781DA778;
      v15[4] = self;
      v11 = [webView _sessionStateWithFilter:v15];
      v12 = [(_SFWebView *)self->_webView _restoreSessionState:v11 andNavigate:0];
      [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator reflectCommittedURLIfPossible];

LABEL_8:
      objc_storeWeak(p_parentTabDocumentForBackClosesSpawnedTab, WeakRetained);
      goto LABEL_9;
    }

LABEL_7:
    _sessionStateWithoutParentItem = [(TabDocument *)&self->super.isa _sessionStateWithoutParentItem];
    [(TabDocument *)self restoreSessionState:_sessionStateWithoutParentItem andNavigate:0];

    v14 = self->_parentTabItem;
    self->_parentTabItem = 0;

    WeakRetained = 0;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setUpBackClosesSpawnedTabWithParent:(id)parent
{
  parentCopy = parent;
  _backForwardList = [parentCopy _backForwardList];
  currentItem = [_backForwardList currentItem];
  parentTabItem = self->_parentTabItem;
  self->_parentTabItem = currentItem;

  webView = [parentCopy webView];
  [webView _saveBackForwardSnapshotForItem:self->_parentTabItem];
  backForwardList = [(_SFWebView *)self->_webView backForwardList];
  currentItem2 = [backForwardList currentItem];

  v11 = [(_SFWebView *)self->_webView URL];
  if (v11)
  {
    backForwardList2 = [(_SFWebView *)self->_webView backForwardList];
    backItem = [backForwardList2 backItem];
  }

  else
  {
    backItem = 0;
  }

  webView = self->_webView;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __51__TabDocument_setUpBackClosesSpawnedTabWithParent___block_invoke;
  v22 = &unk_2781DA7A0;
  v15 = backItem;
  v23 = v15;
  v16 = currentItem2;
  v24 = v16;
  v17 = [(_SFWebView *)webView _sessionStateWithFilter:&v19];
  v18 = [(_SFWebView *)self->_webView _restoreSessionState:v17 andNavigate:0, v19, v20, v21, v22];
  objc_storeWeak(&self->_parentTabDocumentForBackClosesSpawnedTab, parentCopy);
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

- (TabDocument)initWithTitle:(id)title URL:(id)l UUID:(id)d privateBrowsingEnabled:(BOOL)enabled controlledByAutomation:(BOOL)automation hibernated:(BOOL)hibernated bookmark:(id)bookmark browserController:(id)self0 relatedWebView:(id)self1
{
  automationCopy = automation;
  enabledCopy = enabled;
  titleCopy = title;
  lCopy = l;
  dCopy = d;
  bookmarkCopy = bookmark;
  controllerCopy = controller;
  viewCopy = view;
  if (hibernated)
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
    v26 = &selfCopy;
    selfCopy = self;
    v25 = &v30;
    v30 = viewCopy;
  }

  v23 = [(TabDocument *)self _initWithTitle:titleCopy URL:lCopy UUID:dCopy privateBrowsingEnabled:enabledCopy controlledByAutomation:automationCopy bookmark:bookmarkCopy browserController:controllerCopy createDocumentView:v22];
  if (!hibernated)
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

- (TabDocument)initWithTabStateData:(id)data hibernated:(BOOL)hibernated browserController:(id)controller
{
  hibernatedCopy = hibernated;
  dataCopy = data;
  controllerCopy = controller;
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v11 = [mainBookmarkCollection bookmarkWithID:{objc_msgSend(dataCopy, "readingListBookmarkID")}];

  v12 = MEMORY[0x277CBEBC0];
  v13 = [dataCopy url];
  v14 = [v12 safari_URLWithDataAsString:v13];

  title = [dataCopy title];
  v16 = objc_alloc(MEMORY[0x277CCAD78]);
  uUIDString = [dataCopy UUIDString];
  v18 = [v16 initWithUUIDString:uUIDString];
  v19 = -[TabDocument initWithTitle:URL:UUID:privateBrowsingEnabled:hibernated:bookmark:browserController:](self, "initWithTitle:URL:UUID:privateBrowsingEnabled:hibernated:bookmark:browserController:", title, v14, v18, [dataCopy privateBrowsing], hibernatedCopy, v11, controllerCopy);

  if (v19)
  {
    if (hibernatedCopy)
    {
      [dataCopy lastViewedTime];
      [(TabDocument *)v19 setLastViewedTime:?];
    }

    -[TabDocument setShouldRestoreReader:](v19, "setShouldRestoreReader:", [dataCopy showingReader]);
    -[TabDocument setReaderViewTopScrollOffset:](v19, "setReaderViewTopScrollOffset:", [dataCopy readerViewTopScrollOffset]);
    -[TabDocument setWasOpenedFromLink:](v19, "setWasOpenedFromLink:", [dataCopy wasOpenedFromLink]);
    -[TabDocument setDisplayingStandaloneImage:](v19, "setDisplayingStandaloneImage:", [dataCopy displayingStandaloneImage]);
    v20 = [dataCopy url];
    -[TabDocument setIsBlank:](v19, "setIsBlank:", [v20 length] == 0);

    sessionStateData = [dataCopy sessionStateData];

    if (sessionStateData)
    {
      v22 = objc_alloc(MEMORY[0x277CE38A0]);
      sessionStateData2 = [dataCopy sessionStateData];
      v24 = [v22 initWithData:sessionStateData2];

      if (v24)
      {
        [(TabDocument *)v19 restoreSessionState:v24 andNavigate:1];
      }
    }

    else if (!hibernatedCopy)
    {
      v25 = [(TabDocument *)v19 loadURL:v14 userDriven:1];
    }

    v26 = v19;
  }

  return v19;
}

- (TabDocument)initWithTabGroupTab:(id)tab privateBrowsingEnabled:(BOOL)enabled hibernated:(BOOL)hibernated bookmark:(id)bookmark browserController:(id)controller
{
  hibernatedCopy = hibernated;
  enabledCopy = enabled;
  tabCopy = tab;
  bookmarkCopy = bookmark;
  controllerCopy = controller;
  v14 = [tabCopy url];
  if (v14)
  {
    title = [tabCopy title];
  }

  else
  {
    title = 0;
  }

  v16 = objc_alloc(MEMORY[0x277CCAD78]);
  uuid = [tabCopy uuid];
  v18 = [v16 initWithUUIDString:uuid];
  v19 = [(TabDocument *)self initWithTitle:title URL:v14 UUID:v18 privateBrowsingEnabled:enabledCopy hibernated:hibernatedCopy bookmark:bookmarkCopy browserController:controllerCopy];

  if (v19)
  {
    objc_storeStrong(&v19->_tabGroupTab, tab);
    [(TabDocument *)v19 setIsBlank:v14 == 0];
    localAttributes = [tabCopy localAttributes];
    ancestorTabUUIDs = [localAttributes ancestorTabUUIDs];
    v22 = [ancestorTabUUIDs safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_189_1];
    ancestorUUIDs = v19->_ancestorUUIDs;
    v19->_ancestorUUIDs = v22;

    -[TabDocument setDisplayingStandaloneImage:](v19, "setDisplayingStandaloneImage:", [localAttributes isDisplayingStandaloneImage]);
    -[TabDocument setWasOpenedFromLink:](v19, "setWasOpenedFromLink:", [localAttributes wasOpenedFromLink]);
    [localAttributes readerViewTopScrollOffset];
    [(TabDocument *)v19 setReaderViewTopScrollOffset:v24];
    -[TabDocument setShouldRestoreReader:](v19, "setShouldRestoreReader:", [localAttributes isShowingReader]);
    if (hibernatedCopy)
    {
      lastVisitTime = [localAttributes lastVisitTime];
      [lastVisitTime timeIntervalSinceReferenceDate];
      [(TabDocument *)v19 setLastViewedTime:?];
    }

    v26 = objc_alloc(MEMORY[0x277CCAD78]);
    webClipIDString = [localAttributes webClipIDString];
    v28 = [v26 initWithUUIDString:webClipIDString];

    if (v28)
    {
      v29 = [MEMORY[0x277D75D70] _sf_webClipWithUUID:v28];
      [(TabDocument *)v19 setWebClip:v29];
    }

    -[TabDocument setPinned:](v19, "setPinned:", [tabCopy isPinned]);
    pinnedURL = [tabCopy pinnedURL];
    v31 = [pinnedURL copy];
    pinnedURL = v19->_pinnedURL;
    v19->_pinnedURL = v31;

    pinnedTitle = [tabCopy pinnedTitle];
    v34 = [pinnedTitle copy];
    pinnedTitle = v19->_pinnedTitle;
    v19->_pinnedTitle = v34;

    if ([tabCopy isShared])
    {
      v36 = [tabCopy isMarkedAsRead] ^ 1;
    }

    else
    {
      v36 = 0;
    }

    [(TabDocument *)v19 setUnread:v36];
    v19->_shouldDonatePageLoad = 1;
    [(TabDocument *)v19 restoreStateFromTab:tabCopy];
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

- (void)setWebClip:(uint64_t)clip
{
  v8 = a2;
  if (clip)
  {
    uuid = [*(clip + 1360) uuid];
    uuid2 = [v8 uuid];
    v6 = WBSIsEqual();

    if ((v6 & 1) == 0)
    {
      objc_storeStrong((clip + 1360), a2);
      WeakRetained = objc_loadWeakRetained((clip + 1248));
      [WeakRetained tabDocumentDidChangeWebClip:clip];
    }
  }
}

- (TabDocument)initWithHibernatedTab:(id)tab
{
  tabCopy = tab;
  v5 = [(TabDocument *)self init];
  if (v5)
  {
    wbTab = [tabCopy wbTab];
    tabGroupTab = v5->_tabGroupTab;
    v5->_tabGroupTab = wbTab;

    v8 = [tabCopy url];
    isBlank = [tabCopy isBlank];
    if (isBlank)
    {
      title = 0;
    }

    else
    {
      title = [tabCopy title];
    }

    uuid = [tabCopy uuid];
    uuid = v5->_uuid;
    v5->_uuid = uuid;

    browserController = [tabCopy browserController];
    [(TabDocument *)v5 setBrowserController:browserController afterTabGroupReuse:0];
    v14 = objc_alloc(MEMORY[0x277CDB768]);
    isPrivateBrowsingEnabled = [tabCopy isPrivateBrowsingEnabled];
    rootViewController = [browserController rootViewController];
    v17 = [v14 initWithPrivateBrowsingEnabled:isPrivateBrowsingEnabled traitEnvironment:rootViewController controlledByAutomation:{objc_msgSend(browserController, "isControlledByAutomation")}];
    configuration = v5->_configuration;
    v5->_configuration = v17;

    v5->_hibernated = 1;
    v19 = objc_alloc_init(LoadingController);
    loadingController = v5->_loadingController;
    v5->_loadingController = v19;

    [(LoadingController *)v5->_loadingController setDelegate:v5];
    [(LoadingController *)v5->_loadingController setTitle:title];
    [(LoadingController *)v5->_loadingController setURL:v8];
    [(TabDocument *)v5 _setUp];
    unifiedTabBarItem = [tabCopy unifiedTabBarItem];
    unifiedTabBarItem = v5->_unifiedTabBarItem;
    v5->_unifiedTabBarItem = unifiedTabBarItem;

    tabBarItem = [tabCopy tabBarItem];
    tabBarItem = v5->_tabBarItem;
    v5->_tabBarItem = tabBarItem;

    tabCollectionItem = [tabCopy tabCollectionItem];
    tabCollectionItem = v5->_tabCollectionItem;
    v5->_tabCollectionItem = tabCollectionItem;

    cachedNavigationBarItem = [tabCopy cachedNavigationBarItem];

    if (cachedNavigationBarItem)
    {
      cachedNavigationBarItem2 = [tabCopy cachedNavigationBarItem];
      navigationBarItem = v5->_navigationBarItem;
      v5->_navigationBarItem = cachedNavigationBarItem2;

      [(TabDocument *)v5 _setUpNavigationBarItem];
    }

    [tabCopy idForWebExtensions];
    v5->_idForWebExtensions = v30;
    [(TabDocument *)v5 setChangedPropertiesForOnUpdatedWebExtensionEvent:0];
    [(TabDocument *)v5 setIsBlank:isBlank];
    ancestorUUIDs = [tabCopy ancestorUUIDs];
    ancestorUUIDs = v5->_ancestorUUIDs;
    v5->_ancestorUUIDs = ancestorUUIDs;

    localAttributes = [(WBTab *)v5->_tabGroupTab localAttributes];
    v5->_displayingStandaloneImage = [localAttributes isDisplayingStandaloneImage];
    v5->_wasOpenedFromLink = [localAttributes wasOpenedFromLink];
    [localAttributes readerViewTopScrollOffset];
    v5->_readerViewTopScrollOffset = v34;
    v5->_shouldRestoreReader = [localAttributes isShowingReader];
    lastVisitTime = [localAttributes lastVisitTime];
    [lastVisitTime timeIntervalSinceReferenceDate];
    v5->_lastViewedTime = v36;

    v37 = objc_alloc(MEMORY[0x277CCAD78]);
    webClipIDString = [localAttributes webClipIDString];
    v39 = [v37 initWithUUIDString:webClipIDString];

    if (v39)
    {
      v40 = [MEMORY[0x277D75D70] _sf_webClipWithUUID:v39];
      [(TabDocument *)v5 setWebClip:v40];
    }

    -[TabDocument setPinned:](v5, "setPinned:", [tabCopy isPinned]);
    pinnedURL = [tabCopy pinnedURL];
    v42 = [pinnedURL copy];
    pinnedURL = v5->_pinnedURL;
    v5->_pinnedURL = v42;

    pinnedTitle = [tabCopy pinnedTitle];
    v45 = [pinnedTitle copy];
    pinnedTitle = v5->_pinnedTitle;
    v5->_pinnedTitle = v45;

    shareParticipants = [tabCopy shareParticipants];
    shareParticipants = v5->_shareParticipants;
    v5->_shareParticipants = shareParticipants;

    v5->_unread = [tabCopy isUnread];
    v5->_shouldDonatePageLoad = 1;
    [(TabDocument *)v5 restoreStateFromTab:v5->_tabGroupTab];
    v49 = v5;
  }

  return v5;
}

- (void)setUnifiedTabBarItem:(uint64_t)item
{
  v4 = a2;
  if (item)
  {
    v5 = *(item + 1104);
    if (v5 != v4)
    {
      v11 = v4;
      title = [v5 title];
      [v11 setTitle:title];
      v7 = (item + 1104);

      icon = [*(item + 1104) icon];
      [v11 setIcon:icon];

      [v11 setUUID:*(item + 1376)];
      [v11 setNavigationBarItem:*(item + 280)];
      [v11 setPinned:*(item + 951)];
      navigationBarItem = [*(item + 1104) navigationBarItem];
      v10 = *(item + 280);

      if (navigationBarItem == v10)
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

- (void)updateThemeColorAndUnderPageBackground:(BOOL)background
{
  backgroundCopy = background;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  activeWebView = [(TabDocument *)self activeWebView];
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  if ([safari_browserDefaults BOOLForKey:*MEMORY[0x277D29000]])
  {

    goto LABEL_4;
  }

  tabBarManager = [WeakRetained tabBarManager];
  displayMode = [tabBarManager displayMode];

  if (displayMode == 2)
  {
LABEL_4:
    rootViewController = [WeakRetained rootViewController];
    isInYttriumState = [rootViewController isInYttriumState];

    if ((isInYttriumState & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (![(TabDocument *)self isShowingSystemStartPage]&& ![(TabDocument *)self isPDFDocument]&& ([(_SFBrowserConfiguration *)self->_configuration isControlledByAutomation]& 1) == 0 && ![(TabDocument *)self inElementFullscreen])
  {
    rootViewController2 = [WeakRetained rootViewController];
    if ([rootViewController2 usingLoweredBar])
    {
      v14 = 0;
    }

    else
    {
      traitEnvironment = [(_SFBrowserConfiguration *)self->_configuration traitEnvironment];
      traitCollection = [traitEnvironment traitCollection];
      v14 = [traitCollection userInterfaceStyle] == 2;
    }

    v11 = [MEMORY[0x277D4A868] updateThemeColorForWebView:activeWebView darkModeEnabled:v14 allowFallbackColors:1 updateUnderPageBackgroundColor:backgroundCopy];
    goto LABEL_10;
  }

LABEL_9:
  [activeWebView setUnderPageBackgroundColor:0];
  v11 = 0;
LABEL_10:
  themeColor = self->_themeColor;
  self->_themeColor = v11;
}

- (void)setIsBlank:(BOOL)blank
{
  if (self->_isBlank != blank)
  {
    self->_isBlank = blank;
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
      tabController = [WeakRetained tabController];
      [tabController updateLocalTabGroupTitle];
    }
  }
}

- (void)_clearLibraryType
{
  if (self)
  {
    v2 = *(self + 1320);
    if (v2)
    {
      *(self + 1320) = 0;
      v3 = v2;

      WeakRetained = objc_loadWeakRetained((self + 1248));
      [WeakRetained tabDocument:self didClearLibraryType:v3];
    }
  }
}

- (void)unfreezeAfterNavigationGesture:(BOOL)gesture
{
  if (!gesture)
  {
    [(TabDocument *)self setSuppressingProgressAnimationForNavigationGesture:0];
  }
}

- (void)setNeedsNewTabSnapshot
{
  if (!self->_closed && !self->_hibernated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    tabCollectionViewProvider = [WeakRetained tabCollectionViewProvider];
    [tabCollectionViewProvider invalidateSnapshotForTab:self];
  }
}

- (void)_updateSnapshotIfNeeded
{
  if (self && (*(self + 954) & 1) == 0 && (*(self + 975) & 1) == 0 && (*(self + 990) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((self + 992));
    tabCollectionViewProvider = [WeakRetained tabCollectionViewProvider];
    [tabCollectionViewProvider updateSnapshotsForTabHoverPreviewIfNeeded];
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

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(TabBarItem *)self->_tabBarItem setActive:?];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [(TabDocument *)self setLastViewedTime:?];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    tabController = [WeakRetained tabController];
    [tabController saveTabDocumentUserActivitySoon:self];

    if (self->_active)
    {
      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:7];

      if (self->_closed)
      {
        v7 = WBS_LOG_CHANNEL_PREFIXPageLoading();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          [TabDocument setActive:];
        }
      }

      navigationBarItem = [(TabDocument *)self navigationBarItem];
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
  if (self && *(self + 824) == 1)
  {
    v2 = *(self + 832);
    v3 = *(self + 832);
    *(self + 832) = 0;

    v4 = *(self + 840);
    *(self + 840) = 0;

    *(self + 824) = 0;
    v5 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134218499;
      selfCopy = self;
      v9 = 2160;
      v10 = 1752392040;
      v11 = 2117;
      v12 = v2;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Apply deferred navigation: (document: %p) %{sensitive, mask.hash}@", &v7, 0x20u);
    }

    v6 = [(TabDocument *)self loadURL:v2 userDriven:0 skipSyncableTabUpdates:*(self + 709)];
  }
}

- (void)_notifyImpressionAnalyticsRecorderIfNeededTabDocumentDidBecomeActive:(uint64_t)active
{
  if (active)
  {
    v3 = *(active + 784);
    if (v3)
    {
      *(active + 784) = v3 & 0xFE;
LABEL_12:
      *(active + 776) = 0;
      return;
    }

    if ((*(active + 784) & 2) != 0 && (a2 & 1) == 0)
    {
      *(active + 784) = v3 & 0xFC;
      WeakRetained = objc_loadWeakRetained((active + 992));
      tabController = [WeakRetained tabController];
      activeTabDocument = [tabController activeTabDocument];
      *(active + 784) = *(active + 784) & 0xFB | (4 * (activeTabDocument != active));

      if ((*(active + 784) & 4) != 0)
      {
        return;
      }

      goto LABEL_11;
    }

    if ((*(active + 784) & 4) != 0 && (a2 & 1) == 0)
    {
      *(active + 784) = v3 & 0xFA;
LABEL_11:
      mEMORY[0x277D4A808] = [MEMORY[0x277D4A808] sharedRecorder];
      v8 = [*(active + 1064) URL];
      [mEMORY[0x277D4A808] didActualizeImpressionForURL:v8 provenance:*(active + 776)];

      goto LABEL_12;
    }
  }
}

- (void)stopAdvertisingProactiveActivityContent
{
  [(TabDocument *)self setSearchableItemAttributes:0];

  [(TabDocument *)self updateUserActivity];
}

- (void)_closeTabDocumentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained closeTabDocument:self animated:animatedCopy];

  mEMORY[0x277D4A060] = [MEMORY[0x277D4A060] sharedInstance];
  [mEMORY[0x277D4A060] setTabNeedsSpotlightDeletion:self];
}

- (void)didReplaceTabDocument:(id)document
{
  documentCopy = document;
  unifiedTabBarItem = [documentCopy unifiedTabBarItem];
  [(TabDocument *)self setUnifiedTabBarItem:unifiedTabBarItem];

  [(TabDocument *)documentCopy setUnifiedTabBarItem:?];
  [(TabDocument *)self _updateBarItemsWithCurrentMediaState];
  [(TabDocument *)self setPinned:*(documentCopy + 951)];
  objc_storeStrong(&self->_pinnedTitle, documentCopy[143]);
  objc_storeStrong(&self->_pinnedURL, documentCopy[144]);
  self->_suppressWebExtensionEvents = 0;
  [documentCopy idForWebExtensions];
  self->_idForWebExtensions = v5;
  previousURLForWebExtensionOnUpdatedEvent = [documentCopy previousURLForWebExtensionOnUpdatedEvent];
  previousURLForWebExtensionOnUpdatedEvent = self->_previousURLForWebExtensionOnUpdatedEvent;
  self->_previousURLForWebExtensionOnUpdatedEvent = previousURLForWebExtensionOnUpdatedEvent;

  previousTitleForWebExtensionOnUpdatedEvent = [documentCopy previousTitleForWebExtensionOnUpdatedEvent];
  v9 = [previousTitleForWebExtensionOnUpdatedEvent copy];
  previousTitleForWebExtensionOnUpdatedEvent = self->_previousTitleForWebExtensionOnUpdatedEvent;
  self->_previousTitleForWebExtensionOnUpdatedEvent = v9;

  self->_previousLoadingCompleteStateForWebExtensionOnUpdatedEvent = [documentCopy previousLoadingCompleteStateForWebExtensionOnUpdatedEvent];
  [(TabDocument *)self _loadingStateForWebExtensionsMayHaveChanged];
  speculativeLoadNavigationResponse = self->_speculativeLoadNavigationResponse;
  if (speculativeLoadNavigationResponse)
  {
    [(TabDocument *)&self->super.isa _donateCurrentNavigationWithNavigationResponse:?];
    v12 = self->_speculativeLoadNavigationResponse;
    self->_speculativeLoadNavigationResponse = 0;
  }
}

- (void)_donateCurrentNavigationWithNavigationResponse:(id *)response
{
  v3 = a2;
  if (response)
  {
    if (([response isPrivateBrowsingEnabled] & 1) == 0)
    {
      v4 = [v3 URL];
      v5 = [response URL];
      v6 = [v4 isEqual:v5];

      if (v6)
      {
        loadedUsingDesktopUserAgent = [response[11] loadedUsingDesktopUserAgent];
        _wasPrivateRelayed = [response[133] _wasPrivateRelayed];
        statusCode = [v3 statusCode];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__TabDocument__donateCurrentNavigationWithNavigationResponse___block_invoke;
        block[3] = &unk_2781DB488;
        block[4] = response;
        v11 = v3;
        v12 = loadedUsingDesktopUserAgent ^ 1u;
        v14 = _wasPrivateRelayed;
        v13 = statusCode;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }
}

- (void)setShowingReader:(BOOL)reader
{
  if (self->_showingReader != reader)
  {
    readerCopy = reader;
    self->_showingReader = reader;
    [(SFNavigationBarItem *)self->_navigationBarItem setReaderButtonSelected:?];
    [(SFDialogController *)self->_dialogController owningTabWillClose];
    [(_SFReaderController *)self->_readerContext setReaderIsActive:readerCopy];
    if (readerCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      processPool = [WeakRetained processPool];
      SafariShared::ReaderAvailabilityController::updateReaderOrTranslationLastActivated(processPool, v6);
    }
  }
}

- (void)addAppHighlightCreatingLink:(BOOL)link
{
  linkCopy = link;
  v5 = +[Application sharedApplication];
  systemNoteTakingController = [v5 systemNoteTakingController];

  webView = [(TabDocument *)self webView];
  _selectionAttributes = [webView _selectionAttributes];

  if ((_selectionAttributes & 2) != 0)
  {
    webView2 = [(TabDocument *)self webView];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_6;
    }

    webView3 = [(TabDocument *)self webView];
    [webView3 _addAppHighlightInNewGroup:objc_msgSend(systemNoteTakingController originatedInApp:{"isNotesPIPVisible") ^ 1, !linkCopy}];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CC1EF0]);
    webView3 = [v8 initWithActivityType:*MEMORY[0x277CCA850]];
    urlForSharing = [(TabDocument *)self urlForSharing];
    [webView3 setWebpageURL:urlForSharing];

    title = [(TabDocument *)self title];
    [webView3 setTitle:title];

    LODWORD(title) = [systemNoteTakingController isNotesPIPVisible];
    webView4 = [(TabDocument *)self webView];
    [systemNoteTakingController saveHighlightsData:0 selectedText:0 selectedImage:0 newGroup:title ^ 1 originatedInApp:!linkCopy webView:webView4 userActivity:webView3];
  }

LABEL_6:
}

- (void)applyHighlightFromNotesIfNeeded
{
  if (self->_userActivityFromNotes)
  {
    v3 = +[Application sharedApplication];
    systemNoteTakingController = [v3 systemNoteTakingController];

    if ([systemNoteTakingController isNoteTakingSupportedWithPrivateBrowsing:{-[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}])
    {
      userActivityFromNotes = self->_userActivityFromNotes;
      webView = [(TabDocument *)self webView];
      [systemNoteTakingController applyHighlightInUserActivity:userActivityFromNotes webView:webView];
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
  systemNoteTakingController = [v3 systemNoteTakingController];

  if ([systemNoteTakingController isNotesPIPVisible])
  {
    v5 = self->_userActivityFromNotes;
    if (!v5)
    {
      v6 = objc_alloc(MEMORY[0x277CC1EF0]);
      v7 = [v6 initWithActivityType:*MEMORY[0x277CCA850]];
      urlForSharing = [(TabDocument *)self urlForSharing];
      if ([urlForSharing safari_isHTTPFamilyURL])
      {
        [(NSUserActivity *)v7 setWebpageURL:urlForSharing];
      }

      title = [(TabDocument *)self title];
      [(NSUserActivity *)v7 setTitle:title];

      v5 = v7;
    }

    backForwardList = [(_SFWebView *)self->_webView backForwardList];
    currentItem = [backForwardList currentItem];
    backForwardListItemForCurrentNoteTakingCheck = self->_backForwardListItemForCurrentNoteTakingCheck;
    self->_backForwardListItemForCurrentNoteTakingCheck = currentItem;

    objc_initWeak(&location, self);
    isPrivateBrowsingEnabled = [(TabDocument *)self isPrivateBrowsingEnabled];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __39__TabDocument_restoreAllHighlightsData__block_invoke;
    v14[3] = &unk_2781DA7F0;
    objc_copyWeak(&v15, &location);
    [systemNoteTakingController fetchHighlightsForUserActivity:v5 privateBrowsing:isPrivateBrowsingEnabled completion:v14];
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

- (void)_loadingControllerWillLoadRequest:(uint64_t)request webView:(int)view userDriven:
{
  v12 = a2;
  if (self)
  {
    *(self + 712) = 0;
    *(self + 1240) = 0;
    [*(self + 288) owningWebViewWillNavigate];
    WeakRetained = objc_loadWeakRetained((self + 992));
    userActivityController = [WeakRetained userActivityController];
    tabDocumentPendingUserActivityPayload = [userActivityController tabDocumentPendingUserActivityPayload];

    if (tabDocumentPendingUserActivityPayload == self)
    {
      [userActivityController setTabDocumentPendingUserActivityPayload:0];
    }

    v9 = *(self + 1288);
    if (v9)
    {
      [v9 startedPageLoad];
    }

    v10 = [v12 URL];
    _webkit_scriptIfJavaScriptURL = [v10 _webkit_scriptIfJavaScriptURL];

    if (!_webkit_scriptIfJavaScriptURL)
    {
      *(self + 711) = 0;
      *(self + 707) = view;
      *(self + 708) = 0;
      *(self + 718) = view;
      [(TabDocument *)self _clearLibraryType];
    }

    if (*(self + 1368) && view)
    {
      [self clearTabReuseURL];
    }

    if (*(self + 990) == 1 && view)
    {
      [WeakRetained setWantsUnifiedFieldFocused:0];
    }
  }
}

- (void)_loadingControllerDidStartLoading
{
  v12 = *MEMORY[0x277D85DE8];
  if (self)
  {
    *(self + 711) = 0;
    [*(self + 1304) clearFailedRequest];
    [self updateTabTitle];
    [(TabDocument *)self _updateNavigationBarItem];
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(self + 264);
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
            [v6 tabDocumentDidStartLoading:{self, v7}];
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

- (void)_loadingControllerEstimatedProgressChangedTo:(uint64_t)to
{
  if (to)
  {
    WeakRetained = objc_loadWeakRetained((to + 1256));
    [WeakRetained updateProgressWithResource:to];

    [*(to + 176) updateFluidProgressWithProgressStateSource:to];
    v4 = 0;
    v5 = *(to + 977);
    if (a2 > 0.0 && a2 < 1.0)
    {
      v4 = *(to + 1000) != 0;
    }

    *(to + 977) = v4;
    [*(to + 280) setStopReloadButtonShowsStop:?];
    if (v5 != *(to + 977))
    {
      v7 = objc_loadWeakRetained((to + 1248));
      [v7 tabDocumentDidChangeCanStopLoadingState:to];
    }
  }
}

- (void)_didDecideNavigationPolicy:(void *)policy forNavigationAction:
{
  policyCopy = policy;
  if (self)
  {
    v21 = policyCopy;
    targetFrame = [policyCopy targetFrame];
    v7 = targetFrame;
    if (targetFrame)
    {
      sourceFrame = targetFrame;
    }

    else
    {
      sourceFrame = [v21 sourceFrame];
    }

    v9 = sourceFrame;

    if ([v9 isMainFrame])
    {
      v10 = *(self + 1056);
      backForwardList = [*(self + 1064) backForwardList];
      currentItem = [backForwardList currentItem];
      [v10 owningWebViewDidDecidePolicy:a2 forNavigationAction:v21 currentBackForwardListItem:currentItem];

      if (![v21 navigationType])
      {
        [self setNextLoadComesFromSearchPage:{objc_msgSend(self, "isSearchPage")}];
      }

      [(TabDocument *)self _updatePageLoadDonorWithNavigationPolicy:a2 inMainFrameForNavigationAction:v21];
      *(self + 784) &= ~4u;
      v13 = [(TabDocument *)self _analyticsRecorderShouldIgnoreURLWithNavigationPolicy:a2 forNavigationAction:v21];
      v14 = *(self + 784) & 0xFC;
      if (v13)
      {
        *(self + 784) = v14 | 1;
        *(self + 776) = 0;
      }

      else
      {
        *(self + 784) = v14 | 2;
        *(self + 786) = 0;
        if (![v21 navigationType])
        {
          if (*(self + 872))
          {
            date = [MEMORY[0x277CBEAA8] date];
            [date timeIntervalSinceDate:*(self + 872)];
            v17 = v16;

            v18 = v17 < 10.0;
          }

          else
          {
            v18 = 0;
          }

          mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
          [self pageZoomFactor];
          *&v20 = v20;
          [mEMORY[0x277D499B8] didActivateLinkWithZoomScale:v18 recentlyZoomedIn:v20];
        }
      }
    }

    policyCopy = v21;
  }
}

- (void)_updatePageLoadDonorWithNavigationPolicy:(void *)policy inMainFrameForNavigationAction:
{
  policyCopy = policy;
  if (self)
  {
    if (!a2 || ([self committedURL], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(policyCopy, "request"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "URL"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "isEqual:", v7), v7, v6, v5, (v8 & 1) != 0) || (v9 = objc_msgSend(policyCopy, "navigationType"), v9 - 2 < 3))
    {
      v10 = 0;
      goto LABEL_8;
    }

    if (v9 < 2)
    {
LABEL_6:
      v10 = 1;
LABEL_8:
      *(self + 904) = v10;
      goto LABEL_9;
    }

    if (v9 == -1)
    {
      if (([policyCopy _isUserInitiated] & 1) == 0 && (*(self + 905) & 1) == 0)
      {
        v10 = [*(self + 48) navigationSource] == 0;
        goto LABEL_8;
      }

      goto LABEL_6;
    }
  }

LABEL_9:
}

- (uint64_t)_analyticsRecorderShouldIgnoreURLWithNavigationPolicy:(void *)policy forNavigationAction:
{
  policyCopy = policy;
  v6 = policyCopy;
  if (self)
  {
    if (a2 && ([policyCopy navigationType] & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      committedURL = [self committedURL];
      request = [v6 request];
      v10 = [request URL];
      v7 = [committedURL isEqual:v10];
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
  webView = [(TabDocument *)self webView];
  _handle = [webView _handle];
  _webPageID = [_handle _webPageID];

  return _webPageID;
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
    expectedOrCurrentURL = [(TabDocument *)self expectedOrCurrentURL];
    safari_originalDataAsString = [expectedOrCurrentURL safari_originalDataAsString];
    [(WBSFluidProgressState *)v5 setLoadURL:safari_originalDataAsString];
  }

  return 1;
}

- (void)clearFluidProgressState
{
  fluidProgressState = self->_fluidProgressState;
  self->_fluidProgressState = 0;
}

- (void)setSuppressingProgressAnimationForNavigationGesture:(BOOL)gesture
{
  if (self->_suppressingProgressAnimationForNavigationGesture != gesture)
  {
    self->_suppressingProgressAnimationForNavigationGesture = gesture;
    if (gesture)
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

- (void)endSuppressingProgressAnimationAnimated:(BOOL)animated
{
  progressAnimationSuppressedCount = self->_progressAnimationSuppressedCount;
  if (progressAnimationSuppressedCount)
  {
    v4 = progressAnimationSuppressedCount - 1;
    self->_progressAnimationSuppressedCount = v4;
    if (!v4)
    {
      [(WBSFluidProgressController *)self->_fluidProgressController setProgressAnimationSuppressed:0 forProgressStateSource:self animated:animated];
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

- (id)customUserVisibleStringForReadingListBookmarkURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL] && -[TabDocument readingListBookmarkID](self, "readingListBookmarkID"))
  {
    mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v6 = [mainBookmarkCollection bookmarkWithID:{-[TabDocument readingListBookmarkID](self, "readingListBookmarkID")}];
    address = [v6 address];
  }

  else
  {
    address = 0;
  }

  return address;
}

- (void)fetchCanonicalURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  isShowingStartPageOverriddenByExtension = [(TabDocument *)self isShowingStartPageOverriddenByExtension];
  if ([(TabDocument *)self isBlank]|| isShowingStartPageOverriddenByExtension)
  {
    cachedCanonicalURL = self->_cachedCanonicalURL;
    self->_cachedCanonicalURL = 0;

    cachedCanonicalURLOrURLForSharing = [(TabDocument *)self cachedCanonicalURLOrURLForSharing];
    handlerCopy[2](handlerCopy, cachedCanonicalURLOrURLForSharing);
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
    v10 = handlerCopy;
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
    urlForSharing = cachedCanonicalURL;
  }

  else
  {
    urlForSharing = [(TabDocument *)self urlForSharing];
  }

  return urlForSharing;
}

- (id)URLForStatePersisting
{
  deferredNavigationURL = self->_deferredNavigationURL;
  if (deferredNavigationURL)
  {
    uRLForStatePersisting = deferredNavigationURL;
  }

  else
  {
    uRLForStatePersisting = [(LoadingController *)self->_loadingController URLForStatePersisting];
  }

  return uRLForStatePersisting;
}

- (void)clearTabReuseURL
{
  tabReuseURL = self->_tabReuseURL;
  self->_tabReuseURL = 0;
}

- (void)clearBrowserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  [tabController willLoseOwnershipOfTab:self];

  objc_storeWeak(&self->_browserController, 0);
}

- (void)setUuid:(id)uuid
{
  uuidCopy = uuid;
  mEMORY[0x277D4A060] = [MEMORY[0x277D4A060] sharedInstance];
  [mEMORY[0x277D4A060] setTabNeedsSpotlightDeletion:self];

  v5 = self->_uuid;
  v6 = [uuidCopy copy];
  uuid = self->_uuid;
  self->_uuid = v6;

  [(TabBarItem *)self->_tabBarItem setUUID:self->_uuid];
  [(UnifiedTabBarItem *)self->_unifiedTabBarItem setUUID:self->_uuid];
  [(TabDocumentCollectionItem *)self->_tabCollectionItem setUUID:self->_uuid];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  [tabController tabDocumentDidUpdateUUID:self previousUUID:v5];

  uuid = [(WBTab *)self->_tabGroupTab uuid];
  [(TabDocument *)&self->super.isa _activeParticipantsDidUpdateInTabWithUUID:uuid];

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

- (void)setQuickLookDocumentForCurrentBackForwardListItem:(uint64_t)item
{
  v5 = a2;
  if (item)
  {
    backForwardList = [*(item + 1064) backForwardList];
    currentItem = [backForwardList currentItem];
    [currentItem _sf_setQuickLookDocument:v5];
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

- (id)loadRequest:(id)request userDriven:(BOOL)driven
{
  v4 = [TabDocument _loadRequest:request userDriven:driven shouldOpenExternalURLs:?];

  return v4;
}

- (id)_loadRequest:(uint64_t)request userDriven:(void *)driven shouldOpenExternalURLs:(uint64_t)ls
{
  drivenCopy = driven;
  if (request)
  {
    v6 = [(TabDocument *)request _loadRequest:drivenCopy userDriven:ls shouldOpenExternalURLs:0 eventAttribution:0 skipSyncableTabUpdates:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_loadRequest:(uint64_t)request userDriven:(uint64_t)driven shouldOpenExternalURLs:(void *)ls eventAttribution:(char)attribution skipSyncableTabUpdates:
{
  v11 = a2;
  lsCopy = ls;
  if (self)
  {
    *(self + 709) = attribution;
    v13 = [v11 safari_requestBySettingIsUserInitiated:1];

    v14 = [(TabDocument *)self _requestBySettingAdvancedPrivacyProtectionsFlag:v13];

    v15 = [v14 URL];
    v16 = [v15 isEqual:*(self + 920)];

    if ((v16 & 1) == 0)
    {
      v17 = *(self + 920);
      *(self + 920) = 0;
    }

    webExtensionsController = [self webExtensionsController];
    v19 = [v14 URL];
    v20 = [webExtensionsController canonicalURLForWebExtensionURL:v19];

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
    [(TabDocument *)self _createNewDocumentViewIfNecessaryForURL:v22];

    v23 = *(self + 128);
    *(self + 128) = 0;

    *(self + 136) = 1;
    if (request)
    {
      presentedDialog = [*(self + 288) presentedDialog];
      completionHandlerBlocksWebProcess = [presentedDialog completionHandlerBlocksWebProcess];
    }

    else
    {
      completionHandlerBlocksWebProcess = 0;
    }

    webExtensionsController2 = [self webExtensionsController];
    v27 = [v11 URL];
    v28 = [webExtensionsController2 webExtensionForURL:v27];

    if (!v28 || ([v28 extensionsController], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "extension"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v29, "extensionIsEnabled:", v30), v30, v29, (v31 & 1) != 0))
    {
      v32 = *(self + 1064);
      if (!v32 || !(completionHandlerBlocksWebProcess & 1 | (([v32 _webProcessIsResponsive] & 1) == 0)))
      {
        self = [*(self + 168) loadRequest:v11 userDriven:request shouldOpenExternalURLs:driven eventAttribution:lsCopy];
        goto LABEL_17;
      }

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __102__TabDocument__loadRequest_userDriven_shouldOpenExternalURLs_eventAttribution_skipSyncableTabUpdates___block_invoke;
      v34[3] = &unk_2781DA840;
      v34[4] = self;
      v35 = v11;
      requestCopy = request;
      drivenCopy = driven;
      v36 = lsCopy;
      [(TabDocument *)self _terminateWebProcessIfNeededAndShowCrashBanner:v34 thenDo:?];
    }

    self = 0;
LABEL_17:
  }

  return self;
}

- (id)_requestBySettingAdvancedPrivacyProtectionsFlag:(void *)flag
{
  v3 = a2;
  v4 = v3;
  if (flag)
  {
    v5 = [v3 URL];
    v6 = [flag supportsAdvancedPrivacyProtectionsForURL:v5];

    v7 = [v4 safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:v6];

    v4 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_createNewDocumentViewIfNecessaryForURL:(uint64_t)l
{
  v3 = a2;
  if (l && ([(TabDocument *)l _isNewDocumentViewNecessaryForURL:v3]& 1) != 0)
  {
    webExtensionsController = [l webExtensionsController];
    v5 = [webExtensionsController webExtensionForURL:v3];

    if (v5)
    {
      [v5 extensionWebViewConfiguration];
    }

    else
    {
      [l createWebViewConfiguration];
    }
    v7 = ;

    webView = [l webView];
    _sessionState = [webView _sessionState];

    [TabDocument _destroyDocumentViewAllowingDeferral:l];
    [(TabDocument *)l _createDocumentViewWithConfiguration:v7];
    if (*(l + 928) == 1)
    {
      v10 = _sessionState;
      webView2 = *(l + 936);
      *(l + 936) = v10;
    }

    else
    {
      webView2 = [l webView];
      v12 = [webView2 _restoreSessionState:_sessionState andNavigate:0];
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_terminateWebProcessIfNeededAndShowCrashBanner:(void *)banner thenDo:
{
  bannerCopy = banner;
  if (self)
  {
    if (*(self + 440))
    {
      v6 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [TabDocument _terminateWebProcessIfNeededAndShowCrashBanner:thenDo:];
      }
    }

    presentedDialog = [*(self + 288) presentedDialog];
    completionHandlerBlocksWebProcess = [presentedDialog completionHandlerBlocksWebProcess];

    if (completionHandlerBlocksWebProcess)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [TabDocument _terminateWebProcessIfNeededAndShowCrashBanner:thenDo:];
      }

      v10 = _Block_copy(bannerCopy);
      v11 = *(self + 440);
      *(self + 440) = v10;

      *(self + 737) = a2 ^ 1;
      [(TabDocument *)self _terminateWebProcessThenDoUnresponsiveWebProcessBlock];
    }

    else
    {
      v12 = *(self + 1064);
      if (v12 && ![v12 _webProcessIsResponsive])
      {
        v13 = _Block_copy(bannerCopy);
        v14 = *(self + 440);
        *(self + 440) = v13;

        *(self + 737) = a2 ^ 1;
        [*(self + 432) invalidate];
        v15 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__unresponsiveWebProcessTimerFired_ selector:0 userInfo:0 repeats:0.3];
        v16 = *(self + 432);
        *(self + 432) = v15;
      }

      else
      {
        bannerCopy[2](bannerCopy);
      }
    }
  }
}

- (void)_updateSnapshotForWebClip:(void *)clip
{
  v3 = a2;
  v4 = v3;
  if (clip)
  {
    if ([v3 iconIsScreenShotBased])
    {
      iconImage = [v4 iconImage];
      [iconImage scale];
      v7 = v6;

      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v10 = v9;

      if (v7 != v10 || ([v4 iconIsPrerendered] & 1) == 0)
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __41__TabDocument__updateSnapshotForWebClip___block_invoke;
        v11[3] = &unk_2781DA868;
        v12 = v4;
        [clip snapshotForWebClipIcon:v11];
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

- (void)snapshotForWebClipIcon:(id)icon
{
  iconCopy = icon;
  [MEMORY[0x277CC1E60] _applicationIconCanvasSize];
  v5 = v4;
  v7 = v6;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v10 = v9;

  [(TabDocument *)self snapshotWithSize:0 options:iconCopy completion:v5 / v10, v7 / v10];
}

- (void)snapshotWithSize:(CGSize)size options:(unint64_t)options completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__TabDocument_snapshotWithSize_options_completion___block_invoke;
  v12[3] = &unk_2781DA890;
  v13 = completionCopy;
  v11 = completionCopy;
  [WeakRetained snapshotTabDocument:self size:options | 0x80 options:v12 completion:{width, height}];
}

void __51__TabDocument_snapshotWithSize_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 image];
  (*(v2 + 16))(v2);
}

- (void)dispatchNavigationIntent:(id)intent
{
  intentCopy = intent;
  uuid = [(TabDocument *)self uuid];
  [intentCopy setSourceTabUUID:uuid];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  uUID = [WeakRetained UUID];
  [intentCopy setSourceWindowUUID:uUID];

  v7 = +[Application sharedApplication];
  [v7 handleNavigationIntent:intentCopy completion:0];
}

- (void)handleNavigationIntent:(id)intent completion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__TabDocument_handleNavigationIntent_completion___block_invoke;
  v14[3] = &unk_2781DA8B8;
  objc_copyWeak(&v17, &location);
  v15 = intentCopy;
  v16 = completionCopy;
  v8 = completionCopy;
  v9 = intentCopy;
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

- (void)_handleNavigationIntent:(void *)intent completion:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  intentCopy = intent;
  if (!self)
  {
    goto LABEL_41;
  }

  WeakRetained = objc_loadWeakRetained((self + 992));
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];

  if (activeTabDocument == self)
  {
    [self setActive:1];
  }

  else
  {
    [self unhibernate];
  }

  v10 = WBS_LOG_CHANNEL_PREFIXPageLoading();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    privacyPreservingDescription = [v5 privacyPreservingDescription];
    v12 = *(self + 1064);
    v25 = 134218498;
    selfCopy = self;
    v27 = 2114;
    v28 = privacyPreservingDescription;
    v29 = 2048;
    v30 = v12;
    _os_log_impl(&dword_215819000, v10, OS_LOG_TYPE_DEFAULT, "TabDocument %p: loading intent %{public}@, web view: %p", &v25, 0x20u);
  }

  if (![v5 policy] && objc_msgSend(self, "isActive"))
  {
    [WeakRetained setFavoritesState:0 animated:1];
  }

  *(self + 776) = [v5 provenance];
  *(self + 786) = [v5 type] == 10;
  v13 = *(self + 978);
  *(self + 978) = 0;
  highlight = [v5 highlight];
  v15 = *(self + 336);
  *(self + 336) = highlight;

  if ([v5 policy])
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = [v5 isChildIntent] ^ 1;
  }

  *(self + 744) = v16;
  *(self + 745) = 0;
  type = [v5 type];
  v18 = 0;
  if (type > 5)
  {
    if (type <= 7)
    {
      if (type != 6)
      {
        webClip = [v5 webClip];
        v20 = [(TabDocument *)self _loadWebClip:webClip];
        goto LABEL_34;
      }
    }

    else
    {
      if (type == 8)
      {
        v18 = [(TabDocument *)self _loadServiceWorkerOpenedURLIntent:v5];
        goto LABEL_38;
      }

      if (type == 9)
      {
        externalURLSourceApplicationIsSpotlight = [v5 externalURLSourceApplicationIsSpotlight];
        v24 = externalURLSourceApplicationIsSpotlight;
        [*(self + 1064) setObscuringContents:externalURLSourceApplicationIsSpotlight & v13];
        *(self + 978) = v24;
        webClip = [v5 URL];
        [(TabDocument *)self _loadExternalURL:webClip withIntent:v5];
        goto LABEL_36;
      }

      if (type != 10)
      {
        goto LABEL_38;
      }
    }

    webClip = [v5 URL];
    v21 = [self loadURL:webClip userDriven:1];
    v18 = v21 != 0;

LABEL_37:
    goto LABEL_38;
  }

  if (type <= 1)
  {
    if (!type)
    {
      webClip = [v5 bookmark];
      v20 = [(TabDocument *)self _loadBookmark:webClip];
      goto LABEL_34;
    }

    if (type != 1)
    {
      goto LABEL_38;
    }

    webClip = [v5 cloudTab];
    [self loadCloudTab:webClip];
LABEL_36:
    v18 = 1;
    goto LABEL_37;
  }

  switch(type)
  {
    case 2:
      webClip = [v5 URL];
      v18 = 1;
      v22 = [self loadURL:webClip userDriven:1];
      goto LABEL_37;
    case 4:
      webClip = [v5 text];
      v20 = [(TabDocument *)self _loadUserTypedAddress:webClip];
      goto LABEL_34;
    case 5:
      webClip = [v5 text];
      v20 = [(TabDocument *)self _loadSearchResultForQuery:webClip];
LABEL_34:
      v18 = v20;
      goto LABEL_37;
  }

LABEL_38:
  if (intentCopy)
  {
    intentCopy[2](intentCopy, v18 & ~*(self + 745) & 1);
  }

LABEL_41:
}

- (uint64_t)_loadBookmark:(uint64_t)bookmark
{
  v3 = a2;
  v4 = v3;
  if (bookmark)
  {
    safari_bestCurrentURL = [(WebBookmark *)v3 safari_bestCurrentURL];
    if ([v4 isReadingListItem])
    {
      mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
      isNetworkReachable = [mEMORY[0x277CEC5B8] isNetworkReachable];

      if (safari_bestCurrentURL)
      {
        v8 = 1;
      }

      else
      {
        v8 = isNetworkReachable;
      }

      if ((v8 & 1) == 0)
      {
        v10 = *(bookmark + 1304);
        v11 = _WBSLocalizedString();
        v12 = _WBSLocalizedString();
        [v10 addAlertWithTitle:v11 bodyText:v12];

        goto LABEL_12;
      }

      if (safari_bestCurrentURL)
      {
        mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
        [mEMORY[0x277D499B8] didOpenReadingListItemWithReachableNetwork:isNetworkReachable isContinuousTransition:0];
      }
    }

    if (([(TabDocument *)bookmark _trySwitchingToPinnedTabOnNavigationToURL:safari_bestCurrentURL]& 1) == 0)
    {
      [(TabDocument *)bookmark _loadURL:safari_bestCurrentURL fromBookmark:v4];
      bookmark = 1;
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    bookmark = 0;
    goto LABEL_13;
  }

LABEL_14:

  return bookmark;
}

- (uint64_t)_loadUserTypedAddress:(uint64_t)address
{
  v3 = a2;
  if (address)
  {
    if ((gTestFileURLs & 1) == 0)
    {
      v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
      isFileURL = [v4 isFileURL];

      if (isFileURL)
      {
        [*(address + 1304) addDisallowedFileURLAlert];
LABEL_7:
        address = 0;
        goto LABEL_8;
      }
    }

    if ([v3 safari_isJavaScriptURLString])
    {
      [*(address + 1304) addDisallowedUseOfJavaScriptAlert];
      goto LABEL_7;
    }

    [address setReadingListBookmark:0];
    *(address + 955) = 0;
    *(address + 709) = 0;
    v7 = WBSUnifiedFieldInputTypeForString();
    if ((v7 - 1) >= 2)
    {
      if (!v7 || v7 == 3)
      {
        address = [(TabDocument *)address _loadSearchResultForQuery:v3];
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v8 = [MEMORY[0x277CBEBC0] URLWithString:v3];
    safari_isSafariWebExtensionURL = [v8 safari_isSafariWebExtensionURL];
    webView = [address webView];
    _committedURL = [webView _committedURL];
    safari_isSafariWebExtensionURL2 = [_committedURL safari_isSafariWebExtensionURL];

    if (!(safari_isSafariWebExtensionURL & 1 | ((safari_isSafariWebExtensionURL2 & 1) == 0)))
    {
      [TabDocument _destroyDocumentViewAllowingDeferral:address];
      createWebViewConfiguration = [address createWebViewConfiguration];
      [(TabDocument *)address _createDocumentViewWithConfiguration:createWebViewConfiguration];
    }

    -[TabDocument _updateFallbackURLsForUserTypedAddress:userExplicitlyRequestedAsHTTP:](address, v3, [v8 safari_hasScheme:@"http"]);
    address = [(TabDocument *)address _loadNextFallbackURLWithWebClip:0 navigation:?];
  }

LABEL_8:

  return address;
}

- (uint64_t)_loadSearchResultForQuery:(id *)query
{
  v3 = a2;
  if (query)
  {
    WeakRetained = objc_loadWeakRetained(query + 124);
    [WeakRetained updateSearchEngineIfNeeded];
    _web_stringByTrimmingWhitespace = [v3 _web_stringByTrimmingWhitespace];

    v6 = +[SearchQueryBuilder searchQueryBuilderWithQuery:forPrivateBrowsing:](SearchQueryBuilder, "searchQueryBuilderWithQuery:forPrivateBrowsing:", _web_stringByTrimmingWhitespace, [query isPrivateBrowsingEnabled]);
    searchURL = [v6 searchURL];
    if (searchURL && ([(TabDocument *)query _trySwitchingToPinnedTabOnNavigationToURL:searchURL]& 1) == 0)
    {
      v8 = 1;
      v9 = [query loadURL:searchURL userDriven:1];
    }

    else
    {
      v8 = 0;
    }

    rootViewController = [WeakRetained rootViewController];
    tipsCoordinator = [rootViewController tipsCoordinator];
    [tipsCoordinator invalidateWebSearchTip];

    v3 = _web_stringByTrimmingWhitespace;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_loadWebClip:(id *)clip
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (clip && v3)
  {
    pageURL = [v3 pageURL];
    if ([v4 fullScreen])
    {
      uuid = [clip[170] uuid];
      uuid2 = [v4 uuid];
      v9 = WBSIsEqual();

      if (v9)
      {
        if ([clip inWebClipScope])
        {
          v5 = 1;
LABEL_9:

          goto LABEL_10;
        }
      }

      else
      {
        [(TabDocument *)clip setWebClip:v4];
      }
    }

    v10 = [clip loadURL:pageURL userDriven:1];
    v5 = v10 != 0;

    goto LABEL_9;
  }

LABEL_10:

  return v5;
}

- (BOOL)_loadServiceWorkerOpenedURLIntent:(_BOOL8)intent
{
  v3 = a2;
  v4 = v3;
  if (intent)
  {
    [v3 setUsedTabDocument:intent];
    v5 = [v4 URL];
    v6 = [intent loadURL:v5 userDriven:1];
    intent = v6 != 0;
  }

  return intent;
}

- (void)_loadExternalURL:(void *)l withIntent:
{
  v17 = a2;
  lCopy = l;
  v6 = lCopy;
  if (self)
  {
    externalOptions = [lCopy externalOptions];
    v8 = +[TabDocument urlForExternalURL:forPrivateBrowsing:](TabDocument, "urlForExternalURL:forPrivateBrowsing:", v17, [self isPrivateBrowsingEnabled]);
    objc_storeStrong((self + 1296), v8);
    eventAttribution = [v6 eventAttribution];
    v10 = [(TabDocument *)self _loadURL:v8 userDriven:1 eventAttribution:eventAttribution skipSyncableTabUpdates:0];

    objc_storeStrong((self + 1368), v8);
    v11 = [externalOptions safari_stringForKey:*MEMORY[0x277D76690]];
    if ([v11 isEqualToString:@"com.apple.SafariViewService"])
    {
      *(self + 957) = [externalOptions safari_BOOLForKey:*MEMORY[0x277D290C0]];
      v12 = [externalOptions safari_stringForKey:*MEMORY[0x277D290D0]];
      v13 = *(self + 1424);
      *(self + 1424) = v12;

      v14 = [externalOptions safari_dataForKey:*MEMORY[0x277D290C8]];
      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x277CE38A0]) initWithData:v14];
        if (v15)
        {
          [self restoreSessionState:v15 andNavigate:1 fromSafariViewService:1];
        }
      }
    }

    else
    {
      objc_storeStrong((self + 1424), v11);
      v16 = v11;
      v14 = *(self + 1216);
      *(self + 1216) = v16;
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
      identifier = [(UIWebClip *)self->_webClip identifier];
      LOBYTE(v3) = [v3 webClipWithIdentifierExists:identifier];

      if ((v3 & 1) == 0)
      {

        [(TabDocument *)self setWebClip:?];
      }
    }
  }
}

- (id)loadURL:(id)l userDriven:(BOOL)driven
{
  v4 = [(TabDocument *)self loadURL:l userDriven:driven skipSyncableTabUpdates:0];

  return v4;
}

- (id)loadURL:(uint64_t)l userDriven:(char)driven skipSyncableTabUpdates:
{
  v7 = a2;
  if (self)
  {
    v8 = [(TabDocument *)self _loadURL:v7 userDriven:l eventAttribution:0 skipSyncableTabUpdates:driven];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_loadURL:(uint64_t)l userDriven:(void *)driven eventAttribution:(char)attribution skipSyncableTabUpdates:
{
  v9 = a2;
  drivenCopy = driven;
  if (self)
  {
    [self setReadingListBookmark:0];
    v11 = [(TabDocument *)self _loadURLInternal:v9 userDriven:l eventAttribution:drivenCopy skipSyncableTabUpdates:attribution];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)loadURL:(id)l title:(id)title skipSyncableTabUpdates:(BOOL)updates
{
  lCopy = l;
  titleCopy = title;
  if (self->_active && !self->_hibernated)
  {
    v9 = [(TabDocument *)self loadURL:lCopy userDriven:0 skipSyncableTabUpdates:updates];
  }

  else
  {
    self->_skipSyncableTabUpdates = updates;
    [(TabDocument *)self _setDeferredNavigationURL:lCopy title:titleCopy];
  }
}

- (void)_setDeferredNavigationURL:(void *)l title:
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  lCopy = l;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 992));
    v9 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = 134218499;
      selfCopy = self;
      v17 = 2160;
      v18 = 1752392040;
      v19 = 2117;
      v20 = v6;
      _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_INFO, "Store deferred navigation: (document: %p) %{sensitive, mask.hash}@", &v15, 0x20u);
    }

    *(self + 824) = 1;
    objc_storeStrong((self + 832), a2);
    v10 = [lCopy copy];
    v11 = *(self + 840);
    *(self + 840) = v10;

    *(self + 984) = 0;
    tabCollectionViewProvider = [WeakRetained tabCollectionViewProvider];
    uuid = [self uuid];
    [tabCollectionViewProvider removeSnapshotForTabWithUUID:uuid];

    [*(self + 168) setTitle:lCopy];
    [*(self + 168) setURL:v6];
    [self updateTabTitle];
    [self updateTabIcon];
    tabController = [WeakRetained tabController];
    [tabController updateWBTabWithTab:self notify:0 persist:0];

    [self hibernate];
  }
}

- (id)_loadURLInternal:(uint64_t)internal userDriven:(void *)driven eventAttribution:(char)attribution skipSyncableTabUpdates:
{
  v9 = a2;
  drivenCopy = driven;
  if (self)
  {
    *(self + 824) = 0;
    v11 = *(self + 832);
    *(self + 832) = 0;

    v12 = [MEMORY[0x277CBABA0] safari_nonAppInitiatedRequestWithURL:v9];
    if (*(self + 1288))
    {
      [self clearPageLoadStatistics];
    }

    [self setSuppressingProgressAnimationForNavigationGesture:0];
    v13 = *(self + 312);
    *(self + 312) = 0;

    v14 = [MEMORY[0x277D75D70] webClipWithURL:v9];
    if (v14)
    {
      v15 = [TabDocument loadWebClip:self userDriven:v14];
    }

    else
    {
      if ([self shouldSpawnNewTabOnNavigationFromPinnedTabWithDestinationURL:v9])
      {
        builder = [MEMORY[0x277D28F40] builder];
        [builder setPrefersOpenInNewTabReusingExistingBlankTabIfPossible:1];
        v17 = [builder navigationIntentWithURL:v9];
        [self dispatchNavigationIntent:v17];

        *(self + 745) = 1;
        self = 0;
LABEL_10:

        goto LABEL_11;
      }

      v15 = [(TabDocument *)self _loadRequest:v12 userDriven:internal shouldOpenExternalURLs:*(self + 1296) != 0 eventAttribution:drivenCopy skipSyncableTabUpdates:attribution];
    }

    self = v15;
    goto LABEL_10;
  }

LABEL_11:

  return self;
}

- (id)_loadURLInternal:(uint64_t)internal userDriven:
{
  v5 = a2;
  if (self)
  {
    v6 = [(TabDocument *)self _loadURLInternal:v5 userDriven:internal eventAttribution:0 skipSyncableTabUpdates:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_BYTE)loadWebClip:(_BYTE *)clip userDriven:(void *)driven
{
  v18 = *MEMORY[0x277D85DE8];
  drivenCopy = driven;
  if (clip)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = WBS_LOG_CHANNEL_PREFIXWebClips();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        identifier = [drivenCopy identifier];
        *buf = 138543618;
        v15 = identifier;
        v16 = 2048;
        bundleVersion = [drivenCopy bundleVersion];
        _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_INFO, "Loading UIWebClip with identifier %{public}@'; version: %lu", buf, 0x16u);
      }
    }

    clip[709] = 0;
    clip[743] = 1;
    pageURL = [drivenCopy pageURL];
    absoluteString = [pageURL absoluteString];

    [(TabDocument *)clip _updateFallbackURLsForUserTypedAddress:absoluteString userExplicitlyRequestedAsHTTP:0];
    v13 = 0;
    v8 = [(TabDocument *)clip _loadNextFallbackURLWithWebClip:drivenCopy navigation:&v13];
    v9 = v13;
    v10 = v8 == 0;
    if (v8)
    {
      clip = v9;
    }

    else
    {
      clip = 0;
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

  return clip;
}

- (uint64_t)_loadURL:(void *)l fromBookmark:
{
  v5 = a2;
  lCopy = l;
  v7 = lCopy;
  if (self)
  {
    address = [lCopy address];
    safari_scriptIfJavaScriptURLString = [address safari_scriptIfJavaScriptURLString];

    if (safari_scriptIfJavaScriptURLString)
    {
      [*(self + 1064) evaluateJavaScript:safari_scriptIfJavaScriptURLString completionHandler:0];
    }

    else
    {
      if (!v5)
      {
        self = 0;
        goto LABEL_5;
      }

      v11 = [(TabDocument *)self _loadURLInternal:v5 userDriven:1];
      if ([v7 isReadingListItem])
      {
        [self setReadingListBookmark:v7];
      }

      else
      {
        [self setReadingListBookmark:0];
        objc_storeStrong((self + 312), l);
      }
    }

    self = 1;
LABEL_5:
  }

  return self;
}

- (uint64_t)_trySwitchingToPinnedTabOnNavigationToURL:(uint64_t)l
{
  v3 = a2;
  if (l && *(l + 744) == 1)
  {
    WeakRetained = objc_loadWeakRetained((l + 992));
    tabController = [WeakRetained tabController];
    v6 = [tabController trySwitchingToPinnedTabOnNavigationToURL:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)loadCloudTab:(id)tab
{
  tabCopy = tab;
  v4 = [tabCopy url];
  v5 = [(TabDocument *)self loadURL:v4 userDriven:1];

  [(TabDocument *)self restoreScrollPositionWithCloudTab:tabCopy];
}

- (void)restoreScrollPositionWithCloudTab:(id)tab
{
  tabCopy = tab;
  [(TabDocument *)self clearReaderScrollInformation];
  if ([tabCopy isShowingReader])
  {
    self->_shouldRestoreReader = 1;
    v4 = MEMORY[0x277CBEAC0];
    readerScrollPositionDictionary = [tabCopy readerScrollPositionDictionary];
    v6 = [v4 dictionaryWithDictionary:readerScrollPositionDictionary];
    initialArticleScrollDictionaryForCloudTab = self->_initialArticleScrollDictionaryForCloudTab;
    self->_initialArticleScrollDictionaryForCloudTab = v6;
  }
}

- (void)goBackAllowingNewTabToSpawnIfNeeded:(BOOL)needed
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__TabDocument_goBackAllowingNewTabToSpawnIfNeeded___block_invoke;
  aBlock[3] = &unk_2781DA8E0;
  objc_copyWeak(&v6, &location);
  neededCopy = needed;
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

- (void)_goBackAllowingNewTabToSpawnIfNeeded:(char)needed shouldDismissReader:
{
  if (self)
  {
    *(self + 712) = 1;
    *(self + 710) = needed;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __72__TabDocument__goBackAllowingNewTabToSpawnIfNeeded_shouldDismissReader___block_invoke;
    v3[3] = &unk_2781D6638;
    v3[4] = self;
    v4 = a2;
    [(TabDocument *)self _terminateWebProcessIfNeededAndShowCrashBanner:v3 thenDo:?];
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

- (void)goForwardAllowingNewTabToSpawnIfNeeded:(BOOL)needed
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__TabDocument_goForwardAllowingNewTabToSpawnIfNeeded___block_invoke;
  aBlock[3] = &unk_2781DA8E0;
  objc_copyWeak(&v6, &location);
  neededCopy = needed;
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

- (void)_goForwardAllowingNewTabToSpawnIfNeeded:(char)needed shouldDismissReader:
{
  if (self)
  {
    *(self + 712) = 1;
    *(self + 710) = needed;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __75__TabDocument__goForwardAllowingNewTabToSpawnIfNeeded_shouldDismissReader___block_invoke;
    v3[3] = &unk_2781D6638;
    v3[4] = self;
    v4 = a2;
    [(TabDocument *)self _terminateWebProcessIfNeededAndShowCrashBanner:v3 thenDo:?];
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
    expectedOrCurrentURL = [result expectedOrCurrentURL];
    absoluteString = [expectedOrCurrentURL absoluteString];
    safari_isJavaScriptURLString = [absoluteString safari_isJavaScriptURLString];

    if (safari_isJavaScriptURLString)
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

- (void)_reloadFromOrigin:(uint64_t)origin
{
  if (origin && ([(TabDocument *)origin _suppressReloadToPreventLoadingJavaScriptIfNecessary]& 1) == 0)
  {
    if ([*(origin + 304) isScribbling])
    {
      [*(origin + 304) endScribblingAndSaveChanges:0];
    }

    *(origin + 1224) = 4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__TabDocument__reloadFromOrigin___block_invoke;
    v6[3] = &unk_2781D6638;
    v6[4] = origin;
    v7 = a2;
    [(TabDocument *)origin _terminateWebProcessIfNeededAndShowCrashBanner:v6 thenDo:?];
    expectedOrCurrentURL = [origin expectedOrCurrentURL];
    v5 = *(origin + 920);
    *(origin + 920) = expectedOrCurrentURL;
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
  if (self)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [self[138] setLastReloadDate:date];

    expectedOrCurrentURL = [self expectedOrCurrentURL];
    safari_isSafariWebExtensionURL = [expectedOrCurrentURL safari_isSafariWebExtensionURL];

    if ((safari_isSafariWebExtensionURL & 1) == 0)
    {
      [(TabDocument *)self _hidePrivateBrowsingPrivacyProtectionsBannerIfNecessary];

      [(TabDocument *)self _showPrivateBrowsingPrivacyProtectionsBannerForReload];
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
  if (self && *(self + 1208))
  {
    *(self + 376) = 0;
    if ([self isActive])
    {
      WeakRetained = objc_loadWeakRetained((self + 992));
      [WeakRetained showPrivateBrowsingPrivacyProtectionsBanner:0];
    }

    v3 = *(self + 1208);
    *(self + 1208) = 0;
  }
}

- (void)_showPrivateBrowsingPrivacyProtectionsBannerForReload
{
  if (self)
  {
    v2 = [MEMORY[0x277CBEAA8] now];
    [v2 timeIntervalSinceDate:*(self + 384)];
    v4 = v3;

    if (v4 > 60.0)
    {
      *(self + 376) = 0;
      return;
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [standardUserDefaults safari_enableAdvancedPrivacyProtections:{objc_msgSend(self, "isPrivateBrowsingEnabled")}];

    if (*(self + 376) == 1)
    {
      v7 = *(self + 377);
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

    if (!(v7 & 1 | ((*(self + 949) & 1) == 0)))
    {
      objc_initWeak(&location, self);
      v8 = objc_alloc_init(MEMORY[0x277D28D10]);
      v9 = *(self + 1208);
      *(self + 1208) = v8;

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __68__TabDocument__showPrivateBrowsingPrivacyProtectionsBannerForReload__block_invoke;
      v13[3] = &unk_2781D67C8;
      objc_copyWeak(&v14, &location);
      [*(self + 1208) setReducePrivacyProtectionsActionHandler:v13];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __68__TabDocument__showPrivateBrowsingPrivacyProtectionsBannerForReload__block_invoke_2;
      v11[3] = &unk_2781D67C8;
      objc_copyWeak(&v12, &location);
      [*(self + 1208) setDismissButtonHandler:v11];
      WeakRetained = objc_loadWeakRetained((self + 992));
      [WeakRetained showPrivateBrowsingPrivacyProtectionsBanner:*(self + 1208)];

      *(self + 377) = 1;
      objc_destroyWeak(&v12);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

- (BOOL)isPageReloaded
{
  selfCopy = self;
  expectedOrCurrentURL = [(TabDocument *)self expectedOrCurrentURL];
  LOBYTE(selfCopy) = [expectedOrCurrentURL isEqual:selfCopy->_lastReloadedURL];

  return selfCopy;
}

- (void)setPageZoomFactor:(double)factor
{
  if (([(SFScribbleController *)self->_sfScribbleController isScribbling]& 1) == 0)
  {
    webView = [(TabDocument *)self webView];
    [webView _viewScale];
    v6 = v5;

    if (v6 < factor)
    {
      [(TabDocument *)self webViewDidIncreaseZoom];
    }

    webView2 = [(TabDocument *)self webView];
    [webView2 _setViewScale:factor];
  }
}

- (double)pageZoomFactor
{
  webView = [(TabDocument *)self webView];
  [webView _viewScale];
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
    uRLForPerSitePreferences = [val URLForPerSitePreferences];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__TabDocument__updatePageZoomWithPreference__block_invoke;
    v5[3] = &unk_2781DA930;
    objc_copyWeak(&v6, &location);
    [v3 getPageZoomFactorForURL:uRLForPerSitePreferences usingBlock:v5];

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
  uRLForPerSitePreferences = [(TabDocument *)self URLForPerSitePreferences];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__TabDocument_increasePageZoomSetting__block_invoke;
  v6[3] = &unk_2781DA958;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  [v4 zoomInOnURL:uRLForPerSitePreferences completionHandler:v6];

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
  uRLForPerSitePreferences = [(TabDocument *)self URLForPerSitePreferences];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__TabDocument_decreasePageZoomSetting__block_invoke;
  v6[3] = &unk_2781DA980;
  objc_copyWeak(&v7, &location);
  [v4 zoomOutOnURL:uRLForPerSitePreferences completionHandler:v6];

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
  uRLForPerSitePreferences = [(TabDocument *)self URLForPerSitePreferences];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__TabDocument_resetPageZoomSetting__block_invoke;
  v6[3] = &unk_2781DA980;
  objc_copyWeak(&v7, &location);
  [v4 resetZoomLevelOnURL:uRLForPerSitePreferences completionHandler:v6];

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

- (void)reloadEnablingDowngradedPrivateRelay:(BOOL)relay
{
  if (([(TabDocument *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary]& 1) == 0)
  {
    if (!relay)
    {
      mEMORY[0x277D4A008] = [MEMORY[0x277D4A008] sharedManager];
      expectedOrCurrentURL = [(TabDocument *)self expectedOrCurrentURL];
      [mEMORY[0x277D4A008] clearPrivateRelayFailClosedExceptionIfNecessaryForURL:expectedOrCurrentURL];
    }

    [(TabDocument *)self _disablePrivateRelaySetting:relay];

    [(TabDocument *)self _reloadFromOrigin:?];
  }
}

- (void)reloadDisablingContentBlockers:(BOOL)blockers
{
  if (([(TabDocument *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary]& 1) == 0)
  {
    [(SFScribbleController *)self->_sfScribbleController reloadWithoutScribbleElements];
    v5 = [(TabDocument *)self URL];
    urlToReloadForcingContentBlockers = self->_urlToReloadForcingContentBlockers;
    self->_urlToReloadForcingContentBlockers = v5;

    self->_disableContentBlockersWhenReloading = blockers;

    [(TabDocument *)self _reloadFromOrigin:?];
  }
}

- (BOOL)supportsAdvancedPrivacyProtectionsForURL:(id)l
{
  lCopy = l;
  if ([lCopy safari_isSafariWebExtensionURL])
  {
    v5 = 0;
  }

  else
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v5 = [safari_browserDefaults safari_enableAdvancedPrivacyProtections:{-[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}];
  }

  return v5;
}

- (void)reloadDisablingAdvancedPrivateBrowsingPrivacyProtections:(BOOL)protections
{
  if (([(TabDocument *)self _suppressReloadToPreventLoadingJavaScriptIfNecessary]& 1) == 0)
  {
    v5 = [(TabDocument *)self URL];
    urlToReloadForAdvancedPrivateBrowsingPrivacyProtections = self->_urlToReloadForAdvancedPrivateBrowsingPrivacyProtections;
    self->_urlToReloadForAdvancedPrivateBrowsingPrivacyProtections = v5;

    self->_disableAdvancedPrivateBrowsingPrivacyProtectionsWhenReloading = protections;

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
  if (self)
  {
    uRLForPerSitePreferences = [self URLForPerSitePreferences];
    safari_userVisibleHostWithoutWWWSubdomain = [uRLForPerSitePreferences safari_userVisibleHostWithoutWWWSubdomain];

    if ([safari_userVisibleHostWithoutWWWSubdomain length])
    {
      WeakRetained = objc_loadWeakRetained(self + 124);
      v4 = objc_alloc(MEMORY[0x277CDB848]);
      perSitePreferencesVendor = [self perSitePreferencesVendor];
      v6 = [v4 initWithBrowserDocument:self perSitePreferencesVendor:perSitePreferencesVendor];

      view = [v6 view];
      [view setAccessibilityIdentifier:@"PerSitePreferencesPopoverView"];

      v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
      [v8 setModalPresentationStyle:2];
      [WeakRetained _presentModalViewController:v8 fromBarItem:*MEMORY[0x277D291C0] completion:0];
    }
  }
}

- (BOOL)privacyReportShouldSeparateBlockedTrackers
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  LOBYTE(self) = [standardUserDefaults safari_enableAdvancedPrivacyProtections:{-[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}];

  return self;
}

- (BOOL)browserHasMultipleProfiles
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  hasMultipleProfiles = [WeakRetained hasMultipleProfiles];

  return hasMultipleProfiles;
}

- (NSSet)allBrowserProfileIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabGroupManager = [WeakRetained tabGroupManager];
  allProfileIdentifiers = [tabGroupManager allProfileIdentifiers];

  return allProfileIdentifiers;
}

- (NSSet)allBrowserHistories
{
  v2 = +[Application sharedApplication];
  historiesForProfiles = [v2 historiesForProfiles];

  return historiesForProfiles;
}

- (BOOL)canHideToolbar
{
  mEMORY[0x277D28C70] = [MEMORY[0x277D28C70] sharedFeatureManager];
  tabDocumentCanHideToolbar = [mEMORY[0x277D28C70] tabDocumentCanHideToolbar];

  return tabDocumentCanHideToolbar;
}

- (NSURL)URLForPerSitePreferences
{
  committedURL = [(TabDocument *)self committedURL];
  v4 = [(TabDocument *)self customUserVisibleStringForReadingListBookmarkURL:committedURL];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];

    committedURL = v5;
  }

  if (!committedURL || ([committedURL safari_isHTTPFamilyURL] & 1) == 0 && -[TabDocument isShowingErrorPage](self, "isShowingErrorPage"))
  {
    v6 = [(TabDocument *)self URL];

    committedURL = v6;
  }

  return committedURL;
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

- (void)setReadingListBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  identifier = [(WebBookmark *)self->_readingListBookmark identifier];
  p_readingListBookmark = &self->_readingListBookmark;
  if (identifier != [bookmarkCopy identifier] || (-[WebBookmark dateLastViewed](*p_readingListBookmark, "dateLastViewed"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(bookmarkCopy, "dateLastViewed"), v8 = objc_claimAutoreleasedReturnValue(), v9 = (v7 == 0) ^ (v8 != 0), v8, v7, (v9 & 1) == 0))
  {
    objc_storeStrong(&self->_readingListBookmark, bookmark);
    [(TabDocument *)self setShowingContinuous:[(WebBookmark *)*p_readingListBookmark isReadingListItem]];
  }
}

- (void)setShowingContinuous:(BOOL)continuous
{
  if (self->_showingContinuous != continuous)
  {
    self->_showingContinuous = continuous;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained tabDocumentDidUpdateShowingContinuous:self];
  }
}

- (id)backListMenuWithLimit:(int)limit
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = [(TabDocument *)self _backListWithLimit:limit];
  if (-[TabDocument canGoBackToParentTab](self, "canGoBackToParentTab") && [v4 count] == 1)
  {
    objc_initWeak(&location, self);
    firstObject = [v4 firstObject];
    v6 = MEMORY[0x277CCACA8];
    v7 = _WBSLocalizedString();
    title = [firstObject title];
    v9 = [v6 stringWithFormat:v7, title];

    v10 = MEMORY[0x277D750C8];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __37__TabDocument_backListMenuWithLimit___block_invoke;
    v17[3] = &unk_2781D6528;
    objc_copyWeak(&v18, &location);
    v11 = [v10 actionWithTitle:v9 image:0 identifier:0 handler:v17];
    safari_urlForDisplay = [(WKBackForwardListItem *)firstObject safari_urlForDisplay];
    safari_stringForListDisplay = [safari_urlForDisplay safari_stringForListDisplay];
    [v11 setSubtitle:safari_stringForListDisplay];

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

- (id)_backListWithLimit:(uint64_t)limit
{
  if (limit)
  {
    backForwardList = [*(limit + 1064) backForwardList];
    backList = [backForwardList backList];

    v5 = [backList count];
    if (v5 <= a2)
    {
      v6 = backList;
    }

    else
    {
      v6 = [backList subarrayWithRange:{v5 - a2, a2}];
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

- (id)_menuElementForBackForwardListItem:(void *)item
{
  v3 = a2;
  if (item)
  {
    objc_initWeak(&location, item);
    v4 = MEMORY[0x277D750C8];
    title = [v3 title];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__TabDocument__menuElementForBackForwardListItem___block_invoke;
    v19[3] = &unk_2781DA9F8;
    objc_copyWeak(&v21, &location);
    v6 = v3;
    v20 = v6;
    v7 = [v4 actionWithTitle:title image:0 identifier:0 handler:v19];

    safari_urlForDisplay = [(WKBackForwardListItem *)v6 safari_urlForDisplay];
    safari_stringForListDisplay = [safari_urlForDisplay safari_stringForListDisplay];
    [v7 setSubtitle:safari_stringForListDisplay];

    v10 = [v6 URL];
    LODWORD(safari_stringForListDisplay) = [v10 safari_isSafariWebExtensionURL];

    if (safari_stringForListDisplay)
    {
      webExtensionsController = [item webExtensionsController];
      v12 = [v6 URL];
      host = [v12 host];
      v14 = [webExtensionsController webExtensionForBaseURIHost:host];

      displayName = [v14 displayName];
      title2 = [v6 title];
      if ([title2 isEqualToString:displayName])
      {
        v17 = &stru_2827BF158;
      }

      else
      {
        v17 = displayName;
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

- (id)forwardListMenuWithLimit:(int)limit
{
  v4 = [(TabDocument *)self _forwardListWithLimit:limit];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__TabDocument_forwardListMenuWithLimit___block_invoke;
  v7[3] = &unk_2781DA9D0;
  v7[4] = self;
  v5 = [v4 safari_mapObjectsUsingBlock:v7];

  return v5;
}

- (id)_forwardListWithLimit:(uint64_t)limit
{
  if (limit)
  {
    backForwardList = [*(limit + 1064) backForwardList];
    forwardList = [backForwardList forwardList];

    if ([forwardList count] <= a2)
    {
      v5 = forwardList;
    }

    else
    {
      v5 = [forwardList subarrayWithRange:{0, a2}];
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

- (void)_clearAppBannerIfNotCurrentStoreBannerDeferringRemoval:(uint64_t)removal
{
  if (removal)
  {
    [*(removal + 368) invalidate];
    v4 = *(removal + 368);
    *(removal + 368) = 0;

    v5 = *(removal + 360);
    if (v5 != *(removal + 352))
    {
      *(removal + 360) = 0;
    }

    v6 = *(removal + 1200);
    if (v6 && v6 != *(removal + 352))
    {
      WeakRetained = objc_loadWeakRetained((removal + 1248));
      v8 = WeakRetained;
      if ((*(removal + 959) & 1) == 0 && ((a2 & 1) != 0 || (v12 = WeakRetained, v10 = [WeakRetained tabDocumentShouldDeferAppBannerRemoval:removal], v8 = v12, v10)))
      {
        *(removal + 959) = 1;
      }

      else
      {
        v11 = v8;
        [v8 removeAppBannerFromTabDocument:removal animated:0];
        v9 = *(removal + 1200);
        *(removal + 1200) = 0;

        v8 = v11;
      }
    }
  }
}

- (void)_setAppBannerWhenPainted:(uint64_t)painted
{
  v4 = a2;
  if (painted)
  {
    v9 = v4;
    if (*(painted + 716))
    {
      [*(painted + 368) invalidate];
      v5 = *(painted + 368);
      *(painted + 368) = 0;

      v4 = v9;
      if (*(painted + 1200) == v9)
      {
        goto LABEL_11;
      }

      if (*(painted + 959) == 1)
      {
        [v9 setInitiallyBehindNavigationBar:0];
      }

      WeakRetained = objc_loadWeakRetained((painted + 1248));
      v7 = WeakRetained;
      if (*(painted + 1200))
      {
        [WeakRetained removeAppBannerFromTabDocument:painted animated:0];
      }

      objc_storeStrong((painted + 1200), a2);
      [v7 tabDocumentDidCompleteCheckForAppBanner:painted];
    }

    else
    {
      v8 = v4;
      v7 = *(painted + 360);
      *(painted + 360) = v8;
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

    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [mainRunLoop addTimer:*(val + 46) forMode:*MEMORY[0x277CBE738]];

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

- (void)_completeRedirectToExternalNavigationResult:(uint64_t)result fromOriginalRequest:(uint64_t)request dialogResult:
{
  v12 = a2;
  if (self)
  {
    v6 = [(TabDocument *)self _shouldCleanUpAfterRedirectToExternalApp]^ 1;
    if (request == 2)
    {
      LOBYTE(v6) = 1;
    }

    if (v6)
    {
      if (([v12 appliesOneTimeUserInitiatedActionPolicy] & 1) == 0)
      {
        v7 = self[153];
        self[153] = v7 | 2;
        if (request)
        {
          self[153] = v7 | 6;
        }
      }
    }

    else if ([self canGoBack])
    {
      [self goBack];
    }

    else if (!request)
    {
      [self _closeTabDocumentAnimated:0];
    }

    appLink = [v12 appLink];
    v9 = appLink;
    if (request == 1 && appLink)
    {
      [appLink disableTemporarily];
      v10 = [v9 url];
      v11 = -[TabDocument _loadURLInternal:userDriven:](self, v10, [v12 loadWasUserDriven]);
    }
  }
}

- (void)_addNoFeedAppSupportAlert
{
  if (self)
  {
    v1 = *(self + 1304);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __40__TabDocument__addNoFeedAppSupportAlert__block_invoke;
    v3[3] = &unk_2781D63F8;
    v3[4] = self;
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

- (void)_queueAlertForRedirectToExternalNavigationResult:(void *)result fromOriginalRequest:(void *)request navigationAction:(char)action isMainFrame:(uint64_t)frame promptPolicy:(void *)policy userAction:
{
  v13 = a2;
  resultCopy = result;
  requestCopy = request;
  policyCopy = policy;
  if (self)
  {
    objc_initWeak(&location, self);
    aBlock = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __137__TabDocument__queueAlertForRedirectToExternalNavigationResult_fromOriginalRequest_navigationAction_isMainFrame_promptPolicy_userAction___block_invoke;
    v26 = &unk_2781DAA20;
    objc_copyWeak(&v31, &location);
    v17 = v13;
    v27 = v17;
    v22 = resultCopy;
    v28 = v22;
    v29 = requestCopy;
    actionCopy = action;
    v30 = policyCopy;
    v18 = _Block_copy(&aBlock);
    if (([v17 externalApplicationCategory] | 2) == 2)
    {
      self[153] |= 8uLL;
      frameCopy = frame;
      v20 = self[163];
      v21 = [MEMORY[0x277D28C48] redirectDialogWithNavigationResult:v17 promptPolicy:frameCopy completionHandler:v18];
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

- (void)_redirectToExternalNavigationResult:(void *)result fromOriginalRequest:(void *)request navigationAction:(uint64_t)action promptPolicy:(uint64_t)policy isMainFrame:(void *)frame userAction:
{
  v51[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  resultCopy = result;
  requestCopy = request;
  frameCopy = frame;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 1248));
    if ([WeakRetained tabDocumentCanRedirectToExternalApplication:self])
    {
      if (*(self + 1224) != 8)
      {
        v35 = objc_loadWeakRetained((self + 992));
        mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
        if ([mEMORY[0x277D75128] isSuspended] & 1) != 0 || !objc_msgSend(self, "isActive") || (objc_msgSend(v35, "isPrivateBrowsingEnabled"))
        {
          isShowingTabView = 1;
        }

        else
        {
          tabCollectionViewProvider = [v35 tabCollectionViewProvider];
          isShowingTabView = [tabCollectionViewProvider isShowingTabView];
        }

        if ([v13 shouldPromptWithPolicy:action telephonyNavigationPolicy:*(self + 392) userAction:frameCopy inBackgroundOrPrivateBrowsing:isShowingTabView inLockdownMode:*(self + 664)])
        {
          [(TabDocument *)self _queueAlertForRedirectToExternalNavigationResult:v13 fromOriginalRequest:resultCopy navigationAction:requestCopy isMainFrame:policy promptPolicy:action userAction:frameCopy];
          [WeakRetained tabDocumentDidCancelRedirectToExternalApplication:self];
        }

        else
        {
          v20 = [v13 URL];
          if ([v13 appliesOneTimeUserInitiatedActionPolicy])
          {
            [frameCopy consume];
          }

          externalApplicationCategory = [v13 externalApplicationCategory];
          if (!externalApplicationCategory || externalApplicationCategory == 2)
          {
            appLink = [v13 appLink];
            v24 = [*MEMORY[0x277D76620] canOpenURL:v20];
            if (appLink)
            {
              v25 = 1;
            }

            else
            {
              v25 = v24;
            }

            if (v25)
            {
              v26 = *(self + 1296);
              if (v26)
              {
                [v26 absoluteString];
              }

              else
              {
                [resultCopy valueForHTTPHeaderField:@"Referer"];
              }
              v27 = ;
              v28 = *(self + 1296);
              *(self + 1296) = 0;

              *(self + 958) = 0;
              v29 = *(self + 1216);
              *(self + 1216) = 0;

              *(self + 717) = 0;
              if (appLink)
              {
                v50 = *MEMORY[0x277D66E78];
                v51[0] = MEMORY[0x277CBEC38];
                v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
                v41[0] = MEMORY[0x277D85DD0];
                v41[1] = 3221225472;
                v41[2] = __124__TabDocument__redirectToExternalNavigationResult_fromOriginalRequest_navigationAction_promptPolicy_isMainFrame_userAction___block_invoke_3;
                v41[3] = &unk_2781D75E0;
                v41[4] = self;
                v42 = v13;
                v43 = resultCopy;
                [(TabDocument *)self _openAppLinkInApp:appLink fromOriginalRequest:v43 updateAppLinkStrategy:0 webBrowserState:v30 completionHandler:v41];
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

                defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
                externalApplication = [v13 externalApplication];
                v36[0] = MEMORY[0x277D85DD0];
                v36[1] = 3221225472;
                v36[2] = __124__TabDocument__redirectToExternalNavigationResult_fromOriginalRequest_navigationAction_promptPolicy_isMainFrame_userAction___block_invoke_4;
                v36[3] = &unk_2781DAA48;
                v37 = requestCopy;
                selfCopy = self;
                v39 = v13;
                v40 = resultCopy;
                [defaultWorkspace _sf_openURL:v20 inApplication:externalApplication withOptions:v34 completionHandler:v36];
              }
            }

            else
            {
              if (policy)
              {
                [*(self + 1304) addInvalidURLAlert];
              }

              [WeakRetained tabDocumentDidCancelRedirectToExternalApplication:self];
            }
          }

          else if (externalApplicationCategory == 1 && (*(self + 720) & 1) == 0)
          {
            *(self + 720) = 1;
            v22 = *(self + 392);
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __124__TabDocument__redirectToExternalNavigationResult_fromOriginalRequest_navigationAction_promptPolicy_isMainFrame_userAction___block_invoke;
            v44[3] = &unk_2781DAA48;
            v44[4] = self;
            v45 = v20;
            v46 = v13;
            v47 = resultCopy;
            [v22 handleNavigationToURL:v45 completionHandler:v44];
          }
        }
      }
    }

    else
    {
      [WeakRetained tabDocumentDidCancelRedirectToExternalApplication:self];
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

- (void)_openAppLinkInApp:(void *)app fromOriginalRequest:(uint64_t)request updateAppLinkStrategy:(void *)strategy webBrowserState:(void *)state completionHandler:
{
  v10 = a2;
  appCopy = app;
  strategyCopy = strategy;
  stateCopy = state;
  if (self)
  {
    v14 = [appCopy valueForHTTPHeaderField:@"Referer"];
    if (v14)
    {
      v15 = [MEMORY[0x277CBEBC0] safari_URLWithDataAsString:v14];
    }

    else
    {
      v15 = *(self + 1296);
    }

    v16 = v15;
    if (objc_opt_respondsToSelector())
    {
      [*(self + 1064) _willOpenAppLink];
    }

    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__11;
    v18[4] = __Block_byref_object_dispose__11;
    v19 = _Block_copy(stateCopy);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __109__TabDocument__openAppLinkInApp_fromOriginalRequest_updateAppLinkStrategy_webBrowserState_completionHandler___block_invoke;
    v17[3] = &unk_2781DACC8;
    v17[4] = v18;
    [v10 openExternallyWithWebBrowserState:strategyCopy referrerURL:v16 completionHandler:v17];
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

- (id)_readingListArchiveNextPageLinkForRequest:(void *)request targetFrame:
{
  v5 = a2;
  requestCopy = request;
  if (self)
  {
    if (![self currentPageLoadedFromReadingList])
    {
LABEL_5:
      self = 0;
      goto LABEL_9;
    }

    request = [requestCopy request];
    v8 = [request URL];
    if ([v8 isFileURL])
    {
      mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
      isNetworkReachable = [mEMORY[0x277CEC5B8] isNetworkReachable];

      if (isNetworkReachable)
      {
        goto LABEL_5;
      }

      mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      request = [mainBookmarkCollection bookmarkWithID:{objc_msgSend(self, "readingListBookmarkID")}];

      v8 = [v5 URL];
      self = [request webarchivePathForNextPageURL:v8];
    }

    else
    {
      self = 0;
    }
  }

LABEL_9:

  return self;
}

- (id)_fileURLNavigationResultForURL:(void *)l
{
  v3 = a2;
  if (l)
  {
    readingListBookmarkID = [l readingListBookmarkID];
    l = 0;
    if ((gTestFileURLs & 1) == 0 && !readingListBookmarkID)
    {
      if ([v3 isFileURL])
      {
        l = [MEMORY[0x277CDB820] resultOfType:4 withURL:v3];
      }

      else
      {
        l = 0;
      }
    }
  }

  return l;
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
          standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v7 = [standardUserDefaults BOOLForKey:@"RedirectToExternalAppsDisallowed"];
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

- (id)_resultOfLoadingRequest:(uint64_t)request inMainFrame:(int)frame userInitiated:
{
  v7 = a2;
  v8 = v7;
  if (self)
  {
    v9 = [v7 URL];
    v10 = [(TabDocument *)self _fileURLNavigationResultForURL:v9];

    if (!v10)
    {
      v11 = [(TabDocument *)self _shouldDisallowRedirectToExternalAppsForUserInitiatedRequest:frame];
      v12 = MEMORY[0x277CDB820];
      v13 = self[178];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __65__TabDocument__resultOfLoadingRequest_inMainFrame_userInitiated___block_invoke;
      v15[3] = &unk_2781DAA70;
      v16 = v8;
      selfCopy = self;
      v10 = [v12 resultOfLoadingRequest:v16 isMainFrame:request disallowRedirectToExternalApps:v11 preferredApplicationBundleIdentifier:v13 redirectDecisionHandler:v15];
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

- (void)_determineResultOfLoadingRequest:(uint64_t)request inMainFrame:(int)frame userInitiated:(void *)initiated completionHandler:
{
  v9 = a2;
  initiatedCopy = initiated;
  if (self)
  {
    v11 = [v9 URL];
    v12 = [(TabDocument *)self _fileURLNavigationResultForURL:v11];

    if (v12)
    {
      initiatedCopy[2](initiatedCopy, v12);
    }

    else
    {
      v13 = [(TabDocument *)self _shouldDisallowRedirectToExternalAppsForUserInitiatedRequest:frame];
      v14 = *(self + 786);
      committedURL = [self committedURL];
      loadedUsingDesktopUserAgent = [*(self + 88) loadedUsingDesktopUserAgent];
      v16 = v14 | v13;
      v17 = MEMORY[0x277CDB820];
      v18 = *(self + 1424);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __92__TabDocument__determineResultOfLoadingRequest_inMainFrame_userInitiated_completionHandler___block_invoke;
      v21[3] = &unk_2781DAA98;
      v22 = v9;
      v19 = committedURL;
      v23 = v19;
      v24 = loadedUsingDesktopUserAgent;
      [v17 determineResultOfLoadingRequest:v22 isMainFrame:request disallowRedirectToExternalApps:v16 & 1 preferredApplicationBundleIdentifier:v18 redirectDecisionHandler:v21 completionHandler:initiatedCopy];
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

- (id)resultOfLoadingURL:(id)l
{
  v3 = [(TabDocument *)self resultOfLoadingURL:l userInitiated:0];

  return v3;
}

- (id)resultOfLoadingURL:(int)l userInitiated:
{
  v5 = a2;
  if (self)
  {
    v6 = [MEMORY[0x277CBABA0] safari_nonAppInitiatedRequestWithURL:v5];
    v7 = [(TabDocument *)self _resultOfLoadingRequest:v6 inMainFrame:1 userInitiated:l];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_showFinanceKitOrderPreviewControllerWithURL:(void *)l dismissalHandler:
{
  v5 = a2;
  lCopy = l;
  if (self)
  {
    objc_initWeak(&location, self);
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
    v10 = lCopy;
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

- (void)_showPassBookControllerForPasses:(uint64_t)passes
{
  v5 = a2;
  if (passes)
  {
    v3 = [objc_alloc(getPKAddPassesViewControllerClass()) initWithPasses:v5 fromPresentationSource:0];
    [v3 setDelegate:passes];
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained((passes + 1248));
      [WeakRetained tabDocument:passes presentViewControllerAnimated:v3];
    }
  }
}

- (BOOL)_showICSControllerForPath:(void *)path sourceURL:(void *)l beforeDismissHandler:
{
  v7 = a2;
  pathCopy = path;
  lCopy = l;
  if (self)
  {
    v10 = [objc_alloc(MEMORY[0x277CDB7E8]) initWithFilePath:v7 sourceURL:pathCopy];
    v11 = v10;
    v12 = v10 != 0;
    if (v10)
    {
      [v10 setModalPresentationStyle:2];
      [v11 setBeforeDismissHandler:lCopy];
      WeakRetained = objc_loadWeakRetained((self + 1248));
      [WeakRetained tabDocument:self presentViewControllerAnimated:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)showDownload:(id)download
{
  downloadCopy = download;
  completedFileURL = [downloadCopy completedFileURL];
  if (completedFileURL)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__TabDocument_showDownload___block_invoke;
    v7[3] = &unk_2781D6AC0;
    v7[4] = self;
    v8 = downloadCopy;
    v9 = completedFileURL;
    [v9 safari_accessingSecurityScopedResource:v7];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [TabDocument showDownload:];
    }

    [(TabDocument *)self _showDownload:downloadCopy path:0];
  }
}

void __28__TabDocument_showDownload___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) path];
  [(TabDocument *)v1 _showDownload:v2 path:v3];
}

- (void)_showDownload:(void *)download path:
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  downloadCopy = download;
  if (self)
  {
    fileType = [v5 fileType];
    sourceURL = [v5 sourceURL];
    userInitiatedAction = [v5 userInitiatedAction];
    isConsumed = [userInitiatedAction isConsumed];

    if ((isConsumed & 1) == 0)
    {
      userInitiatedAction2 = [v5 userInitiatedAction];
      [userInitiatedAction2 consume];
    }

    *(self + 708) = 1;
    if (fileType == 2)
    {
      goto LABEL_59;
    }

    if (fileType == 6)
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
      v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:downloadCopy isDirectory:0];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __34__TabDocument__showDownload_path___block_invoke;
      v46[3] = &unk_2781DAAE8;
      v46[4] = self;
      [v14 _addWatchFaceAtURL:v15 shouldValidate:0 completionHandler:v46];

      goto LABEL_59;
    }

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __34__TabDocument__showDownload_path___block_invoke_287;
    aBlock[3] = &unk_2781D6840;
    objc_copyWeak(&v44, &location);
    v16 = _Block_copy(aBlock);
    if (fileType > 4)
    {
      if (fileType == 5)
      {
        explicitlySaved = [v5 explicitlySaved];
        if (!downloadCopy || (v18 = [objc_alloc(MEMORY[0x277CDB780]) initWithFilePath:downloadCopy sourceURL:sourceURL deleteFileWhenDone:explicitlySaved ^ 1u beforeDismissHandler:v16]) == 0)
        {
          if ((explicitlySaved & 1) == 0)
          {
            [v5 removeFromDisk];
          }

LABEL_16:
          [*(self + 1304) addDownloadFailedAlertWithDescription:0];
LABEL_58:

          objc_destroyWeak(&v44);
          objc_destroyWeak(&location);
LABEL_59:

          goto LABEL_60;
        }

        WeakRetained = objc_loadWeakRetained((self + 1248));
        [WeakRetained tabDocument:self presentViewControllerAnimated:v18];

LABEL_57:
        goto LABEL_58;
      }

      if (fileType == 7)
      {
        v18 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:downloadCopy isDirectory:0];
        [(TabDocument *)self _showFinanceKitOrderPreviewControllerWithURL:v18 dismissalHandler:v16];
        if (([v5 explicitlySaved] & 1) == 0)
        {
          [v5 removeFromDisk];
        }

        goto LABEL_57;
      }

LABEL_21:
      v18 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:downloadCopy];
      if (([v5 explicitlySaved] & 1) == 0)
      {
        [v5 removeFromDisk];
      }

      if (v18)
      {
        mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
        lastPathComponent = [downloadCopy lastPathComponent];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __34__TabDocument__showDownload_path___block_invoke_294;
        v39[3] = &unk_2781DAB38;
        v39[4] = self;
        [mEMORY[0x277D262A0] queueFileDataForAcceptance:v18 originalFileName:lastPathComponent forBundleID:0 completion:v39];

        v21 = [self URL];
        LODWORD(mEMORY[0x277D262A0]) = v21 == 0;

        if (mEMORY[0x277D262A0])
        {
          [self _closeTabDocumentAnimated:0];
        }
      }

      else
      {
        v35 = WBS_LOG_CHANNEL_PREFIXDownloads();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [TabDocument _showDownload:path:];
        }

        [*(self + 1304) addInvalidProfileAlert];
      }

      goto LABEL_57;
    }

    if (fileType != 3)
    {
      if (fileType == 4)
      {
        if (downloadCopy && [(TabDocument *)self _showICSControllerForPath:downloadCopy sourceURL:sourceURL beforeDismissHandler:v16])
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
    v38 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:downloadCopy isDirectory:0];
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

          [*(self + 1304) addDownloadFailedAlertWithDescription:0];
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

          [(TabDocument *)self _showPassBookControllerForPasses:v22];
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

- (uint64_t)_canShowDownloadWithoutPrompting:(uint64_t)prompting
{
  v3 = a2;
  v4 = v3;
  if (prompting)
  {
    if ([v3 fileType] == 1 || objc_msgSend(v4, "fileType") == 6 || (WeakRetained = objc_loadWeakRetained((prompting + 1248)), v6 = objc_msgSend(WeakRetained, "tabDocument:canShowDownload:", prompting, v4), WeakRetained, (v6 & 1) == 0))
    {
      LOBYTE(prompting) = 0;
    }

    else
    {
      userInitiatedAction = [v4 userInitiatedAction];
      v8 = userInitiatedAction;
      if (userInitiatedAction)
      {
        if (userInitiatedAction == *(prompting + 400))
        {
          LOBYTE(prompting) = [userInitiatedAction isConsumed] ^ 1;
        }

        else
        {
          LOBYTE(prompting) = 0;
        }
      }

      else
      {
        LOBYTE(prompting) = *(prompting + 708) ^ 1;
      }
    }
  }

  return prompting & 1;
}

- (void)downloadDidStart:(id)start
{
  startCopy = start;
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

- (void)downloadDidFail:(id)fail
{
  downloadReflectedInFluidProgress = self->_downloadReflectedInFluidProgress;
  if (self->_activeDownload == fail || downloadReflectedInFluidProgress == fail)
  {
    self->_downloadReflectedInFluidProgress = 0;

    activeDownload = self->_activeDownload;
    self->_activeDownload = 0;
  }
}

- (void)downloadDidFinish:(id)finish
{
  finishCopy = finish;
  activeDownload = self->_activeDownload;
  if (activeDownload == finishCopy)
  {
    self->_activeDownload = 0;

    mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
    v7 = [mEMORY[0x277CDB7A8] shouldExcludeDownloadFromList:finishCopy];

    if (v7)
    {
      if ([(TabDocument *)self _canShowDownloadWithoutPrompting:finishCopy])
      {
        [(TabDocument *)self showDownload:finishCopy];
      }

      else if ([(_SFDownload *)finishCopy fileType]!= 2)
      {
        objc_initWeak(&location, self);
        v8 = MEMORY[0x277D28C48];
        fileType = [(_SFDownload *)finishCopy fileType];
        wkDownload = [(_SFDownload *)finishCopy wkDownload];
        originatingFrame = [wkDownload originatingFrame];
        securityOrigin = [originatingFrame securityOrigin];
        v13 = [(_SFWebView *)self->_webView URL];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __33__TabDocument_downloadDidFinish___block_invoke;
        v15[3] = &unk_2781DAB60;
        objc_copyWeak(&v17, &location);
        v16 = finishCopy;
        v14 = [v8 downloadBlockedDialogWithFileType:fileType initiatingSecurityOrigin:securityOrigin presentingURL:v13 completionHandler:v15];

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

- (void)_presentDialogToAllowDownload:(void *)download initiatingSecurityOrigin:(uint64_t)origin allowViewAction:(void *)action completionHandler:
{
  v9 = a2;
  downloadCopy = download;
  actionCopy = action;
  if (self)
  {
    v12 = MEMORY[0x277D28C48];
    v13 = *(self + 1064);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __104__TabDocument__presentDialogToAllowDownload_initiatingSecurityOrigin_allowViewAction_completionHandler___block_invoke;
    v18 = &unk_2781DAB88;
    v19 = v9;
    v20 = actionCopy;
    v14 = [v12 allowDownloadDialogWithDownload:v19 initiatingSecurityOrigin:downloadCopy navigatedWebView:v13 allowViewAction:origin completionHandler:&v15];
    [*(self + 288) presentDialog:{v14, v15, v16, v17, v18}];
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

- (void)downloadShouldContinueAfterReceivingResponse:(id)response decisionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
  if ([responseCopy suppressesPrompt] & 1) != 0 || (objc_msgSend(mEMORY[0x277CDB7A8], "downloads"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", responseCopy), v10, (v11))
  {
    v12 = 1;
LABEL_4:
    handlerCopy[2](handlerCopy, v12);
    goto LABEL_5;
  }

  if ([*MEMORY[0x277D76620] applicationState] == 2)
  {
    v12 = 0;
    goto LABEL_4;
  }

  if ([mEMORY[0x277CDB7A8] shouldExcludeDownloadFromList:responseCopy])
  {
    handlerCopy[2](handlerCopy, 1);
    objc_storeStrong(&self->_downloadReflectedInFluidProgress, response);
    [responseCopy setFluidProgressController:self->_fluidProgressController];
    [(WBSFluidProgressController *)self->_fluidProgressController startFluidProgressWithProgressStateSource:responseCopy];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__TabDocument_downloadShouldContinueAfterReceivingResponse_decisionHandler___block_invoke;
    v13[3] = &unk_2781DABB0;
    v13[4] = self;
    v14 = handlerCopy;
    [(TabDocument *)self _presentDialogToAllowDownload:responseCopy initiatingSecurityOrigin:0 allowViewAction:0 completionHandler:v13];
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

- (void)setClosed:(BOOL)closed
{
  self->_closed = closed;
  if (closed)
  {
    [(_SFDownload *)self->_downloadReflectedInFluidProgress cancel];
  }

  [(TabDocument *)self setSearchableItemAttributes:0];
  [(TabDocument *)self setMediaStateIcon:?];

  [(TabDocument *)&self->super.isa invalidateUserActivity];
}

- (void)setMediaStateIcon:(uint64_t)icon
{
  if (icon)
  {
    v4 = *(icon + 504);
    if (v4 != a2 || *(icon + 496) == 1)
    {
      if ((a2 - 1) > 1)
      {
        if ((v4 - 3) >= 0xFFFFFFFFFFFFFFFELL)
        {
          v7 = +[MediaCaptureStatusBarManager sharedManager];
          [v7 recordingDocumentDidEndMediaCapture:icon];
        }
      }

      else if ((v4 - 1) >= 2)
      {
        v6 = +[MediaCaptureStatusBarManager sharedManager];
        [v6 recordingDocumentDidBeginMediaCapture:icon audioOnly:a2 == 1];
      }

      *(icon + 504) = a2;
      [(TabDocument *)icon _updateBarItemsWithCurrentMediaState];
      WeakRetained = objc_loadWeakRetained((icon + 992));
      if (WeakRetained)
      {
        [WeakRetained tabDocumentDidChangeMediaState:icon needsUpdateGlobalAudioState:*(icon + 496)];
        navigationBarItem = [icon navigationBarItem];
        [navigationBarItem setMediaStateIcon:a2];
      }

      *(icon + 496) = 0;
      [(TabDocument *)icon _notifyDidUpdateTabCollectionItem];
    }
  }
}

- (void)dismissAppSuggestionBanner:(id)banner
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained removeAppBannerFromTabDocument:self animated:1];

  storeBanner = self->_storeBanner;
  self->_storeBanner = 0;
}

- (void)setAppSuggestionBanner:(id)banner isPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setAppBannerPinnedToTop:pinnedCopy forTabDocument:self];
}

- (BOOL)shouldBlockAppSuggestionBanner:(id)banner
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  isPrivateBrowsingEnabled = [WeakRetained isPrivateBrowsingEnabled];

  return isPrivateBrowsingEnabled ^ 1;
}

- (void)prepareToContinueUserActivity
{
  [(WBSFluidProgressController *)self->_fluidProgressController startFluidProgressWithProgressStateSource:self];
  navigationBarItem = self->_navigationBarItem;
  v4 = _WBSLocalizedString();
  [(SFNavigationBarItem *)navigationBarItem setCustomPlaceholderText:?];
}

+ (id)tabDocumentForWKWebView:(id)view
{
  viewCopy = view;
  v4 = webViewToTabDocumentMap();
  v5 = [v4 objectForKey:viewCopy];

  return v5;
}

- (id)_initWithBrowserController:(id)controller configuration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  isPrivateBrowsingEnabled = [controllerCopy isPrivateBrowsingEnabled];
  isControlledByAutomation = [controllerCopy isControlledByAutomation];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__TabDocument__initWithBrowserController_configuration___block_invoke;
  v13[3] = &unk_2781D61F8;
  selfCopy = self;
  v10 = configurationCopy;
  v15 = v10;
  v11 = [(TabDocument *)selfCopy _initWithTitle:0 URL:0 UUID:isPrivateBrowsingEnabled privateBrowsingEnabled:isControlledByAutomation controlledByAutomation:0 bookmark:controllerCopy browserController:v13 createDocumentView:?];

  return v11;
}

- (void)_createDocumentViewWithConfiguration:(uint64_t)configuration
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (configuration)
  {
    WeakRetained = objc_loadWeakRetained((configuration + 992));
    configuration = [configuration configuration];
    traitEnvironment = [configuration traitEnvironment];

    traitCollection = [traitEnvironment traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      traitCollection2 = [traitEnvironment traitCollection];
      v9 = [traitCollection2 userInterfaceIdiom] == 6;
    }

    else
    {
      v9 = 1;
    }

    [v3 _setDrawsBackground:v9];
    v10 = objc_alloc(MEMORY[0x277CDB918]);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v12 = [v10 initWithFrame:v3 configuration:?];
    v13 = *(configuration + 1064);
    *(configuration + 1064) = v12;

    v14 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(configuration + 1064);
      v55 = 134218240;
      configurationCopy = configuration;
      v57 = 2048;
      v58 = v15;
      _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_DEFAULT, "TabDocument %p: created web view %p", &v55, 0x16u);
    }

    v16 = webViewToTabDocumentMap();
    [v16 setObject:configuration forKey:*(configuration + 1064)];

    [*(configuration + 224) setReaderWebView:*(configuration + 1432)];
    [*(configuration + 224) setWebView:*(configuration + 1064)];
    [*(configuration + 1064) setAllowsLinkPreview:1];
    [*(configuration + 1064) _setObservedRenderingProgressEvents:335];
    [*(configuration + 168) setWebView:*(configuration + 1064)];
    [*(configuration + 1064) setNavigationDelegate:configuration];
    [*(configuration + 1064) setUIDelegate:configuration];
    [*(configuration + 1064) setDelegate:configuration];
    [*(configuration + 1064) _setFullscreenDelegate:configuration];
    [*(configuration + 1064) _setInputDelegate:configuration];
    v17 = *(configuration + 1064);
    history = [configuration history];
    [v17 _setHistoryDelegate:history];

    [*(configuration + 1064) _setIconLoadingDelegate:configuration];
    [*(configuration + 1064) _setDiagnosticLoggingDelegate:configuration];
    if (objc_opt_respondsToSelector())
    {
      [*(configuration + 1064) _setAppHighlightDelegate:configuration];
    }

    [*(configuration + 1064) _setFindInteractionEnabled:1];
    [*(configuration + 1064) setAccessibilityIdentifier:@"WebView"];
    [*(configuration + 1064) setInspectable:{objc_msgSend(configuration, "allowsRemoteInspection")}];
    v19 = _SFCustomUserAgentStringIfNeeded();
    if (v19)
    {
      [*(configuration + 1064) setCustomUserAgent:v19];
    }

    [*(configuration + 1064) addObserver:configuration forKeyPath:@"URL" options:0 context:kTabDocumentObserverContext];
    [*(configuration + 1064) addObserver:configuration forKeyPath:@"estimatedProgress" options:0 context:kTabDocumentObserverContext];
    [*(configuration + 1064) addObserver:configuration forKeyPath:@"_networkRequestsInProgress" options:0 context:kTabDocumentObserverContext];
    [*(configuration + 1064) addObserver:configuration forKeyPath:@"hasOnlySecureContent" options:0 context:kTabDocumentObserverContext];
    [*(configuration + 1064) addObserver:configuration forKeyPath:@"_negotiatedLegacyTLS" options:0 context:kTabDocumentObserverContext];
    [*(configuration + 1064) addObserver:configuration forKeyPath:@"title" options:0 context:kTabDocumentObserverContext];
    [*(configuration + 1064) addObserver:configuration forKeyPath:@"canGoBack" options:0 context:kTabDocumentObserverContext];
    [*(configuration + 1064) addObserver:configuration forKeyPath:@"canGoForward" options:0 context:kTabDocumentObserverContext];
    [*(configuration + 1064) addObserver:configuration forKeyPath:@"_webProcessIsResponsive" options:0 context:kTabDocumentObserverContext];
    [*(configuration + 1064) addObserver:configuration forKeyPath:@"loading" options:0 context:kTabDocumentObserverContext];
    [*(configuration + 1064) addObserver:configuration forKeyPath:@"themeColor" options:0 context:kTabDocumentObserverContext];
    [*(configuration + 1064) addObserver:configuration forKeyPath:@"underPageBackgroundColor" options:0 context:kTabDocumentObserverContext];
    [*(configuration + 1064) addObserver:configuration forKeyPath:@"_sampledPageTopColor" options:0 context:kTabDocumentObserverContext];
    [*(configuration + 1064) addObserver:configuration forKeyPath:@"_isPlayingAudio" options:0 context:kTabDocumentObserverContext];
    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      [*(configuration + 1064) addObserver:configuration forKeyPath:@"_sampledTopFixedPositionContentColor" options:0 context:kTabDocumentObserverContext];
    }

    [*(configuration + 1064) _setBackgroundExtendsBeyondPage:1];
    v20 = [objc_alloc(MEMORY[0x277CDB7C8]) initWithWebView:*(configuration + 1064) delegate:configuration];
    v21 = *(configuration + 1280);
    *(configuration + 1280) = v20;

    v22 = [objc_alloc(MEMORY[0x277CDB878]) initWithWebView:*(configuration + 1064)];
    v23 = *(configuration + 296);
    *(configuration + 296) = v22;

    [*(configuration + 296) setDelegate:configuration];
    [*(configuration + 296) setWebViewUIDelegate:configuration];
    traitCollection3 = [traitEnvironment traitCollection];
    userInterfaceStyle = [traitCollection3 userInterfaceStyle];
    configurationManager = [*(configuration + 296) configurationManager];
    [configurationManager setDarkModeEnabled:userInterfaceStyle == 2];

    v27 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_282862DC0];
    v28 = *(configuration + 64);
    *(configuration + 64) = v27;

    _remoteObjectRegistry = [*(configuration + 1064) _remoteObjectRegistry];
    [_remoteObjectRegistry registerExportedObject:configuration interface:*(configuration + 64)];

    v30 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_282862A00];
    v31 = *(configuration + 72);
    *(configuration + 72) = v30;

    _remoteObjectRegistry2 = [*(configuration + 1064) _remoteObjectRegistry];
    [_remoteObjectRegistry2 registerExportedObject:configuration interface:*(configuration + 72)];

    v33 = objc_alloc(MEMORY[0x277CDB838]);
    v34 = *(configuration + 1064);
    websiteDataStore = [v3 websiteDataStore];
    safari_secIdentitiesCache = [websiteDataStore safari_secIdentitiesCache];
    v37 = [v33 initWithWebView:v34 secIdentitiesCache:safari_secIdentitiesCache];
    v38 = *(configuration + 1304);
    *(configuration + 1304) = v37;

    [*(configuration + 1304) setDelegate:configuration];
    [*(configuration + 1304) setDialogPresenter:configuration];
    v39 = objc_alloc(MEMORY[0x277CDB890]);
    v40 = *(configuration + 1064);
    activityJSController = [configuration activityJSController];
    perSitePreferencesVendor = [configuration perSitePreferencesVendor];
    requestDesktopSitePreferenceManager = [perSitePreferencesVendor requestDesktopSitePreferenceManager];
    v44 = [v39 initWithWebView:v40 activityJSController:activityJSController perSitePreferenceManager:requestDesktopSitePreferenceManager];
    v45 = *(configuration + 88);
    *(configuration + 88) = v44;

    [*(configuration + 88) setTryUsingMobileIfPossible:{objc_msgSend(WeakRetained, "isShowingInOneThirdMode")}];
    v46 = [*(configuration + 1064) URL];
    [*(configuration + 88) setSupportsAdvancedPrivacyProtections:{objc_msgSend(configuration, "supportsAdvancedPrivacyProtectionsForURL:", v46)}];

    [*(configuration + 672) setReloadOptionsController:*(configuration + 88)];
    v47 = [objc_alloc(MEMORY[0x277CDB778]) initWithWebView:*(configuration + 1064)];
    v48 = *(configuration + 96);
    *(configuration + 96) = v47;

    v49 = objc_alloc_init(MEMORY[0x277D28C50]);
    v50 = *(configuration + 288);
    *(configuration + 288) = v49;

    [*(configuration + 288) setDelegate:configuration];
    [*(configuration + 288) setDialogPresenter:*(configuration + 1064)];
    [*(configuration + 288) setViewControllerPresenter:configuration];
    v51 = objc_alloc_init(MEMORY[0x277CDB868]);
    v52 = *(configuration + 1400);
    *(configuration + 1400) = v51;

    [*(configuration + 1400) setDelegate:configuration];
    [*(configuration + 1400) setWebView:*(configuration + 1064)];
    [*(configuration + 1400) setReaderController:*(configuration + 296)];
    [*(configuration + 1400) setDialogPresenter:configuration];
    [configuration updateAccessibilityIdentifier];
    v53 = +[Application sharedApplication];
    systemNoteTakingController = [v53 systemNoteTakingController];

    [systemNoteTakingController addObserver:configuration forKeyPath:*MEMORY[0x277D4A900] options:0 context:kTabDocumentObserverContext];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v31 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  if (kTabDocumentObserverContext == context)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v12 = objc_loadWeakRetained(&self->_delegate);
    if (self->_webView == objectCopy || self->_readerWebView == objectCopy)
    {
      if ([pathCopy isEqualToString:@"loading"])
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

      if ([pathCopy isEqualToString:@"URL"])
      {
        [(TabDocument *)self _updateNavigationBarItem];
        [(TabDocument *)self updateTabIconWithDelay:0.1];
        [v12 tabDocumentDidUpdateURL:self];
        goto LABEL_37;
      }

      if ([pathCopy isEqualToString:@"estimatedProgress"])
      {
        [(_SFWebView *)self->_webView estimatedProgress];
        [(TabDocument *)self _loadingControllerEstimatedProgressChangedTo:v24];
        goto LABEL_37;
      }

      if ([pathCopy isEqualToString:@"_networkRequestsInProgress"])
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

      if (([pathCopy isEqualToString:@"hasOnlySecureContent"] & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"_negotiatedLegacyTLS") & 1) == 0)
      {
        if ([pathCopy isEqualToString:@"title"])
        {
          [v12 tabDocumentDidUpdateTitle:self];
          [(TabDocument *)self updateTabTitle];
          goto LABEL_37;
        }

        if (([pathCopy isEqualToString:@"canGoBack"] & 1) == 0 && !objc_msgSend(pathCopy, "isEqualToString:", @"canGoForward"))
        {
          if ([pathCopy isEqualToString:@"_webProcessIsResponsive"])
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

          else if (([pathCopy isEqualToString:@"themeColor"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"underPageBackgroundColor") & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"_sampledPageTopColor") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"_sampledTopFixedPositionContentColor"))
          {
            [v12 tabDocumentDidUpdateThemeColor:self];
          }

          else if ([pathCopy isEqualToString:@"_isPlayingAudio"])
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
      if (self->_URLSpoofingMitigator != objectCopy)
      {
        v13 = +[Application sharedApplication];
        systemNoteTakingController = [v13 systemNoteTakingController];

        if (systemNoteTakingController == objectCopy && [pathCopy isEqualToString:*MEMORY[0x277D4A900]])
        {
          v15 = +[Application sharedApplication];
          systemNoteTakingController2 = [v15 systemNoteTakingController];
          isNotesPIPVisible = [systemNoteTakingController2 isNotesPIPVisible];

          v18 = WBS_LOG_CHANNEL_PREFIXContinuity();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = @"not visible";
            if (isNotesPIPVisible)
            {
              v19 = @"visible";
            }

            v27 = 134218242;
            selfCopy = self;
            v29 = 2112;
            v30 = v19;
            _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_INFO, "TabDocument: %p Notes PIP becomes %@", &v27, 0x16u);
          }

          if (isNotesPIPVisible)
          {
            [(TabDocument *)self restoreAllHighlightsData];
          }
        }

        goto LABEL_37;
      }

      if (![pathCopy isEqualToString:@"UIShouldReflectCommittedURLInsteadOfCurrentURL"])
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

- (void)setAudioState:(int)state needsDelay:
{
  if (self && *(self + 488) != a2)
  {
    *(self + 488) = a2;
    *(self + 496) = 1;
    if (a2)
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    else
    {
      date = 0;
    }

    [self setAudioStartTimestamp:date];
    if (a2)
    {
    }

    [(TabDocument *)self mediaStateDidChangeNeedsDelay:state];
  }
}

- (void)_loadingControllerDidStopLoadingWithError:(uint64_t)error
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (error)
  {
    isLoading = [*(error + 1064) isLoading];
    if ((isLoading & 1) == 0)
    {
      *(error + 707) = 0;
      *(error + 979) = 0;
    }

    *(error + 711) = 1;
    [error updateTabTitle];
    [(TabDocument *)error _updateNavigationBarItem];
    if (([error isShowingErrorPage] & 1) == 0)
    {
      v5 = [(TabDocument *)error pageLoadStatusForNavigationError:v3];
      mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
      [mEMORY[0x277D499B8] didFinishPageLoadWithPageLoadStatus:v5];
    }

    WeakRetained = objc_loadWeakRetained((error + 1248));
    [WeakRetained tabDocument:error didFinishLoadingWithError:v3 != 0];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [*(error + 264) copy];
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
            [v12 tabDocumentDidFinishLoading:error];
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
      [*(error + 1304) handleFrameLoadError:v3];
      [*(error + 176) cancelFluidProgressWithProgressStateSource:error];
      if (isLoading)
      {
        [*(error + 176) startFluidProgressWithProgressStateSource:error];
        [*(error + 1064) estimatedProgress];
        [(TabDocument *)error _loadingControllerEstimatedProgressChangedTo:v13];
      }

      v14 = objc_loadWeakRetained((error + 1256));
      [v14 didFailLoadingResource:error];

      testController = [*(error + 1280) testController];
      v16 = testController;
      if (testController)
      {
        [testController autoFillController:*(error + 1280) didFailFormMetadataForTesting:v3];
      }
    }
  }
}

- (uint64_t)pageLoadStatusForNavigationError:(uint64_t)error
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (error && v3)
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

- (void)_updateFallbackURLsForUserTypedAddress:(char)address userExplicitlyRequestedAsHTTP:
{
  v5 = a2;
  if (self)
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = *(self + 128);
    *(self + 128) = array;

    *(self + 136) = address ^ 1;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __84__TabDocument__updateFallbackURLsForUserTypedAddress_userExplicitlyRequestedAsHTTP___block_invoke;
    v10[3] = &unk_2781DABD8;
    v10[4] = self;
    [MEMORY[0x277CBEBC0] safari_enumeratePossibleURLsForUserTypedString:v5 withBlock:v10];
    if ([*(self + 128) count] >= 2)
    {
      v8 = *(self + 128);
      firstObject = [v8 firstObject];
      [v8 addObject:firstObject];
    }
  }
}

- (uint64_t)_loadNextFallbackURLWithWebClip:(void *)clip navigation:
{
  v5 = a2;
  if (self)
  {
    firstObject = [*(self + 128) firstObject];
    if (firstObject && ([(TabDocument *)self _trySwitchingToPinnedTabOnNavigationToURL:firstObject]& 1) == 0)
    {
      [*(self + 128) removeObjectAtIndex:0];
      v8 = [MEMORY[0x277CBABA0] safari_nonAppInitiatedRequestWithURL:firstObject];
      v9 = [(TabDocument *)self _requestBySettingAdvancedPrivacyProtectionsFlag:v8];

      objc_setAssociatedObject(v9, kWebClipToNSURLRequestAssociationKey, v5, 1);
      v10 = *(self + 1064);
      if (v10 && (![v10 _webProcessIsResponsive] || (objc_msgSend(*(self + 288), "presentedDialog"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "completionHandlerBlocksWebProcess"), v11, (v12 & 1) != 0)))
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __58__TabDocument__loadNextFallbackURLWithWebClip_navigation___block_invoke;
        v15[3] = &unk_2781D61F8;
        v15[4] = self;
        v16 = v9;
        [(TabDocument *)self _terminateWebProcessIfNeededAndShowCrashBanner:v15 thenDo:?];
      }

      else
      {
        v13 = [*(self + 168) loadRequest:v9 userDriven:1];
        if (clip)
        {
          v13 = v13;
          *clip = v13;
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

- (void)goToBackForwardListItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__TabDocument_goToBackForwardListItem___block_invoke;
    aBlock[3] = &unk_2781DAB60;
    objc_copyWeak(&v8, &location);
    v7 = itemCopy;
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

- (void)_goToBackForwardListItem:(char)item shouldDismissReader:
{
  v5 = a2;
  v6 = v5;
  if (self && v5)
  {
    *(self + 712) = 1;
    *(self + 710) = item;
    v7 = +[Application sharedApplication];
    v8 = [v6 URL];
    [v7 checkExtendedLaunchPageLoad:v8 forTabDocument:self];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__TabDocument__goToBackForwardListItem_shouldDismissReader___block_invoke;
    v9[3] = &unk_2781D61F8;
    v9[4] = self;
    v10 = v6;
    [(TabDocument *)self _terminateWebProcessIfNeededAndShowCrashBanner:v9 thenDo:?];
  }
}

- (void)clearBackForwardListKeepingCurrentItem
{
  backForwardList = [(_SFWebView *)self->_webView backForwardList];
  [backForwardList _clear];
}

- (void)clearBackForwardList
{
  backForwardList = [(_SFWebView *)self->_webView backForwardList];
  [backForwardList _removeAllItems];
}

- (void)hibernate
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  selfCopy = self;
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
    _sessionState = self->_savedSessionState;
  }

  else
  {
    _sessionState = [(_SFWebView *)self->_webView _sessionState];
  }

  return _sessionState;
}

- (void)restoreSessionState:(id)state andNavigate:(BOOL)navigate fromSafariViewService:(BOOL)service
{
  serviceCopy = service;
  navigateCopy = navigate;
  stateCopy = state;
  v10 = stateCopy;
  if (self->_hibernated)
  {
    objc_storeStrong(&self->_savedSessionState, state);
  }

  else
  {
    v11 = 1;
    if (serviceCopy)
    {
      v11 = 2;
    }

    self->_sessionStateRestorationSource = v11;
    if (navigateCopy)
    {
      self->_externalAppRedirectState = 4;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__TabDocument_restoreSessionState_andNavigate_fromSafariViewService___block_invoke;
    v12[3] = &unk_2781D63D0;
    v12[4] = self;
    v13 = stateCopy;
    v14 = navigateCopy;
    [(TabDocument *)self _terminateWebProcessIfNeededAndShowCrashBanner:v12 thenDo:?];
  }
}

- (void)_loadQueuedNavigation:(void *)navigation
{
  v3 = a2;
  if (navigation)
  {
    v4 = MEMORY[0x277CBEBC0];
    v12 = v3;
    localAttributes = [v3 localAttributes];
    queuedNavigation = [localAttributes queuedNavigation];
    v7 = [queuedNavigation objectForKeyedSubscript:@"url"];
    v8 = [v4 URLWithString:v7];

    localAttributes2 = [v12 localAttributes];
    queuedNavigation2 = [localAttributes2 queuedNavigation];
    v11 = [queuedNavigation2 objectForKeyedSubscript:@"title"];

    [navigation loadURL:v8 title:v11 skipSyncableTabUpdates:0];
    v3 = v12;
  }
}

- (void)restoreStateFromTab:(id)tab
{
  tabCopy = tab;
  localAttributes = [tabCopy localAttributes];
  sessionStateData = [localAttributes sessionStateData];

  if (sessionStateData)
  {
    v7 = [objc_alloc(MEMORY[0x277CE38A0]) initWithData:sessionStateData];
    if (v7)
    {
      localAttributes2 = [tabCopy localAttributes];
      queuedNavigation = [localAttributes2 queuedNavigation];
      [(TabDocument *)self restoreSessionState:v7 andNavigate:queuedNavigation == 0];
    }

    localAttributes3 = [tabCopy localAttributes];
    queuedNavigation2 = [localAttributes3 queuedNavigation];

    if (queuedNavigation2)
    {
      [(TabDocument *)self _loadQueuedNavigation:tabCopy];
    }

    goto LABEL_6;
  }

  if (!self->_hibernated)
  {
    localAttributes4 = [tabCopy localAttributes];
    queuedNavigation3 = [localAttributes4 queuedNavigation];

    if (!queuedNavigation3)
    {
      v7 = [tabCopy url];
      title = [tabCopy title];
      [(TabDocument *)self loadURL:v7 title:title skipSyncableTabUpdates:0];

LABEL_6:
      goto LABEL_10;
    }

    [(TabDocument *)self _loadQueuedNavigation:tabCopy];
  }

LABEL_10:
  -[TabDocument setPinned:](self, "setPinned:", [tabCopy isPinned]);
  pinnedTitle = [tabCopy pinnedTitle];
  v15 = [pinnedTitle copy];
  pinnedTitle = self->_pinnedTitle;
  self->_pinnedTitle = v15;

  pinnedURL = [tabCopy pinnedURL];
  v18 = [pinnedURL copy];
  pinnedURL = self->_pinnedURL;
  self->_pinnedURL = v18;

  objc_storeStrong(&self->_tabGroupTab, tab);
  uuid = [(WBTab *)self->_tabGroupTab uuid];
  [(TabDocument *)&self->super.isa _activeParticipantsDidUpdateInTabWithUUID:uuid];
}

- (BOOL)mustShowBarsForBackForwardListItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (self->_parentTabItem)
  {
    safari_navigationSnapshotRequiresBars = 1;
  }

  else
  {
    safari_navigationSnapshotRequiresBars = [(WKBackForwardListItem *)itemCopy safari_navigationSnapshotRequiresBars];
  }

  return safari_navigationSnapshotRequiresBars;
}

- (BOOL)hasFailedURL
{
  _unreachableURL = [(_SFWebView *)self->_webView _unreachableURL];
  v3 = _unreachableURL != 0;

  return v3;
}

- (void)setAllowsRemoteInspection:(BOOL)inspection
{
  if (self->_allowsInspectionWhenUnlocked != inspection)
  {
    self->_allowsInspectionWhenUnlocked = inspection;
    allowsRemoteInspection = [(TabDocument *)self allowsRemoteInspection];
    [(_SFWebView *)self->_webView setInspectable:allowsRemoteInspection];
    readerWebView = self->_readerWebView;

    [(_SFWebView *)readerWebView setInspectable:allowsRemoteInspection];
  }
}

- (void)presentNextDialogIfNeeded
{
  [(TabDocument *)self _authenticateForAutoFillIfNeeded];
  dialogController = self->_dialogController;

  [(SFDialogController *)dialogController presentNextDialogIfNeeded];
}

- (void)_getAuthenticationForAutoFillController:(void *)controller withCompletion:
{
  v5 = a2;
  controllerCopy = controller;
  if (self)
  {
    authenticationContext = [v5 authenticationContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__TabDocument__getAuthenticationForAutoFillController_withCompletion___block_invoke;
    v8[3] = &unk_2781DB2D8;
    v10 = controllerCopy;
    v9 = v5;
    [authenticationContext authenticateForClient:v9 userInitiated:1 completion:v8];
  }
}

id __39__TabDocument__addTitlePrefixToString___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) simplifiedIdentifierForDisplayInTabTitle:a2];

  return v2;
}

- (void)dataForQuickLookDocument:(id)document completionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TabDocument_dataForQuickLookDocument_completionHandler___block_invoke;
  block[3] = &unk_2781DAC50;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (id)suggestedFileNameForQuickLookDocument:(id)document
{
  _sf_suggestedFilename = [(_SFWebView *)self->_webView _sf_suggestedFilename];

  return _sf_suggestedFilename;
}

- (void)loadTestURL:(id)l withInjectedBundle:(BOOL)bundle withCallback:(id)callback pagesNeedingMemoryWarningSent:(id)sent
{
  bundleCopy = bundle;
  callbackCopy = callback;
  sentCopy = sent;
  v11 = [MEMORY[0x277CBABA0] safari_nonAppInitiatedRequestWithURL:l];
  [(TabDocument *)self clearPageLoadStatistics];
  v12 = [[PageLoadTestStatistics alloc] initWithInjectedBundle:bundleCopy withCallback:callbackCopy];
  pageLoadStatistics = self->_pageLoadStatistics;
  self->_pageLoadStatistics = v12;

  if (!self->_pageLoadTest)
  {
    v14 = [[PageLoadTest alloc] initWithTabDocument:self pagesNeedingMemoryWarningSent:sentCopy];
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
    webView = [(TabDocument *)self webView];
    v6 = [v4 initWithWebView:webView];
    v7 = self->_sharingExtensionController;
    self->_sharingExtensionController = v6;

    sharingExtensionController = self->_sharingExtensionController;
  }

  return sharingExtensionController;
}

- (void)saveWebArchiveToPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  webView = self->_webView;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__TabDocument_saveWebArchiveToPath_completion___block_invoke;
  v11[3] = &unk_2781DAC78;
  v12 = pathCopy;
  v13 = completionCopy;
  v9 = pathCopy;
  v10 = completionCopy;
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

- (void)setSourceApplicationBundleIdentifierForNextCommit:(id)commit
{
  commitCopy = commit;
  v4 = [commitCopy copy];
  sourceApplicationBundleIdentifierForNextCommit = self->_sourceApplicationBundleIdentifierForNextCommit;
  self->_sourceApplicationBundleIdentifierForNextCommit = v4;

  if (commitCopy)
  {
    self->_sourceApplicationIsValid = 1;
  }
}

- (NSUUID)ownerUUID
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  uUID = [WeakRetained UUID];

  return uUID;
}

- (SFTabStateData)tabStateData
{
  v3 = objc_alloc_init(MEMORY[0x277D28DC0]);
  uRLForStatePersisting = [(TabDocument *)self URLForStatePersisting];
  safari_originalDataAsString = [uRLForStatePersisting safari_originalDataAsString];
  v6 = safari_originalDataAsString;
  v7 = &stru_2827BF158;
  if (safari_originalDataAsString)
  {
    v7 = safari_originalDataAsString;
  }

  v8 = v7;

  uuid = [(TabDocument *)self uuid];
  uUIDString = [uuid UUIDString];
  [v3 setUUIDString:uUIDString];

  _titleForStatePersistingForTabStateData = [(TabDocument *)&self->super.isa _titleForStatePersistingForTabStateData];
  [v3 setTitle:_titleForStatePersistingForTabStateData];

  [v3 setUrl:v8];
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
    isFileURL = [uRLForStatePersisting isFileURL];
    uRLString = v8;
    if (isFileURL)
    {
      uRLString = [(TabDocument *)self URLString];
    }

    [v3 setUserVisibleURL:uRLString];
    if (isFileURL)
    {
    }

    [(TabDocument *)self lastViewedTime];
    [v3 setLastViewedTime:?];
    [v3 setReadingListBookmarkID:{-[TabDocument readingListBookmarkID](self, "readingListBookmarkID")}];
    if (self->_hibernated)
    {
      shouldRestoreReader = [(TabDocument *)self shouldRestoreReader];
    }

    else
    {
      shouldRestoreReader = [(TabDocument *)self isShowingReader];
    }

    [v3 setShowingReader:shouldRestoreReader];
    [v3 setReaderViewTopScrollOffset:{-[TabDocument readerViewTopScrollOffset](self, "readerViewTopScrollOffset")}];
    [v3 setDisplayingStandaloneImage:{-[TabDocument isDisplayingStandaloneImage](self, "isDisplayingStandaloneImage")}];
    wasOpenedFromLink = [(TabDocument *)self wasOpenedFromLink];
  }

  [v3 setWasOpenedFromLink:wasOpenedFromLink];
  [v3 setPrivateBrowsing:{-[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")}];
  _sessionStateWithoutParentItem = [(TabDocument *)&self->super.isa _sessionStateWithoutParentItem];
  data = [_sessionStateWithoutParentItem data];
  [v3 setSessionStateData:data];

  ownerUUID = [(TabDocument *)self ownerUUID];
  uUIDString2 = [ownerUUID UUIDString];
  [v3 setOwningBrowserWindowUUIDString:uUIDString2];

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
  sessionStateData = [v3 sessionStateData];
  [v3 setUncompressedSessionStateDataSize:{objc_msgSend(sessionStateData, "length")}];

  tabGroupTab = [(TabDocument *)self tabGroupTab];
  tabGroupUUID = [tabGroupTab tabGroupUUID];
  [v3 setTabGroupUUID:tabGroupUUID];

  profileIdentifier = [(TabDocument *)self profileIdentifier];
  [v3 setProfileIdentifier:profileIdentifier];

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

- (void)_checkForAppLinkWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = [*(completion + 1064) URL];
    if ([v4 safari_isHTTPFamilyURL] && !objc_msgSend(completion, "isShowingErrorPage"))
    {
      backForwardList = [*(completion + 1064) backForwardList];
      currentItem = [backForwardList currentItem];
      v8 = *(completion + 320);
      *(completion + 320) = currentItem;

      v9 = *(completion + 958);
      v10 = *(completion + 1216);
      v11 = [objc_alloc(MEMORY[0x277D4A6F0]) initWithURL:v4];
      objc_initWeak(&location, completion);
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
      v5 = *(completion + 320);
      *(completion + 320) = 0;

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
  if (self)
  {
    selfCopy = self;
    isPrivateBrowsingEnabled = [self isPrivateBrowsingEnabled];
    v3 = *(selfCopy + 640);
    if (isPrivateBrowsingEnabled)
    {
      if (!v3)
      {
        v4 = objc_alloc_init(MEMORY[0x277D49EE8]);
        profileIdentifier = *(selfCopy + 640);
        *(selfCopy + 640) = v4;
LABEL_7:

        v3 = *(selfCopy + 640);
      }
    }

    else if (!v3)
    {
      v6 = MEMORY[0x277D49EF0];
      profileIdentifier = [(TabDocument *)selfCopy profileIdentifier];
      v7 = [v6 storeForProfileWithIdentifier:profileIdentifier];
      v8 = *(selfCopy + 640);
      *(selfCopy + 640) = v7;

      goto LABEL_7;
    }

    self = v3;
  }

  return self;
}

- (void)_displayAttributionBannerForHighlight:(unsigned __int8 *)highlight
{
  v3 = a2;
  if (highlight)
  {
    objc_initWeak(&location, highlight);
    v4 = [objc_alloc(MEMORY[0x277D28C88]) initWithHighlight:v3];
    identifier = [v3 identifier];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__TabDocument__displayAttributionBannerForHighlight___block_invoke;
    v9[3] = &unk_2781DAD68;
    objc_copyWeak(&v11, &location);
    v6 = identifier;
    v10 = v6;
    [v4 setCloseActionHandler:v9];
    [v4 setInitiallyBehindNavigationBar:highlight[958]];
    [(TabDocument *)highlight _setAppBannerWhenPainted:v4];
    v7 = +[Application sharedApplication];
    highlightManager = [v7 highlightManager];
    [highlightManager setPresenter:highlight forHighlightIdentifier:v6];

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
  if (!self || ([self isPrivateBrowsingEnabled] & 1) != 0)
  {
    return;
  }

  v12 = [*(self + 1064) URL];
  v2 = +[Application sharedApplication];
  highlightManager = [v2 highlightManager];

  if (![v12 safari_isHTTPFamilyURL] || (objc_msgSend(self, "isShowingErrorPage") & 1) != 0)
  {
    goto LABEL_6;
  }

  highlights = [highlightManager highlights];
  if ([highlights count])
  {
  }

  else
  {
    isFetchingHighlights = [highlightManager isFetchingHighlights];

    if ((isFetchingHighlights & 1) == 0)
    {
LABEL_6:
      safari_highlight = *(self + 328);
      *(self + 328) = 0;
      goto LABEL_7;
    }
  }

  backForwardList = [*(self + 1064) backForwardList];
  currentItem = [backForwardList currentItem];
  safari_highlight = [currentItem safari_highlight];

  if (safari_highlight)
  {
    [(TabDocument *)self _displayAttributionBannerForHighlight:safari_highlight];
  }

  else
  {
    backForwardList2 = [*(self + 1064) backForwardList];
    currentItem2 = [backForwardList2 currentItem];
    v11 = *(self + 328);
    *(self + 328) = currentItem2;

    [highlightManager updateHighlightForAttributionPresenter:self];
  }

LABEL_7:
}

- (void)displayAttributionBannerForHighlightIfNeeded:(id)needed
{
  neededCopy = needed;
  if (![(TabDocument *)self isPrivateBrowsingEnabled])
  {
    backForwardList = [(_SFWebView *)self->_webView backForwardList];
    currentItem = [backForwardList currentItem];
    backForwardListItemForCurrentHighlightBannerCheck = self->_backForwardListItemForCurrentHighlightBannerCheck;

    if (currentItem == backForwardListItemForCurrentHighlightBannerCheck)
    {
      if (!neededCopy || (self->_appBanner || self->_appBannerPendingFirstPaint) && !self->_appBannerRemovalWasDeferred)
      {
        v11 = self->_backForwardListItemForCurrentHighlightBannerCheck;
        self->_backForwardListItemForCurrentHighlightBannerCheck = 0;
      }

      else
      {
        objc_initWeak(&location, self);
        identifier = [neededCopy identifier];
        mEMORY[0x277D28C90] = [MEMORY[0x277D28C90] sharedTracker];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __60__TabDocument_displayAttributionBannerForHighlightIfNeeded___block_invoke;
        v12[3] = &unk_2781DAD90;
        objc_copyWeak(&v15, &location);
        v10 = identifier;
        v13 = v10;
        v14 = neededCopy;
        [mEMORY[0x277D28C90] isBannerBlockedForHighlight:v10 completion:v12];

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
  backForwardList = [(_SFWebView *)self->_webView backForwardList];
  currentItem = [backForwardList currentItem];

  return currentItem;
}

- (void)hideBannerForHighlightIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    highlight = [(SFPinnableBanner *)self->_appBanner highlight];
    identifier = [highlight identifier];
    v6 = [identifierCopy isEqualToString:identifier];

    if (v6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained removeAppBannerFromTabDocument:self animated:1];

      appBanner = self->_appBanner;
      self->_appBanner = 0;

      backForwardList = [(_SFWebView *)self->_webView backForwardList];
      currentItem = [backForwardList currentItem];
      [currentItem safari_setHighlight:0];
    }
  }
}

- (void)_webView:(id)view mouseDidMoveOverElement:(id)element withFlags:(int64_t)flags userInfo:(id)info
{
  viewCopy = view;
  elementCopy = element;
  infoCopy = info;
  if (infoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      rootViewController = [WeakRetained rootViewController];
      statusBarView = [rootViewController statusBarView];

      v15 = [infoCopy safari_URLForKey:*MEMORY[0x277CDB9D8]];
      v16 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CDB9C8]];
      v17 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CDB9D0]];
      v18 = objc_alloc(MEMORY[0x277D28CA8]);
      v19 = [(TabDocument *)self URL];
      v20 = [v18 initWithHoveredLinkURL:v15 forCurrentURL:v19 modifierFlags:flags frame:v16 targetFrame:v17];
      [statusBarView setStatusMessage:v20];
    }
  }
}

- (void)addPassesViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocument:self dismissViewControllerAnimated:finishCopy];

  v6 = [(TabDocument *)self URL];
  if (v6)
  {
  }

  else if (![(TabDocument *)self isClosed])
  {

    [(TabDocument *)self _closeTabDocumentAnimated:0];
  }
}

- (void)_webView:(id)view storeAppHighlight:(id)highlight inNewGroup:(BOOL)group requestOriginatedInApp:(BOOL)app
{
  appCopy = app;
  groupCopy = group;
  viewCopy = view;
  highlightCopy = highlight;
  v11 = +[Application sharedApplication];
  systemNoteTakingController = [v11 systemNoteTakingController];

  v13 = objc_alloc(MEMORY[0x277CC1EF0]);
  v14 = [v13 initWithActivityType:*MEMORY[0x277CCA850]];
  title = [(NSUserActivity *)self->_userActivity title];
  [v14 setTitle:title];

  webpageURL = [(NSUserActivity *)self->_userActivity webpageURL];
  [v14 setWebpageURL:webpageURL];

  highlight = [highlightCopy highlight];
  text = [highlightCopy text];
  image = [highlightCopy image];
  [systemNoteTakingController saveHighlightsData:highlight selectedText:text selectedImage:image newGroup:groupCopy originatedInApp:appCopy webView:viewCopy userActivity:v14];
}

- (void)sfWebViewDidChangeSafeAreaInsets:(id)insets
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentDidChangeSafeAreaInsets:self];
}

- (void)sfWebViewDidDismissFindOnPage:(id)page
{
  if ([(TabDocument *)self isPrivateBrowsingEnabled])
  {
    v4 = persistedFindInteractionSearchText;
    findInteraction = [(_SFWebView *)self->_webView findInteraction];
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = &stru_2827BF158;
    }

    v11 = findInteraction;
    [findInteraction setSearchText:v6];

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
    findInteraction2 = [(_SFWebView *)self->_webView findInteraction];
    searchText = [findInteraction2 searchText];
    v10 = persistedFindInteractionSearchText;
    persistedFindInteractionSearchText = searchText;
  }
}

- (id)sfWebView:(id)view didStartDownload:(id)download
{
  downloadCopy = download;
  mEMORY[0x277CDB7A0] = [MEMORY[0x277CDB7A0] sharedDownloadDispatcher];
  v7 = [mEMORY[0x277CDB7A0] downloadFromWKDownload:downloadCopy userInitiatedAction:self->_lastUserInitiatedAction];
  mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
  [v7 setDelegate:mEMORY[0x277CDB7A8]];
  [mEMORY[0x277CDB7A8] deferAddingDownloadWhenStarted:v7];
  objc_storeStrong(&self->_activeDownload, v7);

  return v7;
}

- (id)overrideUndoManagerForSFWebView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained overridesUndoManagerForClosedTabs])
  {
    tabController = [WeakRetained tabController];
    undoManager = [tabController undoManager];
  }

  else
  {
    undoManager = 0;
  }

  return undoManager;
}

- (BOOL)sfWebViewShouldFillStringForFind:(id)find
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

- (BOOL)sfWebViewCanFindNextOrPrevious:(id)previous
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
  selfCopy = self;
  browserController = [(TabDocument *)self browserController];
  tabCollectionViewProvider = [browserController tabCollectionViewProvider];
  tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];

  isActive = [selfCopy isActive];
  if (isActive)
  {
    selfCopy = [MEMORY[0x277D75128] sharedApplication];
    if ([selfCopy applicationState] != 2)
    {
      v8 = 0;
LABEL_9:

      goto LABEL_10;
    }
  }

  v7 = tabThumbnailCollectionView;
  v8 = [v7 presentationState] != 1 && objc_msgSend(v7, "presentationState") != 2;

  if (isActive)
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
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  browserWindowController = [WeakRetained browserWindowController];
  tabsWithSound = [browserWindowController tabsWithSound];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__TabDocument_atLeastOneOtherTabPlayingAudio__block_invoke;
  v7[3] = &unk_2781D6F98;
  v7[4] = selfCopy;
  LOBYTE(selfCopy) = [tabsWithSound safari_containsObjectPassingTest:v7];

  return selfCopy;
}

- (unint64_t)numberOfOtherUnmutedTabsPlayingAudio
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  browserWindowController = [WeakRetained browserWindowController];
  tabsWithSound = [browserWindowController tabsWithSound];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__TabDocument_numberOfOtherUnmutedTabsPlayingAudio__block_invoke;
  v9[3] = &unk_2781DADB8;
  v9[4] = self;
  v6 = [tabsWithSound indexesOfObjectsPassingTest:v9];
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
  browserWindowController = [WeakRetained browserWindowController];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  tabsWithSound = [browserWindowController tabsWithSound];
  v6 = [tabsWithSound countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(tabsWithSound);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (v9 != self)
        {
          [(TabDocument *)v9 mute];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [tabsWithSound countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)unmuteOtherTabs
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  browserWindowController = [WeakRetained browserWindowController];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  tabsWithSound = [browserWindowController tabsWithSound];
  v6 = [tabsWithSound countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(tabsWithSound);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (v9 != self)
        {
          [(TabDocument *)v9 unmute];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [tabsWithSound countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (NSString)tabGroupUUID
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  tabGroups = [tabController tabGroups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__TabDocument_tabGroupUUID__block_invoke;
  v9[3] = &unk_2781DAE08;
  v9[4] = self;
  v6 = [tabGroups safari_firstObjectPassingTest:v9];

  uuid = [v6 uuid];

  return uuid;
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

- (void)mediaStateDidChangeNeedsDelay:(uint64_t)delay
{
  if (!delay)
  {
    return;
  }

  [*(delay + 512) invalidate];
  v4 = *(delay + 512);
  *(delay + 512) = 0;

  v5 = *(delay + 480);
  if ((v5 & 2) != 0)
  {
    delayCopy5 = delay;
    v9 = 2;
  }

  else if (v5)
  {
    delayCopy5 = delay;
    v9 = 1;
  }

  else if ((v5 & 8) != 0)
  {
    delayCopy5 = delay;
    v9 = 4;
  }

  else if ((v5 & 4) != 0)
  {
    delayCopy5 = delay;
    v9 = 3;
  }

  else
  {
    if (*(delay + 488))
    {
      if (a2)
      {
        v6 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:delay target:sel__updateAudioUI_ selector:0 userInfo:0 repeats:1.75];
        v7 = *(delay + 512);
        *(delay + 512) = v6;

        currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
        [currentRunLoop addTimer:*(delay + 512) forMode:*MEMORY[0x277CBE738]];
      }

      else
      {

        [delay _updateAudioUI:0];
      }

      return;
    }

    delayCopy5 = delay;
    v9 = 0;
  }

  [(TabDocument *)delayCopy5 setMediaStateIcon:v9];
}

- (void)addMediaSuspensionReason:(unint64_t)reason
{
  if (reason)
  {
    mediaSuspensionReasons = self->_mediaSuspensionReasons;
    if (!mediaSuspensionReasons)
    {
      webView = [(TabDocument *)self webView];
      [webView _suspendAllMediaPlayback];

      [(TabDocument *)self dismissSiriReaderMediaSessionImmediately:0];
      mediaSuspensionReasons = self->_mediaSuspensionReasons;
    }

    self->_mediaSuspensionReasons = mediaSuspensionReasons | reason;
  }
}

- (void)removeMediaSuspensionReason:(unint64_t)reason
{
  if (reason)
  {
    v3 = (self->_mediaSuspensionReasons & ~reason) == 0;
    self->_mediaSuspensionReasons &= ~reason;
    if (v3)
    {
      webView = [(TabDocument *)self webView];
      [webView _resumeAllMediaPlayback];
    }
  }
}

- (BOOL)_handleTwoFingerTapOnLinkWithContext:(uint64_t)context
{
  v3 = a2;
  if (context)
  {
    WeakRetained = objc_loadWeakRetained((context + 992));
    navigationAction = [v3 navigationAction];
    request = [navigationAction request];
    v7 = [request URL];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D29270]];

    v10 = [WeakRetained loadURLInNewTab:v7 inBackground:v9];
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    tabCollectionViewProvider = [WeakRetained tabCollectionViewProvider];
    [mEMORY[0x277D499B8] didOpenNewTabWithURLWithTrigger:5 tabCollectionViewType:{objc_msgSend(tabCollectionViewProvider, "visibleTabCollectionViewType")}];

    if (v9)
    {
      webView = [v3 webView];
      navigationAction2 = [v3 navigationAction];
      tabCollectionViewProvider2 = [WeakRetained tabCollectionViewProvider];
      hasTabBar = [tabCollectionViewProvider2 hasTabBar];

      if ((hasTabBar & 1) == 0)
      {
        [navigationAction2 _clickLocationInRootViewCoordinates];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __52__TabDocument__handleTwoFingerTapOnLinkWithContext___block_invoke;
        v18[3] = &unk_2781DAE30;
        v18[4] = context;
        [webView _requestActivatedElementAtPosition:v18 completionBlock:?];
      }
    }
  }

  return context != 0;
}

- (NSArray)mediaStateMuteButtonMenuElements
{
  v25[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  browserWindowController = [WeakRetained browserWindowController];
  tabsWithSound = [browserWindowController tabsWithSound];

  if ([tabsWithSound count])
  {
    v6 = [tabsWithSound count];
    v7 = [tabsWithSound containsObject:self];
    array = [MEMORY[0x277CBEB18] array];
    _muteToggleMenuElement = [(TabDocument *)&self->super.isa _muteToggleMenuElement];
    [array safari_addObjectUnlessNil:_muteToggleMenuElement];
    v10 = v6 - v7;

    v11 = [(TabDocument *)&self->super.isa _muteToggleMenuElementForOtherTabsWithCount:v10];
    [array safari_addObjectUnlessNil:v11];

    array2 = [MEMORY[0x277CBEB18] array];
    if (v10)
    {
      v13 = MEMORY[0x277D750C8];
      v14 = [tabsWithSound count];
      v15 = MEMORY[0x277CCACA8];
      v16 = _WBSLocalizedString();
      v17 = [v15 localizedStringWithFormat:v16, v14];

      v18 = [v13 actionWithTitle:v17 image:0 identifier:0 handler:&__block_literal_global_492];

      [v18 setAttributes:1];
      [array2 addObject:v18];

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __47__TabDocument_mediaStateMuteButtonMenuElements__block_invoke_2;
      v24[3] = &unk_2781DAE58;
      v24[4] = self;
      v19 = [tabsWithSound safari_mapObjectsUsingBlock:v24];
      [array2 addObjectsFromArray:v19];
    }

    v20 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:array];
    v25[0] = v20;
    v21 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:array2];
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
  selfCopy = self;
  if (self)
  {
    mediaStateIcon = [self[138] mediaStateIcon];
    if ((mediaStateIcon - 7) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v3 = mediaStateIcon;
      v4 = SFTitleForTogglingMediaStateIcon();
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __37__TabDocument__muteToggleMenuElement__block_invoke;
      v6[3] = &unk_2781DAE80;
      v6[4] = selfCopy;
      v6[5] = v3;
      selfCopy = [MEMORY[0x277D750C8] actionWithTitle:v4 image:0 identifier:0 handler:v6];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)_muteToggleMenuElementForOtherTabsWithCount:(id *)count
{
  countCopy = count;
  if (count)
  {
    if ([count atLeastOneOtherTabPlayingAudio])
    {
      globalMediaStateIcon = [countCopy[138] globalMediaStateIcon];
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
      v7[4] = countCopy;
      v7[5] = globalMediaStateIcon;
      countCopy = [MEMORY[0x277D750C8] actionWithTitle:v5 image:0 identifier:0 handler:v7];
    }

    else
    {
      countCopy = 0;
    }
  }

  return countCopy;
}

id __47__TabDocument_mediaStateMuteButtonMenuElements__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [(TabDocument *)*(a1 + 32) _actionForSwitchingToTabPlayingAudio:a2];

  return v2;
}

- (id)_actionForSwitchingToTabPlayingAudio:(id *)audio
{
  v3 = a2;
  if (audio)
  {
    objc_initWeak(&location, audio);
    v4 = MEMORY[0x277D750C8];
    title = [v3 title];
    icon = [v3 icon];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__TabDocument__actionForSwitchingToTabPlayingAudio___block_invoke;
    v13[3] = &unk_2781DA9F8;
    objc_copyWeak(&v15, &location);
    v7 = v3;
    v14 = v7;
    v8 = [v4 actionWithTitle:title image:icon identifier:0 handler:v13];

    WeakRetained = objc_loadWeakRetained(audio + 124);
    tabController = [WeakRetained tabController];
    activeTabDocument = [tabController activeTabDocument];

    if (activeTabDocument == v7)
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

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action preferences:(id)preferences decisionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  actionCopy = action;
  preferencesCopy = preferences;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  targetFrame = [actionCopy targetFrame];
  if (targetFrame && ([actionCopy targetFrame], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isMainFrame"), v15, targetFrame, !v16))
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
      selfCopy = self;
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

      [viewCopy _killWebContentProcessAndResetState];
    }

    v20 = 1;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __83__TabDocument_webView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke;
  v23[3] = &unk_2781DAEA8;
  objc_copyWeak(&v26, &location);
  v21 = actionCopy;
  v24 = v21;
  v22 = handlerCopy;
  v25 = v22;
  v27 = v20;
  [(TabDocument *)self _internalWebView:viewCopy decidePolicyForNavigationAction:v21 preferences:preferencesCopy decisionHandler:v23];

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

- (void)_internalWebView:(void *)view decidePolicyForNavigationAction:(void *)action preferences:(void *)preferences decisionHandler:
{
  v93 = a2;
  viewCopy = view;
  actionCopy = action;
  preferencesCopy = preferences;
  if (self)
  {
    request = [viewCopy request];
    v91 = [request URL];
    navigationType = [viewCopy navigationType];
    objc_initWeak(location, self);
    if ((*(self + 1224) & 8) != 0 || *(self + 720) == 1)
    {
      targetFrame = [viewCopy targetFrame];
      isMainFrame = [targetFrame isMainFrame];

      if (isMainFrame)
      {
        v13 = *(self + 544);
        if (v13)
        {
          (*(v13 + 16))(v13, 0);
        }

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke;
        aBlock[3] = &unk_2781DAED0;
        objc_copyWeak(&v124, location);
        v123 = preferencesCopy;
        v120 = v93;
        v121 = viewCopy;
        v122 = actionCopy;
        v14 = _Block_copy(aBlock);
        v15 = *(self + 544);
        *(self + 544) = v14;

        objc_destroyWeak(&v124);
        goto LABEL_93;
      }
    }

    targetFrame2 = [viewCopy targetFrame];
    v86 = targetFrame2;
    if (targetFrame2)
    {
      isMainFrame2 = [targetFrame2 isMainFrame];
    }

    else
    {
      isMainFrame2 = 1;
    }

    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_2;
    v112[3] = &unk_2781DAF20;
    objc_copyWeak(v117, location);
    v84 = preferencesCopy;
    v116 = v84;
    v18 = viewCopy;
    v113 = v18;
    v118 = isMainFrame2;
    v19 = v91;
    v114 = v19;
    v117[1] = navigationType;
    v85 = v93;
    v115 = v85;
    v88 = _Block_copy(v112);
    _userInitiatedAction = [v18 _userInitiatedAction];
    v21 = *(self + 400);
    *(self + 400) = _userInitiatedAction;

    v22 = (*(self + 707) & 1) == 0 && (*(self + 955) & 1) == 0 && *(self + 1240) == 0;
    [*(self + 48) setNavigationSource:v22];
    if ([v18 _syntheticClickType] == 2)
    {
      builder = [objc_alloc(MEMORY[0x277CDB8D0]) initWithWebView:v85 navigationAction:v18];
      if ([(TabDocument *)self _handleTwoFingerTapOnLinkWithContext:builder])
      {
        goto LABEL_17;
      }
    }

    if (navigationType < 2)
    {
      v23 = isMainFrame2;
    }

    else
    {
      v23 = 0;
    }

    if (v23 == 1)
    {
      builder = [MEMORY[0x277D28F40] builder];
      [builder setNavigationType:navigationType];
      absoluteString = [builder navigationIntentWithURL:v19];
      if ([absoluteString policy] == 6)
      {
        WeakRetained = objc_loadWeakRetained((self + 1248));
        v26 = [WeakRetained tabDocumentCanDownloadFile:self];

        if (v26)
        {
          [v18 _clickLocationInRootViewCoordinates];
          v28 = v27;
          v30 = v29;
          v105[0] = MEMORY[0x277D85DD0];
          v105[1] = 3221225472;
          v105[2] = __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_504;
          v105[3] = &unk_2781DAF48;
          v106 = absoluteString;
          selfCopy = self;
          v108 = v85;
          v109 = request;
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

      if ([absoluteString policy])
      {
        if ([absoluteString opensInNewTab])
        {
          v31 = [absoluteString shouldOrderToForeground] ^ 1;
        }

        else
        {
          v31 = 0;
        }

        if ([absoluteString policy] == 5)
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
          v103 = absoluteString;
          selfCopy2 = self;
          [v85 _requestActivatedElementAtPosition:v102 completionBlock:{v35, v37}];
        }

        else
        {
          [self dispatchNavigationIntent:absoluteString];
        }

        (*(v88 + 2))(v88, 0);
        goto LABEL_44;
      }
    }

    if (isMainFrame2 && [v18 safari_isEligibleToSpawnNewTabFromPinnedTab] && objc_msgSend(self, "shouldSpawnNewTabOnNavigationFromPinnedTabWithDestinationURL:", v19))
    {
      builder = [MEMORY[0x277D28F40] builder];
      [builder setNavigationType:navigationType];
      [builder setPrefersOpenInNewTabReusingExistingBlankTabIfPossible:1];
      v32 = [builder navigationIntentWithURL:v19];
      if ([v32 policy])
      {
        [self dispatchNavigationIntent:v32];
        (*(v88 + 2))(v88, 0);

        goto LABEL_92;
      }
    }

    if ([v18 _isUserInitiated])
    {
      *(self + 1240) = 0;
      *(self + 978) = 0;
    }

    builder = objc_loadWeakRetained((self + 992));
    if ([*(self + 1304) crashesSinceLastSuccessfulLoad])
    {
      targetFrame3 = [v18 targetFrame];
      if ([targetFrame3 isMainFrame])
      {
        targetFrame4 = [v18 targetFrame];
        request2 = [targetFrame4 request];
        v41 = [request2 URL];

        if (v41)
        {
          [builder setShowingCrashBanner:0 animated:1];
        }
      }

      else
      {
      }
    }

    if (!request)
    {
LABEL_17:
      (*(v88 + 2))(v88, 0);
LABEL_92:

      objc_destroyWeak(v117);
LABEL_93:
      objc_destroyWeak(location);

      goto LABEL_94;
    }

    v42 = *(self + 707);
    *(self + 905) = v42;
    if ((v42 & 1) == 0)
    {
      *(self + 707) = navigationType != -1;
    }

    if (isMainFrame2 && (([v19 safari_isHTTPFamilyURL] & 1) != 0 || objc_msgSend(v19, "safari_hasScheme:", @"ftp")) && objc_msgSend(v19, "safari_hasUserOrPassword"))
    {
      safari_URLByDeletingUserAndPassword = [v19 safari_URLByDeletingUserAndPassword];
      if (safari_URLByDeletingUserAndPassword)
      {
        if (objc_opt_respondsToSelector())
        {
          v44 = MEMORY[0x277CBABA0];
          safari_URLByDeletingUserAndPassword2 = [v19 safari_URLByDeletingUserAndPassword];
          v46 = [v44 safari_nonAppInitiatedRequestWithURL:safari_URLByDeletingUserAndPassword2];
          [actionCopy _setAlternateRequest:v46];

          (*(v84 + 2))(v84, 1, actionCopy);
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

    readingListBookmarkID = [self readingListBookmarkID];
    sf_isOfflineReadingListURL = [v19 sf_isOfflineReadingListURL];
    if (readingListBookmarkID)
    {
      v49 = sf_isOfflineReadingListURL;
    }

    else
    {
      v49 = 0;
    }

    if (v49 == 1)
    {
      mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      absoluteString = [mainBookmarkCollection bookmarkWithID:readingListBookmarkID];

      if (([absoluteString isFullArchiveAvailable] & 1) == 0)
      {
        (*(v88 + 2))(v88, 0);
        v54 = MEMORY[0x277CBEBC0];
        address = [absoluteString address];
        v56 = [v54 safari_URLWithDataAsString:address];
        v57 = [self loadURL:v56 userDriven:*(self + 707)];

LABEL_44:
        goto LABEL_92;
      }
    }

    if (*(self + 1368) && navigationType != -1)
    {
      [self clearTabReuseURL];
    }

    if ([v18 _sf_shouldAskAboutInsecureFormSubmission])
    {
      v52 = *(self + 1304);
      safari_URLByDeletingUserAndPassword = _WBSLocalizedString();
      [v52 addFormAlertWithTitle:safari_URLByDeletingUserAndPassword decisionHandler:v88];
LABEL_91:

      goto LABEL_92;
    }

    if (navigationType == 4)
    {
      v53 = *(self + 1304);
      safari_URLByDeletingUserAndPassword = WBSLocalizedStringWithValue(@"Are you sure you want to submit this form again?", v51);
      [v53 addFormAlertWithTitle:safari_URLByDeletingUserAndPassword decisionHandler:v88];
      goto LABEL_91;
    }

    _isUserInitiated = [v18 _isUserInitiated];
    if (navigationType)
    {
      v59 = 0;
    }

    else
    {
      v59 = isMainFrame2;
    }

    if (v59 == 1)
    {
      v82 = +[(WBSParsecDSession *)UniversalSearchSession];
      browserController = [self browserController];
      activeSearchEngine = [browserController activeSearchEngine];

      idOfParsecQueryOriginatingFromSearchSuggestion = [builder idOfParsecQueryOriginatingFromSearchSuggestion];
      if (idOfParsecQueryOriginatingFromSearchSuggestion)
      {
        v62 = _isUserInitiated;
      }

      else
      {
        v62 = 0;
      }

      if (v62 == 1)
      {
        committedURL = [self committedURL];
        if ([activeSearchEngine urlIsValidSearch:committedURL])
        {
          v64 = [activeSearchEngine urlIsValidSearch:v19];

          if ((v64 & 1) == 0)
          {
            [v82 sendCBAEngagementFeedback:v19 query:idOfParsecQueryOriginatingFromSearchSuggestion];
          }
        }

        else
        {
        }
      }

      [builder clearParsecQueryOriginatingFromSearchSuggestion];
      targetFrame5 = [v18 targetFrame];
      v66 = [(TabDocument *)self _readingListArchiveNextPageLinkForRequest:request targetFrame:targetFrame5];

      if (v66)
      {
        (*(v88 + 2))(v88, 0);
        v67 = [MEMORY[0x277CBEBC0] fileURLWithPath:v66 isDirectory:0];
        mainBookmarkCollection2 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
        v69 = [mainBookmarkCollection2 bookmarkWithID:{objc_msgSend(self, "readingListBookmarkID")}];
        [(TabDocument *)self _loadURL:v67 fromBookmark:v69];

        goto LABEL_92;
      }
    }

    if (isMainFrame2)
    {
      _originalURL = [v18 _originalURL];
      v71 = *(self + 568);
      *(self + 568) = _originalURL;

      absoluteString = [*(self + 568) absoluteString];
      if (_isUserInitiated)
      {
        safari_bestCurrentURL = [(WebBookmark *)*(self + 312) safari_bestCurrentURL];
        absoluteString2 = [safari_bestCurrentURL absoluteString];
        v74 = [absoluteString2 isEqualToString:absoluteString];

        if ((v74 & 1) == 0)
        {
          v75 = *(self + 312);
          *(self + 312) = 0;
        }

        safari_bestCurrentURL2 = [(WebBookmark *)*(self + 1232) safari_bestCurrentURL];
        absoluteString3 = [safari_bestCurrentURL2 absoluteString];
        v78 = [absoluteString3 isEqualToString:absoluteString];

        if ((v78 & 1) == 0)
        {
          [self setReadingListBookmark:0];
        }
      }

      else if (navigationType == 2)
      {
        v79 = *(self + 312);
        *(self + 312) = 0;
      }

      if ([(TabDocument *)self _isNewDocumentViewNecessaryForURL:v19])
      {
        (*(v84 + 2))(v84, 0, 0);
        v80 = [self loadRequest:request userDriven:*(self + 707)];
        goto LABEL_44;
      }
    }

    if ((*(self + 610) & 1) == 0 && (*(self + 611) & 1) == 0 && ((_isUserInitiated ^ 1) & 1) == 0 && ((isMainFrame2 ^ 1) & 1) == 0)
    {
      [(TabDocument *)self _hidePrivateBrowsingPrivacyProtectionsBannerIfNecessary];
    }

    v81 = *(self + 707);
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __92__TabDocument__internalWebView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_3_518;
    v94[3] = &unk_2781DAF98;
    objc_copyWeak(&v100, location);
    v98 = v84;
    v101 = v81;
    v95 = v85;
    v96 = v18;
    v97 = actionCopy;
    v99 = v88;
    [(TabDocument *)self _determineResultOfLoadingRequest:request inMainFrame:isMainFrame2 userInitiated:(_isUserInitiated | v81) & 1 completionHandler:v94];

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

- (uint64_t)_isNewDocumentViewNecessaryForURL:(void *)l
{
  v3 = a2;
  if (!l)
  {
    goto LABEL_7;
  }

  if (l[170])
  {
    webView = [l webView];
    configuration = [webView configuration];
    preferences = [configuration preferences];
    _isStandalone = [preferences _isStandalone];

    if ((_isStandalone & 1) == 0)
    {
      v10 = 1;
      goto LABEL_13;
    }
  }

  if (([l isShowingErrorPage] & 1) != 0 || (-[TabDocument resultOfLoadingURL:userInitiated:](l, v3, 1), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "type"), v8, v9 <= 4) && ((1 << v9) & 0x19) != 0)
  {
LABEL_7:
    v10 = 0;
  }

  else
  {
    webExtensionsController = [l webExtensionsController];
    v12 = [webExtensionsController canonicalURLForWebExtensionURL:v3];

    webView2 = [l webView];
    _requiredWebExtensionBaseURL = [webView2 _requiredWebExtensionBaseURL];

    safari_isSafariWebExtensionURL = [_requiredWebExtensionBaseURL safari_isSafariWebExtensionURL];
    safari_isSafariWebExtensionURL2 = [v12 safari_isSafariWebExtensionURL];
    if ((safari_isSafariWebExtensionURL & safari_isSafariWebExtensionURL2) == 1)
    {
      host = [_requiredWebExtensionBaseURL host];
      host2 = [v12 host];
      v19 = [host isEqualToString:host2];

      v10 = v19 ^ 1;
    }

    else
    {
      v10 = safari_isSafariWebExtensionURL | safari_isSafariWebExtensionURL2;
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

- (void)_internalWebView:(void *)view decidePolicyForNavigationAction:(void *)action withResult:(uint64_t)result preferences:(void *)preferences decisionHandler:
{
  v51 = a2;
  viewCopy = view;
  actionCopy = action;
  preferencesCopy = preferences;
  if (self)
  {
    targetFrame = [viewCopy targetFrame];
    v14 = targetFrame;
    if (targetFrame)
    {
      isMainFrame = [targetFrame isMainFrame];
    }

    else
    {
      isMainFrame = 1;
    }

    _isUserInitiated = [viewCopy _isUserInitiated];
    WeakRetained = objc_loadWeakRetained((self + 1248));
    if (((isMainFrame | _isUserInitiated) & 1) == 0 && [actionCopy isRedirectToAppleServices])
    {
      preferencesCopy[2](preferencesCopy, 0);
LABEL_52:

      goto LABEL_53;
    }

    request = [viewCopy request];
    v50 = [request URL];
    type = [actionCopy type];
    v19 = 0;
    if (type > 1)
    {
      if (type == 2)
      {
        preferencesCopy[2](preferencesCopy, 0);
        v20 = [actionCopy URL];
        v21 = [(TabDocument *)self _loadURLInternal:v20 userDriven:1];

LABEL_51:
        goto LABEL_52;
      }

      if (type != 3)
      {
        if (type == 4)
        {
          [*(self + 1304) addDisallowedFileURLAlert];
LABEL_49:
          v19 = 0;
          goto LABEL_50;
        }

        goto LABEL_50;
      }

      v22 = *(self + 979);
      preferencesCopy[2](preferencesCopy, 0);
      if (!isMainFrame || ![viewCopy _shouldOpenExternalSchemes])
      {
        goto LABEL_51;
      }

      *(self + 980) = v22;
      sourceFrame = [viewCopy sourceFrame];
      v24 = v51;
      webView = [sourceFrame webView];

      v48 = webView;
      if (webView)
      {
        v26 = webView == v51;
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

      _committedURL = [v24 _committedURL];

      if ((HIDWORD(v46) & ((_committedURL != 0) | v46)) == 1)
      {
        v41 = [TabDocument tabDocumentForWKWebView:v48];
        [v41 loadWindowDotOpenExternalNavigationResult:actionCopy fromOriginalRequest:request];

        [WeakRetained tabDocumentDidCancelRedirectToExternalApplication:self];
      }

      else
      {
        if (_isUserInitiated)
        {
          v42 = 2;
        }

        else if (*(self + 1296))
        {
          v42 = 2;
        }

        else
        {
          v42 = 3;
        }

        if (*(self + 743) == 1)
        {
          if (!*(self + 664))
          {
            v42 = 0;
          }

          *(self + 743) = 0;
        }

        _userInitiatedAction = [viewCopy _userInitiatedAction];
        [(TabDocument *)self _redirectToExternalNavigationResult:actionCopy fromOriginalRequest:request navigationAction:viewCopy promptPolicy:v42 isMainFrame:1 userAction:_userInitiatedAction];
      }

      *(self + 980) = 0;
      v44 = v48;
LABEL_72:

      goto LABEL_51;
    }

    if (!type)
    {
      v29 = [actionCopy URL];
      safari_hasFeedScheme = [v29 safari_hasFeedScheme];

      if (safari_hasFeedScheme)
      {
        [(TabDocument *)self _addNoFeedAppSupportAlert];
      }

      else
      {
        v31 = [actionCopy URL];
        _webkit_isJavaScriptURL = [v31 _webkit_isJavaScriptURL];

        if (_webkit_isJavaScriptURL)
        {
          [*(self + 1304) addDisallowedUseOfJavaScriptAlert];
        }

        else if (isMainFrame)
        {
          [*(self + 1304) addInvalidURLAlert];
        }
      }

      goto LABEL_49;
    }

    if (type != 1)
    {
LABEL_50:
      preferencesCopy[2](preferencesCopy, v19);
      goto LABEL_51;
    }

    if (!isMainFrame)
    {
      goto LABEL_46;
    }

    if ([WeakRetained tabDocumentIsBackgroundPreloading:self] && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(MEMORY[0x277CBEBC0], "_web_willPerformSOKerberosAuthorizationWithURL:", v50))
    {
      if ([WeakRetained tabDocumentShouldHandleAuthentication:self])
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v33 = _isUserInitiated ^ 1;
    if (!v14)
    {
      v33 = 1;
    }

    if ((v33 & 1) == 0)
    {
      [WeakRetained willStartLoadFromUserTap:self];
    }

    if (![viewCopy _shouldOpenAppLinks])
    {
LABEL_46:
      v19 = 3;
      goto LABEL_50;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __103__TabDocument__internalWebView_decidePolicyForNavigationAction_withResult_preferences_decisionHandler___block_invoke;
    aBlock[3] = &unk_2781DAFE8;
    aBlock[4] = self;
    v49 = preferencesCopy;
    v64 = v49;
    v61 = viewCopy;
    v34 = v50;
    v62 = v34;
    v65 = _isUserInitiated;
    v63 = request;
    v66 = isMainFrame;
    v35 = _Block_copy(aBlock);
    if (*(self + 1296))
    {
      if (([v34 isEqual:?] & 1) != 0 || (v36 = *(self + 1216)) != 0 && (objc_msgSend(v36, "isEqualToString:", @"com.apple.springboard") & 1) == 0)
      {
        v49[2](v49, 3);
LABEL_62:

        v44 = v64;
        goto LABEL_72;
      }

      v37 = [objc_alloc(MEMORY[0x277D4A6F0]) initWithURL:*(self + 1296)];
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

- (void)_didDecideNavigationPolicy:(void *)policy forNavigationResponse:
{
  policyCopy = policy;
  v6 = policyCopy;
  if (self)
  {
    if (a2 == 1)
    {
      v18 = policyCopy;
      isForMainFrame = [policyCopy isForMainFrame];
      v6 = v18;
      if (isForMainFrame)
      {
        _frame = [v18 _frame];
        webView = [_frame webView];
        v10 = self[133];

        v6 = v18;
        if (webView == v10)
        {
          _sf_explicitSuggestedFilename = [v18 _sf_explicitSuggestedFilename];
          v12 = self[95];
          self[95] = _sf_explicitSuggestedFilename;

          isPrivate = [self isPrivate];
          v6 = v18;
          if ((isPrivate & 1) == 0)
          {
            response = [v18 response];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              response2 = [v18 response];
              v16 = [response2 URL];
              safari_isHTTPFamilyURL = [v16 safari_isHTTPFamilyURL];

              v6 = v18;
              if (!safari_isHTTPFamilyURL)
              {
                goto LABEL_10;
              }

              response = [v18 response];
              [self donateCurrentNavigationWithNavigationResponse:response];
            }

            v6 = v18;
          }
        }
      }
    }
  }

LABEL_10:
}

- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler
{
  viewCopy = view;
  responseCopy = response;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__TabDocument_webView_decidePolicyForNavigationResponse_decisionHandler___block_invoke;
  aBlock[3] = &unk_2781DB038;
  aBlock[4] = self;
  v11 = responseCopy;
  v79 = v11;
  v12 = handlerCopy;
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

    v62 = viewCopy;
    response = [v11 response];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __73__TabDocument_webView_decidePolicyForNavigationResponse_decisionHandler___block_invoke_2;
    v72[3] = &unk_2781DB038;
    v17 = v11;
    v73 = v17;
    selfCopy = self;
    v75 = v13;
    v18 = _Block_copy(v72);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v20 = [WeakRetained tabDocumentCanDownloadFile:self];

    if ((v20 & 1) == 0)
    {
      viewCopy = v62;
      v18[2](v18, 0);
LABEL_26:

      goto LABEL_27;
    }

    isForMainFrame = [v17 isForMainFrame];
    mIMEType = [response MIMEType];
    if ([mIMEType isEqualToString:@"application/rdf+xml"] & 1) != 0 || (objc_msgSend(mIMEType, "isEqualToString:", @"application/rss+xml") & 1) != 0 || (objc_msgSend(mIMEType, "isEqualToString:", @"application/atom+xml"))
    {
    }

    else
    {
      v29 = [mIMEType isEqualToString:@"application/syndication+xml"];

      if (!v29)
      {
        suggestedFilename = [response suggestedFilename];
        safari_filenameByFixingIllegalCharacters = [suggestedFilename safari_filenameByFixingIllegalCharacters];
        safari_lastPathComponentWithoutZipExtension = [safari_filenameByFixingIllegalCharacters safari_lastPathComponentWithoutZipExtension];

        v59 = safari_lastPathComponentWithoutZipExtension;
        v31 = safari_lastPathComponentWithoutZipExtension;
        viewCopy = v62;
        pathExtension = [v31 pathExtension];
        obj = [pathExtension caseInsensitiveCompare:@"swf"];

        v32 = [mIMEType caseInsensitiveCompare:@"application/x-shockwave-flash"];
        if (isForMainFrame)
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
          if (isForMainFrame)
          {
            [(_SFPageLoadErrorController *)self->_pageLoadErrorController addDownloadFailedAlertWithDescription:0];
          }

          v18[2](v18, 0);
          goto LABEL_24;
        }

        v57 = MEMORY[0x277CDB788];
        _request = [v17 _request];
        _sf_suggestedFilename = [v17 _sf_suggestedFilename];
        v37 = v57;
        objb = _request;
        v58 = _sf_suggestedFilename;
        v38 = [v37 provisionalDownloadWithMIMEType:mIMEType request:_request response:response filename:_sf_suggestedFilename uti:v15 userInitiatedAction:self->_lastUserInitiatedAction];

        obja = v38;
        [v38 setNavigatedWebView:v62];
        mEMORY[0x277CDB7A0] = [MEMORY[0x277CDB7A0] sharedDownloadDispatcher];
        objc_storeStrong(&self->_activeDownload, v38);
        if (v38)
        {
          mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
          [v38 setDelegate:mEMORY[0x277CDB7A8]];
          [mEMORY[0x277CDB7A8] deferAddingDownloadWhenStarted:v38];
          if ((v16 - 2) > 2)
          {
            v49 = v62;
            v23 = v38;
            if (objc_opt_respondsToSelector())
            {
              _navigationInitiatingFrame = [v17 _navigationInitiatingFrame];
              webView = [_navigationInitiatingFrame webView];
              v43 = webView;
              if (webView)
              {
                v44 = webView;
              }

              else
              {
                v44 = v49;
              }

              v45 = v44;

              v46 = v45;
              viewCopy = v62;
            }

            else
            {
              v46 = v49;
            }

            v50 = v46;
            [mEMORY[0x277CDB7A0] setPendingDownload:obja forWebView:?];
            v18[2](v18, 2);
          }

          else
          {
            [v38 setSuppressesPrompt:1];
            if (objc_opt_respondsToSelector())
            {
              _navigationInitiatingFrame2 = [v17 _navigationInitiatingFrame];
              securityOrigin = [_navigationInitiatingFrame2 securityOrigin];

              v40 = securityOrigin;
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
            v67 = mEMORY[0x277CDB7A0];
            v68 = obja;
            selfCopy2 = self;
            v70 = v18;
            v71 = v16;
            v50 = v40;
            [(TabDocument *)self _presentDialogToAllowDownload:v68 initiatingSecurityOrigin:v40 allowViewAction:v16 != 2 completionHandler:v64];

            viewCopy = v62;
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

    if ((isForMainFrame & 1) == 0)
    {
      viewCopy = v62;
      v18[2](v18, 0);
LABEL_25:

      goto LABEL_26;
    }

    viewCopy = v62;
    _request2 = [v17 _request];
    v23 = [_request2 URL];

    scheme = [v23 scheme];
    v25 = [scheme compare:@"http" options:1];

    absoluteString = [v23 absoluteString];
    if (v25)
    {
      v59 = [@"feed:" stringByAppendingString:absoluteString];
    }

    else
    {
      v27 = [absoluteString substringFromIndex:5];
      v59 = [@"feed:" stringByAppendingString:v27];
    }

    mEMORY[0x277CDB7A0] = [MEMORY[0x277CBEBC0] URLWithString:v59];
    v18[2](v18, 0);
    v28 = [(TabDocument *)self _loadURLInternal:mEMORY[0x277CDB7A0] userDriven:1];
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

- (void)webView:(id)view navigationAction:(id)action didBecomeDownload:(id)download
{
  downloadCopy = download;
  mEMORY[0x277CDB7A0] = [MEMORY[0x277CDB7A0] sharedDownloadDispatcher];
  [mEMORY[0x277CDB7A0] downloadDidStart:downloadCopy];
}

- (void)webView:(id)view navigationResponse:(id)response didBecomeDownload:(id)download
{
  downloadCopy = download;
  mEMORY[0x277CDB7A0] = [MEMORY[0x277CDB7A0] sharedDownloadDispatcher];
  [mEMORY[0x277CDB7A0] downloadDidStart:downloadCopy];
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  uUID = [MEMORY[0x277CCAD78] UUID];
  biomeWebpageIdentifier = self->_biomeWebpageIdentifier;
  self->_biomeWebpageIdentifier = uUID;

  lastLoadError = self->_lastLoadError;
  self->_lastLoadError = 0;

  _unreachableURL = [viewCopy _unreachableURL];

  if (!_unreachableURL)
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
  tabController = [WeakRetained tabController];
  [tabController saveTabDocumentUserActivitySoon:self];

  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator didStartProvisionalNavigationWithUserInitiatedAction:self->_lastUserInitiatedAction];
  if (self->_pageLoadStatistics)
  {
    _request = [navigationCopy _request];
    v23 = [_request URL];
    absoluteString = [v23 absoluteString];
    v25 = [absoluteString isEqualToString:@"about:blank"];

    if ((v25 & 1) == 0)
    {
      [(PageLoadTestStatistics *)self->_pageLoadStatistics startedNavigation:navigationCopy];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__translationContextStateDidChange_ name:*MEMORY[0x277D4A9A0] object:self->_translationContext];
  }

  [(TabDocument *)self updateAccessibilityIdentifier];
  [(_SFFormAutoFillController *)self->_autoFillController offerToSaveUnsubmittedFormDataIfNeededWithCompletionHandler:&__block_literal_global_543];
  [(TabDocument *)self _updateActiveExtensionsIfNecessary];
  if (self->_loadWasUserDriven && ([navigationCopy _isUserInitiated] & 1) != 0 || self->_lastUserInitiatedAction)
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

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  navigationCopy = navigation;
  errorCopy = error;
  [(TabDocument *)self _didFinishNavigation:navigationCopy];
  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator didFailProvisionalNavigationWithError:errorCopy];
  queryParameterFilteringDataQueue = [(SFBrowserDocumentTrackerInfo *)self->_trackerInfo queryParameterFilteringDataQueue];
  [queryParameterFilteringDataQueue clearPendingData];

  code = [errorCopy code];
  if (-[NSMutableArray count](self->_fallbackURLs, "count") && ((v10 = [errorCopy _web_errorIsInDomain:*MEMORY[0x277CCA738]], (code & 0xFFFFFFFFFFFFFFFELL) == 0xFFFFFFFFFFFFFC14) ? (v11 = v10) : (v11 = 0), v11 == 1))
  {
    _request = [navigationCopy _request];
    suggestedFilenameForNextCommit = objc_getAssociatedObject(_request, kWebClipToNSURLRequestAssociationKey);

    [(TabDocument *)self _loadNextFallbackURLWithWebClip:0 navigation:?];
  }

  else
  {
    [(TabDocument *)self _clearNavigationSource];
    [(_SFWebView *)self->_webView setObscuringContents:0];
    self->_contentIsReadyForSnapshot = 1;
    [(TabDocument *)self updateAccessibilityIdentifier];
    objc_storeStrong(&self->_lastLoadError, error);
    objc_storeStrong(&self->_lastLoadErrorForFormatMenu, error);
    [(TabDocument *)self _didFinishLoading];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    tabController = [WeakRetained tabController];
    [tabController saveTabDocumentUserActivitySoon:self];

    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:0];

    pageLoadStatistics = self->_pageLoadStatistics;
    if (pageLoadStatistics)
    {
      [(PageLoadTestStatistics *)pageLoadStatistics failedNavigation:navigationCopy withError:errorCopy];
    }

    self->_shouldResetPrintSuppressionOnNextCommit = 0;
    self->_loadNextNavigationInline = 0;
    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
    self->_suggestedFilenameForNextCommit = 0;
  }
}

- (void)_didFinishNavigation:(uint64_t)navigation
{
  v3 = a2;
  if (navigation)
  {
    v7 = v3;
    if (*(navigation + 928) == 1 && *(navigation + 936))
    {
      webView = [navigation webView];
      v5 = [webView _restoreSessionState:*(navigation + 936) andNavigate:0];
    }

    *(navigation + 928) = 0;
    v6 = *(navigation + 936);
    *(navigation + 936) = 0;

    v3 = v7;
  }
}

- (void)_webView:(id)view contentRuleListWithIdentifier:(id)identifier performedAction:(id)action forURL:(id)l
{
  viewCopy = view;
  actionCopy = action;
  lCopy = l;
  if (([actionCopy blockedLoad] & 1) != 0 || objc_msgSend(actionCopy, "blockedCookies"))
  {
    _contentBlockerStatisticsStore = [(TabDocument *)self _contentBlockerStatisticsStore];
    v12 = [viewCopy URL];
    [_contentBlockerStatisticsStore recordThirdPartyResourceBlocked:lCopy onFirstParty:v12 completionHandler:0];
  }
}

- (void)_webView:(id)view decidePolicyForSOAuthorizationLoadWithCurrentPolicy:(int64_t)policy forExtension:(id)extension completionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  LODWORD(self) = [WeakRetained tabDocumentShouldHandleAuthentication:self];

  handlerCopy[2](handlerCopy, self ^ 1);
}

- (void)_webView:(id)view didGeneratePageLoadTiming:(id)timing
{
  timingCopy = timing;
  pageLoadStatistics = self->_pageLoadStatistics;
  if (pageLoadStatistics)
  {
    [(PageLoadTestStatistics *)pageLoadStatistics didGeneratePageLoadTiming:timingCopy];
  }
}

- (void)_donateTextSoon
{
  if (self && [self[158] allowsUserActivityFeedback] && (-[TabDocument _isShowingNativePage](self) & 1) == 0)
  {
    objc_initWeak(&location, self);
    [self[53] invalidate];
    v2 = MEMORY[0x277CBEBB8];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __30__TabDocument__donateTextSoon__block_invoke;
    v5[3] = &unk_2781DA668;
    objc_copyWeak(&v6, &location);
    v3 = [v2 scheduledTimerWithTimeInterval:0 repeats:v5 block:5.0];
    v4 = self[53];
    self[53] = v3;

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __30__TabDocument__donateTextSoon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(TabDocument *)WeakRetained _donateTextAllowingDonationWithoutReaderText:?];
}

- (void)_donateTextAllowingDonationWithoutReaderText:(id *)text
{
  if (text && text[53])
  {
    if (![text[158] allowsUserActivityFeedback] || -[TabDocument _isShowingNativePage](text))
    {
      v4 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [TabDocument _donateTextAllowingDonationWithoutReaderText:];
      }

      v5 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [text[133] URL];
        objc_claimAutoreleasedReturnValue();
        [TabDocument _donateTextAllowingDonationWithoutReaderText:];
      }
    }

    else
    {
      unfilteredArticleText = [text[37] unfilteredArticleText];
      v5 = unfilteredArticleText;
      if ((a2 & 1) != 0 || unfilteredArticleText || ![text[37] isReaderAvailable])
      {
        [text[53] invalidate];
        v8 = text[53];
        text[53] = 0;

        if ([text isSecure])
        {
          doesPageUseSearchEngineOptimizationMetadata = [text[37] doesPageUseSearchEngineOptimizationMetadata];
        }

        else
        {
          doesPageUseSearchEngineOptimizationMetadata = 1;
        }

        personalizationData = [text personalizationData];
        v11 = [personalizationData copy];

        personalizationData2 = [text personalizationData];
        [personalizationData2 clearData];

        mEMORY[0x277D4A060] = [MEMORY[0x277D4A060] sharedInstance];
        v14 = text[133];
        profileIdentifier = [(TabDocument *)text profileIdentifier];
        v16 = profileIdentifier;
        if (profileIdentifier)
        {
          v17 = profileIdentifier;
        }

        else
        {
          v17 = *MEMORY[0x277D49BD8];
        }

        [mEMORY[0x277D4A060] donateTextInWebView:v14 extractedReaderText:v5 canDonateFullPageText:doesPageUseSearchEngineOptimizationMetadata profileIdentifier:v17 personalizationData:v11 extractInnerText:&__block_literal_global_553];
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
  cachedCanonicalURLOrURLForSharing = [(TabDocument *)self cachedCanonicalURLOrURLForSharing];
  v4 = +[Application sharedApplication];
  historyController = [v4 historyController];
  profileIdentifier = [(TabDocument *)self profileIdentifier];
  v7 = [historyController frequentlyVisitedSitesControllerForProfileIdentifier:profileIdentifier loadIfNeeded:0];

  frequentlyVisitedSites = [v7 frequentlyVisitedSites];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__TabDocument_isFrecentlyVisitedSite__block_invoke;
  v11[3] = &unk_2781DB0F8;
  v9 = cachedCanonicalURLOrURLForSharing;
  v12 = v9;
  LOBYTE(historyController) = [frequentlyVisitedSites safari_containsObjectPassingTest:v11];

  return historyController;
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
  titleForNewBookmark = [(TabDocument *)self titleForNewBookmark];
  v5 = [v3 _trimmedTitle:titleForNewBookmark];

  cachedCanonicalURLOrURLForSharing = [(TabDocument *)self cachedCanonicalURLOrURLForSharing];
  if (cachedCanonicalURLOrURLForSharing)
  {
    v7 = objc_alloc(MEMORY[0x277D7B5A0]);
    absoluteString = [cachedCanonicalURLOrURLForSharing absoluteString];
    v9 = [v7 initWithTitle:v5 address:absoluteString collectionType:0];

    [v9 setAddedLocally:1];
    mEMORY[0x277D7B590] = [MEMORY[0x277D7B590] sharedWebFilterSettings];
    [v9 setWebFilterStatus:{objc_msgSend(mEMORY[0x277D7B590], "webFilterStatusForURL:", cachedCanonicalURLOrURLForSharing)}];

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
    uUIDString = [(NSUUID *)self->_uuid UUIDString];
    [v4 setUuidString:uUIDString];

    v7 = [(TabDocument *)self url];
    [v4 setUrl:v7];

    title = [(TabDocument *)self title];
    [v4 setTitle:title];

    profileIdentifier = [(TabDocument *)self profileIdentifier];
    [v4 setProfileIdentifier:profileIdentifier];

    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_lastViewedTime];
    [v4 setLastVisitedDate:v10];

    tabGroupUUID = [(WBTab *)self->_tabGroupTab tabGroupUUID];
    [v4 setTabGroupUUID:tabGroupUUID];
  }

  else
  {
    tabGroupUUID = [MEMORY[0x277D4A060] sharedInstance];
    [tabGroupUUID setTabNeedsSpotlightDeletion:self];
    v4 = 0;
  }

  return v4;
}

- (void)webView:(id)view didCommitNavigation:(id)navigation
{
  v59 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  navigationCopy = navigation;
  self->_didCommitCurrentNavigation = 1;
  v49 = viewCopy;
  trackerInfo = [(TabDocument *)self trackerInfo];
  [trackerInfo documentDidCommitNavigation];

  [viewCopy setOpaque:1];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v50 = [viewCopy URL];
  if (!self->_disableContentBlockersWhenReloading)
  {
    sfScribbleController = [(TabDocument *)self sfScribbleController];
    host = [v50 host];
    [sfScribbleController updateUserDefinedContentBlockerWithHost:host];
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

  -[_SFReloadOptionsController setEffectiveContentMode:](self->_reloadOptionsController, "setEffectiveContentMode:", [navigationCopy effectiveContentMode]);
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

  shouldActivateReaderWhenAvailable = [(TabDocument *)self shouldActivateReaderWhenAvailable];
  if (!shouldActivateReaderWhenAvailable)
  {
    if (![v15 isShowingReader] || !self->_active)
    {
      goto LABEL_20;
    }

LABEL_19:
    [v15 hideReaderForTabDocument:self animated:shouldActivateReaderWhenAvailable deactivationMode:0];
    goto LABEL_20;
  }

  nextContinuousItemDocument = [v15 nextContinuousItemDocument];
  v18 = nextContinuousItemDocument == self;

  if (v18)
  {
    goto LABEL_20;
  }

  if ([v15 readerShouldBeShownIfPossible])
  {
    _webProcessIdentifier = [(_SFWebView *)self->_readerWebView _webProcessIdentifier];
    if (_webProcessIdentifier == [(_SFWebView *)self->_webView _webProcessIdentifier])
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
  readingListBookmarkID = [(TabDocument *)self readingListBookmarkID];
  backForwardList = [(_SFWebView *)self->_webView backForwardList];
  currentItem = [backForwardList currentItem];
  if (readingListBookmarkID && ![(WKBackForwardListItem *)currentItem safari_bookmarkID])
  {
    [(WKBackForwardListItem *)currentItem safari_setBookmarkID:readingListBookmarkID];
  }

  if (self->_highlightFromNavigation)
  {
    [currentItem safari_setHighlight:?];
    highlightFromNavigation = self->_highlightFromNavigation;
    self->_highlightFromNavigation = 0;
  }

  self->_wasLoadedWithLockdownModeEnabled = self->_pendingNavigationWillLoadWithLockdownModeEnabled;
  readingListBookmarkID2 = [(TabDocument *)self readingListBookmarkID];
  if (self->_active && readingListBookmarkID2)
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
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didLoadTabContent:0];
  }

  else if ([(TabDocument *)self hasQuickLookContent])
  {
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didLoadTabContent:1];
  }

  else
  {
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didLoadTabContent:2];
  }

  if (([v15 isReaderViewStale] & 1) == 0)
  {
    [v15 document:self willMakeReaderVisible:0];
  }

  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator didCommitNavigation];
  [(TabDocument *)self _updateNavigationBarItem];
  tabController = [v15 tabController];
  [tabController saveTabDocumentUserActivitySoon:self];

  mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8]2 reportTabUpdatedWithUpdateType:0];

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
  safari_userVisibleHostWithoutWWWSubdomain = [v50 safari_userVisibleHostWithoutWWWSubdomain];
  if (([safari_userVisibleHostWithoutWWWSubdomain isEqualToString:self->_domainWhereUserDeclinedAutomaticStrongPassword] & 1) == 0)
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
  mEMORY[0x277D28D50] = [MEMORY[0x277D28D50] sharedVoiceUtilities];
  activeSiriReaderSessionURL = [mEMORY[0x277D28D50] activeSiriReaderSessionURL];
  if ([v40 isEqual:activeSiriReaderSessionURL])
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
  if (self && *(self + 904) == 1)
  {
    isSearchPage = [self isSearchPage];
    loadedUsingDesktopUserAgent = [*(self + 88) loadedUsingDesktopUserAgent];
    v4 = *(self + 776);
    mEMORY[0x277D49E30] = [MEMORY[0x277D49E30] sharedManager];
    [mEMORY[0x277D49E30] donatePageLoadWithUserAgent:loadedUsingDesktopUserAgent ^ 1u wasSearch:isSearchPage wasPrivateBrowsing:objc_msgSend(self wasActualized:"isPrivateBrowsingEnabled") provenance:{objc_msgSend(self, "nextLoadComesFromSearchPage"), v4}];
  }
}

- (void)userDeclinedAutomaticStrongPasswordForCurrentDomainOnTabWithUUID:(id)d
{
  dCopy = d;
  committedURL = [(TabDocument *)self committedURL];
  safari_userVisibleHostWithoutWWWSubdomain = [committedURL safari_userVisibleHostWithoutWWWSubdomain];

  uuid = [(TabDocument *)self uuid];
  v7 = [dCopy isEqual:uuid];

  if (v7)
  {
    objc_storeStrong(&self->_domainWhereUserDeclinedAutomaticStrongPassword, safari_userVisibleHostWithoutWWWSubdomain);
  }
}

- (void)_willCommitPreviewViewController:(id *)controller
{
  v3 = a2;
  if (controller)
  {
    v12 = v3;
    [v3 willCommitPreviewedWebView];
    previewTabDocument = [v12 previewTabDocument];
    webView = [previewTabDocument webView];

    [webView _setAddsVisitedLinks:1];
    _unreachableURL = [webView _unreachableURL];

    if (_unreachableURL)
    {
      [controller[163] webViewDidCommitErrorPagePreview:webView];
    }

    else
    {
      v7 = [webView URL];
      if (v7)
      {
        isPrivateBrowsingEnabled = [controller isPrivateBrowsingEnabled];

        if ((isPrivateBrowsingEnabled & 1) == 0)
        {
          history = [controller history];
          visitedLinkStore = [history visitedLinkStore];
          v11 = [webView URL];
          [visitedLinkStore addVisitedLinkWithURL:v11];
        }
      }
    }

    v3 = v12;
  }
}

- (void)_didCommitPreviewViewController:(uint64_t)controller
{
  v3 = a2;
  if (controller)
  {
    v6 = v3;
    previewTabDocument = [v3 previewTabDocument];
    webView = [previewTabDocument webView];

    [webView _setAllowsMediaDocumentInlinePlayback:0];
    v3 = v6;
  }
}

- (id)tabDocumentForPreviewURL:(void *)l relatedToWebView:
{
  lCopy = l;
  if (self)
  {
    createWebViewConfiguration = [self createWebViewConfiguration];
    [createWebViewConfiguration _setRelatedWebView:lCopy];
    configuration = [lCopy configuration];
    websiteDataStore = [configuration websiteDataStore];
    [createWebViewConfiguration setWebsiteDataStore:websiteDataStore];

    v8 = objc_alloc(objc_opt_class());
    WeakRetained = objc_loadWeakRetained(self + 124);
    v10 = [v8 _initWithBrowserController:WeakRetained configuration:createWebViewConfiguration];

    [v10 setNextLoadComesFromSearchPage:{objc_msgSend(self, "isSearchPage")}];
    webView = [v10 webView];
    [webView setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [webView _setAddsVisitedLinks:0];
    [webView _setAllowsMediaDocumentInlinePlayback:1];
    sessionState = [self sessionState];
    [v10 restoreSessionState:sessionState andNavigate:0];
    v13 = objc_loadWeakRetained(self + 156);
    [v13 tabDocument:self didCreatePreviewDocument:v10];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_webView:(id)view gestureRecognizerCouldPinch:(id)pinch
{
  pinchCopy = pinch;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabCollectionViewProvider = [WeakRetained tabCollectionViewProvider];
  tabSwitcherViewController = [tabCollectionViewProvider tabSwitcherViewController];
  pinchGestureRecognizer = [tabSwitcherViewController pinchGestureRecognizer];

  if (pinchGestureRecognizer == pinchCopy)
  {
    v11 = 1;
  }

  else
  {
    tabViewPinchRecognizer = [WeakRetained tabViewPinchRecognizer];
    v11 = tabViewPinchRecognizer == pinchCopy;
  }

  return v11;
}

- (BOOL)_webView:(id)view gestureRecognizerCanBePreventedByTouchEvents:(id)events
{
  eventsCopy = events;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)keyboardWillHide:(id)hide
{
  if ([MEMORY[0x277D49A08] isPasswordsAppInstalled])
  {
    autoFillController = self->_autoFillController;

    [(_SFFormAutoFillController *)autoFillController makePasswordFields:0 viewable:0];
  }
}

- (void)_webView:(id)view contextMenuConfigurationForElement:(id)element completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [MEMORY[0x277CDB800] contextMenuConfigurationForWebView:view elementInfo:element handler:self];
  handlerCopy[2](handlerCopy, v8);
}

- (id)_webView:(id)view contextMenuContentPreviewForElement:(id)element
{
  v4 = [MEMORY[0x277CDB800] contextMenuContentPreviewForWebView:view elementInfo:element handler:self];

  return v4;
}

- (void)_webView:(id)view contextMenuForElement:(id)element willCommitWithAnimator:(id)animator
{
  viewCopy = view;
  animatorCopy = animator;
  previewViewController = [animatorCopy previewViewController];
  objc_opt_class();
  [animatorCopy setPreferredCommitStyle:objc_opt_isKindOfClass() & 1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__TabDocument__webView_contextMenuForElement_willCommitWithAnimator___block_invoke;
  v10[3] = &unk_2781D60B8;
  v9 = viewCopy;
  v11 = v9;
  [animatorCopy addAnimations:v10];
}

void __69__TabDocument__webView_contextMenuForElement_willCommitWithAnimator___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CDB800] linkPreviewHelperForWebView:*(a1 + 32)];
  [v1 commitPreviewViewController];
}

- (void)_webView:(id)view contextMenuDidEndForElement:(id)element
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

- (id)linkPreviewHelper:(id)helper previewViewControllerForURL:(id)l
{
  helperCopy = helper;
  lCopy = l;
  webView = [helperCopy webView];
  v10 = [(TabDocument *)&self->super.isa tabDocumentForPreviewURL:v9 relatedToWebView:webView];

  v11 = [[LinkPreviewViewController alloc] initWithTabDocument:v10];
  view = [(TabDocument *)self view];
  geometryProvider = [view geometryProvider];
  [geometryProvider obscuredScrollViewInsetsForTabDocumentView:view unobscuredSafeAreaInsets:0];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  browserView = [(LinkPreviewViewController *)v11 browserView];
  [browserView setObscuredInsets:{v15, v17, v19, v21}];

  webExtensionsController = [v10 webExtensionsController];
  [webExtensionsController didOpenTab:v10];

  v24 = [(TabDocument *)self supportsAdvancedPrivacyProtectionsForURL:lCopy];
  reloadOptionsController = [v10 reloadOptionsController];
  [reloadOptionsController setSupportsAdvancedPrivacyProtections:v24];

  if ([(_SFReloadOptionsController *)self->_reloadOptionsController loadedUsingDesktopUserAgent])
  {
    reloadOptionsController2 = [v10 reloadOptionsController];
    [reloadOptionsController2 requestDesktopSiteWithURL:lCopy];
  }

  else
  {
    v27 = [v10 loadURL:lCopy userDriven:1];
  }

  previewHeader = [(LinkPreviewViewController *)v11 previewHeader];
  [helperCopy setActiveLinkPreviewHeader:previewHeader];

  return v11;
}

- (void)linkPreviewHelper:(id)helper commitPreviewViewControllerForAction:(int64_t)action withTabOrder:(int64_t)order
{
  helperCopy = helper;
  previewContentViewController = [helperCopy previewContentViewController];
  v9 = previewContentViewController;
  if (action == 2)
  {
    [(TabDocument *)&self->super.isa _commitPreviewedViewControllerInSafari:previewContentViewController];
  }

  else if (action == 3)
  {
    if (order != 1)
    {
      previewTabDocument = [previewContentViewController previewTabDocument];
      [previewTabDocument setUpBackClosesSpawnedTabWithParent:self];
    }

    [(TabDocument *)&self->super.isa _willCommitPreviewViewController:v9];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (order == 2)
    {
      v12 = 1;
    }

    else if (order)
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
      tabCollectionViewProvider = [v13 tabCollectionViewProvider];
      hasTabBar = [tabCollectionViewProvider hasTabBar];

      if ((hasTabBar & 1) == 0)
      {
        elementInfo = [helperCopy elementInfo];
        [(TabDocument *)self animateElement:elementInfo toBarItem:8];
      }
    }
  }
}

- (void)_commitPreviewedViewControllerInSafari:(id *)safari
{
  v4 = a2;
  if (safari)
  {
    [(TabDocument *)safari _willCommitPreviewViewController:v4];
    WeakRetained = objc_loadWeakRetained(safari + 156);
    [WeakRetained tabDocumentCommitPreviewedDocument:safari];

    [(TabDocument *)safari _didCommitPreviewViewController:v4];
  }
}

- (BOOL)linkPreviewHelper:(id)helper supportsAction:(int64_t)action forURL:(id)l
{
  lCopy = l;
  if (action)
  {
    v7 = 1;
  }

  else
  {
    v8 = +[FeatureManager sharedFeatureManager];
    if ([v8 isReadingListAvailable])
    {
      v7 = [MEMORY[0x277D7B558] supportsURL:lCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)linkPreviewHelper:(id)helper resultOfLoadingURL:(id)l
{
  v4 = [(TabDocument *)self resultOfLoadingURL:l];

  return v4;
}

- (void)linkPreviewHelper:(id)helper redirectToExternalNavigationResult:(id)result
{
  resultCopy = result;
  v6 = MEMORY[0x277CBABA0];
  v9 = resultCopy;
  v7 = [resultCopy URL];
  v8 = [v6 safari_nonAppInitiatedRequestWithURL:v7];
  [(TabDocument *)self _redirectToExternalNavigationResult:v9 fromOriginalRequest:v8 navigationAction:0 promptPolicy:0 isMainFrame:1 userAction:0];
}

- (void)linkPreviewHelper:(id)helper didProduceNavigationIntent:(id)intent forAction:(int64_t)action
{
  helperCopy = helper;
  intentCopy = intent;
  [(TabDocument *)self dispatchNavigationIntent:intentCopy];
  if (action == 3 && [MEMORY[0x277D28F38] defaultTabOrder] == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    tabCollectionViewProvider = [WeakRetained tabCollectionViewProvider];
    hasTabBar = [tabCollectionViewProvider hasTabBar];

    if ((hasTabBar & 1) == 0)
    {
      elementInfo = [helperCopy elementInfo];
      [(TabDocument *)self animateElement:elementInfo toBarItem:8];
    }
  }
}

- (void)linkPreviewHelperWillBeginDownload:(id)download
{
  elementInfo = [download elementInfo];
  [(TabDocument *)self animateElementToDownloadsBarItemSoon:?];
}

- (void)linkPreviewHelper:(id)helper addURLToReadingList:(id)list
{
  helperCopy = helper;
  listCopy = list;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__TabDocument_linkPreviewHelper_addURLToReadingList___block_invoke;
  v11[3] = &unk_2781D6AC0;
  v12 = helperCopy;
  v13 = listCopy;
  selfCopy = self;
  v9 = listCopy;
  v10 = helperCopy;
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

- (id)previewViewControllerForURL:(id)l
{
  lCopy = l;
  v5 = MEMORY[0x277CDB800];
  webView = self->_webView;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  scene = [WeakRetained scene];
  keyWindow = [scene keyWindow];
  [keyWindow bounds];
  v10 = [v5 previewViewControllerWebView:webView windowBounds:lCopy url:self handler:?];

  return v10;
}

- (void)commitPreviewViewController:(id)controller
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
    activityJSController = [(TabDocument *)self activityJSController];
    v6 = [v4 initWithInjectedJavascriptController:activityJSController];
    v7 = self->_webClipMetadataFetcher;
    self->_webClipMetadataFetcher = v6;

    webClipMetadataFetcher = self->_webClipMetadataFetcher;
  }

  return webClipMetadataFetcher;
}

- (void)getApplicationManifestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  applicationManifestFetcher = self->_applicationManifestFetcher;
  v8 = handlerCopy;
  if (!applicationManifestFetcher)
  {
    v6 = [objc_alloc(MEMORY[0x277D4A700]) initWithWebView:self->_webView];
    v7 = self->_applicationManifestFetcher;
    self->_applicationManifestFetcher = v6;

    applicationManifestFetcher = self->_applicationManifestFetcher;
    handlerCopy = v8;
  }

  [(WBSApplicationManifestFetcher *)applicationManifestFetcher getApplicationManifestWithCompletionHandler:handlerCopy];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  objc_initWeak(location, self);
  v59 = navigationCopy;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [(TabDocument *)self _didFinishNavigation:navigationCopy];
  *&self->_isNavigatingViaNormalReload = 0;
  [(_SFWebView *)self->_webView setObscuringContents:0];
  self->_contentIsReadyForSnapshot = 1;
  expectedOrCurrentURL = [(TabDocument *)self expectedOrCurrentURL];
  urlForDisplayedContent = self->_urlForDisplayedContent;
  self->_urlForDisplayedContent = expectedOrCurrentURL;

  [(_SFPageLoadErrorController *)self->_pageLoadErrorController scheduleResetCrashCount];
  [(TabDocument *)self _didFinishLoading];
  self->_shouldDismissReaderInReponseToSameDocumentNavigation = 0;
  [(WBSFluidProgressController *)self->_fluidProgressController finishFluidProgressWithProgressStateSource:self];
  tabController = [WeakRetained tabController];
  [tabController saveTabDocumentUserActivitySoon:self];

  v11 = 0x277D49000uLL;
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:0];

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __43__TabDocument_webView_didFinishNavigation___block_invoke;
  v67[3] = &unk_2781D6840;
  objc_copyWeak(&v68, location);
  [viewCopy _doAfterNextPresentationUpdate:v67];
  [(TabDocument *)self updateAccessibilityIdentifier];
  kdebug_trace();
  pageLoadStatistics = self->_pageLoadStatistics;
  if (pageLoadStatistics)
  {
    [(PageLoadTestStatistics *)pageLoadStatistics finishedNavigation:navigationCopy];
  }

  _request = [navigationCopy _request];
  v15 = objc_getAssociatedObject(_request, kWebClipToNSURLRequestAssociationKey);

  urlForSharing = [(TabDocument *)self urlForSharing];
  if (v15)
  {
    if (![v15 configurationIsManaged] || (objc_msgSend(v15, "iconImagePath"), v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
      [(TabDocument *)self _updateSnapshotForWebClip:v15];
      webClipMetadataFetcher = [(TabDocument *)self webClipMetadataFetcher];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __43__TabDocument_webView_didFinishNavigation___block_invoke_2;
      v64[3] = &unk_2781DB120;
      v65 = v15;
      v66 = urlForSharing;
      [webClipMetadataFetcher fetchMetadataWithConsumer:v64];
    }
  }

  mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  touchIconCache = [mEMORY[0x277D28F58] touchIconCache];

  address = [(WebBookmark *)self->_bookmarkForIconFetching address];
  v56 = address;
  if (address)
  {
    v21 = [MEMORY[0x277CBEBC0] safari_URLWithUserTypedString:address];
    if (v21)
    {
      v57 = v21;
      host = [v21 host];
      v55 = touchIconCache;
      safari_domainFromHost = [host safari_domainFromHost];
      _committedURL = [(_SFWebView *)self->_webView _committedURL];
      host2 = [_committedURL host];
      safari_domainFromHost2 = [host2 safari_domainFromHost];
      if (![safari_domainFromHost isEqualToString:safari_domainFromHost2])
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

      v27 = [touchIconCache shouldRequestTouchIconForWebPageNavigationFromBookmarkInteractionForURL:v57];

      if (v27)
      {
        bookmarkForIconFetching = self->_bookmarkForIconFetching;
        self->_bookmarkForIconFetching = 0;

        touchIconCache = v55;
        [(TabDocument *)self touchIconFetcher];
        v29 = v11 = 0x277D49000;
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __43__TabDocument_webView_didFinishNavigation___block_invoke_3;
        v61[3] = &unk_2781DB148;
        v62 = v55;
        v63 = v57;
        [v29 fetchTouchIconURLsWithCompletion:v61];

        host = v62;
        v30 = v59;
        goto LABEL_17;
      }

      touchIconCache = v55;
      v11 = 0x277D49000uLL;
      if (!v59)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v57 = 0;
      if (!navigationCopy)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v57 = 0;
    if (!navigationCopy)
    {
      goto LABEL_22;
    }
  }

LABEL_20:
  if ([MEMORY[0x277D28F58] hasSharedSiteMetadataManager])
  {
    mEMORY[0x277D28F58]2 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    linkPresentationMetadataProvider = [mEMORY[0x277D28F58]2 linkPresentationMetadataProvider];
    [linkPresentationMetadataProvider updateMetadataIfNeededUsingWebView:viewCopy];
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

      webView = [(TabDocument *)self webView];
      [(WBSPageContextDataFetcher *)self->_pageContextDataFetcher setWebView:webView];

      [(WBSPageContextDataFetcher *)self->_pageContextDataFetcher setDelegate:self];
      [(WBSPageContextDataFetcher *)self->_pageContextDataFetcher setOwnerUUID:self->_uuid];
      pageContextDataFetcher = self->_pageContextDataFetcher;
    }

    webView2 = [(TabDocument *)self webView];
    [(WBSPageContextDataFetcher *)pageContextDataFetcher fetchSchemaDataForWebView:webView2];
  }

  if (![(TabDocument *)self isPrivateBrowsingEnabled])
  {
    reloadOptionsController = self->_reloadOptionsController;
    v39 = [viewCopy URL];
    [(_SFReloadOptionsController *)reloadOptionsController logCompletedPageloadToDifferentialPrivacy:v39];
  }

  if ([(TabDocument *)self isPDFDocument])
  {
    quickLookDocument = self->_quickLookDocument;
    suggestedFilenameForDisplayedPDF = [(TabDocument *)self suggestedFilenameForDisplayedPDF];
    [(SFQuickLookDocument *)quickLookDocument setFileNameForPDFDocument:suggestedFilenameForDisplayedPDF];
  }

  sharedLogger = [*(v11 + 2488) sharedLogger];
  sidebarUIProxy = [WeakRetained sidebarUIProxy];
  [sharedLogger didRequestPageShowingSideBar:{objc_msgSend(sidebarUIProxy, "isShowingSidebar")}];

  [(TabDocument *)&self->super.isa _donateTextSoon];
  mEMORY[0x277D49EA8] = [MEMORY[0x277D49EA8] sharedManager];
  v45 = [viewCopy URL];
  host3 = [v45 host];
  [mEMORY[0x277D49EA8] clearCertificateBypassesForHostIfNecessary:host3 withTrust:{objc_msgSend(viewCopy, "serverTrust")}];

  v47 = [MEMORY[0x277CBEAA8] now];
  dateOfLastFinishedNavigation = self->_dateOfLastFinishedNavigation;
  self->_dateOfLastFinishedNavigation = v47;

  v49 = [(TabDocument *)self URL];
  previousWebPageURLBeforeNavigation = self->_previousWebPageURLBeforeNavigation;
  self->_previousWebPageURLBeforeNavigation = v49;

  if (!self->_shouldKeepIgnoredSiriSuggestedSitesOnLoad && ![(TabDocument *)self isPrivateBrowsingEnabled])
  {
    mEMORY[0x277D49F90] = [MEMORY[0x277D49F90] sharedController];
    v52 = [(TabDocument *)self URL];
    host4 = [v52 host];
    profileIdentifier = [(TabDocument *)self profileIdentifier];
    [mEMORY[0x277D49F90] removeIgnoredSiriSuggestedSitesWithURLHost:host4 inProfile:profileIdentifier];
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

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  navigationCopy = navigation;
  errorCopy = error;
  [(TabDocument *)self _didFinishNavigation:navigationCopy];
  [(_SFWebView *)self->_webView setObscuringContents:0];
  self->_contentIsReadyForSnapshot = 1;
  [(TabDocument *)self updateAccessibilityIdentifier];
  expectedOrCurrentURL = [(TabDocument *)self expectedOrCurrentURL];
  urlForDisplayedContent = self->_urlForDisplayedContent;
  self->_urlForDisplayedContent = expectedOrCurrentURL;

  if ([errorCopy code] != 204 || (objc_msgSend(errorCopy, "domain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CE3918]), v10, (v11 & 1) == 0))
  {
    objc_storeStrong(&self->_lastLoadError, error);
    objc_storeStrong(&self->_lastLoadErrorForFormatMenu, error);
    [(TabDocument *)self _didFinishLoading];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    tabController = [WeakRetained tabController];
    [tabController saveTabDocumentUserActivitySoon:self];

    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:0];

    pageLoadStatistics = self->_pageLoadStatistics;
    if (pageLoadStatistics)
    {
      [(PageLoadTestStatistics *)pageLoadStatistics failedNavigation:navigationCopy withError:errorCopy];
    }

    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
    self->_suggestedFilenameForNextCommit = 0;
  }
}

- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v11 = [authenticationMethod isEqualToString:*MEMORY[0x277CBAB00]];

  if (v11)
  {
    if (-[TabDocument isControlledByAutomation](self, "isControlledByAutomation") && (+[Application sharedApplication](Application, "sharedApplication"), v12 = objc_claimAutoreleasedReturnValue(), [v12 automationController], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "automationSession"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "configuration"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "acceptInsecureCertificates"), v15, v14, v13, v12, v16) || (objc_msgSend(MEMORY[0x277D49EA8], "sharedManager"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(challengeCopy, "protectionSpace"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "didInvalidCertificateExceptionsApplySuccessfullyForProtectionSpace:inPrivateBrowsing:", v23, -[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled")), v23, v22, v24))
    {
      v25 = MEMORY[0x277CBAB80];
      protectionSpace2 = [challengeCopy protectionSpace];
      v26 = [v25 credentialForTrust:{objc_msgSend(protectionSpace2, "serverTrust")}];
      handlerCopy[2](handlerCopy, 0, v26);

LABEL_16:
      goto LABEL_17;
    }

    protectionSpace3 = [challengeCopy protectionSpace];
    [(_SFPageLoadErrorController *)self->_pageLoadErrorController setProtectionSpaceForInvalidCertificateBypass:protectionSpace3];

    v27 = 3;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = [WeakRetained tabDocumentShouldHandleAuthentication:self];

    if (v18)
    {
      protectionSpace2 = [challengeCopy protectionSpace];
      if ([protectionSpace2 _sf_canAuthenticate])
      {
        authenticationMethod2 = [protectionSpace2 authenticationMethod];
        v21 = [authenticationMethod2 isEqualToString:*MEMORY[0x277CBAAC8]];

        if (v21)
        {
          [(_SFPageLoadErrorController *)self->_pageLoadErrorController handleClientCertificateAuthenticationChallenge:challengeCopy completionHandler:handlerCopy];
        }

        else
        {
          dialogController = self->_dialogController;
          v30 = MEMORY[0x277D28C48];
          _committedURL = [(_SFWebView *)self->_webView _committedURL];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __75__TabDocument_webView_didReceiveAuthenticationChallenge_completionHandler___block_invoke;
          v36[3] = &unk_2781DB170;
          v37 = handlerCopy;
          v32 = [v30 authenticationDialogWithAuthenticationChallenge:challengeCopy committedURL:_committedURL completionHandler:v36];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __75__TabDocument_webView_didReceiveAuthenticationChallenge_completionHandler___block_invoke_2;
          v34[3] = &unk_2781D61F8;
          v34[4] = self;
          v35 = challengeCopy;
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
        handlerCopy[2](handlerCopy, 3, 0);
      }

      goto LABEL_16;
    }

    v27 = 2;
  }

  handlerCopy[2](handlerCopy, v27, 0);
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

- (void)_webView:(id)view authenticationChallenge:(id)challenge shouldAllowLegacyTLS:(id)s
{
  viewCopy = view;
  challengeCopy = challenge;
  sCopy = s;
  v10 = +[Application sharedApplication];
  legacyTLSHostManager = [v10 legacyTLSHostManager];
  protectionSpace = [challengeCopy protectionSpace];
  host = [protectionSpace host];
  v14 = [legacyTLSHostManager isLegacyTLSAllowedForHost:host];

  if ((v14 & 1) == 0)
  {
    protectionSpace2 = [challengeCopy protectionSpace];
    safari_URL = [protectionSpace2 safari_URL];
    absoluteString = [safari_URL absoluteString];
    _unreachableURL = [viewCopy _unreachableURL];
    absoluteString2 = [_unreachableURL absoluteString];
    v20 = [absoluteString isEqualToString:absoluteString2];

    if ((v20 & 1) == 0)
    {
      pageLoadErrorController = self->_pageLoadErrorController;
      protectionSpace3 = [challengeCopy protectionSpace];
      safari_URL2 = [protectionSpace3 safari_URL];
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      tabController = [WeakRetained tabController];
      activeTabDocument = [tabController activeTabDocument];
      v27 = [activeTabDocument URL];
      [(_SFPageLoadErrorController *)pageLoadErrorController handleLegacyTLSWithFailingURL:safari_URL2 clickThroughURL:v27 authenticationChallenge:challengeCopy];
    }
  }

  sCopy[2](sCopy, v14);
}

- (void)_webView:(id)view didNegotiateModernTLSForURL:(id)l
{
  lCopy = l;
  v4 = +[Application sharedApplication];
  legacyTLSHostManager = [v4 legacyTLSHostManager];
  host = [lCopy host];
  [legacyTLSHostManager clearLegacyTLSForHostIfPresent:host];
}

- (void)_webView:(id)view navigation:(id)navigation didSameDocumentNavigation:(int64_t)documentNavigation
{
  v45 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v36 = viewCopy;
  [(_SFFormAutoFillController *)self->_autoFillController offerToSaveUnsubmittedFormDataIfNeededInWebView:viewCopy fromSameDocumentNavigationOfType:documentNavigation completionHandler:&__block_literal_global_579];
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

  browserController = [(TabDocument *)self browserController];
  activeSearchEngine = [browserController activeSearchEngine];

  committedURL = [(TabDocument *)self committedURL];
  v15 = [activeSearchEngine urlIsValidSearch:committedURL];
  if (documentNavigation == 1)
  {
    v16 = v15;
    v17 = +[(WBSParsecDSession *)UniversalSearchSession];
    idOfParsecQueryOriginatingFromSearchSuggestion = [WeakRetained idOfParsecQueryOriginatingFromSearchSuggestion];
    if (idOfParsecQueryOriginatingFromSearchSuggestion)
    {
      backForwardList = [(_SFWebView *)self->_webView backForwardList];
      backItem = [backForwardList backItem];
      v21 = [backItem URL];
      v22 = [activeSearchEngine urlIsValidSearch:v21];

      if (!(v16 & 1 | ((v22 & 1) == 0)))
      {
        [v17 sendCBAEngagementFeedback:committedURL query:idOfParsecQueryOriginatingFromSearchSuggestion];
      }
    }

    [WeakRetained clearParsecQueryOriginatingFromSearchSuggestion];
  }

  if ([(TabDocument *)self isSearchPage]&& ![(TabDocument *)self isPrivateBrowsingEnabled])
  {
    mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
    v24 = [mEMORY[0x277CDB8A8] userVisibleQueryFromSearchURL:committedURL allowQueryThatLooksLikeURL:1];

    v25 = +[RecentWebSearchesController sharedController];
    [v25 addRecentSearch:v24 fromURL:committedURL];
  }

  sameDocumentNavigationToHistoryVisitCorrelator = self->_sameDocumentNavigationToHistoryVisitCorrelator;
  v27 = [v36 URL];
  v28 = [(WBSSameDocumentNavigationToHistoryVisitCorrelator *)sameDocumentNavigationToHistoryVisitCorrelator visitForSameDocumentNavigationToURL:v27];

  if (v28)
  {
    [(WBSHistory *)self->_history addAttributes:1 toVisit:v28];
  }

  if ([WeakRetained isShowingReader] && documentNavigation && self->_active && self->_shouldDismissReaderInReponseToSameDocumentNavigation)
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
  expectedOrCurrentURL = [(TabDocument *)self expectedOrCurrentURL];
  if (documentNavigation == 2)
  {
    if (([(NSURL *)self->_originalURL isEqual:expectedOrCurrentURL]& 1) == 0)
    {
      mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
      faviconProvider = [mEMORY[0x277D28F58] faviconProvider];
      [faviconProvider linkIconFromPageURL:self->_originalURL toCurrentPageURL:expectedOrCurrentURL isPrivate:-[TabDocument isPrivateBrowsingEnabled](self completionHandler:{"isPrivateBrowsingEnabled"), 0}];
    }
  }

  else if ((documentNavigation - 1) > 1)
  {
    if (!documentNavigation)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (([(NSURL *)self->_originalURL isEqual:expectedOrCurrentURL]& 1) == 0)
  {
    [(TabDocument *)self donateSameDocumentNavigationIfNecessary];
  }

LABEL_34:
  result = [(WBSBrowsingAssistantController *)self->_assistantController result];
  if (result)
  {
    result2 = [(WBSBrowsingAssistantController *)self->_assistantController result];
    pageURL = [result2 pageURL];
    v35 = [pageURL isEqual:committedURL];

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

- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change
{
  changeCopy = change;
  v35 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if ((changeCopy & 4) != 0)
  {
    [(WBSFluidProgressController *)self->_fluidProgressController startRocketEffectWithProgressStateSource:self];
  }

  if (changeCopy)
  {
    self->_didFirstLayout = 1;
    [(_SFFormAutoFillController *)self->_autoFillController prefillFormsSoonIfNeeded];
  }

  if ((changeCopy & 2) != 0)
  {
    linkPreviewViewController = self->_linkPreviewViewController;
    uRLString = [(TabDocument *)self URLString];
    [(LinkPreviewViewController *)linkPreviewViewController updatePreviewLoadingUIWithURLString:uRLString];

    expectedOrCurrentURL = [(TabDocument *)self expectedOrCurrentURL];
    urlForDisplayedContent = self->_urlForDisplayedContent;
    self->_urlForDisplayedContent = expectedOrCurrentURL;

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

  if ((changeCopy & 0x100) != 0)
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
  if ((changeCopy & 0x40) != 0)
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

  if ((changeCopy & 8) != 0)
  {
    [(_SFWebView *)self->_webView setPlaceholderImage:0];
  }

  [(TabDocument *)self updateAccessibilityIdentifier];
}

- (void)_webViewWebProcessDidCrash:(id)crash
{
  v23[1] = *MEMORY[0x277D85DE8];
  crashCopy = crash;
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
    backForwardList = [(_SFWebView *)self->_webView backForwardList];
    currentItem = [backForwardList currentItem];
    v7 = [currentItem URL];

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
  uRLString = [(TabDocument *)self URLString];
  LODWORD(pageLoadErrorController) = [(_SFPageLoadErrorController *)pageLoadErrorController updateCrashesAndShowCrashError:v13 URLString:uRLString];

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
        _committedURL = [crashCopy _committedURL];
        v17 = [_committedURL isEqual:v7];

        if (v17)
        {
          reload = [crashCopy reload];
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

- (void)_webView:(id)view didStartLoadForQuickLookDocumentInMainFrameWithFileName:(id)name uti:(id)uti
{
  nameCopy = name;
  utiCopy = uti;
  v8 = objc_alloc(MEMORY[0x277D28D28]);
  if (self->_suggestedFilenameForNextCommit)
  {
    suggestedFilenameForNextCommit = self->_suggestedFilenameForNextCommit;
  }

  else
  {
    suggestedFilenameForNextCommit = nameCopy;
  }

  v10 = [v8 initWithFileName:suggestedFilenameForNextCommit uti:utiCopy];
  quickLookDocumentWriter = self->_quickLookDocumentWriter;
  self->_quickLookDocumentWriter = v10;
}

- (void)_webView:(id)view didFinishLoadForQuickLookDocumentInMainFrame:(id)frame
{
  quickLookDocumentWriter = self->_quickLookDocumentWriter;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__TabDocument__webView_didFinishLoadForQuickLookDocumentInMainFrame___block_invoke;
  v5[3] = &unk_2781D72B0;
  v5[4] = self;
  [(SFQuickLookDocumentWriter *)quickLookDocumentWriter writeDataAndClose:frame completionHandler:v5];
}

void __69__TabDocument__webView_didFinishLoadForQuickLookDocumentInMainFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 992));
  [WeakRetained updateInterface];
}

- (void)_webViewDidBeginNavigationGesture:(id)gesture
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

- (void)_webViewWillEndNavigationGesture:(id)gesture withNavigationToBackForwardListItem:(id)item
{
  v18 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  itemCopy = item;
  self->_shouldDismissReaderInReponseToSameDocumentNavigation = 1;
  if (itemCopy && [(TabDocument *)self canGoBackToParentTab])
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
          [v12 tabDocumentWillEndNavigationGesture:self withNavigationToBackForwardListItem:{itemCopy, v13}];
        }
      }

      v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_webViewDidEndNavigationGesture:(id)gesture withNavigationToBackForwardListItem:(id)item
{
  v18 = *MEMORY[0x277D85DE8];
  itemCopy = item;
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
          [v10 tabDocumentDidEndNavigationGesture:self withNavigationToBackForwardListItem:{itemCopy, v13}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (itemCopy)
  {
    if (self->_gestureRequiresGoBackToParentTab)
    {
      [(TabDocument *)self goBackToParentTab];
      self->_gestureRequiresGoBackToParentTab = 0;
    }

    else
    {
      mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      v12 = [mainBookmarkCollection bookmarkWithID:-[WKBackForwardListItem safari_bookmarkID](itemCopy)];
      [(TabDocument *)self setReadingListBookmark:v12];
    }
  }
}

- (void)_webView:(id)view willSnapshotBackForwardListItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  -[WKBackForwardListItem safari_setNavigationSnapshotRequiresBars:](itemCopy, [WeakRetained canHideBars] ^ 1);
}

- (void)_webView:(id)view shouldGoToBackForwardListItem:(id)item inPageCache:(BOOL)cache completionHandler:(id)handler
{
  cacheCopy = cache;
  itemCopy = item;
  handlerCopy = handler;
  v10 = [itemCopy URL];
  safari_isJavaScriptURL = [v10 safari_isJavaScriptURL];

  if ((safari_isJavaScriptURL & 1) == 0)
  {
    [(WBSTranslationContext *)self->_translationContext owningWebViewWillNavigateToBackForwardListItem:itemCopy inPageCache:cacheCopy];
    self->_isNavigatingViaBackForwardList = 1;
  }

  handlerCopy[2](handlerCopy, safari_isJavaScriptURL ^ 1u);
}

- (void)_webView:(id)view didCommitLoadWithRequest:(id)request inFrame:(id)frame
{
  if (!self->_disableContentBlockersWhenReloading)
  {
    v5 = [(TabDocument *)self sfScribbleController:view];
    [v5 scheduleValidationForHiddenElementsIfNeeded];
  }
}

- (void)_webView:(id)view didFailLoadDueToNetworkConnectionIntegrityWithURL:(id)l
{
  viewCopy = view;
  lCopy = l;
  _contentBlockerStatisticsStore = [(TabDocument *)self _contentBlockerStatisticsStore];
  v8 = [viewCopy URL];
  [_contentBlockerStatisticsStore recordThirdPartyResourceBlocked:lCopy onFirstParty:v8 completionHandler:0];
}

- (void)_webView:(id)view didChangeLookalikeCharactersFromURL:(id)l toURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  trackerInfo = [(TabDocument *)self trackerInfo];
  queryParameterFilteringDataQueue = [trackerInfo queryParameterFilteringDataQueue];
  [queryParameterFilteringDataQueue addPendingDataWithAdjustedURL:rLCopy originalURL:lCopy];
}

- (void)_webView:(id)view requestUserMediaAuthorizationForDevices:(unint64_t)devices url:(id)url mainFrameURL:(id)l decisionHandler:(id)handler
{
  urlCopy = url;
  lCopy = l;
  handlerCopy = handler;
  mEMORY[0x277CDB8F8] = [MEMORY[0x277CDB8F8] sharedController];
  [mEMORY[0x277CDB8F8] requestUserMediaAuthorizationForDevices:devices url:urlCopy mainFrameURL:lCopy decisionHandler:handlerCopy dialogPresenter:self];
}

- (void)_webView:(id)view checkUserMediaPermissionForURL:(id)l mainFrameURL:(id)rL frameIdentifier:(unint64_t)identifier decisionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  mEMORY[0x277CDB8F8] = [MEMORY[0x277CDB8F8] sharedController];
  [mEMORY[0x277CDB8F8] checkUserMediaPermissionForURL:lCopy mainFrameURL:rLCopy frameIdentifier:identifier decisionHandler:handlerCopy];
}

- (void)_webView:(id)view mediaCaptureStateDidChange:(unint64_t)change
{
  viewCopy = view;
  if (self && self->_mediaCaptureState != change)
  {
    self->_mediaCaptureState = change;
    [(TabDocument *)self mediaStateDidChangeNeedsDelay:?];
  }

  v6 = +[Application sharedApplication];
  [v6 updateShouldLockPrivateBrowsingWithTimerIfNecessary];
}

- (void)_updateAudioUI:(id)i
{
  iCopy = i;
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

- (void)_webView:(id)view queryPermission:(id)permission forOrigin:(id)origin completionHandler:(id)handler
{
  permissionCopy = permission;
  handlerCopy = handler;
  safari_hostName = [origin safari_hostName];
  if ([permissionCopy isEqualToString:@"geolocation"])
  {
    mEMORY[0x277CDB7E0] = [MEMORY[0x277CDB7E0] sharedManager];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__TabDocument__webView_queryPermission_forOrigin_completionHandler___block_invoke;
    v17[3] = &unk_2781DB198;
    v18 = handlerCopy;
    [mEMORY[0x277CDB7E0] getGeolocationSettingForDomain:safari_hostName completionHandler:v17];
    v12 = &v18;
  }

  else
  {
    if (([permissionCopy isEqualToString:@"camera"] & 1) == 0 && (objc_msgSend(permissionCopy, "isEqualToString:", @"microphone") & 1) == 0)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
      goto LABEL_7;
    }

    mEMORY[0x277CDB8F8] = [MEMORY[0x277CDB8F8] sharedController];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__TabDocument__webView_queryPermission_forOrigin_completionHandler___block_invoke_2;
    v14[3] = &unk_2781DB1C0;
    v15 = permissionCopy;
    v16 = handlerCopy;
    [mEMORY[0x277CDB8F8] getPermissionForOrigin:safari_hostName topLevelOrigin:safari_hostName completionHandler:v14];
    v12 = &v15;

    mEMORY[0x277CDB7E0] = v16;
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

- (void)webView:(id)view runJavaScriptAlertPanelWithMessage:(id)message initiatedByFrame:(id)frame completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:self];

  if (v10)
  {
    if ([(TabDocument *)self isControlledByAutomation])
    {
      v11 = +[Application sharedApplication];
      automationController = [v11 automationController];
      [automationController tabDocument:self runJavaScriptAlertPanelWithMessage:messageCopy completionHandler:handlerCopy];
    }

    else
    {
      dialogController = self->_dialogController;
      v11 = [MEMORY[0x277D28C48] javaScriptAlertDialogWithMessage:messageCopy completionHandler:handlerCopy];
      [(SFDialogController *)dialogController presentDialog:v11];
    }
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)webView:(id)view runJavaScriptConfirmPanelWithMessage:(id)message initiatedByFrame:(id)frame completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:self];

  if (v10)
  {
    if ([(TabDocument *)self isControlledByAutomation])
    {
      v11 = +[Application sharedApplication];
      automationController = [v11 automationController];
      [automationController tabDocument:self runJavaScriptConfirmPanelWithMessage:messageCopy completionHandler:handlerCopy];
    }

    else
    {
      dialogController = self->_dialogController;
      v11 = [MEMORY[0x277D28C48] javaScriptConfirmDialogWithMessage:messageCopy completionHandler:handlerCopy];
      [(SFDialogController *)dialogController presentDialog:v11];
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)webView:(id)view runJavaScriptTextInputPanelWithPrompt:(id)prompt defaultText:(id)text initiatedByFrame:(id)frame completionHandler:(id)handler
{
  promptCopy = prompt;
  textCopy = text;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:self];

  if (v13)
  {
    if ([(TabDocument *)self isControlledByAutomation])
    {
      v14 = +[Application sharedApplication];
      automationController = [v14 automationController];
      [automationController tabDocument:self runJavaScriptTextInputPanelWithPrompt:promptCopy defaultText:textCopy completionHandler:handlerCopy];
    }

    else
    {
      dialogController = self->_dialogController;
      v14 = [MEMORY[0x277D28C48] javaScriptPromptDialogWithMessage:promptCopy defaultText:textCopy completionHandler:handlerCopy];
      [(SFDialogController *)dialogController presentDialog:v14];
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)_webView:(id)view requestStorageAccessPanelForDomain:(id)domain underCurrentDomain:(id)currentDomain completionHandler:(id)handler
{
  domainCopy = domain;
  currentDomainCopy = currentDomain;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:self];

  if (v12)
  {
    dialogController = self->_dialogController;
    v14 = MEMORY[0x277D28C48];
    webExtensionsController = [(TabDocument *)self webExtensionsController];
    v16 = [v14 requestStorageAccessDialogForDomain:domainCopy underCurrentDomain:currentDomainCopy extensionsController:webExtensionsController completionHandler:handlerCopy];
    [(SFDialogController *)dialogController presentDialog:v16];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)_webView:(id)view createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action windowFeatures:(id)features completionHandler:(id)handler
{
  configurationCopy = configuration;
  actionCopy = action;
  handlerCopy = handler;
  if ([actionCopy _shouldOpenAppLinks])
  {
    request = [actionCopy request];
    v14 = [request URL];

    if ([v14 safari_isHTTPFamilyURL])
    {
      v15 = [objc_alloc(MEMORY[0x277D4A6F0]) initWithURL:v14];
      if ([v15 synchronouslyDecideOpenStrategy] == 3 && !self->_wasLoadedWithLockdownModeEnabled)
      {
        [v15 openExternally];
        handlerCopy[2](handlerCopy, 0);

        goto LABEL_21;
      }
    }
  }

  if ([actionCopy _isUserInitiated])
  {
    v16 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = [WeakRetained popUpPolicyForTabDocument:self];
  }

  _userInitiatedAction = [actionCopy _userInitiatedAction];
  isConsumed = [_userInitiatedAction isConsumed];

  if (isConsumed)
  {
    v16 = 2;
  }

  else if (v16 == 1)
  {
    _userInitiatedAction2 = [actionCopy _userInitiatedAction];
    [_userInitiatedAction2 consume];

    v16 = 1;
  }

  v21 = objc_loadWeakRetained(&self->_browserController);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__TabDocument__webView_createWebViewWithConfiguration_forNavigationAction_windowFeatures_completionHandler___block_invoke;
  aBlock[3] = &unk_2781DB1E8;
  aBlock[4] = self;
  v35 = actionCopy;
  v39 = v16;
  v22 = handlerCopy;
  v38 = v22;
  v14 = v21;
  v36 = v14;
  v37 = configurationCopy;
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

- (void)_webView:(id)view takeFocus:(int64_t)focus
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  rootViewController = [WeakRetained rootViewController];
  usingUnifiedBar = [rootViewController usingUnifiedBar];

  if (usingUnifiedBar)
  {
    [viewCopy resignFirstResponder];
    v9 = [MEMORY[0x277D75518] focusSystemForEnvironment:viewCopy];
    if (objc_opt_respondsToSelector())
    {
      if (focus)
      {
        if (focus == 1)
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

- (BOOL)_webViewCanBecomeFocused:(id)focused
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  favoritesAreEmbedded = [WeakRetained favoritesAreEmbedded];

  return favoritesAreEmbedded ^ 1;
}

- (void)webViewDidClose:(id)close
{
  v7 = [TabDocument tabDocumentForWKWebView:close];
  if (v7)
  {
    if (![(TabDocument *)self isShowingFindOnPage])
    {
      presentedDialog = [(SFDialogController *)self->_dialogController presentedDialog];

      if (!presentedDialog && !self->_isDisplayingTelephonyPrompt)
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

- (void)_webViewFullscreenMayReturnToInline:(id)inline
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained prepareForTabDocumentWebViewFullscreenMayReturnToInline:self];
}

- (void)_webViewWillEnterFullscreen:(id)fullscreen
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

- (void)_webViewDidEnterFullscreen:(id)fullscreen
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

- (void)_webViewDidExitFullscreen:(id)fullscreen
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

- (double)_convertRectFromDocumentToWebView:(double)view
{
  if (!self)
  {
    return 0.0;
  }

  scrollView = [*(self + 1064) scrollView];
  [scrollView zoomScale];
  v12 = v11;

  scrollView2 = [*(self + 1064) scrollView];
  [scrollView2 convertRect:*(self + 1064) toView:{a2 * v12, view * v12, a4 * v12, a5 * v12}];
  v15 = v14;

  return v15;
}

- (void)animateElement:(id)element toBarItem:(int64_t)item
{
  elementCopy = element;
  image = [elementCopy image];
  if (image)
  {
    [elementCopy boundingRect];
    v11 = [(TabDocument *)self _convertRectFromDocumentToWebView:v7, v8, v9, v10];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained animateLinkImage:objc_msgSend(image fromRect:"CGImage") inView:self->_webView toBarItem:{item, v11, v13, v15, v17}];
  }
}

- (id)_webView:(id)view alternateURLFromImage:(id)image userInfo:(id *)info
{
  imageCopy = image;
  mEMORY[0x277CDB870] = [MEMORY[0x277CDB870] sharedController];
  v8 = [mEMORY[0x277CDB870] getActionForImageSynchronously:imageCopy userInfo:info];
  urlThatCanBeOpened = [v8 urlThatCanBeOpened];

  return urlThatCanBeOpened;
}

- (id)presentingViewControllerForAction:(id)action
{
  browserController = [(TabDocument *)self browserController];
  viewControllerToPresentFrom = [browserController viewControllerToPresentFrom];

  return viewControllerToPresentFrom;
}

- (CGRect)sourceRectForPopoverActionPicker:(id)picker
{
  pickerCopy = picker;
  mEMORY[0x277CDB870] = [MEMORY[0x277CDB870] sharedController];
  v6 = [mEMORY[0x277CDB870] elementForAction:pickerCopy];
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

- (id)_presentingViewControllerForWebView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];

  if (activeTabDocument == self)
  {
    viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];
  }

  else
  {
    viewControllerToPresentFrom = 0;
  }

  return viewControllerToPresentFrom;
}

- (void)_webView:(id)view decideDatabaseQuotaForSecurityOrigin:(id)origin currentQuota:(unint64_t)quota currentOriginUsage:(unint64_t)usage currentDatabaseUsage:(unint64_t)databaseUsage expectedUsage:(unint64_t)expectedUsage decisionHandler:(id)handler
{
  originCopy = origin;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = [WeakRetained tabDocumentCanShowJavaScriptAlertConfirmOrTextInput:self];

  if (v17)
  {
    safari_userVisibleName = [originCopy safari_userVisibleName];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __144__TabDocument__webView_decideDatabaseQuotaForSecurityOrigin_currentQuota_currentOriginUsage_currentDatabaseUsage_expectedUsage_decisionHandler___block_invoke;
    v19[3] = &unk_2781DB210;
    v20 = handlerCopy;
    quotaCopy = quota;
    [WebsiteDataUtilities getDatabaseQuotaForOrigin:safari_userVisibleName currentQuota:quota currentOriginUsage:usage currentDatabaseUsage:databaseUsage expectedUsage:expectedUsage dialogPresenter:self completionHandler:v19];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, quota);
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

- (void)_webView:(id)view printFrame:(id)frame
{
  frameCopy = frame;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained presentPrintControllerForTabDocument:self frame:frameCopy initiatedByWebContent:1];
}

- (unint64_t)_webView:(id)view willUpdateDataInteractionOperationToOperation:(unint64_t)operation forSession:(id)session
{
  sessionCopy = session;
  localDragSession = [sessionCopy localDragSession];
  if (localDragSession)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webKitDragSession);
    v10 = localDragSession != WeakRetained;
  }

  else
  {
    v10 = 1;
  }

  if (operation <= 1 && v10 && [MEMORY[0x277D28F40] canCreateNavigationIntentForDropSession:sessionCopy])
  {
    operation = 2;
  }

  return operation;
}

- (BOOL)_webView:(id)view performDataInteractionOperationWithItemProviders:(id)providers
{
  viewCopy = view;
  providersCopy = providers;
  v8 = self->_deferredDropNavigationIntentGeneration + 1;
  self->_deferredDropNavigationIntentGeneration = v8;
  builder = [MEMORY[0x277D28F40] builder];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__TabDocument__webView_performDataInteractionOperationWithItemProviders___block_invoke;
  v13[3] = &unk_2781DB238;
  v13[4] = self;
  v13[5] = v8;
  [builder buildNavigationIntentForItemProviders:providersCopy completionHandler:v13];

  readerWebView = self->_readerWebView;
  if (readerWebView == viewCopy)
  {
    deferredDropWasHandledByWebKit = self->_deferredDropWasHandledByWebKit;
    self->_deferredDropWasHandledByWebKit = MEMORY[0x277CBEC28];

    [(TabDocument *)self _attemptDeferredDropNavigation];
  }

  return readerWebView == viewCopy;
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
  if (self)
  {
    v2 = *(self + 464);
    if (v2)
    {
      if (*(self + 448))
      {
        if (([v2 BOOLValue] & 1) == 0)
        {
          WeakRetained = objc_loadWeakRetained((self + 992));
          [WeakRetained dispatchNavigationIntent:*(self + 448)];
        }

        v4 = *(self + 448);
        *(self + 448) = 0;

        v5 = *(self + 464);
        *(self + 464) = 0;
      }
    }
  }
}

- (void)_webView:(id)view dataInteractionOperationWasHandled:(BOOL)handled forSession:(id)session itemProviders:(id)providers
{
  v7 = [MEMORY[0x277CCABB0] numberWithBool:handled];
  deferredDropWasHandledByWebKit = self->_deferredDropWasHandledByWebKit;
  self->_deferredDropWasHandledByWebKit = v7;

  [(TabDocument *)self _attemptDeferredDropNavigation];
}

- (id)_webView:(id)view adjustedDataInteractionItemProvidersForItemProvider:(id)provider representingObjects:(id)objects additionalData:(id)data
{
  v44 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  providerCopy = provider;
  objectsCopy = objects;
  dataCopy = data;
  v29 = [objectsCopy safari_firstObjectPassingTest:&__block_literal_global_636];
  if (v29)
  {
    v10 = [MEMORY[0x277D28F40] builderWithModifierFlags:{0, viewCopy}];
    v30 = [v10 navigationIntentWithURL:v29];

    uuid = [(TabDocument *)self uuid];
    [v30 setSourceTabUUID:uuid];

    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    uUID = [WeakRetained UUID];
    [v30 setSourceWindowUUID:uUID];

    v33 = providerCopy;
    v14 = [MEMORY[0x277CC1EF0] _sf_windowCreationActivityWithNavigationIntent:v30];
    v15 = objc_alloc_init(MEMORY[0x277CCAA88]);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    registeredContentTypes = [v33 registeredContentTypes];
    obj = registeredContentTypes;
    v17 = [registeredContentTypes countByEnumeratingWithState:&v37 objects:v43 count:16];
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

          identifier = [v21 identifier];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __111__TabDocument__webView_adjustedDataInteractionItemProvidersForItemProvider_representingObjects_additionalData___block_invoke_2;
          v34[3] = &unk_2781DB260;
          v35 = v33;
          v36 = v21;
          [v15 registerItemForTypeIdentifier:identifier loadHandler:v34];
        }

        registeredContentTypes = obj;
        v17 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v17);
    }

    v42 = v15;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  }

  else
  {
    v41 = providerCopy;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:{1, viewCopy}];
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

- (void)_webView:(id)view requestGeolocationAuthorizationForURL:(id)l frame:(id)frame decisionHandler:(id)handler
{
  lCopy = l;
  frameCopy = frame;
  handlerCopy = handler;
  mEMORY[0x277CDB7E0] = [MEMORY[0x277CDB7E0] sharedManager];
  [mEMORY[0x277CDB7E0] requestPermissionForURL:lCopy frame:frameCopy dialogPresenter:self browserPersona:0 completionHandler:handlerCopy];
}

- (BOOL)_webView:(id)view fileUploadPanelContentIsManagedWithInitiatingFrame:(id)frame
{
  frameCopy = frame;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  request = [frameCopy request];
  v7 = [request URL];
  safari_URLByNormalizingBlobURL = [v7 safari_URLByNormalizingBlobURL];
  v9 = [mEMORY[0x277D262A0] isURLManaged:safari_URLByNormalizingBlobURL];

  return v9;
}

- (void)_webView:(id)view didChangeSafeAreaShouldAffectObscuredInsets:(BOOL)insets
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentDidChangeSafeAreaShouldAffectObscuredInsets:self];
}

- (void)_webView:(id)view requestWebAuthenticationConditionalMediationRegistrationForUser:(id)user completionHandler:(id)handler
{
  userCopy = user;
  handlerCopy = handler;
  mEMORY[0x277CDB7D8] = [MEMORY[0x277CDB7D8] sharedController];
  tabIDForAutoFill = [(TabDocument *)self tabIDForAutoFill];
  committedURL = [(TabDocument *)self committedURL];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__TabDocument__webView_requestWebAuthenticationConditionalMediationRegistrationForUser_completionHandler___block_invoke;
  v13[3] = &unk_2781D6380;
  v12 = handlerCopy;
  v14 = v12;
  [mEMORY[0x277CDB7D8] canAutomaticallyRegisterPasskeyForUsername:userCopy inTabWithID:tabIDForAutoFill currentURL:committedURL completionHandler:v13];
}

- (void)_webView:(id)view hasVideoInPictureInPictureDidChange:(BOOL)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained tabDocument:self didChangePIPState:changeCopy];

  [(TabDocument *)self updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:[(TabDocument *)self isActive]];
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportPictureInPictureEvent:changeCopy ^ 1];
}

- (void)_webView:(id)view willStartInputSession:(id)session
{
  sessionCopy = session;
  v5 = [objc_alloc(MEMORY[0x277CDB7D0]) initWithFormInputSession:sessionCopy];
  if (![sessionCopy requiresStrongPasswordAssistance] || (-[_SFFormAutoFillController prepareForShowingAutomaticStrongPasswordWithInputSession:](self->_autoFillController, "prepareForShowingAutomaticStrongPasswordWithInputSession:", v5), (objc_msgSend(MEMORY[0x277D49A08], "isPasswordsAppInstalled") & 1) != 0))
  {
    [(_SFFormAutoFillController *)self->_autoFillController fieldWillFocusWithInputSession:v5];
  }
}

- (void)_webView:(id)view didStartInputSession:(id)session
{
  sessionCopy = session;
  if (![sessionCopy requiresStrongPasswordAssistance] || (objc_msgSend(MEMORY[0x277D49A08], "isPasswordsAppInstalled") & 1) != 0)
  {
    [(_SFFormAutoFillController *)self->_autoFillController fieldDidFocus];
  }
}

- (BOOL)_webView:(id)view focusRequiresStrongPasswordAssistance:(id)assistance
{
  assistanceCopy = assistance;
  v6 = [objc_alloc(MEMORY[0x277CDB7D0]) initWithFocusedElement:assistanceCopy];
  shouldShowPasswordManagementAppOnboardingViews = [(_SFFormAutoFillController *)self->_autoFillController shouldShowPasswordManagementAppOnboardingViews];
  autoFillController = self->_autoFillController;
  if (shouldShowPasswordManagementAppOnboardingViews)
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

- (id)_webViewAdditionalContextForStrongPasswordAssistance:(id)assistance
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CDB958];
  uuid = [(TabDocument *)self uuid];
  uUIDString = [uuid UUIDString];
  v8[0] = uUIDString;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (void)_webView:(id)view willSubmitFormValues:(id)values userObject:(id)object submissionHandler:(id)handler
{
  valuesCopy = values;
  objectCopy = object;
  handlerCopy = handler;
  operator new();
}

void *__74__TabDocument__webView_willSubmitFormValues_userObject_submissionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v1[8] = 1;
  return (*(*v1 + 16))(v1);
}

- (int64_t)_webView:(id)view decidePolicyForFocusedElement:(id)element
{
  viewCopy = view;
  elementCopy = element;
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
    if ([(_SFFormAutoFillController *)self->_autoFillController elementIsBeingFocusedForStreamlinedLogin:elementCopy])
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
      _committedURL = [viewCopy _committedURL];
      if ([WeakRetained isEqual:_committedURL])
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

- (void)_webViewDidEnableInspectorBrowserDomain:(id)domain
{
  domainCopy = domain;
  webExtensionsStateObserver = self->_webExtensionsStateObserver;
  if (!webExtensionsStateObserver)
  {
    v5 = objc_alloc(MEMORY[0x277D4A800]);
    webView = self->_webView;
    webExtensionsController = [(TabDocument *)self webExtensionsController];
    v8 = [v5 initWithWebView:webView extensionsController:webExtensionsController];
    v9 = self->_webExtensionsStateObserver;
    self->_webExtensionsStateObserver = v8;

    webExtensionsStateObserver = self->_webExtensionsStateObserver;
  }

  [(WBSSafariExtensionStateObserver *)webExtensionsStateObserver startObservingExtensionStateChanges];
}

- (void)_webViewDidDisableInspectorBrowserDomain:(id)domain
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

- (void)browsingAssistantController:(id)controller didUpdateContentOptionsForURL:(id)l
{
  controllerCopy = controller;
  lCopy = l;
  committedURL = [(TabDocument *)self committedURL];
  v8 = WBSIsEqual();

  if (v8)
  {
    result = [controllerCopy result];
    contentOptions = [result contentOptions];

    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained tabDocument:self didReceiveAssistantContentOptions:contentOptions];

    [(SFNavigationBarItem *)self->_navigationBarItem updateContentOptions:contentOptions];
  }
}

- (void)browsingAssistantControllerDidUpdateUserConsentState:(id)state
{
  if ([(TabDocument *)self allowsBrowsingAssistant])
  {
    assistantController = self->_assistantController;
    v6 = [(TabDocument *)self url];
    webpageLocale = [(WBSTranslationContext *)self->_translationContext webpageLocale];
    [(WBSBrowsingAssistantController *)assistantController checkForAssistantContentFromPegasusForURL:v6 locale:webpageLocale];
  }
}

- (void)loadingController:(id)controller willLoadRequest:(id)request webView:(id)view userDriven:(BOOL)driven
{
  drivenCopy = driven;
  requestCopy = request;
  viewCopy = view;
  [(TabDocument *)self _loadingControllerWillLoadRequest:requestCopy webView:v10 userDriven:drivenCopy];
  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator willStartNewBrowserChromeInitiatedNavigation];
}

- (void)loadingControllerWillStartUserDrivenLoad:(id)load
{
  *&self->_loadWasUserDriven = 1;
  self->_shouldResetPrintSuppressionOnNextCommit = 1;
  self->_sessionStateRestorationSource = 0;
  [(WBSURLSpoofingMitigator *)self->_URLSpoofingMitigator willStartNewBrowserChromeInitiatedNavigation];
}

- (void)_webView:(id)view logDiagnosticMessage:(id)message description:(id)description
{
  messageCopy = message;
  descriptionCopy = description;
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] logDiagnosticMessageWithKey:messageCopy diagnosticMessage:descriptionCopy];
}

- (void)_webView:(id)view logDiagnosticMessageWithResult:(id)result description:(id)description result:(int64_t)a6
{
  resultCopy = result;
  descriptionCopy = description;
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] logDiagnosticMessageWithKey:resultCopy diagnosticMessage:descriptionCopy result:a6];
}

- (void)_webView:(id)view logDiagnosticMessageWithValue:(id)value description:(id)description value:(id)a6
{
  valueCopy = value;
  descriptionCopy = description;
  v9 = a6;
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] logDiagnosticMessageWithKey:valueCopy diagnosticMessage:descriptionCopy value:v9];
}

- (void)_webView:(id)view logDiagnosticMessageWithEnhancedPrivacy:(id)privacy description:(id)description
{
  viewCopy = view;
  privacyCopy = privacy;
  descriptionCopy = description;
  if (-[TabDocument isPrivateBrowsingEnabled](self, "isPrivateBrowsingEnabled") || ([MEMORY[0x277D49E30] sharedManager], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "donateForDiagnosticLoggingKey:value:webPageLoadedOverPrivateRelay:", privacyCopy, descriptionCopy, objc_msgSend(viewCopy, "_wasPrivateRelayed")), v10, (v11 & 1) == 0))
  {
    WBSLogWithDifferentialPrivacy();
  }
}

- (void)_webView:(id)view logDiagnosticMessage:(id)message description:(id)description valueDictionary:(id)dictionary
{
  messageCopy = message;
  descriptionCopy = description;
  dictionaryCopy = dictionary;
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didReceiveAnalyticsEventFromWebKitWithName:messageCopy description:descriptionCopy payload:dictionaryCopy];
}

- (void)_webView:(id)view logDiagnosticMessageWithDomain:(id)domain domain:(int64_t)a5
{
  v12 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
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
        uTF8String = [domainCopy UTF8String];
        _os_log_impl(&dword_215819000, v9, OS_LOG_TYPE_INFO, "%s", &v10, 0xCu);
      }
    }
  }
}

- (void)didAutoDetectSiteSpecificSearchProviderWithOriginatingURL:(id)l searchURLTemplate:(id)template
{
  lCopy = l;
  templateCopy = template;
  v7 = [MEMORY[0x277CBEBC0] URLWithString:templateCopy];
  if (v7)
  {
    browserController = [(TabDocument *)self browserController];
    activeSearchEngine = [browserController activeSearchEngine];
    v10 = [activeSearchEngine urlIsValidSearch:v7];

    if (v10)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      rootViewController = [WeakRetained rootViewController];
      tipsCoordinator = [rootViewController tipsCoordinator];
      [tipsCoordinator donatePerformSearchFromDefaultSearchEngineWebPageEvent];
    }
  }

  if ([(_SFBrowserConfiguration *)self->_configuration allowsSiteSpecificSearch])
  {
    mEMORY[0x277D4A028] = [MEMORY[0x277D4A028] sharedController];
    v15 = [objc_alloc(MEMORY[0x277D49FB8]) initWithString:templateCopy];
    absoluteString = [lCopy absoluteString];
    [mEMORY[0x277D4A028] setSearchURLTemplateFromForm:v15 forSourcePageURLString:absoluteString completionHandler:0];
  }
}

- (void)didFindAppBannerWithContent:(id)content
{
  contentCopy = content;
  if (!self->_storeBannersAreDisabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    isPrivateBrowsingEnabled = [WeakRetained isPrivateBrowsingEnabled];

    if ((isPrivateBrowsingEnabled & 1) == 0)
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

- (void)findOnPageCompletionProvider:(id)provider setStringToComplete:(id)complete
{
  v27[1] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  completeCopy = complete;
  queryString = [(SFTextSearchMatchesCounter *)self->_findMatchesCounter queryString];
  v9 = [queryString isEqualToString:completeCopy];

  if ((v9 & 1) == 0)
  {
    objc_storeWeak(&self->_findCompletionProvider, providerCopy);
    findInteraction = [(TabDocument *)self findInteraction];
    _configuredSearchOptions = [findInteraction _configuredSearchOptions];
    if (-[SFTextSearchMatchesCounter canSkipCountingMatchesForQueryString:wordMatchMethod:](self->_findMatchesCounter, "canSkipCountingMatchesForQueryString:wordMatchMethod:", completeCopy, [_configuredSearchOptions wordMatchMethod]))
    {
      v12 = -[FindOnPageCompletionItem initWithString:numberOfMatches:forQueryID:]([FindOnPageCompletionItem alloc], "initWithString:numberOfMatches:forQueryID:", completeCopy, 0, [providerCopy parsecQueryID]);
      v27[0] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      [providerCopy setCompletions:v13 forString:completeCopy];
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
      v16 = completeCopy;
      v24 = v16;
      v17 = [v15 initWithQueryString:v16 completionHandler:&v20];
      findMatchesCounter = self->_findMatchesCounter;
      self->_findMatchesCounter = v17;

      v19 = [(TabDocument *)self activeWebView:v20];
      [v19 performTextSearchWithQueryString:v16 usingOptions:_configuredSearchOptions resultAggregator:self->_findMatchesCounter];

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

- (void)_updateFindCompletionProviderWithNumberOfMatches:(void *)matches forString:
{
  v9[1] = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 152));
    if (WeakRetained)
    {
      v7 = -[FindOnPageCompletionItem initWithString:numberOfMatches:forQueryID:]([FindOnPageCompletionItem alloc], "initWithString:numberOfMatches:forQueryID:", matchesCopy, a2, [WeakRetained parsecQueryID]);
      v9[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      [WeakRetained setCompletions:v8 forString:matchesCopy];
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
  activeWebView = [(TabDocument *)self activeWebView];
  _findInteractionEnabled = [activeWebView _findInteractionEnabled];

  return _findInteractionEnabled;
}

- (void)showFindOnPage
{
  activeWebView = [(TabDocument *)self activeWebView];
  [activeWebView find:0];
}

- (UIEdgeInsets)_webView:(id)view finalObscuredInsetsForScrollView:(id)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  scrollViewCopy = scrollView;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained finalObscuredInsetsForScrollView:scrollViewCopy withVelocity:offset targetContentOffset:{x, y}];
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

- (BOOL)formAutoFillControllerCanPrefillForm:(id)form
{
  didFirstLayout = [(TabDocument *)self didFirstLayout];
  if (didFirstLayout)
  {

    LOBYTE(didFirstLayout) = [(TabDocument *)self didFinishDocumentLoad];
  }

  return didFirstLayout;
}

- (id)formAutoFillControllerURLForFormAutoFill:(id)fill
{
  v3 = [(TabDocument *)self URL];

  return v3;
}

- (id)currentSavedAccountContextForFormAutoFillController:(id)controller
{
  profileIdentifier = [(TabDocument *)self profileIdentifier];
  if ([profileIdentifier isEqualToString:*MEMORY[0x277D49BD8]])
  {
    defaultContext = [MEMORY[0x277D49B30] defaultContext];
  }

  else
  {
    defaultContext = [objc_alloc(MEMORY[0x277D49B30]) initWithSafariProfileIdentifier:profileIdentifier];
  }

  v5 = defaultContext;

  return v5;
}

- (BOOL)formAutoFillControllerDidUserDeclineAutomaticStrongPasswordForCurrentDomain:(id)domain
{
  committedURL = [(TabDocument *)self committedURL];
  safari_userVisibleHostWithoutWWWSubdomain = [committedURL safari_userVisibleHostWithoutWWWSubdomain];

  LOBYTE(committedURL) = [safari_userVisibleHostWithoutWWWSubdomain isEqualToString:self->_domainWhereUserDeclinedAutomaticStrongPassword];
  return committedURL;
}

- (void)formAutoFillControllerUserChoseToUseGeneratedPassword:(id)password
{
  domainWhereUserDeclinedAutomaticStrongPassword = self->_domainWhereUserDeclinedAutomaticStrongPassword;
  self->_domainWhereUserDeclinedAutomaticStrongPassword = 0;
}

- (void)formAutoFillControllerDidFocusSensitiveFormField:(id)field
{
  hasFocusedInputFieldOnCurrentPage = self->_hasFocusedInputFieldOnCurrentPage;
  self->_hasFocusedInputFieldOnCurrentPage = 1;
  if (!hasFocusedInputFieldOnCurrentPage)
  {
    [(TabDocument *)self _updateNavigationBarItem];
  }
}

- (void)formAutoFillControllerGetAuthenticationForAutoFill:(id)fill completion:(id)completion
{
  fillCopy = fill;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained tabDocumentCanDisplayModalUI:self];

  if (v9)
  {
    [(TabDocument *)self _getAuthenticationForAutoFillController:fillCopy withCompletion:completionCopy];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
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

- (void)presentAutoFillInternalFeedbackToastForFormAutoFillController:(id)controller diagnosticsDataWithoutPageContents:(id)contents
{
  contentsCopy = contents;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained presentAutoFillInternalFeedbackToastWithDiagnosticsDataWithoutPageContents:contentsCopy];
}

- (void)dismissAutoFillInternalFeedbackActivityForFormAutoFillController:(id)controller immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained dismissAutoFillInternalFeedbackToastImmediately:immediatelyCopy];
}

- (void)resetPendingAutoFillInternalFeedbackToastDismissalTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained resetPendingAutoFillInternalFeedbackToastDismissalTimer];
}

- (BOOL)printControllerShouldPrintReader:(id)reader
{
  if (self->_showingReader)
  {
    return 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    presentedActivityViewController = [WeakRetained presentedActivityViewController];

    if (presentedActivityViewController)
    {
      customizationController = [presentedActivityViewController customizationController];
      showingReader = [customizationController selectedContentType] == 2;
    }

    else
    {
      showingReader = self->_showingReader;
    }
  }

  return showingReader;
}

- (BOOL)printControllerCanPresentPrintUI:(id)i
{
  iCopy = i;
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

- (id)presentingViewControllerForPrintController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];

  return viewControllerToPresentFrom;
}

- (id)URLStringForPrintController:(id)controller
{
  uRLString = [(TabDocument *)self URLString];

  return uRLString;
}

- (id)pageTitleForPrintController:(id)controller
{
  titleForSharing = [(TabDocument *)self titleForSharing];

  return titleForSharing;
}

- (id)loadingDialogPageTitleForPrintController:(id)controller
{
  titleForNewBookmark = [(TabDocument *)self titleForNewBookmark];

  return titleForNewBookmark;
}

- (int64_t)dialogController:(id)controller presentationPolicyForDialog:(id)dialog
{
  dialogCopy = dialog;
  v6 = [dialogCopy completionHandlerBlocksWebProcess] ^ 1;
  if (!self)
  {
    LOBYTE(v6) = 1;
  }

  if ((v6 & 1) == 0 && (self->_shouldSuppressDialogsThatBlockWebProcessForProvisionalNavigation || self->_showingReader))
  {
    v8 = 1;
    goto LABEL_14;
  }

  if ([dialogCopy presentationStyle] != 1)
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

  shouldIgnoreGlobalModalUIDisplayPolicy = [dialogCopy shouldIgnoreGlobalModalUIDisplayPolicy];

  if (shouldIgnoreGlobalModalUIDisplayPolicy)
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

- (void)dialogController:(id)controller willPresentDialog:(id)dialog
{
  self->_showingInlineDialog = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentWillShowInlineDialog:self];
}

- (void)dialogController:(id)controller didDismissDialog:(id)dialog
{
  self->_showingInlineDialog = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentWillDismissInlineDialog:self];
}

- (CGPoint)getLastWindowTapLocation
{
  v2 = +[Application sharedApplication];
  browserWindowController = [v2 browserWindowController];

  v4 = +[Application sharedApplication];
  primaryBrowserController = [v4 primaryBrowserController];

  v6 = [browserWindowController uiDelegateForBrowserController:primaryBrowserController];
  [v6 browserControllerWindowLastTapLocation:primaryBrowserController];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)dialogController:(id)controller presentViewController:(id)viewController withAdditionalAnimations:(id)animations
{
  viewControllerCopy = viewController;
  animationsCopy = animations;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocument:self presentViewControllerAnimated:viewControllerCopy];

  [viewControllerCopy _sf_animateAlongsideTransitionOrPerform:animationsCopy];
}

- (void)dialogController:(id)controller dismissViewController:(id)viewController withAdditionalAnimations:(id)animations
{
  viewControllerCopy = viewController;
  animationsCopy = animations;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocument:self dismissViewControllerAnimated:viewControllerCopy];

  [viewControllerCopy _sf_animateAlongsideTransitionOrPerform:animationsCopy];
}

- (void)pageLoadErrorControllerDidAddAlert:(id)alert
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentDidAddAlert:self];
}

- (BOOL)pageLoadErrorControllerShouldHandleCertificateError:(id)error
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained tabDocumentShouldHandleCertificateError:selfCopy];

  return selfCopy;
}

- (void)pageLoadErrorController:(id)controller loadFailedRequestAfterError:(id)error
{
  failedRequest = [controller failedRequest];
  v5 = [TabDocument loadRequest:"loadRequest:userDriven:" userDriven:?];
}

- (id)pageLoadErrorControllerGetSecIdentityPreferencesController:(id)controller
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

- (void)pageLoadErrorControllerClosePage:(id)page
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  [tabController closeTab:self animated:1];
}

- (void)pageLoadErrorControllerReloadUsingHTTPSOnlyBypass:(id)bypass
{
  v4 = [(TabDocument *)self URL];
  host = [v4 host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
  highLevelDomainForHTTPSOnlyBypass = self->_highLevelDomainForHTTPSOnlyBypass;
  self->_highLevelDomainForHTTPSOnlyBypass = safari_highLevelDomainFromHost;

  [(TabDocument *)self reload];
}

- (void)pageLoadErrorControllerReloadWithoutPrivateRelay:(id)relay
{
  mEMORY[0x277D4A008] = [MEMORY[0x277D4A008] sharedManager];
  expectedOrCurrentURL = [(TabDocument *)self expectedOrCurrentURL];
  [mEMORY[0x277D4A008] rememberPrivateRelayFailClosedExceptionForURL:expectedOrCurrentURL];

  [(TabDocument *)self reloadEnablingDowngradedPrivateRelay:1];
}

- (void)pageLoadErrorController:(id)controller presentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocument:self presentViewControllerAnimated:viewControllerCopy];
}

- (BOOL)pageLoadErrorControllerShouldReloadAfterError:(id)error
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  isSuspendedOrSuspending = [WeakRetained isSuspendedOrSuspending];

  return isSuspendedOrSuspending ^ 1;
}

- (void)pageLoadErrorController:(id)controller allowLegacyTLSConnectionForURL:(id)l navigateToURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v8 = +[Application sharedApplication];
  legacyTLSHostManager = [v8 legacyTLSHostManager];
  host = [lCopy host];
  [legacyTLSHostManager allowLegacyTLSForHost:host];

  v11 = [(TabDocument *)self loadURL:rLCopy userDriven:1];
}

- (void)clearReaderScrollInformation
{
  initialArticleScrollDictionaryForCloudTab = self->_initialArticleScrollDictionaryForCloudTab;
  self->_initialArticleScrollDictionaryForCloudTab = 0;

  self->_readerViewTopScrollOffset = 0;
}

- (void)updateReadingListItemPreviewText:(id)text
{
  textCopy = text;
  readingListBookmarkID = [(TabDocument *)self readingListBookmarkID];
  titleForNewBookmark = [(TabDocument *)self titleForNewBookmark];
  v6 = [(TabDocument *)self URL];
  absoluteString = [v6 absoluteString];

  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  [(WebBookmarkCollection *)mainBookmarkCollection updateReadingListBookmarkWithID:readingListBookmarkID setTitle:titleForNewBookmark address:absoluteString previewText:textCopy thumbnailURL:0 siteName:0];
}

- (void)didActivateReader
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (-[TabDocument shouldActivateReaderWhenAvailable](self, "shouldActivateReaderWhenAvailable") && ([WeakRetained readerShouldBeShownIfPossible] & 1) == 0)
  {
    [WeakRetained setReaderShouldBeShownIfPossible:1];
  }

  tabController = [WeakRetained tabController];
  [tabController saveTabDocumentUserActivitySoon:self];

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:9];
}

- (void)_detectWebpageLocaleWithTextSamples:(void *)samples url:
{
  v5 = a2;
  samplesCopy = samples;
  if (self)
  {
    objc_initWeak(&location, self);
    v7 = self[132];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__TabDocument__detectWebpageLocaleWithTextSamples_url___block_invoke;
    v8[3] = &unk_2781D6CA0;
    objc_copyWeak(&v10, &location);
    v9 = samplesCopy;
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

- (void)readerController:(id)controller didDetermineAdditionalTextSamples:(id)samples dueTo:(int64_t)to
{
  translationContext = self->_translationContext;
  textSamples = [samples textSamples];
  v7 = [(TabDocument *)self URL];
  [(WBSTranslationContext *)translationContext setWebpageLocaleWithExtractedTextSamples:textSamples url:v7 completionHandler:0];
}

- (void)readerController:(id)controller didDetermineReaderAvailability:(id)availability dueTo:(int64_t)to
{
  availabilityCopy = availability;
  isReaderAvailable = [availabilityCopy isReaderAvailable];
  self->_hasDoneReaderAvailabilityDetection = 1;
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didDetermineReaderAvailability:isReaderAvailable];

  if (to == 2)
  {
    goto LABEL_42;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained isReaderViewStale])
  {
    nextContinuousItemDocument = [WeakRetained nextContinuousItemDocument];

    if (nextContinuousItemDocument != self)
    {
      if (isReaderAvailable)
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
    if ((isReaderAvailable & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    shouldRestoreReader = 0;
    if ((isReaderAvailable & 1) == 0)
    {
LABEL_18:
      if (to == 1 && [(TabDocument *)self isShowingReader])
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
    mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8]2 didActivateReaderWithTrigger:2];
  }

  if (!shouldRestoreReader)
  {
    goto LABEL_28;
  }

LABEL_26:
  self->_shouldRestoreReader = 0;
LABEL_28:
  textSamples = [availabilityCopy textSamples];
  [(TabDocument *)self _detectWebpageLocaleWithTextSamples:textSamples url:v12];

  v17 = +[Application sharedApplication];
  systemNoteTakingController = [v17 systemNoteTakingController];

  canonicalURL = [availabilityCopy canonicalURL];
  [systemNoteTakingController cacheCanonicalURL:canonicalURL forWebPageURL:v12];

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
    uUIDString = [(NSUUID *)self->_biomeWebpageIdentifier UUIDString];
    [(WBSBrowsingAssistantController *)self->_assistantController setWebpageIdentifier:uUIDString];

    uUIDString2 = [(NSUUID *)self->_biomeWebpageIdentifier UUIDString];
    [(SFNavigationBarItem *)self->_navigationBarItem setWebpageIdentifier:uUIDString2];
  }

  if (isReaderAvailable)
  {
    [(WBSBrowsingAssistantController *)self->_assistantController didFindLocalContentWithOptions:32 forURL:v12];
  }

  [(WBSBrowsingAssistantController *)self->_assistantController setCachedReaderArticleTitle:0];
  if (self->_active)
  {
    uRLForPerSitePreferences = [(TabDocument *)self URLForPerSitePreferences];
    safari_userVisibleHostWithoutWWWSubdomain = [uRLForPerSitePreferences safari_userVisibleHostWithoutWWWSubdomain];

    if (![safari_userVisibleHostWithoutWWWSubdomain length] || to == 1 && self->_lastReaderDeactivationMode == 1)
    {
      navigationBarItem = [(TabDocument *)self navigationBarItem];
      [navigationBarItem setShowsReaderButton:isReaderAvailable showsAvailabilityText:isReaderAvailable];

      v27 = objc_loadWeakRetained(&self->_delegate);
      [v27 tabDocument:self didDetectReaderAvailability:isReaderAvailable];
    }

    else
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__TabDocument_readerController_didDetermineReaderAvailability_dueTo___block_invoke;
      aBlock[3] = &unk_2781DA8E0;
      objc_copyWeak(&v32, &location);
      v33 = isReaderAvailable;
      v28 = _Block_copy(aBlock);
      perSitePreferencesVendor = [(TabDocument *)self perSitePreferencesVendor];
      automaticReaderActivationManager = [perSitePreferencesVendor automaticReaderActivationManager];
      [automaticReaderActivationManager getAutomaticReaderEnabledForDomain:safari_userVisibleHostWithoutWWWSubdomain usingBlock:v28];

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

- (void)readerController:(id)controller didDeactivateReaderWithMode:(unint64_t)mode
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = ![(TabDocument *)self shouldActivateReaderWhenAvailable];
  if (mode != 1)
  {
    LOBYTE(v6) = 1;
  }

  if ((v6 & 1) == 0)
  {
    [WeakRetained setReaderShouldBeShownIfPossible:0];
  }

  [WeakRetained setReaderViewStale:0];
  tabController = [WeakRetained tabController];
  [tabController saveTabDocumentUserActivitySoon:self];

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] reportTabUpdatedWithUpdateType:10];

  self->_lastReaderDeactivationMode = mode;
}

- (void)readerController:(id)controller didClickLinkInReaderWithRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy URL];
  builder = [MEMORY[0x277D28F40] builder];
  v7 = [builder navigationIntentWithURL:v5];

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

    v10 = [requestCopy URL];
    v11 = [(TabDocument *)self loadURL:v10 userDriven:1];
  }
}

- (void)readerController:(id)controller didClickLinkRequestingNewWindowInReaderWithRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy URL];
  v6 = [(TabDocument *)self resultOfLoadingURL:v5];
  if ([v6 type] == 3)
  {
    v7 = [(TabDocument *)self loadRequest:requestCopy userDriven:1];
  }

  else
  {
    builder = [MEMORY[0x277D28F40] builder];
    [builder setPrefersOpenInNewTab:1];
    [builder setPreferredTabOrder:1];
    v9 = [builder navigationIntentWithURL:v5];
    [(TabDocument *)self dispatchNavigationIntent:v9];
  }
}

- (void)readerController:(id)controller didTwoFingerTapLinkInReaderWithContext:(id)context
{
  controllerCopy = controller;
  contextCopy = context;
  if (![(TabDocument *)self _handleTwoFingerTapOnLinkWithContext:contextCopy])
  {
    navigationAction = [contextCopy navigationAction];
    request = [navigationAction request];
    [(TabDocument *)self readerController:controllerCopy didClickLinkInReaderWithRequest:request];
  }
}

- (void)readerController:(id)controller didExtractArticleText:(id)text withMetadata:(id)metadata
{
  metadataCopy = metadata;
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocument:self didExtractArticleText:textCopy withMetadata:metadataCopy];

  if (self->_donateTextTimer)
  {

    [(TabDocument *)&self->super.isa _donateTextAllowingDonationWithoutReaderText:?];
  }
}

- (void)filteredArticleTextDidBecomeReadyForReaderController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained filteredArticleTextDidBecomeReadyInTabDocument:self];
}

- (void)_presentViewControllerAnimatedForSummarizationContent:(uint64_t)content
{
  v3 = a2;
  if (content)
  {
    v5 = v3;
    WeakRetained = objc_loadWeakRetained((content + 1248));
    [WeakRetained tabDocument:content presentViewControllerAnimated:v5];

    v3 = v5;
  }
}

- (void)_didOKSummarizationAlertToReset
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 1248));
    [WeakRetained tabDocumentDidOKSummarizationAlertToReset:self];
  }
}

- (void)_didCancelSummarizationAlertToReset
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 1248));
    [WeakRetained tabDocumentDidCancelSummarization:self];
  }
}

- (void)didFindSummarizationRestrictionsForReaderController:(id)controller
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

- (void)readerController:(id)controller didEncounterErrorForSummarization:(id)summarization
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

- (void)readerController:(id)controller didFinishOnDemandSummarization:(id)summarization
{
  summarizationCopy = summarization;
  if ([summarizationCopy isSafe])
  {
    summary = [summarizationCopy summary];
    [(TabDocument *)self _setReaderArticleSummary:summary];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__TabDocument_readerController_didFinishOnDemandSummarization___block_invoke;
    v7[3] = &unk_2781D61F8;
    v7[4] = self;
    v8 = summarizationCopy;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

- (void)_setReaderArticleSummary:(uint64_t)summary
{
  v3 = a2;
  if (summary)
  {
    v4 = *(summary + 296);
    v5 = _WBSLocalizedString();
    v6 = _WBSLocalizedString();
    tableOfContentsTitles = [*(summary + 1088) tableOfContentsTitles];
    tableOfContentsPaths = [*(summary + 1088) tableOfContentsPaths];
    tableOfContentsTrailingTexts = [*(summary + 1088) tableOfContentsTrailingTexts];
    LODWORD(v11) = [*(summary + 1088) tableOfContentsType];
    [v4 setArticleSummary:v3 withSummaryHeader:v5 tableOfContentsHeader:v6 readerURLString:&stru_2827BF158 titles:tableOfContentsTitles paths:tableOfContentsPaths trailingText:tableOfContentsTrailingTexts tableOfContentsType:v11 attribution:0];

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
  isFileURL = [v3 isFileURL];

  return isFileURL;
}

- (id)readerPageArchiveURL
{
  if ([(TabDocument *)self readingListBookmarkID])
  {
    mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    v4 = [mainBookmarkCollection bookmarkWithID:{-[TabDocument readingListBookmarkID](self, "readingListBookmarkID")}];

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

- (void)_createBrowserReaderViewIfNeeded:(uint64_t)needed
{
  v3 = a2;
  if (needed && !*(needed + 1432))
  {
    v29 = v3;
    v4 = objc_alloc_init(MEMORY[0x277CE3858]);
    WeakRetained = objc_loadWeakRetained((needed + 992));
    processPool = [WeakRetained processPool];
    [v4 setProcessPool:processPool];

    [v4 _setRelatedWebView:*(needed + 1064)];
    [v4 _setAlternateWebViewForNavigationGestures:*(needed + 1064)];
    [v4 _setGroupIdentifier:*MEMORY[0x277CDB9E8]];
    configuration = [*(needed + 1064) configuration];
    websiteDataStore = [configuration websiteDataStore];
    [v4 setWebsiteDataStore:websiteDataStore];

    v9 = _SFApplicationNameForUserAgent();
    [v4 setApplicationNameForUserAgent:v9];

    [v4 _setNeedsStorageAccessFromFileURLsQuirk:0];
    safari_readerUserContentController = [MEMORY[0x277CE3830] safari_readerUserContentController];
    [v4 setUserContentController:safari_readerUserContentController];

    v11 = objc_alloc(MEMORY[0x277CDB918]);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v13 = [v11 initWithFrame:v4 configuration:?];
    v14 = *(needed + 1432);
    *(needed + 1432) = v13;

    v15 = webViewToTabDocumentMap();
    [v15 setObject:needed forKey:*(needed + 1432)];

    [*(needed + 224) setReaderWebView:*(needed + 1432)];
    [*(needed + 224) setWebView:*(needed + 1064)];
    v16 = _SFCustomUserAgentStringIfNeeded();
    if (v16)
    {
      [*(needed + 1432) _setCustomUserAgent:v16];
    }

    if (objc_opt_respondsToSelector())
    {
      [*(needed + 1432) _grantAccessToAssetServices];
    }

    [*(needed + 1432) _setBackgroundExtendsBeyondPage:1];
    [*(needed + 1432) setNavigationDelegate:*(needed + 296)];
    [*(needed + 1432) setUIDelegate:*(needed + 296)];
    [*(needed + 1432) setAllowsLinkPreview:1];
    [*(needed + 1432) _setFindInteractionEnabled:1];
    [*(needed + 1432) setAccessibilityIdentifier:@"ReaderView"];
    [*(needed + 1432) setInspectable:{objc_msgSend(needed, "allowsRemoteInspection")}];
    [*(needed + 1432) addObserver:needed forKeyPath:@"_isPlayingAudio" options:0 context:kTabDocumentObserverContext];
    [*(needed + 1432) addObserver:needed forKeyPath:@"underPageBackgroundColor" options:0 context:kTabDocumentObserverContext];
    [*(needed + 296) didCreateReaderWebView:*(needed + 1432)];
    v17 = *(needed + 296);
    v18 = *(needed + 1192);
    configurationManager = [v17 configurationManager];
    configurationToSendToWebPage = [configurationManager configurationToSendToWebPage];
    [v17 setReaderInitialTopScrollOffset:v18 configuration:configurationToSendToWebPage isViewingArchive:objc_msgSend(needed scrollOffsetDictionary:{"isShowingReadingListArchive"), *(needed + 184)}];

    [needed clearReaderScrollInformation];
    readerURL = [*(needed + 296) readerURL];
    if ([readerURL sf_isOfflineReadingListURL])
    {
      v22 = *(needed + 1432);
      v23 = MEMORY[0x277CBEBC0];
      readingListArchivesDirectoryPath = [MEMORY[0x277D7B5A8] readingListArchivesDirectoryPath];
      v25 = [v23 fileURLWithPath:readingListArchivesDirectoryPath];
      v26 = [v22 loadFileURL:readerURL allowingReadAccessToURL:v25];
    }

    else
    {
      v27 = [MEMORY[0x277CBABA0] safari_nonAppInitiatedRequestWithURL:readerURL];
      readingListArchivesDirectoryPath = [(TabDocument *)needed _requestBySettingAdvancedPrivacyProtectionsFlag:v27];

      v28 = [*(needed + 1432) loadRequest:readingListArchivesDirectoryPath];
    }

    [(UIResponder *)*(needed + 1432) safari_becomeFirstResponderIfNeeded];
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

- (id)readerURLForReaderController:(id)controller
{
  if ([(TabDocument *)self isShowingReadingListArchive])
  {
    readerPageArchiveURL = [(TabDocument *)self readerPageArchiveURL];
  }

  else
  {
    urlForSharing = [(TabDocument *)self urlForSharing];
    readerPageArchiveURL = [urlForSharing safari_URLByReplacingSchemeWithString:*MEMORY[0x277CDB9F0]];
  }

  return readerPageArchiveURL;
}

- (void)createReaderWebViewForReaderController:(id)controller
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

- (void)fetchMetadataForBookmark:(id)bookmark completion:(id)completion
{
  bookmarkCopy = bookmark;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__TabDocument_fetchMetadataForBookmark_completion___block_invoke;
  block[3] = &unk_2781DB3A0;
  block[4] = self;
  v11 = bookmarkCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = bookmarkCopy;
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
  *self = 134217984;
  *(self + 4) = a2;
  OUTLINED_FUNCTION_0_2(&dword_215819000, a2, a3, "Killed an unresponsive web process shared by %lu tabs", self);
}

- (void)_unresponsiveWebProcessTimerFired:(id)fired
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXPageLoading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    webView = self->_webView;
    v7 = 134218496;
    selfCopy = self;
    v9 = 2048;
    v10 = webView;
    v11 = 1024;
    _webProcessIsResponsive = [(_SFWebView *)webView _webProcessIsResponsive];
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
  if (self)
  {
    v1 = *(self + 1064);
    if (v1)
    {
      _webProcessIdentifier = [v1 _webProcessIdentifier];
      array = [MEMORY[0x277CBEB18] array];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v3 = +[Application sharedApplication];
      browserControllers = [v3 browserControllers];

      obj = browserControllers;
      v5 = [browserControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
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

            tabController = [*(*(&v16 + 1) + 8 * i) tabController];
            allTabDocuments = [tabController allTabDocuments];
            v14[0] = MEMORY[0x277D85DD0];
            v14[1] = 3221225472;
            v14[2] = __45__TabDocument__tabDocumentsSharingWebProcess__block_invoke;
            v14[3] = &__block_descriptor_36_e21_B16__0__TabDocument_8l;
            v15 = _webProcessIdentifier;
            v10 = [allTabDocuments safari_filterObjectsUsingBlock:v14];
            [array addObjectsFromArray:v10];
          }

          browserControllers = obj;
          v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v5);
      }
    }

    else
    {
      array = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

BOOL __45__TabDocument__tabDocumentsSharingWebProcess__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 webView];
  v4 = [v3 _webProcessIdentifier] == *(a1 + 32);

  return v4;
}

- (uint64_t)_shouldUpdateUsageTrackingWhenTransitioningToState:(uint64_t)state
{
  stateCopy = state;
  if (state)
  {
    mEMORY[0x277D7B590] = [MEMORY[0x277D7B590] sharedWebFilterSettings];
    expectedOrCurrentURL = [stateCopy expectedOrCurrentURL];
    if ([stateCopy isPrivateBrowsingEnabled] & 1) != 0 || (objc_msgSend(stateCopy, "isShowingErrorPage"))
    {
      stateCopy = 0;
LABEL_20:

      return stateCopy;
    }

    WeakRetained = objc_loadWeakRetained((stateCopy + 1248));
    v8 = [WeakRetained tabDocumentIsBackgroundPreloading:stateCopy];
    if (expectedOrCurrentURL)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      stateCopy = 0;
    }

    else
    {
      isWebFilterEnabled = [mEMORY[0x277D7B590] isWebFilterEnabled];
      if (isWebFilterEnabled && ([mEMORY[0x277D7B590] userSettings], v2 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v2, "contentFilterListsAllowURL:", expectedOrCurrentURL)))
      {
        stateCopy = 0;
      }

      else
      {
        if (*(stateCopy + 232) == a2)
        {
          v11 = [expectedOrCurrentURL isEqual:*(stateCopy + 240)];
        }

        else
        {
          v11 = 0;
        }

        stateCopy = v11 ^ 1u;
        if (!isWebFilterEnabled)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  return stateCopy;
}

- (uint64_t)_usageStateIfTabDocumentIsCurrent:(uint64_t)current
{
  currentCopy = current;
  if (current)
  {
    WeakRetained = objc_loadWeakRetained((current + 992));
    v5 = WeakRetained;
    if (a2 && ([WeakRetained isSuspendedOrSuspending] & 1) == 0)
    {
      currentCopy = 2;
    }

    else
    {
      tabDocumentPlayingPIPVideo = [v5 tabDocumentPlayingPIPVideo];
      currentCopy = 2 * (tabDocumentPlayingPIPVideo == currentCopy);
    }
  }

  return currentCopy;
}

- (void)_updateUsageTrackingInformationIfNecessaryToState:(uint64_t)state
{
  if (state && [(TabDocument *)state _shouldUpdateUsageTrackingWhenTransitioningToState:a2])
  {
    WeakRetained = objc_loadWeakRetained((state + 992));
    expectedOrCurrentURL = [state expectedOrCurrentURL];
    profileIdentifier = [(TabDocument *)state profileIdentifier];
    if (*(state + 240) && ([expectedOrCurrentURL isEqual:?] & 1) == 0)
    {
      digitalHealthManager = [WeakRetained digitalHealthManager];
      v7 = *(state + 240);
      sourceApplicationBundleIdentifier = [state sourceApplicationBundleIdentifier];
      [digitalHealthManager updateUsageTrackingForURL:v7 withBundleIdentifier:sourceApplicationBundleIdentifier profileIdentifier:profileIdentifier toState:0];
    }

    *(state + 232) = a2;
    objc_storeStrong((state + 240), expectedOrCurrentURL);
    digitalHealthManager2 = [WeakRetained digitalHealthManager];
    sourceApplicationBundleIdentifier2 = [state sourceApplicationBundleIdentifier];
    [digitalHealthManager2 updateUsageTrackingForURL:expectedOrCurrentURL withBundleIdentifier:sourceApplicationBundleIdentifier2 profileIdentifier:profileIdentifier toState:a2];
  }
}

- (void)updateUsageTrackingInformationIfNecessaryGivenDocumentIsCurrent:(BOOL)current
{
  v4 = [(TabDocument *)self _usageStateIfTabDocumentIsCurrent:current];

  [(TabDocument *)self _updateUsageTrackingInformationIfNecessaryToState:v4];
}

- (void)updateUsageTrackingInformationAfterLinkPreviewDismissal
{
  browserController = [(TabDocument *)self browserController];
  tabController = [browserController tabController];
  activeTabDocument = [tabController activeTabDocument];
  v6 = [activeTabDocument isEqual:self];

  v7 = [(TabDocument *)self _usageStateIfTabDocumentIsCurrent:v6];

  [(TabDocument *)self _updateUsageTrackingInformationIfNecessaryToState:v7];
}

- (void)_webViewWillEnterElementFullscreen:(id)fullscreen
{
  [(SFPinnableBanner *)self->_appBanner setHidden:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocumentDidUpdateThemeColor:self];
}

- (void)_webViewDidEnterElementFullscreen:(id)fullscreen
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained updatePullToRefreshIsEnabled];
}

- (void)_webViewWillExitElementFullscreen:(id)fullscreen
{
  [(SFPinnableBanner *)self->_appBanner setHidden:0];
  self->_exitingElementFullscreen = 1;
  cachedView = self->_cachedView;

  [(TabDocumentView *)cachedView setWebViewGeometryNeedsUpdate];
}

- (void)_webViewDidExitElementFullscreen:(id)fullscreen
{
  self->_exitingElementFullscreen = 0;
  [(TabDocumentView *)self->_cachedView setWebViewGeometryNeedsUpdate];
  browserController = [(TabDocument *)self browserController];
  [browserController restoreInterfaceAfterElementFullscreen];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained updatePullToRefreshIsEnabled];

  v6 = objc_loadWeakRetained(&self->_delegate);
  [v6 tabDocumentDidUpdateThemeColor:self];
}

- (void)updateAncestryWithParentTab:(id)tab
{
  tabCopy = tab;
  uuid = [tabCopy uuid];
  if (uuid)
  {
    ancestorUUIDs = [tabCopy ancestorUUIDs];
    v6 = ancestorUUIDs;
    v7 = MEMORY[0x277CBEBF8];
    if (ancestorUUIDs)
    {
      v7 = ancestorUUIDs;
    }

    v8 = v7;

    v9 = [v8 arrayByAddingObject:uuid];
    ancestorUUIDs = self->_ancestorUUIDs;
    self->_ancestorUUIDs = v9;
  }
}

- (void)updateAncestryToChildOfTopLevelAncestorRelatedTab:(id)tab
{
  v13[1] = *MEMORY[0x277D85DE8];
  tabCopy = tab;
  v5 = tabCopy;
  if (tabCopy)
  {
    ancestorUUIDs = [tabCopy ancestorUUIDs];
    firstObject = [ancestorUUIDs firstObject];
    v8 = firstObject;
    if (firstObject)
    {
      uuid = firstObject;
    }

    else
    {
      uuid = [v5 uuid];
    }

    v10 = uuid;

    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    ancestorUUIDs = self->_ancestorUUIDs;
    self->_ancestorUUIDs = v11;
  }
}

- (NSString)identifier
{
  uuid = [(TabDocument *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

id __37__TabDocument_ancestorTabIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 UUIDString];

  return v2;
}

- (NSString)windowIdentifier
{
  ownerUUID = [(TabDocument *)self ownerUUID];
  uUIDString = [ownerUUID UUIDString];

  return uUIDString;
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
      v6 = [(TabDocument *)self URL];
      pinnedURL = self->_pinnedURL;
      self->_pinnedURL = v6;

      title = [(TabDocument *)self title];
    }

    else
    {
      v9 = self->_pinnedURL;
      self->_pinnedURL = 0;

      title = 0;
    }

    pinnedTitle = self->_pinnedTitle;
    self->_pinnedTitle = title;

    [(TabDocument *)self _notifyDidUpdateTabCollectionItem];

    [(TabDocument *)&self->super.isa _reconfigureLibraryItemView];
  }
}

- (BOOL)shouldSpawnNewTabOnNavigationFromPinnedTabWithDestinationURL:(id)l
{
  lCopy = l;
  if (-[TabDocument isPinned](self, "isPinned") && ([lCopy safari_isBlobURL] & 1) == 0)
  {
    if (self->_isBlank)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      committedURL = [(TabDocument *)self committedURL];
      v8 = committedURL;
      if (committedURL)
      {
        host = [committedURL host];
        safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

        host2 = [lCopy host];
        safari_highLevelDomainFromHost2 = [host2 safari_highLevelDomainFromHost];

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

    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 tabDocumentDidUpdateTabCollectionItem:self];

    [(TabDocument *)&self->super.isa _reconfigureLibraryItemView];
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

- (void)tabGroupManager:(id)manager didUpadateActiveParticipants:(id)participants inTabWithUUID:(id)d
{
  participantsCopy = participants;
  dCopy = d;
  uuid = [(WBTab *)self->_tabGroupTab uuid];
  v9 = [dCopy isEqualToString:uuid];

  if (v9)
  {
    allObjects = [participantsCopy allObjects];
    [(TabDocument *)self setShareParticipants:allObjects];
  }
}

- (void)translationContextReloadPageInOriginalLanguage:(id)language
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__TabDocument_translationContextReloadPageInOriginalLanguage___block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)translationContext:(id)context urlForCurrentPageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__TabDocument_translationContext_urlForCurrentPageWithCompletionHandler___block_invoke;
  v7[3] = &unk_2781DB410;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __73__TabDocument_translationContext_urlForCurrentPageWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) URL];
  (*(v1 + 16))(v1);
}

- (id)safariApplicationVersionForTranslationContext:(id)context
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  safari_normalizedVersion = [mainBundle safari_normalizedVersion];

  return safari_normalizedVersion;
}

- (void)translationContext:(id)context showTranslationErrorAlertWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__TabDocument_translationContext_showTranslationErrorAlertWithTitle_message___block_invoke;
  v8[3] = &unk_2781D61F8;
  v8[4] = self;
  v9 = messageCopy;
  v7 = messageCopy;
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

- (void)translationContext:(id)context shouldReportProgressInUnifiedField:(BOOL)field
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__TabDocument_translationContext_shouldReportProgressInUnifiedField___block_invoke;
  v4[3] = &unk_2781D6638;
  v4[4] = self;
  fieldCopy = field;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

- (void)_updateMaxVisibleHeightPercentageUserDriven:(id *)driven
{
  if (driven)
  {
    WeakRetained = objc_loadWeakRetained(driven + 124);
    scene = [WeakRetained scene];
    activationState = [scene activationState];

    if (!activationState)
    {
      scrollView = [driven[133] scrollView];
      [scrollView contentSize];
      v8 = v7;
      rootViewController = [WeakRetained rootViewController];
      if ([rootViewController toolbarPlacement] == 1)
      {
        view = [rootViewController view];
        [view bounds];
        Height = CGRectGetHeight(v20);
        [view bounds];
        [rootViewController obscuredInsetsForRect:view inCoordinateSpace:?];
        [view convertPoint:scrollView toView:{0.0, Height - v12}];
        v14 = v13;
      }

      else
      {
        [scrollView contentOffset];
        v16 = v15;
        [driven[133] frame];
        v14 = v16 + v17;
      }

      [driven[132] updateMaxVisibleHeightPercentageIfNeeded:a2 userDriven:v14 / v8];
    }
  }
}

- (void)translationContextWillRequestTranslatingWebpage:(id)webpage
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  processPool = [WeakRetained processPool];
  SafariShared::ReaderAvailabilityController::updateReaderOrTranslationLastActivated(processPool, v4);
}

- (void)_translationContextStateDidChange:(id)change
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

- (id)translationConsentAlertHelperViewControllerToPresentDetailsFrom:(id)from
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];

  return viewControllerToPresentFrom;
}

- (void)webViewWillChangeSize
{
  readerContext = [(TabDocument *)self readerContext];
  [readerContext webViewWillChangeSize];
}

- (void)webViewDidIncreaseZoom
{
  date = [MEMORY[0x277CBEAA8] date];
  lastWebViewIncreaseZoomDate = self->_lastWebViewIncreaseZoomDate;
  self->_lastWebViewIncreaseZoomDate = date;
}

- (void)setChangedPropertiesForOnUpdatedWebExtensionEvent:(unint64_t)event
{
  if (!self->_suppressWebExtensionEvents && self->_changedPropertiesForOnUpdatedWebExtensionEvent != event)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    tabController = [WeakRetained tabController];
    hiddenPrivateTabDocumentWhenShowingPrivateBrowsingExplanationText = [tabController hiddenPrivateTabDocumentWhenShowingPrivateBrowsingExplanationText];
    v8 = [(TabDocument *)self isEqual:hiddenPrivateTabDocumentWhenShowingPrivateBrowsingExplanationText];

    if ((v8 & 1) == 0)
    {
      self->_changedPropertiesForOnUpdatedWebExtensionEvent = event;
      if (event)
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

- (void)setSuppressWebExtensionEvents:(BOOL)events
{
  if (self->_suppressWebExtensionEvents != events)
  {
    self->_suppressWebExtensionEvents = events;
    if (events)
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
  if (self)
  {
    v2 = self[134];
    [self setChangedPropertiesForOnUpdatedWebExtensionEvent:0];
    webExtensionsController = [self webExtensionsController];
    [webExtensionsController fireOnUpdatedEventForTab:self withChangedProperties:v2];
  }
}

- (id)windowForWebExtensionContext:(id)context
{
  webExtensionWindow = [(TabDocument *)self webExtensionWindow];

  return webExtensionWindow;
}

- (unint64_t)indexInWindowForWebExtensionContext:(id)context
{
  webExtensionWindow = [(TabDocument *)self webExtensionWindow];
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

- (id)webViewForWebExtensionContext:(id)context
{
  webViewForExtensions = [(TabDocument *)self webViewForExtensions];

  return webViewForExtensions;
}

- (id)titleForWebExtensionContext:(id)context
{
  tabTitle = [(TabDocument *)self tabTitle];

  return tabTitle;
}

- (void)setPinned:(BOOL)pinned forWebExtensionContext:(id)context completionHandler:(id)handler
{
  pinnedCopy = pinned;
  handlerCopy = handler;
  [(TabDocument *)self setPinned:pinnedCopy];
  handlerCopy[2](handlerCopy, 0);
}

- (void)setReaderModeActive:(BOOL)active forWebExtensionContext:(id)context completionHandler:(id)handler
{
  activeCopy = active;
  handlerCopy = handler;
  if ([(TabDocument *)self isInReaderMode]!= activeCopy)
  {
    [(TabDocument *)self toggleReader];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)setMuted:(BOOL)muted forWebExtensionContext:(id)context completionHandler:(id)handler
{
  mutedCopy = muted;
  contextCopy = context;
  handlerCopy = handler;
  if (mutedCopy)
  {
    [(TabDocument *)self mute];
  }

  else
  {
    [(TabDocument *)self unmute];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)setZoomFactor:(double)factor forWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  [(TabDocument *)self setZoomFactor:factor];
  handlerCopy[2](handlerCopy, 0);
}

- (id)urlForWebExtensionContext:(id)context
{
  urlForExtensions = [(TabDocument *)self urlForExtensions];

  return urlForExtensions;
}

- (id)pendingURLForWebExtensionContext:(id)context
{
  pendingURLForWebExtensions = [(TabDocument *)self pendingURLForWebExtensions];

  return pendingURLForWebExtensions;
}

- (void)detectWebpageLocaleForWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  translationContext = [(TabDocument *)self translationContext];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__TabDocument_detectWebpageLocaleForWebExtensionContext_completionHandler___block_invoke;
  aBlock[3] = &unk_2781D6EE0;
  v7 = translationContext;
  v26 = v7;
  v8 = handlerCopy;
  v27 = v8;
  v9 = _Block_copy(aBlock);
  state = [v7 state];
  if (state != 5 && state)
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v13 = *MEMORY[0x277D4A9A0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__TabDocument_detectWebpageLocaleForWebExtensionContext_completionHandler___block_invoke_2;
    v16[3] = &unk_2781DB460;
    v18 = &v19;
    v17 = v9;
    v14 = [defaultCenter addObserverForName:v13 object:v7 queue:mainQueue usingBlock:v16];
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

- (void)loadURL:(id)l forWebExtensionContext:(id)context completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  [(TabDocument *)self loadURL:lCopy];
  handlerCopy[2](handlerCopy, 0);
}

- (void)reloadFromOrigin:(BOOL)origin forWebExtensionContext:(id)context completionHandler:(id)handler
{
  originCopy = origin;
  contextCopy = context;
  handlerCopy = handler;
  if (originCopy)
  {
    [(TabDocument *)self reloadFromOrigin];
  }

  else
  {
    [(TabDocument *)self reload];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)goBackForWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  [(TabDocument *)self goBack];
  handlerCopy[2](handlerCopy, 0);
}

- (void)goForwardForWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  [(TabDocument *)self goForward];
  handlerCopy[2](handlerCopy, 0);
}

- (void)activateForWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  [(TabDocument *)self select];
  handlerCopy[2](handlerCopy, 0);
}

- (void)setSelected:(BOOL)selected forWebExtensionContext:(id)context completionHandler:(id)handler
{
  selectedCopy = selected;
  contextCopy = context;
  handlerCopy = handler;
  if (selectedCopy)
  {
    [(TabDocument *)self select];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)duplicateUsingConfiguration:(id)configuration forWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  v8 = [tabController duplicateTab:self];
  handlerCopy[2](handlerCopy, v8, 0);
}

- (void)closeForWebExtensionContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  [(TabDocument *)self close];
  handlerCopy[2](handlerCopy, 0);
}

- (BOOL)shouldGrantPermissionsOnUserGestureForWebExtensionContext:(id)context
{
  contextCopy = context;
  mEMORY[0x277D49A58] = [MEMORY[0x277D49A58] sharedController];
  urlForExtensions = [(TabDocument *)self urlForExtensions];
  host = [urlForExtensions host];
  v8 = [MEMORY[0x277D4A898] webExtensionForWebKitExtensionContext:contextCopy];
  composedIdentifier = [v8 composedIdentifier];
  v10 = [mEMORY[0x277D49A58] domainIsDenied:host forComposedIdentifier:composedIdentifier];

  return v10 ^ 1;
}

- (NSURL)pendingURLForWebExtensions
{
  if ([(TabDocument *)self isLoading])
  {
    urlForExtensions = [(TabDocument *)self urlForExtensions];
  }

  else
  {
    urlForExtensions = 0;
  }

  return urlForExtensions;
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
    tabController = [WeakRetained tabController];
    [tabController setActiveTabDocument:self];
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
  tabController = [WeakRetained tabController];
  [tabController evictTabDocument:self];
}

- (void)donateCurrentNavigationWithNavigationResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  speculativeLoadDocument = [WeakRetained speculativeLoadDocument];

  if (speculativeLoadDocument == self)
  {
    objc_storeStrong(&self->_speculativeLoadNavigationResponse, response);
  }

  else if (self->_shouldDonateResponseForCurrentNavigation)
  {
    [(TabDocument *)&self->super.isa _donateCurrentNavigationWithNavigationResponse:responseCopy];
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
  mEMORY[0x277D4A808] = [MEMORY[0x277D4A808] sharedRecorder];
  webView = [(TabDocument *)self webView];
  v5 = [webView URL];
  v6 = [mEMORY[0x277D4A808] searchProviderForURL:v5];

  return v6 != 0;
}

- (void)dismissSiriReaderMediaSessionImmediately:(BOOL)immediately
{
  if (immediately)
  {

    [(TabDocument *)self _dismissSiriReaderMediaSession];
  }

  else
  {
    mEMORY[0x277D28D50] = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    activeSiriReaderSessionIdentifier = [mEMORY[0x277D28D50] activeSiriReaderSessionIdentifier];

    if (activeSiriReaderSessionIdentifier && (WBSIsEqual() & 1) != 0)
    {
      [(TabDocument *)self _dismissSiriReaderMediaSession];
    }
  }
}

- (void)_dismissSiriReaderMediaSession
{
  if (self)
  {
    mEMORY[0x277D28D50] = [MEMORY[0x277D28D50] sharedVoiceUtilities];
    activeSiriReaderSessionIdentifier = [mEMORY[0x277D28D50] activeSiriReaderSessionIdentifier];

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
    objc_initWeak(location, *(self + 280));
    v7 = dispatch_get_global_queue(9, 0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__TabDocument__dismissSiriReaderMediaSession__block_invoke;
    v10[3] = &unk_2781DB4D8;
    v11 = v6;
    v12 = activeSiriReaderSessionIdentifier;
    v8 = activeSiriReaderSessionIdentifier;
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
    isPrivateBrowsingLocked = [v3 isPrivateBrowsingLocked];
  }

  else
  {
    isPrivateBrowsingLocked = 0;
  }

  if (self->_locked != isPrivateBrowsingLocked)
  {
    self->_locked = isPrivateBrowsingLocked;
    allowsRemoteInspection = [(TabDocument *)self allowsRemoteInspection];
    [(_SFWebView *)self->_webView setInspectable:allowsRemoteInspection];
    [(_SFWebView *)self->_readerWebView setInspectable:allowsRemoteInspection];
    if (isPrivateBrowsingLocked)
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

- (void)pageContextDataFetcherDidFinishFetching:(id)fetching forURL:(id)l withError:(id)error
{
  fetchingCopy = fetching;
  lCopy = l;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [errorCopy safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [TabDocument pageContextDataFetcherDidFinishFetching:forURL:withError:];
    }
  }

  else
  {
    webView = [(TabDocument *)self webView];
    v13 = [webView URL];
    v14 = [lCopy safari_isEqualToURL:v13];

    if (v14)
    {
      _backForwardList = [(TabDocument *)self _backForwardList];
      currentItem = [_backForwardList currentItem];

      if (self)
      {
        v17 = +[Application systemMemorySize]< 0x40000001;
      }

      else
      {
        v17 = 0;
      }

      filteredSchemaData = [fetchingCopy filteredSchemaData];
      v19 = filteredSchemaData;
      if (!v17)
      {
        calendarEventDetector = self->_calendarEventDetector;
        v21 = [filteredSchemaData objectForKeyedSubscript:@"containsSchemaOrg"];
        [(_SFCalendarEventDetector *)calendarEventDetector containsCalendarEventForPageWithSchemaOrgMarkup:v21 != 0];
      }

      _backForwardList2 = [(TabDocument *)self _backForwardList];
      currentItem2 = [_backForwardList2 currentItem];

      if (currentItem2 == currentItem)
      {
        v24 = MEMORY[0x277CDB8F0];
        profileIdentifier = [(TabDocument *)self profileIdentifier];
        v26 = profileIdentifier;
        if (profileIdentifier)
        {
          v27 = profileIdentifier;
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
  urlForSharing = [(TabDocument *)self urlForSharing];
  webView = [(TabDocument *)self webView];
  mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  linkPresentationIconCache = [mEMORY[0x277D28F58] linkPresentationIconCache];
  v8 = [v3 linkMetadataForURL:urlForSharing webView:webView iconCache:linkPresentationIconCache];

  return v8;
}

- (NSString)addressForNewBookmark
{
  cachedCanonicalURLOrURLForSharing = [(TabDocument *)self cachedCanonicalURLOrURLForSharing];
  safari_originalDataAsString = [cachedCanonicalURLOrURLForSharing safari_originalDataAsString];

  return safari_originalDataAsString;
}

- (WBSCloudTab)cloudTab
{
  v3 = [(TabDocument *)self URL];
  if ([v3 isFileURL])
  {
    uRLString = [(TabDocument *)self URLString];
    safari_bestURLForUserTypedString = [uRLString safari_bestURLForUserTypedString];
  }

  else
  {
    safari_bestURLForUserTypedString = [(TabDocument *)self URL];
  }

  v6 = [objc_alloc(MEMORY[0x277D49ED0]) initWithURL:safari_bestURLForUserTypedString];
  [v6 setUuid:self->_uuid];
  titleForCloudTab = [(TabDocument *)self titleForCloudTab];
  [v6 setTitle:titleForCloudTab];

  [v6 setShowingReader:self->_showingReader];
  scrollPositionInformation = [(_SFReaderController *)self->_readerContext scrollPositionInformation];
  [v6 setReaderScrollPosition:scrollPositionInformation];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  windowState = [WeakRetained windowState];
  sceneID = [windowState sceneID];
  [v6 setSceneID:sceneID];

  [v6 setLastViewedTime:self->_lastViewedTime];
  v12 = [objc_alloc(MEMORY[0x277D49EB8]) initWithParameters:v6];

  return v12;
}

- (BOOL)isReusableForURL:(id)l webClipURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v8 = [(TabDocument *)self URL];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    _backForwardList = [(TabDocument *)self _backForwardList];
    currentItem = [_backForwardList currentItem];
    v10 = [currentItem URL];
  }

  _webkit_URLByRemovingFragment = [v10 _webkit_URLByRemovingFragment];

  _webkit_URLByRemovingFragment2 = [(NSURL *)self->_tabReuseURL _webkit_URLByRemovingFragment];
  if ([_webkit_URLByRemovingFragment isEqual:lCopy] & 1) != 0 || (objc_msgSend(_webkit_URLByRemovingFragment2, "isEqual:", lCopy))
  {
    v15 = 1;
  }

  else if (rLCopy)
  {
    v15 = [_webkit_URLByRemovingFragment isEqual:rLCopy];
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
  activeSearchEngine = [WeakRetained activeSearchEngine];
  _unreachableURL = [(_SFWebView *)self->_webView _unreachableURL];
  committedURL = _unreachableURL;
  if (!_unreachableURL)
  {
    committedURL = [(TabDocument *)self committedURL];
  }

  v7 = [activeSearchEngine userVisibleQueryFromSearchURL:committedURL];
  if (!_unreachableURL)
  {
  }

  return v7;
}

- (NSString)currentSearchQueryAllowingQueryThatLooksLikeURL
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  activeSearchEngine = [WeakRetained activeSearchEngine];
  _unreachableURL = [(_SFWebView *)self->_webView _unreachableURL];
  committedURL = _unreachableURL;
  if (!_unreachableURL)
  {
    committedURL = [(TabDocument *)self committedURL];
  }

  v7 = [activeSearchEngine userVisibleQueryFromSearchURL:committedURL allowQueryThatLooksLikeURL:1];
  if (!_unreachableURL)
  {
  }

  return v7;
}

- (id)currentHostForScribbleController:(id)controller
{
  expectedOrCurrentURL = [(TabDocument *)self expectedOrCurrentURL];
  host = [expectedOrCurrentURL host];

  return host;
}

- (void)sfScribbleControllerDidEndScribbling:(id)scribbling
{
  navigationBarItem = [(TabDocument *)self navigationBarItem];
  [navigationBarItem setOverlayConfiguration:0];

  navigationBarItem2 = [(TabDocument *)self navigationBarItem];
  [navigationBarItem2 setOverlayNarrowConfiguration:0];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  pageFormatMenuController = [WeakRetained pageFormatMenuController];
  [pageFormatMenuController dismissMenu];

  v8 = objc_loadWeakRetained(&self->_delegate);
  [v8 tabDocumentDidUpdateIsScribbling:self];
}

- (void)sfScribbleControllerDidStartScribbling:(id)scribbling
{
  scribblingCopy = scribbling;
  self->_hasEnteredScribbleMode = 1;
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didEnableScribble];

  urlFieldOverlayConfiguration = [scribblingCopy urlFieldOverlayConfiguration];
  navigationBarItem = [(TabDocument *)self navigationBarItem];
  [navigationBarItem setOverlayConfiguration:urlFieldOverlayConfiguration];

  urlFieldOverlayNarrowConfiguration = [scribblingCopy urlFieldOverlayNarrowConfiguration];
  navigationBarItem2 = [(TabDocument *)self navigationBarItem];
  [navigationBarItem2 setOverlayNarrowConfiguration:urlFieldOverlayNarrowConfiguration];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  pageFormatMenuController = [WeakRetained pageFormatMenuController];
  [pageFormatMenuController dismissMenu];

  v11 = objc_loadWeakRetained(&self->_delegate);
  [v11 tabDocumentDidUpdateIsScribbling:self];
}

- (void)sfScribbleControllerDidUpdateHiddenElementCount:(id)count
{
  countCopy = count;
  navigationBarItem = [(TabDocument *)self navigationBarItem];
  [navigationBarItem setHasHiddenElements:{objc_msgSend(countCopy, "hiddenElementCount") != 0}];
  if ([countCopy isScribbling])
  {
    urlFieldOverlayConfiguration = [countCopy urlFieldOverlayConfiguration];
    navigationBarItem2 = [(TabDocument *)self navigationBarItem];
    [navigationBarItem2 setOverlayConfiguration:urlFieldOverlayConfiguration];

    urlFieldOverlayNarrowConfiguration = [countCopy urlFieldOverlayNarrowConfiguration];
    navigationBarItem3 = [(TabDocument *)self navigationBarItem];
    [navigationBarItem3 setOverlayNarrowConfiguration:urlFieldOverlayNarrowConfiguration];
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  pageFormatMenuController = [WeakRetained pageFormatMenuController];
  [pageFormatMenuController reloadBrowsingAssistantIfNeeded];
}

- (void)sfScribbleController:(id)controller presentAlert:(id)alert
{
  alertCopy = alert;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabDocument:self presentViewControllerAnimated:alertCopy];
}

- (id)overlayContainerViewForScribbleController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  rootViewController = [WeakRetained rootViewController];
  documentAndTopBarsContainerView = [rootViewController documentAndTopBarsContainerView];

  return documentAndTopBarsContainerView;
}

- (NSArray)normalBrowsingUserContentControllers
{
  v2 = +[Application sharedApplication];
  cachedUserContentControllersForAllProfiles = [v2 cachedUserContentControllersForAllProfiles];

  return cachedUserContentControllersForAllProfiles;
}

- (WBSScribbleQuirksManager)scribbleQuirksManager
{
  v2 = +[Application sharedApplication];
  scribbleQuirksManager = [v2 scribbleQuirksManager];

  return scribbleQuirksManager;
}

- (void)_webView:(id)view didAdjustVisibilityWithSelectors:(id)selectors
{
  v4 = [(TabDocument *)self sfScribbleController:view];
  [v4 updateCountForElementsHiddenByPaintingAvoidance];
}

- (id)tabEntityUUIDForView:(id)view
{
  if (self->_cachedView == view && self->_active)
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

- (void)_webView:(std::__shared_weak_count *)view willSubmitFormValues:userObject:submissionHandler:
{
  view->__vftable = &unk_2827BB258;
  std::__shared_weak_count::~__shared_weak_count(view);

  JUMPOUT(0x216074930);
}

- (void)_webView:(uint64_t)view willSubmitFormValues:userObject:submissionHandler:
{
  if ((*(view + 32) & 1) == 0 && ([MEMORY[0x277D49A08] hasInternalContent] & 1) == 0)
  {
    (*(*(view + 24) + 16))();
  }

  v2 = *(view + 24);
}

- (id)_titleIncludeLoading:(int)loading allowURLStringFallback:
{
  if (self)
  {
    self = [(TabDocument *)self _titleIncludeLoading:a2 allowURLStringFallback:loading allowUntitled:1];
    v3 = vars8;
  }

  return self;
}

- (void)_updateBarItemsWithCurrentMediaState
{
  if (self)
  {
    [self updateMenuButtonShowsBadge];
    [*(self + 1096) setMediaStateIcon:*(self + 504)];
    [*(self + 1104) setMediaStateIcon:*(self + 504)];
    [*(self + 1112) setMediaStateIcon:*(self + 504)];

    [(TabDocument *)self _reconfigureLibraryItemView];
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
  if (self && !*(self + 536))
  {
    v2 = [[ActionPanelActivityItemProvider alloc] initWithTabDocument:self];
    v3 = *(self + 536);
    *(self + 536) = v2;
  }
}

- (void)_clearCachedCanonicalURL
{
  if (self)
  {
    v2 = *(self + 528);
    *(self + 528) = 0;

    v3 = *(self + 536);
    *(self + 536) = 0;
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
  selfCopy = self;
  if (self)
  {
    v2 = self[105];
    if (v2)
    {
      selfCopy = v2;
    }

    else
    {
      titleForStatePersisting = [self[21] titleForStatePersisting];
      v4 = titleForStatePersisting;
      if (titleForStatePersisting)
      {
        v5 = titleForStatePersisting;
      }

      else
      {
        v5 = [(TabDocument *)selfCopy _titleIncludeLoading:1 allowURLStringFallback:0 allowUntitled:?];
      }

      selfCopy = v5;
    }
  }

  return selfCopy;
}

- (void)_disablePrivateRelaySetting:(uint64_t)setting
{
  if (setting)
  {
    v4 = [setting URL];
    v5 = *(setting + 600);
    *(setting + 600) = v4;

    *(setting + 608) = a2;
    *(setting + 948) = a2;
  }
}

- (uint64_t)_shouldCleanUpAfterRedirectToExternalApp
{
  selfCopy = self;
  if (self)
  {
    _committedURL = [*(self + 1064) _committedURL];
    if (_committedURL)
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = [*(selfCopy + 1064) _webProcessIdentifier] != 0;
    }
  }

  return selfCopy;
}

- (void)_clearNavigationSource
{
  if (self)
  {
    v2 = *(self + 1296);
    *(self + 1296) = 0;

    *(self + 958) = 0;
    v3 = *(self + 1216);
    *(self + 1216) = 0;

    *(self + 717) = 0;
  }
}

- (void)_didFinishLoading
{
  if (self)
  {
    [(TabDocument *)self _loadingControllerEstimatedProgressChangedTo:?];
    [(TabDocument *)self _loadingControllerDidStopLoadingWithError:?];
    v2 = *(self + 1488);
    *(self + 1488) = 0;

    *(self + 709) = 0;
  }
}

- (void)_authenticateForAutoFillIfNeeded
{
  if (self && *(self + 160))
  {
    v2 = WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_215819000, v2, OS_LOG_TYPE_INFO, "Retrying AutoFill authentication", v4, 2u);
    }

    [(TabDocument *)self _getAuthenticationForAutoFillController:*(self + 160) withCompletion:?];
    v3 = *(self + 160);
    *(self + 160) = 0;
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
  if (self)
  {
    selfCopy = self;
    v3 = self[15];
    if (!v3)
    {
      v4 = [[TouchIconFetcher alloc] initWithWebView:self[133]];
      v5 = selfCopy[15];
      selfCopy[15] = v4;

      v3 = selfCopy[15];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
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

- (void)_presentTranslationConsentAlertWithType:(void *)type completionHandler:
{
  typeCopy = type;
  v6 = typeCopy;
  if (self)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__TabDocument__presentTranslationConsentAlertWithType_completionHandler___block_invoke;
    block[3] = &unk_2781D6B60;
    block[4] = self;
    v9 = a2;
    v8 = typeCopy;
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
  *(buf + 4) = self;
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