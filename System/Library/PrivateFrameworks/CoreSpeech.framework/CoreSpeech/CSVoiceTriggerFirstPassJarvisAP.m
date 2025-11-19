@interface CSVoiceTriggerFirstPassJarvisAP
- (CSVoiceTriggerDelegate)delegate;
- (CSVoiceTriggerFirstPassJarvisAP)initWithSpeechManager:(id)a3 siriClientBehaviorMonitor:(id)a4;
- (void)_addAudioStreamHold:(id)a3;
- (void)_cancelLastAudioStreamHold;
- (void)_createSecondPass;
- (void)_handleSecondPassResult:(id)a3 deviceId:(id)a4 error:(id)a5;
- (void)_keywordAnalyzerNDAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5;
- (void)_setAsset:(id)a3;
- (void)_startListenWithCompletion:(id)a3;
- (void)_stopListening;
- (void)_teardownSecondPass;
- (void)_transitJarvisAPEnable:(BOOL)a3;
- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4;
- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4;
- (void)dealloc;
- (void)setAsset:(id)a3;
- (void)shouldProcessAudio:(id)a3;
- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7;
- (void)siriClientBehaviorMonitor:(id)a3 didStopStream:(id)a4 withEventUUID:(id)a5;
- (void)siriClientBehaviorMonitor:(id)a3 willStopStream:(id)a4 reason:(unint64_t)a5;
- (void)start;
@end

@implementation CSVoiceTriggerFirstPassJarvisAP

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
  block[2] = sub_1000BB740;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)a3 didStopStream:(id)a4 withEventUUID:(id)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB86C;
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
    v20 = "[CSVoiceTriggerFirstPassJarvisAP siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (v9)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BBA84;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_transitJarvisAPEnable:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BBBB4;
  v4[3] = &unk_100253BF8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)_teardownSecondPass
{
  v3 = objc_autoreleasePoolPush();
  voiceTriggerSecondPass = self->_voiceTriggerSecondPass;
  self->_voiceTriggerSecondPass = 0;

  objc_autoreleasePoolPop(v3);
  secondPassTransaction = self->_secondPassTransaction;
  self->_secondPassTransaction = 0;
}

- (void)_createSecondPass
{
  if (!self->_voiceTriggerSecondPass)
  {
    v4 = [[CSOSTransaction alloc] initWithDescription:@"VoiceTrigger SecondPass"];
    secondPassTransaction = self->_secondPassTransaction;
    self->_secondPassTransaction = v4;

    v6 = [[CSVoiceTriggerSecondPass alloc] initWithFirstPassSource:4 phsEnabled:0 speechManager:0 supportsMphDetection:0 secondPassQueue:0];
    voiceTriggerSecondPass = self->_voiceTriggerSecondPass;
    self->_voiceTriggerSecondPass = v6;

    [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setSecondPassClient:3];
    [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setAsset:self->_currentAsset];
    v8 = [(CSVoiceTriggerFirstPassJarvisAP *)self delegate];
    [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setDelegate:v8];

    v9 = self->_voiceTriggerSecondPass;

    [(CSVoiceTriggerSecondPass *)v9 start];
  }
}

- (void)_cancelLastAudioStreamHold
{
  if ([(NSMutableArray *)self->_audioStreamHoldings count])
  {
    v4 = [(NSMutableArray *)self->_audioStreamHoldings lastObject];
    v3 = [(CSVoiceTriggerFirstPassJarvisAP *)self audioProvider];
    [v3 cancelAudioStreamHold:v4];

    [(NSMutableArray *)self->_audioStreamHoldings removeLastObject];
  }
}

