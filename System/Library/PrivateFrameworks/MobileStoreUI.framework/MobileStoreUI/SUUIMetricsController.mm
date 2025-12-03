@interface SUUIMetricsController
+ (void)flushImmediately;
- (BOOL)canRecordEventWithType:(id)type;
- (NSNumber)accountIdentifier;
- (SUUIMetricsController)initWithGlobalConfiguration:(id)configuration;
- (SUUIMetricsImpressionSession)activeImpressionsSession;
- (id)clickEventWithItem:(id)item locationPosition:(int64_t)position;
- (id)itemOfferClickEventWithItem:(id)item locationPosition:(int64_t)position;
- (id)locationWithPageComponent:(id)component;
- (id)performActionForItem:(id)item;
- (id)performActionForItem:(id)item clientContext:(id)context;
- (id)performActionForItem:(id)item offer:(id)offer clientContext:(id)context;
- (id)performActionForItem:(id)item offer:(id)offer clientContext:(id)context completionBlock:(id)block;
- (id)performActionForSoftwareItem:(id)item offer:(id)offer clientContext:(id)context completionBlock:(id)block;
- (void)_insertEvent:(id)event;
- (void)_recordActiveImpressions;
- (void)_waitUntilRecordingComplete;
- (void)closeImpressionsSession;
- (void)dealloc;
- (void)flushImmediately;
- (void)pingURLs:(id)ls withClientContext:(id)context;
- (void)recordBuyConfirmedEventsForItems:(id)items purchaseResponses:(id)responses;
- (void)recordEvent:(id)event;
- (void)setPageConfiguration:(id)configuration;
@end

@implementation SUUIMetricsController

- (SUUIMetricsController)initWithGlobalConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = SUUIMetricsController;
  v6 = [(SUUIMetricsController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_globalConfiguration, configuration);
    databasePath = [MEMORY[0x277D69B98] databasePath];
    IsLocalWritable = SSFileIsLocalWritable();

    v10 = 0x277D69B88;
    if (!IsLocalWritable)
    {
      v10 = 0x277D69B78;
    }

    v11 = objc_alloc_init(*v10);
    controller = v7->_controller;
    v7->_controller = v11;

    [(SSMetricsController *)v7->_controller setGlobalConfiguration:configurationCopy];
    [(SSMetricsConfiguration *)v7->_globalConfiguration reportingFrequency];
    v7->_flushesImmediately = v13 == 0.0;
    v7->_impressionsEnabled = [(SUUIMetricsController *)v7 canRecordEventWithType:*MEMORY[0x277D6A480]];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    v7->_loggingEnabled = [mEMORY[0x277D69B38] shouldLog];

    v15 = +[SUUIMetricsFlushTimer sharedTimer];
    [v15 addMetricsController:v7];
  }

  return v7;
}

- (void)dealloc
{
  impressionsTimer = self->_impressionsTimer;
  if (impressionsTimer)
  {
    dispatch_source_cancel(impressionsTimer);
  }

  v4 = +[SUUIMetricsFlushTimer sharedTimer];
  [v4 removeMetricsController:self];

  v5.receiver = self;
  v5.super_class = SUUIMetricsController;
  [(SUUIMetricsController *)&v5 dealloc];
}

- (NSNumber)accountIdentifier
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  uniqueIdentifier = [activeAccount uniqueIdentifier];

  return uniqueIdentifier;
}

