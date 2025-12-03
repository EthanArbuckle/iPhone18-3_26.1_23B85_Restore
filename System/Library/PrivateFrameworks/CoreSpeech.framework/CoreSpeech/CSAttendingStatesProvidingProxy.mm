@interface CSAttendingStatesProvidingProxy
- (CSAttendingHintProviding)hintProvider;
- (CSAttendingStatesProvidingProxy)init;
- (void)addDismissUpdateReceiver:(id)receiver;
- (void)addSiriPromptUpdateReceiver:(id)receiver;
- (void)attendingStatesXPCDisconnected;
- (void)directActionJarvisAnnounceMessageTriggerWithDeviceId:(id)id;
- (void)dismissAttending;
- (void)localAttendingStartedWithRootRequestId:(id)id;
- (void)localAttendingStopped;
- (void)localAttendingStoppedUnexpectedlyWithError:(id)error;
- (void)localAttendingWillStartWithRootRequestId:(id)id;
- (void)registerAttendingHintProvider:(id)provider;
- (void)removeDismissUpdateReceiver:(id)receiver;
- (void)removeSiriPromptUpdateReceiver:(id)receiver;
- (void)requestDismissed;
- (void)setRemoteObjectProxy:(id)proxy;
- (void)siriDidPromptWithRootRequestId:(id)id;
- (void)siriPromptWillStartWithRootRequestId:(id)id;
- (void)speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id;
- (void)speechStartDetectedWithHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id;
- (void)speechStartDetectedWithShouldDuckTTS:(BOOL)s;
- (void)startUpdateStates;
@end

@implementation CSAttendingStatesProvidingProxy

- (void)startUpdateStates
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSAttendingStatesProvidingProxy startUpdateStates]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v3, 0xCu);
  }
}

- (void)attendingStatesXPCDisconnected
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000046A4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSAttendingHintProviding)hintProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_hintProvider);

  return WeakRetained;
}

- (void)speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000766B4;
  v11[3] = &unk_100250B98;
  timeCopy = time;
  typeCopy = type;
  v11[4] = self;
  v12 = idCopy;
  v10 = idCopy;
  dispatch_async(queue, v11);
}

- (void)speechStartDetectedWithShouldDuckTTS:(BOOL)s
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100076740;
  v4[3] = &unk_100253BF8;
  v4[4] = self;
  sCopy = s;
  dispatch_async(queue, v4);
}

- (void)speechStartDetectedWithHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100076800;
  v11[3] = &unk_100250B98;
  timeCopy = time;
  typeCopy = type;
  v11[4] = self;
  v12 = idCopy;
  v10 = idCopy;
  dispatch_async(queue, v11);
}

- (void)localAttendingStopped
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076888;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)localAttendingStoppedUnexpectedlyWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007692C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

- (void)localAttendingStartedWithRootRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000769D0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)localAttendingWillStartWithRootRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076A74;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)requestDismissed
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076AF4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dismissAttending
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076C7C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)directActionJarvisAnnounceMessageTriggerWithDeviceId:(id)id
{
  idCopy = id;
  carKitUtils = [(CSAttendingStatesProvidingProxy *)self carKitUtils];
  isBargeInDisabledForConnectedVehicle = [carKitUtils isBargeInDisabledForConnectedVehicle];

  v7 = CSLogContextFacilityCoreSpeech;
  v8 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (isBargeInDisabledForConnectedVehicle)
  {
    if (v8)
    {
      *buf = 136315138;
      v14 = "[CSAttendingStatesProvidingProxy directActionJarvisAnnounceMessageTriggerWithDeviceId:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s not triggering because barge-in is disabled for this vehicle", buf, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 136315394;
      v14 = "[CSAttendingStatesProvidingProxy directActionJarvisAnnounceMessageTriggerWithDeviceId:]";
      v15 = 2112;
      v16 = idCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s deviceId=%@", buf, 0x16u);
    }

    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100076F80;
    v10[3] = &unk_100253C48;
    v11 = idCopy;
    selfCopy = self;
    dispatch_async(queue, v10);
  }
}

- (void)siriDidPromptWithRootRequestId:(id)id
{
  idCopy = id;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAttendingStatesProvidingProxy siriDidPromptWithRootRequestId:]";
    v12 = 2112;
    v13 = idCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100077128;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = idCopy;
  v7 = idCopy;
  dispatch_async(queue, v8);
}

- (void)siriPromptWillStartWithRootRequestId:(id)id
{
  idCopy = id;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSAttendingStatesProvidingProxy siriPromptWillStartWithRootRequestId:]";
    v10 = 2112;
    v11 = idCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077400;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)registerAttendingHintProvider:(id)provider
{
  providerCopy = provider;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077618;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = providerCopy;
  v6 = providerCopy;
  dispatch_async(queue, v7);
}

- (void)removeSiriPromptUpdateReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000776BC;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)addSiriPromptUpdateReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077760;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)removeDismissUpdateReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077804;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)addDismissUpdateReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000778A8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)setRemoteObjectProxy:(id)proxy
{
  proxyCopy = proxy;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007794C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = proxyCopy;
  v6 = proxyCopy;
  dispatch_async(queue, v7);
}

- (CSAttendingStatesProvidingProxy)init
{
  v12.receiver = self;
  v12.super_class = CSAttendingStatesProvidingProxy;
  v2 = [(CSAttendingStatesProvidingProxy *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSIntuitiveConvRequestHandler queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSHashTable weakObjectsHashTable];
    dismissUpdateReceivers = v2->_dismissUpdateReceivers;
    v2->_dismissUpdateReceivers = v5;

    v7 = +[NSHashTable weakObjectsHashTable];
    ttsPromptUpdateReceivers = v2->_ttsPromptUpdateReceivers;
    v2->_ttsPromptUpdateReceivers = v7;

    v9 = +[CSCarKitUtils sharedInstance];
    carKitUtils = v2->_carKitUtils;
    v2->_carKitUtils = v9;
  }

  return v2;
}

@end