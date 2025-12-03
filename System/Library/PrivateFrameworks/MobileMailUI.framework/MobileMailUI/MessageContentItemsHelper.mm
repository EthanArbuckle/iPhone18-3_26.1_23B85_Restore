@interface MessageContentItemsHelper
+ (OS_os_log)log;
- (ContentRepresentationHandlingDelegate)representationHandler;
- (EMMailDropMetadata)mailDropBannerMetadata;
- (MessageContentItemsHelper)initWithWebView:(id)view contentItemHandler:(id)handler;
- (id)_futureForContentItem:(id)item networkUsage:(int64_t)usage invokerID:(id)d previouslyInvoked:(BOOL *)invoked progress:(id *)progress;
- (id)_representationTypeForContentItem:(id)item;
- (id)contentItemForContentID:(id)d;
- (id)contentItemForElementID:(id)d;
- (id)futureForContentItem:(id)item download:(BOOL)download;
- (id)startDownloadForContentItem:(id)item userInitiated:(BOOL)initiated;
- (int64_t)displayStateForContentItem:(id)item;
- (void)_computeMailDropProperties;
- (void)_injectAttachmentViewForElementWithSourceAttributeValue:(id)value forContentItem:(id)item;
- (void)_updateProgressFraction:(id)fraction forContentItem:(id)item;
- (void)attachmentWasTappedWithElementID:(id)d rect:(CGRect)rect view:(id)view;
- (void)displayViewerForContentItem:(id)item rect:(CGRect)rect view:(id)view;
- (void)downloadAllMailDropAttachments;
- (void)inlineImageFinishedDownloading:(id)downloading;
- (void)noteDidFailLoadingResourceWithURL:(id)l;
- (void)saveContentItem:(id)item toDestination:(int64_t)destination;
- (void)setContentItems:(id)items;
- (void)setDisplayState:(int64_t)state forContentItem:(id)item;
- (void)setPercentCompleted:(double)completed forContentItem:(id)item;
- (void)showMenuForContentItem:(id)item rect:(CGRect)rect view:(id)view;
- (void)updateDragItemProvider:(id)provider forElementID:(id)d;
- (void)updatePDFContentItemIfNeeded:(void *)needed contentRepresentation:;
@end

@implementation MessageContentItemsHelper

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MessageContentItemsHelper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (id)_representationTypeForContentItem:(id)item
{
  uniformTypeIdentifier = [item uniformTypeIdentifier];
  ef_conformsToRFC822UTType = [uniformTypeIdentifier ef_conformsToRFC822UTType];
  v5 = MEMORY[0x277D06B98];
  if (!ef_conformsToRFC822UTType)
  {
    v5 = MEMORY[0x277D06BA8];
  }

  v6 = *v5;
  v7 = *v5;

  return v6;
}

- (MessageContentItemsHelper)initWithWebView:(id)view contentItemHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  v26.receiver = self;
  v26.super_class = MessageContentItemsHelper;
  v9 = [(MessageContentItemsHelper *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webView, view);
    objc_storeWeak(&v10->_representationHandler, handlerCopy);
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
    _remoteObjectRegistry = [viewCopy _remoteObjectRegistry];
    v23 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v21];
    webProcessProxy = v10->_webProcessProxy;
    v10->_webProcessProxy = v23;
  }

  return v10;
}