- (SUUIMetricsImpressionSession)activeImpressionsSession
{
  if (self->_activeImpressionsSession || self->_impressionsEnabled && (v7 = objc_alloc_init(SUUIMetricsImpressionSession), activeImpressionsSession = self->_activeImpressionsSession, self->_activeImpressionsSession = v7, activeImpressionsSession, self->_activeImpressionsSession))
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    applicationState = [mEMORY[0x277D75128] applicationState];

    if (!applicationState)
    {
      impressionsTimer = self->_impressionsTimer;
      if (impressionsTimer)
      {
        v6 = dispatch_time(0, 2000000000);
        dispatch_source_set_timer(impressionsTimer, v6, 0, 0);
      }

      else
      {
        objc_initWeak(&location, self);
        v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
        v10 = self->_impressionsTimer;
        self->_impressionsTimer = v9;

        v11 = self->_impressionsTimer;
        v12 = dispatch_time(0, 2000000000);
        dispatch_source_set_timer(v11, v12, 0, 0);
        v13 = self->_impressionsTimer;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __49__SUUIMetricsController_activeImpressionsSession__block_invoke;
        v16[3] = &unk_2798F67A0;
        objc_copyWeak(&v17, &location);
        dispatch_source_set_event_handler(v13, v16);
        dispatch_resume(self->_impressionsTimer);
        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }
    }
  }

  v14 = self->_activeImpressionsSession;

  return v14;
}

void __49__SUUIMetricsController_activeImpressionsSession__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained closeImpressionsSession];
}

- (BOOL)canRecordEventWithType:(id)type
{
  typeCopy = type;
  if (([(SSMetricsConfiguration *)self->_globalConfiguration isEventTypeBlacklisted:typeCopy]& 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [(SSMetricsConfiguration *)self->_pageConfiguration isEventTypeBlacklisted:typeCopy]^ 1;
  }

  return v5;
}

- (id)clickEventWithItem:(id)item locationPosition:(int64_t)position
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D69B68];
  itemCopy = item;
  v8 = objc_alloc_init(v6);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(itemCopy, "itemIdentifier")];
  [v8 setTargetIdentifier:v9];

  v10 = *MEMORY[0x277D6A4E0];
  [v8 setTargetType:*MEMORY[0x277D6A4E0]];
  productPageURLString = [itemCopy productPageURLString];
  [v8 setTargetURL:productPageURLString];

  v12 = [(SUUIMetricsController *)self locationWithPosition:position type:v10 fieldData:itemCopy];

  if (v12)
  {
    v15[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v8 setLocationWithEventLocations:v13];
  }

  return v8;
}

- (void)closeImpressionsSession
{
  [(SUUIMetricsController *)self _recordActiveImpressions];
  if (self->_flushesImmediately)
  {

    [(SUUIMetricsController *)self flushImmediately];
  }
}

- (void)flushImmediately
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v4 = *MEMORY[0x277D767B0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__SUUIMetricsController_flushImmediately__block_invoke;
  v12[3] = &unk_2798F6C18;
  v5 = mEMORY[0x277D75128];
  v13 = v5;
  v14 = v4;
  v6 = [v5 beginBackgroundTaskWithName:@"SUUIMetricsController.flushImmediately" expirationHandler:v12];
  [(SUUIMetricsController *)self _recordActiveImpressions];
  controller = self->_controller;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__SUUIMetricsController_flushImmediately__block_invoke_2;
  v9[3] = &unk_2798F7328;
  v10 = v5;
  v11 = v6;
  v8 = v5;
  [(SSMetricsController *)controller flushUnreportedEventsWithCompletionHandler:v9];
}

+ (void)flushImmediately
{
  v2 = +[SUUIMetricsFlushTimer sharedTimer];
  [v2 flushAllMetricsControllers];
}

- (id)itemOfferClickEventWithItem:(id)item locationPosition:(int64_t)position
{
  v20[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = objc_alloc_init(MEMORY[0x277D69B68]);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(itemCopy, "itemIdentifier")];
  [v7 setTargetIdentifier:v8];

  v9 = *MEMORY[0x277D6A4D0];
  [v7 setTargetType:*MEMORY[0x277D6A4D0]];
  v10 = +[SUUIItemStateCenter defaultCenter];
  v11 = [v10 metricsActionTypeForItem:itemCopy];

  [v7 setActionType:v11];
  if ([v11 isEqualToString:*MEMORY[0x277D6A450]])
  {
    bundleIdentifier = [itemCopy bundleIdentifier];
    [v7 setActionDetails:bundleIdentifier];
LABEL_6:

    goto LABEL_7;
  }

  if ([v11 isEqualToString:*MEMORY[0x277D6A438]])
  {
    primaryItemOffer = [itemCopy primaryItemOffer];
    bundleIdentifier = [primaryItemOffer actionParameters];

    if (bundleIdentifier)
    {
      v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{bundleIdentifier, @"buyParams", 0}];
      [v7 setActionDetails:v14];
    }

    goto LABEL_6;
  }

