@interface CSAttendingSpeechDetectionController
- (CSAttendingServiceDelegate)delegate;
- (CSAttendingSpeechDetectionController)initWithAudioProviderSelector:(id)selector;
- (id)_signalProvider;
- (id)_updateAttendingOptionsForAnnounce:(id)announce;
- (void)_cancelSpeechDetectionTimer;
- (void)_setupSpeechDetectionTimerForDuration:(double)duration;
- (void)_startActivationAtHostTime:(unint64_t)time sampleCount:(unint64_t)count amountOfSpeechInMs:(float)ms;
- (void)attSiriSignalProvider:(id)provider silenceFramesCountMs:(double)ms silenceProbability:(double)probability silenceDurationMs:(double)durationMs processedAudioMs:(double)audioMs deviceHasBoronEnabled:(BOOL)enabled latestBoronActiveSampleCount:(int64_t)count;
- (void)attSiriSignalProviderDidStopUnexpectedly;
- (void)cancelAudioStreamHolding;
- (void)dealloc;
- (void)handleSpeechDetectionTimeout;
- (void)startAttendingWithOptions:(id)options completion:(id)completion;
- (void)stopAttendingWithReason:(int64_t)reason;
@end

@implementation CSAttendingSpeechDetectionController

- (CSAttendingServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancelAudioStreamHolding
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063F38;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleSpeechDetectionTimeout
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063FF0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_updateAttendingOptionsForAnnounce:(id)announce
{
  announceCopy = announce;
  v5 = announceCopy;
  if (!self->_isInitialTurnAnnounceFollowup)
  {
    if ([announceCopy recordType] == 25)
    {
      self->_isInitialTurnAnnounceFollowup = 1;
      goto LABEL_13;
    }

    v7 = v5;
    if (!self->_isInitialTurnAnnounceFollowup)
    {
      goto LABEL_15;
    }
  }

  if ([v5 recordType] != 22)
  {
    v7 = v5;
    if ([v5 recordType] == 22)
    {
      goto LABEL_15;
    }

    v7 = v5;
    if ([v5 recordType] == 25)
    {
      goto LABEL_15;
    }

    v8 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[CSAttendingSpeechDetectionController _updateAttendingOptionsForAnnounce:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Resetting _isInitialTurnAnnounceFollowup", &v10, 0xCu);
    }

    self->_isInitialTurnAnnounceFollowup = 0;
LABEL_13:
    v7 = v5;
    goto LABEL_15;
  }

  v6 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CSAttendingSpeechDetectionController _updateAttendingOptionsForAnnounce:]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Updating attending options for Announce to: %@", &v10, 0x16u);
  }

  v7 = [v5 copyWithRecordType:25];

LABEL_15:

  return v7;
}

- (void)_cancelSpeechDetectionTimer
{
  speechDetectionTimer = self->_speechDetectionTimer;
  if (speechDetectionTimer)
  {
    v4 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSAttendingSpeechDetectionController _cancelSpeechDetectionTimer]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
      speechDetectionTimer = self->_speechDetectionTimer;
    }

    [(CSAttSiriTimer *)speechDetectionTimer cancelTimer];
    v5 = self->_speechDetectionTimer;
    self->_speechDetectionTimer = 0;
  }
}

