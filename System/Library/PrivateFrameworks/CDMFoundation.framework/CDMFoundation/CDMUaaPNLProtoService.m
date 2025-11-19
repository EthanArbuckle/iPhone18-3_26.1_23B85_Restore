@interface CDMUaaPNLProtoService
+ (id)createErrorResponse:(id)a3;
+ (id)detectForegroundAppForLocale:(id)a3;
+ (id)getCDMServiceAssetConfig;
+ (id)loadAppModelBundles:(id)a3;
+ (id)loadModelBundle:(id)a3 error:(id *)a4;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)a3;
- (void)loadOverrides:(id)a3;
@end

@implementation CDMUaaPNLProtoService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMUaaPNLProtoRequestCommand];
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
  v7 = @"uaap/ssu";
  v8 = @"com.apple.siri.nl.uaap.ssu";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  [(CDMServiceAssetConfig *)v2 setIsAssetRequiredForSetup:0];
  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)loadOverrides:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AC08];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:@"overrides.pb" relativeToURL:v5];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [v7 path];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v7 path];
  v11 = [v6 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v12];
      v14 = objc_alloc_init(MEMORY[0x1E69D1340]);
      [v14 readFrom:v13];
      [(CDMUaaPNLProtoService *)self addOverride:v14];
      v15 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = 136315394;
        v18 = "[CDMUaaPNLProtoService loadOverrides:]";
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s UaaP added override from pb file: %@", &v17, 0x16u);
      }
    }
  }

  else
  {
LABEL_8:
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "[CDMUaaPNLProtoService loadOverrides:]";
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s UaaP component override file is missing", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)handle:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v36 = "[CDMUaaPNLProtoService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Calling UAAP Inference", buf, 0xCu);
  }

  if (self->super.super._serviceState == 2)
  {
    v6 = [v4 parserRequest];
    v7 = [v6 tokenChain];

    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v31 = [v7 stringValue];
      *buf = 136315394;
      v36 = "[CDMUaaPNLProtoService handle:]";
      v37 = 2112;
      v38 = v31;
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Handling UaaP request for utterance: %@", buf, 0x16u);
    }

    v9 = [v4 parserRequest];
    v10 = [v9 hasTokenChain];

    if (v10)
    {
      v11 = [CDMUaaPNLModelBundleFilter selectModelBundlesForLoadedAppModelBundles:self->__appModelBundles];
      v12 = v11;
      if (v11 && [v11 count])
      {
        v13 = objc_alloc(MEMORY[0x1E69D14D8]);
        v14 = [(UPModelBundle *)self->__coreModelBundle parserModel];
        v15 = [v13 initWithCoreModel:v14 domainModelBundles:v12];

        v16 = [v4 parserRequest];
        v34 = 0;
        v17 = [v15 predictionFromProtobufQuery:v16 error:&v34];
        v18 = v34;

        if (v17)
        {
          if ([v17 hypothesesCount])
          {
            v19 = [v17 hypotheses];
            v20 = objc_alloc_init(MEMORY[0x1E69D1158]);
            v21 = [v4 requestId];
            [v20 setRequestId:v21];

            [v20 setParses:v19];
            v22 = [[CDMUaaPNLProtoResponseCommand alloc] initWithParserResponse:v17 nluResponse:v20];
          }

          else
          {
            v32 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = [v18 localizedDescription];
              *buf = 136315394;
              v36 = "[CDMUaaPNLProtoService handle:]";
              v37 = 2112;
              v38 = v33;
              _os_log_impl(&dword_1DC287000, v32, OS_LOG_TYPE_INFO, "%s [WARN]: UaaP provided no candidate parses: %@", buf, 0x16u);
            }

            v22 = [CDMUaaPNLProtoService createErrorResponse:v18];
          }
        }

        else
        {
          v30 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v36 = "[CDMUaaPNLProtoService handle:]";
            _os_log_impl(&dword_1DC287000, v30, OS_LOG_TYPE_INFO, "%s [WARN]: Received no UaaP result", buf, 0xCu);
          }

          v22 = [CDMUaaPNLProtoService createErrorResponse:v18];
        }
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x1E69D1158]);
        v26 = [v4 requestId];
        [v15 setRequestId:v26];

        v27 = objc_alloc_init(MEMORY[0x1E69D13E8]);
        v22 = [[CDMUaaPNLProtoResponseCommand alloc] initWithParserResponse:v27 nluResponse:v15];
      }
    }

    else
    {
      v25 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v36 = "[CDMUaaPNLProtoService handle:]";
        _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, "%s [WARN]: CDM tokens empty", buf, 0xCu);
      }

      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UaaPNLProtobufServiceError" code:0 userInfo:0];
      v22 = [CDMUaaPNLProtoService createErrorResponse:v12];
    }
  }

  else
  {
    v23 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      serviceState = self->super.super._serviceState;
      *buf = 136315394;
      v36 = "[CDMUaaPNLProtoService handle:]";
      v37 = 2048;
      v38 = serviceState;
      _os_log_impl(&dword_1DC287000, v23, OS_LOG_TYPE_INFO, "%s Not Ready! State: %tu", buf, 0x16u);
    }

    v7 = [(CDMBaseService *)self createErrorWithCode:1 description:@"UaaP service is not ready"];
    v22 = [CDMUaaPNLProtoService createErrorResponse:v7];
  }

  v28 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)setup:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->super.super._serviceState = 2;
  v5 = [v4 dynamicConfig];
  v6 = [v5 getAssetForFactorName:@"com.apple.siri.nl.uaap.ssu"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v6;

  v8 = [v4 dynamicConfig];
  v9 = [v8 getAssetBundlePathForFactorName:@"com.apple.siri.nl.uaap.ssu"];

  v10 = [v9 bundlePath];
  if ([objc_opt_class() isEnabled])
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v50 = "[CDMUaaPNLProtoService setup:]";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Fetching core model configuration", buf, 0xCu);
    }

    v12 = [v4 dynamicConfig];
    v13 = [v12 languageCode];
    v48 = 0;
    v14 = [CDMUaaPNLModelProvider getCoreModelConfigurationForLocale:v13 bundlePath:v10 error:&v48];
    v15 = v48;

    v16 = CDMOSLoggerForCategory(0);
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v50 = "[CDMUaaPNLProtoService setup:]";
        _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s Loading core model bundle", buf, 0xCu);
      }

      v47 = 0;
      v18 = [CDMUaaPNLProtoService loadModelBundle:v14 error:&v47];
      v19 = v47;
      coreModelBundle = self->__coreModelBundle;
      self->__coreModelBundle = v18;

      v21 = self->__coreModelBundle;
      v22 = CDMOSLoggerForCategory(0);
      v23 = v22;
      if (v21)
      {
        v44 = v19;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v50 = "[CDMUaaPNLProtoService setup:]";
          _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s Fetching app model configurations", buf, 0xCu);
        }

        v24 = objc_alloc_init(CDMUaaPNLModelProvider);
        v25 = [v4 dynamicConfig];
        v26 = [v25 languageCode];
        v46 = 0;
        v27 = [(CDMUaaPNLModelProvider *)v24 getModelConfigsForLocale:v26 error:&v46];
        v45 = v46;

        if (v27)
        {
          v28 = [v27 count];
          v29 = CDMOSLoggerForCategory(0);
          v30 = v29;
          if (v28)
          {
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v50 = "[CDMUaaPNLProtoService setup:]";
              _os_log_debug_impl(&dword_1DC287000, &v30->super, OS_LOG_TYPE_DEBUG, "%s Loading app model bundles", buf, 0xCu);
            }

            v31 = [CDMUaaPNLProtoService loadAppModelBundles:v27];
            appModelBundles = self->__appModelBundles;
            self->__appModelBundles = v31;

            v33 = [(NSSet *)self->__appModelBundles count];
            v34 = CDMOSLoggerForCategory(0);
            v30 = v34;
            if (v33)
            {
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                v35 = [(NSSet *)self->__appModelBundles count];
                *buf = 136315394;
                v50 = "[CDMUaaPNLProtoService setup:]";
                v51 = 2048;
                v52 = v35;
                _os_log_debug_impl(&dword_1DC287000, &v30->super, OS_LOG_TYPE_DEBUG, "%s Loaded %lu app model bundles", buf, 0x16u);
              }
            }

            else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v50 = "[CDMUaaPNLProtoService setup:]";
              _os_log_impl(&dword_1DC287000, &v30->super, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to load any app model bundles (despite having configurations)", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v50 = "[CDMUaaPNLProtoService setup:]";
            _os_log_impl(&dword_1DC287000, &v30->super, OS_LOG_TYPE_INFO, "%s [WARN]: getModelConfigsForLocale returned an unexpected empty set", buf, 0xCu);
          }
        }

        else
        {
          v39 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = [v45 localizedDescription];
            *buf = 136315394;
            v50 = "[CDMUaaPNLProtoService setup:]";
            v51 = 2112;
            v52 = v40;
            _os_log_impl(&dword_1DC287000, v39, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to fetch any app configuration (are any UaaP-enabled apps present?): %@", buf, 0x16u);
          }

          v41 = [MEMORY[0x1E695DFD8] set];
          v30 = self->__appModelBundles;
          self->__appModelBundles = v41;
        }

        v36 = [(CDMBaseService *)self createSetupResponseCommand];

        v19 = v44;
      }

      else
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v38 = [v19 localizedDescription];
          *buf = 136315394;
          v50 = "[CDMUaaPNLProtoService setup:]";
          v51 = 2112;
          v52 = v38;
          _os_log_impl(&dword_1DC287000, v23, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to load core model bundle: %@", buf, 0x16u);
        }

        v36 = [(CDMBaseService *)self createSetupResponseCommand];
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v37 = [v15 localizedDescription];
        *buf = 136315394;
        v50 = "[CDMUaaPNLProtoService setup:]";
        v51 = 2112;
        v52 = v37;
        _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to fetch core model configuration: %@", buf, 0x16u);
      }

      v36 = [(CDMBaseService *)self createSetupResponseCommand];
    }
  }

  else
  {
    self->super.super._serviceState = 4;
    v36 = [(CDMBaseService *)self createSetupResponseCommand];
  }

  v42 = *MEMORY[0x1E69E9840];

  return v36;
}

