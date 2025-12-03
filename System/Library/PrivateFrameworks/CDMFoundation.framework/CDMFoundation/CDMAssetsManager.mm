@interface CDMAssetsManager
+ (id)getAssetSetsInCacheForGraphName:(id)name;
+ (id)getFactorNamesForService:(id)service;
+ (id)getFactorToUnprocessedNLAsset:(id)asset cdmAssetsInfo:(id)info locale:(id)locale;
+ (id)getHashKeyForAssetSets:(id)sets;
+ (id)getHashKeyForCDMAssetsInfo:(id)info;
+ (id)getSingletonCDMAssetsManager;
- (BOOL)areAssetsAvailableForCDMAssetsInfo:(id)info factorToAsset:(id)asset withError:(id *)error withSelfMetadata:(id)metadata withSelfContextId:(id)id withDataDispatcherContext:(id)context;
- (BOOL)isAssetAvailableForCDMAssetsFactorConfig:(id)config factorToAsset:(id)asset withError:(id *)error;
- (BOOL)registerForCDMAssetsInfo:(id)info withLocale:(id)locale withAssetsDelegate:(id)delegate selfContextId:(id)id selfMetadata:(id)metadata dataDispatcherContext:(id)context withAssetAvailabilityType:(int64_t)type withError:(id *)self0;
- (BOOL)shouldReSetupForLocale:(id)locale cdmAssetsInfo:(id)info;
- (id)getAssetsByFactorNamesForCDMAssetsInfo:(id)info assetDirPath:(id)path locale:(id)locale;
- (id)getSavedResponseFromCacheForCDMAssetsInfo:(id)info locale:(id)locale assetSets:(id)sets;
- (id)initManager;
- (id)processNLAsset:(id)asset withAssetFolders:(id)folders;
- (id)processSideLoadedAssetForNLAsset:(id)asset withAssetFolders:(id)folders assetDirPath:(id)path locale:(id)locale;
- (void)_setupUafAssetManagerForLocale:(id)locale cdmAssetsInfo:(id)info error:(id *)error;
- (void)saveGetAssetsResponseForCDMAssetsInfo:(id)info locale:(id)locale assetSets:(id)sets forResponse:(id)response;
- (void)setupForLocale:(id)locale cdmAssetsInfo:(id)info error:(id *)error;
@end

@implementation CDMAssetsManager

+ (id)getSingletonCDMAssetsManager
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "+[CDMAssetsManager getSingletonCDMAssetsManager]";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Fetching CDMAssetsManager", &v6, 0xCu);
  }

  if (getSingletonCDMAssetsManager_once != -1)
  {
    dispatch_once(&getSingletonCDMAssetsManager_once, &__block_literal_global_658);
  }

  v3 = getSingletonCDMAssetsManager_singletonCdmAssetsManager;
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)registerForCDMAssetsInfo:(id)info withLocale:(id)locale withAssetsDelegate:(id)delegate selfContextId:(id)id selfMetadata:(id)metadata dataDispatcherContext:(id)context withAssetAvailabilityType:(int64_t)type withError:(id *)self0
{
  infoCopy = info;
  localeCopy = locale;
  delegateCopy = delegate;
  idCopy = id;
  metadataCopy = metadata;
  contextCopy = context;
  v22 = +[CDMUAFAssetsManager getNLUAFClientManagers];
  objc_sync_enter(v22);
  LOBYTE(self) = [(CDMUAFAssetsManager *)self->_cdmUAFAssetsManager registerForCDMAssetsInfo:infoCopy withLocale:localeCopy withAssetsDelegate:delegateCopy useFileManager:self->_fileManager withSelfContextId:idCopy withSelfMetadata:metadataCopy withDataDispatcherContext:contextCopy withAssetAvailabilityType:type withError:error];
  objc_sync_exit(v22);

  return self;
}

