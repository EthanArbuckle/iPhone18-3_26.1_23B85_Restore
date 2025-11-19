@interface CSFBnnsIrLookUp
+ (id)_generateHashBnnsIrPathForMilFile:(id)a3;
+ (id)getBnnsIrPathFromMilFile:(id)a3;
+ (id)readBnnsIrFromCacheMapWithMilFile:(id)a3;
+ (void)initialize;
+ (void)removeBnnsIrFromCacheMapWithMilFile:(id)a3;
+ (void)setCacheMapWithMilFile:(id)a3 bnnsIr:(id)a4;
@end

@implementation CSFBnnsIrLookUp

+ (id)_generateHashBnnsIrPathForMilFile:(id)a3
{
  v3 = [CSFHashUtils sha256HashStringFromInputString:a3];
  v4 = [v3 substringWithRange:{0, 10}];

  v5 = +[CSFPreferences sharedPreferences];
  v6 = [v5 getOnDeviceCompilationCacheDirectoryForBenchmark];

  v7 = [v6 stringByAppendingPathComponent:v4];
  v8 = [v7 stringByAppendingPathExtension:@"bnnsir"];

  return v8;
}

+ (void)removeBnnsIrFromCacheMapWithMilFile:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    os_unfair_lock_lock(&milBnnsIrCacheMapLock);
    [modelMilBnnsIrCacheMap removeObjectForKey:v4];
    os_unfair_lock_lock(&milBnnsIrCacheMapLock);
    v3 = v4;
  }
}

+ (void)setCacheMapWithMilFile:(id)a3 bnnsIr:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (v8 && v5)
  {
    os_unfair_lock_lock(&milBnnsIrCacheMapLock);
    v6 = modelMilBnnsIrCacheMap;
    v7 = [v8 stringByStandardizingPath];
    [v6 setObject:v5 forKey:v7];

    os_unfair_lock_unlock(&milBnnsIrCacheMapLock);
  }
}

+ (id)readBnnsIrFromCacheMapWithMilFile:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    os_unfair_lock_lock(&milBnnsIrCacheMapLock);
    v4 = modelMilBnnsIrCacheMap;
    v5 = [v3 stringByStandardizingPath];
    v6 = [v4 objectForKeyedSubscript:v5];

    os_unfair_lock_unlock(&milBnnsIrCacheMapLock);
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "+[CSFBnnsIrLookUp readBnnsIrFromCacheMapWithMilFile:]";
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s obtained bnnsir : %@ for milFile: %@", &v10, 0x20u);
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)getBnnsIrPathFromMilFile:(id)a3
{
  v4 = a3;
  if ([v4 hasSuffix:@"bnns.mil"])
  {
    v5 = [CSFBnnsIrLookUp readBnnsIrFromCacheMapWithMilFile:v4];
    if (!v5)
    {
      v5 = [a1 _generateHashBnnsIrPathForMilFile:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1 && +[CSFBnnsIrLookUp initialize]::onceToken != -1)
  {

    dispatch_once(&+[CSFBnnsIrLookUp initialize]::onceToken, &__block_literal_global_1105);
  }
}

uint64_t __29__CSFBnnsIrLookUp_initialize__block_invoke()
{
  modelMilBnnsIrCacheMap = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

@end