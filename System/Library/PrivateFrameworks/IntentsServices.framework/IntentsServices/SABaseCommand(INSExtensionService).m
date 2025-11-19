@interface SABaseCommand(INSExtensionService)
- (BOOL)ins_isJSONPayload;
- (id)ins_aceIntent;
- (id)ins_aceIntentResponse;
- (id)ins_afAnalyticsContext;
- (void)ins_invokeErrorCompletionHandler:()INSExtensionService forUnderlyingError:;
- (void)ins_invokeErrorCompletionHandler:()INSExtensionService withErrorCode:underlyingError:;
- (void)ins_sendIntent:()INSExtensionService toExtensionProxy:onQueue:completionHandler:;
@end

@implementation SABaseCommand(INSExtensionService)

- (id)ins_afAnalyticsContext
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = +[INSAnalytics sharedAnalytics];
  v3 = [v2 contextDictionaryForCommand:a1];

  v4 = a1;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 metricsContext];

  if (v7)
  {
    v12 = @"metricsContext";
    v13[0] = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = IFMergeDictionaries();

    v3 = v8;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)ins_aceIntent
{
  v2 = [a1 ins_jsonEncodedIntent];

  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = [a1 ins_jsonEncodedIntent];
  v4 = [v3 dataUsingEncoding:4];
  v5 = INIntentCreate();

  if (!v5)
  {
LABEL_10:
    v5 = [a1 ins_protobufEncodedIntent];

    if (v5)
    {
      v6 = [a1 ins_protobufEncodedIntent];
      v7 = [v6 typeName];
      v8 = [a1 ins_protobufEncodedIntent];
      v9 = [v8 data];
      v5 = INIntentCreate();
    }
  }

  return v5;
}

- (BOOL)ins_isJSONPayload
{
  v1 = [a1 ins_jsonEncodedIntent];
  v2 = v1 != 0;

  return v2;
}

- (void)ins_invokeErrorCompletionHandler:()INSExtensionService forUnderlyingError:
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (a3)
  {
    v6 = MEMORY[0x277D47208];
    v7 = a3;
    v8 = [[v6 alloc] initWithErrorCode:-1];
    v9 = [v5 domain];
    v10 = [v5 code];
    if (![v9 isEqualToString:*MEMORY[0x277CD3838]])
    {
      v14 = [v9 isEqualToString:*MEMORY[0x277CD3848]];
      v11 = @"kAFAssistantErrorDomain";
      v15 = @"kAFAssistantErrorDomain";
      if (v14)
      {
        if (v10 == 2005)
        {
          v17 = 1315;
          [v8 setErrorCode:1315];
          v11 = @"kAFAssistantErrorDomain";
        }

        else
        {
          v16 = 1399;
          if (v10 == 5001)
          {
            v16 = 1301;
          }

          if (v10 == 5000)
          {
            v17 = 1304;
          }

          else
          {
            v17 = v16;
          }

          v11 = @"kAFAssistantErrorDomain";
        }
      }

      else
      {
        v17 = 1399;
      }

      goto LABEL_19;
    }

    if (v10 == 3001)
    {
      v11 = @"kAFAssistantErrorDomain";
      v18 = @"kAFAssistantErrorDomain";
      v13 = MEMORY[0x277D484C0];
    }

    else
    {
      if (v10 != 3005)
      {
        v11 = @"kAFAssistantErrorDomain";
        v19 = @"kAFAssistantErrorDomain";
        v17 = 1302;
        goto LABEL_19;
      }

      v11 = @"SiriAceErrorDomain";
      v12 = @"SiriAceErrorDomain";
      v13 = MEMORY[0x277D48478];
    }

    v17 = *v13;
    [v8 setErrorCode:*v13];
LABEL_19:
    v20 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA7E8];
    v25[0] = v5;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v22 = [v20 errorWithDomain:v11 code:v17 userInfo:v21];

    v7[2](v7, v8, v22);
    kdebug_trace();
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)ins_invokeErrorCompletionHandler:()INSExtensionService withErrorCode:underlyingError:
{
  v27[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [a1 ins_analyticsEndEventType];
    v11 = 603;
    if (a4 != 1306)
    {
      v11 = v10;
    }

    v25 = v11;
    if (a4 == 1316)
    {
      v12 = *MEMORY[0x277D48488];
    }

    else
    {
      v12 = a4;
    }

    v13 = [objc_alloc(MEMORY[0x277D47208]) initWithErrorCode:v12];
    if (v9)
    {
      v14 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA7E8];
      v27[0] = v9;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v16 = [v14 errorWithDomain:@"kAFAssistantErrorDomain" code:a4 userInfo:v15];
    }

    else
    {
      v16 = 0;
    }

    v8[2](v8, v13, v16);
    v17 = +[INSAnalytics sharedAnalytics];
    v18 = [v17 contextDictionaryForCommand:v13];

    v19 = +[INSAnalytics sharedAnalytics];
    v20 = [a1 ins_afAnalyticsContext];
    v21 = +[INSAnalytics sharedAnalytics];
    v22 = [v21 contextDictionaryForError:v16];
    v23 = IFMergeDictionaries();
    [v19 logEventWithType:v25 context:v23 contextNoCopy:{1, v18, v22, 0}];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)ins_sendIntent:()INSExtensionService toExtensionProxy:onQueue:completionHandler:
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a6;
  v8 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[SABaseCommand(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]";
    v12 = 2112;
    v13 = a1;
    _os_log_error_impl(&dword_25553C000, v8, OS_LOG_TYPE_ERROR, "%s %@ delivered to the wrong service", &v10, 0x16u);
  }

  [a1 ins_invokeErrorCompletionHandler:v7 withErrorCode:1303 underlyingError:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)ins_aceIntentResponse
{
  v2 = [a1 ins_jsonEncodedIntentResponse];

  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = [a1 ins_jsonEncodedIntentResponse];
  v4 = [v3 dataUsingEncoding:4];
  v5 = INIntentResponseCreate();

  if (!v5)
  {
LABEL_3:
    v6 = [a1 ins_protobufEncodedIntentResponse];

    if (v6)
    {
      v7 = [a1 ins_protobufEncodedIntentResponse];
      v8 = [v7 data];

      if (v8)
      {
        v9 = [a1 ins_protobufEncodedIntentResponse];
        v10 = [v9 typeName];
        v5 = INIntentResponseCreate();
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end