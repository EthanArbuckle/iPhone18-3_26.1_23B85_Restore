@interface CDMUAFAssetsManager
+ (BOOL)validateFactors:(id)a3 inAssetSet:(id)a4 forLocale:(id)a5 withAssetSetName:(id)a6;
+ (id)filterFactors:(id)a3 forAssetSetNameToFactors:(id)a4;
+ (id)getAssetSetNameToFactors:(id)a3 withError:(id *)a4;
+ (id)getAssetSetNameToUafClientManager:(id)a3 withError:(id *)a4;
+ (id)getFactorToAssetSetName:(id)a3 uafClientManagers:(id)a4 withError:(id *)a5;
+ (id)getNLAssetFromUAFAsset:(id)a3 withFactor:(id)a4 withAssetSetName:(id)a5 withAssetSet:(id)a6;
+ (id)getNLAssetFromUAFAssetPostValidation:(id)a3 asset:(id)a4 locale:(id)a5 assetSetName:(id)a6 assetSet:(id)a7;
+ (id)getNLUAFClientManagers;
+ (id)getUAFAssetsForFactors:(id)a3 withCDMAssetsInfo:(id)a4 locale:(id)a5;
+ (id)getUAFClientManagersForLocale:(id)a3 withCDMAssetsInfo:(id)a4;
+ (void)initUAFClientManagers:(id)a3 locale:(id)a4 error:(id *)a5;
+ (void)reInitCDMUAFAssetsCache;
+ (void)setAssetsAvailabilityForFactors:(id)a3 withAssetSet:(id)a4 forAssetSetName:(id)a5 withDelegateHandler:(id)a6 withLocale:(id)a7 withFactorAndFolders:(id)a8 useFileManager:(id)a9 withAssetAvailabilityType:(int64_t)a10;
+ (void)subscribeToAssetsForAssetSet:(int64_t)a3 withCDMAssetsUsages:(id)a4;
+ (void)subscribeToSsuAssetsForLocale:(id)a3;
- (BOOL)registerForCDMAssetsInfo:(id)a3 withLocale:(id)a4 withAssetsDelegate:(id)a5 useFileManager:(id)a6 withSelfContextId:(id)a7 withSelfMetadata:(id)a8 withDataDispatcherContext:(id)a9 withAssetAvailabilityType:(int64_t)a10 withError:(id *)a11;
- (id)initManager;
- (void)registerForFactors:(id)a3 inAssetSetName:(id)a4 withAssetsDelegate:(id)a5 withLocale:(id)a6 withFactorAndFolders:(id)a7 useFileManager:(id)a8 withAssetAvailabilityType:(int64_t)a9;
- (void)setupForLocale:(id)a3 cdmAssetsInfo:(id)a4 error:(id *)a5;
@end

@implementation CDMUAFAssetsManager

+ (id)getNLUAFClientManagers
{
  if (getNLUAFClientManagers_once != -1)
  {
    dispatch_once(&getNLUAFClientManagers_once, &__block_literal_global_8129);
  }

  v3 = getNLUAFClientManagers_nlUAFClientManagers;

  return v3;
}

- (BOOL)registerForCDMAssetsInfo:(id)a3 withLocale:(id)a4 withAssetsDelegate:(id)a5 useFileManager:(id)a6 withSelfContextId:(id)a7 withSelfMetadata:(id)a8 withDataDispatcherContext:(id)a9 withAssetAvailabilityType:(int64_t)a10 withError:(id *)a11
{
  v96 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v67 = a4;
  v59 = a5;
  v65 = a6;
  v58 = a7;
  v57 = a8;
  v56 = a9;
  v17 = objc_alloc(MEMORY[0x1E695DF70]);
  v18 = [v16 getAllAssetSets];
  v19 = [v17 initWithCapacity:{objc_msgSend(v18, "count")}];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v66 = v16;
  v20 = [v16 getAllAssetSets];
  v21 = [v20 countByEnumeratingWithState:&v77 objects:v95 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v78;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v78 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = +[CDMAssetsUtils cdmAssetSetToStr:](CDMAssetsUtils, "cdmAssetSetToStr:", [*(*(&v77 + 1) + 8 * i) integerValue]);
        [v19 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v77 objects:v95 count:16];
    }

    while (v22);
  }

  if (v19 && [v19 count])
  {
    v63 = [[CDMAssetsDelegateHandler alloc] initWithAssetsDelegate:v59 forAssetSets:v19 withAssetAvailabilityType:a10];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = [v16 getAllAssetSets];
    v62 = [obj countByEnumeratingWithState:&v73 objects:v94 count:16];
    if (v62)
    {
      v61 = *v74;
      while (2)
      {
        v26 = 0;
        do
        {
          if (*v74 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v68 = v26;
          v27 = *(*(&v73 + 1) + 8 * v26);
          v28 = [v66 getCDMAssetsFactorConfigCDMAssetSet:{objc_msgSend(v27, "integerValue")}];
          v29 = objc_alloc(MEMORY[0x1E695DF70]);
          v30 = [v28 getAllFactors];
          v31 = [v29 initWithCapacity:{objc_msgSend(v30, "count")}];

          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v32 = [v28 getAllFactors];
          v33 = [v32 countByEnumeratingWithState:&v69 objects:v93 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v70;
            do
            {
              for (j = 0; j != v34; ++j)
              {
                if (*v70 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v69 + 1) + 8 * j);
                if ([v28 isFactorRequired:v37])
                {
                  [v31 addObject:v37];
                }

                else
                {
                  v38 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315650;
                    v82 = "[CDMUAFAssetsManager registerForCDMAssetsInfo:withLocale:withAssetsDelegate:useFileManager:withSelfContextId:withSelfMetadata:withDataDispatcherContext:withAssetAvailabilityType:withError:]";
                    v83 = 2112;
                    v84 = v37;
                    v85 = 2112;
                    v86 = v27;
                    _os_log_debug_impl(&dword_1DC287000, v38, OS_LOG_TYPE_DEBUG, "%s Factor %@ is not required for assetSet: %@", buf, 0x20u);
                  }
                }
              }

              v34 = [v32 countByEnumeratingWithState:&v69 objects:v93 count:16];
            }

            while (v34);
          }

          if (![v31 count])
          {
            v47 = MEMORY[0x1E696ABC0];
            v91[0] = *MEMORY[0x1E696A578];
            v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Required Factor names is empty for assetSetName: %@ for locale: %@", v27, v67];
            v92[0] = v48;
            v91[1] = *MEMORY[0x1E696A588];
            v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Required Factor names is empty for assetSetName: %@ for locale: %@", v27, v67];
            v50 = *MEMORY[0x1E696A598];
            v92[1] = v49;
            v92[2] = @"Required Factor names is empty";
            v91[2] = v50;
            v91[3] = @"CDMAssetSetupErrorDomain";
            v51 = [MEMORY[0x1E696AD98] numberWithInt:3];
            v92[3] = v51;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:4];
            *a11 = [v47 errorWithDomain:@"CDMUAFRegistrationErrorDomain" code:0 userInfo:v52];

            v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Required Factor names is empty for assetSetName: %@ for locale: %@", v27, v67];
            v45 = v57;
            v44 = v58;
            v46 = v56;
            [CDMSELFLogUtil cdmAssetSetupFailed:v57 contextId:v58 errorDomain:8 errorCode:0 logMessage:v53 dataDispatcherContext:v56];

            v43 = 0;
            goto LABEL_35;
          }

          v39 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v42 = [v28 getFactorToFoldersMapping];
            *buf = 136316162;
            v82 = "[CDMUAFAssetsManager registerForCDMAssetsInfo:withLocale:withAssetsDelegate:useFileManager:withSelfContextId:withSelfMetadata:withDataDispatcherContext:withAssetAvailabilityType:withError:]";
            v83 = 2112;
            v84 = v31;
            v85 = 2112;
            v86 = v27;
            v87 = 2112;
            v88 = v67;
            v89 = 2112;
            v90 = v42;
            _os_log_debug_impl(&dword_1DC287000, v39, OS_LOG_TYPE_DEBUG, "%s Register required factors: %@ in assetSetName: %@ with assets delegate for %@ with factorAndFolders %@.", buf, 0x34u);
          }

          v40 = +[CDMAssetsUtils cdmAssetSetToStr:](CDMAssetsUtils, "cdmAssetSetToStr:", [v27 integerValue]);
          v41 = [v28 getFactorToFoldersMapping];
          [(CDMUAFAssetsManager *)self registerForFactors:v31 inAssetSetName:v40 withAssetsDelegate:v63 withLocale:v67 withFactorAndFolders:v41 useFileManager:v65 withAssetAvailabilityType:a10];

          v26 = v68 + 1;
        }

        while (v68 + 1 != v62);
        v62 = [obj countByEnumeratingWithState:&v73 objects:v94 count:16];
        if (v62)
        {
          continue;
        }

        break;
      }
    }

    v43 = 1;
    v45 = v57;
    v44 = v58;
    v46 = v56;