- (void)_addAudioStreamHold:(id)a3
{
  v4 = a3;
  v6 = [[CSAudioStreamHoldRequestOption alloc] initWithTimeout:2 clientIdentity:0 requireRecordModeLock:0 requireListeningMicIndicatorLock:5.0];
  v5 = [(CSAudioProvider *)self->_audioProvider holdAudioStreamWithDescription:v4 option:v6];

  [(NSMutableArray *)self->_audioStreamHoldings addObject:v5];
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
    v27 = 136315906;
    v28 = "[CSVoiceTriggerFirstPassJarvisAP _handleSecondPassResult:deviceId:error:]";
    v29 = 1024;
    *v30 = v11;
    *&v30[4] = 2114;
    *&v30[6] = v12;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Second Pass Result, %d, %{public}@, %{public}@", &v27, 0x26u);
  }

  self->_isSecondPassRunning = 0;
  if (v11 == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v22 = objc_opt_respondsToSelector();

    if ((v22 & 1) == 0)
    {
      goto LABEL_14;
    }

    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 voiceTriggerDidDetectNearMiss:v12 deviceId:v9];
    goto LABEL_12;
  }

  if (v11 == 2)
  {
    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      goto LABEL_14;
    }

    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 voiceTriggerDidRejected:v12 deviceId:v9];
    goto LABEL_12;
  }

  if (v11 == 1)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      goto LABEL_14;
    }

    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 voiceTriggerDidDetectKeyword:v12 deviceId:v9];
    goto LABEL_12;
  }

  v23 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    v18 = v23;
    v26 = [v10 localizedDescription];
    v27 = 136315394;
    v28 = "[CSVoiceTriggerFirstPassJarvisAP _handleSecondPassResult:deviceId:error:]";
    v29 = 2114;
    *v30 = v26;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s VoiceTrigger Second Pass has failed : %{public}@", &v27, 0x16u);

LABEL_12:
  }

LABEL_14:
  if ([v8 isSecondChanceCandidate])
  {
    v24 = [[CSVoiceTriggerSecondChanceContext alloc] initWithWindowStartTime:mach_absolute_time()];
  }

  else
  {
    v24 = 0;
  }

  secondChanceContext = self->_secondChanceContext;
  self->_secondChanceContext = v24;

  if (v11 != 1)
  {
    [(CSVoiceTriggerFirstPassJarvisAP *)self _cancelLastAudioStreamHold];
  }

  [(CSVoiceTriggerFirstPassJarvisAP *)self _reset];
}

- (void)_keywordAnalyzerNDAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    [v8 bestScore];
    v11 = v10;
    v12 = qword_10029E270;
    if (!(qword_10029E270 % self->_heartbeatFactor))
    {
      v13 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v34 = "[CSVoiceTriggerFirstPassJarvisAP _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
        v35 = 2050;
        v36 = v11;
        v37 = 2050;
        v38 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Jarvis AP first pass best score = %{public}.3f for heartbeat = %{public}lld", buf, 0x20u);
        v12 = qword_10029E270;
      }
    }

    qword_10029E270 = v12 + 1;
    if (v11 >= self->_keywordThreshold)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.jarvis", 0, 0, 1u);
      v15 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v34 = "[CSVoiceTriggerFirstPassJarvisAP _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Send Jarvis Myriad notification", buf, 0xCu);
      }

      v31[0] = kVTEIfirstPassScore;
      *&v16 = v11;
      v17 = [NSNumber numberWithFloat:v16];
      v32[0] = v17;
      v31[1] = kVTEIfirstPassStartSampleCount;
      v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 bestStart]);
      v32[1] = v18;
      v31[2] = kVTEIfirstPassEndSampleCount;
      v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 bestEnd]);
      v32[2] = v19;
      v31[3] = kVTEIfirstPassFireSampleCount;
      v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 samplesAtFire]);
      v32[3] = v20;
      v21 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];

      v22 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v34 = "[CSVoiceTriggerFirstPassJarvisAP _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
        v35 = 2112;
        v36 = *&v9;
        v37 = 2112;
        v38 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Detected : %@, %@", buf, 0x20u);
      }

      [v7 reset];
      [(CSVoiceTriggerFirstPassJarvisAP *)self _createSecondPass];
      self->_isSecondPassRunning = 1;
      [(CSVoiceTriggerFirstPassJarvisAP *)self _addAudioStreamHold:@"Jarvis AP first pass triggered"];
      objc_initWeak(buf, self);
      v23 = [CSVoiceTriggerSecondPassRequestOption alloc];
      deviceId = self->_deviceId;
      v25 = [(CSAudioProvider *)self->_audioProvider UUID];
      v26 = +[NSUUID UUID];
      v27 = [(CSVoiceTriggerSecondPassRequestOption *)v23 initWithFirstPassSource:4 deviceId:deviceId audioProviderUUID:v25 firstPassInfo:v21 rejectionMHUUID:v26 isSecondChanceRun:[(CSVoiceTriggerSecondChanceContext *)self->_secondChanceContext shouldRunAsSecondChance] firstpassMetrics:0 rtModelRequestOptions:0];

      [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setSupportsMultiPhraseDetection:[(CSVoiceTriggerUserSelectedPhrase *)self->_multiPhraseSelectedStatus multiPhraseSelected]];
      voiceTriggerSecondPass = self->_voiceTriggerSecondPass;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000BC5C8;
      v29[3] = &unk_100250980;
      objc_copyWeak(&v30, buf);
      [(CSVoiceTriggerSecondPass *)voiceTriggerSecondPass handleVoiceTriggerSecondPassFrom:v27 completion:v29];
      objc_destroyWeak(&v30);

      objc_destroyWeak(buf);
    }
  }
}

