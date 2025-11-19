@interface CSOnDeviceCompilationUtils
+ (BOOL)isBnnsIrNameForCurrentBuild:(id)a3;
+ (BOOL)validateSecondPassCheckerCompilation:(id)a3 error:(id *)a4;
+ (id)_getBaseNamingWithHashToUse:(id)a3 milName:(id)a4 configVersion:(id)a5;
+ (id)_getCachedIrsFromConfigFile:(id)a3 modelType:(int64_t)a4 CSAsset:(id)a5 cachedIrDir:(id)a6;
+ (id)getCachedIrFromConfigPath:(id)a3 modelTye:(int64_t)a4 asset:(id)a5;
+ (id)getCachedIrFromMilFilePath:(id)a3 modelTye:(int64_t)a4 asset:(id)a5;
+ (id)getCachedIrFromMilFilePath:(id)a3 modelTye:(int64_t)a4 asset:(id)a5 cachedIrHomePath:(id)a6;
+ (id)getCachedIrsFromCSAsset:(id)a3 cachedIrDir:(id)a4;
+ (id)getIrNameFromModelNameForCompile:(id)a3 locale:(id)a4 assetVersion:(id)a5 hashToUse:(id)a6;
+ (id)getModelCompiledDirWithModelType:(int64_t)a3 basePath:(id)a4;
+ (id)getModelConfigsWithAsset:(id)a3 modelType:(int64_t)a4;
+ (id)getModelNameFromMilFilePath:(id)a3;
+ (id)readMilFilePathFromConfig:(id)a3 modelType:(int64_t)a4;
+ (id)sortCachedIrsByLastAccessTimeStamp:(id)a3;
+ (int64_t)getBackendTypeFromModelFile:(id)a3;
@end

@implementation CSOnDeviceCompilationUtils

+ (BOOL)validateSecondPassCheckerCompilation:(id)a3 error:(id *)a4
{
  v55[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = [CSVoiceTriggerSecondPassConfigDecoder decodeConfigFrom:v5 forFirstPassSource:0];
    v7 = [v6 configPathRecognizer];
    if (v7 && ([MEMORY[0x1E696AC08] defaultManager], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "fileExistsAtPath:", v7), v8, (v9 & 1) != 0))
    {
      v10 = [CSOnDeviceCompilationUtils readMilFilePathFromConfig:v7 modelType:1];
      if (v10)
      {
        v11 = [MEMORY[0x1E696AC08] defaultManager];
        v12 = [v11 fileExistsAtPath:v10];

        if (v12)
        {
          v13 = [CSOnDeviceCompilationUtils getMilConfigFromMilFilePath:v10];
          v14 = objc_alloc(MEMORY[0x1E696AEC0]);
          v15 = [v5 identity];
          v16 = [v14 initWithFormat:@"%@.temp.bnnsir", v15];

          v17 = NSTemporaryDirectory();
          v46 = v16;
          v18 = [v17 stringByAppendingPathComponent:v16];

          v47 = 0;
          [MEMORY[0x1E699BA40] compileWithModelMilPath:v10 bnnsIrOutPath:v18 milConfigPath:v13 errorOut:&v47];
          v19 = v47;
          v20 = v19;
          if (a4 && v19)
          {
            v21 = [v19 localizedDescription];
            v43 = *MEMORY[0x1E699B9B0];
            v44 = MEMORY[0x1E696ABC0];
            v48 = *MEMORY[0x1E696A578];
            v22 = v21;
            v45 = v18;
            v42 = v20;
            if ([v22 containsString:@"bnns error message: "] && (v23 = objc_msgSend(v22, "rangeOfString:", @"bnns error message: "), v23 != 0x7FFFFFFFFFFFFFFFLL))
            {
              v33 = [v22 substringFromIndex:v23 + v24];
              v41 = [v33 componentsSeparatedByString:@"[stack trace: ]"];
              v25 = [v41 firstObject];
            }

            else
            {
              v25 = @"Unkown error";
            }

            v49 = v25;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
            v35 = v34 = v22;
            *a4 = [v44 errorWithDomain:v43 code:3 userInfo:v35];

            v18 = v45;
            v20 = v42;
          }

          v36 = [MEMORY[0x1E696AC08] defaultManager];
          v37 = [v36 fileExistsAtPath:v18];

          if (v37)
          {
            v38 = [MEMORY[0x1E696AC08] defaultManager];
            [v38 removeItemAtPath:v18 error:0];
          }

          v28 = v20 == 0;

          goto LABEL_25;
        }
      }

      if (a4)
      {
        v31 = MEMORY[0x1E696ABC0];
        v32 = *MEMORY[0x1E699B9B0];
        v50 = *MEMORY[0x1E696A578];
        v51 = @"mil file path is not found";
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        [v31 errorWithDomain:v32 code:3 userInfo:v13];
        *a4 = v28 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v28 = 0;
    }

    else
    {
      if (!a4)
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
      *a4 = v28 = 0;
    }

LABEL_26:

    goto LABEL_27;
  }

  if (a4)
  {
    v29 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E699B9B0];
    v54 = *MEMORY[0x1E696A578];
    v55[0] = @"asset is nil";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    [v29 errorWithDomain:v30 code:3 userInfo:v6];
    *a4 = v28 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v28 = 0;
LABEL_29:

  v39 = *MEMORY[0x1E69E9840];
  return v28;
}