LABEL_35:
  }

  else
  {
    v45 = v57;
    v44 = v58;
    v46 = v56;
    [CDMSELFLogUtil cdmAssetSetupFailed:v57 contextId:v58 errorDomain:8 errorCode:0 logMessage:@"cdmAssetSetStrings is empty." dataDispatcherContext:v56];
    v43 = 0;
  }

  v54 = *MEMORY[0x1E69E9840];
  return v43;
}

- (void)registerForFactors:(id)a3 inAssetSetName:(id)a4 withAssetsDelegate:(id)a5 withLocale:(id)a6 withFactorAndFolders:(id)a7 useFileManager:(id)a8 withAssetAvailabilityType:(int64_t)a9
{
  v62 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "[CDMUAFAssetsManager registerForFactors:inAssetSetName:withAssetsDelegate:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]";
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v60 = v15;
    LOWORD(v61) = 2112;
    *(&v61 + 2) = v18;
    _os_log_debug_impl(&dword_1DC287000, v20, OS_LOG_TYPE_DEBUG, "%s Register factors: %@ in assetSetName: %@ with assets delegate with factorAndFolders :%@.", buf, 0x2Au);
  }

  v42 = +[CDMUAFAssetsManager getNLUAFClientManagers];
  v21 = [CDMAssetsUtils getGraphNameForAssetAvailabilityType:a9];
  v41 = [v42 objectForKey:v21];

  v52 = 0;
  v40 = [CDMUAFAssetsManager getAssetSetNameToUafClientManager:v41 withError:&v52];
  v38 = v52;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v60 = __Block_byref_object_copy__7976;
  *&v61 = __Block_byref_object_dispose__7977;
  *(&v61 + 1) = [v40 objectForKeyedSubscript:v15];
  v22 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v37 = [*(*&buf[8] + 40) assetSet];
    *v53 = 136315650;
    v54 = "[CDMUAFAssetsManager registerForFactors:inAssetSetName:withAssetsDelegate:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]";
    v55 = 2112;
    v56 = v15;
    v57 = 2112;
    v58 = v37;
    _os_log_debug_impl(&dword_1DC287000, v22, OS_LOG_TYPE_DEBUG, "%s Retrieved assetSet outside update block for assetSetName: %@ with assetSet: %@", v53, 0x20u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __149__CDMUAFAssetsManager_registerForFactors_inAssetSetName_withAssetsDelegate_withLocale_withFactorAndFolders_useFileManager_withAssetAvailabilityType___block_invoke;
  aBlock[3] = &unk_1E862F788;
  v50 = buf;
  v23 = v15;
  v44 = v23;
  v24 = v14;
  v45 = v24;
  v25 = v17;
  v46 = v25;
  v26 = v16;
  v47 = v26;
  v27 = v18;
  v48 = v27;
  v28 = v19;
  v49 = v28;
  v51 = a9;
  v29 = _Block_copy(aBlock);
  v30 = [MEMORY[0x1E69DEEF0] sharedManager];
  v31 = [v30 observeAssetSet:v23 queue:0 handler:v29];

  if (v31)
  {
    v32 = [(NSMutableDictionary *)self->_assetSetNameToObserver objectForKey:v23];
    if (v32)
    {
      v33 = [MEMORY[0x1E69DEEF0] sharedManager];
      [v33 removeObserver:v32];

      v34 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *v53 = 136315394;
        v54 = "[CDMUAFAssetsManager registerForFactors:inAssetSetName:withAssetsDelegate:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]";
        v55 = 2112;
        v56 = v23;
        _os_log_debug_impl(&dword_1DC287000, v34, OS_LOG_TYPE_DEBUG, "%s Observer removed for assetSetName: %@", v53, 0x16u);
      }
    }

    [(NSMutableDictionary *)self->_assetSetNameToObserver setObject:v31 forKey:v23];
    v35 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *v53 = 136315394;
      v54 = "[CDMUAFAssetsManager registerForFactors:inAssetSetName:withAssetsDelegate:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]";
      v55 = 2112;
      v56 = v23;
      _os_log_debug_impl(&dword_1DC287000, v35, OS_LOG_TYPE_DEBUG, "%s Observer added for assetSetName: %@", v53, 0x16u);
    }
  }

  v29[2](v29);

  _Block_object_dispose(buf, 8);
  v36 = *MEMORY[0x1E69E9840];
}

