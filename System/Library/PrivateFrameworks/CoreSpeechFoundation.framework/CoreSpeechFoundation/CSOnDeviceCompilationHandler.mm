@interface CSOnDeviceCompilationHandler
+ (id)sharedHandler;
- (CSOnDeviceCompilationHandler)init;
- (id)_compileModelAndAddToCacheWithConfigFiles:(id)files compileDirectoryPath:(id)path locale:(id)locale assetVersion:(id)version hashToUse:(id)use modelType:(int64_t)type compilationFramework:(int64_t)framework;
- (id)_compileModelWithModelListInAsset:(id)asset modelType:(id)type compileDirectoryPath:(id)path locale:(id)locale compilationFramework:(int64_t)framework;
- (void)compileAndUpdateDeviceCachesWithAsset:(id)asset assetType:(unint64_t)type endpointId:(id)id errOut:(id *)out;
- (void)compileAndUpdateDeviceCachesWithAsset:(id)asset assetType:(unint64_t)type modelType:(id)modelType deviceId:(id)id currentLocale:(id)locale compileDirectory:(id)directory errOut:(id *)out;
- (void)compileUsingConfig:(id)config locale:(id)locale compileDirectory:(id)directory modelType:(int64_t)type errOut:(id *)out;
@end

@implementation CSOnDeviceCompilationHandler

- (id)_compileModelAndAddToCacheWithConfigFiles:(id)files compileDirectoryPath:(id)path locale:(id)locale assetVersion:(id)version hashToUse:(id)use modelType:(int64_t)type compilationFramework:(int64_t)framework
{
  v71[1] = *MEMORY[0x1E69E9840];
  filesCopy = files;
  pathCopy = path;
  localeCopy = locale;
  versionCopy = version;
  useCopy = use;
  if (filesCopy)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v15 = [filesCopy countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (v15)
    {
      v17 = v15;
      v18 = 0;
      v19 = 0x1E8659000uLL;
      v54 = *v56;
      v48 = *MEMORY[0x1E696A578];
      *&v16 = 136315138;
      v47 = v16;
      while (1)
      {
        v20 = 0;
        v53 = v17;
        do
        {
          if (*v56 != v54)
          {
            objc_enumerationMutation(filesCopy);
          }

          v21 = *(*(&v55 + 1) + 8 * v20);
          v22 = [*(v19 + 2472) readMilFilePathFromConfig:v21 modelType:{type, v47}];
          v23 = [*(v19 + 2472) getModelNameFromMilFilePath:v22];
          v24 = [*(v19 + 2472) getBackendTypeFromModelFile:v22];
          if (v24 == 2)
          {
            typeCopy = type;
            v29 = filesCopy;
            v30 = MEMORY[0x1E696ABC0];
            v67 = v48;
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"not avaiable for E5ML"];
            v68 = v31;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
            v33 = [v30 errorWithDomain:@"com.apple.corespeech" code:2254 userInfo:v32];

            v34 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
            {
              *buf = v47;
              v60 = "[CSOnDeviceCompilationHandler _compileModelAndAddToCacheWithConfigFiles:compileDirectoryPath:locale:assetVersion:hashToUse:modelType:compilationFramework:]";
              _os_log_fault_impl(&dword_1DDA4B000, v34, OS_LOG_TYPE_FAULT, "%s Not implemented", buf, 0xCu);
            }

            v26 = 0;
            v18 = v33;
            filesCopy = v29;
            type = typeCopy;
            v17 = v53;
            v19 = 0x1E8659000;
          }

          else if (v24 == 1)
          {
            v25 = [*(v19 + 2472) getIrNameFromModelNameForCompile:v23 locale:localeCopy assetVersion:versionCopy hashToUse:useCopy];
            v26 = [pathCopy stringByAppendingPathComponent:v25];

            v27 = [CSMil2BnnsUtils compileModelWithMilFile:v22 bnnsIrCachePath:v26 compilationFramework:framework];

            v18 = v27;
          }

          else
          {
            v35 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v60 = "[CSOnDeviceCompilationHandler _compileModelAndAddToCacheWithConfigFiles:compileDirectoryPath:locale:assetVersion:hashToUse:modelType:compilationFramework:]";
              v61 = 2112;
              v62 = v22;
              v63 = 2112;
              v64 = v21;
              _os_log_impl(&dword_1DDA4B000, v35, OS_LOG_TYPE_DEFAULT, "%s No Valid backend for compilation is found for model file: %@ from config: %@", buf, 0x20u);
            }

            v26 = 0;
          }

          v36 = CSLogContextFacilityCoreSpeech;
          v37 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            if (!v37)
            {
              goto LABEL_22;
            }

            *buf = 136315650;
            v60 = "[CSOnDeviceCompilationHandler _compileModelAndAddToCacheWithConfigFiles:compileDirectoryPath:locale:assetVersion:hashToUse:modelType:compilationFramework:]";
            v61 = 2112;
            v62 = v22;
            v63 = 2112;
            v64 = v18;
            v38 = v36;
            v39 = "%s mil2Bnns compilation failed for modelFile: %@ with error: %@";
            v40 = 32;
          }

          else
          {
            if (!v37)
            {
              goto LABEL_22;
            }

            *buf = 136315906;
            v60 = "[CSOnDeviceCompilationHandler _compileModelAndAddToCacheWithConfigFiles:compileDirectoryPath:locale:assetVersion:hashToUse:modelType:compilationFramework:]";
            v61 = 2112;
            v62 = v22;
            v63 = 2112;
            v64 = v26;
            v65 = 2112;
            v66 = 0;
            v38 = v36;
            v39 = "%s Compilation done for modelFile: %@, output cacheIrPath: %@ with error: %@";
            v40 = 42;
          }

          _os_log_impl(&dword_1DDA4B000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, v40);
LABEL_22:

          ++v20;
        }

        while (v17 != v20);
        v17 = [filesCopy countByEnumeratingWithState:&v55 objects:v69 count:16];
        if (!v17)
        {
          goto LABEL_27;
        }
      }
    }

    v18 = 0;
  }

  else
  {
    v41 = MEMORY[0x1E696ABC0];
    v70 = *MEMORY[0x1E696A578];
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"config files passed in for compilation is nil"];
    v71[0] = v42;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    v18 = [v41 errorWithDomain:@"com.apple.corespeech" code:2255 userInfo:v43];
  }

