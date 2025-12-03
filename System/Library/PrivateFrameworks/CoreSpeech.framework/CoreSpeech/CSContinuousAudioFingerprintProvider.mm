@interface CSContinuousAudioFingerprintProvider
- (CSContinuousAudioFingerprintProvider)init;
- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart;
- (void)_handleEnablePolicyEvent:(BOOL)event;
- (void)_setMaximumBufferSizeFromInUseServices;
- (void)_startListenPolling;
- (void)_startListenPollingWithInterval:(double)interval completion:(id)completion;
- (void)_startListenWithCompletion:(id)completion;
- (void)_stopListening;
- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly;
- (void)registerObserver:(id)observer;
- (void)reset;
- (void)startWithUUID:(id)d withMaximumBufferSize:(float)size;
- (void)stopWithUUID:(id)d;
- (void)unregisterObserver:(id)observer;
@end

@implementation CSContinuousAudioFingerprintProvider

- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSContinuousAudioFingerprintProvider CSAudioServerCrashMonitorDidReceiveServerRestart:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s audiomxd/bridgeaudiod recovered from crash", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013F184;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly
{
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v10 = "[CSContinuousAudioFingerprintProvider audioStreamProvider:didStopStreamUnexpectedly:]";
    v11 = 2050;
    unexpectedlyCopy = unexpectedly;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s stream stopped unexpectedly : %{public}ld", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013F318;
  v8[3] = &unk_100253C98;
  v8[4] = self;
  v8[5] = unexpectedly;
  dispatch_async(queue, v8);
}

- (void)_handleEnablePolicyEvent:(BOOL)event
{
  eventCopy = event;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[CSContinuousAudioFingerprintProvider _handleEnablePolicyEvent:]";
    v11 = 1026;
    v12 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Siri enabled : %{public}d", buf, 0x12u);
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013F4B8;
  v7[3] = &unk_100253BF8;
  v8 = eventCopy;
  v7[4] = self;
  dispatch_async(queue, v7);
}

- (void)_stopListening
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSContinuousAudioFingerprintProvider _stopListening]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  audioStream = [(CSContinuousAudioFingerprintProvider *)self audioStream];

  if (audioStream)
  {
    audioStream2 = [(CSContinuousAudioFingerprintProvider *)self audioStream];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013F6B4;
    v7[3] = &unk_100253300;
    v7[4] = self;
    [audioStream2 stopAudioStreamWithOption:0 completion:v7];
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "[CSContinuousAudioFingerprintProvider _stopListening]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s No audio stream to stop, we shouldn't hit this", buf, 0xCu);
    }
  }
}

- (void)_startListenPolling
{
  if (self->_isListenPollingStarting)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v5 = "[CSContinuousAudioFingerprintProvider _startListenPolling]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Already started listen polling, skip", buf, 0xCu);
    }
  }

  else
  {
    self->_isListenPollingStarting = 1;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10013F8C4;
    v3[3] = &unk_100253300;
    v3[4] = self;
    [(CSContinuousAudioFingerprintProvider *)self _startListenPollingWithInterval:v3 completion:1.0];
  }
}