LABEL_7:
  v15 = [(SUUIMetricsController *)self locationWithPosition:0 type:v9 fieldData:0];
  v16 = [(SUUIMetricsController *)self locationWithPosition:position type:*MEMORY[0x277D6A4E0] fieldData:itemCopy];
  v17 = v16;
  if (v15 && v16)
  {
    v20[0] = v15;
    v20[1] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [v7 setLocationWithEventLocations:v18];
  }

  return v7;
}

- (id)locationWithPageComponent:(id)component
{
  controller = self->_controller;
  componentCopy = component;
  metricsLocationPosition = [componentCopy metricsLocationPosition];
  metricsElementName = [componentCopy metricsElementName];
  v7 = [(SSMetricsController *)controller locationWithPosition:metricsLocationPosition type:metricsElementName fieldData:componentCopy];

  return v7;
}

- (id)performActionForItem:(id)item
{
  itemCopy = item;
  v5 = SUUIItemStateCenterUseAppstoredPurchases(itemCopy);
  primaryItemOffer = [itemCopy primaryItemOffer];
  if (v5)
  {
    [(SUUIMetricsController *)self performActionForSoftwareItem:itemCopy offer:primaryItemOffer clientContext:0 completionBlock:0];
  }

  else
  {
    [(SUUIMetricsController *)self performActionForItem:itemCopy offer:primaryItemOffer clientContext:0 completionBlock:0];
  }
  v7 = ;

  return v7;
}

- (id)performActionForItem:(id)item clientContext:(id)context
{
  contextCopy = context;
  itemCopy = item;
  v8 = SUUIItemStateCenterUseAppstoredPurchases(itemCopy);
  primaryItemOffer = [itemCopy primaryItemOffer];
  if (v8)
  {
    [(SUUIMetricsController *)self performActionForSoftwareItem:itemCopy offer:primaryItemOffer clientContext:contextCopy completionBlock:0];
  }

  else
  {
    [(SUUIMetricsController *)self performActionForItem:itemCopy offer:primaryItemOffer clientContext:contextCopy completionBlock:0];
  }
  v10 = ;

  return v10;
}

- (id)performActionForItem:(id)item offer:(id)offer clientContext:(id)context
{
  contextCopy = context;
  offerCopy = offer;
  itemCopy = item;
  if (SUUIItemStateCenterUseAppstoredPurchases(itemCopy))
  {
    [(SUUIMetricsController *)self performActionForSoftwareItem:itemCopy offer:offerCopy clientContext:contextCopy completionBlock:0];
  }

  else
  {
    [(SUUIMetricsController *)self performActionForItem:itemCopy offer:offerCopy clientContext:contextCopy completionBlock:0];
  }
  v11 = ;

  return v11;
}

- (id)performActionForItem:(id)item offer:(id)offer clientContext:(id)context completionBlock:(id)block
{
  blockCopy = block;
  v11 = MEMORY[0x277D69BB8];
  contextCopy = context;
  offerCopy = offer;
  itemCopy = item;
  v15 = objc_alloc_init(v11);
  itemIdentifier = [itemCopy itemIdentifier];
  v17 = +[SUUIItemStateCenter defaultCenter];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __82__SUUIMetricsController_performActionForItem_offer_clientContext_completionBlock___block_invoke;
  v22[3] = &unk_2798F7350;
  v23 = v15;
  selfCopy = self;
  v25 = blockCopy;
  v26 = itemIdentifier;
  v18 = blockCopy;
  v19 = v15;
  v20 = [v17 performActionForItem:itemCopy offer:offerCopy clientContext:contextCopy completionBlock:v22];

  return v20;
}