void __149__CDMUAFAssetsManager_registerForFactors_inAssetSetName_withAssetsDelegate_withLocale_withFactorAndFolders_useFileManager_withAssetAvailabilityType___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 80) + 8) + 40);
  if (!v2)
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v61 = "[CDMUAFAssetsManager registerForFactors:inAssetSetName:withAssetsDelegate:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]_block_invoke";
      _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s [WARN]: uafClientManager is nil", buf, 0xCu);
    }

    v2 = *(*(*(a1 + 80) + 8) + 40);
  }

  obj = v2;
  objc_sync_enter(obj);
  v4 = [*(*(*(a1 + 80) + 8) + 40) assetSet];
  v5 = v4 == 0;

  if (v5)
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v61 = "[CDMUAFAssetsManager registerForFactors:inAssetSetName:withAssetsDelegate:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]_block_invoke";
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s [WARN]: uafClientManager.assetSet is nil", buf, 0xCu);
    }
  }

  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v51 = [*(*(*(a1 + 80) + 8) + 40) assetSetName];
    v52 = [*(*(*(a1 + 80) + 8) + 40) assetSet];
    v53 = [*(*(*(a1 + 80) + 8) + 40) usages];
    *buf = 136315906;
    v61 = "[CDMUAFAssetsManager registerForFactors:inAssetSetName:withAssetsDelegate:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]_block_invoke";
    v62 = 2112;
    v63 = v51;
    v64 = 2112;
    v65 = v52;
    v66 = 2112;
    v67 = v53;
    _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s AssetSet being observed for assetSetName %@ is %@, usages: %@", buf, 0x2Au);
  }

  v8 = os_signpost_id_generate(CDMLogContext);
  v9 = CDMLogContext;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = *(a1 + 32);
    *buf = 138412290;
    v61 = v11;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CDMUAFAssetsManager", "assetSet refresh %@", buf, 0xCu);
  }

  spid = v8;

  v12 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v54 = [*(*(*(a1 + 80) + 8) + 40) assetSetName];
    v55 = [*(*(*(a1 + 80) + 8) + 40) usages];
    *buf = 136315650;
    v61 = "[CDMUAFAssetsManager registerForFactors:inAssetSetName:withAssetsDelegate:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]_block_invoke";
    v62 = 2112;
    v63 = v54;
    v64 = 2112;
    v65 = v55;
    _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s Initing new assetSet for validation with assetSetName %@, usages: %@", buf, 0x20u);
  }

  v13 = [MEMORY[0x1E69DEEF0] sharedManager];
  v14 = [*(*(*(a1 + 80) + 8) + 40) assetSetName];
  v15 = [*(*(*(a1 + 80) + 8) + 40) usages];
  v16 = [v13 retrieveAssetSet:v14 usages:v15];

  v17 = objc_alloc_init(MEMORY[0x1E695DF20]);
  v18 = [*(*(*(a1 + 80) + 8) + 40) assetSet];
  LOBYTE(v14) = v18 == 0;

  if ((v14 & 1) == 0)
  {
    v19 = os_signpost_id_generate(CDMLogContext);
    v20 = CDMLogContext;
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "CDMUAFAssetsManager", "assets in registerForFactors (current)", buf, 2u);
    }

    v22 = [*(*(*(a1 + 80) + 8) + 40) assetSet];
    v23 = [v22 assets];

    v24 = CDMLogContext;
    v25 = v24;
    if (v19 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v25, OS_SIGNPOST_INTERVAL_END, v19, "CDMUAFAssetsManager", " enableTelemetry=YES ", buf, 2u);
    }

    v17 = v23;
  }

  v26 = objc_alloc_init(MEMORY[0x1E695DF20]);
  if (v16)
  {
    v27 = os_signpost_id_generate(CDMLogContext);
    v28 = CDMLogContext;
    v29 = v28;
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "CDMUAFAssetsManager", "assets in registerForFactors (refreshed)", buf, 2u);
    }

    v30 = [v16 assets];

    v31 = CDMLogContext;
    v32 = v31;
    if (v27 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v32, OS_SIGNPOST_INTERVAL_END, v27, "CDMUAFAssetsManager", " enableTelemetry=YES ", buf, 2u);
    }

    v26 = v30;
  }

  v33 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v61 = "[CDMUAFAssetsManager registerForFactors:inAssetSetName:withAssetsDelegate:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v33, OS_LOG_TYPE_DEBUG, "%s Validating factors", buf, 0xCu);
  }

  v34 = v8 - 1;
  v36 = *(a1 + 40);
  v35 = *(a1 + 48);
  v37 = [*(*(*(a1 + 80) + 8) + 40) assetSetName];
  v38 = [CDMUAFAssetsManager validateFactors:v36 inAssetSet:v16 forLocale:v35 withAssetSetName:v37];

  v39 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v61 = "[CDMUAFAssetsManager registerForFactors:inAssetSetName:withAssetsDelegate:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]_block_invoke";
    v62 = 2048;
    v63 = v38;
    v64 = 2048;
    v65 = 1;
    _os_log_debug_impl(&dword_1DC287000, v39, OS_LOG_TYPE_DEBUG, "%s newAssetSetValid: %ld; forceUpdateAssetSetInCache %ld", buf, 0x20u);
  }

  v40 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    v56 = [*(*(*(a1 + 80) + 8) + 40) assetSetName];
    *buf = 136315906;
    v61 = "[CDMUAFAssetsManager registerForFactors:inAssetSetName:withAssetsDelegate:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]_block_invoke";
    v62 = 2112;
    v63 = v56;
    v64 = 2112;
    v65 = v17;
    v66 = 2112;
    v67 = v26;
    _os_log_debug_impl(&dword_1DC287000, v40, OS_LOG_TYPE_DEBUG, "%s Refreshed assetSet for %@ is valid OR the platform is IOS or OSX. Replacing cached assetSet %@ with %@", buf, 0x2Au);
  }

  [*(*(*(a1 + 80) + 8) + 40) setAssetSet:v16];
  v41 = v26;

  v42 = CDMLogContext;
  v43 = v42;
  if (v34 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v42))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v43, OS_SIGNPOST_INTERVAL_END, spid, "CDMUAFAssetsManager", " enableTelemetry=YES ", buf, 2u);
  }

  v44 = [*(*(*(a1 + 80) + 8) + 40) assetSet];
  if (!v44 || (v45 = [v41 count] == 0, v44, v45))
  {
    v49 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v57 = *(a1 + 32);
      *buf = 136315394;
      v61 = "[CDMUAFAssetsManager registerForFactors:inAssetSetName:withAssetsDelegate:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]_block_invoke";
      v62 = 2112;
      v63 = v57;
      _os_log_debug_impl(&dword_1DC287000, v49, OS_LOG_TYPE_DEBUG, "%s AssetSet being observed for assetSetName %@ is empty!", buf, 0x16u);
    }

    [*(a1 + 56) assetsUnavailableForAssetSet:*(a1 + 32)];
  }

  else
  {
    v46 = *(a1 + 40);
    v47 = [*(*(*(a1 + 80) + 8) + 40) assetSet];
    v48 = *(a1 + 72);
    [CDMUAFAssetsManager setAssetsAvailabilityForFactors:v46 withAssetSet:v47 forAssetSetName:*(a1 + 32) withDelegateHandler:*(a1 + 56) withLocale:*(a1 + 48) withFactorAndFolders:*(a1 + 64) useFileManager:v48 withAssetAvailabilityType:*(a1 + 88)];
  }

  objc_sync_exit(obj);
  v50 = *MEMORY[0x1E69E9840];
}