LABEL_27:
  v44 = v18;

  v45 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)_compileModelWithModelListInAsset:(id)asset modelType:(id)type compileDirectoryPath:(id)path locale:(id)locale compilationFramework:(int64_t)framework
{
  v36[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  typeCopy = type;
  pathCopy = path;
  localeCopy = locale;
  if (assetCopy)
  {
    v15 = [CSOnDeviceCompilationModelListDecoder decodeConfigFrom:assetCopy];
    v16 = [v15 objectForKeyedSubscript:typeCopy];

    if (v16)
    {
      v17 = [v15 objectForKeyedSubscript:typeCopy];
      frameworkCopy = framework;
      v18 = pathCopy;
      v31 = [CSOnDeviceCompilationUtils getModelNameFromMilFilePath:v17];
      configVersion = [assetCopy configVersion];
      hashFromResourcePath = [assetCopy hashFromResourcePath];
      v21 = [CSOnDeviceCompilationUtils getIrNameFromModelNameForCompile:v31 locale:localeCopy assetVersion:configVersion hashToUse:hashFromResourcePath];
      [v18 stringByAppendingPathComponent:v21];
      v22 = typeCopy;
      v24 = v23 = localeCopy;

      pathCopy = v18;
      v25 = [CSMil2BnnsUtils compileModelWithMilFile:v17 bnnsIrCachePath:v24 compilationFramework:frameworkCopy];

      localeCopy = v23;
      typeCopy = v22;
    }

    else
    {
      v27 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"model type not found in compilation list"];
      v34 = v17;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v25 = [v27 errorWithDomain:@"com.apple.corespeech" code:2262 userInfo:v28];
    }
  }

  else
  {
    v26 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"asset being nil"];
    v36[0] = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v25 = [v26 errorWithDomain:@"com.apple.corespeech" code:2263 userInfo:v17];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v25;
}

