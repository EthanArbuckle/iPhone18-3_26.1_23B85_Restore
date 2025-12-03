@interface MFMessageContentView
+ (OS_os_log)signpostLog;
+ (id)_styleSheetWithPadding:(UIEdgeInsets)padding useWideLayout:(BOOL)layout;
+ (id)_urlSchemesToOpenWithoutPrompting;
+ (id)log;
+ (void)prewarmContent;
- (BOOL)_allAttachmentsArePhotosOrVideos;
- (BOOL)_firstResponderIsInWebView;
- (BOOL)_isDisplayedInGroupedSenderMessageList;
- (BOOL)_objectContainsNonEmptyString:(id)string;
- (BOOL)_shouldShowTimeSensitiveDescriptionForCategory:(unint64_t)category;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isLoadingIndicatorVisible;
- (BOOL)mayShareToUnmanaged;
- (BOOL)shouldHideStickyFooterView;
- (BOOL)sourceIsManaged;
- (CGPoint)initialContentOffset;
- (CGRect)_adjustedRectForWebRect:(CGRect)rect;
- (CGRect)contentItemRectForSaveMenu;
- (EMContentRepresentation)contentRepresentation;
- (EMContentRepresentation)contentRepresentationIfAvailable;
- (MFConversationItemFooterView)footerView;
- (MFMessageContentView)initWithFrame:(CGRect)frame;
- (MFMessageContentViewDataSource)dataSource;
- (MFMessageContentViewDelegate)delegate;
- (MFWebViewDictionary)webViewConstants;
- (NSArray)mf_exclusionRegionsInBaseWindowCoordinateSpace;
- (UIScrollView)scrollView;
- (WKWebView)webView;
- (double)_adjustWebViewInsetsToAccomodateHeaderAndFooter;
- (id)_attachmentPreviewsFromData:(id)data;
- (id)_bodyFont;
- (id)_contentItemForElement:(id)element;
- (id)_contextMenuConfigurationForAttachment:(id)attachment;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)_dataDetectionContextForWebView:(id)view;
- (id)_getAppDisplayName:(id)name;
- (id)_mailboxForBanner:(id)banner;
- (id)_updatedHeaderViewModelForMessage:(id)message replyToList:(id)list;
- (id)_webView:(id)view adjustedDataInteractionItemProvidersForItemProvider:(id)provider representingObjects:(id)objects additionalData:(id)data;
- (id)_webView:(id)view previewForCancellingItem:(id)item withDefault:(id)default;
- (id)_webView:(id)view previewForLiftingItem:(id)item session:(id)session;
- (id)_webView:(id)view previewItem:(id)item;
- (id)_webView:(id)view willUpdateDropProposalToProposal:(id)proposal forSession:(id)session;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)downloadFutureForContentItem:(id)item;
- (id)presentedControllerDoneButtonItem;
- (id)viewForZoomingInScrollView:(id)view;
- (id)viewPrintFormatter;
- (int64_t)_webView:(id)view dataOwnerForDragSession:(id)session;
- (int64_t)_webView:(id)view decidePolicyForFocusedElement:(id)element;
- (unint64_t)signpostID;
- (void)_addBlockedSenderBannerIfNeeded;
- (void)_addHasMoreContentBannerWithRemainingBytes:(unint64_t)bytes;
- (void)_addHideMyEmailBannerIfNeeded;
- (void)_addLoadingSubview:(id)subview;
- (void)_addNotAuthenticatedBannerIfNeeded;
- (void)_addTimeSensitiveBannerIfNeeded;
- (void)_adjustHeaderOffsetForZoom;
- (void)_alertMailDropDownloadIsTooLargeForCell:(BOOL)cell;
- (void)_beginObservingContentHeight;
- (void)_clearTimeSensitiveBanner;
- (void)_commonInit;
- (void)_configureTrustEvaluationsForSignersInSecurityInformation:(id)information;
- (void)_displayDismissibleAttachmentErrorWithTitle:(id)title message:(id)message;
- (void)_expandQuoteWithCollapsedBlockquoteOffset:(double)offset expandedOffset:(double)expandedOffset;
- (void)_fontSizeDidChange:(id)change;
- (void)_foundImageCIDAttachments:(id)attachments;
- (void)_handleAttachmentSaveMessage:(id)message;
- (void)_handleAttachmentTapMessage:(id)message;
- (void)_handleBlockSenderListChanged:(id)changed;
- (void)_layoutFooterView;
- (void)_layoutLoadingView;
- (void)_loadBlockedMessageContactWarning;
- (void)_loadBlockedMessageContactWarningWithRepresentation:(id)representation;
- (void)_logRequestFinishWithSuccess:(BOOL)success;
- (void)_notifyDelegateScrollViewSizeChanged:(CGSize)changed;
- (void)_observeBlockedSenderListChangedNotification;
- (void)_performQuickReplyMoveMessageBodyAnimationIfNeeded;
- (void)_performQuickReplySnapshotFadeOutAnimationIfNecessary;
- (void)_processDataDetectionMetricsFromResults:(id)results;
- (void)_reevaluateTrustWithNetworkAccessAllowed;
- (void)_reloadUserStyleSheets;
- (void)_reloadWithPartiallyEncryptedMessageAllowed;
- (void)_reloadWithRemoteContentAllowed;
- (void)_removeLoadingSubview:(id)subview;
- (void)_requestWebViewLoadWithRepresentation:(id)representation;
- (void)_resetHeaderOffsetForZoom;
- (void)_revealActionsButtonTapped;
- (void)_saveContentItemToPicker:(id)picker;
- (void)_seeMoreButtonTapped;
- (void)_setNeedsPaddingConstantsUpdate;
- (void)_setRemoteContentToLoadWithoutProxy;
- (void)_setupWebProcessLocalizedStrings;
- (void)_showAlertWithApplicationName:(id)name requestURL:(id)l;
- (void)_showDelayedProgressUIIfNeeded;
- (void)_showLoadFailedProxyContentBannerIfNeeded;
- (void)_showModalViewController:(id)controller presentationSource:(id)source forceNavigationController:(BOOL)navigationController;
- (void)_stopObservingContentHeight;
- (void)_triggerWebViewLoad;
- (void)_triggerWebViewLoadWithoutShowingContentRepresentation;
- (void)_undoSendButtonTapped;
- (void)_updateFileWrapperForAttachment:(id)attachment contentID:(id)d;
- (void)_updateMinimumFontSize;
- (void)_updateTimeSensitiveDefaultForCategory:(unint64_t)category;
- (void)_updateWebViewPaddingConstants;
- (void)_webView:(id)view contextMenuConfigurationForElement:(id)element completionHandler:(id)handler;
- (void)_webView:(id)view dataInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)_webView:(id)view didInsertAttachment:(id)attachment withSource:(id)source;
- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change;
- (void)_webView:(id)view webContentProcessDidTerminateWithReason:(int64_t)reason;
- (void)_webViewWebProcessDidBecomeUnresponsive:(id)unresponsive;
- (void)clearAllDecoratedFoundText;
- (void)clearMessage;
- (void)contentRequestDidReceiveContentRepresentation:(id)representation error:(id)error;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)dealloc;
- (void)didBeginTextSearch;
- (void)didDismissBlockedSenderBannerView:(id)view;
- (void)didDismissHideMyEmailBannerView:(id)view;
- (void)didDismissNotAuthenticatedBannerView:(id)view;
- (void)didEndTextSearch;
- (void)didTapBlockedSenderBannerView:(id)view;
- (void)didTapHasMoreContentBannerView:(id)view;
- (void)didTapHideMyEmailBannerView:(id)view;
- (void)dismissPresentedViewController:(id)controller;
- (void)footerViewDidChangeHeight:(id)height;
- (void)generateSnapshotImageWithCompletion:(id)completion;
- (void)headerViewDidChangeHeight:(id)height;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)loadBlockedContent;
- (void)loadFailedProxyContentBannerDidTriggerLoad:(id)load;
- (void)loadFailedProxyContentBannerWasDismissed:(id)dismissed;
- (void)mailDropBannerDidTriggerDownload:(id)download;
- (void)mui_setAsSourceForPopoverPresentationController:(id)controller;
- (void)mui_setAsTargetedSourceOnSceneConfiguration:(id)configuration;
- (void)prepareForQuickReplyAnimationWithContext:(id)context;
- (void)prepareForReuse;
- (void)presentViewController:(id)controller;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)reload;
- (void)removeQuickReplyAnimationContextIfNecessary;
- (void)requestRectForFoundTextRange:(id)range completionHandler:(id)handler;
- (void)sceneMovedToForeground;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)selectAll:(id)all;
- (void)setAutomaticallyCollapseQuotedContent:(BOOL)content reloadIfNeeded:(BOOL)needed;
- (void)setBlockedContentTypes:(unint64_t)types;
- (void)setContentPaddingFollowsLayoutMargins:(BOOL)margins;
- (void)setContentRequest:(id)request;
- (void)setDelegate:(id)delegate;
- (void)setDisplayMetrics:(id)metrics;
- (void)setFrame:(CGRect)frame;
- (void)setHasVisibleContent:(BOOL)content;
- (void)setInitialScale:(double)scale;
- (void)setMessageBlockingReason:(int64_t)reason;
- (void)setPreviousContentSnapshot:(id)snapshot;
- (void)setShowMessageFooter:(BOOL)footer;
- (void)setSuppressScrolling:(BOOL)scrolling;
- (void)showSearchResultsAtRange:(id)range usingStyle:(int64_t)style;
- (void)webProcessDidBlockLoadingResourceWithURL:(id)l;
- (void)webProcessDidCreateBrowserContextControllerLoadDelegate;
- (void)webProcessDidFailLoadingResourceWithURL:(id)l;
- (void)webProcessDidFinishDocumentLoadForURL:(id)l andRequestedRemoteURLs:(id)ls;
- (void)webProcessDidFinishLoadForURL:(id)l;
- (void)webProcessFailedToLoadResourceWithProxyForURL:(id)l failureReason:(int64_t)reason;
- (void)webView:(id)view contextMenuForElement:(id)element willCommitWithAnimator:(id)animator;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view showLockdownModeFirstUseMessage:(id)message completionHandler:(id)handler;
@end

@implementation MFMessageContentView

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__MFMessageContentView_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_5 != -1)
  {
    dispatch_once(&log_onceToken_5, block);
  }

  v2 = log_log_5;

  return v2;
}

void __27__MFMessageContentView_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = log_log_5;
  log_log_5 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__MFMessageContentView_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_0 != -1)
  {
    dispatch_once(&signpostLog_onceToken_0, block);
  }

  v2 = signpostLog_log_0;

  return v2;
}

void __35__MFMessageContentView_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_0;
  signpostLog_log_0 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (void)dealloc
{
  [(MFMessageContentView *)self _stopObservingContentHeight];
  [(MFMessageHeaderView *)self->_headerView setDelegate:0];
  [(MFWebViewLoadingController *)self->_webViewLoadingController setWebProcessDelegate:0];
  [(EFManualCancelationToken *)self->_loadingCancelable cancel];
  v3.receiver = self;
  v3.super_class = MFMessageContentView;
  [(MFMessageContentView *)&v3 dealloc];
}

- (MFMessageContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MFMessageContentView;
  v3 = [(MFMessageContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFMessageContentView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  [(MFMessageContentView *)self setPreservesSuperviewLayoutMargins:1];
  [(MFMessageContentView *)self setContentPaddingFollowsLayoutMargins:1];
  [(MFMessageContentView *)self setInsetsLayoutMarginsFromSafeArea:0];
  [(MFMessageContentView *)self setAllowLoadOfBlockedMessageContent:0];
  mailConversationViewExpandedCellBackgroundColor = [MEMORY[0x277D75348] mailConversationViewExpandedCellBackgroundColor];
  [(MFMessageContentView *)self setBackgroundColor:mailConversationViewExpandedCellBackgroundColor];

  v4 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.messageViewTrustConfiguration" qualityOfService:25];
  trustConfigurationScheduler = self->_trustConfigurationScheduler;
  self->_trustConfigurationScheduler = v4;

  v6 = objc_alloc_init(MFWebViewLoadingController);
  webViewLoadingController = self->_webViewLoadingController;
  self->_webViewLoadingController = v6;

  self->_suppressContentSizeNotificationsUntilFirstPaint = 1;
  v8 = objc_alloc(MEMORY[0x277D75D40]);
  v9 = [v8 initWithDuration:0 curve:&__block_literal_global_6 animations:*MEMORY[0x277CD68D8]];
  moveMessageBodyPropertyAnimator = self->_moveMessageBodyPropertyAnimator;
  self->_moveMessageBodyPropertyAnimator = v9;

  webView = [(MFWebViewLoadingController *)self->_webViewLoadingController webView];
  [webView setNavigationDelegate:self];
  [webView _setInputDelegate:self];
  [webView setUIDelegate:self];
  scrollView = [webView scrollView];
  [scrollView setDelegate:self];

  scrollView2 = [webView scrollView];
  [scrollView2 setAlwaysBounceVertical:0];

  [(MFMessageContentView *)self addSubview:webView];
  [(MFMessageContentView *)self _reloadUserStyleSheets];
  [(MFMessageContentView *)self _updateMinimumFontSize];
  configuration = [webView configuration];
  userContentController = [configuration userContentController];
  [userContentController removeAllScriptMessageHandlers];

  objc_initWeak(location, self);
  v16 = MEMORY[0x277D06EF0];
  webView2 = [(MFMessageContentView *)self webView];
  [v16 addScriptHandlerForWebView:webView2 key:@"MCVLog" handler:&__block_literal_global_119];

  v18 = MEMORY[0x277D06EF0];
  webView3 = [(MFMessageContentView *)self webView];
  [v18 addScriptHandlerForWebView:webView3 key:@"MCVError" handler:&__block_literal_global_129];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  webViewConstants = [(MFMessageContentView *)self webViewConstants];
  [webViewConstants setObject:v20 forKeyedSubscript:@"isInlineGenmojiEnabled"];

  v22 = MEMORY[0x277D06EF0];
  webView4 = [(MFMessageContentView *)self webView];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __35__MFMessageContentView__commonInit__block_invoke_148;
  v76[3] = &unk_278181C58;
  objc_copyWeak(&v77, location);
  [v22 addScriptHandlerForWebView:webView4 key:@"AttachmentNodeWasTapped" handler:v76];

  v24 = MEMORY[0x277D06EF0];
  webView5 = [(MFMessageContentView *)self webView];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __35__MFMessageContentView__commonInit__block_invoke_2_152;
  v74[3] = &unk_278181C58;
  objc_copyWeak(&v75, location);
  [v24 addScriptHandlerForWebView:webView5 key:@"AttachmentSaveWasTapped" handler:v74];

  v26 = MEMORY[0x277D06EF0];
  webView6 = [(MFMessageContentView *)self webView];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __35__MFMessageContentView__commonInit__block_invoke_3;
  v72[3] = &unk_278181C80;
  objc_copyWeak(&v73, location);
  [v26 addScriptHandlerForWebView:webView6 key:@"ExpandQuoteButtonTappedWithYOffset" handler:v72];

  v28 = MEMORY[0x277D06EF0];
  webView7 = [(MFMessageContentView *)self webView];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __35__MFMessageContentView__commonInit__block_invoke_166;
  v70[3] = &unk_278181CA8;
  objc_copyWeak(&v71, location);
  [v28 addScriptHandlerForWebView:webView7 key:@"HasBlockquotesToExpand" handler:v70];

  v30 = MEMORY[0x277D06EF0];
  webView8 = [(MFMessageContentView *)self webView];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __35__MFMessageContentView__commonInit__block_invoke_2_173;
  v68[3] = &unk_278181CA8;
  objc_copyWeak(&v69, location);
  [v30 addScriptHandlerForWebView:webView8 key:@"FinishedReformattingMessage" handler:v68];

  v32 = MEMORY[0x277D06EF0];
  webView9 = [(MFMessageContentView *)self webView];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __35__MFMessageContentView__commonInit__block_invoke_4;
  v66[3] = &unk_278181CF8;
  objc_copyWeak(&v67, location);
  [v32 addScriptHandlerForWebView:webView9 key:@"FoundImageCIDAttachments" handler:v66];

  v34 = MEMORY[0x277D06EF0];
  webView10 = [(MFMessageContentView *)self webView];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __35__MFMessageContentView__commonInit__block_invoke_5;
  v64[3] = &unk_278181D20;
  objc_copyWeak(&v65, location);
  [v34 addScriptHandlerForWebView:webView10 key:@"TextSelected" handler:v64];

  v36 = MEMORY[0x277D06EF0];
  webView11 = [(MFMessageContentView *)self webView];
  v59 = MEMORY[0x277D85DD0];
  v60 = 3221225472;
  v61 = __35__MFMessageContentView__commonInit__block_invoke_6;
  v62 = &unk_278181D20;
  objc_copyWeak(&v63, location);
  [v36 addScriptHandlerForWebView:webView11 key:@"ImageError" handler:&v59];

  [(MFMessageContentView *)self setMessageBlockingReason:0, v59, v60, v61, v62];
  [(MFMessageContentView *)self setInitialScale:-1.0];
  [(MFMessageContentView *)self setInitiallyZoomsToShowAllContent:1];
  [(MFMessageContentView *)self setShowsBanners:1];
  [(MFMessageContentView *)self setZoomEnabled:1];
  v38 = [MFMessageHeaderView alloc];
  [(MFMessageContentView *)self frame];
  v39 = [(MFMessageHeaderView *)v38 initWithFrame:0.0, 0.0];
  headerView = self->_headerView;
  self->_headerView = v39;

  [(MFMessageHeaderView *)self->_headerView setDelegate:self];
  [(MFMessageContentView *)self addSubview:self->_headerView];
  topAnchor = [(MFMessageHeaderView *)self->_headerView topAnchor];
  topAnchor2 = [(MFMessageContentView *)self topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v43 setActive:1];

  leadingAnchor = [(MFMessageHeaderView *)self->_headerView leadingAnchor];
  leadingAnchor2 = [(MFMessageContentView *)self leadingAnchor];
  v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v46 setActive:1];

  trailingAnchor = [(MFMessageHeaderView *)self->_headerView trailingAnchor];
  trailingAnchor2 = [(MFMessageContentView *)self trailingAnchor];
  v49 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v49 setActive:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__fontSizeDidChange_ name:*MEMORY[0x277CD67A0] object:0];
  [defaultCenter addObserver:self selector:sel__darkerSystemColorsStatusDidChange_ name:*MEMORY[0x277D76460] object:0];
  v51 = objc_alloc(MEMORY[0x277CD6890]);
  v52 = [v51 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  loadingView = self->_loadingView;
  self->_loadingView = v52;

  [(MFMessageContentLoadingView *)self->_loadingView setAlpha:0.0];
  [(MFMessageContentView *)self _addLoadingSubview:self->_loadingView];
  v54 = objc_alloc_init(MEMORY[0x277CBEB58]);
  inFlightURLs = self->_inFlightURLs;
  self->_inFlightURLs = v54;

  v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
  failedProxyURLs = self->_failedProxyURLs;
  self->_failedProxyURLs = v56;

  [(MFWebViewLoadingController *)self->_webViewLoadingController setWebProcessDelegate:self];
  [(MFMessageContentView *)self _setupWebProcessLocalizedStrings];
  v58 = objc_alloc_init(_MFTapPreventingRecognizer);
  [(_MFTapPreventingRecognizer *)v58 setNumberOfTapsRequired:2];
  [(MFMessageContentView *)self addGestureRecognizer:v58];
  [(MFMessageContentView *)self _observeBlockedSenderListChangedNotification];

  objc_destroyWeak(&v63);
  objc_destroyWeak(&v65);
  objc_destroyWeak(&v67);
  objc_destroyWeak(&v69);
  objc_destroyWeak(&v71);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&v75);
  objc_destroyWeak(&v77);
  objc_destroyWeak(location);
}

void __35__MFMessageContentView__commonInit__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"«empty»";
    if (v2)
    {
      v4 = v2;
    }

    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_2149C9000, v3, OS_LOG_TYPE_DEFAULT, "#Warning [MCVLog] %{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __35__MFMessageContentView__commonInit__block_invoke_126(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = [v2 objectForKeyedSubscript:@"name"];
    v6 = [v2 objectForKeyedSubscript:@"message"];
    v7 = [v2 objectForKeyedSubscript:@"stack"];
    v8 = 138543874;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_error_impl(&dword_2149C9000, v3, OS_LOG_TYPE_ERROR, "[MCVError] Unhandled JS Exception: %{public}@ %@ - callstack: %{public}@", &v8, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __35__MFMessageContentView__commonInit__block_invoke_148(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAttachmentTapMessage:v3];
}

void __35__MFMessageContentView__commonInit__block_invoke_2_152(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAttachmentSaveMessage:v3];
}

void __35__MFMessageContentView__commonInit__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v3;
    v6 = [v5 objectForKeyedSubscript:@"currentOffsetTop"];
    [v6 floatValue];
    v8 = v7;

    v9 = [v5 objectForKeyedSubscript:@"preOffsetTop"];
    [v9 floatValue];
    v10 = v8;
    v12 = v11;
  }

  else
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __35__MFMessageContentView__commonInit__block_invoke_3_cold_1(v13);
    }

    v12 = 0.0;
    v10 = 0.0;
  }

  [WeakRetained _expandQuoteWithCollapsedBlockquoteOffset:v10 expandedOffset:v12];
}

void __35__MFMessageContentView__commonInit__block_invoke_166(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (objc_opt_respondsToSelector())
  {
    v4 = [v6 BOOLValue];
    v5 = [WeakRetained footerView];
    [v5 setMessageContainsBlockQuotes:v4];
  }
}

void __35__MFMessageContentView__commonInit__block_invoke_2_173(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained contentRequest];
    v6 = [v5 contentRepresentationFuture];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__MFMessageContentView__commonInit__block_invoke_3_174;
    v7[3] = &unk_278181CD0;
    v8 = v3;
    [v6 addSuccessBlock:v7];
  }
}

void __35__MFMessageContentView__commonInit__block_invoke_3_174(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSkipMessageReformatting:{objc_msgSend(*(a1 + 32), "BOOLValue") ^ 1}];
}

void __35__MFMessageContentView__commonInit__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _foundImageCIDAttachments:v3];
}

void __35__MFMessageContentView__commonInit__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSelectedHTML:v3];

  v4 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained selectedHTML];
    [v4 messageContentView:WeakRetained didChangeSelectedHTML:v5];
  }
}

void __35__MFMessageContentView__commonInit__block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  if (v4)
  {
    [WeakRetained webProcessDidFailLoadingResourceWithURL:v4];
  }
}

- (WKWebView)webView
{
  webViewLoadingController = [(MFMessageContentView *)self webViewLoadingController];
  webView = [webViewLoadingController webView];
  [webView setAccessibilityIdentifier:*MEMORY[0x277D258A0]];

  webViewLoadingController2 = [(MFMessageContentView *)self webViewLoadingController];
  webView2 = [webViewLoadingController2 webView];

  return webView2;
}

- (MFWebViewDictionary)webViewConstants
{
  webViewLoadingController = [(MFMessageContentView *)self webViewLoadingController];
  webViewConstants = [webViewLoadingController webViewConstants];

  return webViewConstants;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_flags = *&self->_flags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFF7 | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFEF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFEFF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 32;
    }

    else
    {
      v11 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFDF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 64;
    }

    else
    {
      v12 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFBF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 128;
    }

    else
    {
      v13 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFF7F | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 512;
    }

    else
    {
      v14 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFDFF | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 1024;
    }

    else
    {
      v15 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFBFF | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 2048;
    }

    else
    {
      v16 = 0;
    }

    *&self->_flags = *&self->_flags & 0xF7FF | v16;
    v5 = obj;
  }
}

