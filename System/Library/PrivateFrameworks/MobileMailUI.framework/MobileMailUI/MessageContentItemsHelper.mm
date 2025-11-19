@interface MessageContentItemsHelper
+ (OS_os_log)log;
- (ContentRepresentationHandlingDelegate)representationHandler;
- (EMMailDropMetadata)mailDropBannerMetadata;
- (MessageContentItemsHelper)initWithWebView:(id)a3 contentItemHandler:(id)a4;
- (id)_futureForContentItem:(id)a3 networkUsage:(int64_t)a4 invokerID:(id)a5 previouslyInvoked:(BOOL *)a6 progress:(id *)a7;
- (id)_representationTypeForContentItem:(id)a3;
- (id)contentItemForContentID:(id)a3;
- (id)contentItemForElementID:(id)a3;
- (id)futureForContentItem:(id)a3 download:(BOOL)a4;
- (id)startDownloadForContentItem:(id)a3 userInitiated:(BOOL)a4;
- (int64_t)displayStateForContentItem:(id)a3;
- (void)_computeMailDropProperties;
- (void)_injectAttachmentViewForElementWithSourceAttributeValue:(id)a3 forContentItem:(id)a4;
- (void)_updateProgressFraction:(id)a3 forContentItem:(id)a4;
- (void)attachmentWasTappedWithElementID:(id)a3 rect:(CGRect)a4 view:(id)a5;
- (void)displayViewerForContentItem:(id)a3 rect:(CGRect)a4 view:(id)a5;
- (void)downloadAllMailDropAttachments;
- (void)inlineImageFinishedDownloading:(id)a3;
- (void)noteDidFailLoadingResourceWithURL:(id)a3;
- (void)saveContentItem:(id)a3 toDestination:(int64_t)a4;
- (void)setContentItems:(id)a3;
- (void)setDisplayState:(int64_t)a3 forContentItem:(id)a4;
- (void)setPercentCompleted:(double)a3 forContentItem:(id)a4;
- (void)showMenuForContentItem:(id)a3 rect:(CGRect)a4 view:(id)a5;
- (void)updateDragItemProvider:(id)a3 forElementID:(id)a4;
- (void)updatePDFContentItemIfNeeded:(void *)a3 contentRepresentation:;
@end

@implementation MessageContentItemsHelper

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MessageContentItemsHelper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_1 != -1)
  {
    dispatch_once(&log_onceToken_1, block);
  }

  v2 = log_log_1;

  return v2;
}

void __32__MessageContentItemsHelper_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = log_log_1;
  log_log_1 = v1;
}

- (id)_representationTypeForContentItem:(id)a3
{
  v3 = [a3 uniformTypeIdentifier];
  v4 = [v3 ef_conformsToRFC822UTType];
  v5 = MEMORY[0x277D06B98];
  if (!v4)
  {
    v5 = MEMORY[0x277D06BA8];
  }

  v6 = *v5;
  v7 = *v5;

  return v6;
}

- (MessageContentItemsHelper)initWithWebView:(id)a3 contentItemHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = MessageContentItemsHelper;
  v9 = [(MessageContentItemsHelper *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webView, a3);
    objc_storeWeak(&v10->_representationHandler, v8);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    elementIDToContentID = v10->_elementIDToContentID;
    v10->_elementIDToContentID = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    elementIDToWKAttachmentID = v10->_elementIDToWKAttachmentID;
    v10->_elementIDToWKAttachmentID = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    contentIDToTask = v10->_contentIDToTask;
    v10->_contentIDToTask = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    inlinedImageContentIDs = v10->_inlinedImageContentIDs;
    v10->_inlinedImageContentIDs = v17;

    v19 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.messageContentItemsHelperAttachments" qualityOfService:25];
    attachmentsScheduler = v10->_attachmentsScheduler;
    v10->_attachmentsScheduler = v19;

    v21 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_282716BE8];
    v22 = [v7 _remoteObjectRegistry];
    v23 = [v22 remoteObjectProxyWithInterface:v21];
    webProcessProxy = v10->_webProcessProxy;
    v10->_webProcessProxy = v23;
  }

  return v10;
}

