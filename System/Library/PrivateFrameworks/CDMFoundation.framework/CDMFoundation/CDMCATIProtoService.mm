@interface CDMCATIProtoService
+ (id)getCDMServiceAssetConfig;
- (id)getChildServices;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)setup;
- (id)setupErrorResponse:(id)response serviceState:(int64_t)state;
@end

@implementation CDMCATIProtoService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMCATIProtoRequestCommand];
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
  v7 = @"cati_models";
  v8 = @"com.apple.siri.nl.cati";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)getChildServices
{
  v2 = [(NSMutableArray *)self->_childServices copy];

  return v2;
}

- (id)handle:(id)handle
{
  v31 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[CDMCATIProtoService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Calling CATI ", buf, 0xCu);
  }

  if ([(CDMCATIProtoService *)self getServiceState]== 2)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    getChildServices = [(CDMCATIProtoService *)self getChildServices];
    v8 = [getChildServices countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v8)
    {
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(getChildServices);
          }

          v11 = [*(*(&v20 + 1) + 8 * i) handle:handleCopy assetVersion:self->_assetVersion];
          if (v11)
          {
            [v6 addObject:v11];
          }
        }

        v8 = [getChildServices countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v8);
    }

    v12 = objc_alloc_init(MEMORY[0x1E69D1280]);
    [v12 setHypotheses:v6];
    if (![v6 count])
    {
      v13 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v25 = "[CDMCATIProtoService handle:]";
        _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s No child service produced a hypothesis", buf, 0xCu);
      }
    }

    v14 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v25 = "[CDMCATIProtoService handle:]";
      v26 = 2112;
      v27 = @"cati";
      v28 = 2112;
      v29 = v12;
      _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nCATIResponse: %@", buf, 0x20u);
    }

    v15 = objc_alloc_init(CDMCATIProtoResponseCommand);
    [(CDMCATIProtoResponseCommand *)v15 setResponse:v12];
  }

  else
  {
    v16 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      getServiceState = [(CDMCATIProtoService *)self getServiceState];
      *buf = 136315394;
      v25 = "[CDMCATIProtoService handle:]";
      v26 = 2048;
      v27 = getServiceState;
      _os_log_impl(&dword_1DC287000, v16, OS_LOG_TYPE_INFO, "%s Not Ready! State: %tu", buf, 0x16u);
    }

    v15 = objc_alloc_init(CDMCATIProtoResponseCommand);
    v6 = [(CDMBaseService *)self createErrorWithCode:1 description:&stru_1F5800F50];
    [(CDMBaseCommand *)v15 setCmdError:v6];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)setupErrorResponse:(id)response serviceState:(int64_t)state
{
  v16 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  self->super.super._serviceState = state;
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315394;
    v13 = "[CDMCATIProtoService setupErrorResponse:serviceState:]";
    v14 = 2112;
    v15 = responseCopy;
    _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v12, 0x16u);
  }

  v9 = [(CDMBaseService *)self createErrorWithCode:1 description:responseCopy];
  [createSetupResponseCommand setCmdError:v9];

  v10 = *MEMORY[0x1E69E9840];

  return createSetupResponseCommand;
}

