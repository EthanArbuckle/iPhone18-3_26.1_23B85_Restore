@interface CDPCAReporter
- (CDPCAReporter)initWithEvent:(id)event;
- (void)_sendEvent;
- (void)populateUnderlyingErrorsStartingWithRootError:(id)error maxDepth:(unsigned int)depth topLevelErrorCodeKey:(id)key topLevelErrorDomainKey:(id)domainKey errorCodePrefix:(id)prefix errorDomainPrefix:(id)domainPrefix domainAllowlist:(id)allowlist;
- (void)sendReport;
@end

@implementation CDPCAReporter

- (CDPCAReporter)initWithEvent:(id)event
{
  eventCopy = event;
  if (getenv("__OSINSTALL_ENVIRONMENT") || getenv("__AKSYNCBUBBLE"))
  {
    selfCopy = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CDPCAReporter;
    v8 = [(CDPCAReporter *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_eventName, event);
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      reportData = v9->_reportData;
      v9->_reportData = dictionary;

      mach_timebase_info(&v9->_clock_timebase);
      v9->_initTime = mach_absolute_time();
    }

    self = v9;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)sendReport
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(self + 8);
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

- (void)populateUnderlyingErrorsStartingWithRootError:(id)error maxDepth:(unsigned int)depth topLevelErrorCodeKey:(id)key topLevelErrorDomainKey:(id)domainKey errorCodePrefix:(id)prefix errorDomainPrefix:(id)domainPrefix domainAllowlist:(id)allowlist
{
  errorCopy = error;
  keyCopy = key;
  domainKeyCopy = domainKey;
  prefixCopy = prefix;
  domainPrefixCopy = domainPrefix;
  allowlistCopy = allowlist;
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  v36 = keyCopy;
  [(CDPCAReporter *)self setObject:v18 forKeyedSubscript:keyCopy];

  domain = [errorCopy domain];
  v35 = domainKeyCopy;
  [(CDPCAReporter *)self setObject:domain forKeyedSubscript:domainKeyCopy];

  userInfo = [errorCopy userInfo];
  v21 = *MEMORY[0x1E696AA08];
  v22 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v22)
  {
    v23 = depth == 0;
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
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", prefixCopy, v25 - 1];
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", domainPrefixCopy, v25 - 1];
      v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v22, "code")}];
      [(CDPCAReporter *)self setObject:v28 forKeyedSubscript:v26];

      domain2 = [v22 domain];
      if (allowlistCopy)
      {
        if ([allowlistCopy containsObject:domain2])
        {
          domain3 = [v22 domain];
          [(CDPCAReporter *)self setObject:domain3 forKeyedSubscript:v27];

          goto LABEL_13;
        }

        selfCopy2 = self;
        v32 = @"errorDomainNotInAllowlist";
      }

      else
      {
        selfCopy2 = self;
        v32 = domain2;
      }

      [(CDPCAReporter *)selfCopy2 setObject:v32 forKeyedSubscript:v27];
LABEL_13:

      userInfo2 = [v22 userInfo];
      v24 = [userInfo2 objectForKeyedSubscript:v21];

      if (v24)
      {
        v22 = v24;
        if (v25++ <= depth)
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