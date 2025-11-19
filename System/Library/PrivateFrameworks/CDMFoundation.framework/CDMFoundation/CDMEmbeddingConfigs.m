@interface CDMEmbeddingConfigs
+ (id)generateEmbeddingModelIdList:(id)a3;
+ (int)getMaxEmbeddingConcurrency;
- (CDMEmbeddingConfigs)initWithAssetPaths:(id)a3;
- (CDMEmbeddingConfigs)initWithAssetPaths:(id)a3 embeddingVersion:(id)a4;
- (CDMEmbeddingConfigs)initWithCoder:(id)a3;
- (id)generateEmbeddingConfigItemsWithError:(id *)a3;
- (id)generateServiceDependentEmbeddingModelVersionsWithError:(id *)a3;
- (id)getAllEmbeddingConfigs;
- (id)getDependentEmbeddingConfigs;
- (id)getEmbeddingConfigForEmbeddingModelVersion:(id)a3;
- (id)getEmbeddingConfigForFactor:(id)a3;
- (id)getStableEmbeddingConfig;
- (void)encodeWithCoder:(id)a3;
- (void)setupWithError:(id *)a3;
- (void)validateClientEmbeddingVersion:(id)a3 embeddingAssetVersion:(id)a4 embeddingModelIdList:(id)a5 multipleModels:(BOOL)a6 withError:(id *)a7;
@end

@implementation CDMEmbeddingConfigs

+ (int)getMaxEmbeddingConcurrency
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[CDMEmbeddingConfigs getMaxEmbeddingConcurrencyConst];
  if (v2 == 1)
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315138;
      v11 = "+[CDMEmbeddingConfigs getMaxEmbeddingConcurrency]";
      _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Simplicity is good, just 1 embedding in the system.", &v10, 0xCu);
    }

    goto LABEL_4;
  }

  v4 = v2;
  if (v2 <= 0)
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "+[CDMEmbeddingConfigs getMaxEmbeddingConcurrency]";
      v12 = 1024;
      v13 = v4;
      v7 = "%s [WARN]: ⚠️ Trust but verify, why is this set to %d? Returning 1 as we need to have at least a embedding in the system.";
LABEL_13:
      v4 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    v5 = +[CDMEmbeddingConfigs isInternalBuild];
    v3 = CDMOSLoggerForCategory(0);
    v6 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (!v6)
      {
        goto LABEL_15;
      }

      v10 = 136315394;
      v11 = "+[CDMEmbeddingConfigs getMaxEmbeddingConcurrency]";
      v12 = 1024;
      v13 = v4;
      v7 = "%s [WARN]: ⚠️ In active development on an internal build. Configured with multiple embeddings at the moment: %d";
LABEL_14:
      _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, v7, &v10, 0x12u);
      goto LABEL_15;
    }

    if (v6)
    {
      v10 = 136315394;
      v11 = "+[CDMEmbeddingConfigs getMaxEmbeddingConcurrency]";
      v12 = 1024;
      v13 = v4;
      v7 = "%s [WARN]: 🚨 Cannot have multiple embeddings (%d) on a non-internal build, so returning 1";
      goto LABEL_13;
    }
  }

LABEL_4:
  v4 = 1;
