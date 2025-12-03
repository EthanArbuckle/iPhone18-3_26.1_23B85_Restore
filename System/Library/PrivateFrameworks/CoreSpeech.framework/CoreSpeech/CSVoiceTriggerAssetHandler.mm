@interface CSVoiceTriggerAssetHandler
+ (id)sharedHandler;
+ (id)sharedHandlerDisabledOnDeviceCompilation;
- (CSVoiceTriggerAssetHandler)init;
- (id)defaultFallbackModelIfNil:(id)nil;
- (void)getVoiceTriggerAssetWithEndpointId:(id)id completion:(id)completion;
- (void)mapAssetToExclaveKit:(id)kit completion:(id)completion;
- (void)notifyObservers:(id)observers endpointId:(id)id;
- (void)registerObserver:(id)observer;
- (void)retryMappingAssetToExclaveKit:(id)kit completion:(id)completion;
- (void)unregisterObserver:(id)observer;
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

- (void)retryMappingAssetToExclaveKit:(id)kit completion:(id)completion
{
  kitCopy = kit;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100053720;
  block[3] = &unk_1002533A0;
  selfCopy = self;
  v14 = completionCopy;
  v12 = kitCopy;
  v9 = kitCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

- (void)mapAssetToExclaveKit:(id)kit completion:(id)completion
{
  kitCopy = kit;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000539F0;
  block[3] = &unk_1002533A0;
  selfCopy = self;
  v14 = completionCopy;
  v12 = kitCopy;
  v9 = kitCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

- (void)notifyObservers:(id)observers endpointId:(id)id
{
  observersCopy = observers;
  idCopy = id;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100053CC4;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = idCopy;
  v13 = observersCopy;
  v9 = observersCopy;
  v10 = idCopy;
  dispatch_async(queue, block);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053EF4;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053F98;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (id)defaultFallbackModelIfNil:(id)nil
{
  nilCopy = nil;
  v4 = nilCopy;
  if (nilCopy)
  {
    v5 = nilCopy;
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

- (void)getVoiceTriggerAssetWithEndpointId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
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