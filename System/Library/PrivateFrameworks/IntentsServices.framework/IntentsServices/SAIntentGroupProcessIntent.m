@interface SAIntentGroupProcessIntent
@end

@implementation SAIntentGroupProcessIntent

void __132__SAIntentGroupProcessIntent_INSExtensionService___handleIntentWithExtensionProxy_onQueue_processIntentCompleted_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __132__SAIntentGroupProcessIntent_INSExtensionService___handleIntentWithExtensionProxy_onQueue_processIntentCompleted_completionHandler___block_invoke_2;
  block[3] = &unk_2797EA900;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v15 = *(a1 + 56);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __132__SAIntentGroupProcessIntent_INSExtensionService___handleIntentWithExtensionProxy_onQueue_processIntentCompleted_completionHandler___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = +[INSAnalytics sharedAnalytics];
  v3 = [*(a1 + 32) ins_afAnalyticsContext];
  [v2 logEventWithType:641 context:v3 contextNoCopy:1];

  v4 = MEMORY[0x277CD38C8];
  v5 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v23 = 136315394;
    v24 = "[SAIntentGroupProcessIntent(INSExtensionService) _handleIntentWithExtensionProxy:onQueue:processIntentCompleted:completionHandler:]_block_invoke_2";
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_25553C000, v5, OS_LOG_TYPE_INFO, "%s HandleIntent completed with response %@", &v23, 0x16u);
    v5 = *v4;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = v5;
      v9 = [v7 errorCode];
      v10 = [*(a1 + 48) underlyingError];
      v23 = 136315650;
      v24 = "[SAIntentGroupProcessIntent(INSExtensionService) _handleIntentWithExtensionProxy:onQueue:processIntentCompleted:completionHandler:]_block_invoke";
      v25 = 2048;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_error_impl(&dword_25553C000, v8, OS_LOG_TYPE_ERROR, "%s HandleIntent error. errorCode: %lu underlyingError: %@", &v23, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v23 = 136315138;
      v24 = "[SAIntentGroupProcessIntent(INSExtensionService) _handleIntentWithExtensionProxy:onQueue:processIntentCompleted:completionHandler:]_block_invoke";
      _os_log_impl(&dword_25553C000, v5, OS_LOG_TYPE_INFO, "%s HandleIntent successful.", &v23, 0xCu);
    }

    v11 = *(a1 + 56);
    v12 = objc_alloc_init(MEMORY[0x277D473D8]);
    v13 = [*(a1 + 32) aceId];
    [v12 setRefId:v13];

    if ([*(a1 + 32) ins_isJSONPayload])
    {
      v14 = INSJSONEncodedIntentResponse(*(a1 + 40));
      [v12 setJsonEncodedIntentResponse:v14];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277D47418]);
      v15 = [*(a1 + 40) backingStore];
      v16 = [v15 data];
      [v14 setData:v16];

      v17 = *(a1 + 40);
      objc_opt_class();
      v18 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass();
      v19 = [v18 type];

      [v14 setTypeName:v19];
      [v12 setIntentResponse:v14];
    }

    [v11 setHandleIntentCompleted:v12];
  }

  v20 = *(a1 + 56);
  result = (*(*(a1 + 64) + 16))();
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void __133__SAIntentGroupProcessIntent_INSExtensionService___confirmIntentWithExtensionProxy_onQueue_processIntentCompleted_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __133__SAIntentGroupProcessIntent_INSExtensionService___confirmIntentWithExtensionProxy_onQueue_processIntentCompleted_completionHandler___block_invoke_2;
  block[3] = &unk_2797EAB60;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v15 = *(a1 + 56);
  v16 = *(a1 + 32);
  v17 = *(a1 + 64);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __133__SAIntentGroupProcessIntent_INSExtensionService___confirmIntentWithExtensionProxy_onQueue_processIntentCompleted_completionHandler___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = +[INSAnalytics sharedAnalytics];
  v3 = [*(a1 + 32) ins_afAnalyticsContext];
  [v2 logEventWithType:639 context:v3 contextNoCopy:1];

  v4 = MEMORY[0x277CD38C8];
  v5 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v27 = 136315394;
    v28 = "[SAIntentGroupProcessIntent(INSExtensionService) _confirmIntentWithExtensionProxy:onQueue:processIntentCompleted:completionHandler:]_block_invoke_2";
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_25553C000, v5, OS_LOG_TYPE_INFO, "%s ConfirmIntent completed with response %@", &v27, 0x16u);
  }

  v7 = objc_alloc_init(MEMORY[0x277D473B0]);
  v8 = [*(a1 + 32) aceId];
  [v7 setRefId:v8];

  if ([*(a1 + 32) ins_isJSONPayload])
  {
    v9 = INSJSONEncodedIntentResponse(*(a1 + 40));
    [v7 setJsonEncodedIntentResponse:v9];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277D47418]);
    v10 = *(a1 + 40);
    objc_opt_class();
    v11 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass();
    v12 = [v11 type];

    [v9 setTypeName:v12];
    v13 = [*(a1 + 40) backingStore];
    v14 = [v13 data];
    [v9 setData:v14];

    [v7 setIntentResponse:v9];
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
      v18 = [v15 errorCode];
      v19 = [*(a1 + 48) underlyingError];
      v27 = 136315650;
      v28 = "[SAIntentGroupProcessIntent(INSExtensionService) _confirmIntentWithExtensionProxy:onQueue:processIntentCompleted:completionHandler:]_block_invoke";
      v29 = 2048;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      _os_log_error_impl(&dword_25553C000, v17, OS_LOG_TYPE_ERROR, "%s ConfirmIntent error. errorCode: %lu underlyingError: %@", &v27, 0x20u);
    }