- (BOOL)areAssetsAvailableForCDMAssetsInfo:(id)info factorToAsset:(id)asset withError:(id *)error withSelfMetadata:(id)metadata withSelfContextId:(id)id withDataDispatcherContext:(id)context
{
  v72 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  assetCopy = asset;
  metadataCopy = metadata;
  idCopy = id;
  contextCopy = context;
  v14 = objc_alloc(MEMORY[0x1E695DF90]);
  getAllAssetSets = [infoCopy getAllAssetSets];
  v53 = [v14 initWithCapacity:{objc_msgSend(getAllAssetSets, "count")}];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v16 = infoCopy;
  getAllAssetSets2 = [infoCopy getAllAssetSets];
  v18 = [getAllAssetSets2 countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v61;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v61 != v20)
        {
          objc_enumerationMutation(getAllAssetSets2);
        }

        v22 = *(*(&v60 + 1) + 8 * i);
        v23 = [v16 getCDMAssetsFactorConfigCDMAssetSet:{objc_msgSend(v22, "integerValue")}];
        v59 = 0;
        v24 = [(CDMAssetsManager *)self isAssetAvailableForCDMAssetsFactorConfig:v23 factorToAsset:assetCopy withError:&v59];
        v25 = v59;

        if (!v24)
        {
          [v53 setObject:v25 forKey:v22];
        }
      }

      v19 = [getAllAssetSets2 countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v19);
  }

  v26 = v53;
  v27 = [v53 count];
  if (v27)
  {
    allKeys = [v53 allKeys];
    v29 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v48 = [allKeys componentsJoinedByString:@", "];
      *buf = 136315394;
      v68 = "[CDMAssetsManager areAssetsAvailableForCDMAssetsInfo:factorToAsset:withError:withSelfMetadata:withSelfContextId:withDataDispatcherContext:]";
      v69 = 2112;
      v70 = v48;
      _os_log_error_impl(&dword_1DC287000, v29, OS_LOG_TYPE_ERROR, "%s [ERR]: Assets for assetSets: [%@] are not available. Return NO.", buf, 0x16u);
    }

    v30 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    allValues = [v53 allValues];
    v32 = [allValues countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v56;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v56 != v34)
          {
            objc_enumerationMutation(allValues);
          }

          localizedFailureReason = [*(*(&v55 + 1) + 8 * j) localizedFailureReason];
          [v30 appendString:localizedFailureReason];

          [v30 appendString:@"\n"];
        }

        v33 = [allValues countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v33);
    }

    v37 = MEMORY[0x1E696ABC0];
    v64[0] = *MEMORY[0x1E696A578];
    v38 = MEMORY[0x1E696AEC0];
    v39 = [allKeys componentsJoinedByString:@", "];
    v40 = [v38 stringWithFormat:@"Assets are missing for services: [%@].", v39];
    v64[1] = *MEMORY[0x1E696A588];
    v65[0] = v40;
    v65[1] = v30;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
    *error = [v37 errorWithDomain:@"CDMAssetsManager" code:0 userInfo:v41];

    v43 = idCopy;
    v42 = metadataCopy;
    v44 = contextCopy;
    [CDMSELFLogUtil cdmSetupMissingAssetsDetected:metadataCopy contextId:idCopy serviceNames:0 logMessage:@"SELF setup missing assets detected message emitted" dataDispatcherContext:contextCopy];
    v45 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v68 = "[CDMAssetsManager areAssetsAvailableForCDMAssetsInfo:factorToAsset:withError:withSelfMetadata:withSelfContextId:withDataDispatcherContext:]";
      _os_log_error_impl(&dword_1DC287000, v45, OS_LOG_TYPE_ERROR, "%s [ERR]: Self heal the cache because not all assets found in assetSet", buf, 0xCu);
    }

    +[CDMUAFAssetsManager reInitCDMUAFAssetsCache];
    v26 = v53;
  }

  else
  {
    allKeys = CDMOSLoggerForCategory(0);
    v43 = idCopy;
    v42 = metadataCopy;
    v44 = contextCopy;
    if (os_log_type_enabled(allKeys, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v68 = "[CDMAssetsManager areAssetsAvailableForCDMAssetsInfo:factorToAsset:withError:withSelfMetadata:withSelfContextId:withDataDispatcherContext:]";
      _os_log_debug_impl(&dword_1DC287000, allKeys, OS_LOG_TYPE_DEBUG, "%s All required assets are available. Return YES.", buf, 0xCu);
    }
  }

  v46 = *MEMORY[0x1E69E9840];
  return v27 == 0;
}