- (id)_updatedHeaderViewModelForMessage:(id)message replyToList:(id)list
{
  messageCopy = message;
  listCopy = list;
  v8 = [(MFMessageContentView *)self _mailboxForBanner:messageCopy];
  v9 = [MessageHeaderViewModel alloc];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__MFMessageContentView__updatedHeaderViewModelForMessage_replyToList___block_invoke;
  v15[3] = &unk_278181D48;
  v10 = messageCopy;
  v16 = v10;
  v11 = listCopy;
  v17 = v11;
  selfCopy = self;
  v12 = v8;
  v19 = v12;
  v13 = [(MessageHeaderViewModel *)v9 initWithBuilder:v15];

  return v13;
}

void __70__MFMessageContentView__updatedHeaderViewModelForMessage_replyToList___block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [*(a1 + 32) itemID];
  [v24 setItemID:v3];

  v4 = [*(a1 + 32) flags];
  [v24 setRead:{objc_msgSend(v4, "read")}];
  [v24 setFlagged:{objc_msgSend(v4, "flagged")}];
  v5 = [*(a1 + 32) flagColors];
  [v24 setFlagColors:v5];

  [v24 setReplied:{objc_msgSend(v4, "replied")}];
  [v24 setForwarded:{objc_msgSend(v4, "forwarded")}];
  [v24 setVIP:{objc_msgSend(*(a1 + 32), "isVIP")}];
  [v24 setNotify:{objc_msgSend(*(a1 + 32), "conversationNotificationLevel") == 2}];
  [v24 setMute:{objc_msgSend(*(a1 + 32), "conversationNotificationLevel") == 1}];
  [v24 setBlockedSender:{objc_msgSend(*(a1 + 32), "isBlocked")}];
  [v24 setUnsubscribeType:{objc_msgSend(*(a1 + 32), "unsubscribeType")}];
  [v24 setHasAttachments:{objc_msgSend(*(a1 + 32), "hasAttachments")}];
  v6 = [*(a1 + 32) date];
  [v24 setDateSent:v6];

  v7 = [*(a1 + 32) date];
  [v24 setDate:v7];

  v8 = [*(a1 + 32) subject];
  [v24 setSubject:v8];

  v9 = [*(a1 + 32) senderList];
  [v24 setSenderList:v9];

  [v24 setReplyToList:*(a1 + 40)];
  v10 = [*(a1 + 32) toList];
  [v24 setToList:v10];

  v11 = [*(a1 + 32) ccList];
  [v24 setCcList:v11];

  v12 = [*(a1 + 32) bccList];
  [v24 setBccList:v12];

  v13 = [*(a1 + 48) mailboxProvider];
  v14 = [*(a1 + 56) objectID];
  v15 = [v13 legacyMailboxForObjectID:v14];
  [v24 setMailbox:v15];

  v16 = [*(a1 + 48) atomManager];
  [v24 setAtomManager:v16];

  v17 = [*(a1 + 32) readLater];
  v18 = [v17 date];
  [v24 setReadLaterDate:v18];

  v19 = [*(a1 + 32) sendLaterDate];
  [v24 setSendLaterDate:v19];

  v20 = [*(a1 + 32) followUp];
  [v24 setFollowUp:v20];

  v21 = [*(a1 + 32) displayDate];
  [v24 setDisplayDate:v21];

  v22 = [objc_alloc(MEMORY[0x277D259E0]) initWithMessageListItem:*(a1 + 32) reducePlaceholderImage:1];
  [v24 setAvatarContext:v22];

  v23 = [*(a1 + 48) avatarGenerator];
  [v24 setAvatarGenerator:v23];
}

- (void)setContentRequest:(id)request
{
  v55 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (self->_contentRequest != requestCopy)
  {
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    v38 = _os_activity_create(&dword_2149C9000, "message content view loading", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v38, &state);
    [(EFManualCancelationToken *)self->_loadingCancelable cancel];
    loadingCancelable = self->_loadingCancelable;
    self->_loadingCancelable = 0;

    objc_storeStrong(&self->_contentRequest, request);
    v7 = objc_alloc_init(MEMORY[0x277D07170]);
    v8 = self->_loadingCancelable;
    self->_loadingCancelable = v7;

    delegate = [(MFMessageContentView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [delegate contentItemHandlingDelegateForMessageContentView:{self, v38}];
      v10 = [MessageContentItemsHelper alloc];
      webView = [(MFMessageContentView *)self webView];
      v12 = [(MessageContentItemsHelper *)v10 initWithWebView:webView contentItemHandler:v9];
      relatedItemsHelper = self->_relatedItemsHelper;
      self->_relatedItemsHelper = v12;
    }

    message = [(MessageContentRepresentationRequest *)requestCopy message];
    v15 = [MFAddressAtomStatusManager alloc];
    mailboxes = [message mailboxes];
    firstObject = [mailboxes firstObject];
    account = [firstObject account];
    v19 = [(MFAddressAtomStatusManager *)v15 initWithAccount:account];
    [(MFMessageContentView *)self setAtomManager:v19];

    [(MFMessageContentView *)self setHasVisibleContent:0];
    [(MFMessageContentView *)self setBlockedContentTypes:0];
    [(MFMessageContentView *)self _clearAllBannersAnimated:0];
    [(MFMessageContentView *)self _stopObservingContentHeight];
    [(MFConversationItemFooterView *)self->_footerView showAttribution];
    [(MFMessageContentView *)self setSelectedHTML:0];
    if (requestCopy)
    {
      v20 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        ef_publicDescription = [message ef_publicDescription];
        *buf = 138544130;
        v48 = v22;
        v49 = 2048;
        selfCopy2 = self;
        v51 = 2114;
        v52 = requestCopy;
        v53 = 2114;
        v54 = ef_publicDescription;
        _os_log_impl(&dword_2149C9000, v20, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: set message content request: %{public}@ for message: %{public}@", buf, 0x2Au);
      }

      [(MFMessageContentView *)self _showDelayedProgressUIIfNeeded];
      v24 = +[MFMessageContentView signpostLog];
      signpostID = [(MessageContentRepresentationRequest *)self->_contentRequest signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2149C9000, v24, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MFMessageContentView", "", buf, 2u);
      }

      globalAsyncScheduler = [MEMORY[0x277D071B8] globalAsyncScheduler];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __42__MFMessageContentView_setContentRequest___block_invoke;
      v44[3] = &unk_278181710;
      v44[4] = self;
      v27 = message;
      v45 = v27;
      v28 = [globalAsyncScheduler afterDelay:v44 performBlock:3.0];
      [(MFMessageContentView *)self setLoadingSpinnerTailspinToken:v28];

      v29 = [(MFMessageContentView *)self _updatedHeaderViewModelForMessage:v27 replyToList:0];
      [(MFMessageHeaderView *)self->_headerView displayMessageUsingViewModel:v29];
      objc_initWeak(buf, self);
      mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
      v31 = self->_loadingCancelable;
      contentRequest = self->_contentRequest;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __42__MFMessageContentView_setContentRequest___block_invoke_237;
      v41[3] = &unk_278181D70;
      objc_copyWeak(&v43, buf);
      v42 = v27;
      v33 = [(MessageContentRepresentationRequest *)contentRequest onScheduler:mainThreadScheduler addLoadObserver:v41];
      [(EFManualCancelationToken *)v31 addCancelable:v33];

      [(MessageContentRepresentationRequest *)self->_contentRequest start];
      objc_destroyWeak(&v43);

      objc_destroyWeak(buf);
    }

    else
    {
      [(MFMessageContentView *)self clearMessage];
      v34 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138543618;
        v48 = v36;
        v49 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_2149C9000, v34, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: set nil content request, removing loading indicator", buf, 0x16u);
      }

      [(MFMessageContentView *)self setLoadingIndicatorVisible:0];
    }

    os_activity_scope_leave(&state);
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __42__MFMessageContentView_setContentRequest___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading spinner displayed for %fl seconds", 0x4008000000000000];
  EFSaveTailspin();
  v3 = +[MFMessageContentView log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) ef_publicDescription];
    *buf = 138544130;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = v2;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_2149C9000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: %{public}@ for message: %{public}@", buf, 0x2Au);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __42__MFMessageContentView_setContentRequest___block_invoke_237(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained loadingSpinnerTailspinToken];
  [v8 cancel];

  [WeakRetained setContentRepresentationError:v6];
  if (v5 && WeakRetained)
  {
    v9 = WeakRetained[76];
    v10 = [v5 contentURL];
    [v9 addObject:v10];

    v11 = [WeakRetained delegate];
    [v11 messageContentView:WeakRetained handleContentRepresentation:v5];

    v12 = [v5 replyToList];
    if ([v12 count])
    {
      v13 = *(a1 + 32);
      v14 = [v5 replyToList];
      v15 = [WeakRetained _updatedHeaderViewModelForMessage:v13 replyToList:v14];

      v16 = +[MFMessageContentView log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [*(a1 + 32) ef_publicDescription];
        v22 = 138543874;
        v23 = v18;
        v24 = 2048;
        v25 = WeakRetained;
        v26 = 2114;
        v27 = v19;
        _os_log_impl(&dword_2149C9000, v16, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: Updating header for message with replyToList: %{public}@", &v22, 0x20u);
      }

      [WeakRetained[53] displayMessageUsingViewModel:v15];
    }
  }

  else
  {
    v12 = +[MFMessageContentView log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      NSStringFromClass(v20);
      objc_claimAutoreleasedReturnValue();
      __42__MFMessageContentView_setContentRequest___block_invoke_237_cold_1();
    }
  }

  [WeakRetained contentRequestDidReceiveContentRepresentation:v5 error:v6];
  v21 = *MEMORY[0x277D85DE8];
}

- (id)_mailboxForBanner:(id)banner
{
  mailboxes = [banner mailboxes];
  firstObject = [mailboxes ef_firstObjectPassingTest:&__block_literal_global_241];
  if (!firstObject)
  {
    firstObject = [mailboxes ef_firstObjectPassingTest:&__block_literal_global_243];
    if (!firstObject)
    {
      firstObject = [mailboxes ef_firstObjectPassingTest:&__block_literal_global_245];
      if (!firstObject)
      {
        firstObject = [mailboxes firstObject];
      }
    }
  }

  return firstObject;
}

- (void)setPreviousContentSnapshot:(id)snapshot
{
  v41 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  v6 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    previousContentSnapshot = self->_previousContentSnapshot;
    v33 = 138544130;
    v34 = v8;
    v35 = 2048;
    selfCopy3 = self;
    v37 = 2048;
    v38 = snapshotCopy;
    v39 = 2048;
    v40 = previousContentSnapshot;
    _os_log_impl(&dword_2149C9000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: setPreviousContentSnapshot:%p (was %p)", &v33, 0x2Au);
  }

  v10 = self->_previousContentSnapshot;
  if (v10 != snapshotCopy)
  {
    [(UIView *)v10 removeFromSuperview];
    objc_storeStrong(&self->_previousContentSnapshot, snapshot);
    v11 = self->_previousContentSnapshot;
    if (v11)
    {
      [(UIView *)v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [(MFMessageContentView *)self layoutMargins];
      [(UIView *)self->_previousContentSnapshot setFrame:v18, v13, v15, v17];
      if (!self->_previousContentSnapshotWrapperView)
      {
        v19 = objc_alloc(MEMORY[0x277D75D18]);
        [(MFMessageContentView *)self bounds];
        v20 = [v19 initWithFrame:?];
        previousContentSnapshotWrapperView = self->_previousContentSnapshotWrapperView;
        self->_previousContentSnapshotWrapperView = v20;

        tertiarySystemBackgroundColor = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
        [(UIView *)self->_previousContentSnapshotWrapperView setBackgroundColor:tertiarySystemBackgroundColor];

        [(UIView *)self->_previousContentSnapshotWrapperView setAutoresizingMask:18];
      }

      [(MFMessageContentView *)self bounds];
      [(UIView *)self->_previousContentSnapshotWrapperView setFrame:?];
      [(UIView *)self->_previousContentSnapshotWrapperView addSubview:self->_previousContentSnapshot];
      [(UIView *)self->_previousContentSnapshotWrapperView setAlpha:1.0];
      v23 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = self->_previousContentSnapshotWrapperView;
        v33 = 138543874;
        v34 = v25;
        v35 = 2048;
        selfCopy3 = self;
        v37 = 2048;
        v38 = v26;
        _os_log_impl(&dword_2149C9000, v23, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: adding previousContentSnapshotWrapperView: %p", &v33, 0x20u);
      }

      scrollView = [(MFMessageContentView *)self scrollView];
      [scrollView addSubview:self->_previousContentSnapshotWrapperView];
    }

    else
    {
      v28 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = self->_previousContentSnapshotWrapperView;
        v33 = 138543874;
        v34 = v30;
        v35 = 2048;
        selfCopy3 = self;
        v37 = 2048;
        v38 = v31;
        _os_log_impl(&dword_2149C9000, v28, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: removing previousContentSnapshotWrapperView: %p", &v33, 0x20u);
      }

      [(UIView *)self->_previousContentSnapshotWrapperView removeFromSuperview];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)sourceIsManaged
{
  contentRequest = [(MFMessageContentView *)self contentRequest];
  message = [contentRequest message];
  mailboxes = [message mailboxes];
  v5 = [mailboxes ef_all:&__block_literal_global_248];

  return v5;
}

uint64_t __39__MFMessageContentView_sourceIsManaged__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 account];
  v3 = [v2 sourceIsManaged];

  return v3;
}

- (EMContentRepresentation)contentRepresentationIfAvailable
{
  v17 = *MEMORY[0x277D85DE8];
  contentRequest = [(MFMessageContentView *)self contentRequest];
  resultIfAvailable = [contentRequest resultIfAvailable];

  if (!resultIfAvailable)
  {
    v5 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      contentRequest2 = [(MFMessageContentView *)self contentRequest];
      v11 = 138543874;
      v12 = v9;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = contentRequest2;
      _os_log_error_impl(&dword_2149C9000, v5, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: contentRepresentation requested before it finished loading: %{public}@", &v11, 0x20u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return resultIfAvailable;
}

- (EMContentRepresentation)contentRepresentation
{
  contentRequest = [(MFMessageContentView *)self contentRequest];
  waitForResult = [contentRequest waitForResult];

  return waitForResult;
}

- (void)sceneMovedToForeground
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_backgroundWebProcessCrashCount)
  {
    [(NSMutableSet *)self->_inFlightURLs removeAllObjects];
    v3 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      backgroundWebProcessCrashCount = self->_backgroundWebProcessCrashCount;
      *buf = 138543874;
      v11 = v5;
      v12 = 2048;
      selfCopy = self;
      v14 = 2048;
      v15 = backgroundWebProcessCrashCount;
      _os_log_impl(&dword_2149C9000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: Reloading web view (background crash count: %ld)", buf, 0x20u);
    }

    self->_backgroundWebProcessCrashCount = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__MFMessageContentView_sceneMovedToForeground__block_invoke;
    v9[3] = &unk_2781816C0;
    v9[4] = self;
    mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
    [mainThreadScheduler performBlock:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __46__MFMessageContentView_sceneMovedToForeground__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) webViewLoadingController];
  [v1 slapWebView];
}

+ (void)prewarmContent
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SEE_MORE" value:&stru_2826D1AD8 table:@"Main"];

  if (_attachmentStyleSheet_onceToken != -1)
  {
    +[MFMessageContentView prewarmContent];
  }

  if (_notWideStyleSheet_onceToken != -1)
  {
    +[MFMessageContentView prewarmContent];
  }

  [MEMORY[0x277D75348] mailQuoteColorLevelOne];

  [MEMORY[0x277D75348] mailQuoteColorLevelTwo];
  [MEMORY[0x277D75348] mailQuoteColorLevelThree];

  mailConversationViewExpandedCellBackgroundColor = [MEMORY[0x277D75348] mailConversationViewExpandedCellBackgroundColor];
}

- (void)_setupWebProcessLocalizedStrings
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__MFMessageContentView__setupWebProcessLocalizedStrings__block_invoke;
  v6[3] = &unk_278181DB8;
  v6[4] = self;
  v3 = [&unk_2826DCA40 ef_map:v6];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&unk_2826DCA40];
  webViewConstants = [(MFMessageContentView *)self webViewConstants];
  [webViewConstants setObject:v4 forKeyedSubscript:@"localizedStrings"];
}

id __56__MFMessageContentView__setupWebProcessLocalizedStrings__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v3 value:&stru_2826D1AD8 table:@"Main"];

  return v6;
}

