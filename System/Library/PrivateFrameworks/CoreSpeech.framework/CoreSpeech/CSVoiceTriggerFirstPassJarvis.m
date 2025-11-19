@interface CSVoiceTriggerFirstPassJarvis
+ (id)jarvisAudioLogDirectory;
+ (id)jarvisAudioLoggingFilePath;
+ (id)timeStampString;
- (CSVoiceTriggerDelegate)delegate;
- (CSVoiceTriggerFirstPassJarvis)initWithSpeechManager:(id)a3 otherAppRecordingStateMonitor:(id)a4;
- (void)_cancelAudioStreamHold;
- (void)_clearTriggerCandidate;
- (void)_createSecondPassIfNeeded;
- (void)_didDetectKeywordFromDeviceId:(id)a3 activationInfo:(id)a4 triggerHostTime:(unint64_t)a5 completion:(id)a6;
- (void)_didStartAudioStream;
- (void)_didStopAudioStream;
- (void)_handleAudioChunk:(id)a3;
- (void)_handleJarvisVoiceTriggerFromDeviceId:(id)a3 activationInfo:(id)a4 triggerHostTime:(unint64_t)a5 completion:(id)a6;
- (void)_handleSecondPassResult:(id)a3 deviceId:(id)a4 error:(id)a5;
- (void)_holdAudioStreamWithTimeout:(double)a3;
- (void)_notifyJarvisVoiceTriggerReject;
- (void)_reportJarvisVoiceTriggerFire;
- (void)_requestStartAudioStreamWitContext:(id)a3 startStreamOption:(id)a4 completion:(id)a5;
- (void)_reset;
- (void)_setAsset:(id)a3;
- (void)_teardownSecondPass;
- (void)activationEventNotificationHandler:(id)a3 event:(id)a4 completion:(id)a5;
- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4;
- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4;
- (void)keywordAnalyzerNDEAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5;
- (void)reset;
- (void)setAsset:(id)a3;
- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7;
- (void)siriClientBehaviorMonitor:(id)a3 didStopStream:(id)a4 withEventUUID:(id)a5;
- (void)siriClientBehaviorMonitor:(id)a3 willStopStream:(id)a4 reason:(unint64_t)a5;
- (void)spgEndpointAnalyzerDidDetectEndpoint:(id)a3;
- (void)start;
@end

@implementation CSVoiceTriggerFirstPassJarvis

- (CSVoiceTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)siriClientBehaviorMonitor:(id)a3 willStopStream:(id)a4 reason:(unint64_t)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D900;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)a3 didStopStream:(id)a4 withEventUUID:(id)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006DA2C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[CSVoiceTriggerFirstPassJarvis siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (v9)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006DC4C;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }

  [(CSVoiceTriggerFirstPassJarvis *)self _cancelAudioStreamHold];
}

- (void)_cancelAudioStreamHold
{
  v3 = [(CSVoiceTriggerFirstPassJarvis *)self audioProvider];
  [v3 cancelAudioStreamHold:self->_audioStreamHolding];

  audioStreamHolding = self->_audioStreamHolding;
  self->_audioStreamHolding = 0;
}

- (void)_holdAudioStreamWithTimeout:(double)a3
{
  v7 = [CSAudioStreamHoldRequestOption defaultOptionWithTimeout:a3];
  v4 = [(CSVoiceTriggerFirstPassJarvis *)self audioProvider];
  v5 = [v4 holdAudioStreamWithDescription:@"CSVoiceTriggerFirstPassJarvis" option:v7];
  audioStreamHolding = self->_audioStreamHolding;
  self->_audioStreamHolding = v5;
}

- (void)_teardownSecondPass
{
  v3 = objc_autoreleasePoolPush();
  voiceTriggerSecondPass = self->_voiceTriggerSecondPass;
  self->_voiceTriggerSecondPass = 0;

  objc_autoreleasePoolPop(v3);
}