- (BOOL)isAssetAvailableForCDMAssetsFactorConfig:(id)config factorToAsset:(id)asset withError:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  configCopy = config;
  assetCopy = asset;
  getFactorToFoldersMapping = [configCopy getFactorToFoldersMapping];
  allKeys = [getFactorToFoldersMapping allKeys];

  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v42 = "[CDMAssetsManager isAssetAvailableForCDMAssetsFactorConfig:factorToAsset:withError:]";
    v43 = 2112;
    v44 = allKeys;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Factors are: %@", buf, 0x16u);
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allKeys, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = allKeys;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v35 + 1) + 8 * v16);
        if (([configCopy isFactorRequired:v17] & 1) == 0)
        {
          v20 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v42 = "[CDMAssetsManager isAssetAvailableForCDMAssetsFactorConfig:factorToAsset:withError:]";
            v43 = 2112;
            v44 = v17;
            _os_log_debug_impl(&dword_1DC287000, v20, OS_LOG_TYPE_DEBUG, "%s Skip current factor as it is not required: %@.", buf, 0x16u);
          }

          goto LABEL_14;
        }

        v18 = [assetCopy objectForKey:v17];
        getAssetType = [v18 getAssetType];

        if (getAssetType)
        {
          v20 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = [assetCopy objectForKey:v17];
            *buf = 136315650;
            v42 = "[CDMAssetsManager isAssetAvailableForCDMAssetsFactorConfig:factorToAsset:withError:]";
            v43 = 2112;
            v44 = v21;
            v45 = 2112;
            v46 = v17;
            _os_log_debug_impl(&dword_1DC287000, v20, OS_LOG_TYPE_DEBUG, "%s Asset: %@ is available for factor: %@.", buf, 0x20u);
          }

LABEL_14:

          goto LABEL_15;
        }

        [v11 addObject:v17];
LABEL_15:
        ++v16;
      }

      while (v14 != v16);
      v22 = [v12 countByEnumeratingWithState:&v35 objects:v47 count:16];
      v14 = v22;
    }

    while (v22);
  }

  v23 = [v11 count];
  if (v23)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A588];
    v39[0] = *MEMORY[0x1E696A578];
    v39[1] = v25;
    v40[0] = @"Assets are missing";
    v26 = MEMORY[0x1E696AEC0];
    v27 = [v11 componentsJoinedByString:{@", "}];
    v28 = [v26 stringWithFormat:@"Assets are missing for factors: [%@].", v27];
    v40[1] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    *error = [v24 errorWithDomain:@"CDMAssetsManager" code:0 userInfo:v29];

    v30 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = *error;
      *buf = 136315394;
      v42 = "[CDMAssetsManager isAssetAvailableForCDMAssetsFactorConfig:factorToAsset:withError:]";
      v43 = 2112;
      v44 = v31;
      _os_log_error_impl(&dword_1DC287000, v30, OS_LOG_TYPE_ERROR, "%s [ERR]: Not all assets are available with error: %@. Return NO.", buf, 0x16u);
    }
  }

  else
  {
    v30 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v42 = "[CDMAssetsManager isAssetAvailableForCDMAssetsFactorConfig:factorToAsset:withError:]";
      _os_log_debug_impl(&dword_1DC287000, v30, OS_LOG_TYPE_DEBUG, "%s All assets are available. Return YES.", buf, 0xCu);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v23 == 0;
}

- (id)getAssetsByFactorNamesForCDMAssetsInfo:(id)info assetDirPath:(id)path locale:(id)locale
{
  v62 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  pathCopy = path;
  localeCopy = locale;
  obj = +[CDMUAFAssetsManager getNLUAFClientManagers];
  objc_sync_enter(obj);
  v32 = self->_getProcessedAssetsCache;
  objc_sync_enter(v32);
  getGraphName = [infoCopy getGraphName];
  v33 = [CDMAssetsManager getAssetSetsInCacheForGraphName:getGraphName];

  if (pathCopy)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_3:

      goto LABEL_4;
    }

    *buf = 136315138;
    v55 = "[CDMAssetsManager getAssetsByFactorNamesForCDMAssetsInfo:assetDirPath:locale:]";
    v29 = "%s CDM custom sideloading path exists. Skip cached response.";
