@interface CSAttendingStatesProvidingProxy
- (CSAttendingHintProviding)hintProvider;
- (CSAttendingStatesProvidingProxy)init;
- (void)addDismissUpdateReceiver:(id)a3;
- (void)addSiriPromptUpdateReceiver:(id)a3;
- (void)attendingStatesXPCDisconnected;
- (void)directActionJarvisAnnounceMessageTriggerWithDeviceId:(id)a3;
- (void)dismissAttending;
- (void)localAttendingStartedWithRootRequestId:(id)a3;
- (void)localAttendingStopped;
- (void)localAttendingStoppedUnexpectedlyWithError:(id)a3;
- (void)localAttendingWillStartWithRootRequestId:(id)a3;
- (void)registerAttendingHintProvider:(id)a3;
- (void)removeDismissUpdateReceiver:(id)a3;
- (void)removeSiriPromptUpdateReceiver:(id)a3;
- (void)requestDismissed;
- (void)setRemoteObjectProxy:(id)a3;
- (void)siriDidPromptWithRootRequestId:(id)a3;
- (void)siriPromptWillStartWithRootRequestId:(id)a3;
- (void)speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5;
- (void)speechStartDetectedWithHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5;
- (void)speechStartDetectedWithShouldDuckTTS:(BOOL)a3;
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

- (void)speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000766B4;
  v11[3] = &unk_100250B98;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, v11);
}

- (void)speechStartDetectedWithShouldDuckTTS:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100076740;
  v4[3] = &unk_100253BF8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)speechStartDetectedWithHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100076800;
  v11[3] = &unk_100250B98;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
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

- (void)localAttendingStoppedUnexpectedlyWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007692C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)localAttendingStartedWithRootRequestId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000769D0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)localAttendingWillStartWithRootRequestId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076A74;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)directActionJarvisAnnounceMessageTriggerWithDeviceId:(id)a3
{
  v4 = a3;
  v5 = [(CSAttendingStatesProvidingProxy *)self carKitUtils];
  v6 = [v5 isBargeInDisabledForConnectedVehicle];

  v7 = CSLogContextFacilityCoreSpeech;
  v8 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v6)
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
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s deviceId=%@", buf, 0x16u);
    }

    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100076F80;
    v10[3] = &unk_100253C48;
    v11 = v4;
    v12 = self;
    dispatch_async(queue, v10);
  }
}

- (void)siriDidPromptWithRootRequestId:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAttendingStatesProvidingProxy siriDidPromptWithRootRequestId:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100077128;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);
}

- (void)siriPromptWillStartWithRootRequestId:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSAttendingStatesProvidingProxy siriPromptWillStartWithRootRequestId:]";
    v10 = 2112;
    v11 = v4;
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

- (void)registerAttendingHintProvider:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077618;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeSiriPromptUpdateReceiver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000776BC;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addSiriPromptUpdateReceiver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077760;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeDismissUpdateReceiver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077804;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addDismissUpdateReceiver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000778A8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setRemoteObjectProxy:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007794C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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