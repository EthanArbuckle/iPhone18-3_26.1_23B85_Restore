@interface CPSAnalyticsLogger
+ (id)sharedLogger;
- (CPSAnalyticsLogger)initWithQueue:(id)a3;
- (void)_sendEventLazyWithName:(id)a3 clipBundleIdentifier:(id)a4 payload:(id)a5;
- (void)didManuallyDeleteClip:(id)a3 withEvent:(int64_t)a4;
- (void)didPresentInvocationCardForClip:(id)a3 adamID:(id)a4 sourceBundleIdentifier:(id)a5 referrerBundleIdentifier:(id)a6 event:(id)a7 url:(id)a8 didShowCardInline:(BOOL)a9;
- (void)didUseClip:(id)a3 atLatitude:(double)a4 longitude:(double)a5;
- (void)recordClientClipRequestWithBundleID:(id)a3 launchReason:(id)a4;
- (void)recordClientMetadataRequestWithBundleID:(id)a3 launchReason:(id)a4;
- (void)recordDidInstallWithBundleID:(id)a3 succeeded:(BOOL)a4;
- (void)recordDidShowErrorWithBundleID:(id)a3 place:(id)a4 errorCode:(int64_t)a5;
- (void)recordDidShowLocationConsentWithBundleID:(id)a3 response:(unint64_t)a4;
- (void)recordReportProblemStepCompletedWithBundleID:(id)a3 problemLabel:(id)a4 event:(int64_t)a5;
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

- (CPSAnalyticsLogger)initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CPSAnalyticsLogger;
  v6 = [(CPSAnalyticsLogger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_analyticsSynchronizationQueue, a3);
    v8 = v7;
  }

  return v7;
}

- (void)didPresentInvocationCardForClip:(id)a3 adamID:(id)a4 sourceBundleIdentifier:(id)a5 referrerBundleIdentifier:(id)a6 event:(id)a7 url:(id)a8 didShowCardInline:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = +[CPSUtilities deviceIsLocked];
  v22 = [v20 cps_fallbackBundleIdentifier];
  [(CPSAnalyticsLogger *)self recordDidActivateCardWithBundleID:v15 launchReason:v19 deviceLocked:v21 didShowCardInline:a9 isOutOfBoxURL:v22 != 0];

  if ([v15 length] && objc_msgSend(v16, "intValue") && objc_msgSend(v19, "length") && (objc_msgSend(v20, "absoluteString"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "length"), v23, v24))
  {
    analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __137__CPSAnalyticsLogger_didPresentInvocationCardForClip_adamID_sourceBundleIdentifier_referrerBundleIdentifier_event_url_didShowCardInline___block_invoke;
    v27[3] = &unk_278DCF398;
    v28 = v15;
    v29 = v16;
    v30 = v18;
    v31 = v17;
    v32 = v19;
    v33 = v20;
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

- (void)recordDidInstallWithBundleID:(id)a3 succeeded:(BOOL)a4
{
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__CPSAnalyticsLogger_recordDidInstallWithBundleID_succeeded___block_invoke;
  v5[3] = &unk_278DCF3C0;
  v5[4] = self;
  v6 = a4;
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

- (void)didUseClip:(id)a3 atLatitude:(double)a4 longitude:(double)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"latitude";
  v8 = MEMORY[0x277CCABB0];
  v9 = a3;
  v10 = [v8 numberWithDouble:a4];
  v14[1] = @"longitude";
  v15[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidUseClipAtLocation" clipBundleIdentifier:v9 payload:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didManuallyDeleteClip:(id)a3 withEvent:(int64_t)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = @"delete specific clip";
  if (a4 != 1)
  {
    v5 = @"unspecified";
  }

  if (a4 == 2)
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

- (void)recordClientClipRequestWithBundleID:(id)a3 launchReason:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"launchReason";
  v12[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.ClientDidRequestClip" clipBundleIdentifier:v8 payload:v9];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)recordClientMetadataRequestWithBundleID:(id)a3 launchReason:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"launchReason";
  v12[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.ClientDidRequestMetadata" clipBundleIdentifier:v8 payload:v9];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)recordDidShowErrorWithBundleID:(id)a3 place:(id)a4 errorCode:(int64_t)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"place";
  v14[1] = @"errorCode";
  v15[0] = a4;
  v8 = MEMORY[0x277CCABB0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 numberWithInteger:a5];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidShowError" clipBundleIdentifier:v10 payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)recordDidShowLocationConsentWithBundleID:(id)a3 response:(unint64_t)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"locationConfirmationResponse";
  if (a4 - 1 > 2)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_278DCF420[a4 - 1];
  }

  v11[0] = v5;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a3;
  v8 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidShowLocationConsent" clipBundleIdentifier:v7 payload:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)recordReportProblemStepCompletedWithBundleID:(id)a3 problemLabel:(id)a4 event:(int64_t)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = @"null";
  }

  v14[0] = @"problemLabel";
  v14[1] = @"event";
  v15[0] = v7;
  if (a5 > 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_278DCF438[a5];
  }

  v15[1] = v8;
  v9 = MEMORY[0x277CBEAC0];
  v10 = a4;
  v11 = a3;
  v12 = [v9 dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.ReportProblemStepCompleted" clipBundleIdentifier:v11 payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendEventLazyWithName:(id)a3 clipBundleIdentifier:(id)a4 payload:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CPSAnalyticsLogger__sendEventLazyWithName_clipBundleIdentifier_payload___block_invoke;
  block[3] = &unk_278DCE110;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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