LABEL_43:
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, v29, buf, 0xCu);
    goto LABEL_3;
  }

  if (!v33)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_3;
    }

    *buf = 136315138;
    v55 = "[CDMAssetsManager getAssetsByFactorNamesForCDMAssetsInfo:assetDirPath:locale:]";
    v29 = "%s Cached asset sets are nil. Skip cached response.";
    goto LABEL_43;
  }

  v44 = [(CDMAssetsManager *)self getSavedResponseFromCacheForCDMAssetsInfo:infoCopy locale:localeCopy assetSets:?];
  if (v44)
  {
    v35 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v55 = "[CDMAssetsManager getAssetsByFactorNamesForCDMAssetsInfo:assetDirPath:locale:]";
      v56 = 2112;
      v57 = v44;
      _os_log_debug_impl(&dword_1DC287000, v35, OS_LOG_TYPE_DEBUG, "%s Found cached response: %@", buf, 0x16u);
    }

    goto LABEL_37;
  }

LABEL_4:
  v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
  getAllAssetSets = [infoCopy getAllAssetSets];
  v10 = +[CDMPlatformUtils isInternalInstall];
  if (pathCopy)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v43 = v11;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v35 = getAllAssetSets;
  v37 = [v35 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v37)
  {
    v36 = *v51;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(v35);
        }

        v12 = [infoCopy getCDMAssetsFactorConfigCDMAssetSet:{objc_msgSend(*(*(&v50 + 1) + 8 * i), "integerValue")}];
        if (v12)
        {
          v38 = v12;
          getFactorToFoldersMapping = [v12 getFactorToFoldersMapping];
          localeIdentifier = [localeCopy localeIdentifier];
          v15 = [CDMAssetsManager getFactorToUnprocessedNLAsset:getFactorToFoldersMapping cdmAssetsInfo:infoCopy locale:localeIdentifier];

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v16 = getFactorToFoldersMapping;
          v17 = [v16 countByEnumeratingWithState:&v46 objects:v60 count:16];
          if (!v17)
          {
            goto LABEL_27;
          }

          v18 = *v47;
          while (1)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v47 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v46 + 1) + 8 * j);
              v21 = objc_alloc_init(NilAsset);
              v22 = [v16 objectForKey:v20];
              v23 = [v15 objectForKey:v20];
              v24 = [(CDMAssetsManager *)self processNLAsset:v23 withAssetFolders:v22];

              if (v22 && [v22 count])
              {
                if (!v43)
                {
                  goto LABEL_25;
                }

                [(CDMAssetsManager *)self processSideLoadedAssetForNLAsset:v24 withAssetFolders:v22 assetDirPath:pathCopy locale:localeCopy];
                v24 = v25 = v24;
              }

              else
              {
                v25 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315138;
                  v55 = "[CDMAssetsManager getAssetsByFactorNamesForCDMAssetsInfo:assetDirPath:locale:]";
                  _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, "%s [WARN]: Asset folder names are nil/empty", buf, 0xCu);
                }
              }

LABEL_25:
              [v44 setObject:v24 forKey:v20];
            }

            v17 = [v16 countByEnumeratingWithState:&v46 objects:v60 count:16];
            if (!v17)
            {
LABEL_27:

              v12 = v38;
              break;
            }
          }
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v37);
  }

  v26 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    getGraphName2 = [infoCopy getGraphName];
    descriptionInStringsFileFormat = [v44 descriptionInStringsFileFormat];
    *buf = 136315650;
    v55 = "[CDMAssetsManager getAssetsByFactorNamesForCDMAssetsInfo:assetDirPath:locale:]";
    v56 = 2112;
    v57 = getGraphName2;
    v58 = 2112;
    v59 = descriptionInStringsFileFormat;
    _os_log_debug_impl(&dword_1DC287000, v26, OS_LOG_TYPE_DEBUG, "%s Assets paths for %@: %@", buf, 0x20u);
  }

  [(CDMAssetsManager *)self saveGetAssetsResponseForCDMAssetsInfo:infoCopy locale:localeCopy assetSets:v33 forResponse:v44];
LABEL_37:

  objc_sync_exit(v32);
  objc_sync_exit(obj);

  v27 = *MEMORY[0x1E69E9840];

  return v44;
}