- (void)_setupSpeechDetectionTimerForDuration:(double)duration
{
  [(CSAttendingSpeechDetectionController *)self _cancelSpeechDetectionTimer];
  v5 = [[CSAttSiriTimer alloc] initWithQueue:0];
  speechDetectionTimer = self->_speechDetectionTimer;
  self->_speechDetectionTimer = v5;

  objc_initWeak(&location, self);
  v7 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[CSAttendingSpeechDetectionController _setupSpeechDetectionTimerForDuration:]";
    v14 = 2048;
    durationCopy = duration;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Setup speech detection timer for duration %f secs", buf, 0x16u);
  }

  v8 = self->_speechDetectionTimer;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000644D4;
  v9[3] = &unk_100253510;
  objc_copyWeak(&v10, &location);
  [(CSAttSiriTimer *)v8 setTimerForSecs:v9 completionBlock:duration];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_startActivationAtHostTime:(unint64_t)time sampleCount:(unint64_t)count amountOfSpeechInMs:(float)ms
{
  if (!self->_didActivate)
  {
    v9 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315906;
      v30 = "[CSAttendingSpeechDetectionController _startActivationAtHostTime:sampleCount:amountOfSpeechInMs:]";
      v31 = 2048;
      timeCopy = time;
      v33 = 2048;
      countCopy = count;
      v35 = 2048;
      msCopy = ms;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s StartHostTime: %llu. SampleCount: %llu. AmountOfSpeechInMs: %f", &v29, 0x2Au);
    }

    self->_didActivate = 1;
    [(CSAttendingSpeechDetectionController *)self _cancelSpeechDetectionTimer];
    _signalProvider = [(CSAttendingSpeechDetectionController *)self _signalProvider];
    [_signalProvider stopWithObserver:self holdAudioStream:1];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v12 = WeakRetained;
      v13 = objc_loadWeakRetained(&self->_delegate);
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = objc_loadWeakRetained(&self->_delegate);
        [v15 attendingStoppedWithReason:1];
      }
    }

    attendingOptions = [(CSAttSiriSignalOptions *)self->_signalOptions attendingOptions];
    v17 = [CSAttendingTriggerInfo alloc];
    attendingType = [attendingOptions attendingType];
    recordType = [attendingOptions recordType];
    deviceId = [attendingOptions deviceId];
    [attendingOptions startOfSpeechThresholdInMs];
    *&v22 = v21;
    *&v21 = ms;
    v23 = [(CSAttendingTriggerInfo *)v17 initWithAttendingType:attendingType detectedToken:0 triggerMachTime:time triggerAbsStartSampleId:count audioRecordType:recordType audioRecordDeviceId:deviceId amountOfSpeechDetectedInMs:v21 triggerThresholdInMs:v22];

    v24 = objc_loadWeakRetained(&self->_delegate);
    if (v24)
    {
      v25 = v24;
      v26 = objc_loadWeakRetained(&self->_delegate);
      v27 = objc_opt_respondsToSelector();

      if (v27)
      {
        v28 = objc_loadWeakRetained(&self->_delegate);
        [v28 speechStartDetectedWithEventInfo:v23];
      }
    }
  }
}

- (void)attSiriSignalProvider:(id)provider silenceFramesCountMs:(double)ms silenceProbability:(double)probability silenceDurationMs:(double)durationMs processedAudioMs:(double)audioMs deviceHasBoronEnabled:(BOOL)enabled latestBoronActiveSampleCount:(int64_t)count
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006486C;
  block[3] = &unk_100251310;
  block[4] = self;
  *&block[5] = ms;
  *&block[6] = audioMs;
  enabledCopy = enabled;
  block[7] = count;
  dispatch_async(queue, block);
}

- (void)attSiriSignalProviderDidStopUnexpectedly
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065184;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopAttendingWithReason:(int64_t)reason
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100065338;
  v4[3] = &unk_100253C98;
  v4[4] = self;
  v4[5] = reason;
  dispatch_async(queue, v4);
}

- (void)startAttendingWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065640;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v12 = optionsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (id)_signalProvider
{
  attSiriSignalProvider = self->_attSiriSignalProvider;
  if (!attSiriSignalProvider)
  {
    v4 = [[CSAttSiriSignalProvider alloc] initWithAudioProviderSelector:self->_audioProviderSelector];
    v5 = self->_attSiriSignalProvider;
    self->_attSiriSignalProvider = v4;

    attSiriSignalProvider = self->_attSiriSignalProvider;
  }

  return attSiriSignalProvider;
}

- (void)dealloc
{
  v3 = CSLogCategoryAttending;
  if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[CSAttendingSpeechDetectionController dealloc]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Dealloc: %@", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = CSAttendingSpeechDetectionController;
  [(CSAttendingSpeechDetectionController *)&v4 dealloc];
}

- (CSAttendingSpeechDetectionController)initWithAudioProviderSelector:(id)selector
{
  selectorCopy = selector;
  v10.receiver = self;
  v10.super_class = CSAttendingSpeechDetectionController;
  v6 = [(CSAttendingSpeechDetectionController *)&v10 init];
  if (v6)
  {
    v7 = dispatch_queue_create("CSAttendingSpeechDetectionController queue", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v6->_isInitialTurnAnnounceFollowup = 0;
    objc_storeStrong(&v6->_audioProviderSelector, selector);
  }

  return v6;
}

@end