- (void)layoutSubviews
{
  v27 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = MFMessageContentView;
  [(MFMessageContentView *)&v20 layoutSubviews];
  if ([(MFMessageContentView *)self showMessageFooter])
  {
    [(MFMessageContentView *)self _layoutFooterView];
    [(MFMessageContentView *)self bringSubviewToFront:self->_footerView];
  }

  loadingView = [(MFMessageContentView *)self loadingView];
  superview = [loadingView superview];

  if (superview)
  {
    v5 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      loadingView2 = [(MFMessageContentView *)self loadingView];
      *buf = 138543874;
      v22 = v7;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2048;
      v26 = loadingView2;
      _os_log_impl(&dword_2149C9000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: bringing loading view to front: %p", buf, 0x20u);
    }

    [(MFMessageContentView *)self _layoutLoadingView];
    loadingView3 = [(MFMessageContentView *)self loadingView];
    superview2 = [loadingView3 superview];
    loadingView4 = [(MFMessageContentView *)self loadingView];
    [superview2 bringSubviewToFront:loadingView4];

    scrollView = [(MFMessageContentView *)self scrollView];
    [scrollView setZoomEnabled:0];

    scrollView2 = [(MFMessageContentView *)self scrollView];
    [scrollView2 setScrollEnabled:0];
  }

  if (self->_previousContentSnapshotWrapperView)
  {
    v14 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      previousContentSnapshotWrapperView = self->_previousContentSnapshotWrapperView;
      *buf = 138543874;
      v22 = v16;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2048;
      v26 = previousContentSnapshotWrapperView;
      _os_log_impl(&dword_2149C9000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: bringing previous content snapshot wrapper view to front: %p", buf, 0x20u);
    }

    superview3 = [(UIView *)self->_previousContentSnapshotWrapperView superview];
    [superview3 bringSubviewToFront:self->_previousContentSnapshotWrapperView];
  }

  [(UIView *)self mf_activateDebugModeIfEnabled];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_layoutFooterView
{
  footerView = [(MFMessageContentView *)self footerView];
  [footerView bounds];
  Height = CGRectGetHeight(v31);
  if (Height > 0.0)
  {
    [footerView layoutMargins];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(MFMessageContentView *)self layoutMargins];
    if (v7 != v15 || v5 != v12 || v11 != v14 || v9 != v13)
    {
      [(MFMessageContentView *)self layoutMargins];
      [footerView setLayoutMargins:?];
    }

    [(MFMessageContentView *)self bounds];
    Width = CGRectGetWidth(v32);
    [footerView bounds];
    if (v18 != Width || v17 != Height)
    {
      v19 = footerView;
      [v19 frame];
      [v19 setFrame:?];
    }

    if ([(MFMessageContentView *)self shouldHideStickyFooterView])
    {
      [footerView frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      [(MFMessageContentView *)self frame];
      CGRectGetHeight(v33);
      v34.origin.x = v21;
      v34.origin.y = v23;
      v34.size.width = v25;
      v34.size.height = v27;
      CGRectGetHeight(v34);
      UIRoundToViewScale();
      [footerView setFrame:{v21, v28, v25, v27}];
    }
  }
}

- (BOOL)shouldHideStickyFooterView
{
  traitCollection = [(MFMessageContentView *)self traitCollection];
  if ([traitCollection mf_hasCompactDimension])
  {
    v3 = 1;
  }

  else
  {
    v3 = MUISolariumFeatureEnabled();
  }

  return v3;
}

- (void)_layoutLoadingView
{
  scrollView = [(MFMessageContentView *)self scrollView];
  [scrollView contentInset];
  v4 = v3;
  v6 = v5;

  [(MFMessageContentView *)self bounds];
  v8 = v7;
  v10 = v9 + 0.0;
  v12 = v4 + v11;
  v14 = v13 - (v4 + v6);
  loadingView = [(MFMessageContentView *)self loadingView];
  [loadingView setFrame:{v10, v12, v8, v14}];
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = MFMessageContentView;
  [(MFMessageContentView *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__MFMessageContentView_setFrame___block_invoke;
  v4[3] = &unk_2781816C0;
  v4[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v4];
}

void __33__MFMessageContentView_setFrame___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*(a1 + 32) bounds];
  v28.origin.x = v11;
  v28.origin.y = v12;
  v28.size.width = v13;
  v28.size.height = v14;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  v15 = CGRectEqualToRect(v27, v28);

  if (!v15)
  {
    [*(a1 + 32) bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [*(a1 + 32) webView];
    [v24 setFrame:{v17, v19, v21, v23}];

    if ([*(a1 + 32) contentPaddingFollowsLayoutMargins])
    {
      v25 = *(a1 + 32);

      [v25 _setNeedsPaddingConstantsUpdate];
    }
  }
}

- (NSArray)mf_exclusionRegionsInBaseWindowCoordinateSpace
{
  showMessageFooter = [(MFMessageContentView *)self showMessageFooter];
  v4 = MEMORY[0x277CBEBF8];
  if (showMessageFooter)
  {
    mf_exclusionRegionsInBaseWindowCoordinateSpace = [(MFConversationItemFooterView *)self->_footerView mf_exclusionRegionsInBaseWindowCoordinateSpace];
    v6 = mf_exclusionRegionsInBaseWindowCoordinateSpace;
    if (mf_exclusionRegionsInBaseWindowCoordinateSpace)
    {
      v7 = mf_exclusionRegionsInBaseWindowCoordinateSpace;
    }

    else
    {
      v7 = v4;
    }

    v4 = v7;
  }

  return v4;
}

- (BOOL)_firstResponderIsInWebView
{
  firstResponder = [(MFMessageContentView *)self firstResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    webView = [(MFMessageContentView *)self webView];
    v5 = [firstResponder isDescendantOfView:webView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_selectAll_ == action)
  {
    _firstResponderIsInWebView = [(MFMessageContentView *)self _firstResponderIsInWebView];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MFMessageContentView;
    _firstResponderIsInWebView = [(MFMessageContentView *)&v10 canPerformAction:action withSender:senderCopy];
  }

  v8 = _firstResponderIsInWebView;

  return v8;
}

- (void)selectAll:(id)all
{
  allCopy = all;
  if ([(MFMessageContentView *)self _firstResponderIsInWebView])
  {
    firstResponder = [(MFMessageContentView *)self firstResponder];
    [firstResponder selectAll:allCopy];
  }
}

- (void)setDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (![(MFMessageDisplayMetrics *)self->_displayMetrics isEqual:?])
  {
    objc_storeStrong(&self->_displayMetrics, metrics);
    headerView = [(MFMessageContentView *)self headerView];
    [headerView setDisplayMetrics:metricsCopy];

    [(MFConversationItemFooterView *)self->_footerView setDisplayMetrics:metricsCopy];
    if ([(MFMessageContentView *)self contentPaddingFollowsLayoutMargins])
    {
      [(MFMessageContentView *)self _setNeedsPaddingConstantsUpdate];
    }
  }
}

- (void)setAutomaticallyCollapseQuotedContent:(BOOL)content reloadIfNeeded:(BOOL)needed
{
  if (self->_automaticallyCollapseQuotedContent != content)
  {
    neededCopy = needed;
    v13 = [MEMORY[0x277CCABB0] numberWithBool:?];
    webViewLoadingController = [(MFMessageContentView *)self webViewLoadingController];
    webViewConstants = [webViewLoadingController webViewConstants];
    [webViewConstants setObject:v13 forKeyedSubscript:@"collapseQuotedContent"];

    self->_automaticallyCollapseQuotedContent = content;
    if (neededCopy)
    {
      webViewLoadingController2 = [(MFMessageContentView *)self webViewLoadingController];
      [webViewLoadingController2 reload];
    }

    if ([(MFMessageContentView *)self shouldHideStickyFooterView])
    {
      automaticallyCollapseQuotedContent = [(MFMessageContentView *)self automaticallyCollapseQuotedContent];
      footerView = [(MFMessageContentView *)self footerView];
      seeMoreButton = [footerView seeMoreButton];
      v11 = seeMoreButton;
      v12 = 0.0;
      if (automaticallyCollapseQuotedContent)
      {
        v12 = 1.0;
      }

      [seeMoreButton setAlpha:v12];
    }
  }
}

- (void)setShowMessageFooter:(BOOL)footer
{
  if (self->_showMessageFooter != footer)
  {
    footerCopy = footer;
    self->_showMessageFooter = footer;
    footerView = [(MFMessageContentView *)self footerView];
    v6 = footerView;
    if (footerCopy)
    {
      [(MFMessageContentView *)self addSubview:footerView];
    }

    else
    {
      [footerView removeFromSuperview];
    }
  }
}

- (MFConversationItemFooterView)footerView
{
  footerView = self->_footerView;
  if (!footerView)
  {
    v4 = objc_alloc_init(MFConversationItemFooterView);
    v5 = self->_footerView;
    self->_footerView = v4;

    [(MFConversationItemFooterView *)self->_footerView setDelegate:self];
    [(MFConversationItemFooterView *)self->_footerView addTarget:self action:sel__revealActionsButtonTapped toButton:1];
    [(MFConversationItemFooterView *)self->_footerView addTarget:self action:sel__seeMoreButtonTapped toButton:0];
    [(MFConversationItemFooterView *)self->_footerView addTarget:self action:sel__undoSendButtonTapped toButton:2];
    displayMetrics = [(MFMessageContentView *)self displayMetrics];
    [(MFConversationItemFooterView *)self->_footerView setDisplayMetrics:displayMetrics];

    [(MFConversationItemFooterView *)self->_footerView setAlpha:0.0];
    footerView = self->_footerView;
  }

  return footerView;
}

- (void)setMessageBlockingReason:(int64_t)reason
{
  self->_messageBlockingReason = reason;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:reason == 0];
  webViewConstants = [(MFMessageContentView *)self webViewConstants];
  [webViewConstants setObject:v5 forKeyedSubscript:@"showRemoteImages"];
}

- (void)setInitialScale:(double)scale
{
  self->_initialScale = scale;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  webViewConstants = [(MFMessageContentView *)self webViewConstants];
  [webViewConstants setObject:v5 forKeyedSubscript:@"initial-scale"];
}

- (void)_updateMinimumFontSize
{
  v19[5] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v4 = *MEMORY[0x277D76800];
  v19[0] = *MEMORY[0x277D76808];
  v19[1] = v4;
  v5 = *MEMORY[0x277D767F0];
  v19[2] = *MEMORY[0x277D767F8];
  v19[3] = v5;
  v19[4] = *MEMORY[0x277D767E8];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:5];
  v7 = [v3 setWithArray:v6];

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  v10 = [v7 containsObject:preferredContentSizeCategory];

  v11 = 0.0;
  if (v10)
  {
    _bodyFont = [(MFMessageContentView *)self _bodyFont];
    [_bodyFont pointSize];
    v11 = v13;
  }

  webView = [(MFMessageContentView *)self webView];
  configuration = [webView configuration];
  preferences = [configuration preferences];

  [preferences minimumFontSize];
  if (vabdd_f64(v17, v11) > 0.00000011920929)
  {
    [preferences setMinimumFontSize:v11];
    [(MFMessageContentView *)self _reloadUserStyleSheets];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)layoutMarginsDidChange
{
  v10.receiver = self;
  v10.super_class = MFMessageContentView;
  [(MFMessageContentView *)&v10 layoutMarginsDidChange];
  [(UIView *)self->_previousContentSnapshot frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(MFMessageContentView *)self layoutMargins];
  [(UIView *)self->_previousContentSnapshot setFrame:v9, v4, v6, v8];
  [(MFMessageContentView *)self _layoutFooterView];
}

- (void)_fontSizeDidChange:(id)change
{
  [(MFMessageContentView *)self _updateMinimumFontSize];
  [(MFMessageContentView *)self frame];
  Width = CGRectGetWidth(v11);
  [(MFMessageContentView *)self safeAreaInsets];
  [MFReadableContentMarginCalculator readableContentMarginsForWidth:Width minMargins:*MEMORY[0x277D768C8] safeAreaInsets:*(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), v5, v6, v7, v8];
  [(MFMessageContentView *)self setLayoutMargins:?];
  webViewLoadingController = [(MFMessageContentView *)self webViewLoadingController];
  [webViewLoadingController reload];
}

- (id)_bodyFont
{
  mEMORY[0x277CD6870] = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v3 = [mEMORY[0x277CD6870] cachedPreferredFontForStyle:*MEMORY[0x277D76918]];

  return v3;
}

- (void)_setNeedsPaddingConstantsUpdate
{
  if (!self->_paddingConstantsNeedUpdate)
  {
    self->_paddingConstantsNeedUpdate = 1;
    [(MFMessageContentView *)self performSelectorOnMainThread:sel__updateWebViewPaddingConstants withObject:0 waitUntilDone:0];
  }
}

- (void)_updateWebViewPaddingConstants
{
  v65[4] = *MEMORY[0x277D85DE8];
  [(MFMessageContentView *)self _viewportWidth];
  v5 = v4;
  quickReplyAnimationContext = [(MFMessageContentView *)self quickReplyAnimationContext];
  v7 = 0.0;
  if (quickReplyAnimationContext)
  {
    quickReplyAnimationContext2 = [(MFMessageContentView *)self quickReplyAnimationContext];
    [quickReplyAnimationContext2 insets];
    v7 = v9;
  }

  [(MFMessageContentView *)self layoutMargins];
  v11 = v10;
  v13 = v12;
  [(MFMessageContentView *)self showMessageFooter];
  _bodyFont = [(MFMessageContentView *)self _bodyFont];
  displayMetrics = [(MFMessageContentView *)self displayMetrics];
  if ([displayMetrics hasCompactLayout])
  {
    v16 = 29.0;
  }

  else
  {
    v16 = 32.0;
  }

  [_bodyFont _scaledValueForValue:v16];
  [_bodyFont lineHeight];
  [_bodyFont leading];
  displayMetrics2 = [(MFMessageContentView *)self displayMetrics];
  hasGenerousMargins = [displayMetrics2 hasGenerousMargins];
  v19 = v7 + v13 + -7.0;

  v20 = MEMORY[0x277D768C8];
  v21 = *(MEMORY[0x277D768C8] + 24);
  if (hasGenerousMargins)
  {
    v22 = v11 + -7.0;
  }

  else
  {
    v22 = *(MEMORY[0x277D768C8] + 8);
  }

  if (hasGenerousMargins)
  {
    v23 = v19;
  }

  else
  {
    v23 = *(MEMORY[0x277D768C8] + 24);
  }

  if (hasGenerousMargins)
  {
    v24 = v5 - (v11 + -7.0 + v19);
  }

  else
  {
    v24 = v5;
  }

  v50 = v24;
  webView = [(MFMessageContentView *)self webView];
  [webView _setObscuredInsets:{*v20, v22, v20[2], v23}];

  webView2 = [(MFMessageContentView *)self webView];
  [webView2 _overrideLayoutParametersWithMinimumLayoutSize:v50 maximumUnobscuredSizeOverride:{1.0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

  webView3 = [(MFMessageContentView *)self webView];
  scrollView = [webView3 scrollView];
  [scrollView contentInset];
  v30 = v29;
  v32 = v31;

  webView4 = [(MFMessageContentView *)self webView];
  scrollView2 = [webView4 scrollView];
  [scrollView2 setContentInset:{v30, v22, v32, v23}];

  UIEdgeInsetsSubtract();
  v35 = MFFloatToCSSPixelString();
  v65[0] = v35;
  v36 = MFFloatToCSSPixelString();
  v65[1] = v36;
  v37 = MFFloatToCSSPixelString();
  v65[2] = v37;
  v38 = MFFloatToCSSPixelString();
  v65[3] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:4];

  v40 = [v39 componentsJoinedByString:@" "];
  v41 = +[MFMessageContentView log];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = NSStringFromSelector(a2);
    webView5 = [(MFMessageContentView *)self webView];
    *buf = 138544642;
    v54 = v43;
    v55 = 2048;
    selfCopy = self;
    v57 = 2114;
    v58 = v44;
    v59 = 2048;
    v60 = webView5;
    v61 = 2114;
    v62 = v40;
    v63 = 2048;
    v64 = v50;
    _os_log_impl(&dword_2149C9000, v41, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: %{public}@ webView = %p padding:%{public}@ viewport-width:%f", buf, 0x3Eu);
  }

  webViewConstants = [(MFMessageContentView *)self webViewConstants];
  v51[0] = @"padding";
  v51[1] = @"viewport-width";
  v52[0] = v40;
  v47 = [MEMORY[0x277CCABB0] numberWithDouble:v50];
  v52[1] = v47;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
  [webViewConstants setValuesForKeysWithDictionary:v48];

  self->_paddingConstantsNeedUpdate = 0;
  v49 = *MEMORY[0x277D85DE8];
}

+ (id)_styleSheetWithPadding:(UIEdgeInsets)padding useWideLayout:(BOOL)layout
{
  layoutCopy = layout;
  v15[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = CSSString(layoutCopy);
  [dictionary setObject:v6 forKeyedSubscript:@"padding-left"];

  v7 = CSSString(layoutCopy);
  [dictionary setObject:v7 forKeyedSubscript:@"padding-right"];

  v8 = MFFloatToCSSPixelString();
  [dictionary setObject:v8 forKeyedSubscript:@"padding-top"];

  v9 = MFFloatToCSSPixelString();
  [dictionary setObject:v9 forKeyedSubscript:@"padding-bottom"];

  v14 = @"BODY";
  v15[0] = dictionary;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = MFCSSStringFromDictionary();

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_reloadUserStyleSheets
{
  webView = [(MFMessageContentView *)self webView];
  configuration = [webView configuration];
  userContentController = [configuration userContentController];

  [userContentController _removeAllUserStyleSheets];
  v4 = MFUserStyleSheetCSS();
  v5 = _styleSheetWithSource(v4);
  [userContentController _addUserStyleSheet:v5];

  if (_attachmentStyleSheet_onceToken != -1)
  {
    +[MFMessageContentView prewarmContent];
  }

  [userContentController _addUserStyleSheet:_attachmentStyleSheet_sInstance];
  if (_notWideStyleSheet_onceToken != -1)
  {
    +[MFMessageContentView prewarmContent];
  }

  [userContentController _addUserStyleSheet:_notWideStyleSheet_sInstance];
}

- (void)clearMessage
{
  webViewLoadingController = [(MFMessageContentView *)self webViewLoadingController];
  [webViewLoadingController stopLoading];

  [(UIView *)self->_previousContentSnapshotWrapperView removeFromSuperview];
  previousContentSnapshot = [(MFMessageContentView *)self previousContentSnapshot];
  [previousContentSnapshot removeFromSuperview];

  [(MFMessageContentView *)self setPreviousContentSnapshot:0];
  [(MFMessageContentView *)self _stopObservingContentHeight];
  [(MFMessageHeaderView *)self->_headerView removeHeaderBlock:self->_mailDropBanner animated:0];
  [(MFMessageContentView *)self _clearAllBannersAnimated:0];
  v5 = MEMORY[0x277CBEBF8];

  [(MFMessageContentView *)self setAttachments:v5];
}

- (void)_addLoadingSubview:(id)subview
{
  subviewCopy = subview;
  scrollView = [(MFMessageContentView *)self scrollView];
  [(MFMessageContentView *)self insertSubview:subviewCopy above:scrollView];
  [scrollView setZoomEnabled:0];
  [scrollView setScrollEnabled:0];
}

- (void)_removeLoadingSubview:(id)subview
{
  subviewCopy = subview;
  superview = [subviewCopy superview];

  if (superview)
  {
    scrollView = [(MFMessageContentView *)self scrollView];
    [subviewCopy removeFromSuperview];
    [scrollView setZoomEnabled:1];
    [scrollView setScrollEnabled:1];
  }
}

- (void)_showDelayedProgressUIIfNeeded
{
  loadingView = [(MFMessageContentView *)self loadingView];
  [loadingView alpha];
  if (v4 != 1.0)
  {
    [loadingView setAlpha:1.0];
    [(MFMessageContentView *)self _addLoadingSubview:loadingView];
    loadingIndicatorCancelable = [(MFMessageContentView *)self loadingIndicatorCancelable];
    [loadingIndicatorCancelable cancel];

    objc_initWeak(&location, self);
    mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __54__MFMessageContentView__showDelayedProgressUIIfNeeded__block_invoke;
    v11 = &unk_278181470;
    objc_copyWeak(&v12, &location);
    v7 = [mainThreadScheduler afterDelay:&v8 performBlock:0.85];

    [(MFMessageContentView *)self setLoadingIndicatorCancelable:v7, v8, v9, v10, v11];
    [(EFManualCancelationToken *)self->_loadingCancelable addCancelable:v7];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __54__MFMessageContentView__showDelayedProgressUIIfNeeded__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v6 = 138543618;
    v7 = v4;
    v8 = 2048;
    v9 = WeakRetained;
    _os_log_impl(&dword_2149C9000, v2, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: showing delayed progress indicator", &v6, 0x16u);
  }

  [WeakRetained setLoadingIndicatorVisible:1];
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isLoadingIndicatorVisible
{
  loadingView = [(MFMessageContentView *)self loadingView];
  isLoadingIndicatorVisible = [loadingView isLoadingIndicatorVisible];

  return isLoadingIndicatorVisible;
}

- (void)reload
{
  webViewLoadingController = [(MFMessageContentView *)self webViewLoadingController];
  [webViewLoadingController reload];
}

- (UIScrollView)scrollView
{
  webView = [(MFMessageContentView *)self webView];
  scrollView = [webView scrollView];

  return scrollView;
}

- (void)contentRequestDidReceiveContentRepresentation:(id)representation error:(id)error
{
  v41 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  errorCopy = error;
  v8 = _os_activity_create(&dword_2149C9000, "[MFMessageContentView contentRequestDidReceiveContentRepresentation:error:]", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  self->_showingError = 0;
  if (representationCopy)
  {
    relatedContentItems = [representationCopy relatedContentItems];
    [(MessageContentItemsHelper *)self->_relatedItemsHelper setContentItems:relatedContentItems];

    [(MFMessageContentView *)self _requestWebViewLoadWithRepresentation:representationCopy];
    if ([representationCopy hasMoreContent])
    {
      v10 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        contentRequest = [(MFMessageContentView *)self contentRequest];
        message = [contentRequest message];
        ef_publicDescription = [message ef_publicDescription];
        *buf = 138543362;
        v34 = ef_publicDescription;
        _os_log_impl(&dword_2149C9000, v10, OS_LOG_TYPE_DEFAULT, "Add hasMoreContent banner for message: %{public}@", buf, 0xCu);
      }

      -[MFMessageContentView _addHasMoreContentBannerWithRemainingBytes:](self, "_addHasMoreContentBannerWithRemainingBytes:", [representationCopy remainingByteCount]);
    }

    else
    {
      [(MFMessageContentView *)self _clearHasMoreContentBannerAnimated:1];
    }

    [(MFMessageContentView *)self _addBlockedSenderBannerIfNeeded];
    [(MFMessageContentView *)self _addHideMyEmailBannerIfNeeded];
    [(MFMessageContentView *)self _addNotAuthenticatedBannerIfNeeded];
    [(MFMessageContentView *)self _addTimeSensitiveBannerIfNeeded];
    mailDropBannerMetadata = [(MessageContentItemsHelper *)self->_relatedItemsHelper mailDropBannerMetadata];
    if (mailDropBannerMetadata)
    {
      mailDropBanner = self->_mailDropBanner;
      if (!mailDropBanner)
      {
        v17 = objc_alloc_init(MFMailDropBannerView);
        v18 = self->_mailDropBanner;
        self->_mailDropBanner = v17;

        [(MFMailDropBannerView *)self->_mailDropBanner setDelegate:self];
        mailDropBanner = self->_mailDropBanner;
      }

      [(MFMailDropBannerView *)mailDropBanner setMetaData:mailDropBannerMetadata];
      allMailDropsDownloaded = [(MessageContentItemsHelper *)self->_relatedItemsHelper allMailDropsDownloaded];
      v20 = self->_mailDropBanner;
      if (allMailDropsDownloaded)
      {
        v21 = 3;
      }

      else
      {
        v21 = 1;
      }

      [(MFMailDropBannerView *)self->_mailDropBanner setBannerState:v21];
      v22 = self->_mailDropBanner;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __76__MFMessageContentView_contentRequestDidReceiveContentRepresentation_error___block_invoke;
      v30[3] = &unk_278181E08;
      v23 = v22;
      v31 = v23;
      [(MessageContentItemsHelper *)self->_relatedItemsHelper setMaildropProgressHandler:v30];
      [(MFMessageHeaderView *)self->_headerView addHeaderBlock:self->_mailDropBanner animated:0];
    }
  }

  else
  {
    self->_showingError = 1;
    v14 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      contentRequest2 = [(MFMessageContentView *)self contentRequest];
      message2 = [contentRequest2 message];
      ef_publicDescription2 = [errorCopy ef_publicDescription];
      *buf = 138544130;
      v34 = v26;
      v35 = 2048;
      selfCopy = self;
      v37 = 2112;
      v38 = message2;
      v39 = 2114;
      v40 = ef_publicDescription2;
      _os_log_error_impl(&dword_2149C9000, v14, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: Error loading content represenation for message %@ : %{public}@", buf, 0x2Au);
    }

    mailDropBannerMetadata = [(MFMessageContentView *)self webViewLoadingController];
    [mailDropBannerMetadata requestWebViewLoadWithError:errorCopy];
  }

  os_activity_scope_leave(&state);
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __76__MFMessageContentView_contentRequestDidReceiveContentRepresentation_error___block_invoke(uint64_t result, uint64_t a2, double a3)
{
  v3 = result;
  if (a2 == 3)
  {
    [*(result + 32) setBannerState:2];
    v7 = *(v3 + 32);

    return [v7 setDownloadProgress:a3];
  }

  else
  {
    if (a2 == 2)
    {
      v4 = *(result + 32);
      v5 = 1;
    }

    else
    {
      if (a2 != 1)
      {
        return result;
      }

      v4 = *(result + 32);
      v5 = 3;
    }

    return [v4 setBannerState:v5];
  }
}

- (void)_requestWebViewLoadWithRepresentation:(id)representation
{
  v61 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    contentMessage = [representationCopy contentMessage];
    itemID = [contentMessage itemID];
    ef_publicDescription = [representationCopy ef_publicDescription];
    *buf = 138544130;
    v54 = v7;
    v55 = 2048;
    selfCopy = self;
    v57 = 2114;
    v58 = itemID;
    v59 = 2114;
    v60 = ef_publicDescription;
    _os_log_impl(&dword_2149C9000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: Request webView load for message-id: %{public}@, representation: %{public}@", buf, 0x2Au);
  }

  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  v12 = [em_userDefaults BOOLForKey:@"DisableDisplayInfoCache"];

  if (v12)
  {
    skipMessageReformatting = 0;
  }

  else
  {
    skipMessageReformatting = [representationCopy skipMessageReformatting];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithBool:skipMessageReformatting];
  webViewConstants = [(MFMessageContentView *)self webViewConstants];
  [webViewConstants setObject:v14 forKeyedSubscript:@"shouldSkipReformatting"];

  securityInformation = [representationCopy securityInformation];
  [(MFMessageContentView *)self _configureTrustEvaluationsForSignersInSecurityInformation:securityInformation];
  atomManager = [(MFMessageContentView *)self atomManager];
  [atomManager updateWithSecurityInformation:securityInformation];

  contentRequest = [(MFMessageContentView *)self contentRequest];
  message = [contentRequest message];
  senderList = [message senderList];

  replyToList = [representationCopy replyToList];
  if ([MFAddressAtomStatusManager shouldDecorateAtomListForSender:senderList replyTo:replyToList])
  {
    atomManager2 = [(MFMessageContentView *)self atomManager];
    [atomManager2 updateWithReplyToInformation:replyToList];
  }

  if ((*&self->_flags & 0x400) != 0)
  {
    delegate = [(MFMessageContentView *)self delegate];
    [delegate messageContentView:self didLoadSecurityInformation:securityInformation];
  }

  if ([securityInformation hasEncryptedDescendantPart])
  {
    v22 = 2;
  }

  else
  {
    signers = [securityInformation signers];
    v24 = [signers count] == 2;

    if (v24)
    {
      signers2 = [securityInformation signers];
      v26 = [signers2 objectAtIndexedSubscript:0];
      signingCertificateTrustInfo = [v26 signingCertificateTrustInfo];
      sender = [signingCertificateTrustInfo sender];

      signers3 = [securityInformation signers];
      v30 = [signers3 objectAtIndexedSubscript:1];
      signingCertificateTrustInfo2 = [v30 signingCertificateTrustInfo];
      sender2 = [signingCertificateTrustInfo2 sender];

      if ([sender isEqualToString:sender2])
      {

        goto LABEL_20;
      }

      [(MFMessageContentView *)self setMessageBlockingReason:3];

      goto LABEL_13;
    }

    signers4 = [securityInformation signers];
    v34 = [signers4 count] > 2;

    if (!v34)
    {
      goto LABEL_20;
    }

    v22 = 3;
  }

  [(MFMessageContentView *)self setMessageBlockingReason:v22];
LABEL_13:
  if (![(MFMessageContentView *)self allowLoadOfBlockedMessageContent])
  {
    [(MFMessageContentView *)self _loadBlockedMessageContactWarningWithRepresentation:representationCopy];
    goto LABEL_36;
  }

LABEL_20:
  isEncrypted = [securityInformation isEncrypted];
  if ((isEncrypted & [securityInformation isSigned]) != 1)
  {
    if (isEncrypted)
    {
      goto LABEL_22;
    }

LABEL_24:
    em_userDefaults2 = [MEMORY[0x277CBEBD0] em_userDefaults];
    mf_blockRemoteContent = [em_userDefaults2 mf_blockRemoteContent];

    if (mf_blockRemoteContent)
    {
      v38 = 0;
      v39 = 4;
    }

    else
    {
      em_lockdownModeEnabled = [MEMORY[0x277CBEBD0] em_lockdownModeEnabled];
      v38 = em_lockdownModeEnabled ^ 1;
      if (em_lockdownModeEnabled)
      {
        v39 = 5;
      }

      else
      {
        v39 = 0;
      }
    }

    goto LABEL_29;
  }

  smimeError = [securityInformation smimeError];
  v37 = smimeError == 0;

  if (v37)
  {
    goto LABEL_24;
  }

LABEL_22:
  v38 = 0;
  v39 = 1;
LABEL_29:
  signers5 = [securityInformation signers];
  firstObject = [signers5 firstObject];
  signingCertificateTrustInfo3 = [firstObject signingCertificateTrustInfo];
  trustEvaluation = [signingCertificateTrustInfo3 trustEvaluation];
  requiresReevaluationWithNetworkAccess = [trustEvaluation requiresReevaluationWithNetworkAccess];

  if (requiresReevaluationWithNetworkAccess)
  {
    [(MFMessageContentView *)self setBlockedContentTypes:[(MFMessageContentView *)self blockedContentTypes]| 2];
  }

  if ((v38 & 1) != 0 || -[MFMessageContentView allowLoadOfBlockedMessageContent](self, "allowLoadOfBlockedMessageContent") || [representationCopy showRemoteImages])
  {
    v39 = 0;
  }

  [(MFMessageContentView *)self setMessageBlockingReason:v39];
  [(MFMessageContentView *)self _setRemoteContentToLoadWithoutProxy];
  self->_webProcessCrashCount = 0;
  self->_backgroundWebProcessCrashCount = 0;
  lastCrashDate = self->_lastCrashDate;
  self->_lastCrashDate = 0;

  webViewLoadingController = [(MFMessageContentView *)self webViewLoadingController];
  [webViewLoadingController requestWebViewLoadWithContentRepresentation:representationCopy];

  [(MFMessageContentView *)self _performQuickReplyMoveMessageBodyAnimationIfNeeded];
LABEL_36:

  v50 = *MEMORY[0x277D85DE8];
}

- (void)_setRemoteContentToLoadWithoutProxy
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_allRemoteURLs)
  {
    allKeys = [(NSMutableDictionary *)self->_failedProxyURLs allKeys];
    if ([allKeys count])
    {
      v4 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = [allKeys ef_map:&__block_literal_global_1655];
        v8 = [v7 componentsJoinedByString:{@", "}];

        v11 = 138543874;
        v12 = v6;
        v13 = 2048;
        selfCopy = self;
        v15 = 2114;
        v16 = v8;
        _os_log_impl(&dword_2149C9000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: URLs to load without proxy: %{public}@", &v11, 0x20u);
      }
    }

    webViewConstants = [(MFMessageContentView *)self webViewConstants];
    [webViewConstants setObject:allKeys forKeyedSubscript:@"remoteContentToLoadWithoutProxy"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_triggerWebViewLoad
{
  webViewLoadingController = [(MFMessageContentView *)self webViewLoadingController];
  contentRepresentation = [(MFMessageContentView *)self contentRepresentation];
  [webViewLoadingController requestWebViewLoadWithContentRepresentation:contentRepresentation];
}

- (void)_triggerWebViewLoadWithoutShowingContentRepresentation
{
  webViewLoadingController = [(MFMessageContentView *)self webViewLoadingController];
  contentRepresentation = [(MFMessageContentView *)self contentRepresentation];
  [webViewLoadingController requestWebViewLoadWithoutShowingMessageWithRepresentation:contentRepresentation];
}

- (void)_loadBlockedMessageContactWarningWithRepresentation:(id)representation
{
  [(MFMessageContentView *)self setBlockedContentTypes:[(MFMessageContentView *)self blockedContentTypes]| 4];

  [(MFMessageContentView *)self _triggerWebViewLoadWithoutShowingContentRepresentation];
}

- (void)_loadBlockedMessageContactWarning
{
  [(MFMessageContentView *)self setBlockedContentTypes:[(MFMessageContentView *)self blockedContentTypes]| 4];

  [(MFMessageContentView *)self _triggerWebViewLoadWithoutShowingContentRepresentation];
}

- (void)generateSnapshotImageWithCompletion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  headerView = [(MFMessageContentView *)self headerView];
  v4 = objc_alloc(MEMORY[0x277D75A48]);
  [headerView frame];
  v5 = [v4 initWithFrame:?];
  [v5 captureSnapshotOfView:headerView withSnapshotType:0];
  [v5 bounds];
  v36.width = v6;
  v36.height = v7;
  UIGraphicsBeginImageContextWithOptions(v36, 1, 0.0);
  layer = [v5 layer];
  [layer renderInContext:UIGraphicsGetCurrentContext()];

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  webView = [(MFMessageContentView *)self webView];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v13 = v12;
  contentRequest = [(MFMessageContentView *)self contentRequest];
  itemID = [contentRequest itemID];

  v16 = +[MFMessageContentView log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = itemID;
    _os_log_impl(&dword_2149C9000, v16, OS_LOG_TYPE_DEFAULT, "Waiting for a WebKit presentation update for message - itemID=%{public}@", buf, 0xCu);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __60__MFMessageContentView_generateSnapshotImageWithCompletion___block_invoke;
  v25[3] = &unk_278181E80;
  v17 = webView;
  v26 = v17;
  v18 = mainScreen;
  v27 = v18;
  v19 = itemID;
  v28 = v19;
  selfCopy = self;
  v32 = v13;
  v20 = v9;
  v30 = v20;
  v21 = completionCopy;
  v31 = v21;
  [v17 _doAfterNextPresentationUpdate:v25];

  v22 = *MEMORY[0x277D85DE8];
}

void __60__MFMessageContentView_generateSnapshotImageWithCompletion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(a1 + 40) bounds];
  if (v9 > v10 + v10)
  {
    v9 = v10 + v10;
  }

  v11 = +[MFMessageContentView log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 48);
    *buf = 138543362;
    v24 = v12;
    _os_log_impl(&dword_2149C9000, v11, OS_LOG_TYPE_DEFAULT, "ask webkit to take a snapshot - itemID=%{public}@", buf, 0xCu);
  }

  v13 = *(a1 + 32);
  [*(a1 + 56) bounds];
  v14 = *(a1 + 80);
  v16 = v14 * v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__MFMessageContentView_generateSnapshotImageWithCompletion___block_invoke_341;
  v18[3] = &unk_278181E58;
  v22 = v14;
  v19 = *(a1 + 64);
  v20 = *(a1 + 32);
  v21 = *(a1 + 72);
  [v13 _snapshotRect:v18 intoImageOfWidth:v3 completionHandler:{v5, v7, v9, v16}];

  v17 = *MEMORY[0x277D85DE8];
}

void __60__MFMessageContentView_generateSnapshotImageWithCompletion___block_invoke_341(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D755B8] imageWithCGImage:a2 scale:0 orientation:*(a1 + 56)];
  [v3 size];
  v5 = v4;
  v7 = v6;
  [*(a1 + 32) size];
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 40) scrollView];
  [v12 contentSize];
  v14 = v13;
  v16 = v15;

  v17 = objc_alloc(MEMORY[0x277D75560]);
  v18 = v11 + v16;
  if (v11 + v16 <= v7)
  {
    v19 = v14;
  }

  else
  {
    v19 = v5;
  }

  if (v11 + v16 > v7)
  {
    v18 = v7;
  }

  v20 = [v17 initWithSize:{v19, v18}];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __60__MFMessageContentView_generateSnapshotImageWithCompletion___block_invoke_2;
  v25[3] = &unk_278181E30;
  v21 = v3;
  v26 = v21;
  v28 = v5;
  v29 = v7;
  v27 = *(a1 + 32);
  v30 = v9;
  v31 = v11;
  v22 = [v20 imageWithActions:v25];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v22, v23, v24);
}