- (id)getSavedResponseFromCacheForCDMAssetsInfo:(id)info locale:(id)locale assetSets:(id)sets
{
  v21 = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  v8 = [CDMAssetsManager getHashKeyForCDMAssetsInfo:info];
  v9 = [CDMAssetsManager getHashKeyForAssetSets:setsCopy];

  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    getProcessedAssetsCache = [(CDMAssetsManager *)self getProcessedAssetsCache];
    v17 = 136315394;
    v18 = "[CDMAssetsManager getSavedResponseFromCacheForCDMAssetsInfo:locale:assetSets:]";
    v19 = 2112;
    v20 = getProcessedAssetsCache;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Processed Assets Cache: %@", &v17, 0x16u);
  }

  getProcessedAssetsCache2 = [(CDMAssetsManager *)self getProcessedAssetsCache];
  v12 = [getProcessedAssetsCache2 objectForKey:v8];
  v13 = [v12 objectForKey:v9];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)saveGetAssetsResponseForCDMAssetsInfo:(id)info locale:(id)locale assetSets:(id)sets forResponse:(id)response
{
  v23 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  setsCopy = sets;
  v11 = [CDMAssetsManager getHashKeyForCDMAssetsInfo:info];
  v12 = [CDMAssetsManager getHashKeyForAssetSets:setsCopy];

  getProcessedAssetsCache = self->_getProcessedAssetsCache;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(NSMutableDictionary *)getProcessedAssetsCache setObject:v14 forKey:v11];

  v15 = [(NSMutableDictionary *)self->_getProcessedAssetsCache objectForKey:v11];
  [v15 setObject:responseCopy forKey:v12];

  v16 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    getProcessedAssetsCache = [(CDMAssetsManager *)self getProcessedAssetsCache];
    v19 = 136315394;
    v20 = "[CDMAssetsManager saveGetAssetsResponseForCDMAssetsInfo:locale:assetSets:forResponse:]";
    v21 = 2112;
    v22 = getProcessedAssetsCache;
    _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Updated Processed Assets Cache: %@", &v19, 0x16u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)processSideLoadedAssetForNLAsset:(id)asset withAssetFolders:(id)folders assetDirPath:(id)path locale:(id)locale
{
  v25 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v11 = [(CDMDefaultAssetsManager *)self->_cdmDefaultAssetsManager getAbsolutePathForServiceAssetFolders:folders assetDirPath:path locale:locale];
  v12 = v11;
  v13 = assetCopy;
  if (v11)
  {
    getAssetPath = [v11 getAssetPath];

    v13 = assetCopy;
    if (getAssetPath)
    {
      v15 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v19 = 136315650;
        v20 = "[CDMAssetsManager processSideLoadedAssetForNLAsset:withAssetFolders:assetDirPath:locale:]";
        v21 = 2112;
        v22 = v12;
        v23 = 2112;
        v24 = assetCopy;
        _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Found valid custom asset: [%@] for NLAsset: %@. Return custom asset.", &v19, 0x20u);
      }

      v13 = v12;
    }
  }

  v16 = v13;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)processNLAsset:(id)asset withAssetFolders:(id)folders
{
  v25 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  foldersCopy = folders;
  if (!assetCopy)
  {
    goto LABEL_16;
  }

  getAssetPath = [assetCopy getAssetPath];

  if (getAssetPath)
  {
    getAssetPath2 = [assetCopy getAssetPath];
    v10 = [CDMAssetsUtils findExistFolderInAssetFolders:foldersCopy underBasePath:getAssetPath2 useFileManager:self->_fileManager];

    if (v10)
    {
      [assetCopy appendPathWithServiceAssetFolder:v10];
LABEL_5:

      goto LABEL_6;
    }

    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      getAssetPath3 = [assetCopy getAssetPath];
      v19 = 136315650;
      v20 = "[CDMAssetsManager processNLAsset:withAssetFolders:]";
      v21 = 2112;
      v22 = 0;
      v23 = 2112;
      v24 = getAssetPath3;
      _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s [WARN]: No valid asset folders exist for asset folder: %@ under asset path: %@.", &v19, 0x20u);
    }

    if (!foldersCopy || ![foldersCopy count])
    {
      goto LABEL_5;
    }

    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = 136315138;
      v20 = "[CDMAssetsManager processNLAsset:withAssetFolders:]";
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s [WARN]: Asset folders were provided but not found.Return Nil asset", &v19, 0xCu);
    }

