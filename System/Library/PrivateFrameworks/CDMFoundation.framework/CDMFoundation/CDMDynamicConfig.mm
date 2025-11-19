@interface CDMDynamicConfig
+ (id)resolveActiveGraph:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualWithoutSandboxId:(id)a3;
- (CDMDynamicConfig)initWithLanguageCode:(id)a3 embeddingVersion:(id)a4 graphName:(id)a5 sandboxId:(id)a6 assetPaths:(id)a7 assetDirPath:(id)a8 overrideSiriVocabSpans:(id)a9 overrideMentions:(id)a10 overrideContextualSpans:(id)a11 serviceStateDirectory:(id)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)setAssetDirPath:(id)a3;
- (void)setAssetPaths:(id)a3;
- (void)setEmbeddingConfigs:(id)a3;
- (void)setServiceStateDirectory:(id)a3;
@end

@implementation CDMDynamicConfig

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  languageCode = self->_languageCode;
  graphName = self->_graphName;
  v6 = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
  siriVocabularySandboxId = self->_siriVocabularySandboxId;
  v8 = [v3 stringWithFormat:@"[CDMDynamicConfig] - Language Code: %@, Graph Name: %@, Asset Paths: %@, Asset Dir Path: %@, Siri Vocabulary Sandbox ID: %@, Service State Directory: %@", languageCode, graphName, v6, self->_assetDirPath, siriVocabularySandboxId, self->_serviceStateDirectory];

  return v8;
}

- (void)setServiceStateDirectory:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "[CDMDynamicConfig setServiceStateDirectory:]";
    v10 = 2112;
    v11 = v4;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Set serviceStateDirectory to be: %@.", &v8, 0x16u);
  }

  serviceStateDirectory = self->_serviceStateDirectory;
  self->_serviceStateDirectory = v4;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setEmbeddingConfigs:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "[CDMDynamicConfig setEmbeddingConfigs:]";
    v10 = 2112;
    v11 = v4;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Set embedding configs to be: %@.", &v8, 0x16u);
  }

  embeddingConfigs = self->_embeddingConfigs;
  self->_embeddingConfigs = v4;

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqualWithoutSandboxId:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 == self)
  {
    v12 = 1;
    goto LABEL_44;
  }

  if (!v5)
  {
    goto LABEL_43;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_43;
  }

  languageCode = self->_languageCode;
  v8 = languageCode;
  if (!languageCode)
  {
    v9 = [(CDMDynamicConfig *)v6 languageCode];
    if (!v9)
    {
      goto LABEL_12;
    }

    v3 = v9;
    v8 = self->_languageCode;
  }

  v10 = [(CDMDynamicConfig *)v6 languageCode];
  v11 = [(NSString *)v8 isEqualToString:v10];

  if (languageCode)
  {
    if (!v11)
    {
      goto LABEL_43;
    }
  }

  else
  {

    if (!v11)
    {
      goto LABEL_43;
    }
  }

LABEL_12:
  embeddingVersion = self->_embeddingVersion;
  v14 = embeddingVersion;
  if (!embeddingVersion)
  {
    v15 = [(CDMDynamicConfig *)v6 embeddingVersion];
    if (!v15)
    {
      goto LABEL_19;
    }

    v3 = v15;
    v14 = self->_embeddingVersion;
  }

  v16 = [(CDMDynamicConfig *)v6 embeddingVersion];
  v17 = [(NSString *)v14 isEqualToString:v16];

  if (embeddingVersion)
  {
    if (!v17)
    {
      goto LABEL_43;
    }
  }

  else
  {

    if (!v17)
    {
      goto LABEL_43;
    }
  }