+ (id)_getCachedIrsFromConfigFile:(id)a3 modelType:(int64_t)a4 CSAsset:(id)a5 cachedIrDir:(id)a6
{
  v9 = a5;
  v10 = [CSOnDeviceCompilationUtils readMilFilePathFromConfig:a3 modelType:a4];
  if (v10)
  {
    v11 = [a1 getCachedIrFromMilFilePath:v10 modelTye:a4 asset:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_getBaseNamingWithHashToUse:(id)a3 milName:(id)a4 configVersion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = MGGetStringAnswer();
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@-%@", v10, v9, v8, v7];

  return v11;
}

+ (id)getModelConfigsWithAsset:(id)a3 modelType:(int64_t)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v13 = [CSVoiceTriggerSecondPassConfigDecoder fetchAllVoiceTriggerSecondPassRecognizer:v5];
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_25;
      }

      v13 = [v5 getAllNldaConfigFiles];
    }

    goto LABEL_24;
  }

  switch(a4)
  {
    case 3:
      v13 = [v5 getAllMitigationConfigFiles];
LABEL_24:
      v7 = v13;
      break;
    case 4:
      v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v14 = [v6 progCheckerRecognizerConfigFiles];
      v15 = [v6 contConvRecognizerConfigFiles];
      if (v14)
      {
        [v12 addObjectsFromArray:v14];
      }

      if (v15)
      {
        [v12 addObjectsFromArray:v15];
      }

      v7 = [v12 allObjects];

      goto LABEL_22;
    case 5:
      v7 = [v5 resourcePath];

      if (v7)
      {
        if (CSIsHorseman_onceToken != -1)
        {
          dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
        }

        v8 = CSIsHorseman_isHorseman;
        v9 = [v6 resourcePath];
        v10 = v9;
        if (v8)
        {
          v11 = @"spid/spid.json";
        }

        else
        {
          v11 = @"sr/sr.json";
        }

        v12 = [v9 stringByAppendingPathComponent:v11];

        if (v12)
        {
          v18[0] = v12;
          v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        }

        else
        {
          v7 = 0;
        }

LABEL_22:
      }

      break;
  }

LABEL_25:

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)getModelCompiledDirWithModelType:(int64_t)a3 basePath:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (a3 > 2)
  {
    switch(a3)
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
    switch(a3)
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
        v9 = [v5 stringByAppendingPathComponent:v7];
        goto LABEL_18;
    }
  }

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "+[CSOnDeviceCompilationUtils getModelCompiledDirWithModelType:basePath:]";
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Does not support model type: %lu", &v12, 0x16u);
  }

  v9 = 0;
LABEL_18:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (BOOL)isBnnsIrNameForCurrentBuild:(id)a3
{
  v3 = a3;
  v4 = MGGetStringAnswer();
  v5 = [v3 hasPrefix:v4];

  return v5;
}

+ (id)sortCachedIrsByLastAccessTimeStamp:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = v3;
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v5 = v3;
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
            v12 = [MEMORY[0x1E696AC08] defaultManager];
            v13 = [v12 fileExistsAtPath:v11];

            if (v13)
            {
              v14 = [MEMORY[0x1E696AC08] defaultManager];
              v15 = [v14 attributesOfItemAtPath:v11 error:0];

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

    v3 = v31;
  }

  else
  {
    v4 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)getCachedIrFromMilFilePath:(id)a3 modelTye:(int64_t)a4 asset:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[CSFPreferences sharedPreferences];
  v11 = [v10 getOnDeviceCompilationCacheDirectory];

  v12 = [a1 getCachedIrFromMilFilePath:v9 modelTye:a4 asset:v8 cachedIrHomePath:v11];

  return v12;
}