LABEL_16:
    v12 = objc_alloc_init(NilAsset);
    goto LABEL_17;
  }

LABEL_6:
  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315394;
    v20 = "[CDMAssetsManager processNLAsset:withAssetFolders:]";
    v21 = 2112;
    v22 = assetCopy;
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s NL asset: %@ ", &v19, 0x16u);
  }

  v12 = assetCopy;
LABEL_17:
  v16 = v12;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)_setupUafAssetManagerForLocale:(id)locale cdmAssetsInfo:(id)info error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  cdmUAFAssetsManager = self->_cdmUAFAssetsManager;
  v16 = 0;
  [(CDMUAFAssetsManager *)cdmUAFAssetsManager setupForLocale:localeCopy cdmAssetsInfo:info error:&v16];
  v10 = v16;
  v11 = CDMOSLoggerForCategory(0);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      localeIdentifier = [localeCopy localeIdentifier];
      *buf = 136315394;
      v18 = "[CDMAssetsManager _setupUafAssetManagerForLocale:cdmAssetsInfo:error:]";
      v19 = 2112;
      v20 = localeIdentifier;
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: Error occurred while setting up CDMUAFAssetsManager with locale: %@.", buf, 0x16u);
    }

    v13 = v10;
    *error = v10;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v18 = "[CDMAssetsManager _setupUafAssetManagerForLocale:cdmAssetsInfo:error:]";
      _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s CDMUAFAssetsManager setup successfully.", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldReSetupForLocale:(id)locale cdmAssetsInfo:(id)info
{
  v65 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  infoCopy = info;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v56 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Checking if asset manager needs to be resetup.", buf, 0xCu);
  }

  obj = +[CDMUAFAssetsManager getNLUAFClientManagers];
  objc_sync_enter(obj);
  v39 = +[CDMUAFAssetsManager getNLUAFClientManagers];
  getGraphName = [infoCopy getGraphName];
  v41 = [v39 objectForKey:getGraphName];

  v54 = 0;
  v42 = [CDMUAFAssetsManager getAssetSetNameToUafClientManager:v41 withError:&v54];
  v36 = v54;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  getAllAssetSets = [infoCopy getAllAssetSets];
  v8 = [getAllAssetSets countByEnumeratingWithState:&v50 objects:v64 count:16];
  if (v8)
  {
    v38 = *v51;
    *&v9 = 136315394;
    v34 = v9;
    v37 = getAllAssetSets;
    while (2)
    {
      v35 = v8;
      for (i = 0; i != v35; ++i)
      {
        if (*v51 != v38)
        {
          objc_enumerationMutation(v37);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        v44 = +[CDMAssetsUtils cdmAssetSetToStr:](CDMAssetsUtils, "cdmAssetSetToStr:", [v11 integerValue]);
        v12 = [v42 objectForKey:?];
        v13 = v12;
        if (!v12)
        {
          v13 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = v34;
            v56 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
            v57 = 2112;
            v58 = v44;
            _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s UAFClientManager not found for asset set: %@. Return Yes", buf, 0x16u);
          }

LABEL_36:

          v28 = 1;
          v27 = v37;
          goto LABEL_37;
        }

        getLocale = [v12 getLocale];
        v15 = [getLocale isEqualToString:localeCopy];

        if (v15)
        {
          v16 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = v34;
            v56 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
            v57 = 2112;
            v58 = v44;
            _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Incoming locale is an exact match. No need to resetup for %@", buf, 0x16u);
          }
        }

        else
        {
          v16 = [infoCopy getCDMAssetsUsagesForCDMAssetSet:{objc_msgSend(v11, "integerValue")}];
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          getRawUsages = [v16 getRawUsages];
          v18 = [getRawUsages countByEnumeratingWithState:&v46 objects:v63 count:16];
          if (v18)
          {
            v19 = *v47;
            while (2)
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v47 != v19)
                {
                  objc_enumerationMutation(getRawUsages);
                }

                v21 = *(*(&v46 + 1) + 8 * j);
                v22 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v34;
                  v56 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
                  v57 = 2112;
                  v58 = v44;
                  _os_log_debug_impl(&dword_1DC287000, v22, OS_LOG_TYPE_DEBUG, "%s Checking if %@ uses language code", buf, 0x16u);
                }

                if (!+[CDMAssetsUsages usesLanguageCode:](CDMAssetsUsages, "usesLanguageCode:", [v21 integerValue]))
                {
                  v29 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                  {
                    getLocale2 = [v13 getLocale];
                    *buf = 136315906;
                    v56 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
                    v57 = 2112;
                    v58 = getLocale2;
                    v59 = 2112;
                    v60 = localeCopy;
                    v61 = 2112;
                    v62 = v44;
                    _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, "%s UAFClientManager's existing locale is: %@ but the new locale is: %@ for asset set: %@. Return Yes", buf, 0x2Au);
                  }

                  goto LABEL_35;
                }

                v23 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v34;
                  v56 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
                  v57 = 2112;
                  v58 = v44;
                  _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s Need to check language code for %@", buf, 0x16u);
                }

                getLocale3 = [v13 getLocale];
                v25 = [CDMAssetsUtils extractAssetKeyFromLocale:localeCopy];
                v26 = [getLocale3 isEqualToString:v25];

                if ((v26 & 1) == 0)
                {
                  v29 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                  {
                    getLocale4 = [v13 getLocale];
                    *buf = 136315906;
                    v56 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
                    v57 = 2112;
                    v58 = getLocale4;
                    v59 = 2112;
                    v60 = localeCopy;
                    v61 = 2112;
                    v62 = v44;
                    _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, "%s UAFClientManager's existing locale is: %@ but the new locale is: %@ for asset set: %@ (which uses only language code). Return Yes", buf, 0x2Au);
                  }