- (id)setup:(id)setup
{
  v81 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v4 = CDMOSLoggerForCategory(0);
  selfCopy = self;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v76 = "[CDMCATIProtoService setup:]";
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Begin CATI setup", buf, 0xCu);
  }

  dynamicConfig = [setupCopy dynamicConfig];
  v6 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.cati"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v6;

  dynamicConfig2 = [setupCopy dynamicConfig];
  v55 = [dynamicConfig2 getAssetForFactorName:@"com.apple.siri.nl.cati"];

  if (!v55 || ![(__CFString *)v55 getAssetType])
  {
    v22 = [(CDMCATIProtoService *)self setupErrorResponse:@"Not able to find/load CATI assets" serviceState:3];
    goto LABEL_68;
  }

  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v76 = "[CDMCATIProtoService setup:]";
    v77 = 2112;
    v78 = v55;
    v79 = 2112;
    v80 = @"com.apple.siri.nl.cati";
    _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Asset is: [%@] for factor: %@.", buf, 0x20u);
  }

  dynamicConfig3 = [setupCopy dynamicConfig];
  v11 = [dynamicConfig3 getAssetBundlePathForFactorName:@"com.apple.siri.nl.cati"];
  catiBundle = self->_catiBundle;
  self->_catiBundle = v11;

  getAssetVersion = [(__CFString *)v55 getAssetVersion];
  v13 = [getAssetVersion componentsSeparatedByString:@"."];
  firstObject = [v13 firstObject];
  self->_assetVersion = [firstObject integerValue];

  if (self->_catiBundle)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    childServices = self->_childServices;
    self->_childServices = v15;

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    resourcePath = [(NSBundle *)self->_catiBundle resourcePath];
    v53 = [defaultManager contentsOfDirectoryAtPath:resourcePath error:0];

    v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (self->_assetVersion > 3103)
    {
      if (![v53 count])
      {
        v37 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v76 = "[CDMCATIProtoService setup:]";
          v77 = 2112;
          v78 = @"The cati_models directory is empty";
          _os_log_debug_impl(&dword_1DC287000, v37, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
        }

        createSetupResponseCommand = [(CDMCATIProtoService *)self setupErrorResponse:@"The cati_models directory is empty" serviceState:3];
        goto LABEL_62;
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v19 = v53;
      v23 = [(CDMCATIChildService *)v19 countByEnumeratingWithState:&v68 objects:v74 count:16];
      if (v23)
      {
        v24 = *v69;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v69 != v24)
            {
              objc_enumerationMutation(v19);
            }

            v26 = *(*(&v68 + 1) + 8 * i);
            v27 = MEMORY[0x1E696AAE8];
            resourcePath2 = [(NSBundle *)selfCopy->_catiBundle resourcePath];
            v29 = [resourcePath2 stringByAppendingPathComponent:v26];
            v30 = [v27 bundleWithPath:v29];

            v67 = 0;
            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            resourcePath3 = [v30 resourcePath];
            LODWORD(v29) = [defaultManager2 fileExistsAtPath:resourcePath3 isDirectory:&v67];
            v33 = v67;

            if (v29 & v33)
            {
              v34 = [[CDMCATIChildService alloc] initWithAssetBundle:v30];
              v35 = [(CDMCATIChildService *)v34 setup:setupCopy assetVersion:selfCopy->_assetVersion];
              if (v35)
              {
                v36 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  v76 = "[CDMCATIProtoService setup:]";
                  v77 = 2112;
                  v78 = v35;
                  _os_log_debug_impl(&dword_1DC287000, v36, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
                }

                [v56 addObject:v35];
              }

              else
              {
                [(NSMutableArray *)selfCopy->_childServices addObject:v34];
              }
            }

            else
            {
              v34 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(&v34->super, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v76 = "[CDMCATIProtoService setup:]";
                v77 = 2112;
                v78 = v26;
                _os_log_debug_impl(&dword_1DC287000, &v34->super, OS_LOG_TYPE_DEBUG, "%s %@ is not a valid directory", buf, 0x16u);
              }
            }
          }

          v23 = [(CDMCATIChildService *)v19 countByEnumeratingWithState:&v68 objects:v74 count:16];
        }

        while (v23);
      }
    }

    else
    {
      v19 = [[CDMCATIChildService alloc] initWithAssetBundle:self->_catiBundle];
      v20 = [(CDMCATIChildService *)v19 setup:setupCopy assetVersion:self->_assetVersion];
      if (v20)
      {
        v21 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v76 = "[CDMCATIProtoService setup:]";
          v77 = 2112;
          v78 = v20;
          _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
        }

        v22 = [(CDMCATIProtoService *)self setupErrorResponse:v20 serviceState:3];

LABEL_65:
        goto LABEL_66;
      }

      [(NSMutableArray *)self->_childServices addObject:v19];
    }

    if (![(NSMutableArray *)selfCopy->_childServices count])
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v45 = v56;
      v46 = [v45 countByEnumeratingWithState:&v63 objects:v73 count:16];
      if (v46)
      {
        v47 = *v64;
        v19 = @"No CATI child services were made, the following errors occurred:";
        do
        {
          v48 = 0;
          v49 = v19;
          do
          {
            if (*v64 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v19 = [(CDMCATIChildService *)v49 stringByAppendingFormat:@" %@, ", *(*(&v63 + 1) + 8 * v48)];

            ++v48;
            v49 = v19;
          }

          while (v46 != v48);
          v46 = [v45 countByEnumeratingWithState:&v63 objects:v73 count:16];
        }

        while (v46);
      }

      else
      {
        v19 = @"No CATI child services were made, the following errors occurred:";
      }

      v22 = [(CDMCATIProtoService *)selfCopy setupErrorResponse:v19 serviceState:3];
      goto LABEL_65;
    }

    if ([v56 count])
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v39 = v56;
      v40 = [v39 countByEnumeratingWithState:&v59 objects:v72 count:16];
      if (v40)
      {
        v41 = *v60;
        v42 = @"Some CATI child services did not set up correctly, the following errors occurred:";
        do
        {
          v43 = 0;
          v44 = v42;
          do
          {
            if (*v60 != v41)
            {
              objc_enumerationMutation(v39);
            }

            v42 = [v44 stringByAppendingFormat:@" %@, ", *(*(&v59 + 1) + 8 * v43)];

            ++v43;
            v44 = v42;
          }

          while (v40 != v43);
          v40 = [v39 countByEnumeratingWithState:&v59 objects:v72 count:16];
        }

        while (v40);
      }

      else
      {
        v42 = @"Some CATI child services did not set up correctly, the following errors occurred:";
      }

      v50 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v76 = "[CDMCATIProtoService setup:]";
        v77 = 2112;
        v78 = v42;
        _os_log_impl(&dword_1DC287000, v50, OS_LOG_TYPE_INFO, "%s [WARN]: %@", buf, 0x16u);
      }
    }

    else
    {
      v42 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v76 = "[CDMCATIProtoService setup:]";
        _os_log_debug_impl(&dword_1DC287000, v42, OS_LOG_TYPE_DEBUG, "%s All child services set up successfully", buf, 0xCu);
      }
    }

    selfCopy->super.super._serviceState = 2;
    createSetupResponseCommand = [(CDMBaseService *)selfCopy createSetupResponseCommand];
LABEL_62:
    v22 = createSetupResponseCommand;
LABEL_66:

    goto LABEL_67;
  }

  v22 = [(CDMCATIProtoService *)self setupErrorResponse:@"Not able to find/load CATI model bundle directory" serviceState:3];
LABEL_67:

LABEL_68:
  v51 = *MEMORY[0x1E69E9840];

  return v22;
}

@end