LABEL_15:

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)getDependentEmbeddingConfigs
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_setupCalled)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = [(NSDictionary *)self->_serviceDependentEmbeddingModelVersions allValues];
    v5 = [v3 setWithArray:v4];

    v6 = [v5 allObjects];
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(NSDictionary *)self->_embeddingConfigItems objectForKey:*(*(&v16 + 1) + 8 * i), v16];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[CDMEmbeddingConfigs getDependentEmbeddingConfigs]";
      _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: The setup method has not been called. Please call setup first.", buf, 0xCu);
    }

    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)getStableEmbeddingConfig
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_setupCalled)
  {
    v2 = [(NSDictionary *)self->_embeddingConfigItems objectForKey:self->_stableEmbeddingModelVersion];
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[CDMEmbeddingConfigs getStableEmbeddingConfig]";
      v8 = 2112;
      v9 = v2;
      _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s Return stable embedding config: %@.", &v6, 0x16u);
    }
  }

  else
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[CDMEmbeddingConfigs getStableEmbeddingConfig]";
      _os_log_error_impl(&dword_1DC287000, v3, OS_LOG_TYPE_ERROR, "%s [ERR]: The setup method has not been called. Please call setup first.", &v6, 0xCu);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  assetPaths = self->_assetPaths;
  v5 = a3;
  [v5 encodeObject:assetPaths forKey:@"assetPaths"];
  [v5 encodeObject:self->_stableEmbeddingModelVersion forKey:@"_stableEmbeddingModelVersion"];
  [v5 encodeObject:self->_embeddingConfigItems forKey:@"embeddingConfigItems"];
  [v5 encodeObject:self->_serviceDependentEmbeddingModelVersions forKey:@"serviceDependentEmbeddingModelVersions"];
  [v5 encodeBool:self->_setupCalled forKey:@"setupCalled"];
}

- (CDMEmbeddingConfigs)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CDMEmbeddingConfigs;
  v5 = [(CDMEmbeddingConfigs *)&v28 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"assetPaths"];
    assetPaths = v5->_assetPaths;
    v5->_assetPaths = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_stableEmbeddingModelVersion"];
    stableEmbeddingModelVersion = v5->_stableEmbeddingModelVersion;
    v5->_stableEmbeddingModelVersion = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"embeddingConfigItems"];
    embeddingConfigItems = v5->_embeddingConfigItems;
    v5->_embeddingConfigItems = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"serviceDependentEmbeddingModelVersions"];
    serviceDependentEmbeddingModelVersions = v5->_serviceDependentEmbeddingModelVersions;
    v5->_serviceDependentEmbeddingModelVersions = v25;

    v5->_setupCalled = [v4 decodeBoolForKey:@"setupCalled"];
  }

  return v5;
}

- (id)generateServiceDependentEmbeddingModelVersionsWithError:(id *)a3
{
  v43 = *MEMORY[0x1E69E9840];
  if (self->_assetPaths)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = self->_assetPaths;
    v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [(NSDictionary *)self->_assetPaths objectForKey:v10];
          v12 = v11;
          if (v11 && [v11 getAssetType])
          {
            v13 = [v12 getAssetMetadata];
            v14 = [v13 objectForKey:@"EMBEDDING_VERSION"];

            if (!v14)
            {
              v15 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315650;
                v37 = "[CDMEmbeddingConfigs generateServiceDependentEmbeddingModelVersionsWithError:]";
                v38 = 2112;
                v39 = v12;
                v40 = 2112;
                v41 = @"EMBEDDING_VERSION";
                _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Asset: %@ doesn't have metadata with key: %@. Will use the stable embedding model version.", buf, 0x20u);
              }

              v14 = self->_stableEmbeddingModelVersion;
            }

            v16 = [(NSDictionary *)self->_embeddingConfigItems objectForKey:v14];

            if (!v16)
            {
              v20 = MEMORY[0x1E696ABC0];
              v34 = *MEMORY[0x1E696A578];
              v21 = MEMORY[0x1E696AEC0];
              v22 = [(NSDictionary *)self->_embeddingConfigItems allKeys];
              v23 = [v21 stringWithFormat:@"The dependent embedding model version: %@ for uafFactorName: %@ doesn't exist in all available embedding model versions: %@.", v14, v10, v22];
              v35 = v23;
              v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
              *a3 = [v20 errorWithDomain:@"CDMEmbeddingConfigs" code:1 userInfo:v24];

              v25 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v28 = *a3;
                *buf = 136315394;
                v37 = "[CDMEmbeddingConfigs generateServiceDependentEmbeddingModelVersionsWithError:]";
                v38 = 2112;
                v39 = v28;
                _os_log_error_impl(&dword_1DC287000, v25, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@. Return empty map.", buf, 0x16u);
              }

              v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
              goto LABEL_28;
            }

            [v4 setObject:v14 forKeyedSubscript:v10];
          }

          else
          {
            v14 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v37 = "[CDMEmbeddingConfigs generateServiceDependentEmbeddingModelVersionsWithError:]";
              v38 = 2112;
              v39 = v10;
              _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Asset for UAF factor: %@ is nil.", buf, 0x16u);
            }
          }
        }

        v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v37 = "[CDMEmbeddingConfigs generateServiceDependentEmbeddingModelVersionsWithError:]";
      v38 = 2112;
      v39 = v4;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s CDM factor dependent embedding model version map is: %@.", buf, 0x16u);
    }

    v18 = v4;