- (void)setContentItems:(id)a3
{
  v9 = a3;
  v4 = [v9 copy];
  contentItems = self->_contentItems;
  self->_contentItems = v4;

  self->_didComputeMailDropProperties = 0;
  mailDropBannerMetadata = self->_mailDropBannerMetadata;
  self->_mailDropBannerMetadata = 0;

  self->_totalUnstartedMailDropDownloadSize = 0;
  maildropProgressHandler = self->_maildropProgressHandler;
  self->_totalMailDropDownloadSize = 0;
  self->_maildropProgressHandler = 0;

  totalMailDropProgress = self->_totalMailDropProgress;
  self->_totalMailDropProgress = 0;

  self->_allMailDropsDownloaded = 0;
}

- (id)contentItemForElementID:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_elementIDToContentID objectForKeyedSubscript:a3];
  v5 = [(MessageContentItemsHelper *)self contentItemForContentID:v4];

  return v5;
}

- (id)contentItemForContentID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(MessageContentItemsHelper *)self contentItems];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 contentID];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_computeMailDropProperties
{
  v23 = *MEMORY[0x277D85DE8];
  self->_didComputeMailDropProperties = 1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(MessageContentItemsHelper *)self contentItems];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 mailDropMetadata];
        if (v10)
        {
          if (!v4)
          {
            v11 = [MEMORY[0x277D06DA8] mailDropMetadata];
            mailDropBannerMetadata = self->_mailDropBannerMetadata;
            self->_mailDropBannerMetadata = v11;
          }

          v13 = [v10 fileSize];
          if ([v9 isAvailableLocally])
          {
            v5 += v13;
          }

          else
          {
            self->_totalUnstartedMailDropDownloadSize += v13;
          }

          [(EMMailDropMetadata *)self->_mailDropBannerMetadata merge:v10];
          ++v4;
          v6 += v13;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);

    if (v4 >= 2)
    {
      [(EMMailDropMetadata *)self->_mailDropBannerMetadata setFlags:[(EMMailDropMetadata *)self->_mailDropBannerMetadata flags]| 0x10];
    }
  }

  else
  {

    v6 = 0;
    v5 = 0;
  }

  if (self->_mailDropBannerMetadata)
  {
    [(MessageContentItemsHelper *)self setTotalMailDropDownloadSize:v6];
    v14 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:v6];
    totalMailDropProgress = self->_totalMailDropProgress;
    self->_totalMailDropProgress = v14;

    if (v5 >= v6)
    {
      self->_allMailDropsDownloaded = 1;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (EMMailDropMetadata)mailDropBannerMetadata
{
  if (!self->_didComputeMailDropProperties)
  {
    [(MessageContentItemsHelper *)self _computeMailDropProperties];
  }

  mailDropBannerMetadata = self->_mailDropBannerMetadata;

  return mailDropBannerMetadata;
}

- (void)noteDidFailLoadingResourceWithURL:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACE0] componentsWithURL:v4 resolvingAgainstBaseURL:0];
  v6 = [v5 path];
  v7 = [(MessageContentItemsHelper *)self contentItemForContentID:v6];
  if (v7)
  {
    v8 = +[MessageContentItemsHelper log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v7 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MessageContentItemsHelper noteDidFailLoadingResourceWithURL:];
    }

    v9 = [v4 absoluteString];
    [(MessageContentItemsHelper *)self _injectAttachmentViewForElementWithSourceAttributeValue:v9 forContentItem:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)attachmentWasTappedWithElementID:(id)a3 rect:(CGRect)a4 view:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v28 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = [(MessageContentItemsHelper *)self contentItemForElementID:v11];
  if (!v13)
  {
    v17 = +[MessageContentItemsHelper log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v11;
      _os_log_impl(&dword_2149C9000, v17, OS_LOG_TYPE_DEFAULT, "tapped unknown attachment %@", &v26, 0xCu);
    }

    goto LABEL_19;
  }

  v14 = +[MessageContentItemsHelper log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 contentID];
    v26 = 138412290;
    v27 = v15;
    _os_log_impl(&dword_2149C9000, v14, OS_LOG_TYPE_DEFAULT, "tapped attachment %@", &v26, 0xCu);
  }

  v16 = [(MessageContentItemsHelper *)self displayStateForContentItem:v13];
  switch(v16)
  {
    case 1:
      [(MessageContentItemsHelper *)self displayViewerForContentItem:v13 rect:v12 view:x, y, width, height];
      v17 = +[MessageContentItemsHelper log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v13 contentID];
        v26 = 138412290;
        v27 = v23;
        _os_log_impl(&dword_2149C9000, v17, OS_LOG_TYPE_DEFAULT, "attachment %@ is already downloaded", &v26, 0xCu);
      }

      goto LABEL_19;
    case 2:
      v19 = [(NSMutableDictionary *)self->_elementIDToWKAttachmentID objectForKeyedSubscript:v11];

      if (!v19)
      {
        v17 = +[MessageContentItemsHelper log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v24 = [v13 contentID];
          [(MessageContentItemsHelper *)v24 attachmentWasTappedWithElementID:v11 rect:&v26 view:v17];
        }

        goto LABEL_19;
      }

      v20 = +[MessageContentItemsHelper log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v13 contentID];
        v26 = 138412290;
        v27 = v21;
        _os_log_impl(&dword_2149C9000, v20, OS_LOG_TYPE_DEFAULT, "attachment %@ is downloadable", &v26, 0xCu);
      }

      v22 = [(MessageContentItemsHelper *)self startDownloadForContentItem:v13 userInitiated:1];
      break;
    case 3:
      v17 = +[MessageContentItemsHelper log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v13 contentID];
        v26 = 138412290;
        v27 = v18;
        _os_log_impl(&dword_2149C9000, v17, OS_LOG_TYPE_DEFAULT, "attachment %@ is downloading", &v26, 0xCu);
      }

