@interface CSOnDeviceCompilationUtils
+ (BOOL)isBnnsIrNameForCurrentBuild:(id)build;
+ (BOOL)validateSecondPassCheckerCompilation:(id)compilation error:(id *)error;
+ (id)_getBaseNamingWithHashToUse:(id)use milName:(id)name configVersion:(id)version;
+ (id)_getCachedIrsFromConfigFile:(id)file modelType:(int64_t)type CSAsset:(id)asset cachedIrDir:(id)dir;
+ (id)getCachedIrFromConfigPath:(id)path modelTye:(int64_t)tye asset:(id)asset;
+ (id)getCachedIrFromMilFilePath:(id)path modelTye:(int64_t)tye asset:(id)asset;
+ (id)getCachedIrFromMilFilePath:(id)path modelTye:(int64_t)tye asset:(id)asset cachedIrHomePath:(id)homePath;
+ (id)getCachedIrsFromCSAsset:(id)asset cachedIrDir:(id)dir;
+ (id)getIrNameFromModelNameForCompile:(id)compile locale:(id)locale assetVersion:(id)version hashToUse:(id)use;
+ (id)getModelCompiledDirWithModelType:(int64_t)type basePath:(id)path;
+ (id)getModelConfigsWithAsset:(id)asset modelType:(int64_t)type;
+ (id)getModelNameFromMilFilePath:(id)path;
+ (id)readMilFilePathFromConfig:(id)config modelType:(int64_t)type;
+ (id)sortCachedIrsByLastAccessTimeStamp:(id)stamp;
+ (int64_t)getBackendTypeFromModelFile:(id)file;
@end

@implementation CSOnDeviceCompilationUtils

+ (BOOL)validateSecondPassCheckerCompilation:(id)compilation error:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  compilationCopy = compilation;
  if (compilationCopy)
  {
    v6 = [CSVoiceTriggerSecondPassConfigDecoder decodeConfigFrom:compilationCopy forFirstPassSource:0];
    configPathRecognizer = [v6 configPathRecognizer];
    if (configPathRecognizer && ([MEMORY[0x1E696AC08] defaultManager], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "fileExistsAtPath:", configPathRecognizer), v8, (v9 & 1) != 0))
    {
      v10 = [CSOnDeviceCompilationUtils readMilFilePathFromConfig:configPathRecognizer modelType:1];
      if (v10)
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v12 = [defaultManager fileExistsAtPath:v10];

        if (v12)
        {
          v13 = [CSOnDeviceCompilationUtils getMilConfigFromMilFilePath:v10];
          v14 = objc_alloc(MEMORY[0x1E696AEC0]);
          identity = [compilationCopy identity];
          v16 = [v14 initWithFormat:@"%@.temp.bnnsir", identity];

          v17 = NSTemporaryDirectory();
          v46 = v16;
          v18 = [v17 stringByAppendingPathComponent:v16];

          v47 = 0;
          [MEMORY[0x1E699BA40] compileWithModelMilPath:v10 bnnsIrOutPath:v18 milConfigPath:v13 errorOut:&v47];
          v19 = v47;
          v20 = v19;
          if (error && v19)
          {
            localizedDescription = [v19 localizedDescription];
            v43 = *MEMORY[0x1E699B9B0];
            v44 = MEMORY[0x1E696ABC0];
            v48 = *MEMORY[0x1E696A578];
            v22 = localizedDescription;
            v45 = v18;
            v42 = v20;
            if ([v22 containsString:@"bnns error message: "] && (v23 = objc_msgSend(v22, "rangeOfString:", @"bnns error message: "), v23 != 0x7FFFFFFFFFFFFFFFLL))
            {
              v33 = [v22 substringFromIndex:v23 + v24];
              v41 = [v33 componentsSeparatedByString:@"[stack trace: ]"];
              firstObject = [v41 firstObject];
            }

            else
            {
              firstObject = @"Unkown error";
            }

            v49 = firstObject;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
            v35 = v34 = v22;
            *error = [v44 errorWithDomain:v43 code:3 userInfo:v35];

            v18 = v45;
            v20 = v42;
          }

          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          v37 = [defaultManager2 fileExistsAtPath:v18];

          if (v37)
          {
            defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
            [defaultManager3 removeItemAtPath:v18 error:0];
          }

          v28 = v20 == 0;

          goto LABEL_25;
        }
      }

      if (error)
      {
        v31 = MEMORY[0x1E696ABC0];
        v32 = *MEMORY[0x1E699B9B0];
        v50 = *MEMORY[0x1E696A578];
        v51 = @"mil file path is not found";
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        [v31 errorWithDomain:v32 code:3 userInfo:v13];
        *error = v28 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v28 = 0;
    }

    else
    {
      if (!error)
      {
        v28 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v26 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E699B9B0];
      v52 = *MEMORY[0x1E696A578];
      v53 = @"configfile for secondpass checker is not found";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      [v26 errorWithDomain:v27 code:3 userInfo:v10];
      *error = v28 = 0;
    }

