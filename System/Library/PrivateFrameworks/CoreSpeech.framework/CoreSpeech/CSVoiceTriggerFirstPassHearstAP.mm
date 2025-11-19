@interface CSVoiceTriggerFirstPassHearstAP
- (CSVoiceTriggerDelegate)delegate;
- (CSVoiceTriggerFirstPassHearstAP)initWithSpeechManager:(id)a3 voiceTriggerEnabledMonitor:(id)a4 siriClientBehaviorMonitor:(id)a5 opportuneSpeakEventMonitor:(id)a6 phoneCallStateMonitor:(id)a7 otherAppRecordingStateMonitor:(id)a8 voiceTriggerHearstAPEnabledPolicy:(id)a9;
- (id)_fetchDeviceId;
- (void)_addAudioStreamHold:(id)a3;
- (void)_cancelLastAudioStreamHold;
- (void)_createSecondPass;
- (void)_handleSecondPassResult:(id)a3 deviceId:(id)a4 error:(id)a5;
- (void)_keywordAnalyzerNDAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5;
- (void)_setAsset:(id)a3;
- (void)_startListenWithAudioProviderUUID:(id)a3 completion:(id)a4;
- (void)_stopListening;
- (void)_teardownSecondPass;
- (void)_transitHearstAPEnable:(BOOL)a3;
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

@implementation CSVoiceTriggerFirstPassHearstAP

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
  block[2] = sub_100065EDC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)a3 didStopStream:(id)a4 withEventUUID:(id)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100066008;
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
    v20 = "[CSVoiceTriggerFirstPassHearstAP siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (v9)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066220;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_transitHearstAPEnable:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000663FC;
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

    v6 = [[CSVoiceTriggerSecondPass alloc] initWithFirstPassSource:6 phsEnabled:0 speechManager:0 supportsMphDetection:0 secondPassQueue:0];
    voiceTriggerSecondPass = self->_voiceTriggerSecondPass;
    self->_voiceTriggerSecondPass = v6;

    [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setSecondPassClient:2];
    [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setAsset:self->_currentAsset];
    v8 = [(CSVoiceTriggerFirstPassHearstAP *)self delegate];
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
    v3 = [(CSVoiceTriggerFirstPassHearstAP *)self audioProvider];
    [v3 cancelAudioStreamHold:v4];

    [(NSMutableArray *)self->_audioStreamHoldings removeLastObject];
  }
}

- (void)_addAudioStreamHold:(id)a3
{
  v5 = [[CSAudioStreamHoldRequestOption alloc] initWithTimeout:2 clientIdentity:0 requireRecordModeLock:0 requireListeningMicIndicatorLock:5.0];
  v4 = [(CSAudioProvider *)self->_audioProvider holdAudioStreamWithDescription:@"CSHearstSecondPassRequest" option:v5];
  [(NSMutableArray *)self->_audioStreamHoldings addObject:v4];
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
    v29 = 136315906;
    v30 = "[CSVoiceTriggerFirstPassHearstAP _handleSecondPassResult:deviceId:error:]";
    v31 = 1024;
    *v32 = v11;
    *&v32[4] = 2114;
    *&v32[6] = v12;
    v33 = 2114;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Second Pass Result, %d, %{public}@, %{public}@", &v29, 0x26u);
  }

  self->_isSecondPassRunning = 0;
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
    v29 = 136315394;
    v30 = "[CSVoiceTriggerFirstPassHearstAP _handleSecondPassResult:deviceId:error:]";
    v31 = 2114;
    *v32 = v22;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s VoiceTrigger Second Pass has failed : %{public}@", &v29, 0x16u);

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

  if (v11 != 1)
  {
    [(CSVoiceTriggerFirstPassHearstAP *)self _cancelLastAudioStreamHold];
  }

  [(CSVoiceTriggerFirstPassHearstAP *)self _reset];
}