LABEL_19:

      break;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)displayViewerForContentItem:(id)a3 rect:(CGRect)a4 view:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  if ([v11 exchangeEventUID])
  {
    v13 = [(MessageContentItemsHelper *)self representationHandler];
    [v13 showSelectedExchangeEventUID:objc_msgSend(v11 fromRect:"exchangeEventUID") view:{v12, x, y, width, height}];
  }

  else
  {
    v13 = [(MessageContentItemsHelper *)self _futureForContentItem:v11 networkUsage:0 invokerID:0 previouslyInvoked:0 progress:0];
    v14 = [MEMORY[0x277D071B8] mainThreadScheduler];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__MessageContentItemsHelper_displayViewerForContentItem_rect_view___block_invoke;
    v15[3] = &unk_2781815D0;
    v15[4] = self;
    v17 = x;
    v18 = y;
    v19 = width;
    v20 = height;
    v16 = v12;
    [v13 onScheduler:v14 addSuccessBlock:v15];
  }
}

void __67__MessageContentItemsHelper_displayViewerForContentItem_rect_view___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) representationHandler];
  [v3 showSelectedContentRepresentation:v4 fromRect:*(a1 + 40) view:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

- (void)showMenuForContentItem:(id)a3 rect:(CGRect)a4 view:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  v12 = [(MessageContentItemsHelper *)self _futureForContentItem:a3 networkUsage:0 invokerID:0 previouslyInvoked:0 progress:0];
  v13 = [MEMORY[0x277D071B8] mainThreadScheduler];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__MessageContentItemsHelper_showMenuForContentItem_rect_view___block_invoke;
  v15[3] = &unk_2781815D0;
  v15[4] = self;
  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  v14 = v11;
  v16 = v14;
  [v12 onScheduler:v13 addSuccessBlock:v15];
}