- (void)setupForLocale:(id)a3 cdmAssetsInfo:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315138;
    v19 = "[CDMUAFAssetsManager setupForLocale:cdmAssetsInfo:error:]";
    _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Setup CDMUAFAssetsManager.", &v18, 0xCu);
  }

  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v7 localeIdentifier];
    v17 = [v8 getGraphName];
    v18 = 136315650;
    v19 = "[CDMUAFAssetsManager setupForLocale:cdmAssetsInfo:error:]";
    v20 = 2112;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Setting up assets for locale: %@ and graph: %@.", &v18, 0x20u);
  }

  +[CDMLogging CDMLogInitIfNeeded];
  v11 = +[CDMUAFAssetsManager getNLUAFClientManagers];
  objc_sync_enter(v11);
  v12 = [v7 localeIdentifier];
  v13 = [CDMUAFAssetsManager getUAFClientManagersForLocale:v12 withCDMAssetsInfo:v8];

  v14 = [v7 localeIdentifier];
  [CDMUAFAssetsManager initUAFClientManagers:v13 locale:v14 error:a5];

  objc_sync_exit(v11);
  v15 = *MEMORY[0x1E69E9840];
}

- (id)initManager
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CDMUAFAssetsManager;
  v2 = [(CDMUAFAssetsManager *)&v8 init];
  if (v2)
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[CDMUAFAssetsManager initManager]";
      _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Initialize CDMUAFAssetsManager", buf, 0xCu);
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetSetNameToObserver = v2->_assetSetNameToObserver;
    v2->_assetSetNameToObserver = v4;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (void)subscribeToAssetsForAssetSet:(int64_t)a3 withCDMAssetsUsages:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 getUsages];
  v7 = [CDMAssetsUsages cdmAssetsUsageKeyToString:0];
  v8 = [v6 objectForKey:v7];

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"inference.%@", v8];
  v10 = [CDMAssetsUtils cdmAssetSetToStr:a3];
  v14 = v10;
  v11 = [v5 getUsages];

  v15[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:2592000.0];
  v13 = *MEMORY[0x1E69E9840];
}

+ (void)subscribeToSsuAssetsForLocale:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"inference.%@", v3];
  v5 = [CDMAssetsUtils cdmAssetSetToStr:0];
  v22 = v5;
  v6 = [CDMAssetsUtils getSsuUsages:v3];
  v7 = [v6 getUsages];
  v23[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:2592000.0];
  v10 = [objc_alloc(MEMORY[0x1E69DEEF8]) initWithName:v4 assetSets:v8 usageAliases:0 expires:v9];
  if (v10)
  {
    v11 = [MEMORY[0x1E69DEEF0] sharedManager];
    v17 = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__CDMUAFAssetsManager_subscribeToSsuAssetsForLocale___block_invoke;
    v15[3] = &unk_1E862F7B0;
    v16 = v3;
    [v11 subscribe:@"com.apple.siri.ssu" subscriptions:v12 queue:0 completion:v15];

    v13 = v16;
  }

  else
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "+[CDMUAFAssetsManager subscribeToSsuAssetsForLocale:]";
      v20 = 2112;
      v21 = v3;
      _os_log_error_impl(&dword_1DC287000, v13, OS_LOG_TYPE_ERROR, "%s [ERR]: Unable to initialize UAFAssetSetSubscription subscription; aborting SSU asset subscription for locale %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __53__CDMUAFAssetsManager_subscribeToSsuAssetsForLocale___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 136315650;
      v8 = "+[CDMUAFAssetsManager subscribeToSsuAssetsForLocale:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_1DC287000, v4, OS_LOG_TYPE_ERROR, "%s [ERR]: Creating subscription to SSU inference assets for locale %@ failed: %@", &v7, 0x20u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (BOOL)validateFactors:(id)a3 inAssetSet:(id)a4 forLocale:(id)a5 withAssetSetName:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v29;
    *&v14 = 136315650;
    v26 = v14;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [v10 assetNamed:{v18, v26}];
        v20 = [CDMUAFAssetsManager getNLAssetFromUAFAssetPostValidation:v18 asset:v19 locale:v11 assetSetName:v12 assetSet:v10];
        v21 = CDMOSLoggerForCategory(0);
        v22 = v21;
        if (!v20)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = v26;
            v33 = "+[CDMUAFAssetsManager validateFactors:inAssetSet:forLocale:withAssetSetName:]";
            v34 = 2112;
            v35 = v18;
            v36 = 2112;
            v37 = v11;
            _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s [WARN]: UAF asset for factorName: %@ is nil for locale: %@.", buf, 0x20u);
          }

          v23 = 0;
          goto LABEL_15;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = v26;
          v33 = "+[CDMUAFAssetsManager validateFactors:inAssetSet:forLocale:withAssetSetName:]";
          v34 = 2112;
          v35 = v19;
          v36 = 2112;
          v37 = v18;
          _os_log_debug_impl(&dword_1DC287000, v22, OS_LOG_TYPE_DEBUG, "%s UAF asset is: [%@] for factorName: %@.", buf, 0x20u);
        }
      }

      v15 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v23 = 1;
