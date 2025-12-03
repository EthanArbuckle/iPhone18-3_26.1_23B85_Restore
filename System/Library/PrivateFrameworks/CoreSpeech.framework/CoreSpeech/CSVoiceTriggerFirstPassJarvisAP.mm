@interface CSVoiceTriggerFirstPassJarvisAP
- (CSVoiceTriggerDelegate)delegate;
- (CSVoiceTriggerFirstPassJarvisAP)initWithSpeechManager:(id)manager siriClientBehaviorMonitor:(id)monitor;
- (void)_addAudioStreamHold:(id)hold;
- (void)_cancelLastAudioStreamHold;
- (void)_createSecondPass;
- (void)_handleSecondPassResult:(id)result deviceId:(id)id error:(id)error;
- (void)_keywordAnalyzerNDAPI:(id)i hasResultAvailable:(id)available forChannel:(unint64_t)channel;
- (void)_setAsset:(id)asset;
- (void)_startListenWithCompletion:(id)completion;
- (void)_stopListening;
- (void)_teardownSecondPass;
- (void)_transitJarvisAPEnable:(BOOL)enable;
- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available;
- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly;
- (void)dealloc;
- (void)setAsset:(id)asset;
- (void)shouldProcessAudio:(id)audio;
- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d;
- (void)siriClientBehaviorMonitor:(id)monitor didStopStream:(id)stream withEventUUID:(id)d;
- (void)siriClientBehaviorMonitor:(id)monitor willStopStream:(id)stream reason:(unint64_t)reason;
- (void)start;
@end

@implementation CSVoiceTriggerFirstPassJarvisAP

- (CSVoiceTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)siriClientBehaviorMonitor:(id)monitor willStopStream:(id)stream reason:(unint64_t)reason
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB740;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor didStopStream:(id)stream withEventUUID:(id)d
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB86C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d
{
  successfullyCopy = successfully;
  monitorCopy = monitor;
  contextCopy = context;
  optionCopy = option;
  dCopy = d;
  v16 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[CSVoiceTriggerFirstPassJarvisAP siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (successfullyCopy)
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

- (void)_transitJarvisAPEnable:(BOOL)enable
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BBBB4;
  v4[3] = &unk_100253BF8;
  v4[4] = self;
  enableCopy = enable;
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
    delegate = [(CSVoiceTriggerFirstPassJarvisAP *)self delegate];
    [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setDelegate:delegate];

    v9 = self->_voiceTriggerSecondPass;

    [(CSVoiceTriggerSecondPass *)v9 start];
  }
}

- (void)_cancelLastAudioStreamHold
{
  if ([(NSMutableArray *)self->_audioStreamHoldings count])
  {
    lastObject = [(NSMutableArray *)self->_audioStreamHoldings lastObject];
    audioProvider = [(CSVoiceTriggerFirstPassJarvisAP *)self audioProvider];
    [audioProvider cancelAudioStreamHold:lastObject];

    [(NSMutableArray *)self->_audioStreamHoldings removeLastObject];
  }
}

- (void)_addAudioStreamHold:(id)hold
{
  holdCopy = hold;
  v6 = [[CSAudioStreamHoldRequestOption alloc] initWithTimeout:2 clientIdentity:0 requireRecordModeLock:0 requireListeningMicIndicatorLock:5.0];
  v5 = [(CSAudioProvider *)self->_audioProvider holdAudioStreamWithDescription:holdCopy option:v6];

  [(NSMutableArray *)self->_audioStreamHoldings addObject:v5];
}

- (void)_handleSecondPassResult:(id)result deviceId:(id)id error:(id)error
{
  resultCopy = result;
  idCopy = id;
  errorCopy = error;
  result = [resultCopy result];
  voiceTriggerEventInfo = [resultCopy voiceTriggerEventInfo];
  v13 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    localizedDescription = [errorCopy localizedDescription];
    v27 = 136315906;
    v28 = "[CSVoiceTriggerFirstPassJarvisAP _handleSecondPassResult:deviceId:error:]";
    v29 = 1024;
    *v30 = result;
    *&v30[4] = 2114;
    *&v30[6] = voiceTriggerEventInfo;
    v31 = 2114;
    v32 = localizedDescription;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Second Pass Result, %d, %{public}@, %{public}@", &v27, 0x26u);
  }

  self->_isSecondPassRunning = 0;
  if (result == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v22 = objc_opt_respondsToSelector();

    if ((v22 & 1) == 0)
    {
      goto LABEL_14;
    }

    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 voiceTriggerDidDetectNearMiss:voiceTriggerEventInfo deviceId:idCopy];
    goto LABEL_12;
  }

  if (result == 2)
  {
    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      goto LABEL_14;
    }

    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 voiceTriggerDidRejected:voiceTriggerEventInfo deviceId:idCopy];
    goto LABEL_12;
  }

  if (result == 1)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      goto LABEL_14;
    }

    v18 = objc_loadWeakRetained(&self->_delegate);
    [v18 voiceTriggerDidDetectKeyword:voiceTriggerEventInfo deviceId:idCopy];
    goto LABEL_12;
  }

  v23 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    v18 = v23;
    localizedDescription2 = [errorCopy localizedDescription];
    v27 = 136315394;
    v28 = "[CSVoiceTriggerFirstPassJarvisAP _handleSecondPassResult:deviceId:error:]";
    v29 = 2114;
    *v30 = localizedDescription2;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s VoiceTrigger Second Pass has failed : %{public}@", &v27, 0x16u);

