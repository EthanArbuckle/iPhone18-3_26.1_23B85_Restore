@interface CSAttSiriSignalProvider
- (CSAttSiriSignalProvider)initWithAudioProviderSelector:(id)a3;
- (id)_startStreamOptionWithMachAbsTime:(unint64_t)a3;
- (unint64_t)_observersCount;
- (void)_cancelAudioStreamHold;
- (void)_deliverSignalProviderDidStopUnexpectedly;
- (void)_holdAudioStreamWithTimeout:(double)a3;
- (void)_resetAudioStreamObserverContext;
- (void)_startAudioStreamingWithSignalOptions:(id)a3 completion:(id)a4;
- (void)_stopAllAnalyzers;
- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4;
- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4;
- (void)cancelAudioStreamHoldingIfNeeded;
- (void)fetchStartSpeechWithOwnVoiceVadByProcessedAudioInMs:(double)a3 fetchOwnVoiceVADSignal:(BOOL)a4 prependAudioDuration:(double)a5 speechDetectSampleCountThreshold:(unint64_t)a6 completion:(id)a7;
- (void)osdProvider:(id)a3 silenceFramesCountMs:(double)a4 silenceProbability:(double)a5 silenceDurationMs:(double)a6 processedAudioMs:(double)a7 deviceHasBoronEnabled:(BOOL)a8 latestBoronActiveSampleCount:(int64_t)a9;
- (void)startWithSignalOptions:(id)a3 observer:(id)a4 completion:(id)a5;
- (void)stopWithObserver:(id)a3 holdAudioStream:(BOOL)a4;
@end

@implementation CSAttSiriSignalProvider

- (void)_cancelAudioStreamHold
{
  v3 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAttSiriSignalProvider _cancelAudioStreamHold]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  v4 = [(CSAudioStream *)self->_audioStream streamProvider];
  [v4 cancelAudioStreamHold:self->_audioStreamHolding];

  audioStreamHolding = self->_audioStreamHolding;
  self->_audioStreamHolding = 0;
}

- (void)_holdAudioStreamWithTimeout:(double)a3
{
  v5 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CSAttSiriSignalProvider _holdAudioStreamWithTimeout:]";
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s timeout = %.2f", &v10, 0x16u);
  }

  v6 = [[CSAudioStreamHoldRequestOption alloc] initWithTimeout:6 clientIdentity:0 requireRecordModeLock:1 requireListeningMicIndicatorLock:a3];
  v7 = [(CSAudioStream *)self->_audioStream streamProvider];
  v8 = [v7 holdAudioStreamWithDescription:@"CSAttSiriAttendingAudioStream" option:v6];
  audioStreamHolding = self->_audioStreamHolding;
  self->_audioStreamHolding = v8;
}

- (unint64_t)_observersCount
{
  v2 = [(CSAttSiriSignalProvider *)self observerAndOptions];
  v3 = [v2 keyEnumerator];

  v4 = 0;
  v5 = -1;
  do
  {
    v6 = [v3 nextObject];

    ++v5;
    v4 = v6;
  }

  while (v6);

  return v5;
}

- (id)_startStreamOptionWithMachAbsTime:(unint64_t)a3
{
  v4 = +[CSAudioStartStreamOption noAlertOption];
  [v4 setStartRecordingHostTime:a3];
  [v4 setRequireSingleChannelLookup:1];
  [v4 setSelectedChannel:0];

  return v4;
}

- (void)_resetAudioStreamObserverContext
{
  v3 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAttSiriSignalProvider _resetAudioStreamObserverContext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  self->_audioRequested = 0;
  v4 = [(CSAttSiriSignalProvider *)self observerAndOptions];
  [v4 removeAllObjects];
}

- (void)osdProvider:(id)a3 silenceFramesCountMs:(double)a4 silenceProbability:(double)a5 silenceDurationMs:(double)a6 processedAudioMs:(double)a7 deviceHasBoronEnabled:(BOOL)a8 latestBoronActiveSampleCount:(int64_t)a9
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051604;
  block[3] = &unk_10024F400;
  block[4] = self;
  *&block[5] = a4;
  *&block[6] = a5;
  *&block[7] = a6;
  *&block[8] = a7;
  v11 = a8;
  block[9] = a9;
  dispatch_async(queue, block);
}

- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005181C;
  v8[3] = &unk_100253C48;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)_stopAllAnalyzers
{
  osdProvider = self->_osdProvider;
  if (osdProvider)
  {
    [(CSAttSiriOSDProvider *)osdProvider stopAnalysisAndReset];
  }
}

- (void)_deliverSignalProviderDidStopUnexpectedly
{
  v2 = [(CSAttSiriSignalProvider *)self observerAndOptions];
  v6 = [v2 keyEnumerator];

  v3 = [v6 nextObject];
  if (v3)
  {
    v4 = v3;
    do
    {
      if (objc_opt_respondsToSelector())
      {
        [v4 attSiriSignalProviderDidStopUnexpectedly];
      }

      v5 = [v6 nextObject];

      v4 = v5;
    }

    while (v5);
  }
}

- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051AEC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)cancelAudioStreamHoldingIfNeeded
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051C24;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)fetchStartSpeechWithOwnVoiceVadByProcessedAudioInMs:(double)a3 fetchOwnVoiceVADSignal:(BOOL)a4 prependAudioDuration:(double)a5 speechDetectSampleCountThreshold:(unint64_t)a6 completion:(id)a7
{
  v12 = a7;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100051CF0;
  v15[3] = &unk_10024F3B8;
  v20 = a4;
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  dispatch_async(queue, v15);
}

- (void)stopWithObserver:(id)a3 holdAudioStream:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000521F0;
  block[3] = &unk_100253900;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)_startAudioStreamingWithSignalOptions:(id)a3 completion:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [v21 audioStreamRequest];

  if (v7)
  {
    v8 = [v21 audioStreamRequest];
  }

  else
  {
    v9 = [v21 attendingOptions];
    v10 = [CSAudioRecordContext alloc];
    v11 = [v9 recordType];
    v12 = [v9 deviceId];
    v13 = [v10 initWithRecordType:v11 deviceId:v12];

    v8 = [CSAudioStreamRequest defaultRequestWithContext:v13];
  }

  [v8 setClientIdentity:3];
  [v8 setRequestListeningMicIndicatorLock:1];
  audioProviderSelector = self->_audioProviderSelector;
  v15 = [v8 recordContext];
  v16 = [(CSAudioProviderSelecting *)audioProviderSelector audioProviderWithContext:v15 error:0];

  if (v16)
  {
    v17 = [[CSAudioStream alloc] initWithAudioStreamProvider:v16 streamName:@"CSAttSiriAttendingAudioStream" streamRequest:v8];
    audioStream = self->_audioStream;
    self->_audioStream = v17;

    [(CSAudioStream *)self->_audioStream setDelegate:self];
    v19 = [v21 attendingOptions];
    v20 = -[CSAttSiriSignalProvider _startStreamOptionWithMachAbsTime:](self, "_startStreamOptionWithMachAbsTime:", [v19 startAttendingHostTime]);

    [(CSAudioStream *)self->_audioStream startAudioStreamWithOption:v20 completion:v6];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v20 = [NSError errorWithDomain:CSErrorDomain code:2104 userInfo:0];
    v6[2](v6, 0, v20);
  }

LABEL_9:
}

- (void)startWithSignalOptions:(id)a3 observer:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100052904;
  v15[3] = &unk_100252E58;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(queue, v15);
}

- (CSAttSiriSignalProvider)initWithAudioProviderSelector:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CSAttSiriSignalProvider;
  v6 = [(CSAttSiriSignalProvider *)&v14 init];
  if (v6)
  {
    v7 = [CSUtils getSerialQueue:@"CSAttSiriSignalProvider Queue" qualityOfService:33];
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_audioProviderSelector, a3);
    v6->_audioRequested = 0;
    v9 = +[NSMapTable weakToStrongObjectsMapTable];
    observerAndOptions = v6->_observerAndOptions;
    v6->_observerAndOptions = v9;

    v11 = objc_alloc_init(CSAttSiriOSDProvider);
    osdProvider = v6->_osdProvider;
    v6->_osdProvider = v11;

    [(CSAttSiriOSDProvider *)v6->_osdProvider setDelegate:v6];
  }

  return v6;
}

@end