LABEL_28:
  }

  else
  {
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v37 = "[CDMEmbeddingConfigs generateServiceDependentEmbeddingModelVersionsWithError:]";
      _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Input asset paths is nil. Return empty map.", buf, 0xCu);
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v26 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)validateClientEmbeddingVersion:(id)a3 embeddingAssetVersion:(id)a4 embeddingModelIdList:(id)a5 multipleModels:(BOOL)a6 withError:(id *)a7
{
  v8 = a6;
  v39[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [CDMEmbeddingUtils isValidEmbeddingVersionOnlyNumber:self->_clientEmbeddingVersion];
  if (v8)
  {
    if (v15 && ![(NSString *)self->_clientEmbeddingVersion isEqualToString:v13])
    {
      v16 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The embeddingVersion is with format {OS}.{NCV}.{Patch}, and it does not match with the top-level embedding asset version. Return empty map."];
      v39[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      *a7 = [v16 errorWithDomain:@"CDMEmbeddingConfigs" code:2 userInfo:v18];

      v19 = [CDMPlatformUtils prettyPrintError:*a7];
    }

    if (!+[CDMEmbeddingUtils isValidEmbeddingVersionOnlyNumber:](CDMEmbeddingUtils, "isValidEmbeddingVersionOnlyNumber:", self->_clientEmbeddingVersion) && ([v14 containsObject:self->_clientEmbeddingVersion] & 1) == 0)
    {
      v20 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The embeddingVersion is not a valid bolt ID as it does not exist in the available embedding model ids provided in embedding asset configuration. Return empty map."];
      v37 = v21;
      v22 = MEMORY[0x1E695DF20];
      v23 = &v37;
      v24 = &v36;
LABEL_13:
      v29 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
      *a7 = [v20 errorWithDomain:@"CDMEmbeddingConfigs" code:2 userInfo:v29];

      v30 = [CDMPlatformUtils prettyPrintError:*a7];
    }
  }

  else
  {
    if (v15 && ![(NSString *)self->_clientEmbeddingVersion isEqualToString:v13])
    {
      v25 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A578];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The embeddingVersion is with format {OS}.{NCV}.{Patch} (e.g. 3200.1002.1004) and it does not matche with the CDM embedding asset version. Return empty map."];
      v35 = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *a7 = [v25 errorWithDomain:@"CDMEmbeddingConfigs" code:2 userInfo:v27];

      v28 = [CDMPlatformUtils prettyPrintError:*a7];
    }

    if (![CDMEmbeddingUtils isValidEmbeddingVersionOnlyNumber:self->_clientEmbeddingVersion])
    {
      v20 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"In a single embedding model case, it is not allowed that the embeddingVersion is with format {Espresso_Bolt_ID}. Return empty map."];
      v33 = v21;
      v22 = MEMORY[0x1E695DF20];
      v23 = &v33;
      v24 = &v32;
      goto LABEL_13;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)generateEmbeddingConfigItemsWithError:(id *)a3
{
  v96[1] = *MEMORY[0x1E69E9840];
  assetPaths = self->_assetPaths;
  if (assetPaths)
  {
    v6 = [(NSDictionary *)assetPaths objectForKey:@"com.apple.siri.nl.owl"];
    v7 = v6;
    if (!v6 || ![v6 getAssetType])
    {
      v19 = MEMORY[0x1E696ABC0];
      v95 = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Embedding asset is nil"];
      v96[0] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:&v95 count:1];
      *a3 = [v19 errorWithDomain:@"CDMEmbeddingConfigs" code:0 userInfo:v21];

      v22 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v54 = *a3;
        *buf = 136315394;
        v90 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
        v91 = 2112;
        v92 = v54;
        _os_log_error_impl(&dword_1DC287000, v22, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@. Return empty map.", buf, 0x16u);
      }

      v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
      goto LABEL_47;
    }

    v72 = a3;
    v8 = [v7 getAssetVersion];
    v9 = [v7 getAssetPath];
    v10 = [v7 getAssetMetadata];
    v11 = [v10 objectForKey:@"MULTI_EMBEDDING_MODEL_IDS"];
    v12 = [v10 objectForKey:@"STABLE_EMBEDDING_MODEL_ID"];
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v90 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
      v91 = 2112;
      v92 = v11;
      v93 = 2112;
      v94 = v12;
      _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s Get embedding model ids: %@, stable embedding model id: %@", buf, 0x20u);
    }

    v75 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v11 && v12)
    {
      v74 = v9;
      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v90 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
        _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s In multi embedding model mode.", buf, 0xCu);
      }

      v15 = [CDMEmbeddingConfigs generateEmbeddingModelIdList:v11];
      if (self->_clientEmbeddingVersion)
      {
        v16 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          clientEmbeddingVersion = self->_clientEmbeddingVersion;
          *buf = 136315394;
          v90 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
          v91 = 2112;
          v92 = clientEmbeddingVersion;
          _os_log_impl(&dword_1DC287000, v16, OS_LOG_TYPE_INFO, "%s Client Embedding version is not nil and the value is %@.", buf, 0x16u);
        }

        [(CDMEmbeddingConfigs *)self validateClientEmbeddingVersion:self->_clientEmbeddingVersion embeddingAssetVersion:v8 embeddingModelIdList:v15 multipleModels:1 withError:v72];
        if (*v72)
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
LABEL_45:

LABEL_46:
LABEL_47:

          goto LABEL_48;
        }
      }

      v73 = v12;
      if (([v15 containsObject:v12] & 1) == 0)
      {
        v48 = MEMORY[0x1E696ABC0];
        v87 = *MEMORY[0x1E696A578];
        v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't locate stable embedding id: %@ in embedding model id list: %@.", self->_stableEmbeddingModelVersion, v15];
        v88 = v49;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        *v72 = [v48 errorWithDomain:@"CDMEmbeddingConfigs" code:1 userInfo:v50];

        v51 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v64 = *v72;
          *buf = 136315394;
          v90 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
          v91 = 2112;
          v92 = v64;
          _os_log_error_impl(&dword_1DC287000, v51, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@. Return empty map.", buf, 0x16u);
        }

        v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
        v12 = v73;
        goto LABEL_45;
      }

      v28 = +[CDMEmbeddingConfigs getMaxEmbeddingConcurrency];
      if ([v15 count] != v28)
      {
        v55 = MEMORY[0x1E696ABC0];
        v85 = *MEMORY[0x1E696A578];
        v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The count of embedding model ids in the configs: %lu doesn't match with max embedding concurrency count: %d.", objc_msgSend(v15, "count"), v28];
        v86 = v56;
        v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        *v72 = [v55 errorWithDomain:@"CDMEmbeddingConfigs" code:1 userInfo:v57];

        v58 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v65 = *v72;
          *buf = 136315394;
          v90 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
          v91 = 2112;
          v92 = v65;
          _os_log_error_impl(&dword_1DC287000, v58, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@. Return empty map.", buf, 0x16u);
        }

        v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
        v12 = v73;
        goto LABEL_45;
      }

      v68 = v11;
      v69 = v10;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v67 = v15;
      v25 = v15;
      v29 = [(CDMEmbeddingConfigItem *)v25 countByEnumeratingWithState:&v76 objects:v84 count:16];
      if (v29)
      {
        v30 = v29;
        obj = v25;
        v71 = *v77;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v77 != v71)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v76 + 1) + 8 * i);
            v33 = v8;
            v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, v32];
            v35 = [CDMEmbeddingConfigItem alloc];
            v36 = [v74 stringByAppendingPathComponent:v32];
            v37 = -[CDMEmbeddingConfigItem initWithEmbeddingModelPath:isStableEmbeddingModel:](v35, "initWithEmbeddingModelPath:isStableEmbeddingModel:", v36, [v32 isEqualToString:v73]);

            v38 = [(CDMEmbeddingConfigItem *)v37 embeddingModelVersion];
            v39 = [v38 isEqualToString:v34];

            if ((v39 & 1) == 0)
            {
              v59 = MEMORY[0x1E696ABC0];
              v82 = *MEMORY[0x1E696A578];
              v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Embedding model version of embedding config for embedding model id: %@ doesn't match with expected embedding model version: %@.", v32, v34];
              v83 = v60;
              v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
              *v72 = [v59 errorWithDomain:@"CDMEmbeddingConfigs" code:1 userInfo:v61];

              v62 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                v66 = *v72;
                *buf = 136315394;
                v90 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
                v91 = 2112;
                v92 = v66;
                _os_log_error_impl(&dword_1DC287000, v62, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@. Return empty map.", buf, 0x16u);
              }

              v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
              v8 = v33;
              v12 = v73;
              v9 = v74;
              v11 = v68;
              v10 = v69;
              v15 = v67;
              goto LABEL_45;
            }

            v40 = [(CDMEmbeddingConfigItem *)v37 embeddingModelVersion];
            [v75 setObject:v37 forKeyedSubscript:v40];

            v8 = v33;
          }

          v25 = obj;
          v30 = [(CDMEmbeddingConfigItem *)obj countByEnumeratingWithState:&v76 objects:v84 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      v12 = v73;
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, v73];
      stableEmbeddingModelVersion = self->_stableEmbeddingModelVersion;
      self->_stableEmbeddingModelVersion = v41;

      v9 = v74;
      v11 = v68;
      v10 = v69;
    }

    else
    {
      if (v11 | v12)
      {
        v43 = MEMORY[0x1E696ABC0];
        v80 = *MEMORY[0x1E696A578];
        v44 = v12;
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid embedding configs with embedding model ids: %@, stable embedding model id: %@. CDM is confusing whether current is single embedding mode or multi embedding mode.", v11, v12];
        v81 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        *v72 = [v43 errorWithDomain:@"CDMEmbeddingConfigs" code:1 userInfo:v46];

        v47 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v63 = *v72;
          *buf = 136315394;
          v90 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
          v91 = 2112;
          v92 = v63;
          _os_log_error_impl(&dword_1DC287000, v47, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@. Return empty map.", buf, 0x16u);
        }

        v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
        v12 = v44;
        goto LABEL_46;
      }

      v24 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v90 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
        _os_log_impl(&dword_1DC287000, v24, OS_LOG_TYPE_INFO, "%s In single embedding model mode. Skipping version check.", buf, 0xCu);
      }

      objc_storeStrong(&self->_stableEmbeddingModelVersion, v8);
      v25 = [[CDMEmbeddingConfigItem alloc] initWithEmbeddingModelPath:v9 isStableEmbeddingModel:1];
      [v75 setObject:v25 forKeyedSubscript:v8];
    }

    v26 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = self->_stableEmbeddingModelVersion;
      *buf = 136315650;
      v90 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
      v91 = 2112;
      v92 = v27;
      v93 = 2112;
      v94 = v75;
      _os_log_impl(&dword_1DC287000, v26, OS_LOG_TYPE_INFO, "%s Stable embedding asset version: %@. Embedding config items: %@.", buf, 0x20u);
    }

    v18 = v75;
    goto LABEL_46;
  }

  v23 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v90 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
    _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s Input asset paths is nil. Return empty map.", buf, 0xCu);
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
LABEL_48:
  v52 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)getEmbeddingConfigForEmbeddingModelVersion:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_embeddingConfigItems objectForKey:a3];
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[CDMEmbeddingConfigs getEmbeddingConfigForEmbeddingModelVersion:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s Return embedding config: %@.", &v7, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)getAllEmbeddingConfigs
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_setupCalled)
  {
    v2 = [(NSDictionary *)self->_embeddingConfigItems allValues];
  }

  else
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[CDMEmbeddingConfigs getAllEmbeddingConfigs]";
      _os_log_error_impl(&dword_1DC287000, v3, OS_LOG_TYPE_ERROR, "%s [ERR]: The setup method has not been called. Please call setup first.", &v6, 0xCu);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)getEmbeddingConfigForFactor:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_setupCalled)
  {
    v5 = [(CDMEmbeddingConfigs *)self getStableEmbeddingConfig];
    v6 = [(NSDictionary *)self->_serviceDependentEmbeddingModelVersions objectForKey:v4];
    if (v6)
    {
      v7 = [(CDMEmbeddingConfigs *)self getEmbeddingConfigForEmbeddingModelVersion:v6];

      v5 = v7;
    }

    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "[CDMEmbeddingConfigs getEmbeddingConfigForFactor:]";
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s Return embedding config: %@ for factor :%@.", &v11, 0x20u);
    }
  }

  else
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CDMEmbeddingConfigs getEmbeddingConfigForFactor:]";
      _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: The setup method has not been called. Please call setup first.", &v11, 0xCu);
    }

    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setupWithError:(id *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  self->_setupCalled = 1;
  v5 = [(NSDictionary *)self->_assetPaths objectForKey:@"com.apple.siri.nl.owl"];
  v6 = [v5 getAssetMetadata];
  v7 = [v6 objectForKey:@"EMBEDDING_RETURN_FOR_VERSION"];

  v8 = objc_alloc_init(MEMORY[0x1E695DF20]);
  embeddingReturnForVersion = self->_embeddingReturnForVersion;
  self->_embeddingReturnForVersion = v8;

  if (v7 && (v29 = 0, [CDMEmbeddingUtils setStringToJSONDictionaryWithError:&v29 stringToConvert:v7], v10 = objc_claimAutoreleasedReturnValue(), v11 = v29, v12 = self->_embeddingReturnForVersion, self->_embeddingReturnForVersion = v10, v12, v11))
  {
    v13 = v11;
    *a3 = v11;
    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v31 = "[CDMEmbeddingConfigs setupWithError:]";
      _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Failed to save EMBEDDING_RETURN_FOR_VERSION value to dictionary.", buf, 0xCu);
    }
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF20]);
    embeddingConfigItems = self->_embeddingConfigItems;
    self->_embeddingConfigItems = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF20]);
    serviceDependentEmbeddingModelVersions = self->_serviceDependentEmbeddingModelVersions;
    self->_serviceDependentEmbeddingModelVersions = v17;

    v28 = 0;
    v19 = [(CDMEmbeddingConfigs *)self generateEmbeddingConfigItemsWithError:&v28];
    v11 = v28;
    v20 = self->_embeddingConfigItems;
    self->_embeddingConfigItems = v19;

    if (v11)
    {
      v21 = v11;
      *a3 = v11;
    }

    else
    {
      v27 = 0;
      v22 = [(CDMEmbeddingConfigs *)self generateServiceDependentEmbeddingModelVersionsWithError:&v27];
      v23 = v27;
      v24 = self->_serviceDependentEmbeddingModelVersions;
      self->_serviceDependentEmbeddingModelVersions = v22;

      if (v23)
      {
        v25 = v23;
        *a3 = v23;
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (CDMEmbeddingConfigs)initWithAssetPaths:(id)a3 embeddingVersion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "[CDMEmbeddingConfigs initWithAssetPaths:embeddingVersion:]";
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Init CDM embedding configs with asset paths: %@ and embedding version %@.", buf, 0x20u);
  }

  v14.receiver = self;
  v14.super_class = CDMEmbeddingConfigs;
  v10 = [(CDMEmbeddingConfigs *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_assetPaths, a3);
    objc_storeStrong(&v11->_clientEmbeddingVersion, a4);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (CDMEmbeddingConfigs)initWithAssetPaths:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMEmbeddingConfigs;
  v6 = [(CDMEmbeddingConfigs *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetPaths, a3);
  }

  return v7;
}

+ (id)generateEmbeddingModelIdList:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a3 componentsSeparatedByString:{@", "}];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v12 = [v10 stringByTrimmingCharactersInSet:v11];

        if ([v12 length])
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

@end