LABEL_15:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (void)setAssetsAvailabilityForFactors:(id)a3 withAssetSet:(id)a4 forAssetSetName:(id)a5 withDelegateHandler:(id)a6 withLocale:(id)a7 withFactorAndFolders:(id)a8 useFileManager:(id)a9 withAssetAvailabilityType:(int64_t)a10
{
  v58 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v42 = a5;
  v37 = a6;
  v17 = a7;
  v41 = a8;
  v40 = a9;
  v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = *v44;
    *&v20 = 136315394;
    v36 = v20;
    obj = v18;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v43 + 1) + 8 * i);
        v25 = [v16 assetNamed:{v24, v36}];
        v26 = [CDMUAFAssetsManager getNLAssetFromUAFAssetPostValidation:v24 asset:v25 locale:v17 assetSetName:v42 assetSet:v16];
        v27 = [v41 objectForKey:v24];
        v28 = [CDMAssetsUtils isNLAssetValid:v26 forLocale:v17 withFolders:v27 useFileManager:v40 withAssetAvailabilityType:a10];

        if (!v28)
        {
          v34 = CDMOSLoggerForCategory(0);
          v32 = v42;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v48 = "+[CDMUAFAssetsManager setAssetsAvailabilityForFactors:withAssetSet:forAssetSetName:withDelegateHandler:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]";
            v49 = 2112;
            v50 = v26;
            v51 = 2112;
            v52 = v17;
            v53 = 2112;
            v54 = v42;
            _os_log_error_impl(&dword_1DC287000, v34, OS_LOG_TYPE_ERROR, "%s [ERR]: UAF asset: [%@] is invalid for locale: %@. Call assets delegate handler's assetsUnavailable for assetSetName: %@.", buf, 0x2Au);
          }

          v33 = v37;
          [v37 assetsUnavailableForAssetSet:v42];

          v18 = obj;
          goto LABEL_18;
        }

        [v39 addObject:v26];
        v29 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = v36;
          v48 = "+[CDMUAFAssetsManager setAssetsAvailabilityForFactors:withAssetSet:forAssetSetName:withDelegateHandler:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]";
          v49 = 2112;
          v50 = v26;
          _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, "%s UAF asset: [%@] has a valid asset path.", buf, 0x16u);
        }
      }

      v18 = obj;
      v21 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v30 = CDMOSLoggerForCategory(0);
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
  if (v17)
  {
    v32 = v42;
    if (v31)
    {
      *buf = 136316162;
      v48 = "+[CDMUAFAssetsManager setAssetsAvailabilityForFactors:withAssetSet:forAssetSetName:withDelegateHandler:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]";
      v49 = 2112;
      v50 = v18;
      v51 = 2112;
      v52 = v42;
      v53 = 2112;
      v54 = v39;
      v55 = 2112;
      v56 = v42;
      _os_log_debug_impl(&dword_1DC287000, v30, OS_LOG_TYPE_DEBUG, "%s All factors: %@ in assetSetName: %@ found with valid UAF assets: %@. Call assets delegate handler's assetsAvailable for assetSetName: %@.", buf, 0x34u);
    }

    v33 = v37;
    [v37 assetsAvailableForAssetSet:v42 forLocale:v17];
  }

  else
  {
    v32 = v42;
    if (v31)
    {
      *buf = 136315394;
      v48 = "+[CDMUAFAssetsManager setAssetsAvailabilityForFactors:withAssetSet:forAssetSetName:withDelegateHandler:withLocale:withFactorAndFolders:useFileManager:withAssetAvailabilityType:]";
      v49 = 2112;
      v50 = v42;
      _os_log_debug_impl(&dword_1DC287000, v30, OS_LOG_TYPE_DEBUG, "%s Asset available locale is nil. Call assets delegate handler's assetsUnavailable for assetSetName: %@.", buf, 0x16u);
    }

    v33 = v37;
    [v37 assetsUnavailableForAssetSet:v42];
  }

LABEL_18:

  v35 = *MEMORY[0x1E69E9840];
}

+ (id)getUAFAssetsForFactors:(id)a3 withCDMAssetsInfo:(id)a4 locale:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v30 = a4;
  v42 = a5;
  v31 = +[CDMUAFAssetsManager getNLUAFClientManagers];
  v7 = [v30 getGraphName];
  v33 = [v31 objectForKey:v7];

  v53 = 0;
  v36 = [CDMUAFAssetsManager getAssetSetNameToUafClientManager:v33 withError:&v53];
  v8 = v53;
  v52 = v8;
  v29 = [CDMUAFAssetsManager getAssetSetNameToFactors:v36 withError:&v52];
  v32 = v52;

  if (v32)
  {
    oslog = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v56 = "+[CDMUAFAssetsManager getUAFAssetsForFactors:withCDMAssetsInfo:locale:]";
      v57 = 2112;
      v58 = v32;
      _os_log_error_impl(&dword_1DC287000, oslog, OS_LOG_TYPE_ERROR, "%s [ERR]: Error generating assetSetNameToFactors: %@.", buf, 0x16u);
    }

    v40 = 0;
  }

  else
  {
    v51 = 0;
    oslog = [CDMUAFAssetsManager getFactorToAssetSetName:v29 uafClientManagers:v33 withError:&v51];
    v32 = v51;
    if (v32)
    {
      log = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v56 = "+[CDMUAFAssetsManager getUAFAssetsForFactors:withCDMAssetsInfo:locale:]";
        v57 = 2112;
        v58 = v32;
        _os_log_error_impl(&dword_1DC287000, log, OS_LOG_TYPE_ERROR, "%s [ERR]: Error generating factorToAssetSetName: %@.", buf, 0x16u);
      }

      v40 = 0;
    }

    else
    {
      v9 = [CDMUAFAssetsManager filterFactors:v28 forAssetSetNameToFactors:v29];
      v40 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v28, "count")}];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      log = v9;
      v35 = [log countByEnumeratingWithState:&v47 objects:v61 count:16];
      if (v35)
      {
        v34 = *v48;
        do
        {
          v10 = 0;
          do
          {
            if (*v48 != v34)
            {
              v11 = v10;
              objc_enumerationMutation(log);
              v10 = v11;
            }

            v38 = v10;
            v12 = *(*(&v47 + 1) + 8 * v10);
            v39 = [v36 objectForKeyedSubscript:{v12, v28}];
            if (v39)
            {
              v13 = [log objectForKey:v12];
              v14 = v39;
              objc_sync_enter(v14);
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v15 = v13;
              v16 = [v15 countByEnumeratingWithState:&v43 objects:v54 count:16];
              if (v16)
              {
                v17 = *v44;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v44 != v17)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v19 = *(*(&v43 + 1) + 8 * i);
                    v20 = [v14 assetSet];
                    v21 = [v20 assetNamed:v19];

                    v22 = [oslog objectForKey:v19];
                    v23 = [v14 assetSet];
                    v24 = [CDMUAFAssetsManager getNLAssetFromUAFAssetPostValidation:v19 asset:v21 locale:v42 assetSetName:v22 assetSet:v23];

                    if (v24)
                    {
                      [v40 setObject:v24 forKey:v19];
                    }

                    else
                    {
                      v25 = CDMOSLoggerForCategory(0);
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136315650;
                        v56 = "+[CDMUAFAssetsManager getUAFAssetsForFactors:withCDMAssetsInfo:locale:]";
                        v57 = 2112;
                        v58 = v19;
                        v59 = 2112;
                        v60 = v42;
                        _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, "%s [WARN]: UAF asset for factorName: %@ is nil for locale: %@.", buf, 0x20u);
                      }
                    }
                  }

                  v16 = [v15 countByEnumeratingWithState:&v43 objects:v54 count:16];
                }

                while (v16);
              }

              objc_sync_exit(v14);
            }

            else
            {
              v15 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v56 = "+[CDMUAFAssetsManager getUAFAssetsForFactors:withCDMAssetsInfo:locale:]";
                v57 = 2112;
                v58 = v12;
                v59 = 2112;
                v60 = v33;
                _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s [WARN]: Can't find CDMUAFClientManager for assetSet: %@. Please make sure the input assetSet exists in: %@.", buf, 0x20u);
              }
            }

            v10 = v38 + 1;
          }

          while (v38 + 1 != v35);
          v35 = [log countByEnumeratingWithState:&v47 objects:v61 count:16];
        }

        while (v35);
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];

  return v40;
}