uint64_t __60__MFMessageContentView_generateSnapshotImageWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) drawInRect:{0.0, 0.0, *(a1 + 48), *(a1 + 56)}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);

  return [v2 drawInRect:{0.0, 0.0, v3, v4}];
}

- (void)_foundImageCIDAttachments:(id)attachments
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = attachments;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:@"elementID"];
        v9 = [v7 objectForKeyedSubscript:@"contentID"];
        [(MessageContentItemsHelper *)self->_relatedItemsHelper associateElementID:v8 withContentID:v9];
        webView = [(MFMessageContentView *)self webView];
        v11 = [v7 objectForKeyedSubscript:@"wkIdentifier"];
        v12 = [webView _attachmentForIdentifier:v11];

        [(MFMessageContentView *)self _updateFileWrapperForAttachment:v12 contentID:v9];
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_displayDismissibleAttachmentErrorWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__MFMessageContentView__displayDismissibleAttachmentErrorWithTitle_message___block_invoke;
  v11[3] = &unk_278181670;
  v8 = titleCopy;
  v12 = v8;
  v9 = messageCopy;
  v13 = v9;
  selfCopy = self;
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  [mainThreadScheduler performBlock:v11];
}

void __76__MFMessageContentView__displayDismissibleAttachmentErrorWithTitle_message___block_invoke(void *a1)
{
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:a1[4] message:a1[5] preferredStyle:1];
  v2 = MEMORY[0x277D750F8];
  v3 = a1[6];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"OK" value:&stru_2826D1AD8 table:@"Main"];
  v6 = [v2 actionWithTitle:v5 style:0 handler:0];
  [v9 addAction:v6];

  WeakRetained = objc_loadWeakRetained((a1[6] + 680));
  v8 = [WeakRetained presentingViewControllerForMessageContentView:a1[6]];
  [v8 presentViewController:v9 animated:1 completion:0];
}

- (void)_alertMailDropDownloadIsTooLargeForCell:(BOOL)cell
{
  if (cell)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v4 localizedStringForKey:@"MULTI_MAILDROP_ATTACHMENT_LARGE_TITLE" value:&stru_2826D1AD8 table:@"Main"];

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [CPGetDeviceRegionCode() isEqualToString:@"CH"];
    v7 = v6;
    v8 = @"MULTI_MAILDROP_ATTACHMENT_LARGE_MESSAGE";
    if (v6)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_CH", @"MULTI_MAILDROP_ATTACHMENT_LARGE_MESSAGE"];
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v9 localizedStringForKey:@"SINGLE_MAILDROP_ATTACHMENT_LARGE_TITLE" value:&stru_2826D1AD8 table:@"Main"];

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [CPGetDeviceRegionCode() isEqualToString:@"CH"];
    v7 = v10;
    v8 = @"SINGLE_MAILDROP_ATTACHMENT_LARGE_MESSAGE";
    if (v10)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_CH", @"SINGLE_MAILDROP_ATTACHMENT_LARGE_MESSAGE"];
    }
  }

  v11 = [v5 localizedStringForKey:v8 value:&stru_2826D1AD8 table:@"Main"];
  if (v7)
  {
  }

  [(MFMessageContentView *)self _displayDismissibleAttachmentErrorWithTitle:v12 message:v11];
}

- (void)_handleAttachmentTapMessage:(id)message
{
  messageCopy = message;
  v4 = [messageCopy objectForKeyedSubscript:@"element_id"];
  v5 = [messageCopy objectForKeyedSubscript:@"rect"];
  MUICGRectFromNSDictionary();
  [(MFMessageContentView *)self _adjustedRectForWebRect:?];
  [(MessageContentItemsHelper *)self->_relatedItemsHelper attachmentWasTappedWithElementID:v4 rect:self view:?];
}

- (void)_handleAttachmentSaveMessage:(id)message
{
  messageCopy = message;
  contentItemForSaveMenu = [(MFMessageContentView *)self contentItemForSaveMenu];

  if (!contentItemForSaveMenu)
  {
    v5 = [messageCopy objectForKeyedSubscript:@"element_id"];
    v6 = [(MFMessageContentView *)self _contentItemForElement:v5];
    if (v6)
    {
      if ([(MFMessageContentView *)self sourceIsManaged])
      {
        [(MFMessageContentView *)self _saveContentItemToPicker:v6];
      }

      else
      {
        v7 = [messageCopy objectForKeyedSubscript:@"rect"];
        MUICGRectFromNSDictionary();
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        [(MFMessageContentView *)self setContentItemForSaveMenu:v6];
        [(MFMessageContentView *)self _adjustedRectForWebRect:v9, v11, v13, v15];
        [(MFMessageContentView *)self setContentItemRectForSaveMenu:?];
        v16 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:self];
        webView = [(MFMessageContentView *)self webView];
        [webView addInteraction:v16];

        [v16 _presentMenuAtLocation:{v9, v11}];
      }
    }
  }
}

- (CGRect)_adjustedRectForWebRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  webView = [(MFMessageContentView *)self webView];
  scrollView = [webView scrollView];
  [scrollView zoomScale];
  v11 = v10;

  *&v12 = -1;
  *(&v12 + 1) = -1;
  *&v34.c = v12;
  *&v34.tx = v12;
  *&v34.a = v12;
  CGAffineTransformMakeScale(&v34, v11, v11);
  v33 = v34;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v36 = CGRectApplyAffineTransform(v35, &v33);
  v13 = v36.origin.x;
  v14 = v36.origin.y;
  v15 = v36.size.width;
  v16 = v36.size.height;
  webView2 = [(MFMessageContentView *)self webView];
  scrollView2 = [webView2 scrollView];
  [scrollView2 contentOffset];
  v20 = v19;
  webView3 = [(MFMessageContentView *)self webView];
  scrollView3 = [webView3 scrollView];
  [scrollView3 contentOffset];
  v24 = -v23;
  v37.origin.x = v13;
  v37.origin.y = v14;
  v37.size.width = v15;
  v37.size.height = v16;
  v38 = CGRectOffset(v37, -v20, v24);
  v25 = v38.origin.x;
  v26 = v38.origin.y;
  v27 = v38.size.width;
  v28 = v38.size.height;

  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)_expandQuoteWithCollapsedBlockquoteOffset:(double)offset expandedOffset:(double)expandedOffset
{
  if ((*&self->_flags & 0x10) != 0)
  {
    [(MFMessageHeaderView *)self->_headerView frame];
    v7 = offset - CGRectGetHeight(v11);
    [(MFMessageHeaderView *)self->_headerView frame];
    v8 = expandedOffset - CGRectGetHeight(v12);
    delegate = [(MFMessageContentView *)self delegate];
    [delegate messageContentView:self expandQuoteAtCollapsedOffset:0.0 expandedOffset:{v7, 0.0, v8}];
  }
}

- (void)_seeMoreButtonTapped
{
  if ((*&self->_flags & 0x10) != 0)
  {
    delegate = [(MFMessageContentView *)self delegate];
    [delegate messageContentView:self expandQuoteAtCollapsedOffset:*MEMORY[0x277CBF348] expandedOffset:{*(MEMORY[0x277CBF348] + 8), *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }
}

- (void)_revealActionsButtonTapped
{
  if ((*&self->_flags & 0x80) != 0)
  {
    delegate = [(MFMessageContentView *)self delegate];
    revealActionsButton = [(MFConversationItemFooterView *)self->_footerView revealActionsButton];
    [delegate messageContentView:self didTapRevealActionsButton:revealActionsButton];
  }
}

- (void)_undoSendButtonTapped
{
  if ((*&self->_flags & 0x100) != 0)
  {
    delegate = [(MFMessageContentView *)self delegate];
    undoSendButton = [(MFConversationItemFooterView *)self->_footerView undoSendButton];
    [delegate messageContentView:self didTapUndoSendButton:undoSendButton];
  }
}

- (void)webProcessDidFailLoadingResourceWithURL:(id)l
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = MEMORY[0x277D07198];
    absoluteString = [lCopy absoluteString];
    v11 = [v9 fullyRedactedStringForString:absoluteString];
    contentRequest = [(MFMessageContentView *)self contentRequest];
    contentRequest2 = [(MFMessageContentView *)self contentRequest];
    message = [contentRequest2 message];
    v15 = 138544386;
    v16 = v8;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = contentRequest;
    v23 = 2114;
    v24 = message;
    _os_log_error_impl(&dword_2149C9000, v5, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Web process did fail to load resource URL: %{public}@ for content request: %{public}@, message: %{public}@", &v15, 0x34u);
  }

  [(MessageContentItemsHelper *)self->_relatedItemsHelper noteDidFailLoadingResourceWithURL:lCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)webProcessDidFinishDocumentLoadForURL:(id)l andRequestedRemoteURLs:(id)ls
{
  lsCopy = ls;
  lCopy = l;
  v8 = _os_activity_create(&dword_2149C9000, "[MFMessageContentView webProcessDidFinishDocumentLoadForURL:andRequestedRemoteURLs:]", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  [(MessageContentItemsHelper *)self->_relatedItemsHelper noteDidFinishDocumentLoadForURL:lCopy];

  delegate = [(MFMessageContentView *)self delegate];
  v10 = delegate;
  if (*&self->_flags)
  {
    [delegate messageContentViewDidFinishLoadingMessage:self];
  }

  [(MFMessageContentView *)self _beginObservingContentHeight];
  if ([*MEMORY[0x277D76620] launchedToTest])
  {
    [v10 messageContentViewContentLayerFinished:self];
  }

  v11 = [lsCopy ef_mapSelector:sel_absoluteString];
  v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v11];
  allRemoteURLs = self->_allRemoteURLs;
  self->_allRemoteURLs = v12;

  failedProxyURLs = self->_failedProxyURLs;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__MFMessageContentView_webProcessDidFinishDocumentLoadForURL_andRequestedRemoteURLs___block_invoke;
  v15[3] = &unk_278181EA8;
  v15[4] = self;
  [(NSMutableDictionary *)failedProxyURLs ef_removeObjectsPassingTest:v15];
  [(MFMessageContentView *)self _showLoadFailedProxyContentBannerIfNeeded];
  [v10 messageContentView:self viewedRemoteURLs:lsCopy];

  os_activity_scope_leave(&state);
}

- (void)webProcessDidFinishLoadForURL:(id)l
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    contentRequest = [(MFMessageContentView *)self contentRequest];
    ef_publicDescription = [contentRequest ef_publicDescription];
    contentRequest2 = [(MFMessageContentView *)self contentRequest];
    message = [contentRequest2 message];
    ef_publicDescription2 = [message ef_publicDescription];
    v17 = 138544130;
    v18 = v6;
    v19 = 2048;
    selfCopy = self;
    v21 = 2114;
    v22 = ef_publicDescription;
    v23 = 2114;
    v24 = ef_publicDescription2;
    _os_log_impl(&dword_2149C9000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Web process did finish load for content request: %{public}@ message: %{public}@", &v17, 0x2Au);
  }

  webView = [(MFMessageContentView *)self webView];
  _dataDetectionResults = [webView _dataDetectionResults];

  globalAsyncScheduler = [MEMORY[0x277D071B8] globalAsyncScheduler];
  v15 = [(MFMessageContentView *)self ef_onScheduler:globalAsyncScheduler];
  [v15 _processDataDetectionMetricsFromResults:_dataDetectionResults];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)webProcessDidBlockLoadingResourceWithURL:(id)l
{
  v21 = *MEMORY[0x277D85DE8];
  [(MFMessageContentView *)self setBlockedContentTypes:[(MFMessageContentView *)self blockedContentTypes]| 1];
  v4 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    contentRequest = [(MFMessageContentView *)self contentRequest];
    ef_publicDescription = [contentRequest ef_publicDescription];
    contentRequest2 = [(MFMessageContentView *)self contentRequest];
    message = [contentRequest2 message];
    ef_publicDescription2 = [message ef_publicDescription];
    v13 = 138544130;
    v14 = v6;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = ef_publicDescription;
    v19 = 2114;
    v20 = ef_publicDescription2;
    _os_log_impl(&dword_2149C9000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Web process did block loading resource for content request: %{public}@ message: %{public}@", &v13, 0x2Au);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)webProcessFailedToLoadResourceWithProxyForURL:(id)l failureReason:(int64_t)reason
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    contentRequest = [(MFMessageContentView *)self contentRequest];
    ef_publicDescription = [contentRequest ef_publicDescription];
    contentRequest2 = [(MFMessageContentView *)self contentRequest];
    message = [contentRequest2 message];
    ef_publicDescription2 = [message ef_publicDescription];
    v19 = 138544130;
    v20 = v13;
    v21 = 2048;
    selfCopy = self;
    v23 = 2114;
    v24 = ef_publicDescription;
    v25 = 2114;
    v26 = ef_publicDescription2;
    _os_log_error_impl(&dword_2149C9000, v7, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Web process did fail to load content request: %{public}@ message: %{public}@", &v19, 0x2Au);
  }

  absoluteString = [lCopy absoluteString];
  allRemoteURLs = self->_allRemoteURLs;
  if (!allRemoteURLs || [(NSSet *)allRemoteURLs containsObject:absoluteString])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:reason];
    [(NSMutableDictionary *)self->_failedProxyURLs setObject:v10 forKeyedSubscript:absoluteString];
  }

  [(MFMessageContentView *)self _showLoadFailedProxyContentBannerIfNeeded];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_showLoadFailedProxyContentBannerIfNeeded
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(MFMessageContentView *)self showsBanners]&& self->_allRemoteURLs && [(NSMutableDictionary *)self->_failedProxyURLs count]&& !self->_loadFailedProxyContentBanner)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 2;
    failedProxyURLs = self->_failedProxyURLs;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__MFMessageContentView__showLoadFailedProxyContentBannerIfNeeded__block_invoke;
    v16[3] = &unk_278181ED0;
    v16[4] = &v17;
    [(NSMutableDictionary *)failedProxyURLs enumerateKeysAndObjectsUsingBlock:v16];
    if (v18[3] != 2 || ([MEMORY[0x277CBEBD0] em_userDefaults], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLForKey:", *MEMORY[0x277D06CC0]), v4, (v5 & 1) == 0))
    {
      v6 = [MFLoadFailedProxyContentBannerView alloc];
      v7 = [(MFLoadFailedProxyContentBannerView *)v6 initWithFrame:v18[3] failureReason:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      loadFailedProxyContentBanner = self->_loadFailedProxyContentBanner;
      self->_loadFailedProxyContentBanner = v7;

      [(MFLoadFailedProxyContentBannerView *)self->_loadFailedProxyContentBanner setDelegate:self];
      [(MFMessageHeaderView *)self->_headerView insertHeaderBlock:self->_loadFailedProxyContentBanner atIndex:0 animated:1];
      v9 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        allKeys = [(NSMutableDictionary *)self->_failedProxyURLs allKeys];
        v13 = [allKeys ef_map:&__block_literal_global_1655];
        v14 = [v13 componentsJoinedByString:{@", "}];

        *buf = 138543874;
        v22 = v11;
        v23 = 2048;
        selfCopy = self;
        v25 = 2114;
        v26 = v14;
        _os_log_impl(&dword_2149C9000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: Displaying failed proxy load banner due to: %{public}@", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v17, 8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __65__MFMessageContentView__showLoadFailedProxyContentBannerIfNeeded__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v6 = [v9 integerValue];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 24);
  if (v6 < v8)
  {
    *(v7 + 24) = v6;
    v8 = *(*(*(a1 + 32) + 8) + 24);
  }

  if (!v8)
  {
    *a4 = 1;
  }
}

- (void)setBlockedContentTypes:(unint64_t)types
{
  if (self->_blockedContentTypes != types)
  {
    self->_blockedContentTypes = types;
    if ([(MFMessageContentView *)self showsBanners])
    {
      if (self->_blockedContentTypes)
      {
        loadImagesHeaderBlock = self->_loadImagesHeaderBlock;
        if (loadImagesHeaderBlock)
        {

          [(MFLoadBlockedContentBannerView *)loadImagesHeaderBlock setBlockedContentTypes:?];
        }

        else
        {
          v5 = [MFLoadBlockedContentBannerView alloc];
          blockedContentTypes = self->_blockedContentTypes;
          messageBlockingReason = [(MFMessageContentView *)self messageBlockingReason];
          v8 = [(MFLoadBlockedContentBannerView *)v5 initWithFrame:blockedContentTypes blockedContentTypes:messageBlockingReason blockingReason:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
          v9 = self->_loadImagesHeaderBlock;
          self->_loadImagesHeaderBlock = v8;

          [(MFLoadBlockedContentBannerView *)self->_loadImagesHeaderBlock setDelegate:self];
          headerView = self->_headerView;
          v11 = self->_loadImagesHeaderBlock;

          [(MFMessageHeaderView *)headerView insertHeaderBlock:v11 atIndex:0 animated:1];
        }
      }

      else
      {

        [(MFMessageContentView *)self _clearLoadRemoteImagesBannerAnimated:1];
      }
    }
  }
}

- (void)_configureTrustEvaluationsForSignersInSecurityInformation:(id)information
{
  informationCopy = information;
  signers = [informationCopy signers];
  firstObject = [signers firstObject];

  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  mf_blockRemoteContent = [em_userDefaults mf_blockRemoteContent];

  trustConfigurationScheduler = [(MFMessageContentView *)self trustConfigurationScheduler];
  if (mf_blockRemoteContent)
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__MFMessageContentView__configureTrustEvaluationsForSignersInSecurityInformation___block_invoke;
  v13[3] = &unk_2781819D0;
  v11 = firstObject;
  v17 = v10;
  v14 = v11;
  selfCopy = self;
  v12 = informationCopy;
  v16 = v12;
  [trustConfigurationScheduler performBlock:v13];
}

void __82__MFMessageContentView__configureTrustEvaluationsForSignersInSecurityInformation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) evaluateTrustsWithOptions:*(a1 + 56)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__MFMessageContentView__configureTrustEvaluationsForSignersInSecurityInformation___block_invoke_2;
  v4[3] = &unk_278181710;
  v2 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = v2;
  v3 = [MEMORY[0x277D071B8] mainThreadScheduler];
  [v3 performBlock:v4];
}

void __82__MFMessageContentView__configureTrustEvaluationsForSignersInSecurityInformation___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) atomManager];
  [v2 updateWithSecurityInformation:*(a1 + 40)];
}