LABEL_26:

    goto LABEL_27;
  }

  if (error)
  {
    v29 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E699B9B0];
    v54 = *MEMORY[0x1E696A578];
    v55[0] = @"asset is nil";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    [v29 errorWithDomain:v30 code:3 userInfo:v6];
    *error = v28 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v28 = 0;
LABEL_29:

  v39 = *MEMORY[0x1E69E9840];
  return v28;
}

+ (id)_getCachedIrsFromConfigFile:(id)file modelType:(int64_t)type CSAsset:(id)asset cachedIrDir:(id)dir
{
  assetCopy = asset;
  v10 = [CSOnDeviceCompilationUtils readMilFilePathFromConfig:file modelType:type];
  if (v10)
  {
    v11 = [self getCachedIrFromMilFilePath:v10 modelTye:type asset:assetCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_getBaseNamingWithHashToUse:(id)use milName:(id)name configVersion:(id)version
{
  versionCopy = version;
  nameCopy = name;
  useCopy = use;
  v10 = MGGetStringAnswer();
  versionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@-%@", v10, useCopy, nameCopy, versionCopy];

  return versionCopy;
}

+ (id)getModelConfigsWithAsset:(id)asset modelType:(int64_t)type
{
  v18[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v6 = assetCopy;
  allObjects = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      getAllNldaConfigFiles = [CSVoiceTriggerSecondPassConfigDecoder fetchAllVoiceTriggerSecondPassRecognizer:assetCopy];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_25;
      }

      getAllNldaConfigFiles = [assetCopy getAllNldaConfigFiles];
    }

    goto LABEL_24;
  }

  switch(type)
  {
    case 3:
      getAllNldaConfigFiles = [assetCopy getAllMitigationConfigFiles];
LABEL_24:
      allObjects = getAllNldaConfigFiles;
      break;
    case 4:
      v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      progCheckerRecognizerConfigFiles = [v6 progCheckerRecognizerConfigFiles];
      contConvRecognizerConfigFiles = [v6 contConvRecognizerConfigFiles];
      if (progCheckerRecognizerConfigFiles)
      {
        [v12 addObjectsFromArray:progCheckerRecognizerConfigFiles];
      }

      if (contConvRecognizerConfigFiles)
      {
        [v12 addObjectsFromArray:contConvRecognizerConfigFiles];
      }

      allObjects = [v12 allObjects];

      goto LABEL_22;
    case 5:
      allObjects = [assetCopy resourcePath];

      if (allObjects)
      {
        if (CSIsHorseman_onceToken != -1)
        {
          dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
        }

        v8 = CSIsHorseman_isHorseman;
        resourcePath = [v6 resourcePath];
        v10 = resourcePath;
        if (v8)
        {
          v11 = @"spid/spid.json";
        }

        else
        {
          v11 = @"sr/sr.json";
        }

        v12 = [resourcePath stringByAppendingPathComponent:v11];

        if (v12)
        {
          v18[0] = v12;
          allObjects = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        }

        else
        {
          allObjects = 0;
        }

LABEL_22:
      }

      break;
  }

LABEL_25:

  v16 = *MEMORY[0x1E69E9840];

  return allObjects;
}

+ (id)getModelCompiledDirWithModelType:(int64_t)type basePath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = pathCopy;
  if (type > 2)
  {
    switch(type)
    {
      case 3:
        v7 = @"neuralCombiner";
        goto LABEL_17;
      case 4:
        v7 = @"aftm";
        goto LABEL_17;
      case 5:
        v7 = @"speakerRecognition";
        goto LABEL_17;
    }
  }

  else
  {
    switch(type)
    {
      case 0:
        v7 = @"CSTempModel";
        goto LABEL_17;
      case 1:
        v7 = @"secondPassChecker";
        goto LABEL_17;
      case 2:
        v7 = @"odld";
LABEL_17:
        v9 = [pathCopy stringByAppendingPathComponent:v7];
        goto LABEL_18;
    }
  }

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "+[CSOnDeviceCompilationUtils getModelCompiledDirWithModelType:basePath:]";
    v14 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Does not support model type: %lu", &v12, 0x16u);
  }

  v9 = 0;
LABEL_18:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (BOOL)isBnnsIrNameForCurrentBuild:(id)build
{
  buildCopy = build;
  v4 = MGGetStringAnswer();
  v5 = [buildCopy hasPrefix:v4];

  return v5;
}

