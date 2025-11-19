@interface SAIntentGroupHandleIntent
@end

@implementation SAIntentGroupHandleIntent

void __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke(uint64_t a1)
{
  v3 = +[INSAnalytics sharedAnalytics];
  v2 = [*(a1 + 32) ins_afAnalyticsContext];
  [v3 logEventWithType:617 context:v2 contextNoCopy:1];
}

void __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_2_5;
  v12[3] = &unk_2797EACC0;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v13 = v6;
  v14 = v7;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, v12);
}

void __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_2_5(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = a1[5];
    v24 = INSExtensionServiceTraceCompletionHandlerWithCode(a1[7], 722470896);
    v3 = [a1[4] errorCode];
    v4 = [a1[4] underlyingError];
    [v2 ins_invokeErrorCompletionHandler:v24 withErrorCode:v3 underlyingError:v4];

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      v8 = v6;
      v9 = [v7 backingStore];
      *buf = 136315394;
      v26 = "[SAIntentGroupHandleIntent(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]_block_invoke_2";
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_25553C000, v8, OS_LOG_TYPE_INFO, "%s intentResponse.backingStore = %@", buf, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277D473D8]);
    v11 = [a1[5] aceId];
    [v10 setRefId:v11];

    if ([a1[5] ins_isJSONPayload])
    {
      v12 = INSJSONEncodedIntentResponse(a1[6]);
      [v10 setJsonEncodedIntentResponse:v12];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277D47418]);
      v13 = [a1[6] backingStore];
      v14 = [v13 data];
      [v12 setData:v14];

      v15 = [a1[6] _payloadResponseTypeName];
      [v12 setTypeName:v15];

      [v10 setIntentResponse:v12];
    }

    v16 = a1[7];
    if (v16)
    {
      v16[2](v16, v10, 0);
    }

    v17 = +[INSAnalytics sharedAnalytics];
    v18 = [v17 contextDictionaryForCommand:v10];

    v19 = +[INSAnalytics sharedAnalytics];
    v20 = [a1[5] ins_analyticsEndEventType];
    v21 = [a1[5] ins_afAnalyticsContext];
    v22 = IFMergeDictionaries();
    [v19 logEventWithType:v20 context:v22 contextNoCopy:{1, v18, 0}];

    v23 = *MEMORY[0x277D85DE8];
  }
}

void __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_3;
  v8[3] = &unk_2797EAC98;
  v9 = v4;
  v10 = v5;
  v6 = v4;
  v7 = v5;
  [v6 _retrieveImageDataWithReply:v8];
}

void __108__SAIntentGroupHandleIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[SAIntentGroupHandleIntent(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]_block_invoke_3";
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_25553C000, v7, OS_LOG_TYPE_ERROR, "%s Unable to retrieve image data = %@", &v13, 0x16u);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = *(a1 + 32);
    [v5 _imageSize];
    [v9 _setImageSize:?];
    v10 = [MEMORY[0x277CD3AD0] sharedCache];
    [v10 addCacheableObject:v5];

    v11 = [MEMORY[0x277CD3AD0] sharedCache];
    [v11 addCacheableObject:*(a1 + 32)];

    v8 = *(*(a1 + 40) + 16);
  }

  v8();

  v12 = *MEMORY[0x277D85DE8];
}

@end