@interface CDMAnalytics
+ (void)recordCDMSetupFailureEvent:(id)event withError:(id)error;
+ (void)recordCDMSetupSuccessEvent:(id)event;
+ (void)recordContextUpdateOutcome:(int)outcome numTurnsRollback:(int)rollback locale:(id)locale;
+ (void)recordGraphFailureEvent:(id)event withError:(id)error;
+ (void)recordGraphSuccessEvent:(id)event withTopParserId:(id)id;
+ (void)recordReceivedNluRequestEvent:(id)event withNluRequest:(id)request;
@end

@implementation CDMAnalytics

+ (void)recordGraphFailureEvent:(id)event withError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  errorCopy = error;
  v7 = errorCopy;
  if (eventCopy)
  {
    if (errorCopy)
    {
      domain = [errorCopy domain];
      [v7 code];
    }

    else
    {
      domain = @"UnknownErrorDomain";
    }

    v11 = eventCopy;
    v12 = domain;
    v9 = domain;
    AnalyticsSendEventLazy();
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "+[CDMAnalytics recordGraphFailureEvent:withError:]";
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Skipping recordGraphFailureEvent due to locale being nil.", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

id __50__CDMAnalytics_recordGraphFailureEvent_withError___block_invoke(void *a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"locale";
  v6[1] = @"wasSuccessful";
  v1 = a1[5];
  v7[0] = a1[4];
  v7[1] = MEMORY[0x1E695E110];
  v7[2] = v1;
  v6[2] = @"errorDomain";
  v6[3] = @"errorCode";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v7[3] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (void)recordGraphSuccessEvent:(id)event withTopParserId:(id)id
{
  v15 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  idCopy = id;
  v7 = idCopy;
  if (!eventCopy)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v14 = "+[CDMAnalytics recordGraphSuccessEvent:withTopParserId:]";
    v9 = "%s [WARN]: Skipping recordGraphSuccessEvent due to locale being nil.";
LABEL_8:
    _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
    goto LABEL_9;
  }

  if (!idCopy)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v14 = "+[CDMAnalytics recordGraphSuccessEvent:withTopParserId:]";
    v9 = "%s [WARN]: Skipping recordGraphSuccessEvent due to parserId being nil.";
    goto LABEL_8;
  }

  v11 = eventCopy;
  v12 = v7;
  AnalyticsSendEventLazy();

  v8 = v11;
LABEL_9:

  v10 = *MEMORY[0x1E69E9840];
}

id __56__CDMAnalytics_recordGraphSuccessEvent_withTopParserId___block_invoke(uint64_t a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"locale";
  v5[1] = @"wasSuccessful";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = MEMORY[0x1E695E118];
  v5[2] = @"topParseParserId";
  v6[2] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (void)recordCDMSetupFailureEvent:(id)event withError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  errorCopy = error;
  v7 = errorCopy;
  if (eventCopy)
  {
    if (errorCopy)
    {
      domain = [errorCopy domain];
      [v7 code];
    }

    else
    {
      domain = @"UnknownErrorDomain";
    }

    v11 = eventCopy;
    v12 = domain;
    v9 = domain;
    AnalyticsSendEventLazy();
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "+[CDMAnalytics recordCDMSetupFailureEvent:withError:]";
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Skipping recordCDMSetupFailureEvent due to locale being nil.", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

id __53__CDMAnalytics_recordCDMSetupFailureEvent_withError___block_invoke(void *a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"locale";
  v6[1] = @"wasSuccessful";
  v1 = a1[5];
  v7[0] = a1[4];
  v7[1] = MEMORY[0x1E695E110];
  v7[2] = v1;
  v6[2] = @"errorDomain";
  v6[3] = @"errorCode";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v7[3] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (void)recordCDMSetupSuccessEvent:(id)event
{
  v10 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = eventCopy;
  if (eventCopy)
  {
    v7 = eventCopy;
    AnalyticsSendEventLazy();
    v5 = v7;
  }

  else
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = "+[CDMAnalytics recordCDMSetupSuccessEvent:]";
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: Skipping recordCDMSetupSuccessEvent due to locale being nil.", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

id __43__CDMAnalytics_recordCDMSetupSuccessEvent___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5[0] = @"locale";
  v5[1] = @"wasSuccessful";
  v6[0] = v1;
  v6[1] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (void)recordContextUpdateOutcome:(int)outcome numTurnsRollback:(int)rollback locale:(id)locale
{
  localeCopy = locale;
  v5 = localeCopy;
  AnalyticsSendEventLazy();
}

+ (void)recordReceivedNluRequestEvent:(id)event withNluRequest:(id)request
{
  v13 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  requestCopy = request;
  if (eventCopy)
  {
    v9 = eventCopy;
    v10 = requestCopy;
    AnalyticsSendEventLazy();

    v7 = v9;
  }

  else
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "+[CDMAnalytics recordReceivedNluRequestEvent:withNluRequest:]";
      _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s [WARN]: Skipping recordReceivedNluRequestEvent due to locale being nil.", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

id __61__CDMAnalytics_recordReceivedNluRequestEvent_withNluRequest___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v9[0] = @"locale";
  v9[1] = @"previousTurnCount";
  v10[0] = v2;
  v3 = MEMORY[0x1E696AD98];
  v4 = [v1 previousTurnInputs];
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end