- (void)_createSecondPassIfNeeded
{
  if (!self->_voiceTriggerSecondPass)
  {
    v4 = [[CSVoiceTriggerSecondPass alloc] initWithFirstPassSource:4 phsEnabled:0 speechManager:0 supportsMphDetection:0 secondPassQueue:0];
    voiceTriggerSecondPass = self->_voiceTriggerSecondPass;
    self->_voiceTriggerSecondPass = v4;

    [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setSecondPassClient:3];
    [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setAsset:self->_currentAsset];
    v6 = self->_voiceTriggerSecondPass;

    [(CSVoiceTriggerSecondPass *)v6 start];
  }
}

- (void)_handleSecondPassResult:(id)a3 deviceId:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 result];
  v12 = [v8 voiceTriggerEventInfo];
  v13 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v10 localizedDescription];
    *buf = 136315906;
    v32 = "[CSVoiceTriggerFirstPassJarvis _handleSecondPassResult:deviceId:error:]";
    v33 = 1026;
    *v34 = v11;
    *&v34[4] = 2114;
    *&v34[6] = v12;
    v35 = 2114;
    v36 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Second Pass Result, %{public}d, %{public}@, %{public}@", buf, 0x26u);
  }

  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v24 = objc_opt_respondsToSelector();

      if ((v24 & 1) == 0)
      {
        goto LABEL_19;
      }

      v18 = objc_loadWeakRetained(&self->_delegate);
      [v18 voiceTriggerDidDetectKeyword:v12 deviceId:v9];
      goto LABEL_18;
    }

    if (v11 == 2)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      v17 = objc_opt_respondsToSelector();

      if ((v17 & 1) == 0)
      {
        goto LABEL_19;
      }

      v18 = objc_loadWeakRetained(&self->_delegate);
      [v18 voiceTriggerDidRejected:v12 deviceId:v9];
      goto LABEL_18;
    }