- (void)webProcessDidCreateBrowserContextControllerLoadDelegate
{
  webViewLoadingController = [(MFMessageContentView *)self webViewLoadingController];
  [webViewLoadingController webProcessBrowserContextControllerDidBecomeAvailable];
}

- (void)_processDataDetectionMetricsFromResults:(id)results
{
  resultsCopy = results;
  date = [MEMORY[0x277CBEAA8] date];
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __64__MFMessageContentView__processDataDetectionMetricsFromResults___block_invoke;
  v13 = &unk_278181EF8;
  v6 = date;
  v14 = v6;
  v7 = defaultTimeZone;
  v15 = v7;
  v8 = [resultsCopy ef_countObjectsPassingTest:&v10];
  if (v8 >= 5)
  {
    v9 = 5;
  }

  else
  {
    v9 = v8;
  }

  if (v8)
  {
    do
    {
      [MEMORY[0x277D02060] shownViaDataDetectorsLinkInApp:{3, v10, v11, v12, v13, v14}];
      --v9;
    }

    while (v9);
  }
}

BOOL __64__MFMessageContentView__processDataDetectionMetricsFromResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 coreResult];
  if (DDResultGetCategory() == 4 && ([v3 coreResult], DDResultHasProperties()))
  {
    [v3 coreResult];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = DDResultIsPastDate() == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_webView:(id)view decidePolicyForFocusedElement:(id)element
{
  if ([element isUserInitiated])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

+ (id)_urlSchemesToOpenWithoutPrompting
{
  if (_urlSchemesToOpenWithoutPrompting_onceToken != -1)
  {
    +[MFMessageContentView _urlSchemesToOpenWithoutPrompting];
  }

  v3 = _urlSchemesToOpenWithoutPrompting_allowedURLSchemes;

  return v3;
}

void __57__MFMessageContentView__urlSchemesToOpenWithoutPrompting__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_2826DCA58];
  v1 = _urlSchemesToOpenWithoutPrompting_allowedURLSchemes;
  _urlSchemesToOpenWithoutPrompting_allowedURLSchemes = v0;
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v79[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  actionCopy = action;
  handlerCopy = handler;
  request = [actionCopy request];
  v11 = [request URL];

  scheme = [v11 scheme];
  lowercaseString = [scheme lowercaseString];

  contentRepresentationIfAvailable = [(MFMessageContentView *)self contentRepresentationIfAvailable];
  contentURL = [contentRepresentationIfAvailable contentURL];

  scheme2 = [contentURL scheme];
  if ([lowercaseString isEqualToString:scheme2])
  {
    path = [v11 path];
    path2 = [contentURL path];
    v19 = [path hasPrefix:path2];
  }

  else
  {
    v19 = 0;
  }

  targetFrame = [actionCopy targetFrame];
  isMainFrame = [targetFrame isMainFrame];

  v22 = [&unk_2826DCA70 containsObject:lowercaseString];
  if (v19)
  {
    fragment = [v11 fragment];
    if (fragment)
    {
      webView = [(MFMessageContentView *)self webView];
      v79[0] = fragment;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:1];
      v26 = [webView mcv_dictionaryFromJavaScriptMethod:@"rectForAnchor" arguments:v25];

      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __80__MFMessageContentView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
      v72[3] = &unk_278181F20;
      v72[4] = self;
      [v26 addSuccessBlock:v72];
    }

    else if ([actionCopy navigationType] == -1 || objc_msgSend(actionCopy, "navigationType") == 3)
    {
      v27 = 1;
      goto LABEL_16;
    }

    v27 = 0;
LABEL_16:
    [(NSMutableSet *)self->_inFlightURLs removeAllObjects];
    handlerCopy[2](handlerCopy, v27);

    goto LABEL_17;
  }

  v28 = v22;
  if (![(NSMutableSet *)self->_inFlightURLs containsObject:v11])
  {
    if (v28)
    {
      handlerCopy[2](handlerCopy, 0);
      if (!isMainFrame)
      {
        goto LABEL_17;
      }

      mEMORY[0x277D04328] = [MEMORY[0x277D04328] sharedController];
      _dataDetectionResults = [viewCopy _dataDetectionResults];
      v31 = [(MFMessageContentView *)self _dataDetectionContextForWebView:viewCopy];
      v32 = [mEMORY[0x277D04328] defaultActionForURL:v11 results:_dataDetectionResults context:v31];

      [mEMORY[0x277D04328] performAction:v32 inView:viewCopy interactionDelegate:0];
LABEL_22:

      goto LABEL_17;
    }

    if (isMainFrame && [v11 isFaceTimeMultiwayURL])
    {
      handlerCopy[2](handlerCopy, 0);
      v34 = [objc_alloc(MEMORY[0x277D6EEF0]) initWithURL:v11];
      mEMORY[0x277D04328] = v34;
      if (v34)
      {
        [v34 setWantsStagingArea:1];
        mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
        [mEMORY[0x277D6EDF8] launchAppForJoinRequest:mEMORY[0x277D04328]];
      }

      goto LABEL_22;
    }

    v36 = handlerCopy[2];
    if (self->_showingError)
    {
      v36(handlerCopy, 1);
      goto LABEL_17;
    }

    v36(handlerCopy, 0);
    delegate = [(MFMessageContentView *)self delegate];
    contentRepresentationIfAvailable2 = [(MFMessageContentView *)self contentRepresentationIfAvailable];

    if (contentRepresentationIfAvailable2)
    {
      contentRequest = [(MFMessageContentView *)self contentRequest];
      message = [contentRequest message];
      [delegate messageContentView:self clickedLinkInMessage:message scheme:lowercaseString];
    }

    if ([lowercaseString isEqualToString:@"file"])
    {
      path3 = [v11 path];
      v42 = [path3 containsString:@"Library/Mail"];

      if (v42)
      {
        v43 = EMLogCategoryMessageLoading();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          v44 = objc_opt_class();
          NSStringFromClass(v44);
          objc_claimAutoreleasedReturnValue();
          [MFMessageContentView webView:decidePolicyForNavigationAction:decisionHandler:];
        }
      }

      else
      {
        v43 = EMLogCategoryMessageLoading();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v61 = objc_opt_class();
          NSStringFromClass(v61);
          objc_claimAutoreleasedReturnValue();
          [MFMessageContentView webView:decidePolicyForNavigationAction:decisionHandler:];
        }
      }

LABEL_43:

LABEL_53:
      goto LABEL_17;
    }

    if ([lowercaseString isEqualToString:@"prefs"])
    {
      v43 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v45 = objc_opt_class();
        NSStringFromClass(v45);
        objc_claimAutoreleasedReturnValue();
        [MFMessageContentView webView:decidePolicyForNavigationAction:decisionHandler:];
      }

      goto LABEL_43;
    }

    targetFrame2 = [actionCopy targetFrame];
    v47 = (targetFrame2 == 0) | isMainFrame;

    if ((v47 & 1) == 0)
    {
      v62 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        *buf = 138543874;
        v74 = v66;
        v75 = 2048;
        selfCopy = self;
        v77 = 2112;
        v78 = v11;
        _os_log_error_impl(&dword_2149C9000, v62, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: Blocking navigation action for request whose target frame is not the main frame (iframe, probably): %@", buf, 0x20u);
      }

      goto LABEL_53;
    }

    if ([lowercaseString isEqualToString:*MEMORY[0x277D06BE0]])
    {
      contentRequest2 = [(MFMessageContentView *)self contentRequest];
      resultIfAvailable = [contentRequest2 resultIfAvailable];
      requestedHeaders = [resultIfAvailable requestedHeaders];
      v51 = [requestedHeaders headersForKey:*MEMORY[0x277D06FA8]];

      v52 = [MEMORY[0x277CCACE0] componentsWithURL:v11 resolvingAgainstBaseURL:1];
      if ([v51 count])
      {
        v68 = v52;
        v69 = v51;
        firstObject = [v51 firstObject];
        v70 = [MEMORY[0x277D070E0] tagValueListFromString:firstObject error:0];
        v53 = objc_alloc(MEMORY[0x277CBEB18]);
        queryItems = [v52 queryItems];
        v55 = [v53 initWithArray:queryItems copyItems:1];

        v56 = objc_alloc(MEMORY[0x277CCAD18]);
        em_mailToFromQueryItemKey = [MEMORY[0x277CBEBC0] em_mailToFromQueryItemKey];
        v58 = [v70 objectForKeyedSubscript:*MEMORY[0x277D06BD0]];
        v59 = [v56 initWithName:em_mailToFromQueryItemKey value:v58];

        v52 = v68;
        [v55 addObject:v59];
        [v68 setQueryItems:v55];

        v51 = v69;
      }

      v60 = [v52 URL];

      v11 = v60;
      goto LABEL_53;
    }

    v63 = +[MFMessageContentView _urlSchemesToOpenWithoutPrompting];
    if ([v63 containsObject:lowercaseString])
    {
    }

    else
    {
      v64 = [(MFMessageContentView *)self _getAppDisplayName:v11];

      if (v64)
      {
        [(MFMessageContentView *)self _showAlertWithApplicationName:v64 requestURL:v11];
LABEL_52:

        goto LABEL_53;
      }
    }

    v64 = 0;
    [delegate messageContentView:self openPossibleStoreURL:v11];
    goto LABEL_52;
  }

  handlerCopy[2](handlerCopy, 0);
  [(NSMutableSet *)self->_inFlightURLs removeObject:v11];
LABEL_17:

  v33 = *MEMORY[0x277D85DE8];
}

void __80__MFMessageContentView_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v14 = v3;
    MUICGRectFromNSDictionary();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [*(a1 + 32) delegate];
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    if (!CGRectEqualToRect(v16, *MEMORY[0x277CBF3A0]) && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v13 = *(a1 + 32);
      [v13 _adjustedRectForWebRect:{v5, v7, v9, v11}];
      [v12 messageContentView:v13 scrollToRect:?];
    }

    v3 = v14;
  }
}

- (id)_getAppDisplayName:(id)name
{
  nameCopy = name;
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v5 = [defaultWorkspace applicationsAvailableForOpeningURL:nameCopy];
  firstObject = [v5 firstObject];
  v7 = firstObject;
  if (firstObject)
  {
    localizedName = [firstObject localizedName];
    if (!localizedName)
    {
      localizedName = [v7 bundleIdentifier];
    }
  }

  else
  {
    localizedName = 0;
  }

  return localizedName;
}

- (void)_showAlertWithApplicationName:(id)name requestURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OPEN_IN_%@" value:&stru_2826D1AD8 table:@"Main"];
  nameCopy = [v8 localizedStringWithFormat:v10, nameCopy];

  v12 = [MEMORY[0x277D75110] alertControllerWithTitle:nameCopy message:0 preferredStyle:1];
  v13 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_2826D1AD8 table:@"Main"];
  v16 = [v13 actionWithTitle:v15 style:1 handler:0];
  [v12 addAction:v16];

  objc_initWeak(&location, self);
  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"OPEN" value:&stru_2826D1AD8 table:@"Main"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __65__MFMessageContentView__showAlertWithApplicationName_requestURL___block_invoke;
  v24[3] = &unk_278181F48;
  objc_copyWeak(&v26, &location);
  v20 = lCopy;
  v25 = v20;
  v21 = [v17 actionWithTitle:v19 style:0 handler:v24];
  [v12 addAction:v21];

  delegate = [(MFMessageContentView *)self delegate];
  v23 = [delegate presentingViewControllerForMessageContentView:self];
  [v23 presentViewController:v12 animated:1 completion:0];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __65__MFMessageContentView__showAlertWithApplicationName_requestURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 messageContentView:WeakRetained openPossibleStoreURL:*(a1 + 32)];
}

- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change
{
  changeCopy = change;
  v41 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if ((changeCopy & 0x40) != 0)
  {
    [(MFMessageContentView *)self initialContentOffset];
    if (v7 > 0.0 || ([(MFMessageContentView *)self initialContentOffset], v8 > 0.0))
    {
      scrollView = [(MFMessageContentView *)self scrollView];
      [(MFMessageContentView *)self initialContentOffset];
      [scrollView setContentOffset:?];
    }

    self->_suppressContentSizeNotificationsUntilFirstPaint = 0;
    if ((*&self->_flags & 2) != 0)
    {
      delegate = [(MFMessageContentView *)self delegate];
      [delegate messageContentViewDidFinishFirstPaint:self];

      scrollView2 = [viewCopy scrollView];
      [scrollView2 contentSize];
      [(MFMessageContentView *)self _notifyDelegateScrollViewSizeChanged:?];

      scrollView3 = [(MFMessageContentView *)self scrollView];
      [scrollView3 contentOffset];
      v14 = v13;
      scrollView4 = [(MFMessageContentView *)self scrollView];
      [scrollView4 contentInset];
      v17 = v16;
      scrollView5 = [viewCopy scrollView];
      [scrollView5 setContentOffset:{v14, -v17}];

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __60__MFMessageContentView__webView_renderingProgressDidChange___block_invoke;
      v36[3] = &unk_2781816C0;
      v36[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v36 animations:0.2];
    }

    v19 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138543618;
      v38 = v21;
      v39 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_2149C9000, v19, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: rendering progress did first paint, removing loading indicator", buf, 0x16u);
    }

    [(MFMessageContentView *)self setLoadingIndicatorVisible:0];
    [(MFMessageContentView *)self _performQuickReplySnapshotFadeOutAnimationIfNecessary];
    if ([(MFMessageContentView *)self initiallyZoomsToShowAllContent])
    {
      scrollView6 = [(MFMessageContentView *)self scrollView];
      [scrollView6 minimumZoomScale];
      v24 = v23;
      scrollView7 = [(MFMessageContentView *)self scrollView];
      [scrollView7 setZoomScale:v24];
    }

    previousContentSnapshot = [(MFMessageContentView *)self previousContentSnapshot];
    v27 = previousContentSnapshot == 0;

    if (!v27)
    {
      v28 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138543618;
        v38 = v30;
        v39 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_2149C9000, v28, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: removing previous content snapshot", buf, 0x16u);
      }

      v34[4] = self;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __60__MFMessageContentView__webView_renderingProgressDidChange___block_invoke_514;
      v35[3] = &unk_2781816C0;
      v35[4] = self;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __60__MFMessageContentView__webView_renderingProgressDidChange___block_invoke_2;
      v34[3] = &unk_278181F70;
      [MEMORY[0x277D75D18] animateWithDuration:v35 animations:v34 completion:0.100000001];
    }

    contentRepresentationIfAvailable = [(MFMessageContentView *)self contentRepresentationIfAvailable];
    v32 = contentRepresentationIfAvailable != 0;

    [(MFMessageContentView *)self _logRequestFinishWithSuccess:v32];
    [(MFMessageContentView *)self setHasVisibleContent:1];
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __60__MFMessageContentView__webView_renderingProgressDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) footerView];
  [v1 setAlpha:1.0];
}

- (void)setHasVisibleContent:(BOOL)content
{
  if (self->_hasVisibleContent != content)
  {
    self->_hasVisibleContent = content;
    if (content && (*&self->_flags & 4) != 0)
    {
      delegate = [(MFMessageContentView *)self delegate];
      contentRepresentationIfAvailable = [(MFMessageContentView *)self contentRepresentationIfAvailable];
      [delegate messageContentViewDidDisplayContent:self success:contentRepresentationIfAvailable != 0];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:MFMessageContentViewDidAppear object:self];
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    ef_publicDescription = [errorCopy ef_publicDescription];
    v12 = 138543874;
    v13 = v10;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = ef_publicDescription;
    _os_log_error_impl(&dword_2149C9000, v7, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: Message Content View did fail navigation: %{public}@", &v12, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_webViewWebProcessDidBecomeUnresponsive:(id)unresponsive
{
  v22 = *MEMORY[0x277D85DE8];
  unresponsiveCopy = unresponsive;
  v6 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v12 = 138544386;
    v13 = v10;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = v11;
    v18 = 2112;
    v19 = unresponsiveCopy;
    v20 = 1024;
    _webProcessIdentifier = [unresponsiveCopy _webProcessIdentifier];
    _os_log_error_impl(&dword_2149C9000, v6, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: %{public}@ %@ (pid: %d)", &v12, 0x30u);
  }

  webView = [(MFMessageContentView *)self webView];
  [webView _killWebContentProcess];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_webView:(id)view webContentProcessDidTerminateWithReason:(int64_t)reason
{
  v58 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if ([(MFMessageContentView *)self _lastCrashDateExceedsThreshhold])
  {
    v8 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      webProcessCrashCount = self->_webProcessCrashCount;
      backgroundWebProcessCrashCount = self->_backgroundWebProcessCrashCount;
      *buf = 138544386;
      v43 = v10;
      v44 = 2048;
      selfCopy3 = self;
      v46 = 2114;
      v47 = v11;
      v48 = 2048;
      v49 = webProcessCrashCount;
      v50 = 2048;
      *v51 = backgroundWebProcessCrashCount;
      _os_log_impl(&dword_2149C9000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: %{public}@ resetting crash count: %ld and background crash count: %ld to 0 due to exceeded time threshold", buf, 0x34u);
    }

    self->_webProcessCrashCount = 0;
    self->_backgroundWebProcessCrashCount = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__MFMessageContentView__webView_webContentProcessDidTerminateWithReason___block_invoke;
  aBlock[3] = &unk_278181B90;
  aBlock[4] = self;
  aBlock[5] = reason;
  v14 = _Block_copy(aBlock);
  window = [(MFMessageContentView *)self window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];

  if (activationState == 2)
  {
    ++self->_backgroundWebProcessCrashCount;
    v18 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      _webProcessIdentifier = [viewCopy _webProcessIdentifier];
      v29 = self->_backgroundWebProcessCrashCount;
      *buf = 138544898;
      v43 = v26;
      v44 = 2048;
      selfCopy3 = self;
      v46 = 2114;
      v47 = v27;
      v48 = 2112;
      v49 = viewCopy;
      v50 = 1024;
      *v51 = _webProcessIdentifier;
      *&v51[4] = 2048;
      *&v51[6] = reason;
      v52 = 2048;
      v53 = v29;
      _os_log_error_impl(&dword_2149C9000, v18, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: %{public}@ %@ (pid: %d; reason: %ld; background crash count: %ld)", buf, 0x44u);
    }
  }

  else
  {
    [(NSMutableSet *)self->_inFlightURLs removeAllObjects];
    ++self->_webProcessCrashCount;
    v19 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v35 = NSStringFromClass(v30);
      v34 = NSStringFromSelector(a2);
      _webProcessIdentifier2 = [viewCopy _webProcessIdentifier];
      v32 = self->_webProcessCrashCount;
      lastCrashDate = self->_lastCrashDate;
      *buf = 138545410;
      v43 = v35;
      v44 = 2048;
      selfCopy3 = self;
      v46 = 2114;
      v47 = v34;
      v48 = 2112;
      v49 = viewCopy;
      v50 = 1024;
      *v51 = _webProcessIdentifier2;
      *&v51[4] = 2048;
      *&v51[6] = reason;
      v52 = 2048;
      v53 = v32;
      v54 = 2048;
      v55 = activationState;
      v56 = 2114;
      v57 = lastCrashDate;
      _os_log_error_impl(&dword_2149C9000, v19, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: %{public}@ %@ (pid: %d; reason: %ld; crash count: %ld; activation state: %ld lastCrashDate:%{public}@)", buf, 0x58u);
    }

    v20 = self->_webProcessCrashCount;
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        webView = [(MFMessageContentView *)self webView];
        v22 = [webView URL];

        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __73__MFMessageContentView__webView_webContentProcessDidTerminateWithReason___block_invoke_2;
        v36[3] = &unk_2781819D0;
        v36[4] = self;
        v39 = a2;
        v37 = viewCopy;
        v38 = v22;
        v23 = v22;
        dispatch_async(MEMORY[0x277D85CD0], v36);
      }
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__MFMessageContentView__webView_webContentProcessDidTerminateWithReason___block_invoke_515;
      block[3] = &unk_2781816C0;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v14[2](v14);

  v24 = *MEMORY[0x277D85DE8];
}

void __73__MFMessageContentView__webView_webContentProcessDidTerminateWithReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[328] & 0x800) != 0)
  {
    v3 = [v2 delegate];
    [v3 messageContentView:*(a1 + 32) webViewDidTerminateWithReason:*(a1 + 40)];
  }

  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = *(a1 + 32);
  v6 = *(v5 + 648);
  *(v5 + 648) = v4;
}

void __73__MFMessageContentView__webView_webContentProcessDidTerminateWithReason___block_invoke_515(uint64_t a1)
{
  v1 = [*(a1 + 32) webViewLoadingController];
  [v1 slapWebView];
}

void __73__MFMessageContentView__webView_webContentProcessDidTerminateWithReason___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = *(a1 + 32);
    v15 = NSStringFromSelector(*(a1 + 56));
    v16 = *(a1 + 40);
    *buf = 138544130;
    v18 = v13;
    v19 = 2048;
    v20 = v14;
    v21 = 2114;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    _os_log_error_impl(&dword_2149C9000, v2, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: %{public}@ setting error message to web view %@", buf, 0x2Au);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"MESSAGE_CAUSED_PROBLEM_REPEATEDLY" value:&stru_2826D1AD8 table:@"Main"];

  v6 = [*(a1 + 32) webView];
  v7 = MEMORY[0x277CCACA8];
  v8 = [v5 mf_stringByEscapingHTMLCodes];
  v9 = [v7 localizedStringWithFormat:@"<html dir=auto><body><i><font color=#888>%@</font></i></body></html>", v8];
  [v6 _loadAlternateHTMLString:v9 baseURL:0 forUnreachableURL:*(a1 + 48)];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_webView:(id)view dataInteraction:(id)interaction sessionWillBegin:(id)begin
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained contentItemHandlingDelegateForMessageContentView:self];
    [v6 hideMenuForSelectedContentRepresentation];
  }
}

- (id)_webView:(id)view adjustedDataInteractionItemProvidersForItemProvider:(id)provider representingObjects:(id)objects additionalData:(id)data
{
  v16[1] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v9 = [data objectForKey:*MEMORY[0x277CD6840]];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    [(MessageContentItemsHelper *)self->_relatedItemsHelper updateDragItemProvider:providerCopy forElementID:v10];
    v11 = [(MessageContentItemsHelper *)self->_relatedItemsHelper contentItemForElementID:v10];
    if ([(MessageContentItemsHelper *)self->_relatedItemsHelper displayStateForContentItem:v11]== 1)
    {
      v16[0] = providerCopy;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v15 = providerCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_webView:(id)view willUpdateDropProposalToProposal:(id)proposal forSession:(id)session
{
  v5 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:0];

  return v5;
}

- (BOOL)_objectContainsNonEmptyString:(id)string
{
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = stringCopy;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
    [whitespaceAndNewlineCharacterSet addCharactersInString:@"\uFFFC"];
    string = [v4 string];
    invertedSet = [whitespaceAndNewlineCharacterSet invertedSet];
    v8 = [string rangeOfCharacterFromSet:invertedSet] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_attachmentPreviewsFromData:(id)data
{
  dataCopy = data;
  v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:0];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:*MEMORY[0x277CCA308]];

  return v8;
}