- (void)shouldProcessAudio:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BC7E8;
  v7[3] = &unk_100253718;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BC8FC;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BCB6C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_stopListening
{
  v3 = objc_autoreleasePoolPush();
  keywordAnalyzerNDAPI = self->_keywordAnalyzerNDAPI;
  self->_keywordAnalyzerNDAPI = 0;

  objc_autoreleasePoolPop(v3);
  v5 = [(CSVoiceTriggerFirstPassJarvisAP *)self audioStream];

  if (v5)
  {
    v6 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[CSVoiceTriggerFirstPassJarvisAP _stopListening]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Waiting for recordWillStartGroup before scheduling stpoAudioStream", buf, 0xCu);
    }

    recordingWillStartGroup = self->_recordingWillStartGroup;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BCCF8;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_group_notify(recordingWillStartGroup, queue, block);
  }
}

- (void)_startListenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "[CSVoiceTriggerFirstPassJarvisAP _startListenWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000BD3EC;
  v42[3] = &unk_100253220;
  v6 = v4;
  v43 = v6;
  v7 = objc_retainBlock(v42);
  v8 = [CSVoiceTriggerSecondPassConfigDecoder decodeConfigFrom:self->_currentAsset forFirstPassSource:4];
  v9 = [v8 configPathNDAPI];
  v10 = [(CSAsset *)self->_currentAsset resourcePath];
  v37 = v9;
  v11 = [[CSKeywordAnalyzerNDAPI alloc] initWithConfigPath:v9 resourcePath:v10];
  keywordAnalyzerNDAPI = self->_keywordAnalyzerNDAPI;
  self->_keywordAnalyzerNDAPI = v11;

  [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzerNDAPI getThreshold];
  self->_keywordThreshold = v13;
  [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzerNDAPI setActiveChannel:0];
  deviceId = self->_deviceId;
  self->_deviceId = 0;

  v15 = +[CSSiriClientBehaviorMonitor sharedInstance];
  v16 = [v15 recordRoute];
  LODWORD(v9) = [CSUtils isJarvisAudioRouteWithRecordRoute:v16];

  if (v9)
  {
    v17 = +[CSSiriClientBehaviorMonitor sharedInstance];
    v18 = [v17 deviceId];
    v19 = self->_deviceId;
    self->_deviceId = v18;
  }

  if (self->_deviceId)
  {
    v36 = v8;
    v20 = [CSAudioRecordContext contextForJarvisWithDeviceId:?];
    speechManager = self->_speechManager;
    v41 = 0;
    v22 = [(CSSpeechManager *)speechManager audioProviderWithContext:v20 error:&v41];
    v23 = v41;
    [(CSVoiceTriggerFirstPassJarvisAP *)self setAudioProvider:v22];
    if (v22)
    {
      v34 = v23;
      v35 = v6;
      v24 = [CSAudioStreamRequest defaultRequestWithContext:v20];
      [v24 setClientIdentity:2];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v40 = 0;
      v27 = [v22 audioStreamWithRequest:v24 streamName:v26 error:&v40];
      v28 = v40;

      if (v27)
      {
        [(CSVoiceTriggerFirstPassJarvisAP *)self setAudioStream:v27];
        [v27 setDelegate:self];
        v29 = [(CSVoiceTriggerFirstPassJarvisAP *)self audioStream];

        if (v29)
        {
          v30 = CSLogCategoryVT;
          if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v45 = "[CSVoiceTriggerFirstPassJarvisAP _startListenWithCompletion:]";
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s Entering recordWillStartGroup", buf, 0xCu);
          }

          dispatch_group_enter(self->_recordingWillStartGroup);
          v31 = +[CSAudioStartStreamOption noAlertOption];
          v32 = [(CSVoiceTriggerFirstPassJarvisAP *)self audioStream];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_1000BD404;
          v38[3] = &unk_100253270;
          v38[4] = self;
          v39 = v7;
          [v32 startAudioStreamWithOption:v31 completion:v38];
        }
      }

      else
      {
        (v7[2])(v7, 0, v28);
      }

      v23 = v34;
      v6 = v35;
    }

    else
    {
      v28 = [NSError errorWithDomain:CSErrorDomain code:1451 userInfo:0];
      (v7[2])(v7, 0, v28);
    }

    v8 = v36;
  }

  else
  {
    v33 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[CSVoiceTriggerFirstPassJarvisAP _startListenWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s JarvisAP deviceId is nil, skip starting", buf, 0xCu);
    }

    v20 = [NSError errorWithDomain:CSErrorDomain code:509 userInfo:0];
    (v7[2])(v7, 0, v20);
  }
}