+ (id)getCachedIrFromMilFilePath:(id)a3 modelTye:(int64_t)a4 asset:(id)a5 cachedIrHomePath:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (v9 && [v9 hasSuffix:@"mil"])
  {
    v12 = [CSOnDeviceCompilationUtils getModelNameFromMilFilePath:v9];
    v13 = [CSOnDeviceCompilationUtils getModelCompiledDirWithModelType:a4 basePath:v11];
    v14 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
    v15 = [v10 configVersion];
    v16 = [v10 hashFromResourcePath];
    v17 = [CSOnDeviceCompilationUtils getIrNameFromModelNameForCompile:v12 locale:v14 assetVersion:v15 hashToUse:v16];
    v18 = [v13 stringByAppendingPathComponent:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)getCachedIrFromConfigPath:(id)a3 modelTye:(int64_t)a4 asset:(id)a5
{
  v7 = a5;
  v8 = [CSOnDeviceCompilationUtils readMilFilePathFromConfig:a3 modelType:a4];
  v9 = [CSOnDeviceCompilationUtils getCachedIrFromMilFilePath:v8 modelTye:a4 asset:v7];

  return v9;
}

+ (id)getCachedIrsFromCSAsset:(id)a3 cachedIrDir:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [CSOnDeviceCompilationModelListDecoder decodeConfigFrom:v6];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __66__CSOnDeviceCompilationUtils_getCachedIrsFromCSAsset_cachedIrDir___block_invoke;
    v28[3] = &unk_1E865BA08;
    v13 = v11;
    v29 = v13;
    v14 = v6;
    v30 = v14;
    v33 = a1;
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
    v27 = a1;
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

+ (int64_t)getBackendTypeFromModelFile:(id)a3
{
  v3 = a3;
  if ([v3 hasSuffix:@".bnns.mil"])
  {
    v4 = 1;
  }

  else if ([v3 hasSuffix:@".mil"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getIrNameFromModelNameForCompile:(id)a3 locale:(id)a4 assetVersion:(id)a5 hashToUse:(id)a6
{
  v6 = 0;
  if (a5 && a4 && a3 && a6)
  {
    v11 = a4;
    v12 = [a1 _getBaseNamingWithHashToUse:a6 milName:a3 configVersion:a5];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%@", v11];

    v14 = [v12 stringByAppendingString:v13];

    v6 = [v14 stringByAppendingPathExtension:@"bnnsir"];
  }

  return v6;
}

+ (id)getModelNameFromMilFilePath:(id)a3
{
  v3 = [a3 pathComponents];
  [v3 count];
  v4 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 2}];
  v5 = [v4 stringByReplacingOccurrencesOfString:@".mlmodelc" withString:&stru_1F58FE330];

  return v5;
}

+ (id)readMilFilePathFromConfig:(id)a3 modelType:(int64_t)a4
{
  v5 = a3;
  if (!v5)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v6 = 0;
  if (a4 > 3)
  {
    v7 = 0;
    if ((a4 - 4) >= 2)
    {
      goto LABEL_17;
    }
  }

  else if (a4 != 1)
  {
    if (a4 == 2)
    {
      v7 = [CSFModelConfigDecoder decodeJsonFromFile:v5];
      v8 = [v5 stringByDeletingLastPathComponent];
      v9 = [CSFModelConfigDecoder getOdldModelFileFromConfigDict:v7 resourcePath:v8];
      goto LABEL_13;
    }

    v7 = 0;
    if (a4 == 3)
    {
      v7 = [CSFModelConfigDecoder decodeJsonFromFile:v5];
      v8 = [v5 stringByDeletingLastPathComponent];
      v9 = [CSFModelConfigDecoder getNCModelFileFromConfigDict:v7 resourcePath:v8];
LABEL_13:
      v6 = v9;

      if (v6 && [v6 hasSuffix:@"mil"])
      {
        v6 = v6;
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v10 = [CSUtils readValuesFromJsonFile:v5 keyword:@"model-file"];
  v7 = [v10 firstObject];

  if (v7)
  {
    v8 = [v5 stringByDeletingLastPathComponent];
    v9 = [v8 stringByAppendingPathComponent:v7];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_17:

LABEL_18:

  return v7;
}

@end