LABEL_12:
  }

LABEL_14:
  if ([resultCopy isSecondChanceCandidate])
  {
    v24 = [[CSVoiceTriggerSecondChanceContext alloc] initWithWindowStartTime:mach_absolute_time()];
  }

  else
  {
    v24 = 0;
  }

  secondChanceContext = self->_secondChanceContext;
  self->_secondChanceContext = v24;

  if (result != 1)
  {
    [(CSVoiceTriggerFirstPassJarvisAP *)self _cancelLastAudioStreamHold];
  }

  [(CSVoiceTriggerFirstPassJarvisAP *)self _reset];
}

- (void)_keywordAnalyzerNDAPI:(id)i hasResultAvailable:(id)available forChannel:(unint64_t)channel
{
  iCopy = i;
  availableCopy = available;
  v9 = availableCopy;
  if (availableCopy)
  {
    [availableCopy bestScore];
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

      [iCopy reset];
      [(CSVoiceTriggerFirstPassJarvisAP *)self _createSecondPass];
      self->_isSecondPassRunning = 1;
      [(CSVoiceTriggerFirstPassJarvisAP *)self _addAudioStreamHold:@"Jarvis AP first pass triggered"];
      objc_initWeak(buf, self);
      v23 = [CSVoiceTriggerSecondPassRequestOption alloc];
      deviceId = self->_deviceId;
      uUID = [(CSAudioProvider *)self->_audioProvider UUID];
      v26 = +[NSUUID UUID];
      v27 = [(CSVoiceTriggerSecondPassRequestOption *)v23 initWithFirstPassSource:4 deviceId:deviceId audioProviderUUID:uUID firstPassInfo:v21 rejectionMHUUID:v26 isSecondChanceRun:[(CSVoiceTriggerSecondChanceContext *)self->_secondChanceContext shouldRunAsSecondChance] firstpassMetrics:0 rtModelRequestOptions:0];

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

- (void)shouldProcessAudio:(id)audio
{
  audioCopy = audio;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BC7E8;
  v7[3] = &unk_100253718;
  v7[4] = self;
  v8 = audioCopy;
  v6 = audioCopy;
  dispatch_async(queue, v7);
}

- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available
{
  availableCopy = available;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BC8FC;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = availableCopy;
  v7 = availableCopy;
  dispatch_async(queue, v8);
}

- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly
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
  audioStream = [(CSVoiceTriggerFirstPassJarvisAP *)self audioStream];

  if (audioStream)
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

- (void)_startListenWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v6 = completionCopy;
  v43 = v6;
  v7 = objc_retainBlock(v42);
  v8 = [CSVoiceTriggerSecondPassConfigDecoder decodeConfigFrom:self->_currentAsset forFirstPassSource:4];
  configPathNDAPI = [v8 configPathNDAPI];
  resourcePath = [(CSAsset *)self->_currentAsset resourcePath];
  v37 = configPathNDAPI;
  v11 = [[CSKeywordAnalyzerNDAPI alloc] initWithConfigPath:configPathNDAPI resourcePath:resourcePath];
  keywordAnalyzerNDAPI = self->_keywordAnalyzerNDAPI;
  self->_keywordAnalyzerNDAPI = v11;

  [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzerNDAPI getThreshold];
  self->_keywordThreshold = v13;
  [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzerNDAPI setActiveChannel:0];
  deviceId = self->_deviceId;
  self->_deviceId = 0;

  v15 = +[CSSiriClientBehaviorMonitor sharedInstance];
  recordRoute = [v15 recordRoute];
  LODWORD(configPathNDAPI) = [CSUtils isJarvisAudioRouteWithRecordRoute:recordRoute];

  if (configPathNDAPI)
  {
    v17 = +[CSSiriClientBehaviorMonitor sharedInstance];
    deviceId = [v17 deviceId];
    v19 = self->_deviceId;
    self->_deviceId = deviceId;
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
        audioStream = [(CSVoiceTriggerFirstPassJarvisAP *)self audioStream];

        if (audioStream)
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
          audioStream2 = [(CSVoiceTriggerFirstPassJarvisAP *)self audioStream];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_1000BD404;
          v38[3] = &unk_100253270;
          v38[4] = self;
          v39 = v7;
          [audioStream2 startAudioStreamWithOption:v31 completion:v38];
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

- (void)_setAsset:(id)asset
{
  assetCopy = asset;
  v6 = assetCopy;
  if (assetCopy)
  {
    [assetCopy logAssetVersionForInsight];
    objc_storeStrong(&self->_currentAsset, asset);
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

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BD7A0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
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

- (CSVoiceTriggerFirstPassJarvisAP)initWithSpeechManager:(id)manager siriClientBehaviorMonitor:(id)monitor
{
  managerCopy = manager;
  monitorCopy = monitor;
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
    if (managerCopy)
    {
      v16 = managerCopy;
    }

    else
    {
      v16 = +[CSSpeechManager sharedManager];
    }

    speechManager = v8->_speechManager;
    v8->_speechManager = v16;

    if (monitorCopy)
    {
      v18 = monitorCopy;
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