- (void)compileUsingConfig:(id)config locale:(id)locale compileDirectory:(id)directory modelType:(int64_t)type errOut:(id *)out
{
  v33[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  localeCopy = locale;
  directoryCopy = directory;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__12693;
  v30 = __Block_byref_object_dispose__12694;
  v31 = 0;
  if (configCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__CSOnDeviceCompilationHandler_compileUsingConfig_locale_compileDirectory_modelType_errOut___block_invoke;
    block[3] = &unk_1E865C4B0;
    v24 = &v26;
    typeCopy = type;
    block[4] = self;
    v21 = configCopy;
    v22 = directoryCopy;
    v23 = localeCopy;
    dispatch_sync(queue, block);
    if (out)
    {
      *out = v27[5];
    }
  }

  else if (out)
  {
    v16 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"configfileNil"];
    v33[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    *out = [v16 errorWithDomain:@"com.apple.corespeech" code:2255 userInfo:v18];
  }

  _Block_object_dispose(&v26, 8);

  v19 = *MEMORY[0x1E69E9840];
}

void __92__CSOnDeviceCompilationHandler_compileUsingConfig_locale_compileDirectory_modelType_errOut___block_invoke(void *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ((a1[9] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = a1[4];
  v15[0] = a1[5];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v5 = [v3 _compileModelAndAddToCacheWithConfigFiles:v4 compileDirectoryPath:a1[6] locale:a1[7] assetVersion:@"override" hashToUse:@"defaultHash" modelType:a1[9] compilationFramework:v2];
  v6 = *(a1[8] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1[8] + 8) + 40);
    *buf = 136315394;
    v12 = "[CSOnDeviceCompilationHandler compileUsingConfig:locale:compileDirectory:modelType:errOut:]_block_invoke";
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s model compilation finished with error %@: ", buf, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)compileAndUpdateDeviceCachesWithAsset:(id)asset assetType:(unint64_t)type modelType:(id)modelType deviceId:(id)id currentLocale:(id)locale compileDirectory:(id)directory errOut:(id *)out
{
  v78[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  modelTypeCopy = modelType;
  idCopy = id;
  localeCopy = locale;
  directoryCopy = directory;
  if (idCopy)
  {
    if ([CSOnDeviceCompilationUtils shouldCompileForAssetType:type])
    {
      v70 = 0;
      v71 = &v70;
      v72 = 0x3032000000;
      v73 = __Block_byref_object_copy__12693;
      v74 = __Block_byref_object_dispose__12694;
      v75 = 0;
      v49 = localeCopy;
      v50 = assetCopy;
      if (type == 6 && (([modelTypeCopy isEqual:&unk_1F5916A90] & 1) != 0 || objc_msgSend(modelTypeCopy, "isEqual:", &unk_1F5916AA8)))
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      v24 = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __137__CSOnDeviceCompilationHandler_compileAndUpdateDeviceCachesWithAsset_assetType_modelType_deviceId_currentLocale_compileDirectory_errOut___block_invoke;
      block[3] = &unk_1E865C438;
      v68 = &v70;
      block[4] = self;
      v25 = v50;
      v64 = v25;
      v26 = modelTypeCopy;
      v65 = v26;
      v46 = directoryCopy;
      v66 = v46;
      v48 = v49;
      v67 = v48;
      v69 = v20;
      dispatch_sync(v24, block);
      if (v71[5])
      {
        if (type)
        {
          v27 = !+[CSUtils isDarwinOS];
          if (type == 5)
          {
            v28 = v27;
          }

          else
          {
            v28 = 1;
          }
        }

        else
        {
          v28 = 0;
        }

        if (([v26 intValue] != 1) | v28 & 1)
        {
          queue = v20;
          v29 = +[CSOnDeviceCompilationUtils getModelConfigsWithAsset:modelType:](CSOnDeviceCompilationUtils, "getModelConfigsWithAsset:modelType:", v25, [v26 intValue]);
          v43 = self->_queue;
          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __137__CSOnDeviceCompilationHandler_compileAndUpdateDeviceCachesWithAsset_assetType_modelType_deviceId_currentLocale_compileDirectory_errOut___block_invoke_24;
          v51[3] = &unk_1E865C488;
          v56[1] = &v70;
          v51[4] = self;
          v52 = v29;
          v53 = v46;
          v47 = &v54;
          v54 = v48;
          v30 = &v55;
          v55 = v25;
          v31 = v56;
          v32 = &v52;
          v33 = &v53;
          v56[0] = v26;
          v56[2] = queue;
          v34 = v29;
          v35 = v51;
          v36 = v43;
        }

        else
        {
          if (idCopy == @"Hub")
          {
            v40 = [CSVoiceTriggerSecondPassConfigDecoder fetchAllVoiceTriggerSecondPassRecognizer:v25];
          }

          else
          {
            v37 = [CSVoiceTriggerSecondPassConfigDecoder decodeConfigFrom:v25 forFirstPassSource:7];
            v38 = v37;
            if (v37)
            {
              configPathRecognizer = [v37 configPathRecognizer];
              v76 = configPathRecognizer;
              v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
            }

            else
            {
              v40 = 0;
            }
          }

          queuea = self->_queue;
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __137__CSOnDeviceCompilationHandler_compileAndUpdateDeviceCachesWithAsset_assetType_modelType_deviceId_currentLocale_compileDirectory_errOut___block_invoke_23;
          v57[3] = &unk_1E865C460;
          v62[1] = &v70;
          v32 = &v58;
          v57[4] = self;
          v58 = v40;
          v33 = &v59;
          v59 = v46;
          v47 = &v60;
          v60 = v48;
          v41 = v40;
          v30 = &v61;
          v61 = v25;
          v31 = v62;
          v62[0] = v26;
          v34 = v41;
          v35 = v57;
          v36 = queuea;
        }

        dispatch_sync(v36, v35);

        if (out)
        {
          *out = v71[5];
        }
      }

      localeCopy = v49;
      assetCopy = v50;

      _Block_object_dispose(&v70, 8);
    }
  }

  else if (out)
  {
    v21 = MEMORY[0x1E696ABC0];
    v77 = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"deviceId specified as nil"];
    v78[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    *out = [v21 errorWithDomain:@"com.apple.corespeech" code:2254 userInfo:v23];
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __137__CSOnDeviceCompilationHandler_compileAndUpdateDeviceCachesWithAsset_assetType_modelType_deviceId_currentLocale_compileDirectory_errOut___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _compileModelWithModelListInAsset:*(a1 + 40) modelType:*(a1 + 48) compileDirectoryPath:*(a1 + 56) locale:*(a1 + 64) compilationFramework:*(a1 + 80)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 72) + 8) + 40);
  if (v5)
  {
    if ([v5 code] != 2262)
    {
      v6 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(*(a1 + 72) + 8) + 40);
        v8 = *(a1 + 48);
        v10 = 136315650;
        v11 = "[CSOnDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:assetType:modelType:deviceId:currentLocale:compileDirectory:errOut:]_block_invoke";
        v12 = 2112;
        v13 = v7;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s compilation with onDeviceCompilation list finished with error: %@ with modelType: %@", &v10, 0x20u);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __137__CSOnDeviceCompilationHandler_compileAndUpdateDeviceCachesWithAsset_assetType_modelType_deviceId_currentLocale_compileDirectory_errOut___block_invoke_23(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) configVersion];
  v7 = [*(a1 + 64) hashFromResourcePath];
  v8 = [v2 _compileModelAndAddToCacheWithConfigFiles:v3 compileDirectoryPath:v4 locale:v5 assetVersion:v6 hashToUse:v7 modelType:objc_msgSend(*(a1 + 72) compilationFramework:{"intValue"), 1}];
  v9 = *(*(a1 + 80) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 80) + 8) + 40);
    *buf = 136315394;
    v15 = "[CSOnDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:assetType:modelType:deviceId:currentLocale:compileDirectory:errOut:]_block_invoke";
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s second pass model compilation finished with error %@: ", buf, 0x16u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __137__CSOnDeviceCompilationHandler_compileAndUpdateDeviceCachesWithAsset_assetType_modelType_deviceId_currentLocale_compileDirectory_errOut___block_invoke_24(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) configVersion];
  v7 = [*(a1 + 64) hashFromResourcePath];
  v8 = [v2 _compileModelAndAddToCacheWithConfigFiles:v3 compileDirectoryPath:v4 locale:v5 assetVersion:v6 hashToUse:v7 modelType:objc_msgSend(*(a1 + 72) compilationFramework:{"intValue"), *(a1 + 88)}];
  v9 = *(*(a1 + 80) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 80) + 8) + 40);
    *buf = 136315394;
    v15 = "[CSOnDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:assetType:modelType:deviceId:currentLocale:compileDirectory:errOut:]_block_invoke";
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s second pass model compilation finished with error %@: ", buf, 0x16u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)compileAndUpdateDeviceCachesWithAsset:(id)asset assetType:(unint64_t)type endpointId:(id)id errOut:(id *)out
{
  v51[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  idCopy = id;
  v10 = idCopy;
  if (idCopy)
  {
    v36 = idCopy;
    [CSUtils getSiriLanguageWithEndpointId:"getSiriLanguageWithEndpointId:fallbackLanguage:" fallbackLanguage:?];
  }

  else
  {
    v36 = @"Hub";
    v11 = @"Hub";
    [CSUtils getSiriLanguageWithFallback:@"en-US"];
  }
  v35 = ;
  v12 = +[CSFPreferences sharedPreferences];
  getOnDeviceCompilationCacheDirectory = [v12 getOnDeviceCompilationCacheDirectory];

  v34 = getOnDeviceCompilationCacheDirectory;
  if (getOnDeviceCompilationCacheDirectory)
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v47 = "[CSOnDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:assetType:endpointId:errOut:]";
      v48 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s compiling for modelType: %lu", buf, 0x16u);
    }

    if (type > 4)
    {
      if (type != 5)
      {
        if (type != 6)
        {
          goto LABEL_28;
        }

        v16 = &CSOnDeviceCompileSupportedMitigationModelTypes;
LABEL_20:
        v20 = *v16;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v19 = v20;
        v21 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v21)
        {
          v22 = v21;
          v18 = 0;
          v23 = *v40;
          do
          {
            v24 = 0;
            v25 = v18;
            do
            {
              if (*v40 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v26 = *(*(&v39 + 1) + 8 * v24);
              v27 = +[CSOnDeviceCompilationUtils getModelCompiledDirWithModelType:basePath:](CSOnDeviceCompilationUtils, "getModelCompiledDirWithModelType:basePath:", [v26 intValue], v34);
              v38 = v25;
              [(CSOnDeviceCompilationHandler *)self compileAndUpdateDeviceCachesWithAsset:assetCopy assetType:type modelType:v26 deviceId:v36 currentLocale:v35 compileDirectory:v27 errOut:&v38];
              v18 = v38;

              ++v24;
              v25 = v18;
            }

            while (v22 != v24);
            v22 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
          }

          while (v22);
        }

        else
        {
          v18 = 0;
        }

        if (out)
        {
          v31 = v18;
          *out = v18;
        }

        goto LABEL_34;
      }

      if (!+[CSUtils isDarwinOS])
      {
        goto LABEL_28;
      }
    }

    else if (type)
    {
      if (type == 3)
      {
        v15 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v47 = "[CSOnDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:assetType:endpointId:errOut:]";
          _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s compiling for modelType forCSSpeakerRecognitionAssetType", buf, 0xCu);
        }

        v16 = &CSOnDeviceCompileSupportedSpeakerRecognitionModelTypes;
        goto LABEL_20;
      }

LABEL_28:
      if (out)
      {
        v28 = MEMORY[0x1E696ABC0];
        v44 = *MEMORY[0x1E696A578];
        type = [MEMORY[0x1E696AEC0] stringWithFormat:@"asset type is not supported: %lu", type];
        v45 = type;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        *out = [v28 errorWithDomain:@"com.apple.corespeech" code:2265 userInfo:v30];
      }

      v19 = 0;
      v18 = 0;
      goto LABEL_34;
    }

    v16 = &CSOnDeviceCompileSupportedVoiceTriggerModelTypes;
    goto LABEL_20;
  }

  if (out)
  {
    v17 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A578];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cached ir directory is nil"];
    v51[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    *out = [v17 errorWithDomain:@"com.apple.corespeech" code:2264 userInfo:v19];
LABEL_34:
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (CSOnDeviceCompilationHandler)init
{
  v6.receiver = self;
  v6.super_class = CSOnDeviceCompilationHandler;
  v2 = [(CSOnDeviceCompilationHandler *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSOnDeviceCompilationHanlder", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)sharedHandler
{
  if (sharedHandler_onceToken_12738 != -1)
  {
    dispatch_once(&sharedHandler_onceToken_12738, &__block_literal_global_12739);
  }

  v3 = sharedHandler_sharedHandler_12740;

  return v3;
}

uint64_t __45__CSOnDeviceCompilationHandler_sharedHandler__block_invoke()
{
  v0 = objc_alloc_init(CSOnDeviceCompilationHandler);
  v1 = sharedHandler_sharedHandler_12740;
  sharedHandler_sharedHandler_12740 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end