+ (id)filterFactors:(id)a3 forAssetSetNameToFactors:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 allKeys];
  v8 = [CDMAssetsUtils filterFactors:v6 forAssetSets:v7 withAssetSetNameToFactors:v5];

  return v8;
}

+ (id)getNLAssetFromUAFAssetPostValidation:(id)a3 asset:(id)a4 locale:(id)a5 assetSetName:(id)a6 assetSet:(id)a7
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = [CDMUAFAssetsManager getNLAssetFromUAFAsset:a4 withFactor:v11 withAssetSetName:a6 withAssetSet:v13];
  v15 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v20 = 136316162;
    v21 = "+[CDMUAFAssetsManager getNLAssetFromUAFAssetPostValidation:asset:locale:assetSetName:assetSet:]";
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Validating UAF asset: %@ for factorName: %@ and locale: %@ with assetSet: %@", &v20, 0x34u);
  }

  if ([CDMAssetsUtils isNLAssetValid:v14 forLocale:v12])
  {
    v16 = v14;
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136316162;
      v21 = "+[CDMUAFAssetsManager getNLAssetFromUAFAssetPostValidation:asset:locale:assetSetName:assetSet:]";
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: UAF asset: %@ for factorName: %@ is invalid for locale: %@ with assetSet: %@. Return nil.", &v20, 0x34u);
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)getNLAssetFromUAFAsset:(id)a3 withFactor:(id)a4 withAssetSetName:(id)a5 withAssetSet:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v9)
  {
    v23 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v27 = 136315394;
      v28 = "+[CDMUAFAssetsManager getNLAssetFromUAFAsset:withFactor:withAssetSetName:withAssetSet:]";
      v29 = 2112;
      v30 = v10;
      v24 = "%s [WARN]: Can't find valid asset for factorName: %@.";
      goto LABEL_12;
    }

LABEL_13:

    v22 = 0;
    goto LABEL_14;
  }

  v13 = [v9 location];
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = v13;
  v15 = [v9 location];
  v16 = [v15 path];
  v17 = [v16 length];

  if (!v17)
  {
LABEL_8:
    v23 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v27 = 136315394;
      v28 = "+[CDMUAFAssetsManager getNLAssetFromUAFAsset:withFactor:withAssetSetName:withAssetSet:]";
      v29 = 2112;
      v30 = v10;
      v24 = "%s [WARN]: Directory value of factor %@ doesn't have path.";
LABEL_12:
      _os_log_impl(&dword_1DC287000, v23, OS_LOG_TYPE_INFO, v24, &v27, 0x16u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v18 = [v9 location];
  v19 = [v18 path];

  v20 = [v9 metadata];
  v21 = v20;
  if (v20 && [v20 count])
  {
    [v21 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_397_8062];
  }

  v22 = [[UAFNLAsset alloc] initForFactor:v10 withPath:v19 withAssetSetName:v11 withUAFMetadata:v21 withAssetSet:v12];

LABEL_14:
  v25 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)getUAFClientManagersForLocale:(id)a3 withCDMAssetsInfo:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v6;
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 getGraphName];
    *buf = 136315650;
    v64 = "+[CDMUAFAssetsManager getUAFClientManagersForLocale:withCDMAssetsInfo:]";
    v65 = 2112;
    v66 = v5;
    v67 = 2112;
    v68 = v10;
    _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s Initializing UAFClientManagers with locale: %@ and graph name: %@", buf, 0x20u);
  }

  v11 = [v8 getGraphName];

  if (v11)
  {
    v12 = +[CDMUAFAssetsManager getNLUAFClientManagers];
    v13 = [v8 getGraphName];
    v14 = [v12 objectForKey:v13];

    v50 = v12;
    if (!v14)
    {
      v51 = v7;
      v15 = [v8 getAllAssetSets];
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
      v17 = getUAFClientManagersForLocale_withCDMAssetsInfo__uafClientManagers;
      getUAFClientManagersForLocale_withCDMAssetsInfo__uafClientManagers = v16;

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      obj = v15;
      v18 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v58;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v58 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v57 + 1) + 8 * i);
            v23 = +[CDMAssetsUtils cdmAssetSetToStr:](CDMAssetsUtils, "cdmAssetSetToStr:", [v22 integerValue]);
            v24 = [v8 getCDMAssetsUsagesForCDMAssetSet:{objc_msgSend(v22, "integerValue")}];
            v25 = v8;
            v26 = getUAFClientManagersForLocale_withCDMAssetsInfo__uafClientManagers;
            v27 = [CDMUAFClientManager alloc];
            v28 = [v24 getUsages];
            v29 = [(CDMUAFClientManager *)v27 initWithAssetSet:v23 usages:v28];
            v30 = v26;
            v8 = v25;
            [v30 addObject:v29];
          }

          v19 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
        }

        while (v19);
      }

      v31 = getUAFClientManagersForLocale_withCDMAssetsInfo__uafClientManagers;
      v32 = [v8 getGraphName];
      v12 = v50;
      [v50 setObject:v31 forKey:v32];

      v7 = v51;
    }

    v33 = [v8 getGraphName];
    v34 = [v12 objectForKey:v33];

    if (v34)
    {
      v49 = v34;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v35 = v34;
      v36 = [v35 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v54;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v54 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v53 + 1) + 8 * j);
            v41 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v64 = "+[CDMUAFAssetsManager getUAFClientManagersForLocale:withCDMAssetsInfo:]";
              v65 = 2112;
              v66 = v7;
              v67 = 2112;
              v68 = v40;
              _os_log_debug_impl(&dword_1DC287000, v41, OS_LOG_TYPE_DEBUG, "%s Setting locale to %@ for CDMUAFClientManager: %@", buf, 0x20u);
            }

            [v40 setLocale:v7];
            v42 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v64 = "+[CDMUAFAssetsManager getUAFClientManagersForLocale:withCDMAssetsInfo:]";
              v65 = 2112;
              v66 = v40;
              _os_log_debug_impl(&dword_1DC287000, v42, OS_LOG_TYPE_DEBUG, "%s Finished changing usage for CDMUAFClientManager: %@", buf, 0x16u);
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v37);
      }

      v43 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v64 = "+[CDMUAFAssetsManager getUAFClientManagersForLocale:withCDMAssetsInfo:]";
        v65 = 2112;
        v66 = v7;
        v67 = 2112;
        v68 = v35;
        _os_log_debug_impl(&dword_1DC287000, v43, OS_LOG_TYPE_DEBUG, "%s UAFClientManagers generated for locale: %@ :%@", buf, 0x20u);
      }

      v44 = v35;
      v12 = v50;
      v34 = v49;
    }

    else
    {
      v45 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v48 = [v8 getGraphName];
        *buf = 136315650;
        v64 = "+[CDMUAFAssetsManager getUAFClientManagersForLocale:withCDMAssetsInfo:]";
        v65 = 2112;
        v66 = v7;
        v67 = 2112;
        v68 = v48;
        _os_log_error_impl(&dword_1DC287000, v45, OS_LOG_TYPE_ERROR, "%s [ERR]: No UAFClientManagers generated for locale: %@! & graph: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v64 = "+[CDMUAFAssetsManager getUAFClientManagersForLocale:withCDMAssetsInfo:]";
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: Graph name is nil", buf, 0xCu);
    }

    v34 = 0;
  }

  v46 = *MEMORY[0x1E69E9840];

  return v34;
}