LABEL_12:
    v21 = CSLogCategoryVT;
    if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v18 = v21;
    v22 = [v10 localizedDescription];
    *buf = 136315394;
    v32 = "[CSVoiceTriggerFirstPassJarvis _handleSecondPassResult:deviceId:error:]";
    v33 = 2114;
    *v34 = v22;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s VoiceTrigger Second Pass has failed : %{public}@", buf, 0x16u);

    goto LABEL_18;
  }

  if (v11 != 3)
  {
    if (v11 == 9)
    {
      v19 = objc_loadWeakRetained(&self->_delegate);
      v20 = objc_opt_respondsToSelector();

      if ((v20 & 1) == 0)
      {
        goto LABEL_19;
      }

      v18 = objc_loadWeakRetained(&self->_delegate);
      [v18 voiceTriggerDidDetectSpeakerReject:v12];
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v25 = objc_loadWeakRetained(&self->_delegate);
  v26 = objc_opt_respondsToSelector();

  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

  v18 = objc_loadWeakRetained(&self->_delegate);
  [v18 voiceTriggerDidDetectNearMiss:v12 deviceId:v9];
LABEL_18:

LABEL_19:
  if ([v8 isSecondChanceCandidate])
  {
    v27 = [[CSVoiceTriggerSecondChanceContext alloc] initWithWindowStartTime:mach_absolute_time()];
  }

  else
  {
    v27 = 0;
  }

  secondChanceContext = self->_secondChanceContext;
  self->_secondChanceContext = v27;

  queue = self->_queue;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10006E234;
  v30[3] = &unk_100253C98;
  v30[4] = self;
  v30[5] = v11;
  dispatch_async(queue, v30);
}

- (void)_reportJarvisVoiceTriggerFire
{
  v25[0] = kVTEIfirstPassDetectedChannel;
  v3 = [NSNumber numberWithUnsignedInteger:self->_activeChannel];
  v26[0] = v3;
  v25[1] = kVTEIfirstPassScore;
  [(CSKeywordAnalyzerNDEAPIResult *)self->_jarvisTriggerResult bestScore];
  v4 = [NSNumber numberWithFloat:?];
  v26[1] = v4;
  v25[2] = kVTEIfirstPassStartSampleCount;
  v5 = [NSNumber numberWithUnsignedInteger:[(CSKeywordAnalyzerNDEAPIResult *)self->_jarvisTriggerResult bestStart]];
  v26[2] = v5;
  v25[3] = kVTEIfirstPassEndSampleCount;
  v6 = [NSNumber numberWithUnsignedInteger:[(CSKeywordAnalyzerNDEAPIResult *)self->_jarvisTriggerResult bestEnd]];
  v26[3] = v6;
  v25[4] = kVTEIearlyDetectFiredMachTime;
  v7 = [NSNumber numberWithUnsignedLongLong:self->_earlyDetectFiredMachTime];
  v26[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5];

  v9 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[CSVoiceTriggerFirstPassJarvis _reportJarvisVoiceTriggerFire]";
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  kdebug_trace();
  self->_isSecondPassRunning = 1;
  [(CSVoiceTriggerFirstPassJarvis *)self _clearTriggerCandidate];
  [(CSSPGEndpointAnalyzer *)self->_endpointAnalyzer stop];
  [(CSPlainAudioFileWriter *)self->_audioFileWriter endAudio];
  objc_initWeak(&location, self);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = sub_10006E910;
  v23 = sub_10006E920;
  v24 = [CSJarvisTriggerModeMonitor triggerModeStringDescription:self->_latestTriggerMode];
  [(CSVoiceTriggerFirstPassJarvis *)self _createSecondPassIfNeeded];
  v10 = [CSVoiceTriggerSecondPassRequestOption alloc];
  deviceId = self->_deviceId;
  v12 = [(CSVoiceTriggerFirstPassJarvis *)self audioProvider];
  v13 = [v12 UUID];
  v14 = +[NSUUID UUID];
  v15 = [(CSVoiceTriggerSecondPassRequestOption *)v10 initWithFirstPassSource:4 deviceId:deviceId audioProviderUUID:v13 firstPassInfo:v8 rejectionMHUUID:v14 isSecondChanceRun:[(CSVoiceTriggerSecondChanceContext *)self->_secondChanceContext shouldRunAsSecondChance] firstpassMetrics:self->_firstpassMetrics rtModelRequestOptions:0];

  [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setSupportsMultiPhraseDetection:[(CSVoiceTriggerUserSelectedPhrase *)self->_multiPhraseSelectedStatus multiPhraseSelected]];
  voiceTriggerSecondPass = self->_voiceTriggerSecondPass;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10006E928;
  v18[3] = &unk_10024FBD8;
  v18[5] = buf;
  objc_copyWeak(&v19, &location);
  v18[4] = self;
  [(CSVoiceTriggerSecondPass *)voiceTriggerSecondPass handleVoiceTriggerSecondPassFrom:v15 completion:v18];
  firstpassMetrics = self->_firstpassMetrics;
  self->_firstpassMetrics = 0;

  objc_destroyWeak(&v19);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
}

- (void)_notifyJarvisVoiceTriggerReject
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    numProcessedSamples = self->_numProcessedSamples;
    *buf = 136315394;
    v8 = "[CSVoiceTriggerFirstPassJarvis _notifyJarvisVoiceTriggerReject]";
    v9 = 2050;
    v10 = numProcessedSamples;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Notify jarvis handler reject at: %{public}tu", buf, 0x16u);
  }

  self->_hasReceivedNDEAPIResult = 1;
  [(CSVoiceTriggerFirstPassJarvis *)self _reset];
  v5 = [(CSVoiceTriggerFirstPassJarvis *)self audioStream];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006EBB0;
  v6[3] = &unk_100253300;
  v6[4] = self;
  [v5 stopAudioStreamWithOption:0 completion:v6];

  [(CSVoiceTriggerFirstPassJarvis *)self _cancelAudioStreamHold];
}

- (void)_didDetectKeywordFromDeviceId:(id)a3 activationInfo:(id)a4 triggerHostTime:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006ED20;
  block[3] = &unk_10024FBB0;
  v20 = v12;
  v21 = a5;
  block[4] = self;
  v18 = v11;
  v19 = v10;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(queue, block);
}

