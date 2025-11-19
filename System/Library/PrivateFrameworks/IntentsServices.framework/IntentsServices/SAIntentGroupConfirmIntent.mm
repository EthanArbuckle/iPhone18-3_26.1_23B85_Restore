@interface SAIntentGroupConfirmIntent
@end

@implementation SAIntentGroupConfirmIntent

void __109__SAIntentGroupConfirmIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke(uint64_t a1)
{
  v3 = +[INSAnalytics sharedAnalytics];
  v2 = [*(a1 + 32) ins_afAnalyticsContext];
  [v3 logEventWithType:612 context:v2 contextNoCopy:1];
}

void __109__SAIntentGroupConfirmIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__SAIntentGroupConfirmIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_3;
  block[3] = &unk_2797EA8B0;
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v9 = v3;
  v10 = v4;
  v11 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __109__SAIntentGroupConfirmIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_3(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 backingStore];
    *buf = 136315394;
    v21 = "[SAIntentGroupConfirmIntent(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]_block_invoke_3";
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_25553C000, v4, OS_LOG_TYPE_INFO, "%s intentResponse.backingStore = %@", buf, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277D473B0]);
  v7 = [*(a1 + 40) aceId];
  [v6 setRefId:v7];

  if ([*(a1 + 40) ins_isJSONPayload])
  {
    v8 = INSJSONEncodedIntentResponse(*(a1 + 32));
    [v6 setJsonEncodedIntentResponse:v8];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D47418]);
    v9 = [*(a1 + 32) _payloadResponseTypeName];
    [v8 setTypeName:v9];

    v10 = [*(a1 + 32) backingStore];
    v11 = [v10 data];
    [v8 setData:v11];

    [v6 setIntentResponse:v8];
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v6, 0);
  }

  v13 = +[INSAnalytics sharedAnalytics];
  v14 = [v13 contextDictionaryForCommand:v6];

  v15 = +[INSAnalytics sharedAnalytics];
  v16 = [*(a1 + 40) ins_analyticsEndEventType];
  v17 = [*(a1 + 40) ins_afAnalyticsContext];
  v18 = IFMergeDictionaries();
  [v15 logEventWithType:v16 context:v18 contextNoCopy:{1, v14, 0}];

  v19 = *MEMORY[0x277D85DE8];
}

@end