LABEL_19:
  graphName = self->_graphName;
  v19 = graphName;
  if (!graphName)
  {
    v20 = [(CDMDynamicConfig *)v6 graphName];
    if (!v20)
    {
      goto LABEL_26;
    }

    v3 = v20;
    v19 = self->_graphName;
  }

  v21 = [(CDMDynamicConfig *)v6 graphName];
  v19 = [v19 isEqualToString:v21];

  if (graphName)
  {
    if (!v19)
    {
      goto LABEL_43;
    }
  }

  else
  {

    if ((v19 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

LABEL_26:
  v22 = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
  if (v22 || ([(CDMDynamicConfig *)v6 assetPaths], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v23 = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
    v24 = [(CDMDynamicConfig *)v6 assetPaths];
    v25 = [v23 isEqualToDictionary:v24];

    if (v22)
    {

      if (!v25)
      {
        goto LABEL_43;
      }
    }

    else
    {

      if ((v25 & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  assetDirPath = self->_assetDirPath;
  v27 = assetDirPath;
  if (assetDirPath)
  {
    goto LABEL_35;
  }

  v28 = [(CDMDynamicConfig *)v6 assetDirPath];
  if (v28)
  {
    v22 = v28;
    v27 = self->_assetDirPath;
LABEL_35:
    v29 = [(CDMDynamicConfig *)v6 assetDirPath];
    v30 = [(NSString *)v27 isEqualToString:v29];

    if (assetDirPath)
    {
      if (v30)
      {
        goto LABEL_37;
      }
    }

    else
    {

      if (v30)
      {
        goto LABEL_37;
      }
    }

LABEL_43:
    v12 = 0;
    goto LABEL_44;
  }

LABEL_37:
  serviceStateDirectory = self->_serviceStateDirectory;
  v32 = serviceStateDirectory;
  if (!serviceStateDirectory)
  {
    v22 = [(CDMDynamicConfig *)v6 serviceStateDirectory];
    if (!v22)
    {
      v12 = 1;
LABEL_46:

      goto LABEL_44;
    }

    v32 = self->_serviceStateDirectory;
  }

  v33 = [(CDMDynamicConfig *)v6 serviceStateDirectory];
  v12 = [(NSString *)v32 isEqualToString:v33];

  if (!serviceStateDirectory)
  {
    goto LABEL_46;
  }

LABEL_44:

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(CDMDynamicConfig *)self isEqualWithoutSandboxId:v5])
  {
    v11 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  siriVocabularySandboxId = self->_siriVocabularySandboxId;
  v7 = siriVocabularySandboxId;
  if (siriVocabularySandboxId)
  {
LABEL_5:
    v9 = [v5 siriVocabularySandboxId];
    v10 = [(NSString *)v7 isEqualToString:v9];

    if (siriVocabularySandboxId)
    {
      if (v10)
      {
        goto LABEL_7;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_7;
      }
    }

    v11 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
LABEL_14:
      v12 = 0;
      goto LABEL_15;
    }

LABEL_16:
    v15 = 136315650;
    v16 = "[CDMDynamicConfig isEqual:]";
    v17 = 2112;
    v18 = self;
    v19 = 2112;
    v20 = v5;
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Dynamic config: %@ doesn't equal to dynamic config: %@.", &v15, 0x20u);
    goto LABEL_14;
  }

  v8 = [v5 siriVocabularySandboxId];
  if (v8)
  {
    v3 = v8;
    v7 = self->_siriVocabularySandboxId;
    goto LABEL_5;
  }

LABEL_7:
  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315650;
    v16 = "[CDMDynamicConfig isEqual:]";
    v17 = 2112;
    v18 = self;
    v19 = 2112;
    v20 = v5;
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Dynamic config: %@ equals to dynamic config: %@.", &v15, 0x20u);
  }

  v12 = 1;
LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (unint64_t)hash
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_languageCode hash];
  v4 = [(NSString *)self->_embeddingVersion hash]+ 89 * v3;
  v5 = [(NSString *)self->_graphName hash]+ 89 * v4;
  v6 = [(NSString *)self->_siriVocabularySandboxId hash]+ 89 * v5 + 62742241;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
  v8 = [v7 allKeys];

  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 hash] + 89 * v6;
        v15 = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
        v16 = [v15 objectForKeyedSubscript:v13];
        v6 = v14 + [v16 hash];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v17 = [(NSString *)self->_assetDirPath hash];
  v18 = [(NSString *)self->_serviceStateDirectory hash];
  v19 = *MEMORY[0x1E69E9840];
  return v18 + 89 * (v17 + 89 * v6);
}

- (void)setAssetDirPath:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  assetDirPath = self->_assetDirPath;
  p_assetDirPath = &self->_assetDirPath;
  v6 = assetDirPath;
  if (assetDirPath && ![(NSString *)v6 isEqualToString:v5])
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *p_assetDirPath;
      v14 = 136315650;
      v15 = "[CDMDynamicConfig setAssetDirPath:]";
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Asset dir path: %@ is not nil. It will be overwritten by new asset dir path: %@.", &v14, 0x20u);
    }
  }

  objc_storeStrong(p_assetDirPath, a3);
  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *p_assetDirPath;
    v14 = 136315394;
    v15 = "[CDMDynamicConfig setAssetDirPath:]";
    v16 = 2112;
    v17 = v13;
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Set asset dir path to be: %@.", &v14, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setAssetPaths:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
  if (v5)
  {
    v6 = v5;
    v7 = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
    v8 = [v7 isEqualToDictionary:v4];

    if ((v8 & 1) == 0)
    {
      v9 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
        v14 = 136315650;
        v15 = "[CDMDynamicConfig setAssetPaths:]";
        v16 = 2112;
        v17 = v10;
        v18 = 2112;
        v19 = v4;
        _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Asset paths: %@ are not nil. They will be overwritten by new asset paths: %@.", &v14, 0x20u);
      }
    }
  }

  v11 = [CDMNLAssetCollection assetCollectionWithAssetPaths:v4 withLanguageCode:self->_languageCode];
  assetCollection = self->_assetCollection;
  self->_assetCollection = v11;

  v13 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(NSString *)self->_languageCode copy];
    v6 = v4[1];
    v4[1] = v5;

    v7 = [(NSString *)self->_embeddingVersion copy];
    v8 = v4[2];
    v4[2] = v7;

    v9 = [(NSString *)self->_graphName copy];
    v10 = v4[3];
    v4[3] = v9;

    v11 = [(NSString *)self->_siriVocabularySandboxId copy];
    v12 = v4[4];
    v4[4] = v11;

    v13 = [(CDMDynamicConfig *)self assetPaths];
    v14 = [v13 copy];
    [v4 setAssetPaths:v14];

    v15 = [(NSString *)self->_serviceStateDirectory copy];
    v16 = v4[11];
    v4[11] = v15;
  }

  return v4;
}

