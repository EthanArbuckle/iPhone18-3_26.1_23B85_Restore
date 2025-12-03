@interface CSVoiceTriggerAssetHandlerFromFile
- (CSVoiceTriggerAssetHandlerFromFile)initWithDisableOnDeviceCompilation:(BOOL)compilation;
- (void)getVoiceTriggerAssetWithEndpointId:(id)id completion:(id)completion;
@end

@implementation CSVoiceTriggerAssetHandlerFromFile

- (void)getVoiceTriggerAssetWithEndpointId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v8 = +[CSFPreferences sharedPreferences];
  fakeVoiceTriggerAssetPath = [v8 fakeVoiceTriggerAssetPath];

  stringByDeletingLastPathComponent = [fakeVoiceTriggerAssetPath stringByDeletingLastPathComponent];
  v11 = +[NSFileManager defaultManager];
  v12 = [v11 fileExistsAtPath:fakeVoiceTriggerAssetPath];

  if (v12)
  {
    [CSAsset assetForAssetType:0 resourcePath:stringByDeletingLastPathComponent configVersion:@"override-asset" assetProvider:2];
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
      [(CSOnDeviceCompilationHandler *)onDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:v13 assetType:0 endpointId:idCopy errOut:&v17];
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v13, 0);
  }
}

- (CSVoiceTriggerAssetHandlerFromFile)initWithDisableOnDeviceCompilation:(BOOL)compilation
{
  v8.receiver = self;
  v8.super_class = CSVoiceTriggerAssetHandlerFromFile;
  v4 = [(CSVoiceTriggerAssetHandler *)&v8 init];
  if (v4)
  {
    if (!compilation)
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