- (void)_requestStartAudioStreamWitContext:(id)a3 startStreamOption:(id)a4 completion:(id)a5
{
  v8 = a4;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10006F1A0;
  v24[3] = &unk_100253220;
  v9 = a5;
  v25 = v9;
  v10 = a3;
  v11 = objc_retainBlock(v24);
  speechManager = self->_speechManager;
  v23 = 0;
  v13 = [(CSSpeechManager *)speechManager audioProviderWithContext:v10 error:&v23];

  v14 = v23;
  if (v13)
  {
    [(CSVoiceTriggerFirstPassJarvis *)self setAudioProvider:v13];
    v15 = objc_alloc_init(CSAudioStreamRequest);
    [v15 setRequiresHistoricalBuffer:1];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v22 = 0;
    v18 = [v13 audioStreamWithRequest:v15 streamName:v17 error:&v22];
    v19 = v22;

    if (v18)
    {
      [(CSVoiceTriggerFirstPassJarvis *)self setAudioStream:v18];
      [v18 setDelegate:self];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10006F1B8;
      v20[3] = &unk_100253270;
      v20[4] = self;
      v21 = v11;
      [v18 startAudioStreamWithOption:v8 completion:v20];
    }

    else
    {
      (v11[2])(v11, 0, v19);
    }
  }

  else
  {
    (v11[2])(v11, 0, v14);
  }
}

- (void)_handleJarvisVoiceTriggerFromDeviceId:(id)a3 activationInfo:(id)a4 triggerHostTime:(unint64_t)a5 completion:(id)a6
{
  v9 = a3;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10006F668;
  v35[3] = &unk_100253220;
  v10 = a6;
  v36 = v10;
  v11 = objc_retainBlock(v35);
  if (!self->_rtModel)
  {
    v24 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v38 = "[CSVoiceTriggerFirstPassJarvis _handleJarvisVoiceTriggerFromDeviceId:activationInfo:triggerHostTime:completion:]";
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s rtModel is nil!", buf, 0xCu);
    }

    v25 = CSErrorDomain;
    v26 = 114;
    goto LABEL_11;
  }

  v12 = [CSKeywordAnalyzerNDEAPI alloc];
  v13 = [(CSVoiceTriggerRTModel *)self->_rtModel modelData];
  v14 = [v12 initWithBlob:v13];
  keywordAnalyzerNDEAPI = self->_keywordAnalyzerNDEAPI;
  self->_keywordAnalyzerNDEAPI = v14;

  [(CSKeywordAnalyzerNDEAPI *)self->_keywordAnalyzerNDEAPI setActiveChannel:self->_activeChannel];
  [(CSKeywordAnalyzerNDEAPI *)self->_keywordAnalyzerNDEAPI setDelegate:self];
  if (!self->_keywordAnalyzerNDEAPI)
  {
    v27 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v38 = "[CSVoiceTriggerFirstPassJarvis _handleJarvisVoiceTriggerFromDeviceId:activationInfo:triggerHostTime:completion:]";
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s keywordAnalyzerNDEAPI is nil!", buf, 0xCu);
    }

    v25 = CSErrorDomain;
    v26 = 506;
LABEL_11:
    v28 = [NSError errorWithDomain:v25 code:v26 userInfo:0];
    (v11[2])(v11, 0, v28);
    goto LABEL_17;
  }

  self->_hasReceivedNDEAPIResult = 0;
  +[CSConfig inputRecordingSampleRate];
  self->_jarvisVoiceTriggerTimeout = (v16 * 3.0);
  v17 = +[CSJarvisTriggerModeMonitor sharedInstance];
  self->_latestTriggerMode = [v17 getTriggerMode];

  if (self->_latestTriggerMode == 2)
  {
    v18 = [CSSPGEndpointAnalyzer alloc];
    LODWORD(v19) = 1161527296;
    v20 = [(CSSPGEndpointAnalyzer *)v18 initWithEndpointThreshold:v19];
    endpointAnalyzer = self->_endpointAnalyzer;
    self->_endpointAnalyzer = v20;

    [(CSSPGEndpointAnalyzer *)self->_endpointAnalyzer setDelegate:self];
    +[CSConfig inputRecordingSampleRate];
    self->_jarvisVoiceTriggerTimeout = (v22 * 60.0);
    v23 = 0.5;
  }

  else
  {
    v23 = 1.1;
  }

  v28 = [CSAudioRecordContext contextForJarvisWithDeviceId:v9];
  v29 = +[CSAudioStartStreamOption noAlertOption];
  [v29 setRequestHistoricalAudioDataWithHostTime:1];
  *&v30 = v23;
  if ([CSFTimeUtils secondsToHostTime:v30]>= a5)
  {
    v32 = 0;
  }

  else
  {
    *&v31 = v23;
    v32 = a5 - [CSFTimeUtils secondsToHostTime:v31];
  }

  [v29 setStartRecordingHostTime:v32];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10006F7A0;
  v33[3] = &unk_100253270;
  v33[4] = self;
  v34 = v11;
  [(CSVoiceTriggerFirstPassJarvis *)self _requestStartAudioStreamWitContext:v28 startStreamOption:v29 completion:v33];

