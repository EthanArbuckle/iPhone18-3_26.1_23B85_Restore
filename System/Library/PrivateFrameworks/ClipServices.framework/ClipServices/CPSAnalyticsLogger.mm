@interface CPSAnalyticsLogger
+ (id)sharedLogger;
- (CPSAnalyticsLogger)initWithQueue:(id)queue;
- (void)_sendEventLazyWithName:(id)name clipBundleIdentifier:(id)identifier payload:(id)payload;
- (void)didManuallyDeleteClip:(id)clip withEvent:(int64_t)event;
- (void)didPresentInvocationCardForClip:(id)clip adamID:(id)d sourceBundleIdentifier:(id)identifier referrerBundleIdentifier:(id)bundleIdentifier event:(id)event url:(id)url didShowCardInline:(BOOL)inline;
- (void)didUseClip:(id)clip atLatitude:(double)latitude longitude:(double)longitude;
- (void)recordClientClipRequestWithBundleID:(id)d launchReason:(id)reason;
- (void)recordClientMetadataRequestWithBundleID:(id)d launchReason:(id)reason;
- (void)recordDidInstallWithBundleID:(id)d succeeded:(BOOL)succeeded;
- (void)recordDidShowErrorWithBundleID:(id)d place:(id)place errorCode:(int64_t)code;
- (void)recordDidShowLocationConsentWithBundleID:(id)d response:(unint64_t)response;
- (void)recordReportProblemStepCompletedWithBundleID:(id)d problemLabel:(id)label event:(int64_t)event;
@end

@implementation CPSAnalyticsLogger

+ (id)sharedLogger
{
  if (sharedLogger_once != -1)
  {
    +[CPSAnalyticsLogger sharedLogger];
  }

  v3 = sharedLogger_shared;

  return v3;
}

void __34__CPSAnalyticsLogger_sharedLogger__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("com.apple.ClipServices.Analytics", v0);

  v1 = [[CPSAnalyticsLogger alloc] initWithQueue:v3];
  v2 = sharedLogger_shared;
  sharedLogger_shared = v1;
}

- (CPSAnalyticsLogger)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = CPSAnalyticsLogger;
  v6 = [(CPSAnalyticsLogger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_analyticsSynchronizationQueue, queue);
    v8 = v7;
  }

  return v7;
}

- (void)didPresentInvocationCardForClip:(id)clip adamID:(id)d sourceBundleIdentifier:(id)identifier referrerBundleIdentifier:(id)bundleIdentifier event:(id)event url:(id)url didShowCardInline:(BOOL)inline
{
  clipCopy = clip;
  dCopy = d;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  eventCopy = event;
  urlCopy = url;
  v21 = +[CPSUtilities deviceIsLocked];
  cps_fallbackBundleIdentifier = [urlCopy cps_fallbackBundleIdentifier];
  [(CPSAnalyticsLogger *)self recordDidActivateCardWithBundleID:clipCopy launchReason:eventCopy deviceLocked:v21 didShowCardInline:inline isOutOfBoxURL:cps_fallbackBundleIdentifier != 0];

  if ([clipCopy length] && objc_msgSend(dCopy, "intValue") && objc_msgSend(eventCopy, "length") && (objc_msgSend(urlCopy, "absoluteString"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "length"), v23, v24))
  {
    analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __137__CPSAnalyticsLogger_didPresentInvocationCardForClip_adamID_sourceBundleIdentifier_referrerBundleIdentifier_event_url_didShowCardInline___block_invoke;
    v27[3] = &unk_278DCF398;
    v28 = clipCopy;
    v29 = dCopy;
    v30 = bundleIdentifierCopy;
    v31 = identifierCopy;
    v32 = eventCopy;
    v33 = urlCopy;
    dispatch_async(analyticsSynchronizationQueue, v27);
  }

  else
  {
    v26 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CPSAnalyticsLogger didPresentInvocationCardForClip:v26 adamID:? sourceBundleIdentifier:? referrerBundleIdentifier:? event:? url:? didShowCardInline:?];
    }
  }
}

void __137__CPSAnalyticsLogger_didPresentInvocationCardForClip_adamID_sourceBundleIdentifier_referrerBundleIdentifier_event_url_didShowCardInline___block_invoke(uint64_t a1)
{
  v7 = [objc_alloc(MEMORY[0x277CEC370]) initWithClipBundleID:*(a1 + 32)];
  [v7 setItemID:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (!v2)
  {
    v2 = *(a1 + 56);
  }

  [v7 setReferralSourceBundleID:v2];
  v3 = *(a1 + 64);
  if (([*(a1 + 64) isEqualToString:@"Safari"] & 1) != 0 || objc_msgSend(*(a1 + 64), "isEqualToString:", @"InApp"))
  {
    v4 = CPSSessionLaunchReasonAnalyticsAppReferral;
    if (!*(a1 + 48))
    {
      v4 = CPSSessionLaunchReasonAnalyticsWebReferral;
    }

    v5 = *v4;

    v3 = v5;
  }

  [v7 setReferrerType:v3];
  [v7 setSourceURL:*(a1 + 72)];
  v6 = objc_alloc_init(MEMORY[0x277CEC378]);
  [v6 sendClipCardMetricsEvent:v7 completionHandler:&__block_literal_global_67];
}

void __137__CPSAnalyticsLogger_didPresentInvocationCardForClip_adamID_sourceBundleIdentifier_referrerBundleIdentifier_event_url_didShowCardInline___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __137__CPSAnalyticsLogger_didPresentInvocationCardForClip_adamID_sourceBundleIdentifier_referrerBundleIdentifier_event_url_didShowCardInline___block_invoke_2_cold_1(v5, v4);
    }
  }
}