+ (id)sortCachedIrsByLastAccessTimeStamp:(id)stamp
{
  v50 = *MEMORY[0x1E69E9840];
  stampCopy = stamp;
  if (stampCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = stampCopy;
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v5 = stampCopy;
    v6 = [v5 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v38;
      v9 = *MEMORY[0x1E696A350];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v38 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          if (v11)
          {
            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            v13 = [defaultManager fileExistsAtPath:v11];

            if (v13)
            {
              defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
              v15 = [defaultManager2 attributesOfItemAtPath:v11 error:0];

              if (v15)
              {
                v16 = [v15 objectForKey:v9];

                if (v16)
                {
                  v17 = [v15 objectForKey:v9];
                  v47[0] = @"path";
                  v47[1] = @"lastModificationTime";
                  v48[0] = v11;
                  v48[1] = v17;
                  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
                  [v32 addObject:v18];
                }
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v7);
    }

    v19 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v44 = "+[CSOnDeviceCompilationUtils sortCachedIrsByLastAccessTimeStamp:]";
      v45 = 2112;
      v46 = v32;
      _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s cachedIrs info sorted by timestamps: %@", buf, 0x16u);
    }

    v20 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"lastModificationTime" ascending:1];
    v42 = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    v22 = [v32 sortedArrayUsingDescriptors:v21];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v33 + 1) + 8 * j) objectForKey:{@"path", v31}];
          [v4 addObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v25);
    }

    stampCopy = v31;
  }

  else
  {
    v4 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)getCachedIrFromMilFilePath:(id)path modelTye:(int64_t)tye asset:(id)asset
{
  assetCopy = asset;
  pathCopy = path;
  v10 = +[CSFPreferences sharedPreferences];
  getOnDeviceCompilationCacheDirectory = [v10 getOnDeviceCompilationCacheDirectory];

  v12 = [self getCachedIrFromMilFilePath:pathCopy modelTye:tye asset:assetCopy cachedIrHomePath:getOnDeviceCompilationCacheDirectory];

  return v12;
}