- (CDMDynamicConfig)initWithLanguageCode:(id)a3 embeddingVersion:(id)a4 graphName:(id)a5 sandboxId:(id)a6 assetPaths:(id)a7 assetDirPath:(id)a8 overrideSiriVocabSpans:(id)a9 overrideMentions:(id)a10 overrideContextualSpans:(id)a11 serviceStateDirectory:(id)a12
{
  v46 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v37 = a4;
  v18 = a5;
  obj = a6;
  v19 = a6;
  v40 = a7;
  v20 = a8;
  v21 = v19;
  v39 = v20;
  v22 = a9;
  v36 = a10;
  v35 = a11;
  v34 = a12;
  if (v19 && v22)
  {
    v23 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v43 = "[CDMDynamicConfig initWithLanguageCode:embeddingVersion:graphName:sandboxId:assetPaths:assetDirPath:overrideSiriVocabSpans:overrideMentions:overrideContextualSpans:serviceStateDirectory:]";
      _os_log_impl(&dword_1DC287000, v23, OS_LOG_TYPE_INFO, "%s [WARN]: Both sandboxId and overrideSiriVocabSpans are attempted to be set in the CDMDynamicConfig! Only one of these should be set. If both are set, sandboxId will be ignored and only overrideSiriVocabSpans will be used.", buf, 0xCu);
    }

    v21 = v19;
  }

  v41.receiver = self;
  v41.super_class = CDMDynamicConfig;
  v24 = [(CDMDynamicConfig *)&v41 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_languageCode, a3);
    objc_storeStrong(&v25->_embeddingVersion, a4);
    v26 = [CDMDynamicConfig resolveActiveGraph:v18];
    graphName = v25->_graphName;
    v25->_graphName = v26;

    objc_storeStrong(&v25->_siriVocabularySandboxId, obj);
    [(CDMDynamicConfig *)v25 setAssetPaths:v40];
    [(CDMDynamicConfig *)v25 setAssetDirPath:v39];
    objc_storeStrong(&v25->_overrideSiriVocabSpans, a9);
    objc_storeStrong(&v25->_overrideMentions, a10);
    objc_storeStrong(&v25->_overrideContextualSpans, a11);
    objc_storeStrong(&v25->_serviceStateDirectory, a12);
  }

  v28 = v18;
  v29 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v43 = "[CDMDynamicConfig initWithLanguageCode:embeddingVersion:graphName:sandboxId:assetPaths:assetDirPath:overrideSiriVocabSpans:overrideMentions:overrideContextualSpans:serviceStateDirectory:]";
    v44 = 2112;
    v45 = v25;
    _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, "%s Dynamic config: %@.", buf, 0x16u);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v25;
}

+ (id)resolveActiveGraph:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3 || ![(__CFString *)v3 length])
  {

    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "+[CDMDynamicConfig resolveActiveGraph:]";
      v10 = 2112;
      v11 = @"CDMNLUServiceGraph";
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: No value for active graph provided to CDMDynamicConfig, using the active service graph default of %@", &v8, 0x16u);
    }

    v4 = @"CDMNLUServiceGraph";
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

@end