LABEL_17:
}

- (void)spgEndpointAnalyzerDidDetectEndpoint:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F938;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)activationEventNotificationHandler:(id)a3 event:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 type] != 6)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    v13 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
LABEL_8:
    v14 = v13;
    v10[2](v10, 0, v13);

    goto LABEL_14;
  }

  if (![(CSOtherAppRecordingStateMonitorProviding *)self->_otherAppRecordingStateMonitor isOtherNonEligibleAppRecording])
  {
    v15 = +[CSFPreferences sharedPreferences];
    v16 = [v15 voiceTriggerEnabled];

    if (v16)
    {
      objc_initWeak(location, self);
      v17 = [v9 deviceId];
      v18 = [v9 activationInfo];
      v19 = [v9 hosttime];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10006FCEC;
      v20[3] = &unk_1002505D8;
      objc_copyWeak(&v22, location);
      v21 = v10;
      [(CSVoiceTriggerFirstPassJarvis *)self _didDetectKeywordFromDeviceId:v17 activationInfo:v18 triggerHostTime:v19 completion:v20];

      objc_destroyWeak(&v22);
      objc_destroyWeak(location);
      goto LABEL_14;
    }

    if (!v10)
    {
      goto LABEL_14;
    }

    v13 = [NSError errorWithDomain:CSErrorDomain code:604 userInfo:0];
    goto LABEL_8;
  }

  v11 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    *location = 136315394;
    *&location[4] = "[CSVoiceTriggerFirstPassJarvis activationEventNotificationHandler:event:completion:]";
    v24 = 2114;
    v25 = v9;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Ignore %{public}@ since there is an other non eligible app recording", location, 0x16u);
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  if (v10)
  {
LABEL_5:
    v12 = [NSError errorWithDomain:CSErrorDomain code:610 userInfo:0];
    v10[2](v10, 0, v12);
  }

LABEL_14:
}

- (void)keywordAnalyzerNDEAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (!self->_hasReceivedNDEAPIResult)
  {
    self->_hasReceivedNDEAPIResult = 1;
    objc_storeStrong(&self->_jarvisTriggerResult, a4);
    [(CSVoiceTriggerFirstPassJarvis *)self _reportJarvisVoiceTriggerFire];
    [(CSVoiceTriggerFirstPassJarvis *)self _reset];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.jarvis", 0, 0, 1u);
    v10 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CSVoiceTriggerFirstPassJarvis keywordAnalyzerNDEAPI:hasResultAvailable:forChannel:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Send Jarvis Myriad notification", &v11, 0xCu);
    }
  }

  [v7 reset];
}