+ (id)getCachedIrFromMilFilePath:(id)path modelTye:(int64_t)tye asset:(id)asset cachedIrHomePath:(id)homePath
{
  pathCopy = path;
  assetCopy = asset;
  homePathCopy = homePath;
  if (pathCopy && [pathCopy hasSuffix:@"mil"])
  {
    v12 = [CSOnDeviceCompilationUtils getModelNameFromMilFilePath:pathCopy];
    v13 = [CSOnDeviceCompilationUtils getModelCompiledDirWithModelType:tye basePath:homePathCopy];
    v14 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
    configVersion = [assetCopy configVersion];
    hashFromResourcePath = [assetCopy hashFromResourcePath];
    v17 = [CSOnDeviceCompilationUtils getIrNameFromModelNameForCompile:v12 locale:v14 assetVersion:configVersion hashToUse:hashFromResourcePath];
    v18 = [v13 stringByAppendingPathComponent:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)getCachedIrFromConfigPath:(id)path modelTye:(int64_t)tye asset:(id)asset
{
  assetCopy = asset;
  v8 = [CSOnDeviceCompilationUtils readMilFilePathFromConfig:path modelType:tye];
  v9 = [CSOnDeviceCompilationUtils getCachedIrFromMilFilePath:v8 modelTye:tye asset:assetCopy];

  return v9;
}

+ (id)getCachedIrsFromCSAsset:(id)asset cachedIrDir:(id)dir
{
  assetCopy = asset;
  dirCopy = dir;
  v8 = dirCopy;
  v9 = 0;
  if (assetCopy && dirCopy)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [CSOnDeviceCompilationModelListDecoder decodeConfigFrom:assetCopy];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __66__CSOnDeviceCompilationUtils_getCachedIrsFromCSAsset_cachedIrDir___block_invoke;
    v28[3] = &unk_1E865BA08;
    v13 = v11;
    v29 = v13;
    v14 = assetCopy;
    v30 = v14;
    selfCopy = self;
    v15 = v12;
    v31 = v15;
    v16 = v10;
    v32 = v16;
    v17 = MEMORY[0x1E12BA300](v28);
    (v17)[2](v17, CSOnDeviceCompileSupportedVoiceTriggerModelTypes);
    if (!+[CSUtils isDarwinOS](CSUtils, "isDarwinOS") && !+[CSUtils isBridgeOS])
    {
      v17[2](v17, CSOnDeviceCompileSupportedMitigationModelTypes);
    }

    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __66__CSOnDeviceCompilationUtils_getCachedIrsFromCSAsset_cachedIrDir___block_invoke_2;
    v23 = &unk_1E865BA30;
    selfCopy2 = self;
    v24 = v14;
    v25 = v8;
    v26 = v15;
    v18 = v15;
    [v16 enumerateKeysAndObjectsUsingBlock:&v20];
    v9 = [v18 copy];
  }

  return v9;
}

void __66__CSOnDeviceCompilationUtils_getCachedIrsFromCSAsset_cachedIrDir___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [*(a1 + 32) objectForKeyedSubscript:v8];

        if (v9)
        {
          v10 = [*(a1 + 40) resourcePath];
          v11 = [*(a1 + 32) objectForKeyedSubscript:v8];
          v12 = [v10 stringByAppendingPathComponent:v11];

          v13 = [*(a1 + 64) getCachedIrFromMilFilePath:v12 modelTye:objc_msgSend(v8 asset:{"intValue"), *(a1 + 40)}];
          v14 = v13;
          if (v13)
          {
            v15 = *(a1 + 48);
            v16 = [v13 stringByStandardizingPath];
            [v15 addObject:v16];
          }
        }

        else
        {
          v12 = [*(a1 + 64) getModelConfigsWithAsset:*(a1 + 40) modelType:{objc_msgSend(v8, "intValue")}];
          if (v12)
          {
            [*(a1 + 56) setObject:v12 forKeyedSubscript:v8];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __66__CSOnDeviceCompilationUtils_getCachedIrsFromCSAsset_cachedIrDir___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 56) _getCachedIrsFromConfigFile:*(*(&v13 + 1) + 8 * v10) modelType:objc_msgSend(v5 CSAsset:"intValue") cachedIrDir:{*(a1 + 32), *(a1 + 40)}];
        if (v11)
        {
          [*(a1 + 48) addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (int64_t)getBackendTypeFromModelFile:(id)file
{
  fileCopy = file;
  if ([fileCopy hasSuffix:@".bnns.mil"])
  {
    v4 = 1;
  }

  else if ([fileCopy hasSuffix:@".mil"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getIrNameFromModelNameForCompile:(id)compile locale:(id)locale assetVersion:(id)version hashToUse:(id)use
{
  v6 = 0;
  if (version && locale && compile && use)
  {
    localeCopy = locale;
    v12 = [self _getBaseNamingWithHashToUse:use milName:compile configVersion:version];
    localeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%@", localeCopy];

    v14 = [v12 stringByAppendingString:localeCopy];

    v6 = [v14 stringByAppendingPathExtension:@"bnnsir"];
  }

  return v6;
}

+ (id)getModelNameFromMilFilePath:(id)path
{
  pathComponents = [path pathComponents];
  [pathComponents count];
  v4 = [pathComponents objectAtIndexedSubscript:{objc_msgSend(pathComponents, "count") - 2}];
  v5 = [v4 stringByReplacingOccurrencesOfString:@".mlmodelc" withString:&stru_1F58FE330];

  return v5;
}

+ (id)readMilFilePathFromConfig:(id)config modelType:(int64_t)type
{
  configCopy = config;
  if (!configCopy)
  {
    firstObject = 0;
    goto LABEL_18;
  }

  v6 = 0;
  if (type > 3)
  {
    firstObject = 0;
    if ((type - 4) >= 2)
    {
      goto LABEL_17;
    }
  }

  else if (type != 1)
  {
    if (type == 2)
    {
      firstObject = [CSFModelConfigDecoder decodeJsonFromFile:configCopy];
      stringByDeletingLastPathComponent = [configCopy stringByDeletingLastPathComponent];
      v9 = [CSFModelConfigDecoder getOdldModelFileFromConfigDict:firstObject resourcePath:stringByDeletingLastPathComponent];
      goto LABEL_13;
    }

    firstObject = 0;
    if (type == 3)
    {
      firstObject = [CSFModelConfigDecoder decodeJsonFromFile:configCopy];
      stringByDeletingLastPathComponent = [configCopy stringByDeletingLastPathComponent];
      v9 = [CSFModelConfigDecoder getNCModelFileFromConfigDict:firstObject resourcePath:stringByDeletingLastPathComponent];
LABEL_13:
      v6 = v9;

      if (v6 && [v6 hasSuffix:@"mil"])
      {
        v6 = v6;
        firstObject = v6;
      }

      else
      {
        firstObject = 0;
      }

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v10 = [CSUtils readValuesFromJsonFile:configCopy keyword:@"model-file"];
  firstObject = [v10 firstObject];

  if (firstObject)
  {
    stringByDeletingLastPathComponent = [configCopy stringByDeletingLastPathComponent];
    v9 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:firstObject];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_17:

LABEL_18:

  return firstObject;
}

@end