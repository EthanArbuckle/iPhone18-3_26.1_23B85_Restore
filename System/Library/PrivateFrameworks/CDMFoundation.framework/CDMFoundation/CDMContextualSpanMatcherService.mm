@interface CDMContextualSpanMatcherService
- (id)getPredictor;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)a3;
@end

@implementation CDMContextualSpanMatcherService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMContextualSpanMatcherRequestCommand];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 setWithArray:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)getPredictor
{
  v2 = objc_alloc_init(MEMORY[0x1E69AE138]);

  return v2;
}

- (id)handle:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[CDMContextualSpanMatcherService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Calling ContextualSpanMatcher", &v16, 0xCu);
  }

  if (v4 && ([v4 contextualSpanMatcherRequest], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    if (self->_overrideSpansForReplay)
    {
      v7 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315138;
        v17 = "[CDMContextualSpanMatcherService handle:]";
        _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s ContextualSpanMatcher is using override contextual spans", &v16, 0xCu);
      }

      v8 = [[CDMContextualSpanMatcherResponseCommand alloc] initWithMentions:self->_overrideSpansForReplay];
    }

    else
    {
      v12 = [v4 contextualSpanMatcherRequest];
      v13 = [(CDMContextualSpanMatcherService *)self getContextualSpansInternal:v12];

      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315394;
        v17 = "[CDMContextualSpanMatcherService handle:]";
        v18 = 2112;
        v19 = v13;
        _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s #ContextualSpanMatcherService obtained response: %@; handling now", &v16, 0x16u);
      }

      v15 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = 136315138;
        v17 = "[CDMContextualSpanMatcherService handle:]";
        _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s Returning from ContextualSpanMatcher", &v16, 0xCu);
      }

      v8 = [[CDMContextualSpanMatcherResponseCommand alloc] initWithContextualSpanMatcherResponse:v13];
    }
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "[CDMContextualSpanMatcherService handle:]";
      _os_log_error_impl(&dword_1DC287000, v9, OS_LOG_TYPE_ERROR, "%s [ERR]: ContextualSpanMatcher: Either Request and/or Predictor is nil", &v16, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)setup:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[CDMContextualSpanMatcherService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Setting up ContextualSpanMatcher service", &v15, 0xCu);
  }

  v6 = [v4 dynamicConfig];

  v7 = [v6 overrideContextualSpans];
  overrideSpansForReplay = self->_overrideSpansForReplay;
  self->_overrideSpansForReplay = v7;

  self->super.super._serviceState = 2;
  v9 = [(CDMContextualSpanMatcherService *)self getPredictor];
  contextualSpanMatcher = self->_contextualSpanMatcher;
  self->_contextualSpanMatcher = v9;

  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[CDMContextualSpanMatcherService setup:]";
    _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s ContextualSpanMatcher service loaded", &v15, 0xCu);
  }

  v12 = [(CDMBaseService *)self createSetupResponseCommand];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end