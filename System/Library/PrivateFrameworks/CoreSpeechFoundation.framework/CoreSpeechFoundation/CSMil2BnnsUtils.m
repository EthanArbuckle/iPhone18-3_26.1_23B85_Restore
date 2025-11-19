@interface CSMil2BnnsUtils
+ (BOOL)_isBnnsIrReadable:(id)a3;
+ (id)compileModelWithMilFile:(id)a3 bnnsIrCachePath:(id)a4 compilationFramework:(int64_t)a5;
+ (id)readBnnsIrFromCacheMapWithMilFile:(id)a3;
+ (id)readBnnsIrFromModelConfig:(id)a3 modelType:(int64_t)a4;
+ (void)_changePermissionOfBnnsIr:(id)a3;
+ (void)_compileWithExceptionHandlingUsingModelFilePath:(id)a3 bnnsIrPath:(id)a4 milConfigPath:(id)a5 compilationFramework:(int64_t)a6 error:(id *)a7;
+ (void)removeConfigFromQuasarComputeEngineCacheWithMilBnnsPath:(id)a3 bnnsIrPath:(id)a4;
@end

@implementation CSMil2BnnsUtils

+ (void)_changePermissionOfBnnsIr:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = *MEMORY[0x1E696A370];
  v16[0] = &unk_1F5916748;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = 0;
  v6 = [v4 setAttributes:v5 ofItemAtPath:v3 error:&v10];
  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "+[CSMil2BnnsUtils _changePermissionOfBnnsIr:]";
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Error setting file permissions: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)_compileWithExceptionHandlingUsingModelFilePath:(id)a3 bnnsIrPath:(id)a4 milConfigPath:(id)a5 compilationFramework:(int64_t)a6 error:(id *)a7
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [[CSOSTransaction alloc] initWithDescription:@"Mil2Bnns compilation"];
  if (a6 == 2)
  {
    v15 = [CSFModelComputeBackendUtils compileWithMilFile:v11 bnnsIrPath:v12];
  }

  else if (a6 == 1)
  {
    v20 = 0;
    [MEMORY[0x1E699BA40] compileWithModelMilPath:v11 bnnsIrOutPath:v12 milConfigPath:v13 errorOut:&v20];
    v15 = v20;
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2251 userInfo:&unk_1F5916568];
  }

  v16 = v15;
  if (v15)
  {
    v17 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      if (!a7)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    *buf = 136315906;
    v22 = "+[CSMil2BnnsUtils _compileWithExceptionHandlingUsingModelFilePath:bnnsIrPath:milConfigPath:compilationFramework:error:]";
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v16;
    _os_log_error_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_ERROR, "%s mil2Bnns compilation error for modelFilePath: %@ to bnnsIrCachePath: %@ with error: %@", buf, 0x2Au);
    if (a7)
    {
LABEL_9:
      v18 = v16;
      *a7 = v16;
    }
  }