+ (id)loadModelBundle:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69D14B8];
  v6 = a3;
  v7 = [[v5 alloc] initWithModelConfiguration:v6];

  if (v7)
  {
    v8 = [MEMORY[0x1E69D14D0] modelWithLoadedModelConfiguration:v7 error:a4];
    if (v8)
    {
      v9 = [v7 hasCalibrationModel];
      v10 = CDMOSLoggerForCategory(0);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        if (v11)
        {
          v21 = 136315138;
          v22 = "+[CDMUaaPNLProtoService loadModelBundle:error:]";
          _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Found calibration model in configuration: loading it", &v21, 0xCu);
        }

        v12 = [MEMORY[0x1E69D14A8] modelWithLoadedModelConfiguration:v7 error:a4];
        if (!v12)
        {
          v13 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v21 = 136315138;
            v22 = "+[CDMUaaPNLProtoService loadModelBundle:error:]";
            _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to load calibration model", &v21, 0xCu);
          }

          if (a4)
          {
            v14 = MEMORY[0x1E696ABC0];
            v15 = 2;
LABEL_19:
            [v14 errorWithDomain:@"UaaPNLProtobufServiceError" code:v15 userInfo:0];
            *a4 = v17 = 0;
LABEL_26:

            goto LABEL_27;
          }

          goto LABEL_25;
        }
      }

      else
      {
        if (v11)
        {
          v21 = 136315138;
          v22 = "+[CDMUaaPNLProtoService loadModelBundle:error:]";
          _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Did not find calibration model in configuration: calibration will be disabled", &v21, 0xCu);
        }

        v12 = 0;
      }

      v17 = [objc_alloc(MEMORY[0x1E69D14C0]) initWithLoadedModelConfiguration:v7 parserModel:v8 calibrationModel:v12];

      goto LABEL_26;
    }

    v18 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "+[CDMUaaPNLProtoService loadModelBundle:error:]";
      _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to load parser model", &v21, 0xCu);
    }

    if (a4)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = 3;
      goto LABEL_19;
    }

