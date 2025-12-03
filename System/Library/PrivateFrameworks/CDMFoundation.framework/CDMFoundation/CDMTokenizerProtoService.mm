@interface CDMTokenizerProtoService
+ (id)createProtoTokenRequestWithAsrOutputs:(id)outputs locale:(id)locale;
+ (id)createProtoTokenRequestWithText:(id)text locale:(id)locale;
+ (id)tokenChainFromProto:(id)proto;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)setup;
@end

@implementation CDMTokenizerProtoService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMTokenizationProtoRequestCommand];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 setWithArray:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)tokenChainFromProto:(id)proto
{
  protoCopy = proto;
  v4 = [[CDMTokenChain alloc] initWithProtoTokenChain:protoCopy];

  return v4;
}

+ (id)createProtoTokenRequestWithAsrOutputs:(id)outputs locale:(id)locale
{
  v48 = *MEMORY[0x1E69E9840];
  outputsCopy = outputs;
  localeCopy = locale;
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = outputsCopy;
  v7 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v38;
    v11 = 1;
    *&v8 = 136315906;
    v34 = v8;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        v14 = MEMORY[0x1E69D1428];
        v15 = [v13 idA];
        v16 = [v14 convertUUID:v15];

        v17 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          utterance = [v13 utterance];
          *buf = v34;
          v42 = "+[CDMTokenizerProtoService createProtoTokenRequestWithAsrOutputs:locale:]";
          v43 = 1024;
          *v44 = v11;
          *&v44[4] = 2112;
          *&v44[6] = v16;
          v45 = 2112;
          v46 = utterance;
          _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s ASR #%d: Processing asr.UUID=%@, asr.utterance=%@", buf, 0x26u);
        }

        utterance2 = [v13 utterance];
        whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v20 = [utterance2 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

        if ([v20 length])
        {
          v21 = objc_alloc_init(MEMORY[0x1E69D13C0]);
          [v21 setText:v20];
          [v21 setLocale:localeCopy];
          v22 = [v13 idA];
          [v21 setAsrId:v22];

          v23 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = v34;
            v42 = "+[CDMTokenizerProtoService createProtoTokenRequestWithAsrOutputs:locale:]";
            v43 = 1024;
            *v44 = v11;
            *&v44[4] = 2112;
            *&v44[6] = v16;
            v45 = 2112;
            v46 = v20;
            _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s ASR #%d: Added asr.UUID=%@, trimmed=%@", buf, 0x26u);
          }

          [v36 addObject:v21];
          v24 = [CDMUserDefaultsUtils readAsrAlternativeCount:localeCopy];
          if (v11 >= v24)
          {
            v27 = v24;
            v28 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v42 = "+[CDMTokenizerProtoService createProtoTokenRequestWithAsrOutputs:locale:]";
              v43 = 1024;
              *v44 = v27;
              *&v44[4] = 1024;
              *&v44[6] = v11;
              _os_log_debug_impl(&dword_1DC287000, v28, OS_LOG_TYPE_DEBUG, "%s Early return as we've processed enough ASRs per NSUserDefault config=%d, already processed counter=%d", buf, 0x18u);
            }

            goto LABEL_21;
          }

          ++v11;
        }

        else
        {
          v21 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            utterance3 = [v13 utterance];
            *buf = v34;
            v42 = "+[CDMTokenizerProtoService createProtoTokenRequestWithAsrOutputs:locale:]";
            v43 = 1024;
            *v44 = v11;
            *&v44[4] = 2112;
            *&v44[6] = v16;
            v45 = 2112;
            v46 = utterance3;
            _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s ASR #%d: Skipping trimmed empty version of asr.UUID=%@, asr.utterance=%@", buf, 0x26u);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v29 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v33 = [v36 count];
    *buf = 136315394;
    v42 = "+[CDMTokenizerProtoService createProtoTokenRequestWithAsrOutputs:locale:]";
    v43 = 2048;
    *v44 = v33;
    _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, "%s Returning CDMTokenizationProtoRequestCommand with %lu ASRs", buf, 0x16u);
  }

  v30 = [[CDMTokenizationProtoRequestCommand alloc] initWithRequests:v36];
  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (id)createProtoTokenRequestWithText:(id)text locale:(id)locale
{
  v5 = MEMORY[0x1E69D13C0];
  localeCopy = locale;
  textCopy = text;
  v8 = objc_alloc_init(v5);
  [v8 setText:textCopy];

  [v8 setLocale:localeCopy];
  v9 = [[CDMTokenizationProtoRequestCommand alloc] initWithRequest:v8];

  return v9;
}

- (id)setup:(id)setup
{
  v21 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v19 = 136315138;
    v20 = "[CDMTokenizerProtoService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Tokenization Service setup started", &v19, 0xCu);
  }

  dynamicConfig = [setupCopy dynamicConfig];
  languageCode = [dynamicConfig languageCode];
  v8 = [CDMTokenizer tokenizerForLocale:languageCode];
  tokenizer = self->_tokenizer;
  self->_tokenizer = v8;

  dataDispatcherContext = [setupCopy dataDispatcherContext];

  dataDispatcherContext = self->_dataDispatcherContext;
  self->_dataDispatcherContext = dataDispatcherContext;

  v12 = self->_tokenizer;
  v13 = CDMOSLoggerForCategory(0);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      v19 = 136315138;
      v20 = "[CDMTokenizerProtoService setup:]";
      _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s Tokenization Service setup success", &v19, 0xCu);
    }

    self->super.super._serviceState = 2;
    createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  }

  else
  {
    if (v14)
    {
      v19 = 136315138;
      v20 = "[CDMTokenizerProtoService setup:]";
      _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s Tokenization Service setup failed", &v19, 0xCu);
    }

    self->super.super._serviceState = 3;
    createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
    v16 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Tokenizer nil"];
    [createSetupResponseCommand setCmdError:v16];
  }

  v17 = *MEMORY[0x1E69E9840];

  return createSetupResponseCommand;
}