LABEL_10:
  if (v14)
  {
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_isBnnsIrReadable:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = open([v3 UTF8String], 0);
  v5 = v4;
  if (v4 == -1)
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = __error();
      v13 = strerror(*v12);
      v20.st_dev = 136315394;
      *&v20.st_mode = "+[CSMil2BnnsUtils _isBnnsIrReadable:]";
      WORD2(v20.st_ino) = 2080;
      *(&v20.st_ino + 6) = v13;
      _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s Could not read OPEN() BNNSIR: %s", &v20, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v6 = fstat(v4, &v20);
    close(v5);
    v7 = v6 == 0;
    if (v6)
    {
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = __error();
        v10 = strerror(*v9);
        v16 = 136315394;
        v17 = "+[CSMil2BnnsUtils _isBnnsIrReadable:]";
        v18 = 2080;
        v19 = v10;
        _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Could not fstat() BNNSIR: %s", &v16, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)readBnnsIrFromCacheMapWithMilFile:(id)a3
{
  v3 = [CSFBnnsIrLookUp readBnnsIrFromCacheMapWithMilFile:a3];

  return v3;
}

+ (id)readBnnsIrFromModelConfig:(id)a3 modelType:(int64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [CSOnDeviceCompilationUtils readMilFilePathFromConfig:a3 modelType:a4];
  if ([CSOnDeviceCompilationUtils getBackendTypeFromModelFile:v5]== 1)
  {
    v6 = [v5 stringByStandardizingPath];
    v7 = [a1 readBnnsIrFromCacheMapWithMilFile:v6];
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "+[CSMil2BnnsUtils readBnnsIrFromModelConfig:modelType:]";
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Only mil2Bnns is supported for prewarm", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)removeConfigFromQuasarComputeEngineCacheWithMilBnnsPath:(id)a3 bnnsIrPath:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 stringByStandardizingPath];
  v9 = [v7 stringByStandardizingPath];
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [a1 readBnnsIrFromCacheMapWithMilFile:v8];
    if ([v11 isEqualToString:v10])
    {
      [CSFBnnsIrLookUp removeBnnsIrFromCacheMapWithMilFile:v8];
      v12 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315394;
        v15 = "+[CSMil2BnnsUtils removeConfigFromQuasarComputeEngineCacheWithMilBnnsPath:bnnsIrPath:]";
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s removing milBnns model file path from cacheMap :%@", &v14, 0x16u);
      }
    }
  }

  MEMORY[0x1E12B97A0](CSModelEngineCacheLookUpHandler);

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)compileModelWithMilFile:(id)a3 bnnsIrCachePath:(id)a4 compilationFramework:(int64_t)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v37 = "+[CSMil2BnnsUtils compileModelWithMilFile:bnnsIrCachePath:compilationFramework:]";
    v38 = 2112;
    v39 = v7;
    v40 = 2112;
    v41 = v8;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Compile MIL: %@ to BNNS IR: %@", buf, 0x20u);
  }

  v28 = [CSOnDeviceCompilationUtils getMilConfigFromMilFilePath:v7];
  v10 = [v8 stringByDeletingLastPathComponent];
  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v33 = 0;
  if ([v11 fileExistsAtPath:v10 isDirectory:&v33])
  {
    v12 = 0;
    goto LABEL_6;
  }

  v32 = 0;
  v13 = [v11 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v32];
  v12 = v32;
  if (v13)
  {
LABEL_6:
    if ([v11 fileExistsAtPath:v8])
    {
      v14 = [a1 _isBnnsIrReadable:v8];
      v15 = CSLogContextFacilityCoreSpeech;
      if (v14)
      {
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v37 = "+[CSMil2BnnsUtils compileModelWithMilFile:bnnsIrCachePath:compilationFramework:]";
          v38 = 2112;
          v39 = v8;
          _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s bnnsIr already existed, touch file but skipping compilation for: %@", buf, 0x16u);
        }

        v34 = *MEMORY[0x1E696A350];
        v16 = [MEMORY[0x1E695DF00] date];
        v35 = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

        v18 = 0;
        [v11 setAttributes:v17 ofItemAtPath:v8 error:0];
      }

      else
      {
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v37 = "+[CSMil2BnnsUtils compileModelWithMilFile:bnnsIrCachePath:compilationFramework:]";
          v38 = 2112;
          v39 = v8;
          _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, "%s can't open bnnsIr: %@, recompiling to a new bnnsir file", buf, 0x16u);
        }

        v21 = [MEMORY[0x1E696AC08] defaultManager];
        v30 = 0;
        [v21 removeItemAtPath:v8 error:&v30];
        v17 = v30;

        v22 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v37 = "+[CSMil2BnnsUtils compileModelWithMilFile:bnnsIrCachePath:compilationFramework:]";
          v38 = 2112;
          v39 = v17;
          _os_log_error_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_ERROR, "%s Invalid bnnsIr removal error: %@", buf, 0x16u);
        }

        v29 = 0;
        [a1 _compileWithExceptionHandlingUsingModelFilePath:v7 bnnsIrPath:v8 milConfigPath:v28 compilationFramework:a5 error:&v29];
        v18 = v29;
      }
    }

    else
    {
      v31 = 0;
      [a1 _compileWithExceptionHandlingUsingModelFilePath:v7 bnnsIrPath:v8 milConfigPath:v28 compilationFramework:a5 error:&v31];
      v18 = v31;
      if (v18)
      {
LABEL_24:
        v20 = v18;

        goto LABEL_25;
      }
    }

    v23 = [v7 stringByStandardizingPath];
    v24 = [v8 stringByStandardizingPath];
    [CSFBnnsIrLookUp setCacheMapWithMilFile:v23 bnnsIr:v24];

    if (a5 == 1)
    {
      MEMORY[0x1E12B97A0](CSModelEngineCacheLookUpHandler);
    }

    goto LABEL_24;
  }

  v19 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "+[CSMil2BnnsUtils compileModelWithMilFile:bnnsIrCachePath:compilationFramework:]";
    v38 = 2112;
    v39 = v12;
    _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s Creating model directory not success %@", buf, 0x16u);
  }

  v12 = v12;
  v20 = v12;
LABEL_25:

  v25 = *MEMORY[0x1E69E9840];

  return v20;
}

@end