LABEL_25:
    v17 = 0;
    goto LABEL_26;
  }

  v16 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v21 = 136315138;
    v22 = "+[CDMUaaPNLProtoService loadModelBundle:error:]";
    _os_log_impl(&dword_1DC287000, v16, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to load model configuration from disk", &v21, 0xCu);
  }

  if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"UaaPNLProtobufServiceError" code:1 userInfo:0];
    *a4 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_27:

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)createErrorResponse:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CDMUaaPNLProtoResponseCommand);
  [(CDMBaseCommand *)v4 setCmdError:v3];

  return v4;
}

+ (id)detectForegroundAppForLocale:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(CDMUaaPNLModelProvider);
  v16 = 0;
  v5 = [(CDMUaaPNLModelProvider *)v4 getForegroundModelConfigForLocale:v3 error:&v16];

  v6 = v16;
  if (v5)
  {
    v15 = v6;
    v7 = [CDMUaaPNLProtoService loadModelBundle:v5 error:&v15];
    v8 = v15;

    if (v7)
    {
      v9 = v7;
      v10 = v9;
    }

    else
    {
      v11 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v8 description];
        *buf = 136315394;
        v18 = "+[CDMUaaPNLProtoService detectForegroundAppForLocale:]";
        v19 = 2112;
        v20 = v14;
        _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Failed to create foreground UaaP parser model %@", buf, 0x16u);
      }

      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v18 = "+[CDMUaaPNLProtoService detectForegroundAppForLocale:]";
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Failed to find foreground app model configuration", buf, 0xCu);
    }

    v10 = 0;
    v8 = v6;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)loadAppModelBundles:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    *&v7 = 136315394;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v19 = 0;
        v12 = [CDMUaaPNLProtoService loadModelBundle:v11 error:&v19, v18];
        v13 = v19;
        if (v12)
        {
          [v4 addObject:v12];
        }

        else
        {
          v14 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [v13 localizedDescription];
            *buf = v18;
            v25 = "+[CDMUaaPNLProtoService loadAppModelBundles:]";
            v26 = 2112;
            v27 = v15;
            _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s [WARN]: Error initializing model bundle: %@. Skipping.", buf, 0x16u);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

@end