+ (id)getFactorToAssetSetName:(id)a3 uafClientManagers:(id)a4 withError:(id *)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = v7;
  v38 = [v10 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v38)
  {
    v11 = *v45;
    v36 = a5;
    v37 = v8;
    v35 = *v45;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        v14 = [v10 objectForKeyedSubscript:v13];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v40 objects:v54 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v41;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v41 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v40 + 1) + 8 * j);
              v21 = [v9 objectForKey:v20];
              v22 = v21;
              if (v21)
              {
                v23 = v21 == v13;
              }

              else
              {
                v23 = 1;
              }

              if (!v23)
              {
                v39 = MEMORY[0x1E696ABC0];
                v52[0] = *MEMORY[0x1E696A578];
                v8 = v37;
                v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate factor name encountered %@ under assetSet: %@ in UAFClientManagers: %@.", v20, v13, v37];
                v53[0] = v25;
                v52[1] = *MEMORY[0x1E696A588];
                v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate factor name encountered %@ under assetSet: %@ in UAFClientManagers: %@.", v20, v13, v37];
                v27 = *MEMORY[0x1E696A598];
                v53[1] = v26;
                v53[2] = @"Check for presence of duplicate factor names across UAFClientManagers";
                v52[2] = v27;
                v52[3] = @"CDMAssetSetupErrorDomain";
                v28 = [MEMORY[0x1E696AD98] numberWithInt:5];
                v53[3] = v28;
                v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:4];
                *v36 = [v39 errorWithDomain:@"CDMUAFDuplicateFactorErrorDomain" code:0 userInfo:v29];

                v30 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v34 = *v36;
                  *buf = 136315394;
                  v49 = "+[CDMUAFAssetsManager getFactorToAssetSetName:uafClientManagers:withError:]";
                  v50 = 2112;
                  v51 = v34;
                  _os_log_error_impl(&dword_1DC287000, v30, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@.", buf, 0x16u);
                }

                v24 = 0;
                goto LABEL_24;
              }

              [v9 setObject:v13 forKey:v20];
            }

            v17 = [v15 countByEnumeratingWithState:&v40 objects:v54 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        v11 = v35;
      }

      v8 = v37;
      v38 = [v10 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v38);
  }

  v24 = v9;