LABEL_17:
    v25 = *(a1 + 56);
    (*(*(a1 + 80) + 16))();
    goto LABEL_18;
  }

  [*(a1 + 56) setConfirmIntentCompleted:v7];
  v20 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    v21 = *(a1 + 32);
    v22 = v20;
    v23 = [v21 shouldRunHandleIntent];
    v24 = @"NO";
    if (v23)
    {
      v24 = @"YES";
    }

    v27 = 136315394;
    v28 = "[SAIntentGroupProcessIntent(INSExtensionService) _confirmIntentWithExtensionProxy:onQueue:processIntentCompleted:completionHandler:]_block_invoke";
    v29 = 2112;
    v30 = v24;
    _os_log_impl(&dword_25553C000, v22, OS_LOG_TYPE_INFO, "%s ConfirmIntent successful. ShouldRunHandleIntent = %@", &v27, 0x16u);
  }

  if (![*(a1 + 32) shouldRunHandleIntent] || objc_msgSend(*(a1 + 40), "_intentResponseCode") != 1 && objc_msgSend(*(a1 + 40), "_intentResponseCode") != 4)
  {
    goto LABEL_17;
  }

  [*(a1 + 32) _handleIntentWithExtensionProxy:*(a1 + 64) onQueue:*(a1 + 72) processIntentCompleted:*(a1 + 56) completionHandler:*(a1 + 80)];
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];
}