- (id)handle:(id)handle
{
  v70 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (self->super.super._serviceState == 2)
  {
    cdmSELFLoggingPolicyType = [(CDMDataDispatcherContext *)self->_dataDispatcherContext cdmSELFLoggingPolicyType];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v42 = handleCopy;
    obj = [handleCopy requests];
    v47 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
    if (v47)
    {
      v46 = *v57;
      selfCopy = self;
      v45 = v6;
      do
      {
        v7 = 0;
        do
        {
          if (*v57 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v56 + 1) + 8 * v7);
          if (v8)
          {
            v50 = v7;
            tokenizer = self->_tokenizer;
            v51 = *(*(&v56 + 1) + 8 * v7);
            text = [v8 text];
            v11 = [(CDMTokenizer *)tokenizer createTokenChain:text];

            v12 = objc_alloc_init(MEMORY[0x1E69D13D8]);
            string = [v11 string];
            [v12 setStringValue:string];

            locale = [v11 locale];
            v48 = v12;
            [v12 setLocale:locale];

            v15 = MEMORY[0x1E695DF70];
            tokens = [v11 tokens];
            v17 = [v15 arrayWithCapacity:{objc_msgSend(tokens, "count")}];

            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v49 = v11;
            tokens2 = [v11 tokens];
            v19 = [tokens2 countByEnumeratingWithState:&v52 objects:v68 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v53;
              do
              {
                v22 = 0;
                do
                {
                  if (*v53 != v21)
                  {
                    objc_enumerationMutation(tokens2);
                  }

                  v23 = *(*(&v52 + 1) + 8 * v22);
                  v24 = objc_alloc_init(MEMORY[0x1E69D13D0]);
                  value = [v23 value];
                  [v24 setValue:value];

                  [v24 setBegin:{objc_msgSend(v23, "begin")}];
                  [v24 setEnd:{objc_msgSend(v23, "end")}];
                  [v24 setIsSignificant:{objc_msgSend(v23, "isSignificant")}];
                  [v24 setIsWhitespace:{objc_msgSend(v23, "isWhiteSpace")}];
                  cleanValue = [v23 cleanValue];
                  [v24 setCleanValue:cleanValue];

                  cleanValues = [v23 cleanValues];
                  v28 = [cleanValues mutableCopy];
                  [v24 setCleanValues:v28];

                  [v24 setTokenIndex:{objc_msgSend(v23, "tokenIndex")}];
                  [v24 setNonWhitespaceTokenIndex:{objc_msgSend(v23, "nonWhitespaceTokenIndex")}];
                  normalizedValues = [v23 normalizedValues];
                  v30 = [normalizedValues mutableCopy];
                  [v24 setNormalizedValues:v30];

                  [v17 addObject:v24];
                  v31 = CDMLogContext;
                  v32 = os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG);
                  if (cdmSELFLoggingPolicyType == 2)
                  {
                    if (v32)
                    {
                      *buf = 136315394;
                      v61 = "[CDMTokenizerProtoService handle:]";
                      v62 = 2112;
                      v63 = @"tokenize";
                      _os_log_debug_impl(&dword_1DC287000, v31, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nAdded token for asrId=<Redacted>.\nToken = <Redacted>", buf, 0x16u);
                    }
                  }

                  else if (v32)
                  {
                    v33 = v31;
                    asrId = [v51 asrId];
                    *buf = 136315907;
                    v61 = "[CDMTokenizerProtoService handle:]";
                    v62 = 2112;
                    v63 = @"tokenize";
                    v64 = 2112;
                    v65 = asrId;
                    v66 = 2117;
                    v67 = v24;
                    _os_log_debug_impl(&dword_1DC287000, v33, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nAdded token for asrId=%@.\nToken = %{sensitive}@", buf, 0x2Au);
                  }

                  ++v22;
                }

                while (v20 != v22);
                v20 = [tokens2 countByEnumeratingWithState:&v52 objects:v68 count:16];
              }

              while (v20);
            }

            [v48 setTokens:v17];
            v35 = objc_alloc_init(MEMORY[0x1E69D13C8]);
            text2 = [v51 text];
            [v35 setText:text2];

            [v35 setTokenChain:v48];
            asrId2 = [v51 asrId];
            [v35 setAsrId:asrId2];

            v6 = v45;
            [v45 addObject:v35];

            self = selfCopy;
            v38 = v49;
            v7 = v50;
          }

          else
          {
            v38 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v61 = "[CDMTokenizerProtoService handle:]";
              _os_log_error_impl(&dword_1DC287000, v38, OS_LOG_TYPE_ERROR, "%s [ERR]: TokenizationProtoRequest nil, skipping", buf, 0xCu);
            }
          }

          ++v7;
        }

        while (v7 != v47);
        v47 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
      }

      while (v47);
    }

    v39 = [[CDMTokenizationProtoResponseCommand alloc] initWithResponses:v6];
    handleCopy = v42;
  }

  else
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v61 = "[CDMTokenizerProtoService handle:]";
      _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: TokenizationProto Request received while service in not Ready state", buf, 0xCu);
    }

    v39 = 0;
  }

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

@end