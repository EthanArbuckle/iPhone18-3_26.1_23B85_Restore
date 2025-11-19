@interface CSVoiceTriggerAssetHandler
+ (id)sharedHandler;
+ (id)sharedHandlerDisabledOnDeviceCompilation;
- (CSVoiceTriggerAssetHandler)init;
- (id)defaultFallbackModelIfNil:(id)a3;
- (void)getVoiceTriggerAssetWithEndpointId:(id)a3 completion:(id)a4;
- (void)mapAssetToExclaveKit:(id)a3 completion:(id)a4;
- (void)notifyObservers:(id)a3 endpointId:(id)a4;
- (void)registerObserver:(id)a3;
- (void)retryMappingAssetToExclaveKit:(id)a3 completion:(id)a4;
- (void)unregisterObserver:(id)a3;
@end

@implementation CSVoiceTriggerAssetHandler

+ (id)sharedHandler
{
  if (qword_10029E0F0 != -1)
  {
    dispatch_once(&qword_10029E0F0, &stru_10024F440);
  }

  v3 = qword_10029E0E8;

  return v3;
}

- (void)retryMappingAssetToExclaveKit:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100053720;
  block[3] = &unk_1002533A0;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)mapAssetToExclaveKit:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000539F0;
  block[3] = &unk_1002533A0;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)notifyObservers:(id)a3 endpointId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100053CC4;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053EF4;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053F98;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)defaultFallbackModelIfNil:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSVoiceTriggerAssetHandler defaultFallbackModelIfNil:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Cannot find voicetrigger asset from asset manager, let's fallback to asset in the framework", &v9, 0xCu);
    }

    v5 = +[CSAsset defaultFallBackAssetForVoiceTrigger];
  }

  v7 = v5;

  return v7;
}

- (void)getVoiceTriggerAssetWithEndpointId:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[CSVoiceTriggerAssetHandler getVoiceTriggerAssetWithEndpointId:completion:]", "CSVoiceTriggerAssetHandler.m", 105, "NO");
}

- (CSVoiceTriggerAssetHandler)init
{
  v10.receiver = self;
  v10.super_class = CSVoiceTriggerAssetHandler;
  v2 = [(CSVoiceTriggerAssetHandler *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSVoiceTriggerAssetHandler", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = +[CSUAFAssetManager sharedInstance];
    uafAssetManager = v2->_uafAssetManager;
    v2->_uafAssetManager = v7;
  }

  return v2;
}

+ (id)sharedHandlerDisabledOnDeviceCompilation
{
  if (qword_10029E100 != -1)
  {
    dispatch_once(&qword_10029E100, &stru_10024F460);
  }

  v3 = qword_10029E0F8;

  return v3;
}

@end