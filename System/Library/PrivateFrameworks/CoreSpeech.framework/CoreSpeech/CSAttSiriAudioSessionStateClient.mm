@interface CSAttSiriAudioSessionStateClient
- (CSAttSiriAudioSessionStateClient)initWithDelegate:(id)delegate;
- (CSAttSiriSessionStateDelegate)delegate;
- (void)dispatchStateChangedFrom:(unint64_t)from to:(unint64_t)to;
- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to;
- (void)notifyObserver:(id)observer didReceiveNotificationWithToken:(int)token;
@end

@implementation CSAttSiriAudioSessionStateClient

- (CSAttSiriSessionStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dispatchStateChangedFrom:(unint64_t)from to:(unint64_t)to
{
  fromCopy = from;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 136315138;
    v35 = "[CSAttSiriAudioSessionStateClient dispatchStateChangedFrom:to:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ", &v34, 0xCu);
  }

  if (((to ^ fromCopy) & 2) != 0)
  {
    v8 = (fromCopy & 2) == 0 && (to >> 1) & 1;
    self->_isActiveSession = v8;
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315394;
      v35 = "[CSAttSiriAudioSessionStateClient dispatchStateChangedFrom:to:]";
      v36 = 1024;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s SiriState - isActiveSession:%d", &v34, 0x12u);
    }
  }

  if ((to ^ fromCopy))
  {
    v10 = fromCopy | ((to & 1) == 0);
    self->_isActiveRequest = (v10 ^ 1) & 1;
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315394;
      v35 = "[CSAttSiriAudioSessionStateClient dispatchStateChangedFrom:to:]";
      v36 = 1024;
      v37 = (v10 ^ 1) & 1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s SiriState - isActiveRequest:%d", &v34, 0x12u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (((to ^ fromCopy) & 4) != 0)
  {
    v12 = (fromCopy & 4) == 0 && (to >> 2) & 1;
    self->_isListening = v12;
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315394;
      v35 = "[CSAttSiriAudioSessionStateClient dispatchStateChangedFrom:to:]";
      v36 = 1024;
      v37 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s SiriState - isListening:%d", &v34, 0x12u);
    }
  }

  if (((to ^ fromCopy) & 8) == 0)
  {
    v14 = 0;
    goto LABEL_31;
  }

  if ((fromCopy & 8) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = (to >> 3) & 1;
  }

  if (v15 != 1)
  {
    self->_isSpeaking = 0;
    isActiveSession = self->_isActiveSession;
    p_delegate = &self->_delegate;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    v14 = isActiveSession;
    if ((v21 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  self->_isSpeaking = 1;
  p_delegate = &self->_delegate;
  v17 = objc_loadWeakRetained(&self->_delegate);
  v18 = objc_opt_respondsToSelector();

  isActiveSession = 0;
  v14 = 0;
  if (v18)
  {
LABEL_28:
    v22 = objc_loadWeakRetained(p_delegate);
    [v22 notifySiriSessionStateTTSOngoing:v15];

    v14 = isActiveSession;
  }

LABEL_29:
  v23 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    isSpeaking = self->_isSpeaking;
    v34 = 136315394;
    v35 = "[CSAttSiriAudioSessionStateClient dispatchStateChangedFrom:to:]";
    v36 = 1024;
    v37 = isSpeaking;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s SiriState - isSpeaking:%d", &v34, 0x12u);
  }

LABEL_31:
  v25 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 136315650;
    v35 = "[CSAttSiriAudioSessionStateClient dispatchStateChangedFrom:to:]";
    v36 = 1024;
    v37 = v14;
    v38 = 1024;
    v39 = v10 & 1;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s tts Finished:%u isRequestCompleted:%u", &v34, 0x18u);
  }

  if (v14)
  {
    v26 = objc_loadWeakRetained(&self->_delegate);
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      v28 = objc_loadWeakRetained(&self->_delegate);
      [v28 notifySiriSessionStateChange:1];
    }
  }

  if ((v10 & 1) != 0 && (v14 || !self->_isSpeaking))
  {
    v29 = objc_loadWeakRetained(&self->_delegate);
    if (v29)
    {
      v30 = v29;
      v31 = objc_loadWeakRetained(&self->_delegate);
      v32 = objc_opt_respondsToSelector();

      if (v32)
      {
        v33 = objc_loadWeakRetained(&self->_delegate);
        [v33 notifyRequestCompletion];
      }
    }
  }
}

- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to
{
  observerCopy = observer;
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[CSAttSiriAudioSessionStateClient notifyObserver:didChangeStateFrom:to:]";
    v12 = 2048;
    fromCopy = from;
    v14 = 2048;
    toCopy = to;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s fromState:%llu, toState:%llu", &v10, 0x20u);
  }

  if (self->_siriStateObserver == observerCopy)
  {
    [(CSAttSiriAudioSessionStateClient *)self dispatchStateChangedFrom:from to:to];
  }
}

- (void)notifyObserver:(id)observer didReceiveNotificationWithToken:(int)token
{
  observerCopy = observer;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSAttSiriAudioSessionStateClient notifyObserver:didReceiveNotificationWithToken:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  if (self->_siriStateObserver == observerCopy)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[CSAttSiriAudioSessionStateClient notifyObserver:didReceiveNotificationWithToken:]";
      v11 = 1024;
      tokenCopy = token;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s token:%d", &v9, 0x12u);
    }
  }
}

- (CSAttSiriAudioSessionStateClient)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[CSAttSiriAudioSessionStateClient initWithDelegate:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v15.receiver = self;
  v15.super_class = CSAttSiriAudioSessionStateClient;
  v6 = [(CSAttSiriAudioSessionStateClient *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, delegateCopy);
    *&v7->_isSpeaking = 0;
    v8 = dispatch_queue_create("SiriStateNotificationListener", 0);
    stateNotificationQueue = v7->_stateNotificationQueue;
    v7->_stateNotificationQueue = v8;

    v10 = [AFNotifyObserver alloc];
    v11 = [[NSString alloc] initWithUTF8String:"com.apple.siri.client-state-changed"];
    v12 = [v10 initWithName:v11 options:1 queue:v7->_stateNotificationQueue delegate:v7];
    siriStateObserver = v7->_siriStateObserver;
    v7->_siriStateObserver = v12;
  }

  return v7;
}

@end