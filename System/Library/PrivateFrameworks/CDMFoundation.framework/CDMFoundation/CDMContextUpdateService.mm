@interface CDMContextUpdateService
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)a3;
@end

@implementation CDMContextUpdateService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMContextUpdateRequestCommand];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 setWithArray:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)handle:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v51 = "[CDMContextUpdateService handle:]";
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s Calling Context Update Service", buf, 0xCu);
  }

  v5 = [v3 ctxUpdateRequest];
  v6 = [v5 currentTurn];
  v7 = [v6 copy];

  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = [v3 ctxUpdateRequest];
  v10 = [v9 previousTurns];
  v11 = [v8 initWithArray:v10 copyItems:1];

  if (!v7 || (v12 = [v7 tapToEdit], (v12 & 1) == 0) && !+[SiriNLUTypesUtils isTopSdaAskRepeat:](SiriNLUTypesUtils, "isTopSdaAskRepeat:", v7))
  {
    v18 = [v3 ctxUpdateRequest];
    v14 = [v18 qrHypotheses];
    if (v14)
    {
      v19 = [v3 ctxUpdateRequest];
      v20 = [v19 qrHypotheses];
      v21 = [v20 count] == 1;

      if (!v21)
      {
        v48 = 0;
        v14 = 0;
        v27 = 0;
        goto LABEL_39;
      }

      v22 = [v3 ctxUpdateRequest];
      v23 = [v22 qrHypotheses];
      v24 = [v23 objectAtIndexedSubscript:0];
      v18 = [v24 copy];

      if (![v18 rewriteType])
      {
        v34 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v51 = "[CDMContextUpdateService handle:]";
          _os_log_debug_impl(&dword_1DC287000, v34, OS_LOG_TYPE_DEBUG, "%s Handling Correction by Repetition Request", buf, 0xCu);
        }

        v26 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v51 = "[CDMContextUpdateService handle:]";
          _os_log_debug_impl(&dword_1DC287000, v26, OS_LOG_TYPE_DEBUG, "%s Reform type: Correction by Repetition", buf, 0xCu);
        }

        v27 = 1;
        goto LABEL_34;
      }

      if ([v18 rewriteType]== 1)
      {
        v25 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v51 = "[CDMContextUpdateService handle:]";
          _os_log_debug_impl(&dword_1DC287000, v25, OS_LOG_TYPE_DEBUG, "%s Handling AER Request", buf, 0xCu);
        }

        v26 = CDMOSLoggerForCategory(0);
        v27 = 2;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v51 = "[CDMContextUpdateService handle:]";
          _os_log_debug_impl(&dword_1DC287000, v26, OS_LOG_TYPE_DEBUG, "%s Reform type: Reference Resolution", buf, 0xCu);
        }

LABEL_34:

        v48 = 0;
        v14 = 0;
        goto LABEL_37;
      }

      v48 = 0;
      v14 = 0;
    }

    else
    {
      v48 = 0;
    }

    v27 = 0;
    goto LABEL_37;
  }

  v13 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v45 = @"AskRepeat";
    if (v12)
    {
      v45 = @"Tap2Edit";
    }

    *buf = 136315394;
    v51 = "[CDMContextUpdateService handle:]";
    v52 = 2112;
    v53 = v45;
    _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Handling %@ triggered Request", buf, 0x16u);
  }

  v14 = 0;
  v48 = v12 ^ 1;
  while ([v11 count])
  {
    v15 = [v11 lastObject];
    if ([v15 tapToEdit])
    {
    }

    else
    {
      v16 = [v11 lastObject];
      v17 = [SiriNLUTypesUtils isTopSdaAskRepeat:v16];

      if (!v17)
      {
        break;
      }
    }

    v14 = (v14 + 1);
    [v11 removeLastObject];
  }

  if ([v11 count])
  {
    v18 = [v7 asrOutputs];
    v28 = [v11 lastObject];

    v29 = [v18 mutableCopy];
    [v28 setAsrOutputs:v29];

    [v11 removeLastObject];
    v30 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v46 = @"AskRepeat";
      if (v12)
      {
        v46 = @"Tap2Edit";
      }

      *buf = 136315394;
      v51 = "[CDMContextUpdateService handle:]";
      v52 = 2112;
      v53 = v46;
      _os_log_debug_impl(&dword_1DC287000, v30, OS_LOG_TYPE_DEBUG, "%s Reform type: %@", buf, 0x16u);
    }

    v14 = (v14 + 1);
    v27 = 3;
    goto LABEL_38;
  }

  v31 = [v3 ctxUpdateRequest];
  v32 = [v31 previousTurns];
  v33 = [v32 mutableCopy];

  v18 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v51 = "[CDMContextUpdateService handle:]";
    _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s [WARN]: Received an invalid NluRequest with every turn as Tap2Edit/AskRepeat turns.", buf, 0xCu);
  }

  v27 = 0;
  v11 = v33;
LABEL_37:
  v28 = v7;
LABEL_38:

  v7 = v28;
LABEL_39:
  v35 = objc_alloc_init(MEMORY[0x1E69D12A8]);
  [v35 setType:v27];
  [v35 setCurrentTurn:v7];
  [v35 setPreviousTurns:v11];
  v36 = objc_alloc_init(MEMORY[0x1E69D12A0]);
  v37 = [v3 ctxUpdateRequest];
  v38 = [v37 requestId];
  v39 = [v38 copy];
  [v36 setRequestId:v39];

  v49 = v35;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v41 = [v40 mutableCopy];
  [v36 setReformedTurnInputBundles:v41];

  v42 = [[CDMContextUpdateResponseCommand alloc] initWithCtxUpdateResponse:v36];
  if ((v48 & 1) == 0)
  {
    [(CDMContextUpdateService *)self doCoreAnalyticsForContextUpdateOutcome:v27 numTurnsRollback:v14 locale:self->locale];
  }

  v43 = *MEMORY[0x1E69E9840];

  return v42;
}

- (id)setup:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[CDMContextUpdateService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Setting up Context Update Service", &v13, 0xCu);
  }

  v6 = [v4 dynamicConfig];
  v7 = [v6 languageCode];
  locale = self->locale;
  self->locale = v7;

  if (!self->locale)
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[CDMContextUpdateService setup:]";
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Received a setup request command with locale being nil.", &v13, 0xCu);
    }
  }

  self->super.super._serviceState = 2;
  v10 = [(CDMBaseService *)self createSetupResponseCommand];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end