- (void)_keywordAnalyzerNDAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (*&v8 != 0.0)
  {
    [v8 bestScore];
    v11 = *&v10;
    v12 = qword_10029E130;
    if (!(qword_10029E130 % self->_heartbeatFactor))
    {
      v13 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v37 = "[CSVoiceTriggerFirstPassHearstAP _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
        v38 = 2050;
        v39 = v11;
        v40 = 2050;
        v41 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Hearst AP first pass best score = %{public}.3f for heartbeat = %{public}lld", buf, 0x20u);
        v12 = qword_10029E130;
      }
    }

    qword_10029E130 = v12 + 1;
    if (v11 >= self->_keywordThreshold)
    {
      v34[0] = kVTEIfirstPassScore;
      *&v10 = v11;
      v14 = [NSNumber numberWithFloat:v10];
      v35[0] = v14;
      v34[1] = kVTEIfirstPassStartSampleCount;
      v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 bestStart]);
      v35[1] = v15;
      v34[2] = kVTEIfirstPassEndSampleCount;
      v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 bestEnd]);
      v35[2] = v16;
      v34[3] = kVTEIfirstPassFireSampleCount;
      v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 samplesAtFire]);
      v35[3] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];

      v19 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v37 = "[CSVoiceTriggerFirstPassHearstAP _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
        v38 = 2112;
        v39 = *&v9;
        v40 = 2112;
        v41 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Detected : %@, %@", buf, 0x20u);
      }

      remoteVADSignalExtractor = self->_remoteVADSignalExtractor;
      if (remoteVADSignalExtractor && !-[CSRemoteVADSignalExtractor hasSpeechDetectedFromStartSampleCount:toEndSampleCount:](remoteVADSignalExtractor, "hasSpeechDetectedFromStartSampleCount:toEndSampleCount:", [v9 bestStart], objc_msgSend(v9, "bestEnd")))
      {
        v21 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v37 = "[CSVoiceTriggerFirstPassHearstAP _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Do not send in-ear myriad trigger since remoteVAD didn't detect speech", buf, 0xCu);
        }
      }

      else
      {
        +[CSMyriadNotifier notifyInEarMyriadTrigger];
      }

      [v7 reset];
      [(CSVoiceTriggerFirstPassHearstAP *)self _createSecondPass];
      self->_isSecondPassRunning = 1;
      [(CSVoiceTriggerFirstPassHearstAP *)self _addAudioStreamHold:@"Hearst AP first pass triggered"];
      objc_initWeak(buf, self);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100066F08;
      v33[3] = &unk_10024F940;
      v33[4] = self;
      v22 = [[CSVoiceTriggerRTModelRequestOptions alloc] initWithMutableBuilder:v33];
      v23 = [CSVoiceTriggerSecondPassRequestOption alloc];
      deviceId = self->_deviceId;
      v25 = [(CSAudioProvider *)self->_audioProvider UUID];
      v26 = +[NSUUID UUID];
      v27 = [(CSVoiceTriggerSecondPassRequestOption *)v23 initWithFirstPassSource:6 deviceId:deviceId audioProviderUUID:v25 firstPassInfo:v18 rejectionMHUUID:v26 isSecondChanceRun:[(CSVoiceTriggerSecondChanceContext *)self->_secondChanceContext shouldRunAsSecondChance] firstpassMetrics:0 rtModelRequestOptions:v22];

      if ([(CSVoiceTriggerRTModelRequestOptions *)v22 allowMph])
      {
        v28 = [(CSVoiceTriggerRTModelRequestOptions *)v22 accessoryInfo];
        v29 = [v28 supportsJustSiri];
      }

      else
      {
        v29 = 0;
      }

      [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setSupportsMultiPhraseDetection:v29];
      voiceTriggerSecondPass = self->_voiceTriggerSecondPass;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100067090;
      v31[3] = &unk_100250980;
      objc_copyWeak(&v32, buf);
      [(CSVoiceTriggerSecondPass *)voiceTriggerSecondPass handleVoiceTriggerSecondPassFrom:v27 completion:v31];
      objc_destroyWeak(&v32);

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
  v7[2] = sub_1000672B0;
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
  v8[2] = sub_1000673C4;
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
  block[2] = sub_10006766C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_stopListening
{
  v3 = objc_autoreleasePoolPush();
  keywordAnalyzerNDAPI = self->_keywordAnalyzerNDAPI;
  self->_keywordAnalyzerNDAPI = 0;

  remoteVADSignalExtractor = self->_remoteVADSignalExtractor;
  self->_remoteVADSignalExtractor = 0;

  objc_autoreleasePoolPop(v3);
  v6 = [(CSVoiceTriggerFirstPassHearstAP *)self audioStream];

  if (v6)
  {
    v7 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[CSVoiceTriggerFirstPassHearstAP _stopListening]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Waiting for recordWillStartGroup before scheduling stopAudioStream", buf, 0xCu);
    }

    recordingWillStartGroup = self->_recordingWillStartGroup;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100067804;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_group_notify(recordingWillStartGroup, queue, block);
  }
}

