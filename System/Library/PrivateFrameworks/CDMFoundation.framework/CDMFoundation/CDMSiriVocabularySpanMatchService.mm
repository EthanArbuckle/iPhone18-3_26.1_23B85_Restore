@interface CDMSiriVocabularySpanMatchService
- (BOOL)isSetupRerunNeededForRequest:(id)request;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)setupSpanMatcher:(id)matcher;
- (id)warmup:(id)warmup;
- (void)updateData:(id)data;
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

- (id)warmup:(id)warmup
{
  v24 = *MEMORY[0x1E69E9840];
  spanMatcher = [(CDMBaseSpanMatchService *)self spanMatcher];
  if (!spanMatcher || (v5 = spanMatcher, [(CDMBaseSpanMatchService *)self spanMatcher], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, v5, (isKindOfClass & 1) == 0))
  {
    v9 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    serviceName = [(CDMBaseService *)self serviceName];
    v20 = 136315394;
    v21 = "[CDMSiriVocabularySpanMatchService warmup:]";
    v22 = 2112;
    v23 = serviceName;
    _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s Prewarm Span Matcher %@: No-op", &v20, 0x16u);
    goto LABEL_10;
  }

  spanMatcher2 = [(CDMBaseSpanMatchService *)self spanMatcher];
  v9 = spanMatcher2;
  if (spanMatcher2)
  {
    semSpanMatcher = [spanMatcher2 semSpanMatcher];

    if (semSpanMatcher)
    {
      v11 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        serviceName2 = [(CDMBaseService *)self serviceName];
        v20 = 136315394;
        v21 = "[CDMSiriVocabularySpanMatchService warmup:]";
        v22 = 2112;
        v23 = serviceName2;
        _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s Prewarm SEM Span Matcher in %@", &v20, 0x16u);
      }

      serviceName = [v9 semSpanMatcher];
      [serviceName prewarmIndex];
LABEL_10:
    }
  }

LABEL_11:

  v14 = [CDMWarmupResponseCommand alloc];
  serviceState = [(CDMBaseService *)self serviceState];
  serviceName3 = [(CDMBaseService *)self serviceName];
  v17 = [(CDMWarmupResponseCommand *)v14 initWithServiceState:serviceState serviceName:serviceName3];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)isSetupRerunNeededForRequest:(id)request
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  spanMatcher = [(CDMBaseSpanMatchService *)self spanMatcher];
  semSandboxId = [spanMatcher semSandboxId];
  if (!semSandboxId)
  {
    siriVocabularySandboxId = [requestCopy siriVocabularySandboxId];

    if (!siriVocabularySandboxId)
    {
      v13 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v21 = "[CDMSiriVocabularySpanMatchService isSetupRerunNeededForRequest:]";
        _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Both Ids are nil, consider them equal; No need to re-run setup for sandboxes.", buf, 0xCu);
      }

      cDMSiriVocabularySpanMatchService = [(CDMDAGBaseService *)&v19 isSetupRerunNeededForRequest:requestCopy, v18.receiver, v18.super_class, self, CDMSiriVocabularySpanMatchService];
      goto LABEL_11;
    }
  }

  siriVocabularySandboxId2 = [requestCopy siriVocabularySandboxId];
  v9 = [semSandboxId isEqualToString:siriVocabularySandboxId2];

  if (v9)
  {
    cDMSiriVocabularySpanMatchService = [(CDMDAGBaseService *)&v18 isSetupRerunNeededForRequest:requestCopy, self, CDMSiriVocabularySpanMatchService, v19.receiver, v19.super_class];
LABEL_11:
    v12 = cDMSiriVocabularySpanMatchService;
    goto LABEL_12;
  }

  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    serviceName = [(CDMBaseService *)self serviceName];
    siriVocabularySandboxId3 = [requestCopy siriVocabularySandboxId];
    *buf = 136315906;
    v21 = "[CDMSiriVocabularySpanMatchService isSetupRerunNeededForRequest:]";
    v22 = 2112;
    v23 = serviceName;
    v24 = 2112;
    v25 = semSandboxId;
    v26 = 2112;
    v27 = siriVocabularySandboxId3;
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Setup rerun is needed for service %@ to change sandbox from %@ to %@", buf, 0x2Au);
  }

  v12 = 1;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)updateData:(id)data
{
  v17 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[CDMSiriVocabularySpanMatchService updateData:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Span Match Service Update data", &v15, 0xCu);
  }

  spanMatcher = [(CDMBaseSpanMatchService *)self spanMatcher];
  v7 = spanMatcher;
  if (spanMatcher)
  {
    semSandboxId = [spanMatcher semSandboxId];
    if (!semSandboxId)
    {
      overrideSpans = [v7 overrideSpans];

      if (overrideSpans)
      {
        goto LABEL_7;
      }

      semSpanMatcher = [dataCopy semSpanMatcher];

      semSandboxId = CDMOSLoggerForCategory(0);
      v12 = os_log_type_enabled(semSandboxId, OS_LOG_TYPE_INFO);
      if (semSpanMatcher)
      {
        if (v12)
        {
          v15 = 136315138;
          v16 = "[CDMSiriVocabularySpanMatchService updateData:]";
          _os_log_impl(&dword_1DC287000, semSandboxId, OS_LOG_TYPE_INFO, "%s Update Siri Vocab Searcher, using Siri Entity Matcher", &v15, 0xCu);
        }

        v13 = [CDMSiriVocabularyProtoSpanMatcher alloc];
        semSandboxId = [dataCopy semSpanMatcher];
        v14 = [(CDMSiriVocabularyProtoSpanMatcher *)v13 initWithSEMSpanMatcher:semSandboxId];
        [(CDMBaseSpanMatchService *)self setSpanMatcher:v14];
      }

      else if (v12)
      {
        v15 = 136315138;
        v16 = "[CDMSiriVocabularySpanMatchService updateData:]";
        _os_log_impl(&dword_1DC287000, semSandboxId, OS_LOG_TYPE_INFO, "%s SiriVocab SpanMatcher not updated because it is originally initialized via sandbox or override spans", &v15, 0xCu);
      }
    }
  }

LABEL_7:

  v10 = *MEMORY[0x1E69E9840];
}

