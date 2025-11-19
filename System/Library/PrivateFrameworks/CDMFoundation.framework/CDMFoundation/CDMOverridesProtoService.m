@interface CDMOverridesProtoService
+ (id)getCDMServiceAssetConfig;
- (id)buildOverridesTurnInputAndPreprocessing;
- (id)createSetupErrorCmd:(id)a3;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)matchOverride:(id)a3 shouldAppend:(BOOL *)a4;
- (id)setup:(id)a3;
- (id)setupFailedFor:(id)a3;
- (id)setupSucceeded;
- (id)warmup:(id)a3;
- (void)dealloc;
@end

@implementation CDMOverridesProtoService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMOverridesProtoRequestCommand];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 setWithArray:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v7 = @"nlv4_overrides";
  v8 = @"com.apple.siri.nl.overrides";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:1];

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)buildOverridesTurnInputAndPreprocessing
{
  v2 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
  v3 = objc_alloc_init(MEMORY[0x1E69D1140]);
  [v3 setUtterance:@"HelloWorld"];
  [v3 setProbability:1.0];
  v4 = MEMORY[0x1E69D13F8];
  v5 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v6 = [v4 convertFromUUID:v5];
  [v3 setIdA:v6];

  v7 = objc_alloc_init(MEMORY[0x1E69D13D0]);
  [v7 setValue:@"HelloWorld"];
  [v7 setBegin:0];
  [v7 setEnd:10];
  [v7 setIsSignificant:1];
  [v7 setIsWhitespace:0];
  [v7 setCleanValue:@"HelloWorld"];
  [v7 setTokenIndex:0];
  [v7 setNonWhitespaceTokenIndex:0];
  v8 = objc_alloc_init(MEMORY[0x1E69D13D8]);
  v9 = [v2 localeIdentifier];
  [v8 setLocale:v9];

  [v8 setStringValue:@"HelloWorld"];
  v10 = [MEMORY[0x1E695DF70] arrayWithObjects:{v7, 0}];
  [v8 setTokens:v10];

  v11 = objc_alloc_init(MEMORY[0x1E69D1228]);
  v12 = [MEMORY[0x1E695DF70] arrayWithObjects:{v3, 0}];
  [v11 setAsrOutputs:v12];

  v13 = [v2 localeIdentifier];
  [v11 setLocale:v13];

  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v15 = objc_alloc_init(MEMORY[0x1E69D1338]);
  [v15 setUtterance:@"HelloWorld"];
  [v15 setTokenChain:v8];
  [v15 setTurnInput:v11];
  [v14 addObject:v15];

  return v14;
}

- (id)setupSucceeded
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[CDMOverridesProtoService setupSucceeded]";
    _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s Overrides service has been setup successfully!", &v7, 0xCu);
  }

  self->super.super._serviceState = 2;
  v4 = [(CDMBaseService *)self createSetupResponseCommand];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)dealloc
{
  [MEMORY[0x1E69D0928] clearCache];
  v3.receiver = self;
  v3.super_class = CDMOverridesProtoService;
  [(CDMOverridesProtoService *)&v3 dealloc];
}

- (id)matchOverride:(id)a3 shouldAppend:(BOOL *)a4
{
  v6 = a3;
  v7 = [(CDMOverridesProtoService *)self store];
  v8 = [v7 matchWithInputs:v6 shouldAppend:a4];

  return v8;
}