void __82__SUUIMetricsController_performActionForItem_offer_clientContext_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 transactionIdentifierForItemIdentifier:*(a1 + 56)];
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__SUUIMetricsController_performActionForItem_offer_clientContext_completionBlock___block_invoke_2;
    v8[3] = &unk_2798F70E0;
    v9 = *(a1 + 32);
    v10 = v3;
    v5 = v4;
    v6 = *(a1 + 40);
    v11 = v5;
    v12 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

uint64_t __82__SUUIMetricsController_performActionForItem_offer_clientContext_completionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addFieldsFromPurchaseResponse:*(a1 + 40)];
  [*(a1 + 32) setTransactionIdentifier:*(a1 + 48)];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);

  return [v2 recordEvent:v3];
}

- (id)performActionForSoftwareItem:(id)item offer:(id)offer clientContext:(id)context completionBlock:(id)block
{
  blockCopy = block;
  v11 = MEMORY[0x277D69BB8];
  contextCopy = context;
  offerCopy = offer;
  itemCopy = item;
  v15 = objc_alloc_init(v11);
  itemIdentifier = [itemCopy itemIdentifier];
  v17 = +[SUUIItemStateCenter defaultCenter];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __90__SUUIMetricsController_performActionForSoftwareItem_offer_clientContext_completionBlock___block_invoke;
  v22[3] = &unk_2798F7378;
  v23 = v15;
  selfCopy = self;
  v25 = blockCopy;
  v26 = itemIdentifier;
  v18 = blockCopy;
  v19 = v15;
  v20 = [v17 performActionForSoftwareItem:itemCopy offer:offerCopy clientContext:contextCopy completionBlock:v22];

  return v20;
}

void __90__SUUIMetricsController_performActionForSoftwareItem_offer_clientContext_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 transactionIdentifierForItemIdentifier:*(a1 + 56)];
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __90__SUUIMetricsController_performActionForSoftwareItem_offer_clientContext_completionBlock___block_invoke_2;
    v8[3] = &unk_2798F70E0;
    v9 = *(a1 + 32);
    v10 = v3;
    v5 = v4;
    v6 = *(a1 + 40);
    v11 = v5;
    v12 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

uint64_t __90__SUUIMetricsController_performActionForSoftwareItem_offer_clientContext_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) responseMetrics];
  [v2 addPropertiesWithDictionary:v3];

  [*(a1 + 40) requestStartTime];
  if (v4 > 2.22044605e-16)
  {
    [*(a1 + 32) setRequestStartTime:?];
  }

  [*(a1 + 40) responseEndTime];
  if (v5 > 2.22044605e-16)
  {
    [*(a1 + 32) setResponseEndTime:?];
  }

  [*(a1 + 40) responseStartTime];
  if (v6 > 2.22044605e-16)
  {
    [*(a1 + 32) setResponseStartTime:?];
  }

  [*(a1 + 32) setTransactionIdentifier:*(a1 + 48)];
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);

  return [v7 recordEvent:v8];
}

- (void)pingURLs:(id)ls withClientContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  contextCopy = context;
  if ([lsCopy count])
  {
    if (!pingURLs_withClientContext__sPingQueue)
    {
      v7 = objc_alloc_init(MEMORY[0x277CCABD8]);
      v8 = pingURLs_withClientContext__sPingQueue;
      pingURLs_withClientContext__sPingQueue = v7;

      [pingURLs_withClientContext__sPingQueue setMaxConcurrentOperationCount:1];
      [pingURLs_withClientContext__sPingQueue setName:@"com.apple.StoreServices.SUUIMetricsController.ping"];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = lsCopy;
    v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:*(*(&v17 + 1) + 8 * i) cachePolicy:1 timeoutInterval:20.0];
          v14 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURLRequest:v13];
          [v14 setQueuePriority:-8];
          [v14 setRecordsMetrics:0];
          v15 = [contextCopy valueForConfigurationKey:@"sfsuffix"];
          [v14 setStoreFrontSuffix:v15];

          [pingURLs_withClientContext__sPingQueue addOperation:v14];
        }

        v10 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)recordBuyConfirmedEventsForItems:(id)items purchaseResponses:(id)responses
{
  v32 = *MEMORY[0x277D85DE8];
  obj = items;
  responsesCopy = responses;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = responsesCopy;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * v14);
            v16 = [v15 transactionIdentifierForItemIdentifier:{objc_msgSend(v9, "itemIdentifier")}];
            if (v16)
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v12)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v18 = v16;
          v17 = v15;

          if (!v17)
          {
            goto LABEL_18;
          }

          v10 = objc_alloc_init(MEMORY[0x277D69BB8]);
          [v10 addFieldsFromPurchaseResponse:v17];
          [v10 setTransactionIdentifier:v18];
          [(SUUIMetricsController *)self recordEvent:v10];
        }

        else
        {
LABEL_14:
          v17 = 0;
          v18 = 0;
        }

