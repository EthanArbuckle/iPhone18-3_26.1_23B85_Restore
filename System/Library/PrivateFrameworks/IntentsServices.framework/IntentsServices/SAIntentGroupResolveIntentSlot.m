@interface SAIntentGroupResolveIntentSlot
@end

@implementation SAIntentGroupResolveIntentSlot

void __113__SAIntentGroupResolveIntentSlot_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke(uint64_t a1)
{
  v3 = +[INSAnalytics sharedAnalytics];
  v2 = [*(a1 + 32) ins_afAnalyticsContext];
  [v3 logEventWithType:608 context:v2 contextNoCopy:1];
}

void __113__SAIntentGroupResolveIntentSlot_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__SAIntentGroupResolveIntentSlot_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_3;
  block[3] = &unk_2797EA900;
  v12 = v3;
  v10 = *(a1 + 40);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v9 = v3;
  dispatch_async(v4, block);
}

void __113__SAIntentGroupResolveIntentSlot_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v3 ? [objc_alloc(MEMORY[0x277CD4358]) initWithData:*(a1 + 32)] : @"no data";
    *buf = 136315394;
    v17 = "[SAIntentGroupResolveIntentSlot(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]_block_invoke_3";
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_25553C000, v2, OS_LOG_TYPE_INFO, "%s resolutionResultData = %@", buf, 0x16u);
    if (v3)
    {
    }
  }

  v5 = objc_alloc_init(MEMORY[0x277D47430]);
  v6 = [*(a1 + 40) aceId];
  [v5 setRefId:v6];

  if ([*(a1 + 40) ins_isJSONPayload])
  {
    v7 = INSJSONEncodedSlotResolutionResult(*(a1 + 32), *(a1 + 48), *(a1 + 56));
    [v5 setJsonEncodedIntentSlotResolutionResult:v7];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D47418]);
    [v7 setData:*(a1 + 32)];
    [v7 setTypeName:@"IntentSlotResolutionResult"];
    [v5 setIntentSlotResolutionResult:v7];
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, 0);
  }

  v9 = +[INSAnalytics sharedAnalytics];
  v10 = [v9 contextDictionaryForCommand:v5];

  v11 = +[INSAnalytics sharedAnalytics];
  v12 = [*(a1 + 40) ins_analyticsEndEventType];
  v13 = [*(a1 + 40) ins_afAnalyticsContext];
  v14 = IFMergeDictionaries();
  [v11 logEventWithType:v12 context:v14 contextNoCopy:{1, v10, 0}];

  v15 = *MEMORY[0x277D85DE8];
}

@end