void __62__MessageContentItemsHelper_showMenuForContentItem_rect_view___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) representationHandler];
  [v3 showMenuForSelectedContentRepresentation:v4 fromRect:*(a1 + 40) view:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

- (id)futureForContentItem:(id)a3 download:(BOOL)a4
{
  if (a4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(MessageContentItemsHelper *)self _futureForContentItem:a3 networkUsage:v4 invokerID:0 previouslyInvoked:0 progress:0];

  return v5;
}

- (id)_futureForContentItem:(id)a3 networkUsage:(int64_t)a4 invokerID:(id)a5 previouslyInvoked:(BOOL *)a6 progress:(id *)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = [v12 contentID];
  if (v14)
  {
    v15 = [(NSMutableDictionary *)self->_contentIDToTask objectForKeyedSubscript:v14];
    v16 = v15;
    if (v15)
    {
      v17 = [(MessageContentItemRepresentationTask *)v15 future];
      v18 = [v17 resultIfAvailable];
      if (v18)
      {

LABEL_13:
        v28 = [(MessageContentItemRepresentationTask *)v16 hasBeenAccessedByInvokerWithID:v13];
        [(MessageContentItemRepresentationTask *)v16 addAccessedByInvokerWithID:v13];
        if (a6)
        {
          *a6 = v28;
        }

        if (a7)
        {
          *a7 = [(MessageContentItemRepresentationTask *)v16 progress];
        }

        v21 = [(MessageContentItemRepresentationTask *)v16 future];
        goto LABEL_18;
      }

      v22 = [(MessageContentItemRepresentationTask *)v16 networkUsage];

      if (v22 >= a4)
      {
        goto LABEL_13;
      }

      v23 = +[MessageContentItemsHelper log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v16;
        _os_log_impl(&dword_2149C9000, v23, OS_LOG_TYPE_DEFAULT, "Removing and re-creating task: %@", buf, 0xCu);
      }

      v24 = [(MessageContentItemRepresentationTask *)v16 progress];
      [v24 cancel];

      [(NSMutableDictionary *)self->_contentIDToTask setObject:0 forKeyedSubscript:v14];
    }

    v25 = [(MessageContentItemsHelper *)self _representationTypeForContentItem:v12];
    v16 = [[MessageContentItemRepresentationTask alloc] initWithContentItem:v12 type:v25 networkUsage:a4];
    [(NSMutableDictionary *)self->_contentIDToTask setObject:v16 forKeyedSubscript:v14];
    v26 = [(MessageContentItemRepresentationTask *)v16 future];
    v27 = [MEMORY[0x277D071B8] mainThreadScheduler];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __101__MessageContentItemsHelper__futureForContentItem_networkUsage_invokerID_previouslyInvoked_progress___block_invoke;
    v32[3] = &unk_2781815F8;
    v32[4] = self;
    v33 = v12;
    v34 = v14;
    [v26 onScheduler:v27 addFailureBlock:v32];

    [(MessageContentItemRepresentationTask *)v16 resume];
    goto LABEL_13;
  }

  v19 = +[MessageContentItemsHelper log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [v12 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    [MessageContentItemsHelper _futureForContentItem:networkUsage:invokerID:previouslyInvoked:progress:];
  }

  v20 = MEMORY[0x277D07150];
  v16 = [MEMORY[0x277D28200] ef_invalidInputError];
  v21 = [v20 futureWithError:v16];
LABEL_18:
  v29 = v21;

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __101__MessageContentItemsHelper__futureForContentItem_networkUsage_invokerID_previouslyInvoked_progress___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDisplayState:2 forContentItem:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 24);
  v3 = *(a1 + 48);

  return [v2 setObject:0 forKeyedSubscript:v3];
}

- (void)updateDragItemProvider:(id)a3 forElementID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MessageContentItemsHelper *)self contentItemForElementID:v7];
  v9 = [(MessageContentItemsHelper *)self _futureForContentItem:v8 networkUsage:0 invokerID:0 previouslyInvoked:0 progress:0];
  objc_initWeak(&location, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__MessageContentItemsHelper_updateDragItemProvider_forElementID___block_invoke;
  v11[3] = &unk_278181648;
  objc_copyWeak(&v13, &location);
  v10 = v8;
  v12 = v10;
  [v9 addSuccessBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __65__MessageContentItemsHelper_updateDragItemProvider_forElementID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) uniformTypeIdentifier];
    v6 = [v3 contentURL];
    if ([WeakRetained hasItemConformingToTypeIdentifier:v5])
    {
      [WeakRetained setDataAvailability:1 forTypeIdentifier:v5];
    }

    else
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __65__MessageContentItemsHelper_updateDragItemProvider_forElementID___block_invoke_2;
      v9[3] = &unk_278181620;
      v10 = v6;
      [WeakRetained registerFileRepresentationForTypeIdentifier:v5 dataAvailableImmediately:1 visibility:0 loadHandler:v9];
    }

    v7 = [*(a1 + 32) displayName];
    v8 = [v7 stringByDeletingPathExtension];
    [WeakRetained setSuggestedName:v8];

    [WeakRetained registerObject:v6 visibility:0];
  }
}