- (void)_handleAudioChunk:(id)a3
{
  v4 = a3;
  v5 = qword_10029E170;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * qword_10029E170, 1) <= 0x888888888888888uLL)
  {
    kdebug_trace();
    v5 = qword_10029E170;
  }

  qword_10029E170 = v5 + 1;
  if (self->_currentAsset)
  {
    v6 = qword_10029E178;
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * qword_10029E178, 2) <= 0xCCCCCCCCCCCCCCCuLL)
    {
      v7 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_INFO))
      {
        isSecondPassRunning = self->_isSecondPassRunning;
        isSiriClientListening = self->_isSiriClientListening;
        v18 = 136315906;
        v19 = "[CSVoiceTriggerFirstPassJarvis _handleAudioChunk:]";
        v20 = 2050;
        v21 = v6;
        v22 = 1026;
        v23 = isSecondPassRunning;
        v24 = 1026;
        v25 = isSiriClientListening;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s NDEAPI Jarvis first pass heart beat %{public}llu, isSecondPassRunning? %{public}d, isSiriClientListening? %{public}d", &v18, 0x22u);
        v6 = qword_10029E178;
      }
    }

    qword_10029E178 = v6 + 1;
    if (!self->_isSecondPassRunning && !self->_isSiriClientListening)
    {
      numProcessedSamples = self->_numProcessedSamples;
      v11 = [v4 numSamples] + numProcessedSamples;
      audioFileWriter = self->_audioFileWriter;
      v13 = [v4 data];
      -[CSPlainAudioFileWriter addSamples:numSamples:](audioFileWriter, "addSamples:numSamples:", [v13 bytes], objc_msgSend(v4, "numSamples"));

      if (v11 < self->_jarvisVoiceTriggerTimeout || self->_hasReceivedNDEAPIResult)
      {
        v14 = [(CSKeywordAnalyzerNDEAPI *)self->_keywordAnalyzerNDEAPI processAudioChunk:v4];
        self->_numProcessedSamples += [v4 numSamples];
        endpointAnalyzer = self->_endpointAnalyzer;
        v16 = [v4 dataForChannel:self->_activeChannel];
        -[CSSPGEndpointAnalyzer addAudio:numSamples:](endpointAnalyzer, "addAudio:numSamples:", v16, [v4 numSamples]);
      }

      else
      {
        [(CSVoiceTriggerFirstPassJarvis *)self _notifyJarvisVoiceTriggerReject];
      }
    }
  }

  else
  {
    v17 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[CSVoiceTriggerFirstPassJarvis _handleAudioChunk:]";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Could not find Assets. Cannot process Audio", &v18, 0xCu);
    }
  }
}

- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000701FC;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000703D8;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)_didStopAudioStream
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVoiceTriggerFirstPassJarvis _didStopAudioStream]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  kdebug_trace();
  [(CSVoiceTriggerFirstPassJarvis *)self _clearTriggerCandidate];
  [(CSSPGEndpointAnalyzer *)self->_endpointAnalyzer stop];
  [(CSPlainAudioFileWriter *)self->_audioFileWriter endAudio];
}

- (void)_didStartAudioStream
{
  kdebug_trace();
  [(CSSPGEndpointAnalyzer *)self->_endpointAnalyzer start];
  v3 = +[CSFPreferences sharedPreferences];
  v4 = [v3 jarvisAudioLoggingEnabled];

  if (v4)
  {
    v5 = +[CSVoiceTriggerFirstPassJarvis jarvisAudioLoggingFilePath];
    v6 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[CSVoiceTriggerFirstPassJarvis _didStartAudioStream]";
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Jarvis firstpass writing audio file into %{public}@", &v12, 0x16u);
    }

    v7 = [CSPlainAudioFileWriter alloc];
    v8 = [NSURL URLWithString:v5];
    v9 = [v7 initWithURL:v8];
    audioFileWriter = self->_audioFileWriter;
    self->_audioFileWriter = v9;
  }

  else
  {
    v11 = self->_audioFileWriter;
    self->_audioFileWriter = 0;
  }
}

- (void)_clearTriggerCandidate
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVoiceTriggerFirstPassJarvis _clearTriggerCandidate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Clearing VoiceTrigger candidate in the voiceTriggerJarvis", &v4, 0xCu);
  }

  self->_hasTriggerCandidate = 0;
}

- (void)_setAsset:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 logAssetVersionForInsight];
    objc_storeStrong(&self->_currentAsset, a3);
    v7 = [v6 RTModelWithFallbackLanguage:@"en-US"];
    rtModel = self->_rtModel;
    self->_rtModel = v7;

    [(CSVoiceTriggerFirstPassJarvis *)self _reset];
    [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setAsset:v6];
    if (!self->_firstTimeAssetConfigured)
    {
      self->_firstTimeAssetConfigured = 1;
    }
  }

  else
  {
    v9 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CSVoiceTriggerFirstPassJarvis _setAsset:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s asset is nil, stop initialization", &v10, 0xCu);
    }
  }
}

