@interface CSAttendingSpeechDetectionController
- (CSAttendingServiceDelegate)delegate;
- (CSAttendingSpeechDetectionController)initWithAudioProviderSelector:(id)a3;
- (id)_signalProvider;
- (id)_updateAttendingOptionsForAnnounce:(id)a3;
- (void)_cancelSpeechDetectionTimer;
- (void)_setupSpeechDetectionTimerForDuration:(double)a3;
- (void)_startActivationAtHostTime:(unint64_t)a3 sampleCount:(unint64_t)a4 amountOfSpeechInMs:(float)a5;
- (void)attSiriSignalProvider:(id)a3 silenceFramesCountMs:(double)a4 silenceProbability:(double)a5 silenceDurationMs:(double)a6 processedAudioMs:(double)a7 deviceHasBoronEnabled:(BOOL)a8 latestBoronActiveSampleCount:(int64_t)a9;
- (void)attSiriSignalProviderDidStopUnexpectedly;
- (void)cancelAudioStreamHolding;
- (void)dealloc;
- (void)handleSpeechDetectionTimeout;
- (void)startAttendingWithOptions:(id)a3 completion:(id)a4;
- (void)stopAttendingWithReason:(int64_t)a3;
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

- (id)_updateAttendingOptionsForAnnounce:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_isInitialTurnAnnounceFollowup)
  {
    if ([v4 recordType] == 25)
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

- (void)_setupSpeechDetectionTimerForDuration:(double)a3
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
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Setup speech detection timer for duration %f secs", buf, 0x16u);
  }

  v8 = self->_speechDetectionTimer;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000644D4;
  v9[3] = &unk_100253510;
  objc_copyWeak(&v10, &location);
  [(CSAttSiriTimer *)v8 setTimerForSecs:v9 completionBlock:a3];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_startActivationAtHostTime:(unint64_t)a3 sampleCount:(unint64_t)a4 amountOfSpeechInMs:(float)a5
{
  if (!self->_didActivate)
  {
    v9 = CSLogCategoryAttending;
    if (os_log_type_enabled(CSLogCategoryAttending, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315906;
      v30 = "[CSAttendingSpeechDetectionController _startActivationAtHostTime:sampleCount:amountOfSpeechInMs:]";
      v31 = 2048;
      v32 = a3;
      v33 = 2048;
      v34 = a4;
      v35 = 2048;
      v36 = a5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s StartHostTime: %llu. SampleCount: %llu. AmountOfSpeechInMs: %f", &v29, 0x2Au);
    }

    self->_didActivate = 1;
    [(CSAttendingSpeechDetectionController *)self _cancelSpeechDetectionTimer];
    v10 = [(CSAttendingSpeechDetectionController *)self _signalProvider];
    [v10 stopWithObserver:self holdAudioStream:1];

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

    v16 = [(CSAttSiriSignalOptions *)self->_signalOptions attendingOptions];
    v17 = [CSAttendingTriggerInfo alloc];
    v18 = [v16 attendingType];
    v19 = [v16 recordType];
    v20 = [v16 deviceId];
    [v16 startOfSpeechThresholdInMs];
    *&v22 = v21;
    *&v21 = a5;
    v23 = [(CSAttendingTriggerInfo *)v17 initWithAttendingType:v18 detectedToken:0 triggerMachTime:a3 triggerAbsStartSampleId:a4 audioRecordType:v19 audioRecordDeviceId:v20 amountOfSpeechDetectedInMs:v21 triggerThresholdInMs:v22];

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

- (void)attSiriSignalProvider:(id)a3 silenceFramesCountMs:(double)a4 silenceProbability:(double)a5 silenceDurationMs:(double)a6 processedAudioMs:(double)a7 deviceHasBoronEnabled:(BOOL)a8 latestBoronActiveSampleCount:(int64_t)a9
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006486C;
  block[3] = &unk_100251310;
  block[4] = self;
  *&block[5] = a4;
  *&block[6] = a7;
  v11 = a8;
  block[7] = a9;
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

- (void)stopAttendingWithReason:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100065338;
  v4[3] = &unk_100253C98;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)startAttendingWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065640;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Dealloc: %@", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = CSAttendingSpeechDetectionController;
  [(CSAttendingSpeechDetectionController *)&v4 dealloc];
}

- (CSAttendingSpeechDetectionController)initWithAudioProviderSelector:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CSAttendingSpeechDetectionController;
  v6 = [(CSAttendingSpeechDetectionController *)&v10 init];
  if (v6)
  {
    v7 = dispatch_queue_create("CSAttendingSpeechDetectionController queue", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v6->_isInitialTurnAnnounceFollowup = 0;
    objc_storeStrong(&v6->_audioProviderSelector, a3);
  }

  return v6;
}

@end