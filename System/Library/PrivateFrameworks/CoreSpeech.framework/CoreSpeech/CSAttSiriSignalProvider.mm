@interface CSAttSiriSignalProvider
- (CSAttSiriSignalProvider)initWithAudioProviderSelector:(id)selector;
- (id)_startStreamOptionWithMachAbsTime:(unint64_t)time;
- (unint64_t)_observersCount;
- (void)_cancelAudioStreamHold;
- (void)_deliverSignalProviderDidStopUnexpectedly;
- (void)_holdAudioStreamWithTimeout:(double)timeout;
- (void)_resetAudioStreamObserverContext;
- (void)_startAudioStreamingWithSignalOptions:(id)options completion:(id)completion;
- (void)_stopAllAnalyzers;
- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available;
- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly;
- (void)cancelAudioStreamHoldingIfNeeded;
- (void)fetchStartSpeechWithOwnVoiceVadByProcessedAudioInMs:(double)ms fetchOwnVoiceVADSignal:(BOOL)signal prependAudioDuration:(double)duration speechDetectSampleCountThreshold:(unint64_t)threshold completion:(id)completion;
- (void)osdProvider:(id)provider silenceFramesCountMs:(double)ms silenceProbability:(double)probability silenceDurationMs:(double)durationMs processedAudioMs:(double)audioMs deviceHasBoronEnabled:(BOOL)enabled latestBoronActiveSampleCount:(int64_t)count;
- (void)startWithSignalOptions:(id)options observer:(id)observer completion:(id)completion;
- (void)stopWithObserver:(id)observer holdAudioStream:(BOOL)stream;
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

  streamProvider = [(CSAudioStream *)self->_audioStream streamProvider];
  [streamProvider cancelAudioStreamHold:self->_audioStreamHolding];

  audioStreamHolding = self->_audioStreamHolding;
  self->_audioStreamHolding = 0;
}

- (void)_holdAudioStreamWithTimeout:(double)timeout
{
  v5 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CSAttSiriSignalProvider _holdAudioStreamWithTimeout:]";
    v12 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s timeout = %.2f", &v10, 0x16u);
  }

  v6 = [[CSAudioStreamHoldRequestOption alloc] initWithTimeout:6 clientIdentity:0 requireRecordModeLock:1 requireListeningMicIndicatorLock:timeout];
  streamProvider = [(CSAudioStream *)self->_audioStream streamProvider];
  v8 = [streamProvider holdAudioStreamWithDescription:@"CSAttSiriAttendingAudioStream" option:v6];
  audioStreamHolding = self->_audioStreamHolding;
  self->_audioStreamHolding = v8;
}

- (unint64_t)_observersCount
{
  observerAndOptions = [(CSAttSiriSignalProvider *)self observerAndOptions];
  keyEnumerator = [observerAndOptions keyEnumerator];

  v4 = 0;
  v5 = -1;
  do
  {
    nextObject = [keyEnumerator nextObject];

    ++v5;
    v4 = nextObject;
  }

  while (nextObject);

  return v5;
}

- (id)_startStreamOptionWithMachAbsTime:(unint64_t)time
{
  v4 = +[CSAudioStartStreamOption noAlertOption];
  [v4 setStartRecordingHostTime:time];
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
  observerAndOptions = [(CSAttSiriSignalProvider *)self observerAndOptions];
  [observerAndOptions removeAllObjects];
}

- (void)osdProvider:(id)provider silenceFramesCountMs:(double)ms silenceProbability:(double)probability silenceDurationMs:(double)durationMs processedAudioMs:(double)audioMs deviceHasBoronEnabled:(BOOL)enabled latestBoronActiveSampleCount:(int64_t)count
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051604;
  block[3] = &unk_10024F400;
  block[4] = self;
  *&block[5] = ms;
  *&block[6] = probability;
  *&block[7] = durationMs;
  *&block[8] = audioMs;
  enabledCopy = enabled;
  block[9] = count;
  dispatch_async(queue, block);
}

- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available
{
  availableCopy = available;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005181C;
  v8[3] = &unk_100253C48;
  v9 = availableCopy;
  selfCopy = self;
  v7 = availableCopy;
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
  observerAndOptions = [(CSAttSiriSignalProvider *)self observerAndOptions];
  keyEnumerator = [observerAndOptions keyEnumerator];

  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v4 = nextObject;
    do
    {
      if (objc_opt_respondsToSelector())
      {
        [v4 attSiriSignalProviderDidStopUnexpectedly];
      }

      nextObject2 = [keyEnumerator nextObject];

      v4 = nextObject2;
    }

    while (nextObject2);
  }
}

- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly
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

- (void)fetchStartSpeechWithOwnVoiceVadByProcessedAudioInMs:(double)ms fetchOwnVoiceVADSignal:(BOOL)signal prependAudioDuration:(double)duration speechDetectSampleCountThreshold:(unint64_t)threshold completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100051CF0;
  v15[3] = &unk_10024F3B8;
  signalCopy = signal;
  msCopy = ms;
  durationCopy = duration;
  thresholdCopy = threshold;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

- (void)stopWithObserver:(id)observer holdAudioStream:(BOOL)stream
{
  observerCopy = observer;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000521F0;
  block[3] = &unk_100253900;
  v10 = observerCopy;
  selfCopy = self;
  streamCopy = stream;
  v8 = observerCopy;
  dispatch_async(queue, block);
}

- (void)_startAudioStreamingWithSignalOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  audioStreamRequest = [optionsCopy audioStreamRequest];

  if (audioStreamRequest)
  {
    audioStreamRequest2 = [optionsCopy audioStreamRequest];
  }

  else
  {
    attendingOptions = [optionsCopy attendingOptions];
    v10 = [CSAudioRecordContext alloc];
    recordType = [attendingOptions recordType];
    deviceId = [attendingOptions deviceId];
    v13 = [v10 initWithRecordType:recordType deviceId:deviceId];

    audioStreamRequest2 = [CSAudioStreamRequest defaultRequestWithContext:v13];
  }

  [audioStreamRequest2 setClientIdentity:3];
  [audioStreamRequest2 setRequestListeningMicIndicatorLock:1];
  audioProviderSelector = self->_audioProviderSelector;
  recordContext = [audioStreamRequest2 recordContext];
  v16 = [(CSAudioProviderSelecting *)audioProviderSelector audioProviderWithContext:recordContext error:0];

  if (v16)
  {
    v17 = [[CSAudioStream alloc] initWithAudioStreamProvider:v16 streamName:@"CSAttSiriAttendingAudioStream" streamRequest:audioStreamRequest2];
    audioStream = self->_audioStream;
    self->_audioStream = v17;

    [(CSAudioStream *)self->_audioStream setDelegate:self];
    attendingOptions2 = [optionsCopy attendingOptions];
    v20 = -[CSAttSiriSignalProvider _startStreamOptionWithMachAbsTime:](self, "_startStreamOptionWithMachAbsTime:", [attendingOptions2 startAttendingHostTime]);

    [(CSAudioStream *)self->_audioStream startAudioStreamWithOption:v20 completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    v20 = [NSError errorWithDomain:CSErrorDomain code:2104 userInfo:0];
    completionCopy[2](completionCopy, 0, v20);
  }

LABEL_9:
}

- (void)startWithSignalOptions:(id)options observer:(id)observer completion:(id)completion
{
  optionsCopy = options;
  observerCopy = observer;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100052904;
  v15[3] = &unk_100252E58;
  v16 = optionsCopy;
  v17 = observerCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = observerCopy;
  v13 = optionsCopy;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

- (CSAttSiriSignalProvider)initWithAudioProviderSelector:(id)selector
{
  selectorCopy = selector;
  v14.receiver = self;
  v14.super_class = CSAttSiriSignalProvider;
  v6 = [(CSAttSiriSignalProvider *)&v14 init];
  if (v6)
  {
    v7 = [CSUtils getSerialQueue:@"CSAttSiriSignalProvider Queue" qualityOfService:33];
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_audioProviderSelector, selector);
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