LABEL_24:

  v32 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)getAssetSetNameToFactors:(id)a3 withError:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v7 = [v5 allValues];
  v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [v5 allValues];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [CDMUAFAssetsManager getFactorsForClientManager:v14];
        if (!v15)
        {
          v19 = MEMORY[0x1E696ABC0];
          v37[0] = *MEMORY[0x1E696A578];
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No factors found for UAFClientManager: %@.", v14];
          v38[0] = v20;
          v37[1] = *MEMORY[0x1E696A588];
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No factors found for UAFClientManager: %@.", v14];
          v22 = *MEMORY[0x1E696A598];
          v38[1] = v21;
          v38[2] = @"Check for UAF Config files for no factors in asset set name";
          v37[2] = v22;
          v37[3] = @"CDMAssetSetupErrorDomain";
          v23 = [MEMORY[0x1E696AD98] numberWithInt:3];
          v38[3] = v23;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:4];
          *a4 = [v19 errorWithDomain:@"CDMUAFAssetsManager" code:3 userInfo:v24];

          v25 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v28 = *a4;
            *buf = 136315394;
            v34 = "+[CDMUAFAssetsManager getAssetSetNameToFactors:withError:]";
            v35 = 2112;
            v36 = v28;
            _os_log_error_impl(&dword_1DC287000, v25, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@.", buf, 0x16u);
          }

          v18 = 0;
          goto LABEL_13;
        }

        v16 = v15;
        v17 = [v14 assetSetName];
        [v8 setObject:v16 forKey:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = v8;
LABEL_13:

  v26 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)getAssetSetNameToUafClientManager:(id)a3 withError:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 assetSetName];
        v14 = [v6 objectForKey:v13];

        if (v14)
        {
          v17 = MEMORY[0x1E696ABC0];
          v35[0] = *MEMORY[0x1E696A578];
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate AssetSet name encountered in UAFClientManagers: %@.", v7];
          v36[0] = v18;
          v35[1] = *MEMORY[0x1E696A588];
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate AssetSet name encountered in UAFClientManagers: %@.", v7];
          v20 = *MEMORY[0x1E696A598];
          v36[1] = v19;
          v36[2] = @"Check for presence of duplicate AssetSet names across UAFClientManagers";
          v35[2] = v20;
          v35[3] = @"CDMAssetSetupErrorDomain";
          v21 = [MEMORY[0x1E696AD98] numberWithInt:3];
          v36[3] = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:4];
          *a4 = [v17 errorWithDomain:@"CDMUAFAssetsManager" code:1 userInfo:v22];

          v23 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v26 = *a4;
            *buf = 136315394;
            v32 = "+[CDMUAFAssetsManager getAssetSetNameToUafClientManager:withError:]";
            v33 = 2112;
            v34 = v26;
            _os_log_error_impl(&dword_1DC287000, v23, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@.", buf, 0x16u);
          }

          v16 = 0;
          goto LABEL_13;
        }

        v15 = [v12 assetSetName];
        [v6 setObject:v12 forKey:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = v6;
LABEL_13:

  v24 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (void)initUAFClientManagers:(id)a3 locale:(id)a4 error:(id *)a5
{
  v69[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
    if (v9)
    {
      v10 = v9;
      v50 = a5;
      v51 = v7;
      v11 = *v54;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v54 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v53 + 1) + 8 * i);
          if ([v13 shouldInitUAFAssetSetInSetupForLocale:v8])
          {
            v14 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v60 = "+[CDMUAFAssetsManager initUAFClientManagers:locale:error:]";
              v61 = 2112;
              v62 = v13;
              _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Initialize UAFAssetSet for cdmClientManager: %@", buf, 0x16u);
            }

            v15 = os_signpost_id_generate(CDMLogContext);
            v16 = CDMLogContext;
            v17 = v16;
            if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
            {
              v18 = [v13 assetSetName];
              *buf = 138412290;
              v60 = v18;
              _os_signpost_emit_with_name_impl(&dword_1DC287000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "CDMUAFAssetsManager", "initUAFAssetSet %@", buf, 0xCu);
            }

            [v13 initUAFAssetSet];
            v19 = CDMLogContext;
            v20 = v19;
            if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1DC287000, v20, OS_SIGNPOST_INTERVAL_END, v15, "CDMUAFAssetsManager", " enableTelemetry=YES ", buf, 2u);
            }
          }

          v21 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v30 = [v13 assetSetName];
            v31 = [v13 assetSet];
            v32 = [v13 usages];
            *buf = 136315906;
            v60 = "+[CDMUAFAssetsManager initUAFClientManagers:locale:error:]";
            v61 = 2112;
            v62 = v30;
            v63 = 2112;
            v64 = v31;
            v65 = 2112;
            v66 = v32;
            _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s uafClientManager.assetSetName %@ has assetSet %@ has usages %@", buf, 0x2Au);
          }

          v22 = [v13 getAssetSet];
          v23 = objc_alloc_init(MEMORY[0x1E695DF20]);
          if (!v22)
          {
            v33 = MEMORY[0x1E696ABC0];
            v57[0] = *MEMORY[0x1E696A578];
            v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No assets found for UAFClientManagers: %@.", v13];
            v58[0] = v34;
            v57[1] = *MEMORY[0x1E696A588];
            v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No assets found for UAFClientManagers: %@.", v13];
            v36 = *MEMORY[0x1E696A598];
            v58[1] = v35;
            v58[2] = @"Check assetSet name / presence of assets configured under the assetSet.";
            v57[2] = v36;
            v57[3] = @"CDMAssetSetupErrorDomain";
            v37 = [MEMORY[0x1E696AD98] numberWithInt:4];
            v58[3] = v37;
            v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:4];
            *v50 = [v33 errorWithDomain:@"CDMUAFAssetsNotFoundErrorDomain" code:0 userInfo:v38];

            v39 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v48 = *v50;
              *buf = 136315394;
              v60 = "+[CDMUAFAssetsManager initUAFClientManagers:locale:error:]";
              v61 = 2112;
              v62 = v48;
              _os_log_error_impl(&dword_1DC287000, v39, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@.", buf, 0x16u);
            }

            v40 = CDMOSLoggerForCategory(0);
            v7 = v51;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v60 = "+[CDMUAFAssetsManager initUAFClientManagers:locale:error:]";
              _os_log_error_impl(&dword_1DC287000, v40, OS_LOG_TYPE_ERROR, "%s [ERR]: Self heal the cache because assetSet is nil", buf, 0xCu);
            }

            +[CDMUAFAssetsManager reInitCDMUAFAssetsCache];
            goto LABEL_36;
          }

          v24 = os_signpost_id_generate(CDMLogContext);
          v25 = CDMLogContext;
          v26 = v25;
          if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1DC287000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "CDMUAFAssetsManager", "getAssets in initUAFClientManagers", buf, 2u);
          }

          v27 = [v22 assets];

          v28 = CDMLogContext;
          v29 = v28;
          if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1DC287000, v29, OS_SIGNPOST_INTERVAL_END, v24, "CDMUAFAssetsManager", " enableTelemetry=YES ", buf, 2u);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v7 = v51;
    }
  }

  else
  {
    v41 = MEMORY[0x1E696ABC0];
    v68[0] = *MEMORY[0x1E696A578];
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No UAFClientManagers found for locale: %@", v8];
    v69[0] = v42;
    v68[1] = *MEMORY[0x1E696A588];
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No UAFClientManagers found for locale: %@", v8];
    v44 = *MEMORY[0x1E696A598];
    v69[1] = v43;
    v69[2] = @"Check locale / graphName provided.";
    v68[2] = v44;
    v68[3] = @"CDMAssetSetupErrorDomain";
    v45 = [MEMORY[0x1E696AD98] numberWithInt:3];
    v69[3] = v45;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:4];
    *a5 = [v41 errorWithDomain:@"CDMUAFAssetsManager" code:2 userInfo:v46];

    obj = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      v49 = *a5;
      *buf = 136315394;
      v60 = "+[CDMUAFAssetsManager initUAFClientManagers:locale:error:]";
      v61 = 2112;
      v62 = v49;
      _os_log_error_impl(&dword_1DC287000, obj, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@.", buf, 0x16u);
    }
  }

LABEL_36:

  v47 = *MEMORY[0x1E69E9840];
}

+ (void)reInitCDMUAFAssetsCache
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v25 = "+[CDMUAFAssetsManager reInitCDMUAFAssetsCache]";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Re Initializing CDMUAFClientManager's cache", buf, 0xCu);
  }

  v3 = +[CDMUAFAssetsManager getNLUAFClientManagers];
  objc_sync_enter(v3);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [v4 objectForKey:*(*(&v18 + 1) + 8 * v7)];
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v10)
        {
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v14 + 1) + 8 * v12++) initUAFAssetSet];
            }

            while (v10 != v12);
            v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v4);
  v13 = *MEMORY[0x1E69E9840];
}

void __45__CDMUAFAssetsManager_getNLUAFClientManagers__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "+[CDMUAFAssetsManager getNLUAFClientManagers]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v0, OS_LOG_TYPE_DEBUG, "%s Initializing NL UAFClientManager singleton dictionary", &v4, 0xCu);
  }

  v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = getNLUAFClientManagers_nlUAFClientManagers;
  getNLUAFClientManagers_nlUAFClientManagers = v1;

  v3 = *MEMORY[0x1E69E9840];
}

@end