- (id)_webView:(id)view previewItem:(id)item
{
  viewCopy = view;
  itemCopy = item;
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  itemProvider = [itemCopy itemProvider];
  teamData = [itemProvider teamData];
  v11 = [v8 initWithData:teamData encoding:4];

  attachmentDragPreviews = [(MFMessageContentView *)self attachmentDragPreviews];
  v13 = [attachmentDragPreviews objectForKeyedSubscript:v11];

  scrollView = [viewCopy scrollView];
  [scrollView contentInset];
  v16 = v15;
  [(MFMessageHeaderView *)self->_headerView frame];
  MaxY = CGRectGetMaxY(v21);

  v18 = [v13 targetedDragPreviewInContainer:viewCopy centerOffset:{v16, MaxY}];

  return v18;
}

- (id)_webView:(id)view previewForLiftingItem:(id)item session:(id)session
{
  session = [(MFMessageContentView *)self _webView:view previewItem:item, session];

  return session;
}

- (id)_webView:(id)view previewForCancellingItem:(id)item withDefault:(id)default
{
  default = [(MFMessageContentView *)self _webView:view previewItem:item, default];

  return default;
}

- (id)_dataDetectionContextForWebView:(id)view
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  contentRequest = [(MFMessageContentView *)self contentRequest];
  messageFuture = [contentRequest messageFuture];
  resultIfAvailable = [messageFuture resultIfAvailable];

  contentRepresentationIfAvailable = [(MFMessageContentView *)self contentRepresentationIfAvailable];
  v9 = contentRepresentationIfAvailable;
  if (resultIfAvailable && contentRepresentationIfAvailable)
  {
    subject = [resultIfAvailable subject];
    subjectWithoutPrefix = [subject subjectWithoutPrefix];

    if ([subjectWithoutPrefix length])
    {
      [dictionary setObject:subjectWithoutPrefix forKeyedSubscript:*MEMORY[0x277D04358]];
    }

    date = [resultIfAvailable date];
    [dictionary setObject:date forKeyedSubscript:*MEMORY[0x277D04380]];

    publicMessageURL = [v9 publicMessageURL];
    if (publicMessageURL)
    {
      [dictionary setObject:publicMessageURL forKeyedSubscript:*MEMORY[0x277D04388]];
    }
  }

  return dictionary;
}

- (int64_t)_webView:(id)view dataOwnerForDragSession:(id)session
{
  if ([(MFMessageContentView *)self sourceIsManaged:view])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_webView:(id)view didInsertAttachment:(id)attachment withSource:(id)source
{
  attachmentCopy = attachment;
  sourceCopy = source;
  [(MFMessageContentView *)self _updateFileWrapperForAttachment:attachmentCopy contentID:sourceCopy];
  v8 = [(MessageContentItemsHelper *)self->_relatedItemsHelper contentItemForContentID:sourceCopy];
  if (v8)
  {
    v9 = [(MessageContentItemsHelper *)self->_relatedItemsHelper contentItemForElementID:sourceCopy];

    if (!v9)
    {
      [(MessageContentItemsHelper *)self->_relatedItemsHelper associateElementID:sourceCopy withContentID:sourceCopy];
    }
  }
}

- (void)_updateFileWrapperForAttachment:(id)attachment contentID:(id)d
{
  attachmentCopy = attachment;
  v6 = [(MessageContentItemsHelper *)self->_relatedItemsHelper contentItemForContentID:d];
  v7 = v6;
  if (v6)
  {
    relatedItemsHelper = self->_relatedItemsHelper;
    contentID = [v6 contentID];
    uniqueIdentifier = [attachmentCopy uniqueIdentifier];
    [(MessageContentItemsHelper *)relatedItemsHelper associateElementID:contentID withWKAttachmentID:uniqueIdentifier];

    v11 = [(MessageContentItemsHelper *)self->_relatedItemsHelper startDownloadForContentItem:v7 userInitiated:0];
  }
}

- (BOOL)mayShareToUnmanaged
{
  if (![(MFMessageContentView *)self sourceIsManaged])
  {
    return 1;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  mayOpenFromManagedToUnmanaged = [mEMORY[0x277D262A0] mayOpenFromManagedToUnmanaged];

  return mayOpenFromManagedToUnmanaged;
}

- (BOOL)_allAttachmentsArePhotosOrVideos
{
  v18 = *MEMORY[0x277D85DE8];
  contentItems = [(MessageContentItemsHelper *)self->_relatedItemsHelper contentItems];
  if ([contentItems count] < 2)
  {
    v10 = 0;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = contentItems;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = *v14;
      v6 = *MEMORY[0x277CE1E00];
      v7 = *MEMORY[0x277CE1DB0];
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v3);
          }

          type = [*(*(&v13 + 1) + 8 * i) type];
          if (([type conformsToType:v6] & 1) == 0 && (objc_msgSend(type, "conformsToType:", v7) & 1) == 0)
          {

            v10 = 0;
            goto LABEL_14;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_14:
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v5 = [(MFMessageContentView *)self contentItemForSaveMenu:interaction];

  if (v5)
  {
    v6 = MEMORY[0x277D753B0];
    contentItemForSaveMenu = [(MFMessageContentView *)self contentItemForSaveMenu];
    contentID = [contentItemForSaveMenu contentID];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v11[3] = &unk_278182010;
    v11[4] = self;
    v9 = [v6 configurationWithIdentifier:contentID previewProvider:0 actionProvider:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
  v17[3] = &unk_278181FE8;
  v17[4] = *(a1 + 32);
  v2 = [MEMORY[0x277D753F0] elementWithUncachedProvider:v17];
  v18[0] = v2;
  v3 = MEMORY[0x277D750C8];
  v4 = _EFLocalizedString();
  v5 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD67B0]];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_7;
  v16[3] = &unk_2781814E0;
  v16[4] = *(a1 + 32);
  v6 = [v3 actionWithTitle:v4 image:v5 identifier:@"com.apple.documentmanager.downloads" handler:v16];
  v18[1] = v6;
  v7 = MEMORY[0x277D750C8];
  v8 = _EFLocalizedString();
  v9 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD6828]];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_8;
  v15[3] = &unk_2781814E0;
  v15[4] = *(a1 + 32);
  v10 = [v7 actionWithTitle:v8 image:v9 identifier:@"com.apple.documentmanager.browse" handler:v15];
  v18[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v12 = [MEMORY[0x277D75710] menuWithChildren:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277D071B8] globalAsyncScheduler];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
  v9[3] = &unk_278181F98;
  v6 = v4;
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v8 = v3;
  v12 = v8;
  [v5 performBlock:v9];
}

void __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 _doc_destinationLocationExists:2];

  if (v3)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4;
    v14[3] = &unk_278181F98;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v15[0] = v4;
    v15[1] = v5;
    v16 = v6;
    v7 = [MEMORY[0x277D071B8] mainThreadScheduler];
    [v7 performBlock:v14];
    v8 = v15;

    v9 = v16;
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_6;
    v11[3] = &unk_278181FC0;
    v13 = *(a1 + 48);
    v12 = *(a1 + 32);
    v10 = [MEMORY[0x277D071B8] mainThreadScheduler];
    [v10 performBlock:v11];
    v8 = &v13;

    v9 = v12;
  }
}

uint64_t __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = MEMORY[0x277D750C8];
  v4 = _EFLocalizedString();
  v5 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD67A8]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_5;
  v9[3] = &unk_2781814E0;
  v9[4] = a1[5];
  v6 = [v3 actionWithTitle:v4 image:v5 identifier:@"com.apple.documentmanager.cats" handler:v9];
  [v2 addObject:v6];

  v7 = a1[4];
  return (*(a1[6] + 16))();
}

void __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[52];
  v3 = [v1 contentItemForSaveMenu];
  [v2 saveContentItem:? toDestination:?];
}

void __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[52];
  v3 = [v1 contentItemForSaveMenu];
  [v2 saveContentItem:? toDestination:?];
}

void __78__MFMessageContentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 contentItemForSaveMenu];
  [v1 _saveContentItemToPicker:?];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  identifier = [configurationCopy identifier];
  contentItemForSaveMenu = [(MFMessageContentView *)self contentItemForSaveMenu];
  contentID = [contentItemForSaveMenu contentID];

  if (identifier == contentID)
  {
    [(MFMessageContentView *)self setContentItemForSaveMenu:0];
    [(MFMessageContentView *)self setContentItemRectForSaveMenu:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    webView = [(MFMessageContentView *)self webView];
    [webView removeInteraction:interactionCopy];
  }
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  [(MFMessageContentView *)self contentItemRectForSaveMenu:interaction];
  v10 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v10 setBackgroundColor:clearColor];

  UIRectGetCenter();
  v13 = v12;
  v15 = v14;
  v16 = objc_alloc(MEMORY[0x277D758E0]);
  webView = [(MFMessageContentView *)self webView];
  v18 = [v16 initWithContainer:webView center:{v13, v15 + 5.0}];

  v19 = objc_alloc_init(MEMORY[0x277D758D8]);
  v20 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v10 parameters:v19 target:v18];

  return v20;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  identifier = [configuration identifier];
  contentItemForSaveMenu = [(MFMessageContentView *)self contentItemForSaveMenu];
  contentID = [contentItemForSaveMenu contentID];

  if (identifier == contentID)
  {
    defaultStyle = [MEMORY[0x277D75EA8] defaultStyle];
    [defaultStyle setPreferredLayout:3];
  }

  else
  {
    defaultStyle = 0;
  }

  return defaultStyle;
}

- (void)_saveContentItemToPicker:(id)picker
{
  v4 = [(MessageContentItemsHelper *)self->_relatedItemsHelper futureForContentItem:picker download:0];
  objc_initWeak(&location, self);
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__MFMessageContentView__saveContentItemToPicker___block_invoke;
  v6[3] = &unk_278181830;
  objc_copyWeak(&v7, &location);
  [v4 onScheduler:mainThreadScheduler addSuccessBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__MFMessageContentView__saveContentItemToPicker___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc(MEMORY[0x277D75458]);
  v6 = [v3 contentURL];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [v5 initForExportingURLs:v7 asCopy:1];

  [v8 _setIsContentManaged:{objc_msgSend(WeakRetained, "sourceIsManaged")}];
  [WeakRetained presentViewController:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_contextMenuConfigurationForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = [attachmentCopy ID];
  v6 = [(MFMessageContentView *)self _contentItemForElement:v5];

  if (v6)
  {
    v7 = [(MessageContentItemsHelper *)self->_relatedItemsHelper displayStateForContentItem:v6];
    if (v7 == 1)
    {
      v8 = [(MessageContentItemsHelper *)self->_relatedItemsHelper futureForContentItem:v6 download:0];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [WeakRetained contentItemHandlingDelegateForMessageContentView:self];

      type = [v6 type];
      result = [v8 result];
      contentURL = [result contentURL];

      if (contentURL)
      {
        v14 = [getQLPreviewControllerClass() canPreviewItem:contentURL];
      }

      else
      {
        v14 = 0;
      }

      v24 = MEMORY[0x277D753B0];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_3;
      v34[3] = &unk_278182060;
      v35 = v6;
      v39 = v14;
      v36 = type;
      v23 = type;
      v37 = contentURL;
      selfCopy = self;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_4;
      v25[3] = &unk_278182120;
      v26 = v35;
      selfCopy2 = self;
      v33 = v14;
      v22 = contentURL;
      v17 = v37;
      v28 = v17;
      v18 = v10;
      v29 = v18;
      v19 = v36;
      v30 = v19;
      v20 = v8;
      v31 = v20;
      v32 = attachmentCopy;
      v15 = [v24 configurationWithIdentifier:0 previewProvider:v34 actionProvider:{v25, v22, v23}];
    }

    else
    {
      v16 = MEMORY[0x277D753B0];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke;
      v40[3] = &unk_278182038;
      v42 = v7;
      v40[4] = self;
      v41 = v6;
      v15 = [v16 configurationWithIdentifier:0 previewProvider:0 actionProvider:v40];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 2)
  {
    v2 = MEMORY[0x277D750C8];
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"DOWNLOAD" value:&stru_2826D1AD8 table:@"Main"];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD6818]];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_2;
    v18 = &unk_278181508;
    v7 = *(a1 + 40);
    v19 = *(a1 + 32);
    v20 = v7;
    v8 = [v2 actionWithTitle:v5 image:v6 identifier:0 handler:&v15];

    v9 = MEMORY[0x277D75710];
    v10 = [*(a1 + 40) displayName];
    v21[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v12 = [v9 menuWithTitle:v10 children:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_3(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) exchangeEventUID])
  {
    v2 = objc_alloc_init(MEMORY[0x277CC5A40]);
    v3 = [objc_alloc(MEMORY[0x277CC5B78]) initWithEventUID:objc_msgSend(*(a1 + 32) eventStore:{"exchangeEventUID"), v2}];
    v4 = [v3 viewController];
  }

  else if ((*(a1 + 64) & 1) != 0 || [*(a1 + 32) exchangeEventUID])
  {
    v5 = [*(a1 + 40) preferredMIMEType];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v6 = getQLItemClass_softClass;
    v17 = getQLItemClass_softClass;
    if (!getQLItemClass_softClass)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __getQLItemClass_block_invoke;
      v13[3] = &unk_2781822A8;
      v13[4] = &v14;
      __getQLItemClass_block_invoke(v13);
      v6 = v15[3];
    }

    v7 = v6;
    _Block_object_dispose(&v14, 8);
    v8 = [[v6 alloc] initWithURL:*(a1 + 48) MIMEType:v5];
    v9 = objc_alloc(getQLPreviewControllerClass());
    v18[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v4 = [v9 initWithPreviewItems:v10];

    [v4 setIsContentManaged:{objc_msgSend(*(a1 + 56), "sourceIsManaged")}];
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

id __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v59 = [MEMORY[0x277CBEB18] array];
  if ([*(a1 + 32) exchangeEventUID])
  {
    v4 = 0;
    goto LABEL_18;
  }

  v57 = v3;
  v5 = [*(a1 + 40) contentRequest];
  v6 = [v5 message];

  v58 = v6;
  v7 = [*(a1 + 40) dataSource];
  v56 = [v7 messageSourceMailboxObjectIDForMessageContentView:*(a1 + 40)];

  v8 = [*(a1 + 40) contactStore];
  v55 = [v6 senderDisplayNameUsingContactStore:v8];

  v9 = [v6 shouldShowReplyAll];
  if (*(a1 + 88) == 1)
  {
    v10 = *(a1 + 48);
    v11 = [v58 objectID];
    v12 = [v58 subject];
    v13 = [v12 subjectString];
    v14 = [*(a1 + 40) webView];
    v15 = *(a1 + 56);
    v16 = [v15 assetViewerManager];
    LOBYTE(v53) = 0;
    v17 = [MessageAttachmentActionGenerator quicklookActionForURL:v10 messageObjectID:v11 mailboxObjectID:v56 subject:v13 senderDisplayName:v55 shouldShowReplyAll:v9 originView:*MEMORY[0x277CBF3A0] attachmentRect:*(MEMORY[0x277CBF3A0] + 8) useFullScreenPresentation:*(MEMORY[0x277CBF3A0] + 16) contentRepresentationHandlingDelegate:*(MEMORY[0x277CBF3A0] + 24) assetViewerManager:v14, v53, v15, v16];
    [v59 addObject:v17];
  }

  v18 = [*(a1 + 64) identifier];
  v19 = [v18 ef_conformsToMarkupUTType];

  if (v19)
  {
    v20 = *(a1 + 48);
    v21 = [v58 objectID];
    v22 = [v58 subject];
    v23 = [v22 subjectString];
    v24 = [*(a1 + 40) webView];
    v25 = *(a1 + 56);
    v26 = [v25 assetViewerManager];
    LOBYTE(v53) = 0;
    v27 = [MessageAttachmentActionGenerator markupDocumentActionForURL:v20 messageObjectID:v21 mailboxObjectID:v56 subject:v23 senderDisplayName:v55 shouldShowReplyAll:v9 originView:v24 useFullScreenPresentation:v53 contentRepresentationHandlingDelegate:v25 assetViewerManager:v26];
    [v59 ef_addOptionalObject:v27];
  }

  if ([*(a1 + 40) mayShareToUnmanaged])
  {
    if ([*(a1 + 64) conformsToType:*MEMORY[0x277CE1E00]])
    {
      v28 = [MessageAttachmentActionGenerator saveVideoActionForFutureRepresentation:*(a1 + 72)];
      [v59 addObject:v28];
    }

    else
    {
      if (![*(a1 + 64) conformsToType:*MEMORY[0x277CE1DB0]])
      {
        goto LABEL_13;
      }

      v28 = [MessageAttachmentActionGenerator saveImageActionForFutureRepresentation:*(a1 + 72)];
      [v59 addObject:v28];
    }

LABEL_13:
    if ([*(a1 + 40) _allAttachmentsArePhotosOrVideos])
    {
      v29 = [*(a1 + 56) localizedTitleForSaveAllAttachmentsAction];
      v30 = [*(*(a1 + 40) + 416) contentItems];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_5;
      v70[3] = &unk_278182088;
      v70[4] = *(a1 + 40);
      v31 = [v30 ef_map:v70];
      v32 = [MessageAttachmentActionGenerator saveAllAttachmentsActionWithTitle:v29 futureRepresentations:v31];
      [v59 addObject:v32];
    }
  }

  v33 = MEMORY[0x277D750C8];
  v34 = *(a1 + 40);
  v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v36 = [v35 localizedStringForKey:@"SAVE_TO_FILES" value:&stru_2826D1AD8 table:@"Main"];
  v37 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD6828]];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_6;
  v66[3] = &unk_2781820B0;
  v38 = *(a1 + 48);
  v39 = *(a1 + 40);
  v67 = v38;
  v68 = v39;
  v69 = *(a1 + 80);
  v40 = [v33 actionWithTitle:v36 image:v37 identifier:0 handler:v66];
  [v59 addObject:v40];

  v41 = MEMORY[0x277D750C8];
  v42 = *(a1 + 40);
  v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v44 = [v43 localizedStringForKey:@"SHARE" value:&stru_2826D1AD8 table:@"Main"];
  v45 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD6830]];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_7;
  v63[3] = &unk_2781820B0;
  v54 = *(a1 + 32);
  v46 = v54.i64[0];
  v64 = vextq_s8(v54, v54, 8uLL);
  v65 = *(a1 + 80);
  v47 = [v41 actionWithTitle:v44 image:v45 identifier:0 handler:v63];
  [v59 addObject:v47];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_8;
  aBlock[3] = &unk_2781820F8;
  v61 = v57;
  v48 = v59;
  v62 = v48;
  v49 = _Block_copy(aBlock);
  if ([*(a1 + 40) mayShareToUnmanaged])
  {
    v49[2](v49, 2);
  }

  v49[2](v49, 12);
  v49[2](v49, 13);
  v50 = MEMORY[0x277D75710];
  v51 = [*(a1 + 32) displayName];
  v4 = [v50 menuWithTitle:v51 children:v48];

  v3 = v57;
LABEL_18:

  return v4;
}

id __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 416) futureForContentItem:a2 download:1];

  return v2;
}

void __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_6(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D75458]);
  v11[0] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v4 = [v2 initForExportingURLs:v3 asCopy:1];

  [v4 _setIsContentManaged:{objc_msgSend(*(a1 + 40), "sourceIsManaged")}];
  v5 = *(a1 + 40);
  [*(a1 + 48) boundingRect];
  [v5 _adjustedRectForWebRect:?];
  v5[64] = v6;
  v5[65] = v7;
  v5[66] = v8;
  v5[67] = v9;
  [*(a1 + 40) presentViewController:v4];

  v10 = *MEMORY[0x277D85DE8];
}

void __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 416);
  [*(a1 + 48) boundingRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) webView];
  [v3 showMenuForContentItem:v2 rect:v5 view:{v7, v9, v11}];
}

void __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_9;
  v5[3] = &__block_descriptor_40_e23_B16__0__UIMenuElement_8l;
  v5[4] = a2;
  v4 = [v3 ef_firstObjectPassingTest:v5];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }
}

BOOL __63__MFMessageContentView__contextMenuConfigurationForAttachment___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = MEMORY[0x277CE3888];
    v6 = [v3 identifier];
    v7 = v4 == [v5 elementActionTypeForUIActionIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_webView:(id)view contextMenuConfigurationForElement:(id)element completionHandler:(id)handler
{
  handlerCopy = handler;
  _activatedElementInfo = [element _activatedElementInfo];
  v8 = _activatedElementInfo;
  if (_activatedElementInfo)
  {
    if (([_activatedElementInfo type] - 1) >= 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(MFMessageContentView *)self _contextMenuConfigurationForAttachment:v8];
    }

    handlerCopy[2](handlerCopy, v9);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)webView:(id)view contextMenuForElement:(id)element willCommitWithAnimator:(id)animator
{
  elementCopy = element;
  animatorCopy = animator;
  _activatedElementInfo = [elementCopy _activatedElementInfo];
  v10 = _activatedElementInfo;
  if (_activatedElementInfo)
  {
    [_activatedElementInfo boundingRect];
    [(MFMessageContentView *)self _adjustedRectForWebRect:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__MFMessageContentView_webView_contextMenuForElement_willCommitWithAnimator___block_invoke;
    v19[3] = &unk_278182148;
    v19[4] = self;
    v20 = v10;
    v21 = v12;
    v22 = v14;
    v23 = v16;
    v24 = v18;
    [animatorCopy addCompletion:v19];
  }
}

void __77__MFMessageContentView_webView_contextMenuForElement_willCommitWithAnimator___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 416);
  v3 = [*(a1 + 40) ID];
  v4 = *(a1 + 32);
  v5 = v3;
  [v2 attachmentWasTappedWithElementID:*(a1 + 48) rect:*(a1 + 56) view:{*(a1 + 64), *(a1 + 72)}];
}

- (id)_contentItemForElement:(id)element
{
  elementCopy = element;
  v5 = [(MessageContentItemsHelper *)self->_relatedItemsHelper contentItemForElementID:elementCopy];
  if (!v5)
  {
    v5 = [(MessageContentItemsHelper *)self->_relatedItemsHelper contentItemForContentID:elementCopy];
  }

  return v5;
}

- (id)downloadFutureForContentItem:(id)item
{
  v3 = [(MessageContentItemsHelper *)self->_relatedItemsHelper futureForContentItem:item download:1];

  return v3;
}

- (void)webView:(id)view showLockdownModeFirstUseMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[MFMessageContentView log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2149C9000, v6, OS_LOG_TYPE_DEFAULT, "Skipping lockdown first use message", v7, 2u);
  }

  handlerCopy[2](handlerCopy, 3);
}

- (void)headerViewDidChangeHeight:(id)height
{
  [(MFMessageContentView *)self _adjustWebViewInsetsToAccomodateHeaderAndFooter];
  if (v4 != 0.0)
  {

    [(MFMessageContentView *)self layoutIfNeeded];
  }
}

- (void)footerViewDidChangeHeight:(id)height
{
  [(MFMessageContentView *)self _adjustWebViewInsetsToAccomodateHeaderAndFooter];
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 > 0.0)
  {

    [(MFMessageContentView *)self layoutIfNeeded];
  }
}

