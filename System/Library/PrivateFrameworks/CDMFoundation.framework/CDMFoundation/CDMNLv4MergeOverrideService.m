@interface CDMNLv4MergeOverrideService
- (BOOL)InitializeNLv4OverrideStore:(id)a3;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)a3;
- (id)setupFailedFor:(id)a3;
- (id)setupSucceeded;
@end

@implementation CDMNLv4MergeOverrideService

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

- (id)setupSucceeded
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[CDMNLv4MergeOverrideService setupSucceeded]";
    _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s NLv4 Overrides service has been setup successfully!", &v7, 0xCu);
  }

  self->super.super._serviceState = 2;
  v4 = [(CDMBaseService *)self createSetupResponseCommand];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)setupFailedFor:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[CDMNLv4MergeOverrideService setupFailedFor:]";
    v12 = 2112;
    v13 = v4;
    _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: NLv4 Overrides service failed to setup: %@", &v10, 0x16u);
  }

  self->super.super._serviceState = 3;
  v6 = [(CDMBaseService *)self createSetupResponseCommand];
  v7 = [(CDMBaseService *)self createErrorWithCode:0 description:v4];
  [v6 setCmdError:v7];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)handle:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CDMNLv4MergeOverrideService *)self isOverrideServiceEnabled];
  v6 = @"disabled";
  if (v5)
  {
    v6 = @"enabled";
  }

  v7 = v6;
  v8 = os_signpost_id_generate(CDMLogContext);
  v9 = CDMLogContext;
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 138412290;
    v27 = v7;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "NLv4MergeOverride", "invokeNLv4MergeOverrideService: %@", buf, 0xCu);
  }

  if (v5 && self->_store)
  {
    v12 = [v4 request];
    v13 = [v12 inputs];

    v14 = [(SiriNLUOverrideProxy *)self->_store matchWithInputs:v13 overrideNamespace:5];
    if (v14)
    {
      v15 = v14;
      v16 = CDMLogContext;
      v17 = v16;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v17, OS_SIGNPOST_INTERVAL_END, v8, "NLv4MergeOverride", "", buf, 2u);
      }

      v18 = [CDMOverridesProtoResponseCommand alloc];
      v19 = [v15 userParse];
      v25 = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v21 = [(CDMOverridesProtoResponseCommand *)v18 initWithParsesForReplacement:v20 parsesForAppending:MEMORY[0x1E695E0F0]];

      goto LABEL_18;
    }
  }

  v22 = CDMLogContext;
  v13 = v22;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v13, OS_SIGNPOST_INTERVAL_END, v8, "NLv4MergeOverride", "", buf, 2u);
  }

  v21 = 0;