- (void)_startListenWithCompletion:(id)completion
{
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10013FC8C;
  v36[3] = &unk_100253220;
  completionCopy = completion;
  v37 = completionCopy;
  v5 = objc_retainBlock(v36);
  v6 = +[CSAudioRecordContext contextForBuiltInVoiceTrigger];
  v7 = +[CSSpeechManager sharedManager];
  v35 = 0;
  v8 = [v7 audioProviderWithContext:v6 error:&v35];
  v9 = v35;

  if (v8)
  {
    v10 = v8;
    v11 = +[CSFPreferences sharedPreferences];
    isAdBlockerAudioLoggingEnabled = [v11 isAdBlockerAudioLoggingEnabled];

    if (isAdBlockerAudioLoggingEnabled)
    {
      v13 = +[CSAudioTimeConverterPool sharedInstance];
      v14 = [v13 converterForAudioStreamId:{objc_msgSend(v10, "audioStreamId")}];

      v15 = [CSAudioCircularBuffer alloc];
      currentMaximumBufferSize = self->_currentMaximumBufferSize;
      +[CSConfig inputRecordingSampleRate];
      LODWORD(v18) = v17;
      *&v19 = currentMaximumBufferSize;
      v20 = [v15 initWithNumChannels:1 recordingDuration:v14 samplingRate:v19 audioTimeConverter:v18];
      audioLoggingBuffer = self->_audioLoggingBuffer;
      self->_audioLoggingBuffer = v20;
    }

    v22 = [CSAudioStreamRequest defaultRequestWithContext:v6, v9];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v34 = 0;
    v25 = [v10 audioStreamWithRequest:v22 streamName:v24 error:&v34];
    v26 = v34;

    if (v25)
    {
      [(CSContinuousAudioFingerprintProvider *)self setAudioStream:v25];
      [v25 setDelegate:self];
      v27 = +[CSAudioStartStreamOption noAlertOption];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10013FCA4;
      v32[3] = &unk_100253270;
      v32[4] = self;
      v33 = v5;
      [v25 startAudioStreamWithOption:v27 completion:v32];
    }

    else
    {
      v28 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v29 = v28;
        v30 = [v26 description];
        *buf = 136315394;
        v39 = "[CSContinuousAudioFingerprintProvider _startListenWithCompletion:]";
        v40 = 2114;
        v41 = v30;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s Failed in requesting audio stream : %{public}@", buf, 0x16u);
      }

      (v5[2])(v5, 0, v26);
    }

    v9 = v31;
  }

  else
  {
    (v5[2])(v5, 0, v9);
  }
}

- (void)_startListenPollingWithInterval:(double)interval completion:(id)completion
{
  completionCopy = completion;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSContinuousAudioFingerprintProvider _startListenPollingWithInterval:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  audioStream = [(CSContinuousAudioFingerprintProvider *)self audioStream];
  if ([audioStream isStreaming])
  {
  }

  else
  {
    enablePolicy = [(CSContinuousAudioFingerprintProvider *)self enablePolicy];
    isEnabled = [enablePolicy isEnabled];

    if (isEnabled)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001400F8;
      v12[3] = &unk_1002531F8;
      v12[4] = self;
      intervalCopy = interval;
      v13 = completionCopy;
      [(CSContinuousAudioFingerprintProvider *)self _startListenWithCompletion:v12];

      goto LABEL_11;
    }
  }

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSContinuousAudioFingerprintProvider _startListenPollingWithInterval:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Skip listen polling since audio is streaming / Siri disabled", buf, 0xCu);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_11:
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001403D0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100140480;
    v7[3] = &unk_100253C48;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001405E8;
    v7[3] = &unk_100253C48;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)stopWithUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10014083C;
    v8[3] = &unk_100253C48;
    v8[4] = self;
    v9 = dCopy;
    dispatch_async(queue, v8);
  }

  else
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[CSContinuousAudioFingerprintProvider stopWithUUID:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s UUID was nil will not stop fingerprint provider", buf, 0xCu);
    }
  }
}

- (void)startWithUUID:(id)d withMaximumBufferSize:(float)size
{
  dCopy = d;
  v7 = dCopy;
  if (dCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100140B60;
    block[3] = &unk_1002527C0;
    block[4] = self;
    v11 = dCopy;
    sizeCopy = size;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[CSContinuousAudioFingerprintProvider startWithUUID:withMaximumBufferSize:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s UUID was nil will not start fingerprint provider", buf, 0xCu);
    }
  }
}

- (void)_setMaximumBufferSizeFromInUseServices
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_inUseServices;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(NSMutableDictionary *)self->_inUseServices objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        if (v7 < [v9 intValue])
        {
          [v9 floatValue];
          v7 = v10;
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  self->_currentMaximumBufferSize = v7;
}

- (CSContinuousAudioFingerprintProvider)init
{
  v12.receiver = self;
  v12.super_class = CSContinuousAudioFingerprintProvider;
  v2 = [(CSContinuousAudioFingerprintProvider *)&v12 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("CSContinuousAudioFingerprintProvider", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v2->_isListenPollingStarting = 0;
    v8 = objc_alloc_init(NSMutableDictionary);
    inUseServices = v2->_inUseServices;
    v2->_inUseServices = v8;

    +[CSConfig defaultContinuousFingerprintBufferDuration];
    *&v10 = v10;
    v2->_currentMaximumBufferSize = *&v10;
    v2->_frameSkipCounter = 0;
  }

  return v2;
}

@end