- (void)_injectAttachmentViewForElementWithSourceAttributeValue:(id)a3 forContentItem:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [ContentItemMarkupGenerator attachmentElementMarkupStringForContentItem:v7];
  v9 = [(MessageContentItemsHelper *)self webView];
  v13[0] = v6;
  v13[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = [v9 mcv_stringFromJavaScriptMethod:@"replaceNodeWithSrcWithAttachment" arguments:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (int64_t)displayStateForContentItem:(id)a3
{
  contentIDToTask = self->_contentIDToTask;
  v4 = [a3 contentID];
  v5 = [(NSMutableDictionary *)contentIDToTask objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 future];
    v7 = [v6 isFinished];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (void)setDisplayState:(int64_t)a3 forContentItem:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MessageContentItemsHelper *)self webView];
  v8 = [v6 contentID];
  v13[0] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = [v7 mcv_stringFromJavaScriptMethod:@"set_state_for_attachment_cid" arguments:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateProgressFraction:(id)a3 forContentItem:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v10 fractionCompleted];
  [(MessageContentItemsHelper *)self setPercentCompleted:v6 forContentItem:?];
  v7 = [v6 mailDropMetadata];

  if (v7)
  {
    if ([(MessageContentItemsHelper *)self displayStateForContentItem:v6]== 3)
    {
      v8 = [(MessageContentItemsHelper *)self maildropProgressHandler];

      if (v8)
      {
        v9 = [(MessageContentItemsHelper *)self maildropProgressHandler];
        [(NSProgress *)self->_totalMailDropProgress fractionCompleted];
        v9[2](v9, 3);
      }
    }
  }
}

- (void)setPercentCompleted:(double)a3 forContentItem:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MessageContentItemsHelper *)self webView];
  v8 = [v6 contentID];
  v13[0] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = [v7 mcv_stringFromJavaScriptMethod:@"set_progress_for_attachment_cid" arguments:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)inlineImageFinishedDownloading:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 contentID];
  if (([(NSMutableSet *)self->_inlinedImageContentIDs containsObject:v5]& 1) == 0)
  {
    [(NSMutableSet *)self->_inlinedImageContentIDs addObject:v5];
    v6 = [v4 contentID];
    v7 = MFCreateURLForContentID();

    v8 = [v4 type];
    v9 = _markupForInlineAttachment(v4, [v8 conformsToType:*MEMORY[0x277CE1E08]]);

    v10 = [(MessageContentItemsHelper *)self webView];
    v11 = [v7 absoluteString];
    v15[1] = v11;
    v15[2] = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    v13 = [v10 mcv_stringFromJavaScriptMethod:@"imageAttachmentNodeFinishedDownloading" arguments:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)startDownloadForContentItem:(id)a3 userInitiated:(BOOL)a4
{
  v4 = a4;
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v44 = 0;
  v43 = 0;
  v8 = [(MessageContentItemsHelper *)self _futureForContentItem:v6 networkUsage:v7 invokerID:@"startDownloadForContentItem" previouslyInvoked:&v44 progress:&v43];
  v9 = v43;
  v10 = [v6 dataTransferByteCount];
  if (v44 == 1)
  {
    v11 = +[MessageContentItemsHelper log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 contentID];
      *buf = 138412546;
      v46 = v12;
      v47 = 2112;
      v48 = v9;
      _os_log_impl(&dword_2149C9000, v11, OS_LOG_TYPE_DEFAULT, "Stopped downloading contentItem %@ since downloading was previously invoked with a progress of %@", buf, 0x16u);
    }
  }

  else
  {
    v13 = v10;
    if (([v6 isAvailableLocally] & 1) == 0)
    {
      [(MessageContentItemsHelper *)self setDisplayState:3 forContentItem:v6];
      v14 = NSStringFromSelector(sel_fractionCompleted);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke;
      v40[3] = &unk_278181698;
      v40[4] = self;
      v41 = v9;
      v42 = v6;
      v15 = [v41 ef_observeKeyPath:v14 options:1 autoCancelToken:0 usingBlock:v40];

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_3;
      v38[3] = &unk_2781816C0;
      v39 = v15;
      v16 = v15;
      [v8 always:v38];
    }

    v17 = [v6 mailDropMetadata];
    v18 = [v17 isPhotoArchive];

    v19 = [MEMORY[0x277D071B8] mainThreadScheduler];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_4;
    v34[3] = &unk_278181738;
    v36 = v18;
    v34[4] = self;
    v20 = v6;
    v35 = v20;
    v37 = v4;
    [v8 onScheduler:v19 addSuccessBlock:v34];

    v21 = [MEMORY[0x277D071B8] mainThreadScheduler];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_151;
    v30 = &unk_278181760;
    v22 = v20;
    v31 = v22;
    v32 = self;
    v33 = v13;
    [v8 onScheduler:v21 addFailureBlock:&v27];

    v23 = [(MessageContentItemsHelper *)self representationHandler:v27];
    [v23 didStartDownloadForContentItemWithProgress:v9];

    v24 = [v22 mailDropMetadata];

    if (v24)
    {
      self->_totalUnstartedMailDropDownloadSize -= v13;
      [(NSProgress *)self->_totalMailDropProgress addChild:v9 withPendingUnitCount:v13];
    }

    v11 = v9;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v9;
}

void __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D071B8] mainThreadScheduler];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_2;
  v4[3] = &unk_278181670;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 performBlock:v4];
}