LABEL_35:

                  goto LABEL_36;
                }
              }

              v18 = [getRawUsages countByEnumeratingWithState:&v46 objects:v63 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      getAllAssetSets = v37;
      v8 = [v37 countByEnumeratingWithState:&v50 objects:v64 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v27 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v56 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
    v57 = 2112;
    v58 = v41;
    _os_log_debug_impl(&dword_1DC287000, v27, OS_LOG_TYPE_DEBUG, "%s Found UAFClientManagers: %@. No need to resetup", buf, 0x16u);
  }

  v28 = 0;
LABEL_37:

  objc_sync_exit(obj);
  v31 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)setupForLocale:(id)locale cdmAssetsInfo:(id)info error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  infoCopy = info;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    localeIdentifier = [localeCopy localeIdentifier];
    getGraphName = [infoCopy getGraphName];
    v25 = 136315650;
    v26 = "[CDMAssetsManager setupForLocale:cdmAssetsInfo:error:]";
    v27 = 2112;
    v28 = localeIdentifier;
    v29 = 2112;
    v30 = getGraphName;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Setup CDMAssetsManager for locale: %@ and graph: %@", &v25, 0x20u);
  }

  v11 = os_signpost_id_generate(CDMLogContext);
  v12 = CDMLogContext;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v25) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CDMAssetsManager", "CDMAssetsManager setup", &v25, 2u);
  }

  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v25 = 136315138;
    v26 = "[CDMAssetsManager setupForLocale:cdmAssetsInfo:error:]";
    _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Starting setup of CDMUAFAssetsManager.", &v25, 0xCu);
  }

  v15 = os_signpost_id_generate(CDMLogContext);
  v16 = CDMLogContext;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(v25) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "CDMAssetsManager", "UAFAssetsManager setup", &v25, 2u);
  }

  [(CDMAssetsManager *)self _setupUafAssetManagerForLocale:localeCopy cdmAssetsInfo:infoCopy error:error];
  v18 = CDMLogContext;
  v19 = v18;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(v25) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v19, OS_SIGNPOST_INTERVAL_END, v15, "CDMAssetsManager", " enableTelemetry=YES ", &v25, 2u);
  }

  v20 = CDMLogContext;
  v21 = v20;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    LOWORD(v25) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v21, OS_SIGNPOST_INTERVAL_END, v11, "CDMAssetsManager", " enableTelemetry=YES ", &v25, 2u);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)initManager
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CDMAssetsManager;
  v2 = [(CDMAssetsManager *)&v14 init];
  if (v2)
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[CDMAssetsManager initManager]";
      _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s Initialize CDMAssetsManager", buf, 0xCu);
    }

    initManager = [[CDMDefaultAssetsManager alloc] initManager];
    cdmDefaultAssetsManager = v2->_cdmDefaultAssetsManager;
    v2->_cdmDefaultAssetsManager = initManager;

    initManager2 = [[CDMUAFAssetsManager alloc] initManager];
    cdmUAFAssetsManager = v2->_cdmUAFAssetsManager;
    v2->_cdmUAFAssetsManager = initManager2;

    v8 = objc_alloc_init(MEMORY[0x1E696AC08]);
    fileManager = v2->_fileManager;
    v2->_fileManager = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    getProcessedAssetsCache = v2->_getProcessedAssetsCache;
    v2->_getProcessedAssetsCache = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)getAssetSetsInCacheForGraphName:(id)name
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = +[CDMUAFAssetsManager getNLUAFClientManagers];
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v26 = "+[CDMAssetsManager getAssetSetsInCacheForGraphName:]";
    v27 = 2112;
    v28 = v5;
    _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s All UAFClientManagers: %@", buf, 0x16u);
  }

  v7 = [v5 objectForKey:nameCopy];
  v8 = v7;
  if (v7)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          assetSet = [v14 assetSet];

          if (!assetSet)
          {

            goto LABEL_14;
          }

          assetSet2 = [v14 assetSet];
          [v4 addObject:assetSet2];
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v4;
  }

  else
  {
LABEL_14:
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)getHashKeyForAssetSets:(id)sets
{
  v18 = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = setsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@%@", v10, *(*(&v13 + 1) + 8 * v9), v13];

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)getHashKeyForCDMAssetsInfo:(id)info
{
  v3 = MEMORY[0x1E696AD60];
  infoCopy = info;
  v5 = objc_alloc_init(v3);
  v6 = MEMORY[0x1E696AD60];
  getGraphName = [infoCopy getGraphName];

  v8 = [v6 stringWithFormat:@"%@%@", v5, getGraphName];

  return v8;
}