void __138__SAIntentGroupProcessIntent_INSExtensionService___resolveIntentSlotsWithExtensionProxy_onQueue_processIntentCompleted_completionHandler___block_invoke(id *a1, char a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = +[INSAnalytics sharedAnalytics];
  v10 = [a1[4] ins_afAnalyticsContext];
  [v9 logEventWithType:637 context:v10 contextNoCopy:1];

  v11 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[SAIntentGroupProcessIntent(INSExtensionService) _resolveIntentSlotsWithExtensionProxy:onQueue:processIntentCompleted:completionHandler:]_block_invoke";
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_25553C000, v11, OS_LOG_TYPE_INFO, "%s BatchSlotResolution completed in extensionProxy with updatedIntent %@", buf, 0x16u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __138__SAIntentGroupProcessIntent_INSExtensionService___resolveIntentSlotsWithExtensionProxy_onQueue_processIntentCompleted_completionHandler___block_invoke_5;
  v18[3] = &unk_2797EA7F8;
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[4];
  v19 = v13;
  v20 = v14;
  v21 = v7;
  v22 = v8;
  v26 = a2;
  v23 = a1[7];
  v24 = a1[5];
  v25 = a1[8];
  v15 = v8;
  v16 = v7;
  dispatch_async(v12, v18);

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __138__SAIntentGroupProcessIntent_INSExtensionService___resolveIntentSlotsWithExtensionProxy_onQueue_processIntentCompleted_completionHandler___block_invoke_5(uint64_t a1)
{
  v1 = a1;
  v55 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_alloc_init(MEMORY[0x277D47398]);
  [v3 setSlotResolutionMap:0];
  v4 = [*(v1 + 40) intent];
  v5 = [v4 typeName];
  [v3 setTypeName:v5];

  v6 = [*(v1 + 40) ins_isJSONPayload];
  v7 = *(v1 + 48);
  v39 = v3;
  v40 = v2;
  if (v6)
  {
    v8 = INSJSONEncodedIntent(v7);
    [v3 setJsonEncodedIntent:v8];
  }

  else
  {
    v8 = [v7 backingStore];
    v9 = [v8 data];
    v10 = [v9 base64EncodedStringWithOptions:0];
    [v3 setBase64EncodedIntent:v10];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [*(v1 + 56) allKeys];
  v12 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  v13 = MEMORY[0x277CD38C8];
  v43 = v12;
  if (v12)
  {
    v14 = *v45;
    v41 = v1;
    do
    {
      v15 = 0;
      do
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v44 + 1) + 8 * v15);
        v17 = objc_alloc_init(MEMORY[0x277D473A0]);
        [v17 setKeyPath:v16];
        v18 = [*(v1 + 56) objectForKeyedSubscript:v16];
        [v17 setTypeName:@"IntentSlotResolutionResult"];
        v19 = [*(v1 + 40) ins_isJSONPayload];
        v20 = [v18 data];
        v21 = v20;
        if (v19)
        {
          v22 = INSJSONEncodedSlotResolutionResult(v20, *(v1 + 48), v16);
          [v17 setJsonEncodedSlotResolutionResult:v22];
        }

        else
        {
          v22 = [v20 base64EncodedStringWithOptions:0];
          [v17 setBase64EncodedProtobufMessage:v22];
        }

        [v11 addObject:v17];
        v23 = objc_alloc(MEMORY[0x277CD4358]);
        v24 = [v18 data];
        v25 = [v23 initWithData:v24];

        v26 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
        {
          v27 = v26;
          [v25 typeAsString:{objc_msgSend(v25, "type")}];
          v28 = v14;
          v29 = v13;
          v31 = v30 = v11;
          *buf = 136315650;
          v49 = "[SAIntentGroupProcessIntent(INSExtensionService) _resolveIntentSlotsWithExtensionProxy:onQueue:processIntentCompleted:completionHandler:]_block_invoke";
          v50 = 2112;
          v51 = v16;
          v52 = 2112;
          v53 = v31;

          v11 = v30;
          v13 = v29;
          v14 = v28;
          v1 = v41;
        }

        ++v15;
      }

      while (v43 != v15);
      v43 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v43);
  }

  [v39 setStepResults:v11];
  [v40 setBatchSlotResolutionResult:v39];

  v32 = *(v1 + 88);
  v33 = *v13;
  v34 = os_log_type_enabled(*v13, OS_LOG_TYPE_INFO);
  if (v32 == 1)
  {
    if (v34)
    {
      *buf = 136315138;
      v49 = "[SAIntentGroupProcessIntent(INSExtensionService) _resolveIntentSlotsWithExtensionProxy:onQueue:processIntentCompleted:completionHandler:]_block_invoke";
      _os_log_impl(&dword_25553C000, v33, OS_LOG_TYPE_INFO, "%s All slots were resolved successfully. Moving to Confirm.", buf, 0xCu);
    }

    v35 = [*(v1 + 64) _connection];
    [v35 setIntent:*(v1 + 48)];

    result = [*(v1 + 40) _confirmIntentWithExtensionProxy:*(v1 + 64) onQueue:*(v1 + 72) processIntentCompleted:*(v1 + 32) completionHandler:*(v1 + 80)];
  }

  else
  {
    if (v34)
    {
      *buf = 136315138;
      v49 = "[SAIntentGroupProcessIntent(INSExtensionService) _resolveIntentSlotsWithExtensionProxy:onQueue:processIntentCompleted:completionHandler:]_block_invoke";
      _os_log_impl(&dword_25553C000, v33, OS_LOG_TYPE_INFO, "%s BatchSlotResolution needs dialog. Calling completion.", buf, 0xCu);
    }

    v37 = *(v1 + 32);
    result = (*(*(v1 + 80) + 16))();
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void __109__SAIntentGroupProcessIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke(uint64_t a1)
{
  v3 = +[INSAnalytics sharedAnalytics];
  v2 = [*(a1 + 32) ins_afAnalyticsContext];
  [v3 logEventWithType:633 context:v2 contextNoCopy:1];
}

void __109__SAIntentGroupProcessIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[SAIntentGroupProcessIntent(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]_block_invoke";
    _os_log_impl(&dword_25553C000, v4, OS_LOG_TYPE_INFO, "%s BatchSlotResolution complete.", buf, 0xCu);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, 0);
  }

  v6 = +[INSAnalytics sharedAnalytics];
  v7 = [v6 contextDictionaryForCommand:*(a1 + 32)];

  v8 = +[INSAnalytics sharedAnalytics];
  v9 = [*(a1 + 40) ins_analyticsEndEventType];
  v10 = [*(a1 + 40) ins_afAnalyticsContext];
  v11 = IFMergeDictionaries();
  [v8 logEventWithType:v9 context:v11 contextNoCopy:{1, v7, 0}];

  v12 = *MEMORY[0x277D85DE8];
}

@end