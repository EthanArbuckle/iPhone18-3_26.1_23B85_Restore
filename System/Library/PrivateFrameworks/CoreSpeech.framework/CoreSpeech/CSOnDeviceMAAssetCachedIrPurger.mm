@interface CSOnDeviceMAAssetCachedIrPurger
+ (id)purgeCachedIrForMAAsset:(id)asset cachedIrDir:(id)dir;
@end

@implementation CSOnDeviceMAAssetCachedIrPurger

+ (id)purgeCachedIrForMAAsset:(id)asset cachedIrDir:(id)dir
{
  dirCopy = dir;
  v6 = dirCopy;
  if (asset && dirCopy)
  {
    v7 = [asset getCSAssetOfType:0];
    v8 = [CSOnDeviceCompilationUtils getCachedIrsFromCSAsset:v7 cachedIrDir:v6];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v20 = v7;
      v21 = v6;
      v11 = 0;
      v12 = *v24;
      do
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v23 + 1) + 8 * v13);
          v16 = [NSFileManager defaultManager:v20];
          v22 = v14;
          [v16 removeItemAtPath:v15 error:&v22];
          v11 = v22;

          v17 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v28 = "+[CSOnDeviceMAAssetCachedIrPurger purgeCachedIrForMAAsset:cachedIrDir:]";
            v29 = 2112;
            v30 = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s purging cachedIr with error: %@", buf, 0x16u);
          }

          v13 = v13 + 1;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v10);
      v7 = v20;
      v6 = v21;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v18 = CSErrorDomain;
    v32 = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithFormat:@"input nil"];
    v33 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v11 = [NSError errorWithDomain:v18 code:114 userInfo:v8];
  }

  return v11;
}

@end