- (void)setContentItems:(id)items
{
  itemsCopy = items;
  v4 = [itemsCopy copy];
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

- (id)contentItemForElementID:(id)d
{
  v4 = [(NSMutableDictionary *)self->_elementIDToContentID objectForKeyedSubscript:d];
  v5 = [(MessageContentItemsHelper *)self contentItemForContentID:v4];

  return v5;
}

- (id)contentItemForContentID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    contentItems = [(MessageContentItemsHelper *)self contentItems];
    v6 = [contentItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(contentItems);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          contentID = [v9 contentID];
          v11 = [contentID isEqualToString:dCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [contentItems countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        mailDropMetadata = [v9 mailDropMetadata];
        if (mailDropMetadata)
        {
          if (!v4)
          {
            mailDropMetadata2 = [MEMORY[0x277D06DA8] mailDropMetadata];
            mailDropBannerMetadata = self->_mailDropBannerMetadata;
            self->_mailDropBannerMetadata = mailDropMetadata2;
          }

          fileSize = [mailDropMetadata fileSize];
          if ([v9 isAvailableLocally])
          {
            v5 += fileSize;
          }

          else
          {
            self->_totalUnstartedMailDropDownloadSize += fileSize;
          }

          [(EMMailDropMetadata *)self->_mailDropBannerMetadata merge:mailDropMetadata];
          ++v4;
          v6 += fileSize;
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

- (void)noteDidFailLoadingResourceWithURL:(id)l
{
  v11 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  path = [v5 path];
  v7 = [(MessageContentItemsHelper *)self contentItemForContentID:path];
  if (v7)
  {
    v8 = +[MessageContentItemsHelper log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v7 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MessageContentItemsHelper noteDidFailLoadingResourceWithURL:];
    }

    absoluteString = [lCopy absoluteString];
    [(MessageContentItemsHelper *)self _injectAttachmentViewForElementWithSourceAttributeValue:absoluteString forContentItem:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)attachmentWasTappedWithElementID:(id)d rect:(CGRect)rect view:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  viewCopy = view;
  v13 = [(MessageContentItemsHelper *)self contentItemForElementID:dCopy];
  if (!v13)
  {
    v17 = +[MessageContentItemsHelper log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = dCopy;
      _os_log_impl(&dword_2149C9000, v17, OS_LOG_TYPE_DEFAULT, "tapped unknown attachment %@", &v26, 0xCu);
    }

    goto LABEL_19;
  }

  v14 = +[MessageContentItemsHelper log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    contentID = [v13 contentID];
    v26 = 138412290;
    v27 = contentID;
    _os_log_impl(&dword_2149C9000, v14, OS_LOG_TYPE_DEFAULT, "tapped attachment %@", &v26, 0xCu);
  }

  v16 = [(MessageContentItemsHelper *)self displayStateForContentItem:v13];
  switch(v16)
  {
    case 1:
      [(MessageContentItemsHelper *)self displayViewerForContentItem:v13 rect:viewCopy view:x, y, width, height];
      v17 = +[MessageContentItemsHelper log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        contentID2 = [v13 contentID];
        v26 = 138412290;
        v27 = contentID2;
        _os_log_impl(&dword_2149C9000, v17, OS_LOG_TYPE_DEFAULT, "attachment %@ is already downloaded", &v26, 0xCu);
      }

      goto LABEL_19;
    case 2:
      v19 = [(NSMutableDictionary *)self->_elementIDToWKAttachmentID objectForKeyedSubscript:dCopy];

      if (!v19)
      {
        v17 = +[MessageContentItemsHelper log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          contentID3 = [v13 contentID];
          [(MessageContentItemsHelper *)contentID3 attachmentWasTappedWithElementID:dCopy rect:&v26 view:v17];
        }

        goto LABEL_19;
      }

      v20 = +[MessageContentItemsHelper log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        contentID4 = [v13 contentID];
        v26 = 138412290;
        v27 = contentID4;
        _os_log_impl(&dword_2149C9000, v20, OS_LOG_TYPE_DEFAULT, "attachment %@ is downloadable", &v26, 0xCu);
      }

      v22 = [(MessageContentItemsHelper *)self startDownloadForContentItem:v13 userInitiated:1];
      break;
    case 3:
      v17 = +[MessageContentItemsHelper log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        contentID5 = [v13 contentID];
        v26 = 138412290;
        v27 = contentID5;
        _os_log_impl(&dword_2149C9000, v17, OS_LOG_TYPE_DEFAULT, "attachment %@ is downloading", &v26, 0xCu);
      }

LABEL_19:

      break;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)displayViewerForContentItem:(id)item rect:(CGRect)rect view:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  itemCopy = item;
  viewCopy = view;
  if ([itemCopy exchangeEventUID])
  {
    representationHandler = [(MessageContentItemsHelper *)self representationHandler];
    [representationHandler showSelectedExchangeEventUID:objc_msgSend(itemCopy fromRect:"exchangeEventUID") view:{viewCopy, x, y, width, height}];
  }

  else
  {
    representationHandler = [(MessageContentItemsHelper *)self _futureForContentItem:itemCopy networkUsage:0 invokerID:0 previouslyInvoked:0 progress:0];
    mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__MessageContentItemsHelper_displayViewerForContentItem_rect_view___block_invoke;
    v15[3] = &unk_2781815D0;
    v15[4] = self;
    v17 = x;
    v18 = y;
    v19 = width;
    v20 = height;
    v16 = viewCopy;
    [representationHandler onScheduler:mainThreadScheduler addSuccessBlock:v15];
  }
}

void __67__MessageContentItemsHelper_displayViewerForContentItem_rect_view___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) representationHandler];
  [v3 showSelectedContentRepresentation:v4 fromRect:*(a1 + 40) view:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

- (void)showMenuForContentItem:(id)item rect:(CGRect)rect view:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  v12 = [(MessageContentItemsHelper *)self _futureForContentItem:item networkUsage:0 invokerID:0 previouslyInvoked:0 progress:0];
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__MessageContentItemsHelper_showMenuForContentItem_rect_view___block_invoke;
  v15[3] = &unk_2781815D0;
  v15[4] = self;
  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  v14 = viewCopy;
  v16 = v14;
  [v12 onScheduler:mainThreadScheduler addSuccessBlock:v15];
}

void __62__MessageContentItemsHelper_showMenuForContentItem_rect_view___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) representationHandler];
  [v3 showMenuForSelectedContentRepresentation:v4 fromRect:*(a1 + 40) view:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

- (id)futureForContentItem:(id)item download:(BOOL)download
{
  if (download)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(MessageContentItemsHelper *)self _futureForContentItem:item networkUsage:v4 invokerID:0 previouslyInvoked:0 progress:0];

  return v5;
}

- (id)_futureForContentItem:(id)item networkUsage:(int64_t)usage invokerID:(id)d previouslyInvoked:(BOOL *)invoked progress:(id *)progress
{
  v37 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  dCopy = d;
  contentID = [itemCopy contentID];
  if (contentID)
  {
    v15 = [(NSMutableDictionary *)self->_contentIDToTask objectForKeyedSubscript:contentID];
    ef_invalidInputError = v15;
    if (v15)
    {
      future = [(MessageContentItemRepresentationTask *)v15 future];
      resultIfAvailable = [future resultIfAvailable];
      if (resultIfAvailable)
      {

LABEL_13:
        v28 = [(MessageContentItemRepresentationTask *)ef_invalidInputError hasBeenAccessedByInvokerWithID:dCopy];
        [(MessageContentItemRepresentationTask *)ef_invalidInputError addAccessedByInvokerWithID:dCopy];
        if (invoked)
        {
          *invoked = v28;
        }

        if (progress)
        {
          *progress = [(MessageContentItemRepresentationTask *)ef_invalidInputError progress];
        }

        future2 = [(MessageContentItemRepresentationTask *)ef_invalidInputError future];
        goto LABEL_18;
      }

      networkUsage = [(MessageContentItemRepresentationTask *)ef_invalidInputError networkUsage];

      if (networkUsage >= usage)
      {
        goto LABEL_13;
      }

      v23 = +[MessageContentItemsHelper log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = ef_invalidInputError;
        _os_log_impl(&dword_2149C9000, v23, OS_LOG_TYPE_DEFAULT, "Removing and re-creating task: %@", buf, 0xCu);
      }

      progress = [(MessageContentItemRepresentationTask *)ef_invalidInputError progress];
      [progress cancel];

      [(NSMutableDictionary *)self->_contentIDToTask setObject:0 forKeyedSubscript:contentID];
    }

    v25 = [(MessageContentItemsHelper *)self _representationTypeForContentItem:itemCopy];
    ef_invalidInputError = [[MessageContentItemRepresentationTask alloc] initWithContentItem:itemCopy type:v25 networkUsage:usage];
    [(NSMutableDictionary *)self->_contentIDToTask setObject:ef_invalidInputError forKeyedSubscript:contentID];
    future3 = [(MessageContentItemRepresentationTask *)ef_invalidInputError future];
    mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __101__MessageContentItemsHelper__futureForContentItem_networkUsage_invokerID_previouslyInvoked_progress___block_invoke;
    v32[3] = &unk_2781815F8;
    v32[4] = self;
    v33 = itemCopy;
    v34 = contentID;
    [future3 onScheduler:mainThreadScheduler addFailureBlock:v32];

    [(MessageContentItemRepresentationTask *)ef_invalidInputError resume];
    goto LABEL_13;
  }

  v19 = +[MessageContentItemsHelper log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [itemCopy ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    [MessageContentItemsHelper _futureForContentItem:networkUsage:invokerID:previouslyInvoked:progress:];
  }

  v20 = MEMORY[0x277D07150];
  ef_invalidInputError = [MEMORY[0x277D28200] ef_invalidInputError];
  future2 = [v20 futureWithError:ef_invalidInputError];
LABEL_18:
  v29 = future2;

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

- (void)updateDragItemProvider:(id)provider forElementID:(id)d
{
  providerCopy = provider;
  dCopy = d;
  v8 = [(MessageContentItemsHelper *)self contentItemForElementID:dCopy];
  v9 = [(MessageContentItemsHelper *)self _futureForContentItem:v8 networkUsage:0 invokerID:0 previouslyInvoked:0 progress:0];
  objc_initWeak(&location, providerCopy);
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

- (void)_injectAttachmentViewForElementWithSourceAttributeValue:(id)value forContentItem:(id)item
{
  v13[2] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  itemCopy = item;
  v8 = [ContentItemMarkupGenerator attachmentElementMarkupStringForContentItem:itemCopy];
  webView = [(MessageContentItemsHelper *)self webView];
  v13[0] = valueCopy;
  v13[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = [webView mcv_stringFromJavaScriptMethod:@"replaceNodeWithSrcWithAttachment" arguments:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (int64_t)displayStateForContentItem:(id)item
{
  contentIDToTask = self->_contentIDToTask;
  contentID = [item contentID];
  v5 = [(NSMutableDictionary *)contentIDToTask objectForKeyedSubscript:contentID];

  if (v5)
  {
    future = [v5 future];
    isFinished = [future isFinished];

    if (isFinished)
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

- (void)setDisplayState:(int64_t)state forContentItem:(id)item
{
  v13[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  webView = [(MessageContentItemsHelper *)self webView];
  contentID = [itemCopy contentID];
  v13[0] = contentID;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = [webView mcv_stringFromJavaScriptMethod:@"set_state_for_attachment_cid" arguments:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateProgressFraction:(id)fraction forContentItem:(id)item
{
  fractionCopy = fraction;
  itemCopy = item;
  [fractionCopy fractionCompleted];
  [(MessageContentItemsHelper *)self setPercentCompleted:itemCopy forContentItem:?];
  mailDropMetadata = [itemCopy mailDropMetadata];

  if (mailDropMetadata)
  {
    if ([(MessageContentItemsHelper *)self displayStateForContentItem:itemCopy]== 3)
    {
      maildropProgressHandler = [(MessageContentItemsHelper *)self maildropProgressHandler];

      if (maildropProgressHandler)
      {
        maildropProgressHandler2 = [(MessageContentItemsHelper *)self maildropProgressHandler];
        [(NSProgress *)self->_totalMailDropProgress fractionCompleted];
        maildropProgressHandler2[2](maildropProgressHandler2, 3);
      }
    }
  }
}

- (void)setPercentCompleted:(double)completed forContentItem:(id)item
{
  v13[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  webView = [(MessageContentItemsHelper *)self webView];
  contentID = [itemCopy contentID];
  v13[0] = contentID;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:completed];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = [webView mcv_stringFromJavaScriptMethod:@"set_progress_for_attachment_cid" arguments:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)inlineImageFinishedDownloading:(id)downloading
{
  v15[3] = *MEMORY[0x277D85DE8];
  downloadingCopy = downloading;
  contentID = [downloadingCopy contentID];
  if (([(NSMutableSet *)self->_inlinedImageContentIDs containsObject:contentID]& 1) == 0)
  {
    [(NSMutableSet *)self->_inlinedImageContentIDs addObject:contentID];
    contentID2 = [downloadingCopy contentID];
    v7 = MFCreateURLForContentID();

    type = [downloadingCopy type];
    v9 = _markupForInlineAttachment(downloadingCopy, [type conformsToType:*MEMORY[0x277CE1E08]]);

    webView = [(MessageContentItemsHelper *)self webView];
    absoluteString = [v7 absoluteString];
    v15[1] = absoluteString;
    v15[2] = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    v13 = [webView mcv_stringFromJavaScriptMethod:@"imageAttachmentNodeFinishedDownloading" arguments:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)startDownloadForContentItem:(id)item userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v49 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (initiatedCopy)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v44 = 0;
  v43 = 0;
  v8 = [(MessageContentItemsHelper *)self _futureForContentItem:itemCopy networkUsage:v7 invokerID:@"startDownloadForContentItem" previouslyInvoked:&v44 progress:&v43];
  v9 = v43;
  dataTransferByteCount = [itemCopy dataTransferByteCount];
  if (v44 == 1)
  {
    v11 = +[MessageContentItemsHelper log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      contentID = [itemCopy contentID];
      *buf = 138412546;
      v46 = contentID;
      v47 = 2112;
      v48 = v9;
      _os_log_impl(&dword_2149C9000, v11, OS_LOG_TYPE_DEFAULT, "Stopped downloading contentItem %@ since downloading was previously invoked with a progress of %@", buf, 0x16u);
    }
  }

  else
  {
    v13 = dataTransferByteCount;
    if (([itemCopy isAvailableLocally] & 1) == 0)
    {
      [(MessageContentItemsHelper *)self setDisplayState:3 forContentItem:itemCopy];
      v14 = NSStringFromSelector(sel_fractionCompleted);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke;
      v40[3] = &unk_278181698;
      v40[4] = self;
      v41 = v9;
      v42 = itemCopy;
      v15 = [v41 ef_observeKeyPath:v14 options:1 autoCancelToken:0 usingBlock:v40];

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_3;
      v38[3] = &unk_2781816C0;
      v39 = v15;
      v16 = v15;
      [v8 always:v38];
    }

    mailDropMetadata = [itemCopy mailDropMetadata];
    isPhotoArchive = [mailDropMetadata isPhotoArchive];

    mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_4;
    v34[3] = &unk_278181738;
    v36 = isPhotoArchive;
    v34[4] = self;
    v20 = itemCopy;
    v35 = v20;
    v37 = initiatedCopy;
    [v8 onScheduler:mainThreadScheduler addSuccessBlock:v34];

    mainThreadScheduler2 = [MEMORY[0x277D071B8] mainThreadScheduler];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __71__MessageContentItemsHelper_startDownloadForContentItem_userInitiated___block_invoke_151;
    v30 = &unk_278181760;
    v22 = v20;
    v31 = v22;
    selfCopy = self;
    v33 = v13;
    [v8 onScheduler:mainThreadScheduler2 addFailureBlock:&v27];

    v23 = [(MessageContentItemsHelper *)self representationHandler:v27];
    [v23 didStartDownloadForContentItemWithProgress:v9];

    mailDropMetadata2 = [v22 mailDropMetadata];

    if (mailDropMetadata2)
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

- (void)updatePDFContentItemIfNeeded:(void *)needed contentRepresentation:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  neededCopy = needed;
  if (self)
  {
    v7 = *(self + 32);
    contentID = [v5 contentID];
    LODWORD(v7) = [v7 containsObject:contentID];

    if (v7)
    {
      type = +[MessageContentItemsHelper log];
      if (os_log_type_enabled(type, OS_LOG_TYPE_DEFAULT))
      {
        [v5 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [MessageContentItemsHelper updatePDFContentItemIfNeeded:contentRepresentation:];
      }
    }

    else
    {
      type = [v5 type];
      if (([type conformsToType:*MEMORY[0x277CE1E08]]& 1) != 0)
      {
        v10 = MEMORY[0x277CBEA90];
        contentURL = [neededCopy contentURL];
        v21 = 0;
        v12 = [v10 dataWithContentsOfURL:contentURL options:3 error:&v21];
        v13 = v21;

        if (v12)
        {
          v14 = _markupForInlineAttachment(v5, 1);
          v15 = objc_alloc(MEMORY[0x277D259E8]);
          contentID2 = [v5 contentID];
          v17 = [v15 initWithContentID:contentID2 uttype:type data:v12 additionalMarkup:v14];

          [*(self + 72) updateToInlinePDFAttachmentIfNeeded:v17];
        }

        else
        {
          v14 = +[MessageContentItemsHelper log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            ef_publicDescription = [v13 ef_publicDescription];
            ef_publicDescription2 = [v5 ef_publicDescription];
            [(MessageContentItemsHelper *)ef_publicDescription updatePDFContentItemIfNeeded:ef_publicDescription2 contentRepresentation:buf, v14];
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
          mailDropMetadata = [v7 mailDropMetadata];
          v9 = mailDropMetadata == 0;

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

- (void)saveContentItem:(id)item toDestination:(int64_t)destination
{
  v5 = [(MessageContentItemsHelper *)self _futureForContentItem:item networkUsage:0 invokerID:0 previouslyInvoked:0 progress:0];
  globalAsyncScheduler = [MEMORY[0x277D071B8] globalAsyncScheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__MessageContentItemsHelper_saveContentItem_toDestination___block_invoke;
  v7[3] = &__block_descriptor_40_e33_v16__0__EMContentRepresentation_8l;
  v7[4] = destination;
  [v5 onScheduler:globalAsyncScheduler addSuccessBlock:v7];
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