- (double)_adjustWebViewInsetsToAccomodateHeaderAndFooter
{
  webView = [(MFMessageContentView *)self webView];
  scrollView = [webView scrollView];

  [scrollView contentInset];
  v6 = v5;
  v8 = v7;
  [(MFMessageHeaderView *)self->_headerView bounds];
  Height = CGRectGetHeight(v22);
  v10 = 0.0;
  if (self->_showMessageFooter)
  {
    [(MFConversationItemFooterView *)self->_footerView bounds];
    v10 = ceil(CGRectGetHeight(v23));
  }

  [scrollView contentInset];
  v12 = v11;
  [scrollView contentInset];
  v14 = ceil(Height);
  v15 = v10 + v14 - v12 - v13;
  v16 = -v15;
  if (v15 >= 0.0)
  {
    v16 = v10 + v14 - v12 - v13;
  }

  if (v16 > 0.00000011920929 && !self->_suppressContentSizeNotifications)
  {
    [scrollView contentOffset];
    v18 = v17;
    v20 = v19;
    [scrollView setContentInset:{v14, v6, v10, v8}];
    [scrollView setContentOffset:{v18, v20 - v15}];
  }

  return v15;
}

- (void)_adjustHeaderOffsetForZoom
{
  webView = [(MFMessageContentView *)self webView];
  scrollView = [webView scrollView];
  [scrollView contentOffset];
  v6 = v5;

  [(MFMessageHeaderView *)self->_headerView bounds];
  v7 = v6 + ceil(CGRectGetHeight(v12));
  v8 = -v7;
  if (v7 <= 0.0)
  {
    v8 = -0.0;
  }

  CGAffineTransformMakeTranslation(&v11, 0.0, v8);
  headerView = self->_headerView;
  v10 = v11;
  [(MFMessageHeaderView *)headerView setTransform:&v10];
}

- (void)_resetHeaderOffsetForZoom
{
  headerView = self->_headerView;
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(MFMessageHeaderView *)headerView setTransform:v4];
}

- (void)_beginObservingContentHeight
{
  if (!self->_contentSizeObservation)
  {
    objc_initWeak(&location, self);
    webView = [(MFMessageContentView *)self webView];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__MFMessageContentView__beginObservingContentHeight__block_invoke;
    v7[3] = &unk_278182170;
    objc_copyWeak(v8, &location);
    v8[1] = a2;
    v5 = [webView ef_observeKeyPath:@"scrollView.contentSize" options:1 autoCancelToken:0 usingBlock:v7];
    contentSizeObservation = self->_contentSizeObservation;
    self->_contentSizeObservation = v5;

    objc_destroyWeak(v8);
    objc_destroyWeak(&location);
  }
}

void __52__MFMessageContentView__beginObservingContentHeight__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  [v5 CGSizeValue];
  [WeakRetained _notifyDelegateScrollViewSizeChanged:?];

  if ([WeakRetained suppressScrolling])
  {
    v6 = [WeakRetained webView];
    v7 = [v6 scrollView];
    [v7 setScrollEnabled:0];
  }

  if (WeakRetained && (WeakRetained[552] & 1) == 0 && (WeakRetained[553] & 1) == 0)
  {
    v8 = [WeakRetained webView];
    v9 = [v8 scrollView];
    [v9 contentOffset];
    v11 = v10;

    v12 = [WeakRetained scrollView];
    [v12 contentInset];
    v14 = -v13;

    if (v11 != v14)
    {
      v15 = +[MFMessageContentView log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(*(a1 + 40));
        v25 = 138544386;
        v26 = v17;
        v27 = 2048;
        v28 = WeakRetained;
        v29 = 2114;
        v30 = v18;
        v31 = 2048;
        v32 = v11;
        v33 = 2048;
        v34 = v14;
        _os_log_impl(&dword_2149C9000, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: %{public}@ oldOffset:%f newOffset:%f", &v25, 0x34u);
      }
    }

    v19 = [WeakRetained scrollView];
    [v19 contentOffset];
    v21 = v20;
    v22 = [WeakRetained webView];
    v23 = [v22 scrollView];
    [v23 setContentOffset:{v21, v14}];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateScrollViewSizeChanged:(CGSize)changed
{
  if ((*&self->_flags & 8) != 0 && !self->_suppressContentSizeNotifications && !self->_suppressContentSizeNotificationsUntilFirstPaint)
  {
    height = changed.height;
    [(MFMessageHeaderView *)self->_headerView bounds];
    v5 = height + CGRectGetHeight(v9);
    [(MFConversationItemFooterView *)self->_footerView bounds];
    v6 = v5 + CGRectGetHeight(v10);
    delegate = [(MFMessageContentView *)self delegate];
    [delegate messageContentView:self didFinishRenderingWithHeight:v6];
  }
}

- (void)_stopObservingContentHeight
{
  [(EFCancelable *)self->_contentSizeObservation cancel];
  contentSizeObservation = self->_contentSizeObservation;
  self->_contentSizeObservation = 0;
}

- (void)mailDropBannerDidTriggerDownload:(id)download
{
  downloadCopy = download;
  mEMORY[0x277D28258] = [MEMORY[0x277D28258] sharedInstance];
  isFatPipe = [mEMORY[0x277D28258] isFatPipe];

  if ([(MessageContentItemsHelper *)self->_relatedItemsHelper totalMailDropDownloadSize]< 0x6400001)
  {
    v6 = 1;
  }

  else
  {
    v6 = isFatPipe;
  }

  if (v6)
  {
    [(MFMessageContentView *)self _downloadAllMailDropAttachments];
  }

  else
  {
    [(MFMessageContentView *)self _alertMailDropDownloadIsTooLargeForCell:1];
    [downloadCopy setBannerState:1];
  }
}

- (id)viewPrintFormatter
{
  webView = [(MFMessageContentView *)self webView];
  viewPrintFormatter = [webView viewPrintFormatter];

  return viewPrintFormatter;
}

- (void)_addHasMoreContentBannerWithRemainingBytes:(unint64_t)bytes
{
  loadHasMoreContentBanner = self->_loadHasMoreContentBanner;
  if (!loadHasMoreContentBanner)
  {
    v5 = [MFHasMoreContentBannerView bannerWithFrame:bytes == 0 isPlainText:bytes remainingBytes:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_loadHasMoreContentBanner;
    self->_loadHasMoreContentBanner = v5;

    [(MFHasMoreContentBannerView *)self->_loadHasMoreContentBanner setDelegate:self];
    [(MFMessageHeaderView *)self->_headerView insertHeaderBlock:self->_loadHasMoreContentBanner atIndex:0 animated:1];
    loadHasMoreContentBanner = self->_loadHasMoreContentBanner;
  }

  [(MFHasMoreContentBannerView *)loadHasMoreContentBanner reloadData];
}

- (void)didTapHasMoreContentBannerView:(id)view
{
  contentRepresentation = [(MFMessageContentView *)self contentRepresentation];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__MFMessageContentView_didTapHasMoreContentBannerView___block_invoke;
  v6[3] = &unk_278182198;
  v6[4] = self;
  v5 = [contentRepresentation requestAdditionalContentWithCompletion:v6];
}

void __55__MFMessageContentView_didTapHasMoreContentBannerView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D071B8] mainThreadScheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__MFMessageContentView_didTapHasMoreContentBannerView___block_invoke_2;
  v7[3] = &unk_278181710;
  v5 = v3;
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  [v4 performBlock:v7];
}

void __55__MFMessageContentView_didTapHasMoreContentBannerView___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32) == 0;
  v3 = +[MFMessageContentView log];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) contentRepresentation];
      v8 = [v7 ef_publicDescription];
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_2149C9000, v4, OS_LOG_TYPE_DEFAULT, "Finished requesting additional content for content representation: %{public}@", &v14, 0xCu);
    }

    v9 = *(a1 + 40);
    v6 = [v9 contentRepresentation];
    [v9 contentRequestDidReceiveContentRepresentation:v6 error:0];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 40) contentRepresentation];
      v12 = [v11 ef_publicDescription];
      v13 = [*(a1 + 32) ef_publicDescription];
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_error_impl(&dword_2149C9000, v4, OS_LOG_TYPE_ERROR, "Failed to request additional content for content representation: %{public}@ due to error: %{public}@", &v14, 0x16u);
    }

    v5 = *(a1 + 40);
    v6 = [v5 contentRepresentation];
    [v5 _updateHasMoreContentBannerWithRemainingBytes:objc_msgSend(v6 error:{"remainingByteCount"), *(a1 + 32)}];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isDisplayedInGroupedSenderMessageList
{
  if (!EMBlackPearlIsFeatureEnabled())
  {
    return 0;
  }

  delegate = [(MFMessageContentView *)self delegate];
  v4 = [delegate isShowingGroupedSenderMessageListForMessageContentView:self];

  return v4;
}

- (void)_addHideMyEmailBannerIfNeeded
{
  if ([MFHideMyEmailBannerView shouldDisplayBannerIfIsShowingGroupedSenderMessageList:[(MFMessageContentView *)self _isDisplayedInGroupedSenderMessageList]])
  {
    if (!self->_hideMyEmailBanner)
    {
      contentRequest = [(MFMessageContentView *)self contentRequest];
      resultIfAvailable = [contentRequest resultIfAvailable];
      requestedHeaders = [resultIfAvailable requestedHeaders];
      v6 = [requestedHeaders headersForKey:*MEMORY[0x277D06FA8]];

      if (v6)
      {
        v7 = [MFHideMyEmailBannerView alloc];
        v8 = [(MFHideMyEmailBannerView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        hideMyEmailBanner = self->_hideMyEmailBanner;
        self->_hideMyEmailBanner = v8;

        [(MFHideMyEmailBannerView *)self->_hideMyEmailBanner setDelegate:self];
        headerView = self->_headerView;
        v11 = self->_hideMyEmailBanner;

        [(MFMessageHeaderView *)headerView insertHeaderBlock:v11 atIndex:0 animated:1];
      }
    }
  }
}

- (void)didTapHideMyEmailBannerView:(id)view
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  hideMyEmailURL = [MEMORY[0x277CD68A0] hideMyEmailURL];
  [defaultWorkspace openSensitiveURL:hideMyEmailURL withOptions:0];
}

- (void)didDismissHideMyEmailBannerView:(id)view
{
  [(MFMessageHeaderView *)self->_headerView removeHeaderBlock:self->_hideMyEmailBanner animated:1];
  hideMyEmailBanner = self->_hideMyEmailBanner;
  self->_hideMyEmailBanner = 0;
}

- (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(MFMessageContentView *)self delegate];
  v5 = [delegate presentingViewControllerForMessageContentView:self];
  [v5 presentViewController:controllerCopy animated:1 completion:0];
}

- (void)loadBlockedContent
{
  [(MFMessageContentView *)self setMessageBlockingReason:0];
  blockedContentTypes = [(MFMessageContentView *)self blockedContentTypes];
  [(MFMessageContentView *)self setBlockedContentTypes:0];
  if ((blockedContentTypes & 4) == 0)
  {
    if ((blockedContentTypes & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    [(MFMessageContentView *)self _reloadWithRemoteContentAllowed];
    if ((blockedContentTypes & 2) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  [(MFMessageContentView *)self _reloadWithPartiallyEncryptedMessageAllowed];
  if (blockedContentTypes)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((blockedContentTypes & 2) == 0)
  {
    return;
  }

LABEL_7:

  [(MFMessageContentView *)self _reevaluateTrustWithNetworkAccessAllowed];
}

- (void)_reloadWithPartiallyEncryptedMessageAllowed
{
  [(MFMessageContentView *)self setAllowLoadOfBlockedMessageContent:1];

  [(MFMessageContentView *)self _triggerWebViewLoad];
}

- (void)_reloadWithRemoteContentAllowed
{
  [(MFMessageContentView *)self setAllowLoadOfBlockedMessageContent:1];
  contentRepresentation = [(MFMessageContentView *)self contentRepresentation];
  [contentRepresentation setShowRemoteImages:1];

  [(MFMessageContentView *)self reload];
}

- (void)_reevaluateTrustWithNetworkAccessAllowed
{
  contentRepresentation = [(MFMessageContentView *)self contentRepresentation];
  securityInformation = [contentRepresentation securityInformation];
  [securityInformation reevaluateTrustWithNetworkAccessAllowed];
}

- (void)dismissPresentedViewController:(id)controller
{
  delegate = [(MFMessageContentView *)self delegate];
  v4 = [delegate presentingViewControllerForMessageContentView:self];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)loadFailedProxyContentBannerDidTriggerLoad:(id)load
{
  [(MFMessageContentView *)self _clearLoadFailedProxyContentBannerAnimated:1];
  [(MFMessageContentView *)self _setRemoteContentToLoadWithoutProxy];
  [(MFMessageContentView *)self reload];
  [(NSMutableDictionary *)self->_failedProxyURLs removeAllObjects];
  allRemoteURLs = self->_allRemoteURLs;
  self->_allRemoteURLs = 0;
}

- (void)loadFailedProxyContentBannerWasDismissed:(id)dismissed
{
  [(MFMessageContentView *)self _clearLoadFailedProxyContentBannerAnimated:1];
  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  [em_userDefaults setBool:1 forKey:*MEMORY[0x277D06CC0]];
}

- (void)_showModalViewController:(id)controller presentationSource:(id)source forceNavigationController:(BOOL)navigationController
{
  navigationControllerCopy = navigationController;
  controllerCopy = controller;
  sourceCopy = source;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (navigationControllerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:controllerCopy];

        v9 = v10;
      }

      else
      {
        v9 = controllerCopy;
      }

      controllerCopy = v9;
      [v9 setModalPresentationStyle:7];
    }
  }

  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController setDelegate:self];
  [popoverPresentationController setSourceItem:sourceCopy];
  delegate = [(MFMessageContentView *)self delegate];
  v13 = [delegate presentingViewControllerForMessageContentView:self];

  [v13 presentViewController:controllerCopy animated:1 completion:0];
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  presentedViewController = [controller presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [presentedViewController topViewController];

    presentedViewController = topViewController;
  }

  if (style == -1 || style == 7)
  {
    navigationItem = [presentedViewController navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    presentedControllerDoneButtonItem = [(MFMessageContentView *)self presentedControllerDoneButtonItem];

    if (rightBarButtonItem != presentedControllerDoneButtonItem)
    {
      goto LABEL_10;
    }

    navigationItem2 = [presentedViewController navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
  }

  else
  {
    navigationItem3 = [presentedViewController navigationItem];
    rightBarButtonItem2 = [navigationItem3 rightBarButtonItem];

    if (rightBarButtonItem2)
    {
      goto LABEL_10;
    }

    navigationItem2 = [(MFMessageContentView *)self presentedControllerDoneButtonItem];
    navigationItem4 = [presentedViewController navigationItem];
    [navigationItem4 setRightBarButtonItem:navigationItem2];
  }

LABEL_10:
}

- (void)mui_setAsSourceForPopoverPresentationController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setSourceView:self];
  [controllerCopy setSourceRect:{self->_activatedAttachmentRect.origin.x, self->_activatedAttachmentRect.origin.y, self->_activatedAttachmentRect.size.width, self->_activatedAttachmentRect.size.height}];
}

- (void)mui_setAsTargetedSourceOnSceneConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self];
  [configurationCopy setPreview:v4];
}

- (id)presentedControllerDoneButtonItem
{
  presentedControllerDoneButtonItem = self->_presentedControllerDoneButtonItem;
  if (!presentedControllerDoneButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissPresentedViewController_];
    v5 = self->_presentedControllerDoneButtonItem;
    self->_presentedControllerDoneButtonItem = v4;

    presentedControllerDoneButtonItem = self->_presentedControllerDoneButtonItem;
  }

  return presentedControllerDoneButtonItem;
}

- (id)viewForZoomingInScrollView:(id)view
{
  viewCopy = view;
  loadingView = [(MFMessageContentView *)self loadingView];
  superview = [loadingView superview];
  if (superview)
  {
  }

  else
  {
    isZoomEnabled = [(MFMessageContentView *)self isZoomEnabled];

    if (isZoomEnabled)
    {
      subviews = [viewCopy subviews];
      firstObject = [subviews firstObject];

      goto LABEL_6;
    }
  }

  [viewCopy setZoomEnabled:0];
  firstObject = 0;
LABEL_6:

  return firstObject;
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  zoomingCopy = zooming;
  self->_suppressContentSizeNotifications = 1;
  v20 = zoomingCopy;
  [zoomingCopy contentSize];
  v7 = v6;
  [v20 minimumZoomScale];
  v9 = v8;
  [v20 contentInset];
  webView = [(MFMessageContentView *)self webView];
  [webView _obscuredInsets];
  UIEdgeInsetsSubtract();
  self->_originalZoomInsets.top = v11;
  self->_originalZoomInsets.left = v12;
  self->_originalZoomInsets.bottom = v13;
  self->_originalZoomInsets.right = v14;

  [v20 contentInset];
  v16 = v15;
  [v20 contentInset];
  v17 = fabs(v7 + v7 / (v9 / -3.0));
  [v20 setContentInset:{v17 + v16, *(MEMORY[0x277D768C8] + 8), v17 + v18, *(MEMORY[0x277D768C8] + 24)}];
  if ((*&self->_flags & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained messageContentViewWillBeginZoomingMessage:self];
  }
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  zoomingCopy = zooming;
  viewCopy = view;
  v8 = zoomingCopy;
  p_originalZoomInsets = &self->_originalZoomInsets;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_originalZoomInsets.top), vceqzq_f64(*&self->_originalZoomInsets.bottom))))))
  {
    [zoomingCopy contentOffset];
    v11 = v10;
    left = self->_originalZoomInsets.left;
    [zoomingCopy contentOffset];
    v14 = v13;
    top = p_originalZoomInsets->top;
    webView = [(MFMessageContentView *)self webView];
    [webView _obscuredInsets];
    v17 = p_originalZoomInsets->top;
    v18 = self->_originalZoomInsets.left;
    bottom = self->_originalZoomInsets.bottom;
    right = self->_originalZoomInsets.right;
    UIEdgeInsetsAdd();
    [zoomingCopy setContentInset:?];
    v21 = v11 - left;
    v22 = v14 + top;

    v23 = *(MEMORY[0x277D768C8] + 16);
    *&p_originalZoomInsets->top = *MEMORY[0x277D768C8];
    *&self->_originalZoomInsets.bottom = v23;
    v8 = zoomingCopy;
  }

  else
  {
    v21 = *MEMORY[0x277CBF348];
    v22 = *(MEMORY[0x277CBF348] + 8);
  }

  self->_suppressContentSizeNotifications = 0;
  if ((*&self->_flags & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained messageContentView:self didEndZoomingMessageWithOffset:{v21, v22}];

    v8 = zoomingCopy;
  }

  [v8 contentSize];
  [(MFMessageContentView *)self _notifyDelegateScrollViewSizeChanged:?];
  [(MFMessageContentView *)self _resetHeaderOffsetForZoom];
}

- (void)setSuppressScrolling:(BOOL)scrolling
{
  self->_suppressScrolling = scrolling;
  if (!scrolling)
  {
    webView = [(MFMessageContentView *)self webView];
    scrollView = [webView scrollView];
    [scrollView setScrollEnabled:1];
  }
}