void __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_4(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) setDisplayState:1 forContentItem:*(a1 + 40)];
  }

  if (v3 && ![*(a1 + 40) exchangeEventUID])
  {
    if (*(a1 + 48) == 1)
    {
      v4 = [objc_alloc(MEMORY[0x277D28270]) initWithName:@"com.apple.mobilemail.savingPhotos" expiration:0 preventIdleSleep:600.0];
      v5 = *(*(a1 + 32) + 56);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_5;
      v31[3] = &unk_278181710;
      v32 = v3;
      v33 = v4;
      v6 = v4;
      [v5 performBlock:v31];

      v7 = v32;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CCAA20]);
      v9 = [v3 contentURL];
      v6 = [v8 initWithURL:v9 options:2 error:0];

      if ([v6 isRegularFile])
      {
        v10 = [ContentItemMarkupGenerator isDisplayableInlineContentItem:*(a1 + 40)];
        v11 = [ContentItemMarkupGenerator isPDFContentItem:*(a1 + 40)];
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v12 = *(*(a1 + 32) + 16);
      v13 = [*(a1 + 40) contentID];
      v7 = [v12 objectForKeyedSubscript:v13];

      v14 = [*(a1 + 32) webView];
      v15 = [v14 _attachmentForIdentifier:v7];

      if (v15)
      {
        v16 = [*(a1 + 40) uniformTypeIdentifier];
        [v15 setFileWrapper:v6 contentType:v16 completion:0];

        if (v10)
        {
          [*(a1 + 32) inlineImageFinishedDownloading:*(a1 + 40)];
        }

        else if (v11)
        {
          [(MessageContentItemsHelper *)*(a1 + 32) updatePDFContentItemIfNeeded:v3 contentRepresentation:?];
        }
      }

      else
      {
        v17 = MEMORY[0x277CCACA8];
        v18 = [v7 length];
        v19 = [*(a1 + 40) uniformTypeIdentifier];
        v20 = v19;
        if (*(a1 + 49))
        {
          v21 = &stru_2826D1AD8;
        }

        else
        {
          v21 = @"not ";
        }

        v22 = [v17 stringWithFormat:@"WKAttachment is missing for an ID with length %lu, type %@, %@user initiated", v18, v19, v21];

        v23 = [MEMORY[0x277D07130] sharedReporter];
        v24 = *(a1 + 32);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        [v23 reportIssueType:v26 description:v22];

        memset(__b, 170, sizeof(__b));
        __b[8] = 0;
        *v36 = 0xE00000001;
        v37 = 1;
        v38 = getpid();
        v34 = 648;
        if (!sysctl(v36, 4u, __b, &v34, 0, 0) && (__b[8] & 0x800) != 0)
        {
          __debugbreak();
        }
      }
    }
  }

  v27 = [*(a1 + 40) mailDropMetadata];
  if (v27)
  {
    v28 = [*(a1 + 32) maildropProgressHandler];
    if (!v28)
    {
LABEL_28:

      goto LABEL_29;
    }

    v29 = [*(*(a1 + 32) + 64) completedUnitCount] < *(*(a1 + 32) + 120);

    if (!v29)
    {
      v27 = [*(a1 + 32) maildropProgressHandler];
      v27[2](v27, 1, 1.0);
      goto LABEL_28;
    }
  }

LABEL_29:

  v30 = *MEMORY[0x277D85DE8];
}

