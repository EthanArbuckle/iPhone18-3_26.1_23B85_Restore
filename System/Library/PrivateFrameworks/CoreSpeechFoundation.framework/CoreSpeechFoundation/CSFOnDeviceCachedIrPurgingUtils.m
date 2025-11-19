@interface CSFOnDeviceCachedIrPurgingUtils
+ (void)cleanUpLegacyCachedIrDir:(id)a3;
+ (void)cleanUpPreviousBuildBnnsIrInCachedIrDir:(id)a3;
+ (void)purgeCachedIrExceptActiveCachedIrs:(id)a3 cachedIrDir:(id)a4;
+ (void)purgeCachedIrForTrialAssetExcludingCurrentAsset:(id)a3 baseCachedIrDir:(id)a4;
+ (void)removeOnDeviceCachedPath;
@end

@implementation CSFOnDeviceCachedIrPurgingUtils

+ (void)purgeCachedIrForTrialAssetExcludingCurrentAsset:(id)a3 baseCachedIrDir:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [CSOnDeviceCompilationUtils getCachedIrsFromCSAsset:v5 cachedIrDir:v6];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __99__CSFOnDeviceCachedIrPurgingUtils_purgeCachedIrForTrialAssetExcludingCurrentAsset_baseCachedIrDir___block_invoke;
    v15 = &unk_1E865C030;
    v16 = v6;
    v8 = v7;
    v17 = v8;
    v9 = MEMORY[0x1E12BA300](&v12);
    if (![v5 assetType])
    {
      (v9)[2](v9, CSOnDeviceCompileSupportedVoiceTriggerModelTypes);
    }

    if ([v5 assetType] == 6)
    {
      v9[2](v9, CSOnDeviceCompileSupportedMitigationModelTypes);
    }
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrForTrialAssetExcludingCurrentAsset:baseCachedIrDir:]";
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s cachedIrDir specified as nil for purging", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __99__CSFOnDeviceCachedIrPurgingUtils_purgeCachedIrForTrialAssetExcludingCurrentAsset_baseCachedIrDir___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = +[CSOnDeviceCompilationUtils getModelCompiledDirWithModelType:basePath:](CSOnDeviceCompilationUtils, "getModelCompiledDirWithModelType:basePath:", [*(*(&v10 + 1) + 8 * v7) intValue], *(a1 + 32));
        [CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:*(a1 + 40) cachedIrDir:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)removeOnDeviceCachedPath
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[CSFPreferences sharedPreferences];
  v3 = [v2 getOnDeviceCompilationCacheDirectory];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = 0;
  [v4 removeItemAtPath:v3 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "+[CSFOnDeviceCachedIrPurgingUtils removeOnDeviceCachedPath]";
      v11 = 2112;
      v12 = v5;
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s cleanUpOnDeviceCompilationPath cleanup has error: %@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)cleanUpLegacyCachedIrDir:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = 0;
    [v6 removeItemAtPath:v3 error:&v10];
    v7 = v10;

    if (v7)
    {
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = "+[CSFOnDeviceCachedIrPurgingUtils cleanUpLegacyCachedIrDir:]";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s removing legacy path with error: %@", buf, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)cleanUpPreviousBuildBnnsIrInCachedIrDir:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:0];

  if (v5 && [v5 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          if (![CSOnDeviceCompilationUtils isBnnsIrNameForCurrentBuild:v11])
          {
            v12 = [v3 stringByAppendingPathComponent:v11];
            v13 = [v12 stringByStandardizingPath];

            v23 = 0;
            v14 = [MEMORY[0x1E696AC08] defaultManager];
            v15 = [v14 fileExistsAtPath:v13 isDirectory:&v23];

            if (v15)
            {
              if (v23 == 1)
              {
                [a1 cleanUpPreviousBuildBnnsIrInCachedIrDir:v13];
              }

              else
              {
                v16 = [MEMORY[0x1E696AC08] defaultManager];
                v22 = 0;
                [v16 removeItemAtPath:v13 error:&v22];
                v17 = v22;

                v18 = CSLogContextFacilityCoreSpeech;
                if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v29 = "+[CSFOnDeviceCachedIrPurgingUtils cleanUpPreviousBuildBnnsIrInCachedIrDir:]";
                  v30 = 2112;
                  v31 = v13;
                  v32 = 2112;
                  v33 = v17;
                  _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEFAULT, "%s remove folders or file for daemon start cleanup: %@ with error: %@", buf, 0x20u);
                }
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v8);
    }

    v5 = v20;
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (void)purgeCachedIrExceptActiveCachedIrs:(id)a3 cachedIrDir:(id)a4
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v76 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:cachedIrDir:]";
    v77 = 2112;
    v78 = v5;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Current active Irs: %@", buf, 0x16u);
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v74 = 0;
  v9 = [v8 contentsOfDirectoryAtPath:v6 error:&v74];
  v10 = v74;

  if (v10)
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v76 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:cachedIrDir:]";
      v77 = 2112;
      v78 = v10;
      _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s Can't fetch files within bnns cached ir folder with error: %@", buf, 0x16u);
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self ENDSWITH '.bnnsir'"];
    v13 = [v9 filteredArrayUsingPredicate:v12];

    if (v13 && [v13 count])
    {
      v51 = v9;
      v53 = v5;
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v52 = v13;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v70 objects:v84 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v71;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v71 != v18)
            {
              objc_enumerationMutation(v15);
            }

            if (*(*(&v70 + 1) + 8 * i))
            {
              v20 = [v6 stringByAppendingPathComponent:?];
              v21 = [v20 stringByStandardizingPath];
              [v14 addObject:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v70 objects:v84 count:16];
        }

        while (v17);
      }

      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v23 = v53;
      v24 = [v23 countByEnumeratingWithState:&v66 objects:v83 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v67;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v67 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [*(*(&v66 + 1) + 8 * j) stringByStandardizingPath];
            [v22 addObject:v28];
          }

          v25 = [v23 countByEnumeratingWithState:&v66 objects:v83 count:16];
        }

        while (v25);
      }

      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v30 = v14;
      v31 = [v30 countByEnumeratingWithState:&v62 objects:v82 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v63;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v63 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v62 + 1) + 8 * k);
            if (([v22 containsObject:v35] & 1) == 0)
            {
              [v29 addObject:v35];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v62 objects:v82 count:16];
        }

        while (v32);
      }

      v36 = [CSOnDeviceCompilationUtils sortCachedIrsByLastAccessTimeStamp:v29];
      v37 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v76 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:cachedIrDir:]";
        v77 = 2112;
        v78 = v36;
        _os_log_impl(&dword_1DDA4B000, v37, OS_LOG_TYPE_DEFAULT, "%s All cached Irs sorted by modification timestamps: %@", buf, 0x16u);
      }

      v13 = v52;
      if ([v36 count] > 1)
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v50 = v36;
        obj = v36;
        v40 = [obj countByEnumeratingWithState:&v58 objects:v81 count:16];
        if (v40)
        {
          v41 = 0;
          v10 = 0;
          v55 = *v59;
LABEL_44:
          v42 = 0;
          v43 = ~v41;
          v49 = v41 + v40;
          v44 = v10;
          v54 = v40;
          while (1)
          {
            if (*v59 != v55)
            {
              objc_enumerationMutation(obj);
            }

            v45 = *(*(&v58 + 1) + 8 * v42);
            v46 = [MEMORY[0x1E696AC08] defaultManager];
            v57 = v44;
            [v46 removeItemAtPath:v45 error:&v57];
            v10 = v57;

            v47 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v76 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:cachedIrDir:]";
              v77 = 2112;
              v78 = v45;
              v79 = 2112;
              v80 = v10;
              _os_log_impl(&dword_1DDA4B000, v47, OS_LOG_TYPE_DEFAULT, "%s removing cachedIr: %@ with error: %@", buf, 0x20u);
            }

            if (([obj count] + v43) < 2)
            {
              break;
            }

            ++v42;
            --v43;
            v44 = v10;
            if (v54 == v42)
            {
              v40 = [obj countByEnumeratingWithState:&v58 objects:v81 count:16];
              v41 = v49;
              if (v40)
              {
                goto LABEL_44;
              }

              break;
            }
          }
        }

        else
        {
          v10 = 0;
        }

        v13 = v52;
        v5 = v53;
        v36 = v50;
      }

      else
      {
        v38 = CSLogContextFacilityCoreSpeech;
        v5 = v53;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v76 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:cachedIrDir:]";
          v77 = 2048;
          v78 = 1;
          _os_log_impl(&dword_1DDA4B000, v38, OS_LOG_TYPE_DEFAULT, "%s No need to purge as all cached Irs count less than %lu", buf, 0x16u);
        }

        v10 = 0;
      }

      v9 = v51;
    }

    else
    {
      v39 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v76 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:cachedIrDir:]";
        v77 = 2112;
        v78 = v6;
        _os_log_impl(&dword_1DDA4B000, v39, OS_LOG_TYPE_DEFAULT, "%s No Cached Irs found in directory: %@", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

@end