- (id)_fetchDeviceId
{
  v3 = +[CSAudioStreamActivityMonitor sharedInstance];
  v4 = [v3 hasNonVoiceTriggerStreamsOrStreamHoldersActive];

  if (v4)
  {
    v5 = +[CSSiriClientBehaviorMonitor sharedInstance];
    v6 = [v5 recordRoute];
    v7 = [CSUtils isDoAPAudioRouteWithRecordRoute:v6];

    if (v7)
    {
      v8 = +[CSSiriClientBehaviorMonitor sharedInstance];
      v9 = [v8 deviceId];
LABEL_6:

      goto LABEL_10;
    }
  }

  else
  {
    if ([(CSOpportuneSpeakEventMonitor *)self->_opportuneSpeakEventMonitor isStreaming])
    {
      v8 = [(CSOpportuneSpeakEventMonitor *)self->_opportuneSpeakEventMonitor audioRecordContext];
      v10 = [v8 deviceId];
      v9 = [v10 copy];

      goto LABEL_6;
    }

    v11 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315138;
      v14 = "[CSVoiceTriggerFirstPassHearstAP _fetchDeviceId]";
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%s FirstPassHearstAP doesn't meet listening condition, set deviceId to nil", &v13, 0xCu);
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (void)_startListenWithAudioProviderUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v52 = "[CSVoiceTriggerFirstPassHearstAP _startListenWithAudioProviderUUID:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100068098;
  v49[3] = &unk_100253270;
  v49[4] = self;
  v9 = v7;
  v50 = v9;
  v10 = objc_retainBlock(v49);
  v11 = [CSVoiceTriggerSecondPassConfigDecoder decodeConfigFrom:self->_currentAsset forFirstPassSource:6];
  v12 = [v11 configPathNDAPI];
  v44 = [(CSAsset *)self->_currentAsset resourcePath];
  v13 = [[CSKeywordAnalyzerNDAPI alloc] initWithConfigPath:v12 resourcePath:v44];
  keywordAnalyzerNDAPI = self->_keywordAnalyzerNDAPI;
  self->_keywordAnalyzerNDAPI = v13;

  [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzerNDAPI getThreshold];
  self->_keywordThreshold = v15;
  [(CSKeywordAnalyzerNDAPI *)self->_keywordAnalyzerNDAPI setActiveChannel:0];
  v16 = [v11 wearerDetectionConfig];
  [v16 threshold];
  v18 = v17;

  v19 = 0;
  if (v18 > 0.0)
  {
    v19 = [[CSRemoteVADSignalExtractor alloc] initWithToken:@"CSVoiceTriggerFirstPassHearstAP"];
  }

  remoteVADSignalExtractor = self->_remoteVADSignalExtractor;
  self->_remoteVADSignalExtractor = v19;

  speechManager = self->_speechManager;
  if (speechManager)
  {
    v22 = speechManager;
  }

  else
  {
    v22 = +[CSSpeechManager sharedManager];
  }

  v23 = v22;
  v24 = [(CSVoiceTriggerFirstPassHearstAP *)self _fetchDeviceId];
  deviceId = self->_deviceId;
  self->_deviceId = v24;

  if (!self->_deviceId)
  {
    v28 = CSErrorDomain;
    v29 = 1452;
    goto LABEL_12;
  }

  v26 = [(CSSpeechManager *)v23 audioProviderWithUUID:v6];
  if (!v26)
  {
    v30 = [CSAudioRecordContext contextForHearstVoiceTriggerWithDeviceId:self->_deviceId];
    v48 = 0;
    v27 = [(CSSpeechManager *)v23 audioProviderWithContext:v30 error:&v48];

    [(CSVoiceTriggerFirstPassHearstAP *)self setAudioProvider:v27];
    if (v27)
    {
      goto LABEL_14;
    }

    v28 = CSErrorDomain;
    v29 = 1451;
LABEL_12:
    v27 = [NSError errorWithDomain:v28 code:v29 userInfo:0];
    (v10[2])(v10, 0, v27);
    goto LABEL_21;
  }

  v27 = v26;
  [(CSVoiceTriggerFirstPassHearstAP *)self setAudioProvider:v26];
LABEL_14:
  v31 = [(CSOpportuneSpeakEventMonitor *)self->_opportuneSpeakEventMonitor audioRecordContext:v12];
  v32 = [CSAudioStreamRequest defaultRequestWithContext:v31];

  [v32 setClientIdentity:2];
  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  v47 = 0;
  v35 = [v27 audioStreamWithRequest:v32 streamName:v34 error:&v47];
  v36 = v47;

  if (v35)
  {
    [v35 setIsWeakStream:1];
    [(CSVoiceTriggerFirstPassHearstAP *)self setAudioStream:v35];
    [v35 setDelegate:self];
    v37 = [(CSVoiceTriggerFirstPassHearstAP *)self audioStream];

    if (v37)
    {
      v38 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v52 = "[CSVoiceTriggerFirstPassHearstAP _startListenWithAudioProviderUUID:completion:]";
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s Entering recordWillStartGroup", buf, 0xCu);
      }

      dispatch_group_enter(self->_recordingWillStartGroup);
      v39 = +[CSAudioStartStreamOption noAlertOption];
      [v39 setDisableBoostForDoAP:1];
      [v39 setStartRecordingHostTime:mach_absolute_time()];
      v40 = [(CSVoiceTriggerFirstPassHearstAP *)self audioStream];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100068130;
      v45[3] = &unk_100253270;
      v45[4] = self;
      v46 = v10;
      [v40 startAudioStreamWithOption:v39 completion:v45];
    }
  }

  else
  {
    (v10[2])(v10, 0, v36);
  }

  v9 = v42;
  v6 = v43;
  v12 = v41;
LABEL_21:
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
      v9 = "[CSVoiceTriggerFirstPassHearstAP _setAsset:]";
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
  v7[2] = sub_1000684CC;
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
    v6 = "[CSVoiceTriggerFirstPassHearstAP dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerFirstPassHearstAP is deallocating", buf, 0xCu);
  }

  [(CSPolicy *)self->_voiceTriggerHearstAPEnabledPolicy setCallback:0];
  v4.receiver = self;
  v4.super_class = CSVoiceTriggerFirstPassHearstAP;
  [(CSVoiceTriggerFirstPassHearstAP *)&v4 dealloc];
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068620;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSVoiceTriggerFirstPassHearstAP)initWithSpeechManager:(id)a3 voiceTriggerEnabledMonitor:(id)a4 siriClientBehaviorMonitor:(id)a5 opportuneSpeakEventMonitor:(id)a6 phoneCallStateMonitor:(id)a7 otherAppRecordingStateMonitor:(id)a8 voiceTriggerHearstAPEnabledPolicy:(id)a9
{
  v28 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v29.receiver = self;
  v29.super_class = CSVoiceTriggerFirstPassHearstAP;
  v18 = [(CSVoiceTriggerFirstPassHearstAP *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_speechManager, a3);
    objc_storeStrong(&v19->_siriClientBehaviorMonitor, a5);
    objc_storeStrong(&v19->_opportuneSpeakEventMonitor, a6);
    objc_storeStrong(&v19->_otherAppRecordingStateMonitor, a8);
    objc_storeStrong(&v19->_voiceTriggerHearstAPEnabledPolicy, a9);
    v20 = dispatch_queue_create("CSVoiceTriggerFirstPassHearstAP", 0);
    queue = v19->_queue;
    v19->_queue = v20;

    v22 = dispatch_group_create();
    recordingWillStartGroup = v19->_recordingWillStartGroup;
    v19->_recordingWillStartGroup = v22;

    v24 = +[NSMutableArray array];
    audioStreamHoldings = v19->_audioStreamHoldings;
    v19->_audioStreamHoldings = v24;

    +[CSConfig inputRecordingBufferDuration];
    v19->_heartbeatFactor = (2.0 / v26);
  }

  return v19;
}

@end