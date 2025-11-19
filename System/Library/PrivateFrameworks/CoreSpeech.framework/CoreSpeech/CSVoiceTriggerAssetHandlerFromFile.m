@interface CSVoiceTriggerAssetHandlerFromFile
- (CSVoiceTriggerAssetHandlerFromFile)initWithDisableOnDeviceCompilation:(BOOL)a3;
- (void)getVoiceTriggerAssetWithEndpointId:(id)a3 completion:(id)a4;
@end

@implementation CSVoiceTriggerAssetHandlerFromFile

- (void)getVoiceTriggerAssetWithEndpointId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CSFPreferences sharedPreferences];
  v9 = [v8 fakeVoiceTriggerAssetPath];

  v10 = [v9 stringByDeletingLastPathComponent];
  v11 = +[NSFileManager defaultManager];
  v12 = [v11 fileExistsAtPath:v9];

  if (v12)
  {
    [CSAsset assetForAssetType:0 resourcePath:v10 configVersion:@"override-asset" assetProvider:2];
  }

  else
  {
    +[CSAsset defaultFallBackAssetForVoiceTrigger];
  }
  v13 = ;
  if (v13)
  {
    onDeviceCompilationHandler = self->_onDeviceCompilationHandler;
    if (onDeviceCompilationHandler)
    {
      v17 = 0;
      [(CSOnDeviceCompilationHandler *)onDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:v13 assetType:0 endpointId:v6 errOut:&v17];
      v15 = v17;
      v16 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "[CSVoiceTriggerAssetHandlerFromFile getVoiceTriggerAssetWithEndpointId:completion:]";
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Compile cached asset to onDevice CacheIr with error: %@", buf, 0x16u);
      }
    }
  }

  if (v7)
  {
    v7[2](v7, v13, 0);
  }
}

- (CSVoiceTriggerAssetHandlerFromFile)initWithDisableOnDeviceCompilation:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CSVoiceTriggerAssetHandlerFromFile;
  v4 = [(CSVoiceTriggerAssetHandler *)&v8 init];
  if (v4)
  {
    if (!a3)
    {
      v5 = +[CSOnDeviceCompilationHandler sharedHandler];
      onDeviceCompilationHandler = v4->_onDeviceCompilationHandler;
      v4->_onDeviceCompilationHandler = v5;
    }

    [(CSVoiceTriggerAssetHandlerFromFile *)v4 start];
  }

  return v4;
}

@end