void __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_5(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D28210] archiveDirectory];
  v3 = [*(a1 + 32) contentURL];
  [v2 inputWithURL:v3];

  if (v2)
  {
    v4 = [MEMORY[0x277D28208] archive];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_6;
    v7[3] = &unk_2781816E8;
    v8 = v2;
    v9 = *(a1 + 40);
    [v4 decompressContents:v8 completion:v7];

    v5 = v8;
  }

  else
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) contentURL];
      objc_claimAutoreleasedReturnValue();
      __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_5_cold_1();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_6(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.photoLibrary" qualityOfService:17];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) scrubbedArchiveEntries];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v3)
  {
    v4 = *v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        v7 = [v6 contents];
        if ([v7 length] && (objc_msgSend(MEMORY[0x277D755B8], "imageWithData:", v7), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_7;
          v15[3] = &unk_2781816C0;
          v9 = v8;
          v16 = v9;
          [v1 performBlock:v15];
        }

        else
        {
          v9 = MFLogGeneral();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v22 = v6;
            _os_log_error_impl(&dword_2149C9000, v9, OS_LOG_TYPE_ERROR, "#Attachments Error reading extracted archive entry %@", buf, 0xCu);
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v3);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_138;
  v13[3] = &unk_2781816C0;
  v14 = *(a1 + 40);
  [v1 performBlock:v13];

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

void __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_7(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = MFCameraRollSaveImage();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_7_cold_1();
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updatePDFContentItemIfNeeded:(void *)a3 contentRepresentation:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 32);
    v8 = [v5 contentID];
    LODWORD(v7) = [v7 containsObject:v8];

    if (v7)
    {
      v9 = +[MessageContentItemsHelper log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        [v5 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [MessageContentItemsHelper updatePDFContentItemIfNeeded:contentRepresentation:];
      }
    }

    else
    {
      v9 = [v5 type];
      if (([v9 conformsToType:*MEMORY[0x277CE1E08]]& 1) != 0)
      {
        v10 = MEMORY[0x277CBEA90];
        v11 = [v6 contentURL];
        v21 = 0;
        v12 = [v10 dataWithContentsOfURL:v11 options:3 error:&v21];
        v13 = v21;

        if (v12)
        {
          v14 = _markupForInlineAttachment(v5, 1);
          v15 = objc_alloc(MEMORY[0x277D259E8]);
          v16 = [v5 contentID];
          v17 = [v15 initWithContentID:v16 uttype:v9 data:v12 additionalMarkup:v14];

          [*(a1 + 72) updateToInlinePDFAttachmentIfNeeded:v17];
        }

        else
        {
          v14 = +[MessageContentItemsHelper log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v18 = [v13 ef_publicDescription];
            v19 = [v5 ef_publicDescription];
            [(MessageContentItemsHelper *)v18 updatePDFContentItemIfNeeded:v19 contentRepresentation:buf, v14];
          }
        }
      }

      else
      {
        v13 = +[MessageContentItemsHelper log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [v5 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          [MessageContentItemsHelper updatePDFContentItemIfNeeded:contentRepresentation:];
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_151(uint64_t a1)
{
  v2 = [*(a1 + 32) mailDropMetadata];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 40) maildropProgressHandler];

    if (v4)
    {
      v5 = [*(a1 + 40) maildropProgressHandler];
      v5[2](v5, 2, 0.0);

      v6 = *(*(a1 + 40) + 64);
      v7 = [v6 completedUnitCount] - *(a1 + 48);

      [v6 setCompletedUnitCount:v7];
    }
  }
}

- (void)downloadAllMailDropAttachments
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_contentItems;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        if (([v7 isAvailableLocally] & 1) == 0)
        {
          v8 = [v7 mailDropMetadata];
          v9 = v8 == 0;

          if (!v9)
          {
            v10 = [(MessageContentItemsHelper *)self startDownloadForContentItem:v7 userInitiated:1];
          }
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)saveContentItem:(id)a3 toDestination:(int64_t)a4
{
  v5 = [(MessageContentItemsHelper *)self _futureForContentItem:a3 networkUsage:0 invokerID:0 previouslyInvoked:0 progress:0];
  v6 = [MEMORY[0x277D071B8] globalAsyncScheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__MessageContentItemsHelper_saveContentItem_toDestination___block_invoke;
  v7[3] = &__block_descriptor_40_e33_v16__0__EMContentRepresentation_8l;
  v7[4] = a4;
  [v5 onScheduler:v6 addSuccessBlock:v7];
}

void __59__MessageContentItemsHelper_saveContentItem_toDestination___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEBC0];
  v5 = NSTemporaryDirectory();
  v6 = [v4 fileURLWithPath:v5];
  v7 = [v3 contentURL];
  v8 = [v7 lastPathComponent];
  v9 = [v6 URLByAppendingPathComponent:v8];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v3 contentURL];
  v33 = 0;
  v12 = [v10 copyItemAtURL:v11 toURL:v9 error:&v33];
  v13 = v33;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = *(a1 + 32);
    v32 = 0;
    v17 = [v15 _doc_importItemAtURL:v9 toDestination:v16 error:&v32];
    v18 = v32;

    if (!v17 || v18)
    {
      v19 = +[MessageContentItemsHelper log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 32);
        *buf = 138543874;
        v35 = v9;
        v36 = 2050;
        v37 = v30;
        v38 = 2114;
        v39 = v18;
        _os_log_error_impl(&dword_2149C9000, v19, OS_LOG_TYPE_ERROR, "Failed to save url: %{public}@ to destination: %{public}ld, error: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v19 = +[MessageContentItemsHelper log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = v17;
        _os_log_impl(&dword_2149C9000, v19, OS_LOG_TYPE_DEFAULT, "Imported file to URL: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v18 = +[MessageContentItemsHelper log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = [v3 contentURL];
      *buf = 138543874;
      v35 = v20;
      v36 = 2114;
      v37 = v9;
      v38 = 2114;
      v39 = v13;
      _os_log_error_impl(&dword_2149C9000, v18, OS_LOG_TYPE_ERROR, "Failed to copy %{public}@ to %{public}@, error: %{public}@", buf, 0x20u);
    }
  }

  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [v9 path];
  v23 = [v21 fileExistsAtPath:v22];

  if (v23)
  {
    v24 = [MEMORY[0x277CCAA00] defaultManager];
    v31 = 0;
    v25 = [v24 removeItemAtURL:v9 error:&v31];
    v26 = v31;

    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    if ((v27 & 1) == 0)
    {
      v28 = +[MessageContentItemsHelper log];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __59__MessageContentItemsHelper_saveContentItem_toDestination___block_invoke_cold_1(v9, v26, v28);
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (ContentRepresentationHandlingDelegate)representationHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_representationHandler);

  return WeakRetained;
}

- (void)noteDidFailLoadingResourceWithURL:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0(&dword_2149C9000, v3, v4, "injecting attachment element, failed to load content item %{public}@", v5);
}

- (void)attachmentWasTappedWithElementID:(uint8_t *)buf rect:(os_log_t)log view:.cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2149C9000, log, OS_LOG_TYPE_ERROR, "attachment %@ is not downloadable since elementID %@ is not found in WKAttachmentID dictionary", buf, 0x16u);
}

- (void)_futureForContentItem:networkUsage:invokerID:previouslyInvoked:progress:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0(&dword_2149C9000, v3, v4, "Content item has no content ID: %{public}@", v5);
}

void __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2149C9000, v3, v4, "#Attachments Error opening zip at %@.", v5);
}

void __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_7_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0(&dword_2149C9000, v3, v4, "#Attachments Error saving Maildrop image: %{public}@", v5);
}

- (void)updatePDFContentItemIfNeeded:contentRepresentation:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0(&dword_2149C9000, v3, v4, "UTType does not conform to PDF (%{public}@)", v5);
}

- (void)updatePDFContentItemIfNeeded:(uint8_t *)buf contentRepresentation:(os_log_t)log .cold.2(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2149C9000, log, OS_LOG_TYPE_ERROR, "Failed to get data from url (%{public}@) %{public}@", buf, 0x16u);
}

- (void)updatePDFContentItemIfNeeded:contentRepresentation:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(v1, v2, 5.8381e-34);
  _os_log_impl(&dword_2149C9000, v3, OS_LOG_TYPE_DEFAULT, "Content item is already displayed inline (%{public}@)", v4, 0xCu);
}

void __59__MessageContentItemsHelper_saveContentItem_toDestination___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_2149C9000, log, OS_LOG_TYPE_ERROR, "Failed to cleanup %{public}@, error: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end