- (id)handle:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v56 = a3;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    buf = 136315138;
    v70 = "[CDMOverridesProtoService handle:]";
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Service is handling command to match user request to database of overrides", &buf, 0xCu);
  }

  if (self->super.super._serviceState != 2)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Service is not ready to handle commands! State: %tu", self->super.super._serviceState];
    v27 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      v70 = "[CDMOverridesProtoService handle:]";
      v71 = 2112;
      v72 = v5;
      _os_log_error_impl(&dword_1DC287000, v27, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &buf, 0x16u);
    }

    v22 = objc_alloc_init(CDMOverridesProtoResponseCommand);
    v6 = [(CDMBaseService *)self createErrorWithCode:1 description:v5];
    [(CDMBaseCommand *)v22 setCmdError:v6];
    goto LABEL_26;
  }

  v5 = [v56 request];
  v6 = [(__CFString *)v5 inputs];
  v7 = [v6 objectAtIndex:0];
  v8 = [v7 tokenChain];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = [v7 tokenChain];
  v10 = [v9 tokens];
  if (!v10)
  {

    goto LABEL_22;
  }

  v11 = [v7 tokenChain];
  v12 = [v11 tokens];
  v13 = [v12 count] == 0;

  if (v13)
  {
LABEL_22:
    v28 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
    {
      buf = 136315650;
      v70 = "[CDMOverridesProtoService handle:]";
      v71 = 2112;
      v72 = @"overrides";
      v73 = 2112;
      v74 = @"Request has no tokens; ignoring command.";
      _os_log_impl(&dword_1DC287000, v28, OS_LOG_TYPE_INFO, "%s [WARN]: [insights-cdm-%@]:\nOverrides skipped request: %@", &buf, 0x20u);
    }

    v22 = objc_alloc_init(CDMOverridesProtoResponseCommand);
    v29 = MEMORY[0x1E696ABC0];
    v24 = [(CDMBaseService *)self serviceName];
    v67 = *MEMORY[0x1E696A578];
    v68 = @"Request has no tokens; ignoring command.";
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v31 = [v29 errorWithDomain:v24 code:3 userInfo:v30];
    [(CDMBaseCommand *)v22 setCmdError:v31];

    goto LABEL_25;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v14 = [v7 tokenChain];
  v15 = [v14 tokens];

  v16 = [v15 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = *v59;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v59 != v17)
      {
        objc_enumerationMutation(v15);
      }

      if (![*(*(&v58 + 1) + 8 * i) isWhitespace])
      {

        v34 = [v7 utterance];
        v35 = [v34 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
        [v7 setUtterance:v35];

        v24 = self;
        objc_sync_enter(v24);
        v36 = [v7 tokenChain];
        if (v36)
        {
          v37 = [v7 tokenChain];
          v38 = [v37 locale];
          if (v38)
          {
            v39 = [v7 tokenChain];
            v40 = [v39 locale];
            v41 = [v40 isEqual:&stru_1F5800F50];

            if (!v41)
            {
              v42 = [(__CFString *)v5 inputs];
              v57 = 0;
              v43 = [(CDMOverridesProtoService *)v24 matchOverride:v42 shouldAppend:&v57];
              if ([(__CFString *)v43 count])
              {
                v44 = v57;
                v45 = CDMLogContext;
                v46 = os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG);
                if (v44 == 1)
                {
                  if (v46)
                  {
                    buf = 136315650;
                    v70 = "[CDMOverridesProtoService handle:]";
                    v71 = 2112;
                    v72 = @"overrides";
                    v73 = 2112;
                    v74 = v43;
                    _os_log_debug_impl(&dword_1DC287000, v45, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nMatched override(s) to append: %@", &buf, 0x20u);
                  }

                  v47 = [CDMOverridesProtoResponseCommand alloc];
                  v48 = [(CDMOverridesProtoResponseCommand *)v47 initWithParsesForReplacement:MEMORY[0x1E695E0F0] parsesForAppending:v43];
                }

                else
                {
                  if (v46)
                  {
                    buf = 136315650;
                    v70 = "[CDMOverridesProtoService handle:]";
                    v71 = 2112;
                    v72 = @"overrides";
                    v73 = 2112;
                    v74 = v43;
                    _os_log_debug_impl(&dword_1DC287000, v45, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nMatched override: %@", &buf, 0x20u);
                  }

                  v55 = [CDMOverridesProtoResponseCommand alloc];
                  v48 = [(CDMOverridesProtoResponseCommand *)v55 initWithParsesForReplacement:v43 parsesForAppending:MEMORY[0x1E695E0F0]];
                }
              }

              else
              {
                v53 = CDMLogContext;
                if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
                {
                  buf = 136315394;
                  v70 = "[CDMOverridesProtoService handle:]";
                  v71 = 2112;
                  v72 = @"overrides";
                  _os_log_debug_impl(&dword_1DC287000, v53, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nNo overrides were matched to the request.", &buf, 0x16u);
                }

                v54 = [CDMOverridesProtoResponseCommand alloc];
                v48 = [(CDMOverridesProtoResponseCommand *)v54 initWithParsesForReplacement:MEMORY[0x1E695E0F0] parsesForAppending:MEMORY[0x1E695E0F0]];
              }

              v22 = v48;

LABEL_41:
              objc_sync_exit(v24);
              goto LABEL_25;
            }
          }

          else
          {
          }
        }

        v49 = CDMLogContext;
        if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_ERROR))
        {
          buf = 136315650;
          v70 = "[CDMOverridesProtoService handle:]";
          v71 = 2112;
          v72 = @"overrides";
          v73 = 2112;
          v74 = @"Language code is not set; unable to perform override lookup.";
          _os_log_error_impl(&dword_1DC287000, v49, OS_LOG_TYPE_ERROR, "%s [ERR]: [insights-cdm-%@]:\nOverrides skipped request: %@", &buf, 0x20u);
        }

        v22 = objc_alloc_init(CDMOverridesProtoResponseCommand);
        v50 = MEMORY[0x1E696ABC0];
        v42 = [(CDMBaseService *)v24 serviceName];
        v62 = *MEMORY[0x1E696A578];
        v63 = @"Language code is not set; unable to perform override lookup.";
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v52 = [v50 errorWithDomain:v42 code:3 userInfo:v51];
        [(CDMBaseCommand *)v22 setCmdError:v52];

        goto LABEL_41;
      }
    }

    v16 = [v15 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_15:

  v19 = [v7 utterance];
  v20 = [v19 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
  [v7 setUtterance:v20];

  v21 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
  {
    buf = 136315650;
    v70 = "[CDMOverridesProtoService handle:]";
    v71 = 2112;
    v72 = @"overrides";
    v73 = 2112;
    v74 = @"All tokens found contained only whitespace; ignoring command.";
    _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s [WARN]: [insights-cdm-%@]:\nOverrides skipped request: %@", &buf, 0x20u);
  }

  v22 = objc_alloc_init(CDMOverridesProtoResponseCommand);
  v23 = MEMORY[0x1E696ABC0];
  v24 = [(CDMBaseService *)self serviceName];
  v64 = *MEMORY[0x1E696A578];
  v65 = @"All tokens found contained only whitespace; ignoring command.";
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v26 = [v23 errorWithDomain:v24 code:3 userInfo:v25];
  [(CDMBaseCommand *)v22 setCmdError:v26];

LABEL_25:
LABEL_26:

  v32 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)setupFailedFor:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[CDMOverridesProtoService setupFailedFor:]";
    v12 = 2112;
    v13 = v4;
    _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: Overrides service failed to setup: %@", &v10, 0x16u);
  }

  self->super.super._serviceState = 3;
  v6 = [(CDMBaseService *)self createSetupResponseCommand];
  v7 = [(CDMBaseService *)self createErrorWithCode:0 description:v4];
  [v6 setCmdError:v7];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)warmup:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[CDMOverridesProtoService warmup:]";
    _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s Warming Up CDMOverridesProtoService", &v18, 0xCu);
  }

  v7 = [(CDMOverridesProtoService *)v5 store];
  v8 = [v4 dynamicConfig];
  v9 = [v8 languageCode];
  [v7 preheatWithLanguageCode:v9];

  v10 = [(CDMOverridesProtoService *)v5 buildOverridesTurnInputAndPreprocessing];
  LOBYTE(v18) = 0;
  v11 = [(CDMOverridesProtoService *)v5 matchOverride:v10 shouldAppend:&v18];

  objc_sync_exit(v5);
  v12 = [CDMWarmupResponseCommand alloc];
  v13 = [(CDMBaseService *)v5 serviceState];
  v14 = [(CDMBaseService *)v5 serviceName];
  v15 = [(CDMWarmupResponseCommand *)v12 initWithServiceState:v13 serviceName:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)setup:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v31 = 136315138;
    v32 = "[CDMOverridesProtoService setup:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Beginning setup of new instance of Overrides (Protobuf) service", &v31, 0xCu);
  }

  v6 = [v4 dynamicConfig];
  v7 = [v6 languageCode];

  v8 = [objc_opt_class() isEnabled];
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = "NO";
    if (v8)
    {
      v10 = "YES";
    }

    v31 = 136315394;
    v32 = "[CDMOverridesProtoService setup:]";
    v33 = 2080;
    v34 = v10;
    _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s Is the Overrides (Protobuf) service enabled? %s", &v31, 0x16u);
  }

  if ((v8 & 1) == 0)
  {
    v26 = [(CDMOverridesProtoService *)self setupFailedFor:@"Feature flag prescribes that Overrides (Protobuf) service remain disabled bailing."];;
    goto LABEL_27;
  }

  v11 = [v4 dynamicConfig];
  v12 = [v11 getAssetForFactorName:@"com.apple.siri.nl.overrides"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v12;

  v14 = [v4 dynamicConfig];
  v15 = [v14 getAssetBundlePathForFactorName:@"com.apple.siri.nl.overrides"];

  if (v15)
  {
    if (+[CDMFeatureFlags isTrieOverridesEnabled])
    {
      v16 = [v15 resourcePath];
      v17 = [v16 stringByAppendingPathComponent:@"trie_bundle"];

      v18 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v31 = 136315394;
        v32 = "[CDMOverridesProtoService setup:]";
        v33 = 2112;
        v34 = v17;
        _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s Overrides Trie asset bundle is:%@", &v31, 0x16u);
      }

      v19 = [MEMORY[0x1E696AC08] defaultManager];
      if ([v19 fileExistsAtPath:v17])
      {
        v20 = self;
        objc_sync_enter(v20);
        v21 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v31 = 136315138;
          v32 = "[CDMOverridesProtoService setup:]";
          _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s Trie Overrides Enabled! There is global overrides trie asset folder", &v31, 0xCu);
        }

        v22 = [[SiriNLUOverrideProxy alloc] initWithUseTrie:1 useMemory:0];
        store = v20->__store;
        v20->__store = v22;

        if ([(SiriNLUOverrideProxy *)v20->__store loadGlobalOverrideTrieStoreWithTrieFilePath:v17])
        {
          v24 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v31 = 136315138;
            v32 = "[CDMOverridesProtoService setup:]";
            _os_log_impl(&dword_1DC287000, v24, OS_LOG_TYPE_INFO, "%s Trie Overrides store successfully initialized", &v31, 0xCu);
          }

          v25 = [(CDMOverridesProtoService *)v20 setupSucceeded];
        }

        else
        {
          v25 = [(CDMOverridesProtoService *)v20 setupFailedFor:@"Trie Overrides store unable to initialize"];
        }

        v26 = v25;
        objc_sync_exit(v20);

        goto LABEL_26;
      }

      v28 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v31 = 136315138;
        v32 = "[CDMOverridesProtoService setup:]";
        _os_log_impl(&dword_1DC287000, v28, OS_LOG_TYPE_INFO, "%s Trie Overrides Enabled! But there is no trie asset folder. Fallback to load protobuf overrides assets.", &v31, 0xCu);
      }
    }

    v27 = [(CDMOverridesProtoService *)self setupSucceeded];
  }

  else
  {
    v27 = [(CDMOverridesProtoService *)self setupFailedFor:@"Unable to locate NSBundle of requisite file assets to handle requests"];
  }

  v26 = v27;
LABEL_26:

LABEL_27:
  v29 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)createSetupErrorCmd:(id)a3
{
  self->super.super._serviceState = 4;
  v4 = a3;
  v5 = [(CDMBaseService *)self createSetupResponseCommand];
  v6 = [(CDMBaseService *)self createErrorWithCode:0 description:v4];

  [v5 setCmdError:v6];

  return v5;
}

@end