- (void)_setAsset:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 logAssetVersionForInsight];
    objc_storeStrong(&self->_currentAsset, a3);
  }

  else
  {
    v7 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[CSVoiceTriggerFirstPassJarvisAP _setAsset:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s asset is nil, stop initialization", &v8, 0xCu);
    }
  }
}

- (void)setAsset:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BD7A0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSVoiceTriggerFirstPassJarvisAP dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerFirstPassJarvisAP is deallocating", buf, 0xCu);
  }

  [(CSPolicy *)self->_voiceTriggerJarvisAPEnabledPolicy setCallback:0];
  v4.receiver = self;
  v4.super_class = CSVoiceTriggerFirstPassJarvisAP;
  [(CSVoiceTriggerFirstPassJarvisAP *)&v4 dealloc];
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BD8F4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSVoiceTriggerFirstPassJarvisAP)initWithSpeechManager:(id)a3 siriClientBehaviorMonitor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = CSVoiceTriggerFirstPassJarvisAP;
  v8 = [(CSVoiceTriggerFirstPassJarvisAP *)&v25 init];
  if (v8)
  {
    v9 = dispatch_queue_create("CSVoiceTriggerFirstPassJarvisAP", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    v11 = dispatch_group_create();
    recordingWillStartGroup = v8->_recordingWillStartGroup;
    v8->_recordingWillStartGroup = v11;

    v13 = +[NSMutableArray array];
    audioStreamHoldings = v8->_audioStreamHoldings;
    v8->_audioStreamHoldings = v13;

    +[CSConfig inputRecordingBufferDuration];
    v8->_heartbeatFactor = (2.0 / v15);
    if (v6)
    {
      v16 = v6;
    }

    else
    {
      v16 = +[CSSpeechManager sharedManager];
    }

    speechManager = v8->_speechManager;
    v8->_speechManager = v16;

    if (v7)
    {
      v18 = v7;
    }

    else
    {
      v18 = +[CSSiriClientBehaviorMonitor sharedInstance];
    }

    siriClientBehaviorMonitor = v8->_siriClientBehaviorMonitor;
    v8->_siriClientBehaviorMonitor = v18;

    v20 = +[CSVoiceTriggerJarvisAPEnabledPolicy sharedInstance];
    voiceTriggerJarvisAPEnabledPolicy = v8->_voiceTriggerJarvisAPEnabledPolicy;
    v8->_voiceTriggerJarvisAPEnabledPolicy = v20;

    v22 = [[CSVoiceTriggerUserSelectedPhrase alloc] initWithEndpointId:0];
    multiPhraseSelectedStatus = v8->_multiPhraseSelectedStatus;
    v8->_multiPhraseSelectedStatus = v22;
  }

  return v8;
}

@end