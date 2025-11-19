@interface CDMSiriVocabularySpanMatchService
- (BOOL)isSetupRerunNeededForRequest:(id)a3;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)setupSpanMatcher:(id)a3;
- (id)warmup:(id)a3;
- (void)updateData:(id)a3;
@end

@implementation CDMSiriVocabularySpanMatchService

- (id)handleRequestCommandTypeNames
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMSpanMatcherRequestCommand];
  v9[0] = v3;
  v4 = +[(CDMBaseCommand *)CDMSpanMatchDataUpdateCommand];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 setWithArray:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)warmup:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [(CDMBaseSpanMatchService *)self spanMatcher];
  if (!v4 || (v5 = v4, [(CDMBaseSpanMatchService *)self spanMatcher], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, v5, (isKindOfClass & 1) == 0))
  {
    v9 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v13 = [(CDMBaseService *)self serviceName];
    v20 = 136315394;
    v21 = "[CDMSiriVocabularySpanMatchService warmup:]";
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s Prewarm Span Matcher %@: No-op", &v20, 0x16u);
    goto LABEL_10;
  }

  v8 = [(CDMBaseSpanMatchService *)self spanMatcher];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 semSpanMatcher];

    if (v10)
    {
      v11 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(CDMBaseService *)self serviceName];
        v20 = 136315394;
        v21 = "[CDMSiriVocabularySpanMatchService warmup:]";
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s Prewarm SEM Span Matcher in %@", &v20, 0x16u);
      }

      v13 = [v9 semSpanMatcher];
      [v13 prewarmIndex];
LABEL_10:
    }
  }

LABEL_11:

  v14 = [CDMWarmupResponseCommand alloc];
  v15 = [(CDMBaseService *)self serviceState];
  v16 = [(CDMBaseService *)self serviceName];
  v17 = [(CDMWarmupResponseCommand *)v14 initWithServiceState:v15 serviceName:v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)isSetupRerunNeededForRequest:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CDMBaseSpanMatchService *)self spanMatcher];
  v6 = [v5 semSandboxId];
  if (!v6)
  {
    v7 = [v4 siriVocabularySandboxId];

    if (!v7)
    {
      v13 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v21 = "[CDMSiriVocabularySpanMatchService isSetupRerunNeededForRequest:]";
        _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Both Ids are nil, consider them equal; No need to re-run setup for sandboxes.", buf, 0xCu);
      }

      v10 = [(CDMDAGBaseService *)&v19 isSetupRerunNeededForRequest:v4, v18.receiver, v18.super_class, self, CDMSiriVocabularySpanMatchService];
      goto LABEL_11;
    }
  }

  v8 = [v4 siriVocabularySandboxId];
  v9 = [v6 isEqualToString:v8];

  if (v9)
  {
    v10 = [(CDMDAGBaseService *)&v18 isSetupRerunNeededForRequest:v4, self, CDMSiriVocabularySpanMatchService, v19.receiver, v19.super_class];
LABEL_11:
    v12 = v10;
    goto LABEL_12;
  }

  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(CDMBaseService *)self serviceName];
    v17 = [v4 siriVocabularySandboxId];
    *buf = 136315906;
    v21 = "[CDMSiriVocabularySpanMatchService isSetupRerunNeededForRequest:]";
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v17;
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Setup rerun is needed for service %@ to change sandbox from %@ to %@", buf, 0x2Au);
  }

  v12 = 1;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)updateData:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[CDMSiriVocabularySpanMatchService updateData:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Span Match Service Update data", &v15, 0xCu);
  }

  v6 = [(CDMBaseSpanMatchService *)self spanMatcher];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 semSandboxId];
    if (!v8)
    {
      v9 = [v7 overrideSpans];

      if (v9)
      {
        goto LABEL_7;
      }

      v11 = [v4 semSpanMatcher];

      v8 = CDMOSLoggerForCategory(0);
      v12 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v11)
      {
        if (v12)
        {
          v15 = 136315138;
          v16 = "[CDMSiriVocabularySpanMatchService updateData:]";
          _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s Update Siri Vocab Searcher, using Siri Entity Matcher", &v15, 0xCu);
        }

        v13 = [CDMSiriVocabularyProtoSpanMatcher alloc];
        v8 = [v4 semSpanMatcher];
        v14 = [(CDMSiriVocabularyProtoSpanMatcher *)v13 initWithSEMSpanMatcher:v8];
        [(CDMBaseSpanMatchService *)self setSpanMatcher:v14];
      }

      else if (v12)
      {
        v15 = 136315138;
        v16 = "[CDMSiriVocabularySpanMatchService updateData:]";
        _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s SiriVocab SpanMatcher not updated because it is originally initialized via sandbox or override spans", &v15, 0xCu);
      }
    }
  }

LABEL_7:

  v10 = *MEMORY[0x1E69E9840];
}

- (id)handle:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CDMSiriVocabularySpanMatchService *)self updateData:v4];

    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CDMSiriVocabularySpanMatchService;
    v5 = [(CDMBaseSpanMatchService *)&v7 handle:v4];
  }

  return v5;
}

- (id)setupSpanMatcher:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v23 = 136315138;
    v24 = "[CDMSiriVocabularySpanMatchService setupSpanMatcher:]";
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s initializing CDMSiriVocabularySpanMatcher", &v23, 0xCu);
  }

  v5 = [v3 dynamicConfig];
  v6 = [v5 overrideSiriVocabSpans];

  if (v6)
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v23 = 136315138;
      v24 = "[CDMSiriVocabularySpanMatchService setupSpanMatcher:]";
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Span Matcher service is using override spans for SiriVocabularyMatcher!", &v23, 0xCu);
    }

    v8 = [CDMSiriVocabularyProtoSpanMatcher alloc];
    v9 = [v3 dynamicConfig];
    v10 = [v9 overrideSiriVocabSpans];
    v11 = [(CDMSiriVocabularyProtoSpanMatcher *)v8 initWithOverrideSpans:v10];
LABEL_11:
    v16 = v11;

    goto LABEL_12;
  }

  v12 = [v3 dynamicConfig];
  v13 = [v12 siriVocabularySandboxId];

  if (v13)
  {
    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v3 dynamicConfig];
      v22 = [v21 siriVocabularySandboxId];
      v23 = 136315394;
      v24 = "[CDMSiriVocabularySpanMatchService setupSpanMatcher:]";
      v25 = 2112;
      v26 = v22;
      _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s user profile debug: initializing CDMSiriVocabularySpanMatcher with Sandbox id %@", &v23, 0x16u);
    }

    v15 = [CDMSiriVocabularyProtoSpanMatcher alloc];
    v9 = [v3 dynamicConfig];
    v10 = [v9 siriVocabularySandboxId];
    v11 = [(CDMSiriVocabularyProtoSpanMatcher *)v15 initWithSandboxId:v10];
    goto LABEL_11;
  }

  v20 = [CDMSiriVocabularyProtoSpanMatcher alloc];
  v9 = [MEMORY[0x1E69CE410] indexMatcher];
  v16 = [(CDMSiriVocabularyProtoSpanMatcher *)v20 initWithSEMSpanMatcher:v9];
LABEL_12:

  if (!v16)
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315138;
      v24 = "[CDMSiriVocabularySpanMatchService setupSpanMatcher:]";
      _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: Not able to initialize SiriVocabulary span matcher", &v23, 0xCu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

@end