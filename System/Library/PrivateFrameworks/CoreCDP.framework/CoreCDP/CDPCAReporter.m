@interface CDPCAReporter
- (CDPCAReporter)initWithEvent:(id)a3;
- (void)_sendEvent;
- (void)populateUnderlyingErrorsStartingWithRootError:(id)a3 maxDepth:(unsigned int)a4 topLevelErrorCodeKey:(id)a5 topLevelErrorDomainKey:(id)a6 errorCodePrefix:(id)a7 errorDomainPrefix:(id)a8 domainAllowlist:(id)a9;
- (void)sendReport;
@end

@implementation CDPCAReporter

- (CDPCAReporter)initWithEvent:(id)a3
{
  v5 = a3;
  if (getenv("__OSINSTALL_ENVIRONMENT") || getenv("__AKSYNCBUBBLE"))
  {
    v6 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CDPCAReporter;
    v8 = [(CDPCAReporter *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_eventName, a3);
      v10 = [MEMORY[0x1E695DF90] dictionary];
      reportData = v9->_reportData;
      v9->_reportData = v10;

      mach_timebase_info(&v9->_clock_timebase);
      v9->_initTime = mach_absolute_time();
    }

    self = v9;
    v6 = self;
  }

  return v6;
}

- (void)sendReport
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1DED99000, a2, OS_LOG_TYPE_DEBUG, "Already sent CDPCA event %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_sendEvent
{
  if (MEMORY[0x1EEE86508])
  {
    eventName = self->_eventName;
    reportData = self->_reportData;
    AnalyticsSendEvent();
  }
}

- (void)populateUnderlyingErrorsStartingWithRootError:(id)a3 maxDepth:(unsigned int)a4 topLevelErrorCodeKey:(id)a5 topLevelErrorDomainKey:(id)a6 errorCodePrefix:(id)a7 errorDomainPrefix:(id)a8 domainAllowlist:(id)a9
{
  v37 = a3;
  v15 = a5;
  v16 = a6;
  v39 = a7;
  v38 = a8;
  v17 = a9;
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v37, "code")}];
  v36 = v15;
  [(CDPCAReporter *)self setObject:v18 forKeyedSubscript:v15];

  v19 = [v37 domain];
  v35 = v16;
  [(CDPCAReporter *)self setObject:v19 forKeyedSubscript:v16];

  v20 = [v37 userInfo];
  v21 = *MEMORY[0x1E696AA08];
  v22 = [v20 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v22)
  {
    v23 = a4 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v25 = 2;
    while (1)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", v39, v25 - 1];
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", v38, v25 - 1];
      v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v22, "code")}];
      [(CDPCAReporter *)self setObject:v28 forKeyedSubscript:v26];

      v29 = [v22 domain];
      if (v17)
      {
        if ([v17 containsObject:v29])
        {
          v30 = [v22 domain];
          [(CDPCAReporter *)self setObject:v30 forKeyedSubscript:v27];

          goto LABEL_13;
        }

        v31 = self;
        v32 = @"errorDomainNotInAllowlist";
      }

      else
      {
        v31 = self;
        v32 = v29;
      }

      [(CDPCAReporter *)v31 setObject:v32 forKeyedSubscript:v27];
LABEL_13:

      v33 = [v22 userInfo];
      v24 = [v33 objectForKeyedSubscript:v21];

      if (v24)
      {
        v22 = v24;
        if (v25++ <= a4)
        {
          continue;
        }
      }

      goto LABEL_16;
    }
  }

  v24 = v22;
LABEL_16:
}

@end