- (void)recordDidInstallWithBundleID:(id)d succeeded:(BOOL)succeeded
{
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__CPSAnalyticsLogger_recordDidInstallWithBundleID_succeeded___block_invoke;
  v5[3] = &unk_278DCF3C0;
  v5[4] = self;
  succeededCopy = succeeded;
  dispatch_async(analyticsSynchronizationQueue, v5);
}

void __61__CPSAnalyticsLogger_recordDidInstallWithBundleID_succeeded___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_72];
  [v2 setPredicate:v3];

  v4 = [v2 allObjects];
  v5 = [v4 count];

  v6 = *(a1 + 32);
  v11[0] = @"success";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v11[1] = @"totalClips";
  v12[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v6 _sendEventLazyWithName:@"com.apple.ClipServices.DidInstallClip" clipBundleIdentifier:0 payload:v9];

  v10 = *MEMORY[0x277D85DE8];
}

BOOL __61__CPSAnalyticsLogger_recordDidInstallWithBundleID_succeeded___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 appClipMetadata];
  v3 = v2 != 0;

  return v3;
}

- (void)didUseClip:(id)clip atLatitude:(double)latitude longitude:(double)longitude
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"latitude";
  v8 = MEMORY[0x277CCABB0];
  clipCopy = clip;
  v10 = [v8 numberWithDouble:latitude];
  v14[1] = @"longitude";
  v15[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:longitude];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidUseClipAtLocation" clipBundleIdentifier:clipCopy payload:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didManuallyDeleteClip:(id)clip withEvent:(int64_t)event
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = @"delete specific clip";
  if (event != 1)
  {
    v5 = @"unspecified";
  }

  if (event == 2)
  {
    v5 = @"clear all clips";
  }

  v10 = @"event";
  v11[0] = v5;
  v6 = MEMORY[0x277CBEAC0];
  v7 = v5;
  v8 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidManuallyDeleteClip" clipBundleIdentifier:0 payload:v8];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)recordClientClipRequestWithBundleID:(id)d launchReason:(id)reason
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"launchReason";
  v12[0] = reason;
  v6 = MEMORY[0x277CBEAC0];
  reasonCopy = reason;
  dCopy = d;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.ClientDidRequestClip" clipBundleIdentifier:dCopy payload:v9];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)recordClientMetadataRequestWithBundleID:(id)d launchReason:(id)reason
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"launchReason";
  v12[0] = reason;
  v6 = MEMORY[0x277CBEAC0];
  reasonCopy = reason;
  dCopy = d;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.ClientDidRequestMetadata" clipBundleIdentifier:dCopy payload:v9];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)recordDidShowErrorWithBundleID:(id)d place:(id)place errorCode:(int64_t)code
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"place";
  v14[1] = @"errorCode";
  v15[0] = place;
  v8 = MEMORY[0x277CCABB0];
  placeCopy = place;
  dCopy = d;
  v11 = [v8 numberWithInteger:code];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidShowError" clipBundleIdentifier:dCopy payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)recordDidShowLocationConsentWithBundleID:(id)d response:(unint64_t)response
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"locationConfirmationResponse";
  if (response - 1 > 2)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_278DCF420[response - 1];
  }

  v11[0] = v5;
  v6 = MEMORY[0x277CBEAC0];
  dCopy = d;
  v8 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidShowLocationConsent" clipBundleIdentifier:dCopy payload:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)recordReportProblemStepCompletedWithBundleID:(id)d problemLabel:(id)label event:(int64_t)event
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (label)
  {
    labelCopy = label;
  }

  else
  {
    labelCopy = @"null";
  }

  v14[0] = @"problemLabel";
  v14[1] = @"event";
  v15[0] = labelCopy;
  if (event > 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_278DCF438[event];
  }

  v15[1] = v8;
  v9 = MEMORY[0x277CBEAC0];
  labelCopy2 = label;
  dCopy = d;
  v12 = [v9 dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.ReportProblemStepCompleted" clipBundleIdentifier:dCopy payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendEventLazyWithName:(id)name clipBundleIdentifier:(id)identifier payload:(id)payload
{
  nameCopy = name;
  identifierCopy = identifier;
  payloadCopy = payload;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CPSAnalyticsLogger__sendEventLazyWithName_clipBundleIdentifier_payload___block_invoke;
  block[3] = &unk_278DCE110;
  v16 = nameCopy;
  v17 = identifierCopy;
  v18 = payloadCopy;
  v12 = payloadCopy;
  v13 = identifierCopy;
  v14 = nameCopy;
  dispatch_async(analyticsSynchronizationQueue, block);
}

void __74__CPSAnalyticsLogger__sendEventLazyWithName_clipBundleIdentifier_payload___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  AnalyticsSendEventLazy();
}

id __74__CPSAnalyticsLogger__sendEventLazyWithName_clipBundleIdentifier_payload___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = @"null";
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  v7 = @"clipBundleIdentifier";
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v3 mutableCopy];

  if ([*(a1 + 40) count])
  {
    [v4 addEntriesFromDictionary:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void __137__CPSAnalyticsLogger_didPresentInvocationCardForClip_adamID_sourceBundleIdentifier_referrerBundleIdentifier_event_url_didShowCardInline___block_invoke_2_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 cps_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_2436ED000, v3, OS_LOG_TYPE_ERROR, "Unable to send app clip card metrics due to error %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end