LABEL_18:

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)InitializeNLv4OverrideStore:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[CDMNLv4MergeOverrideService InitializeNLv4OverrideStore:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Overrides Trie asset bundle is:%@", &v13, 0x16u);
  }

  v6 = [[SiriNLUOverrideProxy alloc] initWithUseTrie:1 useMemory:0];
  store = self->_store;
  self->_store = v6;

  v8 = [(SiriNLUOverrideProxy *)self->_store loadComponentOverrideTrieStoreWithTrieFilePath:v4];
  v9 = CDMOSLoggerForCategory(0);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[CDMNLv4MergeOverrideService InitializeNLv4OverrideStore:]";
      _os_log_impl(&dword_1DC287000, v10, OS_LOG_TYPE_INFO, "%s NLv4 Overrides store successfully initialized", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "[CDMNLv4MergeOverrideService InitializeNLv4OverrideStore:]";
    _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: NLv4 Overrides store unable to initialize", &v13, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)setup:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v38 = 136315138;
    v39 = "[CDMNLv4MergeOverrideService setup:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Beginning setup of new instance of NLv4 Service Overrides service", &v38, 0xCu);
  }

  v6 = [(CDMNLv4MergeOverrideService *)self isOverrideServiceEnabled];
  v7 = @"disabled";
  if (v6)
  {
    v7 = @"enabled";
  }

  v8 = v7;
  v9 = os_signpost_id_generate(CDMLogContext);
  v10 = CDMLogContext;
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v38 = 138412290;
    v39 = v8;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "NLv4MergeOverride", "setupNLv4MergeOverrideService: %@", &v38, 0xCu);
  }

  if (v6)
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v38 = 136315138;
      v39 = "[CDMNLv4MergeOverrideService setup:]";
      _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s The NLv4 Overrides service is enabled", &v38, 0xCu);
    }

    v14 = [v4 dynamicConfig];
    v15 = [v14 getAssetForFactorName:@"com.apple.siri.nl.nlv4"];
    nlAsset = self->_nlAsset;
    self->_nlAsset = v15;

    v17 = [v4 dynamicConfig];
    v18 = [v17 getAssetBundlePathForFactorName:@"com.apple.siri.nl.nlv4"];

    if (!v18)
    {
      v27 = CDMLogContext;
      v28 = v27;
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        LOWORD(v38) = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v28, OS_SIGNPOST_INTERVAL_END, v9, "NLv4MergeOverride", "", &v38, 2u);
      }

      v29 = [(CDMNLv4MergeOverrideService *)self setupFailedFor:@"Unable to locate NSBundle of requisite file assets to handle requests"];
      goto LABEL_40;
    }

    if (+[CDMFeatureFlags isTrieOverridesEnabled])
    {
      v19 = [v18 resourcePath];
      v20 = [v19 stringByAppendingPathComponent:@"trie_bundle"];

      v21 = [MEMORY[0x1E696AC08] defaultManager];
      if ([v21 fileExistsAtPath:v20])
      {
        v22 = self;
        objc_sync_enter(v22);
        if ([(CDMNLv4MergeOverrideService *)v22 InitializeNLv4OverrideStore:v20])
        {
          v23 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v38 = 136315138;
            v39 = "[CDMNLv4MergeOverrideService setup:]";
            _os_log_impl(&dword_1DC287000, v23, OS_LOG_TYPE_INFO, "%s Trie Overrides: Loaded NLv4 overrides bundle", &v38, 0xCu);
          }

          v24 = CDMLogContext;
          v25 = v24;
          if (v12 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v24))
          {
            LOWORD(v38) = 0;
            _os_signpost_emit_with_name_impl(&dword_1DC287000, v25, OS_SIGNPOST_INTERVAL_END, v9, "NLv4MergeOverride", "", &v38, 2u);
          }

          v26 = [(CDMNLv4MergeOverrideService *)v22 setupSucceeded];
        }

        else
        {
          v33 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v38 = 136315138;
            v39 = "[CDMNLv4MergeOverrideService setup:]";
            _os_log_error_impl(&dword_1DC287000, v33, OS_LOG_TYPE_ERROR, "%s [ERR]: Trie Overrides: Failed to load NLv4 overrides bundle", &v38, 0xCu);
          }

          v34 = CDMLogContext;
          v35 = v34;
          if (v12 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v34))
          {
            LOWORD(v38) = 0;
            _os_signpost_emit_with_name_impl(&dword_1DC287000, v35, OS_SIGNPOST_INTERVAL_END, v9, "NLv4MergeOverride", "", &v38, 2u);
          }

          v26 = [(CDMNLv4MergeOverrideService *)v22 setupFailedFor:@"Failed to load NLv4 overrides bundle. See CDM Logs for details"];
        }

        v29 = v26;
        objc_sync_exit(v22);

LABEL_40:
        goto LABEL_41;
      }

      v30 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v38 = 136315138;
        v39 = "[CDMNLv4MergeOverrideService setup:]";
        _os_log_impl(&dword_1DC287000, v30, OS_LOG_TYPE_INFO, "%s [WARN]: NLv4 Overrides Enabled! There is no NLv4 overrides trie asset folder. Setting up CDM anyways", &v38, 0xCu);
      }
    }
  }

  v31 = CDMLogContext;
  v32 = v31;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    LOWORD(v38) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v32, OS_SIGNPOST_INTERVAL_END, v9, "NLv4MergeOverride", "", &v38, 2u);
  }

  v29 = [(CDMNLv4MergeOverrideService *)self setupSucceeded];
LABEL_41:

  v36 = *MEMORY[0x1E69E9840];

  return v29;
}

@end