+ (id)getFactorToUnprocessedNLAsset:(id)asset cdmAssetsInfo:(id)info locale:(id)locale
{
  v20 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  infoCopy = info;
  assetCopy = asset;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315138;
    v17 = "+[CDMAssetsManager getFactorToUnprocessedNLAsset:cdmAssetsInfo:locale:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Using UAF to get unprocessed NLAssets.", &v16, 0xCu);
  }

  allKeys = [assetCopy allKeys];

  v12 = [CDMUAFAssetsManager getUAFAssetsForFactors:allKeys withCDMAssetsInfo:infoCopy locale:localeCopy];

  v13 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315394;
    v17 = "+[CDMAssetsManager getFactorToUnprocessedNLAsset:cdmAssetsInfo:locale:]";
    v18 = 2112;
    v19 = v12;
    _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s factorToUnprocessedNLAsset: %@.", &v16, 0x16u);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)getFactorNamesForService:(id)service
{
  getCDMServiceAssetConfig = [NSClassFromString(service) getCDMServiceAssetConfig];
  getCDMAssetSetToFactorsConfig = [getCDMServiceAssetConfig getCDMAssetSetToFactorsConfig];

  getAllFactors = [getCDMAssetSetToFactorsConfig getAllFactors];

  return getAllFactors;
}

void __48__CDMAssetsManager_getSingletonCDMAssetsManager__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "+[CDMAssetsManager getSingletonCDMAssetsManager]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v0, OS_LOG_TYPE_DEBUG, "%s Singleton CDMAssetsManager has not been initialized yet. Initializing...", &v4, 0xCu);
  }

  v1 = [[CDMAssetsManager alloc] initManager];
  v2 = getSingletonCDMAssetsManager_singletonCdmAssetsManager;
  getSingletonCDMAssetsManager_singletonCdmAssetsManager = v1;

  v3 = *MEMORY[0x1E69E9840];
}

@end