LABEL_18:
        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }
}

- (void)recordEvent:(id)event
{
  [(SUUIMetricsController *)self _insertEvent:event];
  if (self->_flushesImmediately)
  {

    [(SUUIMetricsController *)self flushImmediately];
  }
}

- (void)setPageConfiguration:(id)configuration
{
  configurationCopy = configuration;
  p_pageConfiguration = &self->_pageConfiguration;
  if (self->_pageConfiguration != configurationCopy)
  {
    v9 = configurationCopy;
    objc_storeStrong(p_pageConfiguration, configuration);
    [(SSMetricsController *)self->_controller setPageConfiguration:v9];
    [(SSMetricsConfiguration *)self->_globalConfiguration reportingFrequency];
    self->_flushesImmediately = v7 == 0.0;
    self->_impressionsEnabled = [(SUUIMetricsController *)self canRecordEventWithType:*MEMORY[0x277D6A480]];
    v8 = +[SUUIMetricsFlushTimer sharedTimer];
    [v8 reloadFlushInterval];
  }

  MEMORY[0x2821F9730](p_pageConfiguration);
}

- (void)_waitUntilRecordingComplete
{
  serialQueue = [(SSMetricsController *)self->_controller serialQueue];
  dispatch_sync(serialQueue, &__block_literal_global_6);
}

- (void)_insertEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (self->_loggingEnabled)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v18 = 138412290;
      v19 = eventCopy;
      LODWORD(v17) = 12;
      v16 = &v18;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_12:

        goto LABEL_13;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, &v18, v17}];
      free(v10);
      v16 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_13:
  accountIdentifier = [(SUUIMetricsController *)self accountIdentifier];
  [eventCopy setAccountIdentifier:accountIdentifier];

  [eventCopy setApplicationIdentifier:self->_applicationIdentifier];
  mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
  [mEMORY[0x277D7FD00] networkType];
  v13 = SSGetStringForNetworkType();
  [eventCopy setConnection:v13];

  [eventCopy setHostApplicationIdentifier:self->_hostApplicationIdentifier];
  [eventCopy setPageContext:self->_pageContext];
  topic = [eventCopy topic];
  v15 = [topic length];

  if (!v15)
  {
    [eventCopy setTopic:self->_topic];
  }

  [eventCopy setUserAgent:self->_userAgent];
  [eventCopy setWindowOrientation:self->_windowOrientation];
  if (self->_pageURL)
  {
    [eventCopy setPageURL:?];
  }

  [(SSMetricsController *)self->_controller insertEvent:eventCopy withCompletionHandler:0];
}

- (void)_recordActiveImpressions
{
  activeImpressionsSession = self->_activeImpressionsSession;
  if (activeImpressionsSession)
  {
    impressionIdentifiers = [(SUUIMetricsImpressionSession *)activeImpressionsSession impressionIdentifiers];
    if ([impressionIdentifiers count])
    {
      v5 = objc_alloc_init(MEMORY[0x277D69BA0]);
      [v5 setImpressionIdentifiers:impressionIdentifiers];
      [(SUUIMetricsController *)self _insertEvent:v5];
    }

    v6 = self->_activeImpressionsSession;
    self->_activeImpressionsSession = 0;
  }

  impressionsTimer = self->_impressionsTimer;
  if (impressionsTimer)
  {
    dispatch_source_cancel(impressionsTimer);
    v8 = self->_impressionsTimer;
    self->_impressionsTimer = 0;
  }
}

@end