- (void)setContentPaddingFollowsLayoutMargins:(BOOL)margins
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_contentPaddingFollowsLayoutMargins != margins)
  {
    self->_contentPaddingFollowsLayoutMargins = margins;
    if (margins)
    {
      v5 = +[MFMessageContentView log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = NSStringFromSelector(a2);
        webView = [(MFMessageContentView *)self webView];
        v11 = 138544130;
        v12 = v7;
        v13 = 2048;
        selfCopy = self;
        v15 = 2114;
        v16 = v8;
        v17 = 2048;
        v18 = webView;
        _os_log_impl(&dword_2149C9000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: %{public}@ webView = %p", &v11, 0x2Au);
      }

      [(MFMessageContentView *)self _setNeedsPaddingConstantsUpdate];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  webView = [(MFMessageContentView *)self webView];
  scrollView = [webView scrollView];

  if (scrollView == zoomCopy)
  {
    if ([(MFMessageContentView *)self suppressScrolling])
    {
      [zoomCopy zoomScale];
      v7 = fabs(v6 + -1.0) > 0.00000011920929;
    }

    else
    {
      v7 = 1;
    }

    [zoomCopy setScrollEnabled:v7];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [zoomCopy setBackgroundColor:clearColor];

    if (([zoomCopy isZooming] & 1) != 0 || objc_msgSend(zoomCopy, "isZoomBouncing"))
    {
      [(MFMessageContentView *)self _adjustHeaderOffsetForZoom];
    }
  }
}

- (void)_logRequestFinishWithSuccess:(BOOL)success
{
  v34 = *MEMORY[0x277D85DE8];
  if (success)
  {
    contentRepresentationIfAvailable = [(MFMessageContentView *)self contentRepresentationIfAvailable];
    transportType = [contentRepresentationIfAvailable transportType];
    v25 = 0;
    code = 0;
LABEL_5:

    goto LABEL_6;
  }

  contentRepresentationError = [(MFMessageContentView *)self contentRepresentationError];
  if (contentRepresentationError)
  {
    v8 = contentRepresentationError;
    code = [contentRepresentationError code];
    contentRepresentationIfAvailable = [v8 userInfo];
    v25 = v8;
    v9 = [contentRepresentationIfAvailable objectForKeyedSubscript:*MEMORY[0x277D06B90]];
    transportType = [v9 integerValue];

    goto LABEL_5;
  }

  v25 = [MEMORY[0x277CCA9B8] em_internalErrorWithReason:@"Rendering progress failed without error"];
  transportType = 0;
  code = -1;
LABEL_6:
  contentRequest = [(MFMessageContentView *)self contentRequest];
  message = [contentRequest message];
  mailboxesIfAvailable = [message mailboxesIfAvailable];
  firstObject = [mailboxesIfAvailable firstObject];
  account = [firstObject account];
  statisticsKind = [account statisticsKind];

  if (statisticsKind)
  {
    v16 = [MEMORY[0x277D25988] accountStatisticsKindToIdentifier:statisticsKind];
  }

  else
  {
    v16 = 0;
  }

  v17 = +[MFMessageContentView signpostLog];
  signpostID = [(MessageContentRepresentationRequest *)self->_contentRequest signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    webView = [(MFMessageContentView *)self webView];
    itemID = [(MessageContentRepresentationRequest *)self->_contentRequest itemID];
    *buf = 134349826;
    v27 = webView;
    v28 = 2114;
    v29 = itemID;
    v30 = 2050;
    v31 = v16 | (transportType << 8);
    v32 = 2050;
    v33 = code;
    _os_signpost_emit_with_name_impl(&dword_2149C9000, v17, OS_SIGNPOST_INTERVAL_END, signpostID, "MFMessageContentView", "WebView=%{signpost.description:attribute,public}p itemID=%{signpost.description:attribute,public}@ AccountType=%{public, signpost.telemetry:number1}lu Status=%{public, signpost.telemetry:number2}ld enableTelemetry=YES ", buf, 0x2Au);
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  message2 = [(MessageContentRepresentationRequest *)self->_contentRequest message];
  [v21 setObject:message2 forKeyedSubscript:@"MFMessageContentViewDidFinishFirstPaintMessageKey"];

  if (v25)
  {
    [v21 setObject:v25 forKeyedSubscript:@"MFMessageContentViewDidFinishFirstPaintErrorKey"];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:MFMessageContentViewDidFinishFirstPaint object:self userInfo:v21];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)prepareForReuse
{
  [(EFManualCancelationToken *)self->_loadingCancelable cancel];
  loadingCancelable = self->_loadingCancelable;
  self->_loadingCancelable = 0;

  [(MFMessageContentView *)self _showDelayedProgressUIIfNeeded];
  [(NSMutableSet *)self->_inFlightURLs removeAllObjects];
  [(MFMessageContentView *)self removeQuickReplyAnimationContextIfNecessary];
  [(MFMessageContentView *)self didEndTextSearch];
  headerView = [(MFMessageContentView *)self headerView];
  [headerView prepareForReuse];
}

- (void)_addBlockedSenderBannerIfNeeded
{
  if ([MEMORY[0x277D06D40] shouldPromptForBlockedSender] && !-[MFMessageContentView hideSenderSpecificBanners](self, "hideSenderSpecificBanners") && (-[MFMessageContentView contentRequest](self, "contentRequest"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "message"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isBlocked"), v4, v3, v5))
  {
    if (!self->_blockedSenderBanner)
    {
      v6 = [MFBlockedSenderBannerView alloc];
      v7 = [(MFBlockedSenderBannerView *)v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      blockedSenderBanner = self->_blockedSenderBanner;
      self->_blockedSenderBanner = v7;

      [(MFBlockedSenderBannerView *)self->_blockedSenderBanner setDelegate:self];
      headerView = self->_headerView;
      v10 = self->_blockedSenderBanner;

      [(MFMessageHeaderView *)headerView insertHeaderBlock:v10 atIndex:0 animated:1];
    }
  }

  else
  {

    [(MFMessageContentView *)self _clearBlockedSenderBannerAnimated:1];
  }
}

- (void)didTapBlockedSenderBannerView:(id)view
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  blockedSenderURL = [MEMORY[0x277CD68A0] blockedSenderURL];
  [defaultWorkspace openSensitiveURL:blockedSenderURL withOptions:0];
}

- (void)didDismissBlockedSenderBannerView:(id)view
{
  [(MFMessageContentView *)self _clearBlockedSenderBannerAnimated:1];
  v3 = MEMORY[0x277D06D40];

  [v3 setPromptForBlockedSender:0];
}

- (void)_addNotAuthenticatedBannerIfNeeded
{
  contentRequest = [(MFMessageContentView *)self contentRequest];
  message = [contentRequest message];

  v4 = [_TtC12MobileMailUI28MFNotAuthenticatedBannerView shouldDisplayBannerIfIsShowingGroupedSenderMessageList:[(MFMessageContentView *)self _isDisplayedInGroupedSenderMessageList]];
  if (message)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && [message allowAuthenticationWarning])
  {
    if (!self->_notAuthenticatedBanner)
    {
      v6 = [_TtC12MobileMailUI28MFNotAuthenticatedBannerView alloc];
      senderList = [message senderList];
      firstObject = [senderList firstObject];
      emailAddressValue = [firstObject emailAddressValue];
      simpleAddress = [emailAddressValue simpleAddress];
      v11 = [(MFNotAuthenticatedBannerView *)v6 initWithFrame:simpleAddress sender:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      notAuthenticatedBanner = self->_notAuthenticatedBanner;
      self->_notAuthenticatedBanner = v11;

      [(MFNotAuthenticatedBannerView *)self->_notAuthenticatedBanner setDelegate:self];
      [(MFMessageHeaderView *)self->_headerView insertHeaderBlock:self->_notAuthenticatedBanner atIndex:0 animated:1];
    }
  }

  else
  {
    [(MFMessageContentView *)self _clearNotAuthenticatedBannerAnimated:1];
  }
}

- (void)didDismissNotAuthenticatedBannerView:(id)view
{
  v15[1] = *MEMORY[0x277D85DE8];
  [(MFMessageContentView *)self _clearNotAuthenticatedBannerAnimated:1];
  contentRequest = [(MFMessageContentView *)self contentRequest];
  message = [contentRequest message];

  contentRequest2 = [(MFMessageContentView *)self contentRequest];
  message2 = [contentRequest2 message];
  repository = [message2 repository];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFMessageContentView.m" lineNumber:3016 description:@"Cannot clear Not Authenticated Banner - Message Repository not found."];
  }

  v10 = objc_alloc(MEMORY[0x277D06EC8]);
  v15[0] = message;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [v10 initWithMessageListItems:v11 origin:3 actor:2];

  [repository performMessageChangeAction:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_addTimeSensitiveBannerIfNeeded
{
  v27 = *MEMORY[0x277D85DE8];
  contentRequest = [(MFMessageContentView *)self contentRequest];
  message = [contentRequest message];

  delegate = [(MFMessageContentView *)self delegate];
  v6 = [delegate shouldShowTimeSensitiveBannerForMessageContentView:self message:message];

  if (v6)
  {
    v7 = +[MFMessageContentView log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [message ef_publicDescription];
      v23 = 134218242;
      selfCopy2 = self;
      v25 = 2114;
      v26 = ef_publicDescription;
      _os_log_impl(&dword_2149C9000, v7, OS_LOG_TYPE_DEFAULT, "%p: Show time sensitive banner for message: %{public}@", &v23, 0x16u);
    }

    if (self->_timeSensitiveBanner)
    {
      v9 = +[MFMessageContentView log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription2 = [message ef_publicDescription];
        v23 = 134218242;
        selfCopy2 = self;
        v25 = 2114;
        v26 = ef_publicDescription2;
        _os_log_impl(&dword_2149C9000, v9, OS_LOG_TYPE_DEFAULT, "%p: Update time sensitive banner for message: %{public}@", &v23, 0x16u);
      }

      timeSensitiveBanner = self->_timeSensitiveBanner;
      category = [message category];
      type = [category type];
      category2 = [message category];
      -[MFTimeSensitiveBannerView updateWithCategory:showDescription:](timeSensitiveBanner, "updateWithCategory:showDescription:", type, -[MFMessageContentView _shouldShowTimeSensitiveDescriptionForCategory:](self, "_shouldShowTimeSensitiveDescriptionForCategory:", [category2 type]));
    }

    else
    {
      v15 = [_TtC12MobileMailUI25MFTimeSensitiveBannerView alloc];
      category3 = [message category];
      type2 = [category3 type];
      category4 = [message category];
      v19 = -[MFTimeSensitiveBannerView initWithCategory:showDescription:](v15, "initWithCategory:showDescription:", type2, -[MFMessageContentView _shouldShowTimeSensitiveDescriptionForCategory:](self, "_shouldShowTimeSensitiveDescriptionForCategory:", [category4 type]));
      v20 = self->_timeSensitiveBanner;
      self->_timeSensitiveBanner = v19;

      [(MFMessageHeaderView *)self->_headerView insertHeaderBlock:self->_timeSensitiveBanner atIndex:0 animated:1];
    }

    category5 = [message category];
    -[MFMessageContentView _updateTimeSensitiveDefaultForCategory:](self, "_updateTimeSensitiveDefaultForCategory:", [category5 type]);
  }

  else
  {
    [(MFMessageContentView *)self _clearTimeSensitiveBanner];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_clearTimeSensitiveBanner
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_timeSensitiveBanner)
  {
    v3 = +[MFMessageContentView log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      contentRequest = [(MFMessageContentView *)self contentRequest];
      message = [contentRequest message];
      ef_publicDescription = [message ef_publicDescription];
      v9 = 134218242;
      selfCopy = self;
      v11 = 2114;
      v12 = ef_publicDescription;
      _os_log_impl(&dword_2149C9000, v3, OS_LOG_TYPE_DEFAULT, "%p: Clear time sensitive banner for message: %{public}@", &v9, 0x16u);
    }

    [(MFMessageHeaderView *)self->_headerView removeHeaderBlock:self->_timeSensitiveBanner animated:1];
    timeSensitiveBanner = self->_timeSensitiveBanner;
    self->_timeSensitiveBanner = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldShowTimeSensitiveDescriptionForCategory:(unint64_t)category
{
  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  v5 = em_userDefaults;
  switch(category)
  {
    case 3uLL:
      v6 = [em_userDefaults BOOLForKey:*MEMORY[0x277D06CF8]];
      break;
    case 2uLL:
      v6 = [em_userDefaults BOOLForKey:*MEMORY[0x277D06D08]];
      break;
    case 1uLL:
      v6 = [em_userDefaults BOOLForKey:*MEMORY[0x277D06D00]];
      break;
    default:
      v7 = 0;
      goto LABEL_9;
  }

  v7 = v6 ^ 1;
LABEL_9:

  return v7;
}

- (void)_updateTimeSensitiveDefaultForCategory:(unint64_t)category
{
  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  if (category - 1 < 3)
  {
    [em_userDefaults setBool:1 forKey:**(&unk_2781822C8 + category - 1)];
  }
}

- (void)_observeBlockedSenderListChangedNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleBlockSenderListChanged_ name:*MEMORY[0x277D06B88] object:0];
}

- (void)_handleBlockSenderListChanged:(id)changed
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__MFMessageContentView__handleBlockSenderListChanged___block_invoke;
  v4[3] = &unk_2781816C0;
  v4[4] = self;
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  [mainThreadScheduler performBlock:v4];
}

- (void)didBeginTextSearch
{
  v20 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v3 = 1;
    if (self->_isTextSearchActive)
    {
      goto LABEL_5;
    }

    self->_isTextSearchActive = 1;
  }

  webView = [(MFMessageContentView *)self webView];
  [webView didBeginTextSearchOperation];

  headerView = [(MFMessageContentView *)self headerView];
  [headerView addConversationSearchOverlay];

  footerView = [(MFMessageContentView *)self footerView];
  [footerView addConversationSearchOverlay];

  v3 = 0;
LABEL_5:
  v7 = +[MFMessageContentView log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    webView2 = [(MFMessageContentView *)self webView];
    v9 = webView2;
    if (self)
    {
      isTextSearchActive = self->_isTextSearchActive;
    }

    else
    {
      isTextSearchActive = 0;
    }

    v12 = 134218752;
    selfCopy = self;
    v14 = 2048;
    v15 = webView2;
    v16 = 1024;
    v17 = v3;
    v18 = 1024;
    v19 = isTextSearchActive;
    _os_log_impl(&dword_2149C9000, v7, OS_LOG_TYPE_DEFAULT, "didBeginTextSearch: self = %p, webView = %p, searchWasActive = %{BOOL}d, searchIsActive = %{BOOL}d", &v12, 0x22u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didEndTextSearch
{
  v21 = *MEMORY[0x277D85DE8];
  if (self && self->_isTextSearchActive)
  {
    self->_isTextSearchActive = 0;
    webView = [(MFMessageContentView *)self webView];
    [webView clearAllDecoratedFoundText];

    webView2 = [(MFMessageContentView *)self webView];
    [webView2 didEndTextSearchOperation];

    headerView = [(MFMessageContentView *)self headerView];
    [headerView removeConversationSearchOverlay];

    footerView = [(MFMessageContentView *)self footerView];
    [footerView removeConversationSearchOverlay];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = +[MFMessageContentView log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    webView3 = [(MFMessageContentView *)self webView];
    v10 = webView3;
    if (self)
    {
      isTextSearchActive = self->_isTextSearchActive;
    }

    else
    {
      isTextSearchActive = 0;
    }

    v13 = 134218752;
    selfCopy = self;
    v15 = 2048;
    v16 = webView3;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = isTextSearchActive;
    _os_log_impl(&dword_2149C9000, v8, OS_LOG_TYPE_DEFAULT, "didEndTextSearch: self = %p, webView = %p, searchWasActive = %{BOOL}d, searchIsActive = %{BOOL}d", &v13, 0x22u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)clearAllDecoratedFoundText
{
  webView = [(MFMessageContentView *)self webView];
  [webView clearAllDecoratedFoundText];
}

- (void)showSearchResultsAtRange:(id)range usingStyle:(int64_t)style
{
  v22 = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  webView = [(MFMessageContentView *)self webView];
  v8 = +[MFMessageContentView log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    contentRequest = [(MFMessageContentView *)self contentRequest];
    itemID = [contentRequest itemID];
    v12 = 136316162;
    v13 = "[MFMessageContentView showSearchResultsAtRange:usingStyle:]";
    v14 = 2112;
    v15 = webView;
    v16 = 2112;
    v17 = rangeCopy;
    v18 = 2112;
    v19 = itemID;
    v20 = 2048;
    styleCopy = style;
    _os_log_impl(&dword_2149C9000, v8, OS_LOG_TYPE_DEFAULT, "%s: webview %@ returned rect for range: %@, item: %@, style: %lu", &v12, 0x34u);
  }

  [webView decorateFoundTextRange:rangeCopy inDocument:0 usingStyle:style];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)requestRectForFoundTextRange:(id)range completionHandler:(id)handler
{
  rangeCopy = range;
  handlerCopy = handler;
  webView = [(MFMessageContentView *)self webView];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__MFMessageContentView_requestRectForFoundTextRange_completionHandler___block_invoke;
  v10[3] = &unk_2781821C0;
  v10[4] = self;
  v9 = handlerCopy;
  v11 = v9;
  [webView _requestRectForFoundTextRange:rangeCopy completionHandler:v10];
}

uint64_t __71__MFMessageContentView_requestRectForFoundTextRange_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _adjustedRectForWebRect:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)prepareForQuickReplyAnimationWithContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (_os_feature_enabled_impl() && ((*(*MEMORY[0x277D07118] + 16))() & 1) == 0)
  {
    [(MFMessageContentView *)self setQuickReplyAnimationContext:contextCopy];
    headerView = [(MFMessageContentView *)self headerView];
    [headerView setHidden:1];
    [headerView setAlpha:0.0];
    webView = [(MFMessageContentView *)self webView];
    [webView setAlpha:0.0];
    scrollView = [(MFMessageContentView *)self scrollView];
    [scrollView contentInset];
    [contextCopy insets];
    [scrollView setContentInset:?];
    backgroundSnapshot = [contextCopy backgroundSnapshot];
    [(MFMessageContentView *)self addSubview:backgroundSnapshot];
    [(MFMessageContentView *)self bringSubviewToFront:backgroundSnapshot];
    [backgroundSnapshot setHidden:1];
    buttonsSnapshot = [contextCopy buttonsSnapshot];
    [(MFMessageContentView *)self insertSubview:buttonsSnapshot aboveSubview:backgroundSnapshot];
    compositionSnapshot = [contextCopy compositionSnapshot];
    [(MFMessageContentView *)self insertSubview:compositionSnapshot aboveSubview:backgroundSnapshot];
    v11 = +[MFMessageContentView log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v15 = 138543618;
      v16 = v13;
      v17 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_2149C9000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: [Quick Reply][Send Animation] Did apply quick-reply snapshots", &v15, 0x16u);
    }

    [(MFMessageContentView *)self _updateWebViewPaddingConstants];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_performQuickReplyMoveMessageBodyAnimationIfNeeded
{
  v66 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    quickReplyAnimationContext = [(MFMessageContentView *)self quickReplyAnimationContext];

    if (quickReplyAnimationContext)
    {
      v4 = +[MFMessageContentView log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        *buf = 138543618;
        v63 = v6;
        v64 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_2149C9000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: [Quick Reply][Send Animation] Will perform quick-reply move-message-body animation", buf, 0x16u);
      }

      quickReplyAnimationContext2 = [(MFMessageContentView *)self quickReplyAnimationContext];
      backgroundSnapshot = [quickReplyAnimationContext2 backgroundSnapshot];

      quickReplyAnimationContext3 = [(MFMessageContentView *)self quickReplyAnimationContext];
      compositionSnapshot = [quickReplyAnimationContext3 compositionSnapshot];

      quickReplyAnimationContext4 = [(MFMessageContentView *)self quickReplyAnimationContext];
      buttonsSnapshot = [quickReplyAnimationContext4 buttonsSnapshot];

      headerView = [(MFMessageContentView *)self headerView];
      [headerView frame];
      v14 = v13;
      quickReplyAnimationContext5 = [(MFMessageContentView *)self quickReplyAnimationContext];
      [quickReplyAnimationContext5 cornerRadius];
      v49 = v16;

      [compositionSnapshot frame];
      v47 = v18;
      v48 = v17;
      v20 = v19;
      v22 = v21;
      [buttonsSnapshot frame];
      v45 = v24;
      v46 = v23;
      v44 = v25;
      v27 = v26;
      [backgroundSnapshot frame];
      v43 = v28;
      v30 = v29;
      v32 = v31;
      [(MFMessageContentView *)self frame];
      v34 = v33;
      moveMessageBodyPropertyAnimator = [(MFMessageContentView *)self moveMessageBodyPropertyAnimator];
      objc_initWeak(buf, self);
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __74__MFMessageContentView__performQuickReplyMoveMessageBodyAnimationIfNeeded__block_invoke;
      v57[3] = &unk_2781821E8;
      objc_copyWeak(v61, buf);
      v36 = buttonsSnapshot;
      v58 = v36;
      v61[1] = v14;
      v37 = compositionSnapshot;
      v59 = v37;
      v61[2] = v20;
      *&v61[3] = *&v14 + -15.0 + v22;
      v61[4] = v48;
      v61[5] = v47;
      v61[6] = v46;
      *&v61[7] = *&v14 + -15.0 + v27;
      v61[8] = v45;
      v61[9] = v44;
      v38 = backgroundSnapshot;
      v60 = v38;
      v61[10] = v43;
      v61[11] = v30;
      v61[12] = v32;
      v61[13] = v34;
      v61[14] = v49;
      [moveMessageBodyPropertyAnimator addAnimations:v57];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __74__MFMessageContentView__performQuickReplyMoveMessageBodyAnimationIfNeeded__block_invoke_2;
      v54[3] = &unk_278181710;
      v39 = headerView;
      v55 = v39;
      v40 = v38;
      v56 = v40;
      [moveMessageBodyPropertyAnimator addAnimations:v54 delayFactor:0.5];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __74__MFMessageContentView__performQuickReplyMoveMessageBodyAnimationIfNeeded__block_invoke_3;
      v51[3] = &unk_278182210;
      objc_copyWeak(&v53, buf);
      v41 = v40;
      v52 = v41;
      [moveMessageBodyPropertyAnimator addCompletion:v51];
      [moveMessageBodyPropertyAnimator startAnimation];

      objc_destroyWeak(&v53);
      objc_destroyWeak(v61);
      objc_destroyWeak(buf);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __74__MFMessageContentView__performQuickReplyMoveMessageBodyAnimationIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [*(a1 + 32) setAlpha:0.0];
    v3 = [v7 scrollView];
    [v3 contentInset];
    [v3 setContentInset:*(a1 + 64)];
    [*(a1 + 40) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
    [*(a1 + 32) setFrame:{*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
    [*(a1 + 48) setFrame:{*(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160)}];
    v4 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:*(a1 + 136) cornerRadius:{*(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168)}];
    v5 = [v4 CGPath];
    v6 = [*(a1 + 48) layer];
    [v6 setShadowPath:v5];

    WeakRetained = v7;
  }
}

uint64_t __74__MFMessageContentView__performQuickReplyMoveMessageBodyAnimationIfNeeded__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHidden:0];
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

void __74__MFMessageContentView__performQuickReplyMoveMessageBodyAnimationIfNeeded__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) removeFromSuperview];
    [WeakRetained _updateWebViewPaddingConstants];
    [WeakRetained setHasCompletedMoveMessageBodyAnimation:1];
  }
}

- (void)_performQuickReplySnapshotFadeOutAnimationIfNecessary
{
  v35 = *MEMORY[0x277D85DE8];
  quickReplyAnimationContext = [(MFMessageContentView *)self quickReplyAnimationContext];
  v4 = _os_feature_enabled_impl();
  if (quickReplyAnimationContext)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == 1)
  {
    v6 = +[MFMessageContentView log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543618;
      v32 = v8;
      v33 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_2149C9000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: [Quick Reply] Will perform quick-reply snapshot-fade-out animation", buf, 0x16u);
    }

    compositionSnapshot = [quickReplyAnimationContext compositionSnapshot];
    buttonsSnapshot = [quickReplyAnimationContext buttonsSnapshot];
    webView = [(MFMessageContentView *)self webView];
    moveMessageBodyPropertyAnimator = [(MFMessageContentView *)self moveMessageBodyPropertyAnimator];
    v13 = objc_alloc(MEMORY[0x277D75D40]);
    v14 = *MEMORY[0x277CD68E0];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __77__MFMessageContentView__performQuickReplySnapshotFadeOutAnimationIfNecessary__block_invoke;
    v28[3] = &unk_278181710;
    v15 = compositionSnapshot;
    v29 = v15;
    v16 = webView;
    v30 = v16;
    v17 = [v13 initWithDuration:0 curve:v28 animations:v14];
    objc_initWeak(buf, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__MFMessageContentView__performQuickReplySnapshotFadeOutAnimationIfNecessary__block_invoke_2;
    v23[3] = &unk_278182238;
    objc_copyWeak(&v27, buf);
    v18 = v15;
    v24 = v18;
    v19 = buttonsSnapshot;
    v25 = v19;
    v26 = quickReplyAnimationContext;
    [v17 addCompletion:v23];
    if ([(MFMessageContentView *)self hasCompletedMoveMessageBodyAnimation])
    {
      [v17 startAnimation];
    }

    else
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __77__MFMessageContentView__performQuickReplySnapshotFadeOutAnimationIfNecessary__block_invoke_3;
      v21[3] = &unk_278182260;
      v22 = v17;
      [moveMessageBodyPropertyAnimator addCompletion:v21];
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __77__MFMessageContentView__performQuickReplySnapshotFadeOutAnimationIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

void __77__MFMessageContentView__performQuickReplySnapshotFadeOutAnimationIfNecessary__block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    [a1[4] removeFromSuperview];
    [a1[5] removeFromSuperview];
    v2 = [a1[6] completionBlock];
    v2[2]();

    [WeakRetained setQuickReplyAnimationContext:0];
  }
}

- (void)removeQuickReplyAnimationContextIfNecessary
{
  quickReplyAnimationContext = [(MFMessageContentView *)self quickReplyAnimationContext];
  if (quickReplyAnimationContext)
  {
    v13 = quickReplyAnimationContext;
    backgroundSnapshot = [quickReplyAnimationContext backgroundSnapshot];
    [backgroundSnapshot removeFromSuperview];

    compositionSnapshot = [v13 compositionSnapshot];
    [compositionSnapshot removeFromSuperview];

    buttonsSnapshot = [v13 buttonsSnapshot];
    [buttonsSnapshot removeFromSuperview];

    headerView = [(MFMessageContentView *)self headerView];
    [headerView setAlpha:1.0];
    [headerView setHidden:0];
    webView = [(MFMessageContentView *)self webView];
    [webView setAlpha:1.0];

    [headerView frame];
    v10 = v9;
    scrollView = [(MFMessageContentView *)self scrollView];
    [scrollView contentInset];
    [scrollView setContentInset:v10];
    completionBlock = [v13 completionBlock];
    completionBlock[2]();

    [(MFMessageContentView *)self setQuickReplyAnimationContext:0];
    quickReplyAnimationContext = v13;
  }
}

- (MFMessageContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MFMessageContentViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CGPoint)initialContentOffset
{
  x = self->_initialContentOffset.x;
  y = self->_initialContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)contentItemRectForSaveMenu
{
  x = self->_contentItemRectForSaveMenu.origin.x;
  y = self->_contentItemRectForSaveMenu.origin.y;
  width = self->_contentItemRectForSaveMenu.size.width;
  height = self->_contentItemRectForSaveMenu.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

void __42__MFMessageContentView_setContentRequest___block_invoke_237_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_0(&dword_2149C9000, "<%{public}@: %p>: Skipping content request. Content representation is nil", v4, v5);
}

- (void)webView:decidePolicyForNavigationAction:decisionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_0(&dword_2149C9000, "<%{public}@: %p>: Blocking prefs: URL from web view.", v4, v5);
}

- (void)webView:decidePolicyForNavigationAction:decisionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_0(&dword_2149C9000, "<%{public}@: %p>: Blocking file:// URL from web view.", v4, v5);
}

- (void)webView:decidePolicyForNavigationAction:decisionHandler:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  _os_log_fault_impl(&dword_2149C9000, v5, OS_LOG_TYPE_FAULT, "<%{public}@: %p>: Blocking file:// URL from web view.", v4, 0x16u);
}

- (void)_attachmentPreviewsFromData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2149C9000, a2, OS_LOG_TYPE_ERROR, "Failed to decode attachment previews: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end