- (id)handle:(id)handle
{
  handleCopy = handle;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CDMSiriVocabularySpanMatchService *)self updateData:handleCopy];

    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CDMSiriVocabularySpanMatchService;
    v5 = [(CDMBaseSpanMatchService *)&v7 handle:handleCopy];
  }

  return v5;
}

- (id)setupSpanMatcher:(id)matcher
{
  v27 = *MEMORY[0x1E69E9840];
  matcherCopy = matcher;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v23 = 136315138;
    v24 = "[CDMSiriVocabularySpanMatchService setupSpanMatcher:]";
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s initializing CDMSiriVocabularySpanMatcher", &v23, 0xCu);
  }

  dynamicConfig = [matcherCopy dynamicConfig];
  overrideSiriVocabSpans = [dynamicConfig overrideSiriVocabSpans];

  if (overrideSiriVocabSpans)
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v23 = 136315138;
      v24 = "[CDMSiriVocabularySpanMatchService setupSpanMatcher:]";
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Span Matcher service is using override spans for SiriVocabularyMatcher!", &v23, 0xCu);
    }

    v8 = [CDMSiriVocabularyProtoSpanMatcher alloc];
    dynamicConfig2 = [matcherCopy dynamicConfig];
    overrideSiriVocabSpans2 = [dynamicConfig2 overrideSiriVocabSpans];
    v11 = [(CDMSiriVocabularyProtoSpanMatcher *)v8 initWithOverrideSpans:overrideSiriVocabSpans2];
LABEL_11:
    v16 = v11;

    goto LABEL_12;
  }

  dynamicConfig3 = [matcherCopy dynamicConfig];
  siriVocabularySandboxId = [dynamicConfig3 siriVocabularySandboxId];

  if (siriVocabularySandboxId)
  {
    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      dynamicConfig4 = [matcherCopy dynamicConfig];
      siriVocabularySandboxId2 = [dynamicConfig4 siriVocabularySandboxId];
      v23 = 136315394;
      v24 = "[CDMSiriVocabularySpanMatchService setupSpanMatcher:]";
      v25 = 2112;
      v26 = siriVocabularySandboxId2;
      _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s user profile debug: initializing CDMSiriVocabularySpanMatcher with Sandbox id %@", &v23, 0x16u);
    }

    v15 = [CDMSiriVocabularyProtoSpanMatcher alloc];
    dynamicConfig2 = [matcherCopy dynamicConfig];
    overrideSiriVocabSpans2 = [dynamicConfig2 siriVocabularySandboxId];
    v11 = [(CDMSiriVocabularyProtoSpanMatcher *)v15 initWithSandboxId:overrideSiriVocabSpans2];
    goto LABEL_11;
  }

  v20 = [CDMSiriVocabularyProtoSpanMatcher alloc];
  dynamicConfig2 = [MEMORY[0x1E69CE410] indexMatcher];
  v16 = [(CDMSiriVocabularyProtoSpanMatcher *)v20 initWithSEMSpanMatcher:dynamicConfig2];
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