- (void)setAsset:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100070994;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_reset
{
  [(CSKeywordAnalyzerNDEAPI *)self->_keywordAnalyzerNDEAPI reset];
  self->_numProcessedSamples = 0;

  [(CSVoiceTriggerFirstPassJarvis *)self _clearTriggerCandidate];
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070A54;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)start
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSVoiceTriggerFirstPassJarvis start]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070B5C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSVoiceTriggerFirstPassJarvis)initWithSpeechManager:(id)a3 otherAppRecordingStateMonitor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = CSVoiceTriggerFirstPassJarvis;
  v9 = [(CSVoiceTriggerFirstPassJarvis *)&v23 init];
  if (v9)
  {
    v10 = dispatch_queue_create("VoiceTriggerFirstPassJarvis Queue", 0);
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = v9->_queue;
    v13 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v12, v13);

    v9->_numProcessedSamples = 0;
    v9->_activeChannel = +[CSConfig channelForProcessedInput];
    +[CSConfig inputRecordingSampleRate];
    v9->_jarvisVoiceTriggerTimeout = (v14 * 3.0);
    [(CSVoiceTriggerFirstPassJarvis *)v9 _clearTriggerCandidate];
    v15 = +[CSJarvisTriggerModeMonitor sharedInstance];
    [v15 addObserver:v9];

    v9->_firstTimeAssetConfigured = 0;
    v16 = +[NSMutableArray array];
    assetConfigWaitingBuffer = v9->_assetConfigWaitingBuffer;
    v9->_assetConfigWaitingBuffer = v16;

    v9->_latestTriggerMode = -1;
    objc_storeStrong(&v9->_speechManager, a3);
    if (!v9->_speechManager)
    {
      v18 = +[CSSpeechManager sharedManager];
      speechManager = v9->_speechManager;
      v9->_speechManager = v18;
    }

    objc_storeStrong(&v9->_otherAppRecordingStateMonitor, a4);
    if (!v9->_otherAppRecordingStateMonitor)
    {
      v20 = +[CSOtherAppRecordingStateMonitorFactory otherAppRecordingStateMonitor];
      otherAppRecordingStateMonitor = v9->_otherAppRecordingStateMonitor;
      v9->_otherAppRecordingStateMonitor = v20;
    }
  }

  return v9;
}

+ (id)timeStampString
{
  v2 = objc_alloc_init(NSDateFormatter);
  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd-HHmmss"];
  v4 = +[NSDate date];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

+ (id)jarvisAudioLogDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[CSFPreferences sharedPreferences];
  v4 = [v3 voiceTriggerAudioLogDirectory];

  if ([v2 fileExistsAtPath:v4])
  {
    v5 = 0;
  }

  else
  {
    v11 = 0;
    v6 = [v2 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v11];
    v5 = v11;
    if ((v6 & 1) == 0)
    {
      v7 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
      {
        v9 = v7;
        v10 = [v5 localizedDescription];
        *buf = 136315650;
        v13 = "+[CSVoiceTriggerFirstPassJarvis jarvisAudioLogDirectory]";
        v14 = 2114;
        v15 = v4;
        v16 = 2114;
        v17 = v10;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Couldn't create jarvis audio logging directory at path %{public}@ %{public}@", buf, 0x20u);
      }

      v4 = @"/tmp";
    }
  }

  return v4;
}

+ (id)jarvisAudioLoggingFilePath
{
  v2 = +[CSVoiceTriggerFirstPassJarvis jarvisAudioLogDirectory];
  v3 = +[CSVoiceTriggerFirstPassJarvis timeStampString];
  v4 = [NSString stringWithFormat:@"%@%@.wav", v3, @"-jarvis"];

  v5 = [v2 stringByAppendingPathComponent:v4];

  return v5;
}

@end