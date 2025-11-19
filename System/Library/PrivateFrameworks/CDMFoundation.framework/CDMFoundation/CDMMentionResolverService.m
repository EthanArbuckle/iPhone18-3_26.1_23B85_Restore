@interface CDMMentionResolverService
+ (id)getCDMServiceAssetConfig;
- (id)getPredictor:(id)a3 forLocale:(id)a4 status:(id *)a5;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)predictWithInput:(id)a3 forLocale:(id)a4 status:(id *)a5;
- (id)setup:(id)a3;
@end

@implementation CDMMentionResolverService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMMentionResolverRequestCommand];
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
  v7 = @"marrs/mr";
  v8 = @"com.apple.siri.nl.marrs.mr";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  [(CDMServiceAssetConfig *)v2 setIsAssetRequiredForSetup:0];
  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)predictWithInput:(id)a3 forLocale:(id)a4 status:(id *)a5
{
  v7 = a3;
  v8 = [(MRRMultimodalMentionResolver *)self->_mentionResolver resolveMentionsInUtterance:v7 status:a5];
  v9 = [v7 tokenChain];
  v10 = [CDMMentionResolverServiceUtils includeWhitespaceInIndices:v8 tokenchain:v9];

  return v10;
}

- (id)getPredictor:(id)a3 forLocale:(id)a4 status:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x1E69AE148]) initWithAssets:v7 forLocale:v8 status:a5];

  return v9;
}

- (id)handle:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[CDMMentionResolverService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Calling Mention Resolver", buf, 0xCu);
  }

  if (v4 && self->_mentionResolver && ([v4 mrRequest], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6 == 0, v6, !v7))
  {
    v8 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v19 = "[CDMMentionResolverService handle:]";
      v20 = 2112;
      v21 = @"mentionresolver";
      v22 = 2112;
      v23 = v4;
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nMENTIONRESOLVERRequest: %@", buf, 0x20u);
    }

    if (self->_overrideMentionsForReplay)
    {
      v9 = [[CDMMentionResolverResponseCommand alloc] initWithMentions:self->_overrideMentionsForReplay];
      goto LABEL_14;
    }

    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      v13 = [v4 mrRequest];
      [CDMMentionResolverServiceUtils logMRRequestToFile:v13];
    }

    v14 = [v4 mrRequest];
    v17 = 0;
    v15 = [(CDMMentionResolverService *)self predictWithInput:v14 forLocale:0 status:&v17];
    v10 = v17;

    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      [CDMMentionResolverServiceUtils logMRResponseToFile:v15];
    }

    v9 = [[CDMMentionResolverResponseCommand alloc] initWithResponse:v15];
    [(CDMBaseCommand *)v9 setCmdError:v10];
    v16 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v19 = "[CDMMentionResolverService handle:]";
      v20 = 2112;
      v21 = @"mentionresolver";
      v22 = 2112;
      v23 = v15;
      _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nMENTIONRESOLVERResponse: %@", buf, 0x20u);
    }
  }

  else
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[CDMMentionResolverService handle:]";
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: Mention Resolver: Either Request and/or Predictor is nil", buf, 0xCu);
    }

    v9 = 0;
  }

LABEL_14:
  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)setup:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v31 = "[CDMMentionResolverService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Setting up Mention Resolver service", buf, 0xCu);
  }

  v6 = objc_alloc_init(CDMSetupResponseCommand);
  v7 = [v4 dynamicConfig];
  v8 = [v7 getAssetForFactorName:@"com.apple.siri.nl.marrs.mr"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v8;

  v10 = [v4 dynamicConfig];
  v11 = [v10 getAssetBundlePathForFactorName:@"com.apple.siri.nl.marrs.mr"];

  if (v11)
  {
    v12 = [v11 resourcePath];
    v13 = [v4 dynamicConfig];
    v14 = [v13 languageCode];
    v29 = 0;
    v15 = [(CDMMentionResolverService *)self getPredictor:v12 forLocale:v14 status:&v29];
    v16 = v29;
    mentionResolver = self->_mentionResolver;
    self->_mentionResolver = v15;

    if (v16)
    {
      v18 = [v16 localizedDescription];
      v19 = [(CDMBaseService *)self createErrorWithCode:1 description:v18];
      [(CDMBaseCommand *)v6 setCmdError:v19];

      self->super.super._serviceState = 4;
      v20 = v6;
      goto LABEL_12;
    }
  }

  else
  {
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v31 = "[CDMMentionResolverService setup:]";
      _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s Mention Resolver model bundle not found", buf, 0xCu);
    }
  }

  v22 = [v4 dynamicConfig];
  v23 = [v22 overrideMentions];
  overrideMentionsForReplay = self->_overrideMentionsForReplay;
  self->_overrideMentionsForReplay = v23;

  self->super.super._serviceState = 2;
  v25 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v31 = "[CDMMentionResolverService setup:]";
    _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, "%s Mention Resolver loaded", buf, 0xCu);
  }

  v16 = 0;
  v20 = [(CDMBaseService *)self createSetupResponseCommand];
LABEL_12:
  v26 = v20;

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

@end