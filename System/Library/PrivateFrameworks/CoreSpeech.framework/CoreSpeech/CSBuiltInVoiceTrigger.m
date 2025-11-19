@interface CSBuiltInVoiceTrigger
- (BOOL)_hasHearstRoutedAndNotInSplitter;
- (BOOL)_hasPhoneCallOnNonBargeInDevice;
- (BOOL)_isBuiltInAOPVoiceTriggerEvent:(id)a3;
- (BOOL)_isVoiceTriggerStateTransitionEvent:(id)a3;
- (BOOL)_shouldCancelSecondPassResultWithVoiceTriggerInfo:(id)a3;
- (BOOL)_shouldCheckHearstStatus;
- (BOOL)_shouldEnableAPVoiceTrigger;
- (BOOL)_shouldHandleAOPVoiceTrigger;
- (BOOL)_shouldReuseBuiltInAudioProvider;
- (BOOL)_shouldSecondPassKeepAlive;
- (BOOL)_shouldSkipAudioChunkHandling;
- (CSBuiltInVoiceTrigger)initWithTargetQueue:(id)a3 withSpeechManager:(id)a4 withAudioRouteChangeMonitor:(id)a5;
- (CSSecondPassProgressDelegate)secondPassProgressDelegate;
- (CSVoiceTriggerDelegate)delegate;
- (id)_eventName:(unint64_t)a3;
- (id)_firstPassVoiceTriggerSignalEstimate;
- (id)_stateName:(unint64_t)a3;
- (id)_voiceTriggerFirstPassInfoFromAP;
- (int64_t)_currentJarvisTriggerMode;
- (void)CSAudioRouteChangeMonitor:(id)a3 didReceiveAudioRouteChangeEvent:(int64_t)a4;
- (void)CSAudioServerCrashMonitorDidReceiveServerCrash:(id)a3;
- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)a3;
- (void)CSBluetoothWirelessSplitterMonitor:(id)a3 didReceiveSplitterStateChange:(unint64_t)a4 shouldDisableSpeakerVerificationInSplitterMode:(BOOL)a5;
- (void)CSPhoneCallStateMonitor:(id)a3 didRecievePhoneCallStateChange:(unint64_t)a4;
- (void)CSVoiceTriggerXPCServiceProxy:(id)a3 bypassPhraseSpotter:(BOOL)a4;
- (void)_APModeValidationTimerFired;
- (void)_addAudioStreamHold:(id)a3;
- (void)_cancelAllAudioStreamHold;
- (void)_cancelLastAudioStreamHold;
- (void)_createSecondPassIfNeededWithFirstPassSource:(unint64_t)a3;
- (void)_forceUpdateCarPlayEndpointWithJarvisConnected:(BOOL)a3;
- (void)_handleAudioChunk:(id)a3;
- (void)_handleSecondPassResult:(id)a3 deviceId:(id)a4 error:(id)a5;
- (void)_handleVoiceTriggerSecondPassWithSource:(unint64_t)a3 deviceId:(id)a4 event:(id)a5 audioProviderUUID:(id)a6 firstPassInfo:(id)a7;
- (void)_keywordAnalyzerNDAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5;
- (void)_notifyEvent:(unint64_t)a3;
- (void)_receivedHearstRoutedEvent:(int64_t)a3;
- (void)_reportVoiceTriggerFirstPassFireFromAPWithSource:(unint64_t)a3 voiceTriggerFirstPassInfo:(id)a4;
- (void)_requestStartAudioStreamWithSource:(unint64_t)a3 context:(id)a4 completion:(id)a5;
- (void)_reset;
- (void)_resetFirstExclaveAudioBufferMarkerIfNeeded;
- (void)_setAsset:(id)a3;
- (void)_setIsSecondPassRunning:(BOOL)a3;
- (void)_setupStateMachine;
- (void)_startAOPVoiceTrigger;
- (void)_startAPVoiceTriggerWithCompletion:(id)a3;
- (void)_startListenPollingWithInterval:(double)a3 completion:(id)a4;
- (void)_startListenWithCompletion:(id)a3;
- (void)_startVoiceTriggerWithCompletion:(id)a3;
- (void)_stopAOPVoiceTrigger;
- (void)_stopAPVoiceTrigger;
- (void)_stopListening;
- (void)_teardownSecondPassIfNeeded;
- (void)_transitAOPModeIfNeeded:(BOOL)a3;
- (void)_transitAOPModeIfNeededAsync:(BOOL)a3;
- (void)_transitAOPModeIfNeededSync:(BOOL)a3;
- (void)_transitVoiceTriggerStatus:(BOOL)a3 force:(BOOL)a4;
- (void)_updateCurrentSplitterState:(unint64_t)a3 shouldDisableSpeakerVerificationInSplitterMode:(BOOL)a4;
- (void)activationEventNotificationHandler:(id)a3 event:(id)a4 completion:(id)a5;
- (void)attSiriStateMonitor:(id)a3 didRecieveAttSiriStateChange:(unint64_t)a4;
- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4;
- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4;
- (void)audioStreamProvider:(id)a3 numSamplesAvailableInExclave:(unint64_t)a4 hostTime:(unint64_t)a5 arrivalHostTimeToAudioRecorder:(unint64_t)a6 exclaveSampleCount:(unint64_t)a7;
- (void)cancelSecondPassRunning;
- (void)didIgnoreEvent:(int64_t)a3 from:(int64_t)a4;
- (void)didTransitFrom:(int64_t)a3 to:(int64_t)a4 by:(int64_t)a5;
- (void)pendingSecondPassTriggerWasClearedForClient:(unint64_t)a3 deviceId:(id)a4;
- (void)reset;
- (void)selfTriggerDetector:(id)a3 didDetectSelfTrigger:(id)a4;
- (void)setAsset:(id)a3;
- (void)setSecondPassProgressDelegate:(id)a3;
- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7;
- (void)siriClientBehaviorMonitor:(id)a3 didStopStream:(id)a4 withEventUUID:(id)a5;
- (void)siriClientBehaviorMonitor:(id)a3 willStopStream:(id)a4 reason:(unint64_t)a5;
- (void)start;
@end

@implementation CSBuiltInVoiceTrigger

- (BOOL)_shouldReuseBuiltInAudioProvider
{
  if ((+[CSUtils isExclaveHardware]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return CSIsOSX() ^ 1;
  }
}

- (void)_reset
{
  self->_hasTriggerPending = 0;
  self->_bestScore = -INFINITY;
  onsetResult = self->_onsetResult;
  self->_bestChannel = 0;
  self->_onsetResult = 0;

  self->_onsetChannel = 0;
  self->_channelSelectionDelay = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_keywordAnalyzersNDAPI;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8) reset];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = objc_alloc_init(NSDictionary);
  channelSelectionScores = self->_channelSelectionScores;
  self->_channelSelectionScores = v9;
}

- (void)_stopAPVoiceTrigger
{
  if (+[CSUtils isExclaveHardware])
  {
    v3 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[CSBuiltInVoiceTrigger _stopAPVoiceTrigger]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ExclaveClient BargeIn stop", buf, 0xCu);
    }

    [(CSExclaveFirstPassVoiceTriggerAnalyzing *)self->_exclaveClient stopBargeInVoiceTrigger];
  }

  v4 = [(CSBuiltInVoiceTrigger *)self audioStream];

  if (v4)
  {
    validationTimer = self->_validationTimer;
    if (validationTimer)
    {
      dispatch_source_cancel(validationTimer);
      v6 = self->_validationTimer;
      self->_validationTimer = 0;
    }

    v7 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[CSBuiltInVoiceTrigger _stopAPVoiceTrigger]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Waiting for recordingWillStartGroup before scheduling stopAudioStream", buf, 0xCu);
    }

    recordingWillStartGroup = self->_recordingWillStartGroup;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006688;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_group_notify(recordingWillStartGroup, queue, block);
  }

  else
  {
    v10 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[CSBuiltInVoiceTrigger _stopAPVoiceTrigger]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s skip stopAPVoiceTrigger as audioStream not existing", buf, 0xCu);
    }
  }
}

- (void)_stopAOPVoiceTrigger
{
  if (CSHasAOP())
  {
    v3 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[CSBuiltInVoiceTrigger _stopAOPVoiceTrigger]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
    }

    [(CSVoiceTriggerAlwaysOnProcessor *)self->_alwaysOnProcessorController disableVoiceTriggerOnAlwaysOnProcessorWithCompletion:0];
  }
}

- (void)_startAOPVoiceTrigger
{
  if (self->_currentAsset && CSHasAOP())
  {
    v3 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[CSBuiltInVoiceTrigger _startAOPVoiceTrigger]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    if (+[CSUtils isExclaveHardware])
    {
      objc_initWeak(buf, self);
      alwaysOnProcessorController = self->_alwaysOnProcessorController;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10015AF7C;
      v5[3] = &unk_1002532D8;
      objc_copyWeak(&v6, buf);
      [(CSVoiceTriggerAlwaysOnProcessor *)alwaysOnProcessorController disableVoiceTriggerOnAlwaysOnProcessorWithCompletion:v5];
      objc_destroyWeak(&v6);
      objc_destroyWeak(buf);
    }

    else
    {
      [(CSVoiceTriggerAlwaysOnProcessor *)self->_alwaysOnProcessorController enableVoiceTriggerOnAlwaysOnProcessorWithAsset:self->_currentAsset completion:0];
    }
  }
}

- (void)_teardownSecondPassIfNeeded
{
  if (![(CSBuiltInVoiceTrigger *)self _shouldSecondPassKeepAlive])
  {
    if (self->_voiceTriggerSecondPass)
    {
      v3 = objc_autoreleasePoolPush();
      voiceTriggerSecondPass = self->_voiceTriggerSecondPass;
      self->_voiceTriggerSecondPass = 0;

      objc_autoreleasePoolPop(v3);
    }

    self->_isSecondPassRunning = 0;
    secondPassTransaction = self->_secondPassTransaction;
    self->_secondPassTransaction = 0;
  }
}

- (BOOL)_shouldSecondPassKeepAlive
{
  if (CSIsHorseman())
  {
    return 1;
  }

  return CSIsBridgeOS();
}

- (CSSecondPassProgressDelegate)secondPassProgressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secondPassProgressDelegate);

  return WeakRetained;
}

- (CSVoiceTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_firstPassVoiceTriggerSignalEstimate
{
  if (CSIsHorseman())
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10015527C;
    v10[3] = &unk_100253180;
    v10[4] = self;
    [CSMyriadPHash signalEstimateWithBuilder:v10];
    v4 = v3;
    v5 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v12 = "[CSBuiltInVoiceTrigger _firstPassVoiceTriggerSignalEstimate]";
      v13 = 2049;
      v14 = *&v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s signal estimate: %{private}f", buf, 0x16u);
    }

    v6 = v4;
  }

  else
  {
    v7 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v12 = "[CSBuiltInVoiceTrigger _firstPassVoiceTriggerSignalEstimate]";
      v13 = 2049;
      v14 = 0xBFF0000000000000;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s signal estimate: %{private}f", buf, 0x16u);
    }

    v6 = -1.0;
  }

  v8 = [NSNumber numberWithDouble:v6];

  return v8;
}

- (id)_eventName:(unint64_t)a3
{
  v10[0] = &off_10025E8B8;
  v10[1] = &off_10025E8A0;
  v11[0] = @"kCSFirstPassEventBargeInOn";
  v11[1] = @"kCSFirstPassEventBargeInOff";
  v10[2] = &off_10025E8D0;
  v10[3] = &off_10025E8E8;
  v11[2] = @"kCSFirstPassEventStartAPFailed";
  v11[3] = @"kCSFirstPassEventStartAPSucceed";
  v10[4] = &off_10025E900;
  v11[4] = @"kCSFirstPassEventStopped";
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [NSNumber numberWithUnsignedInteger:a3];
    v8 = [v4 objectForKeyedSubscript:v7];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"unknown(%tu)", a3];
  }

  return v8;
}

- (id)_stateName:(unint64_t)a3
{
  v10[0] = &off_10025E8A0;
  v10[1] = &off_10025E8B8;
  v11[0] = @"FirstPassRunning";
  v11[1] = @"FirstPassRunningAOPOnly";
  v10[2] = &off_10025E8D0;
  v10[3] = &off_10025E8E8;
  v11[2] = @"FirstPassStateAOPtoAPTransition";
  v11[3] = @"FirstPassStateStop";
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [NSNumber numberWithUnsignedInteger:a3];
    v8 = [v4 objectForKeyedSubscript:v7];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"unknown(%tu)", a3];
  }

  return v8;
}

- (void)didIgnoreEvent:(int64_t)a3 from:(int64_t)a4
{
  v7 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(CSBuiltInVoiceTrigger *)self _eventName:a3];
    v10 = [(CSBuiltInVoiceTrigger *)self _stateName:a4];
    v11 = 136315650;
    v12 = "[CSBuiltInVoiceTrigger didIgnoreEvent:from:]";
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Ignore event(%{public}@) from(%{public}@) since we don't have transition", &v11, 0x20u);
  }
}

- (void)didTransitFrom:(int64_t)a3 to:(int64_t)a4 by:(int64_t)a5
{
  v9 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(CSBuiltInVoiceTrigger *)self _stateName:a3];
    v12 = [(CSBuiltInVoiceTrigger *)self _stateName:a4];
    v13 = [(CSBuiltInVoiceTrigger *)self _eventName:a5];
    *buf = 136315906;
    v20 = "[CSBuiltInVoiceTrigger didTransitFrom:to:by:]";
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s from:%{public}@ to:%{public}@ by:%{public}@", buf, 0x2Au);
  }

  if (a3 != 3)
  {
    if (!a4)
    {
      goto LABEL_15;
    }

    if (a4 == 3)
    {
LABEL_14:
      [(CSBuiltInVoiceTrigger *)self _stopAPVoiceTrigger];
      [(CSBuiltInVoiceTrigger *)self _stopAOPVoiceTrigger];
      return;
    }

    if (a4 != 2)
    {
      return;
    }

LABEL_17:
    queue = self->_queue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100155B30;
    v17[3] = &unk_100253C20;
    v17[4] = self;
    v15 = v17;
LABEL_18:
    dispatch_async(queue, v15);
    return;
  }

  [(CSBuiltInVoiceTrigger *)self _startAOPVoiceTrigger];
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        return;
      }

      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    queue = self->_queue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100155B24;
    v18[3] = &unk_100253C20;
    v18[4] = self;
    v15 = v18;
    goto LABEL_18;
  }

LABEL_15:
  v16 = +[CSVoiceTriggerInfo sharedInstance];
  [v16 setFirstPassRunningMode:0];

  if (a3 != 3)
  {
    [(CSBuiltInVoiceTrigger *)self _stopAPVoiceTrigger];
  }
}

- (void)attSiriStateMonitor:(id)a3 didRecieveAttSiriStateChange:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100155BB0;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)CSPhoneCallStateMonitor:(id)a3 didRecievePhoneCallStateChange:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100155CE8;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (int64_t)_currentJarvisTriggerMode
{
  if (self->_carPlayEndpoint)
  {
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v5 = v4(CMBaseObject, kFigEndpointProperty_VoiceActivationType, kCFAllocatorDefault, &cf);
      if (!v5)
      {
LABEL_8:
        valuePtr = -1;
        if (cf && (v7 = CFGetTypeID(cf), v7 == CFNumberGetTypeID()))
        {
          CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
        }

        else
        {
          v8 = CSLogCategoryVT;
          if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v19 = "[CSBuiltInVoiceTrigger _currentJarvisTriggerMode]";
            _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to fetch trigger mode value", buf, 0xCu);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v9 = valuePtr;
        if (!valuePtr || (valuePtr - 3) <= 0xFFFFFFFB)
        {
          v9 = -1;
          valuePtr = -1;
        }

        jarvisTriggerModeLogHeartbeat = self->_jarvisTriggerModeLogHeartbeat;
        if (!self->_jarvisTriggerModeLogHeartbeat)
        {
          v11 = CSLogCategoryVT;
          if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v11;
            v13 = [CSJarvisTriggerModeMonitor triggerModeStringDescription:v9];
            *buf = 136315394;
            v19 = "[CSBuiltInVoiceTrigger _currentJarvisTriggerMode]";
            v20 = 2112;
            v21 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s CSJarvisTriggerMode : %@", buf, 0x16u);

            jarvisTriggerModeLogHeartbeat = self->_jarvisTriggerModeLogHeartbeat;
            v9 = valuePtr;
          }

          else
          {
            jarvisTriggerModeLogHeartbeat = 0;
          }
        }

        self->_jarvisTriggerModeLogHeartbeat = jarvisTriggerModeLogHeartbeat + 1 - 20 * ((3277 * (jarvisTriggerModeLogHeartbeat + 1)) >> 16);
        return v9;
      }
    }

    else
    {
      v5 = -12782;
    }

    v6 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[CSBuiltInVoiceTrigger _currentJarvisTriggerMode]";
      v20 = 2050;
      v21 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s failed to get endpoint value for Jarvis, error : %{public}ld", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v14 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v19 = "[CSBuiltInVoiceTrigger _currentJarvisTriggerMode]";
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s carPlayEndpoint is NULL", buf, 0xCu);
  }

  return -1;
}

- (void)_forceUpdateCarPlayEndpointWithJarvisConnected:(BOOL)a3
{
  if (a3)
  {
    v4 = +[NSDate date];
    FigEndpointCopyActiveCarPlayEndpoint();
    v5 = +[NSDate date];
    v6 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      [v5 timeIntervalSinceDate:v4];
      *buf = 136315394;
      v10 = "[CSBuiltInVoiceTrigger _forceUpdateCarPlayEndpointWithJarvisConnected:]";
      v11 = 2050;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s FigEndpointCopyActiveCarPlayEndpoint elapsed time = %{public}lf", buf, 0x16u);
    }

    self->_carPlayEndpoint = 0;
  }

  else
  {
    self->_carPlayEndpoint = 0;
  }

  self->_jarvisTriggerModeLogHeartbeat = 0;
}

- (void)_receivedHearstRoutedEvent:(int64_t)a3
{
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = CSHearstRouteStatusGetName();
    v8 = 136315394;
    v9 = "[CSBuiltInVoiceTrigger _receivedHearstRoutedEvent:]";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Received Hearst event: %@", &v8, 0x16u);
  }

  self->_hearstRouteStatus = a3;
}

- (void)CSAudioRouteChangeMonitor:(id)a3 didReceiveAudioRouteChangeEvent:(int64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10015641C;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)_updateCurrentSplitterState:(unint64_t)a3 shouldDisableSpeakerVerificationInSplitterMode:(BOOL)a4
{
  v4 = a4;
  v7 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    currentSplitterState = self->_currentSplitterState;
    shouldDisableOnSpeakerVerificationInSplitterMode = self->_shouldDisableOnSpeakerVerificationInSplitterMode;
    v10 = 136316162;
    v11 = "[CSBuiltInVoiceTrigger _updateCurrentSplitterState:shouldDisableSpeakerVerificationInSplitterMode:]";
    v12 = 1026;
    v13 = currentSplitterState;
    v14 = 1026;
    v15 = a3;
    v16 = 1026;
    v17 = shouldDisableOnSpeakerVerificationInSplitterMode;
    v18 = 1026;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Received Wireless Splitter State Change : %{public}d -> %{public}d, shouldDisableSpeakerVerification : %{public}d -> %{public}d", &v10, 0x24u);
  }

  self->_currentSplitterState = a3;
  self->_shouldDisableOnSpeakerVerificationInSplitterMode = v4;
}

- (void)CSBluetoothWirelessSplitterMonitor:(id)a3 didReceiveSplitterStateChange:(unint64_t)a4 shouldDisableSpeakerVerificationInSplitterMode:(BOOL)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001566FC;
  block[3] = &unk_100253028;
  block[4] = self;
  block[5] = a4;
  v7 = a5;
  dispatch_async(queue, block);
}

- (void)pendingSecondPassTriggerWasClearedForClient:(unint64_t)a3 deviceId:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001567B4;
  block[3] = &unk_1002533C8;
  v11 = self;
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)cancelSecondPassRunning
{
  if (CSIsHorseman())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100156858;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_setupStateMachine
{
  v3 = [[CSStateMachine alloc] initWithInitialState:3];
  stateMachine = self->_stateMachine;
  self->_stateMachine = v3;

  [(CSStateMachine *)self->_stateMachine setDelegate:self];
  [(CSStateMachine *)self->_stateMachine addTransitionFrom:1 to:0 for:1];
  [(CSStateMachine *)self->_stateMachine addTransitionFrom:1 to:3 for:4];
  [(CSStateMachine *)self->_stateMachine addTransitionFrom:0 to:2 for:0];
  [(CSStateMachine *)self->_stateMachine addTransitionFrom:0 to:3 for:4];
  [(CSStateMachine *)self->_stateMachine addTransitionFrom:2 to:2 for:2];
  [(CSStateMachine *)self->_stateMachine addTransitionFrom:2 to:0 for:1];
  [(CSStateMachine *)self->_stateMachine addTransitionFrom:2 to:1 for:3];
  [(CSStateMachine *)self->_stateMachine addTransitionFrom:2 to:3 for:4];
  [(CSStateMachine *)self->_stateMachine addTransitionFrom:3 to:1 for:0];
  v5 = self->_stateMachine;

  [(CSStateMachine *)v5 addTransitionFrom:3 to:0 for:1];
}

- (void)_notifyEvent:(unint64_t)a3
{
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(CSBuiltInVoiceTrigger *)self _eventName:a3];
    v8 = 136315394;
    v9 = "[CSBuiltInVoiceTrigger _notifyEvent:]";
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s event : %{public}@", &v8, 0x16u);
  }

  [(CSStateMachine *)self->_stateMachine performTransitionForEvent:a3];
}

- (void)_createSecondPassIfNeededWithFirstPassSource:(unint64_t)a3
{
  if (!self->_voiceTriggerSecondPass)
  {
    if ([(CSBuiltInVoiceTrigger *)self _shouldSecondPassKeepAlive])
    {
      v5 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315138;
        v18 = "[CSBuiltInVoiceTrigger _createSecondPassIfNeededWithFirstPassSource:]";
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s SecondPass shouldn't be created here", &v17, 0xCu);
      }
    }

    else
    {
      v6 = [[CSOSTransaction alloc] initWithDescription:@"VoiceTrigger SecondPass"];
      secondPassTransaction = self->_secondPassTransaction;
      self->_secondPassTransaction = v6;

      shouldDisableOnSpeakerVerificationInSplitterMode = self->_shouldDisableOnSpeakerVerificationInSplitterMode;
      if (shouldDisableOnSpeakerVerificationInSplitterMode)
      {
        v9 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136315138;
          v18 = "[CSBuiltInVoiceTrigger _createSecondPassIfNeededWithFirstPassSource:]";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Disable PHS since wireless splitter includes non-DoAP device, and non-DoAP device is in contacts", &v17, 0xCu);
        }
      }

      v10 = +[CSFPreferences sharedPreferences];
      v11 = [v10 bypassPersonalizedHeySiri];

      if (v11)
      {
        v12 = CSLogCategoryVT;
        v13 = 0;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136315138;
          v18 = "[CSBuiltInVoiceTrigger _createSecondPassIfNeededWithFirstPassSource:]";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Disable PHS since bypass personalized HeySiri is enabled in internal settings", &v17, 0xCu);
          v13 = 0;
        }
      }

      else
      {
        v13 = !shouldDisableOnSpeakerVerificationInSplitterMode;
      }

      v14 = [[CSVoiceTriggerSecondPass alloc] initWithFirstPassSource:a3 phsEnabled:v13 speechManager:0 supportsMphDetection:0 secondPassQueue:0];
      voiceTriggerSecondPass = self->_voiceTriggerSecondPass;
      self->_voiceTriggerSecondPass = v14;

      [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setSecondPassClient:1];
      [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setAsset:self->_currentAsset];
      v16 = [(CSBuiltInVoiceTrigger *)self delegate];
      [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setDelegate:v16];

      [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass start];
    }
  }
}

- (void)_cancelAllAudioStreamHold
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_audioStreamHoldings;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(CSBuiltInVoiceTrigger *)self audioProvider];
        [v9 cancelAudioStreamHold:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_audioStreamHoldings removeAllObjects];
}

- (void)_cancelLastAudioStreamHold
{
  if ([(NSMutableArray *)self->_audioStreamHoldings count])
  {
    v4 = [(NSMutableArray *)self->_audioStreamHoldings lastObject];
    v3 = [(CSBuiltInVoiceTrigger *)self audioProvider];
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

- (void)activationEventNotificationHandler:(id)a3 event:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100157088;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

- (void)CSVoiceTriggerXPCServiceProxy:(id)a3 bypassPhraseSpotter:(BOOL)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10015771C;
  v5[3] = &unk_100253BF8;
  v5[4] = self;
  v6 = a4;
  dispatch_async(queue, v5);
}

- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)a3
{
  v4 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSBuiltInVoiceTrigger CSAudioServerCrashMonitorDidReceiveServerRestart:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s audiomxd/bridgeaudiod recovered from crash", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015782C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)CSAudioServerCrashMonitorDidReceiveServerCrash:(id)a3
{
  v4 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSBuiltInVoiceTrigger CSAudioServerCrashMonitorDidReceiveServerCrash:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s audiomxd/bridgeaudiod crashed", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100157990;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)selfTriggerDetector:(id)a3 didDetectSelfTrigger:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100157A9C;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)siriClientBehaviorMonitor:(id)a3 willStopStream:(id)a4 reason:(unint64_t)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100157BE4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)a3 didStopStream:(id)a4 withEventUUID:(id)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100157D10;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7
{
  if (a5)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100157E48;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (BOOL)_shouldCancelSecondPassResultWithVoiceTriggerInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = kVTEItriggerStartMachTime, [v4 objectForKeyedSubscript:kVTEItriggerStartMachTime], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v5 objectForKeyedSubscript:v6];
    v9 = [v8 unsignedLongLongValue];

    v10 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      lastSelfTriggerDetectedStartMachTime = self->_lastSelfTriggerDetectedStartMachTime;
      v18 = 136315650;
      v19 = "[CSBuiltInVoiceTrigger _shouldCancelSecondPassResultWithVoiceTriggerInfo:]";
      v20 = 2048;
      v21 = v9;
      v22 = 2048;
      v23 = lastSelfTriggerDetectedStartMachTime;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s secondPassTriggerStartHostTime = %llu, _lastSelfTriggerDetectedStartMachTime = %llu", &v18, 0x20u);
    }

    v13 = self->_lastSelfTriggerDetectedStartMachTime;
    LODWORD(v11) = 0.5;
    v14 = [CSFTimeUtils secondsToHostTime:v11];
    v15 = &v9[-v13];
    if (v9 <= v13)
    {
      v15 = (v13 - v9);
    }

    v16 = v15 <= v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_handleSecondPassResult:(id)a3 deviceId:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 voiceTriggerEventInfo];
  v12 = [v8 result];
  v13 = [(CSBuiltInVoiceTrigger *)self _shouldCancelSecondPassResultWithVoiceTriggerInfo:v11];
  v14 = CSLogCategoryVT;
  if (v13)
  {
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[CSBuiltInVoiceTrigger _handleSecondPassResult:deviceId:error:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Cancel second pass since self-trigger was detected within short time window", buf, 0xCu);
      v14 = CSLogCategoryVT;
    }

    v12 = 6;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [v10 localizedDescription];
    *buf = 136315906;
    v45 = "[CSBuiltInVoiceTrigger _handleSecondPassResult:deviceId:error:]";
    v46 = 1024;
    *v47 = v12;
    *&v47[4] = 2114;
    *&v47[6] = v11;
    v48 = 2114;
    v49 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Second Pass Result, %d, %{public}@, %{public}@", buf, 0x26u);
  }

  v17 = [v11 mutableCopy];
  if ([(CSBuiltInVoiceTrigger *)self _hasHFPDuringPhoneCall])
  {
    v18 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[CSBuiltInVoiceTrigger _handleSecondPassResult:deviceId:error:]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s HFP during phone call. We will set value to ignore pocket detection.", buf, 0xCu);
    }

    [v17 setValue:&__kCFBooleanTrue forKey:kVTEIHFPDuringCall];
  }

  if ([CSUtils isVoiceTriggerFromExclaveWithVTEI:v17])
  {
    v19 = &__kCFBooleanTrue;
  }

  else
  {
    v19 = &__kCFBooleanFalse;
  }

  [v17 setValue:v19 forKey:kVTEIExclaveVoiceTrigger];
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v34 = objc_opt_respondsToSelector();

      if (v34)
      {
        v22 = objc_loadWeakRetained(&self->_delegate);
        [v22 voiceTriggerDidDetectNearMiss:v17 deviceId:v9];
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v12 == 9)
    {
      v23 = objc_loadWeakRetained(&self->_delegate);
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        v22 = objc_loadWeakRetained(&self->_delegate);
        [v22 voiceTriggerDidDetectSpeakerReject:v17];
        goto LABEL_33;
      }

LABEL_34:
      v35 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v45 = "[CSBuiltInVoiceTrigger _handleSecondPassResult:deviceId:error:]";
        v46 = 1026;
        *v47 = v12;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s Notifying audioProviderInvalidation due to VoiceTrigger result(%{public}d) so Siri client needs to setContext again", buf, 0x12u);
      }

      [(CSAudioProvider *)self->_audioProvider notifyProviderContextChanged];
      goto LABEL_37;
    }

    goto LABEL_23;
  }

  if (v12 != 1)
  {
    if (v12 == 2)
    {
      v20 = objc_loadWeakRetained(&self->_delegate);
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v22 = objc_loadWeakRetained(&self->_delegate);
        [v22 voiceTriggerDidRejected:v17 deviceId:v9];
LABEL_33:

        goto LABEL_34;
      }

      goto LABEL_34;
    }

LABEL_23:
    v25 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v41 = v25;
      v42 = [v10 localizedDescription];
      *buf = 136315394;
      v45 = "[CSBuiltInVoiceTrigger _handleSecondPassResult:deviceId:error:]";
      v46 = 2114;
      *v47 = v42;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s VoiceTrigger Second Pass has failed : %{public}@", buf, 0x16u);
    }

    v26 = objc_loadWeakRetained(&self->_delegate);
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      v28 = objc_loadWeakRetained(&self->_delegate);
      [v28 voiceTriggerDidRejected:v17 deviceId:v9];
    }

    if (v12 != 8)
    {
      goto LABEL_34;
    }

    goto LABEL_44;
  }

  v29 = objc_loadWeakRetained(&self->_delegate);
  v30 = objc_opt_respondsToSelector();

  v31 = objc_loadWeakRetained(&self->_delegate);
  v32 = v31;
  if (v30)
  {
    [v31 voiceTriggerDidDetectKeyword:v17 deviceId:v9 completion:0];
  }

  else
  {
    v39 = objc_opt_respondsToSelector();

    if ((v39 & 1) == 0)
    {
      goto LABEL_44;
    }

    v32 = objc_loadWeakRetained(&self->_delegate);
    [v32 voiceTriggerDidDetectKeyword:v17 deviceId:v9];
  }

LABEL_44:
  v40 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v45 = "[CSBuiltInVoiceTrigger _handleSecondPassResult:deviceId:error:]";
    v46 = 1026;
    *v47 = v12;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%s Not notifying audioProviderInvalidation since VoiceTrigger result is %{public}d", buf, 0x12u);
  }

LABEL_37:
  if ([v8 isSecondChanceCandidate])
  {
    v36 = [[CSVoiceTriggerSecondChanceContext alloc] initWithWindowStartTime:mach_absolute_time()];
  }

  else
  {
    v36 = 0;
  }

  secondChanceContext = self->_secondChanceContext;
  self->_secondChanceContext = v36;

  queue = self->_queue;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100158670;
  v43[3] = &unk_100253C98;
  v43[4] = self;
  v43[5] = v12;
  dispatch_async(queue, v43);
}

- (void)_handleVoiceTriggerSecondPassWithSource:(unint64_t)a3 deviceId:(id)a4 event:(id)a5 audioProviderUUID:(id)a6 firstPassInfo:(id)a7
{
  v29 = a4;
  v30 = a5;
  v28 = a6;
  v12 = a7;
  v13 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "[CSBuiltInVoiceTrigger _handleVoiceTriggerSecondPassWithSource:deviceId:event:audioProviderUUID:firstPassInfo:]";
    v38 = 2114;
    v39 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  v14 = mach_absolute_time();
  if (v30)
  {
    v15 = +[CSVoiceTriggerFirstPassMetrics CSVoiceTriggerFirstPassMetricsWithFirstPassInfoGeneratedTime:firstPassInfoProcessedTime:](CSVoiceTriggerFirstPassMetrics, "CSVoiceTriggerFirstPassMetricsWithFirstPassInfoGeneratedTime:firstPassInfoProcessedTime:", [v30 hosttime], v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v12 mutableCopy];
  v17 = [NSNumber numberWithUnsignedLongLong:v14];
  [v16 setObject:v17 forKeyedSubscript:kVTEIFirstPassFireHostTime];

  if (+[CSUtils isDarwinOS])
  {
    v18 = +[CSHostLauncherDarwin sharedInstance];
    [v18 wakeHostForVoiceTrigger];
  }

  [(CSBuiltInVoiceTrigger *)self _setIsSecondPassRunning:1];
  objc_initWeak(buf, self);
  [(CSBuiltInVoiceTrigger *)self _createSecondPassIfNeededWithFirstPassSource:a3];
  v19 = +[NSUUID UUID];
  v20 = [CSVoiceTriggerSecondPassRequestOption alloc];
  v21 = [(CSBuiltInVoiceTrigger *)self audioProvider];
  v22 = [v21 UUID];
  v23 = [v16 copy];
  v24 = [(CSVoiceTriggerSecondPassRequestOption *)v20 initWithFirstPassSource:a3 deviceId:v29 audioProviderUUID:v22 firstPassInfo:v23 rejectionMHUUID:v19 isSecondChanceRun:[(CSVoiceTriggerSecondChanceContext *)self->_secondChanceContext shouldRunAsSecondChance] firstpassMetrics:v15 rtModelRequestOptions:0];

  [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setSupportsMultiPhraseDetection:[(CSVoiceTriggerUserSelectedPhrase *)self->_multiPhraseSelectedStatus multiPhraseSelected]];
  voiceTriggerSecondPass = self->_voiceTriggerSecondPass;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100158A70;
  v31[3] = &unk_100253350;
  v35[1] = a3;
  v26 = v12;
  v32 = v26;
  objc_copyWeak(v35, buf);
  v27 = v29;
  v33 = v27;
  v34 = self;
  [(CSVoiceTriggerSecondPass *)voiceTriggerSecondPass handleVoiceTriggerSecondPassFrom:v24 completion:v31];
  kdebug_trace();

  objc_destroyWeak(v35);
  objc_destroyWeak(buf);
}

- (void)_reportVoiceTriggerFirstPassFireFromAPWithSource:(unint64_t)a3 voiceTriggerFirstPassInfo:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (a3 == 1 || a3 == 11)
  {
    [(CSBuiltInVoiceTrigger *)self _addAudioStreamHold:@"APVoiceTriggerDetected"];
    objc_storeStrong(&self->_lastTriggeredOnsetResult, self->_onsetResult);
    self->_lastTriggeredBestChannel = self->_onsetChannel;
    if (self->_phoneCallState - 2 < 3 || (+[CSMXRingtoneMonitor sharedInstance](CSMXRingtoneMonitor, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isAnyRingtoneCurrentlyPlaying], v7, v8))
    {
      if ([(CSBuiltInVoiceTrigger *)self _hasHFPDuringPhoneCall])
      {
        +[CSMyriadNotifier notifyInEarMyriadTrigger];
      }

      v9 = [(CSBuiltInVoiceTrigger *)self _hasHFPDuringPhoneCall];
      phoneCallState = self->_phoneCallState;
      if (a3 == 11 && v9)
      {
        if (phoneCallState == 3)
        {
          a3 = 9;
        }

        else
        {
          a3 = 8;
        }
      }

      else
      {
        v12 = phoneCallState == 3;
        v13 = 8;
        if (v12)
        {
          v13 = 9;
        }

        v14 = 13;
        if (v12)
        {
          v14 = 14;
        }

        if (a3 == 11)
        {
          a3 = v14;
        }

        else
        {
          a3 = v13;
        }
      }
    }

    v15 = [(CSBuiltInVoiceTrigger *)self audioProvider];
    v16 = [v15 UUID];
    [(CSBuiltInVoiceTrigger *)self _handleVoiceTriggerSecondPassWithSource:a3 deviceId:0 event:0 audioProviderUUID:v16 firstPassInfo:v6];
  }

  else
  {
    v11 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[CSBuiltInVoiceTrigger _reportVoiceTriggerFirstPassFireFromAPWithSource:voiceTriggerFirstPassInfo:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s The first pass source is not from AP, skip handling!", &v17, 0xCu);
    }
  }
}

- (id)_voiceTriggerFirstPassInfoFromAP
{
  v18[0] = kVTEIfirstPassDetectedChannel;
  v17 = [NSNumber numberWithUnsignedInteger:self->_bestChannel];
  v19[0] = v17;
  v18[1] = kVTEIfirstPassScore;
  *&v3 = self->_bestScore;
  v16 = [NSNumber numberWithFloat:v3];
  v19[1] = v16;
  v18[2] = kVTEIfirstPassStartSampleCount;
  v4 = [NSNumber numberWithUnsignedInteger:[(CSKeywordAnalyzerNDAPIResult *)self->_onsetResult bestStart]];
  v19[2] = v4;
  v18[3] = kVTEIfirstPassEndSampleCount;
  v5 = [NSNumber numberWithUnsignedInteger:[(CSKeywordAnalyzerNDAPIResult *)self->_onsetResult bestEnd]];
  v19[3] = v5;
  v18[4] = kVTEIfirstPassFireSampleCount;
  v6 = [NSNumber numberWithUnsignedInteger:[(CSKeywordAnalyzerNDAPIResult *)self->_onsetResult samplesAtFire]];
  channelSelectionScores = self->_channelSelectionScores;
  v19[4] = v6;
  v19[5] = channelSelectionScores;
  v18[5] = kVTEIfirstPassChannelSelectionScores;
  v18[6] = kVTEIfirstPassChannelSelectionDelaySeconds;
  v8 = [(CSBuiltInVoiceTrigger *)self firstPassConfig];
  [v8 delaySecondsForChannelSelection];
  v9 = [NSNumber numberWithFloat:?];
  v19[6] = v9;
  v18[7] = kVTEIfirstPassMasterChannelScoreBoost;
  v10 = [(CSBuiltInVoiceTrigger *)self firstPassConfig];
  [v10 masterChannelScoreBoost];
  v11 = [NSNumber numberWithFloat:?];
  v19[7] = v11;
  v18[8] = kVTEIfirstPassOnsetChannel;
  v12 = [NSNumber numberWithUnsignedInteger:self->_onsetChannel];
  v19[8] = v12;
  v18[9] = kVTEIfirstPassOnsetScore;
  [(CSKeywordAnalyzerNDAPIResult *)self->_onsetResult bestScore];
  v13 = [NSNumber numberWithFloat:?];
  v19[9] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:10];

  return v14;
}

- (void)_keywordAnalyzerNDAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5
{
  v8 = a3;
  v9 = COERCE_DOUBLE(a4);
  [*&v9 bestScore];
  v11 = v10;
  if (v9 != 0.0)
  {
    v12 = +[CSFPreferences sharedPreferences];
    v13 = [v12 firstPassDebuggingEnabled];

    if (v13)
    {
      v14 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        [*&v9 bestScore];
        *buf = 136316162;
        v51 = "[CSBuiltInVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
        v52 = 2048;
        v53 = v16;
        v54 = 2048;
        v55 = COERCE_DOUBLE([*&v9 bestStart]);
        v56 = 2048;
        v57 = [*&v9 bestEnd];
        v58 = 1024;
        LODWORD(v59) = a5;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s First Pass Score : %lf, First Pass Best Start : %llu, First Pass Best End : %llu, CHANNEL : %d", buf, 0x30u);
      }
    }
  }

  v17 = +[CSFPreferences sharedPreferences];
  if ([v17 firstPassDebuggingEnabled])
  {
  }

  else
  {
    v18 = qword_10029E5A0 % self->_heartbeatFactor;

    if (!v18)
    {
      v19 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v51 = "[CSBuiltInVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
        v52 = 2050;
        v53 = v11;
        v54 = 2050;
        v55 = *&a5;
        v56 = 2050;
        v57 = qword_10029E5A0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s NDAPI first pass best score = %{public}.3f for channel = %{public}tu, heartbeat = %{public}lld", buf, 0x2Au);
      }
    }
  }

  if (*&a5 == 0.0)
  {
    ++qword_10029E5A0;
  }

  if (!self->_hasTriggerPending)
  {
    v20 = [(CSBuiltInVoiceTrigger *)self firstPassConfig];
    [v20 threshold];
    v22 = v21;

    if (v11 >= v22)
    {
      v23 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = [*&v9 samplesAtFire];
        v26 = [*&v9 phId];
        delayInSamplesRequiredForChannelSelection = self->_delayInSamplesRequiredForChannelSelection;
        *buf = 136316418;
        v51 = "[CSBuiltInVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
        v52 = 2050;
        v53 = *&a5;
        v54 = 2050;
        v55 = v11;
        v56 = 2050;
        v57 = v25;
        v58 = 2048;
        v59 = v26;
        v60 = 2050;
        v61 = delayInSamplesRequiredForChannelSelection;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s NDAPI in channel: %{public}tu passed threshold with score %{public}.3f at sample %{public}tu, best = %tu, setting up decision delay in samples: %{public}tu", buf, 0x3Eu);

        v23 = CSLogCategoryVT;
      }

      self->_hasTriggerPending = 1;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v51 = "[CSBuiltInVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
        v52 = 2050;
        v53 = *&a5;
        v54 = 2114;
        v55 = v9;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Set to use the alignment of channel %{public}tu that first crossed the threshold: %{public}@", buf, 0x20u);
      }

      objc_storeStrong(&self->_onsetResult, a4);
      self->_bestScore = -INFINITY;
      self->_bestChannel = 0;
      self->_onsetChannel = a5;
      self->_channelSelectionDelay = 0;
      if ([(NSMutableArray *)self->_keywordAnalyzersNDAPI count]>= 2)
      {
        [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass prewarm];
      }
    }
  }

  if (self->_hasTriggerPending)
  {
    if (!self->_channelSelectionDelay)
    {
      [(CSKeywordAnalyzerNDAPIResult *)self->_onsetResult bestScore];
      if (v11 > v28)
      {
        v29 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v51 = "[CSBuiltInVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
          v52 = 2050;
          v53 = *&a5;
          v54 = 2114;
          v55 = v9;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s Update to use the alignment of channel %{public}tu: %{public}@", buf, 0x20u);
        }

        objc_storeStrong(&self->_onsetResult, a4);
        self->_onsetChannel = a5;
      }
    }

    if (self->_channelSelectionDelay >= self->_delayInSamplesRequiredForChannelSelection)
    {
      v30 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        v32 = [*&v9 samplesAtFire];
        *buf = 136315906;
        v51 = "[CSBuiltInVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
        v52 = 2050;
        v53 = v11;
        v54 = 2050;
        v55 = *&a5;
        v56 = 2050;
        v57 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s NDAPI first pass best score for channel selection = %{public}.3f for channel = %{public}tu at sample %{public}tu", buf, 0x2Au);
      }

      if ([(CSVoiceTriggerFirstPassConfig *)self->_firstPassConfig masterChannel]== a5)
      {
        v33 = [(CSBuiltInVoiceTrigger *)self firstPassConfig];
        [v33 masterChannelScoreBoost];
        v11 = v11 + v34;

        v35 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          v36 = v35;
          v37 = [(CSBuiltInVoiceTrigger *)self firstPassConfig];
          [v37 masterChannelScoreBoost];
          *buf = 136315650;
          v51 = "[CSBuiltInVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
          v52 = 2050;
          v53 = v11;
          v54 = 2050;
          v55 = v38;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s Boosting master channel (ch0) score to %{public}.3f by %{public}.3f for stream selection", buf, 0x20u);
        }
      }

      if ([(CSVoiceTriggerFirstPassConfig *)self->_firstPassConfig voiceIsolationChannel]== a5)
      {
        v39 = [(CSBuiltInVoiceTrigger *)self firstPassConfig];
        [v39 voiceIsolationChannelScoreBoost];
        v11 = v11 + v40;

        v41 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v41;
          v43 = [(CSBuiltInVoiceTrigger *)self firstPassConfig];
          [v43 masterChannelScoreBoost];
          *buf = 136315650;
          v51 = "[CSBuiltInVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:]";
          v52 = 2050;
          v53 = v11;
          v54 = 2050;
          v55 = v44;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%s Boosting voice isolation channel (ch0) score to %{public}.3f by %{public}.3f for stream selection", buf, 0x20u);
        }
      }

      v45 = [(NSDictionary *)self->_channelSelectionScores mutableCopy];
      v46 = [NSString stringWithFormat:@"ch%tu", a5];
      *&v47 = v11;
      v48 = [NSNumber numberWithFloat:v47];
      [(NSDictionary *)v45 setObject:v48 forKey:v46];

      channelSelectionScores = self->_channelSelectionScores;
      self->_channelSelectionScores = v45;

      if (v11 > self->_bestScore)
      {
        self->_bestScore = v11;
        self->_bestChannel = a5;
      }
    }
  }

  if (!self->_hasTriggerPending)
  {
    [v8 resetBest];
  }
}

- (void)_handleAudioChunk:(id)a3
{
  v20 = a3;
  v4 = qword_10029E598;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * qword_10029E598, 1) <= 0x888888888888888uLL)
  {
    kdebug_trace();
    v4 = qword_10029E598;
  }

  qword_10029E598 = v4 + 1;
  if (![(CSBuiltInVoiceTrigger *)self _shouldSkipAudioChunkHandling])
  {
    context = objc_autoreleasePoolPush();
    v5 = [v20 numSamples];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      do
      {
        if (v6 >= self->_processingChunkSamples)
        {
          processingChunkSamples = self->_processingChunkSamples;
        }

        else
        {
          processingChunkSamples = v6;
        }

        v21 = processingChunkSamples;
        v9 = [v20 subChunkFrom:v7 numSamples:?];
        v23 = [v9 numSamples];
        v22 = [v9 numSamples];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = self->_keywordAnalyzersNDAPI;
        v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v24 + 1) + 8 * i);
              v16 = [v15 getBestAnalyzedResultsFromAudioChunk:v9];
              -[CSBuiltInVoiceTrigger _keywordAnalyzerNDAPI:hasResultAvailable:forChannel:](self, "_keywordAnalyzerNDAPI:hasResultAvailable:forChannel:", v15, v16, [v15 activeChannel]);
            }

            v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v12);
        }

        channelSelectionDelay = self->_channelSelectionDelay;
        if (self->_hasTriggerPending && channelSelectionDelay >= self->_delayInSamplesRequiredForChannelSelection)
        {
          v18 = [(CSBuiltInVoiceTrigger *)self _voiceTriggerFirstPassInfoFromAP];
          [(CSBuiltInVoiceTrigger *)self _reportVoiceTriggerFirstPassFireFromAPWithSource:1 voiceTriggerFirstPassInfo:v18];

          [(CSBuiltInVoiceTrigger *)self _reset];
        }

        else
        {
          self->_channelSelectionDelay = channelSelectionDelay + v21;
        }

        v6 -= v23;
        v7 += v22;
      }

      while (v6);
    }

    objc_autoreleasePoolPop(context);
  }
}

- (BOOL)_shouldSkipAudioChunkHandling
{
  if (!self->_currentAsset)
  {
    v7 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[CSBuiltInVoiceTrigger _shouldSkipAudioChunkHandling]";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Could not find Assets. Cannot process Audio", &v17, 0xCu);
    }

    return 1;
  }

  if (self->_isSecondPassRunning || self->_isSiriClientListening || self->_attSiriState == 2)
  {
    return 1;
  }

  v3 = [(CSBuiltInVoiceTrigger *)self _hasHearstRoutedAndNotInSplitter];
  v4 = +[CSAudioRouteChangeMonitor sharedInstance];
  v5 = [v4 isHearstHijackable];

  if (CSIsHorseman())
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CSBuiltInVoiceTrigger *)self _hasHFPDuringPhoneCall];
  }

  if (!self->_voiceTriggerEnabled || self->_isPhraseSpotterBypassed || ((-[CSBuiltInVoiceTrigger _shouldCheckHearstStatus](self, "_shouldCheckHearstStatus") & v3 & ~v6 | v5) & 1) != 0 || (+[CSAVVCRecordingClientMonitor sharedInstance](CSAVVCRecordingClientMonitor, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 numOfAVVCRecordingClients], v9, v10 >= 2))
  {
    v11 = qword_10029E590;
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * qword_10029E590, 1) <= 0x1999999999999999uLL)
    {
      v12 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        voiceTriggerEnabled = self->_voiceTriggerEnabled;
        isPhraseSpotterBypassed = self->_isPhraseSpotterBypassed;
        v15 = v12;
        v16 = +[CSAVVCRecordingClientMonitor sharedInstance];
        v17 = 136316930;
        v18 = "[CSBuiltInVoiceTrigger _shouldSkipAudioChunkHandling]";
        v19 = 1026;
        v20 = voiceTriggerEnabled;
        v21 = 1026;
        v22 = isPhraseSpotterBypassed;
        v23 = 1026;
        v24 = v3;
        v25 = 1026;
        v26 = v6;
        v27 = 2050;
        v28 = [v16 numOfAVVCRecordingClients];
        v29 = 1026;
        v30 = v5;
        v31 = 2050;
        v32 = qword_10029E590;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Bypass audio here because ::                   1> VoiceTrigger enabled = %{public}d;                   2> phrase spotter bypassed = %{public}d;                   3> should ignore due to hearst routed and not in splitter = %{public}d;                   4> has HFP during call = %{public}d;                   5> AVVC recording client # = %{public}lu                   6> is hearst hijackable = %{public}d;                   heartbeat = %{public}lld", &v17, 0x3Eu);

        v11 = qword_10029E590;
      }
    }

    qword_10029E590 = v11 + 1;
    return 1;
  }

  return 0;
}

- (void)_resetFirstExclaveAudioBufferMarkerIfNeeded
{
  if (!self->_isFirstExclaveAudioBuffer)
  {
    v3 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[CSBuiltInVoiceTrigger _resetFirstExclaveAudioBufferMarkerIfNeeded]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
    }

    [(CSBuiltInVoiceTrigger *)self setIsFirstExclaveAudioBuffer:1];
  }
}

- (void)audioStreamProvider:(id)a3 audioBufferAvailable:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015A00C;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)audioStreamProvider:(id)a3 numSamplesAvailableInExclave:(unint64_t)a4 hostTime:(unint64_t)a5 arrivalHostTimeToAudioRecorder:(unint64_t)a6 exclaveSampleCount:(unint64_t)a7
{
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015A1F8;
  v8[3] = &unk_100253C98;
  v8[4] = self;
  v8[5] = a7;
  dispatch_async(queue, v8);
}

- (void)audioStreamProvider:(id)a3 didStopStreamUnexpectedly:(int64_t)a4
{
  v6 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v10 = "[CSBuiltInVoiceTrigger audioStreamProvider:didStopStreamUnexpectedly:]";
    v11 = 2050;
    v12 = a4;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s stream stopped unexpectedly : %{public}ld", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015A77C;
  v8[3] = &unk_100253C98;
  v8[4] = self;
  v8[5] = a4;
  dispatch_async(queue, v8);
}

- (BOOL)_isVoiceTriggerStateTransitionEvent:(id)a3
{
  v3 = a3;
  if ([v3 type] == 1)
  {
    v4 = [v3 activationInfo];
    v5 = [v4 objectForKeyedSubscript:@"VoiceTriggerEnabledKey"];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isBuiltInAOPVoiceTriggerEvent:(id)a3
{
  v3 = a3;
  if ([v3 type] == 1)
  {
    v4 = [v3 activationInfo];
    v5 = [v4 objectForKeyedSubscript:@"VoiceTriggerEnabledKey"];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldCheckHearstStatus
{
  v2 = +[CSSiriEnabledMonitor sharedInstance];
  v3 = [v2 isEnabled];

  return v3;
}

- (BOOL)_hasHearstRoutedAndNotInSplitter
{
  currentSplitterState = self->_currentSplitterState;
  hearstRouteStatus = self->_hearstRouteStatus;
  v4 = self->_isJarvisConnected && [(CSBuiltInVoiceTrigger *)self _currentJarvisTriggerMode]!= -1;
  v6 = currentSplitterState - 5 < 0xFFFFFFFFFFFFFFFDLL && (hearstRouteStatus - 1) < 2;
  return v6 || v4;
}

- (BOOL)_hasPhoneCallOnNonBargeInDevice
{
  if (self->_phoneCallState - 2 < 3)
  {
    return +[CSUtils isIOSDeviceSupportingBargeIn]^ 1;
  }

  v2 = +[CSMXRingtoneMonitor sharedInstance];
  v3 = [v2 isAnyRingtoneCurrentlyPlaying];

  if (v3)
  {
    return +[CSUtils isIOSDeviceSupportingBargeIn]^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldHandleAOPVoiceTrigger
{
  v3 = +[CSUserSessionActiveMonitor sharedInstance];
  v4 = [v3 isUserActive];

  if (v4)
  {
    if (self->_isPhraseSpotterBypassed)
    {
      v5 = CSLogCategoryVT;
      v6 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        v16 = 136315138;
        v17 = "[CSBuiltInVoiceTrigger _shouldHandleAOPVoiceTrigger]";
        v7 = "%s phraseSpotter bypassed, ignore AOP trigger notification";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, &v16, 0xCu);
        LOBYTE(v6) = 0;
      }
    }

    else
    {
      v8 = +[CSAudioRouteChangeMonitor sharedInstance];
      v9 = [v8 isHearstHijackable];

      if (v9)
      {
        v5 = CSLogCategoryVT;
        v6 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT);
        if (!v6)
        {
          return v6;
        }

        v16 = 136315138;
        v17 = "[CSBuiltInVoiceTrigger _shouldHandleAOPVoiceTrigger]";
        v7 = "%s AirPods are in hijackable state, ignore AOP trigger notification";
        goto LABEL_7;
      }

      if ([(CSBuiltInVoiceTrigger *)self _shouldCheckHearstStatus]&& [(CSBuiltInVoiceTrigger *)self _hasHearstRoutedAndNotInSplitter])
      {
        v5 = CSLogCategoryVT;
        v6 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT);
        if (!v6)
        {
          return v6;
        }

        v16 = 136315138;
        v17 = "[CSBuiltInVoiceTrigger _shouldHandleAOPVoiceTrigger]";
        v7 = "%s Has hearst routed and not in splitter ignore AOP trigger notification";
        goto LABEL_7;
      }

      if ([(CSBuiltInVoiceTrigger *)self _hasPhoneCallOnNonBargeInDevice])
      {
        v5 = CSLogCategoryVT;
        v6 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT);
        if (!v6)
        {
          return v6;
        }

        v16 = 136315138;
        v17 = "[CSBuiltInVoiceTrigger _shouldHandleAOPVoiceTrigger]";
        v7 = "%s Is in phone call state but we are a non barge in device";
        goto LABEL_7;
      }

      v10 = +[CSSiriClientBehaviorMonitor sharedInstance];
      v11 = [v10 isStreaming];

      if (v11)
      {
        v5 = CSLogCategoryVT;
        v6 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT);
        if (!v6)
        {
          return v6;
        }

        v16 = 136315138;
        v17 = "[CSBuiltInVoiceTrigger _shouldHandleAOPVoiceTrigger]";
        v7 = "%s Siri Client is already streaming, ignore AOP trigger notification";
        goto LABEL_7;
      }

      if ([(CSBuiltInVoiceTrigger *)self _shouldCheckHearstStatus]&& self->_currentSplitterState == 4)
      {
        v5 = CSLogCategoryVT;
        v6 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT);
        if (!v6)
        {
          return v6;
        }

        v16 = 136315138;
        v17 = "[CSBuiltInVoiceTrigger _shouldHandleAOPVoiceTrigger]";
        v7 = "%s Device has wireless splitter mode with two hearst, ignore AOP trigger notification";
        goto LABEL_7;
      }

      v12 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = [(CSBuiltInVoiceTrigger *)self _stateName:[(CSBuiltInVoiceTrigger *)self _currentState]];
        v16 = 136315394;
        v17 = "[CSBuiltInVoiceTrigger _shouldHandleAOPVoiceTrigger]";
        v18 = 2114;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger current state : %{public}@", &v16, 0x16u);
      }

      if ([(CSBuiltInVoiceTrigger *)self _currentState])
      {
        LOBYTE(v6) = [(CSBuiltInVoiceTrigger *)self _currentState]== 2;
      }

      else
      {
        LOBYTE(v6) = 1;
      }
    }
  }

  else
  {
    v5 = CSLogCategoryVT;
    v6 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v16 = 136315138;
      v17 = "[CSBuiltInVoiceTrigger _shouldHandleAOPVoiceTrigger]";
      v7 = "%s User doesn't have ownership of AOP. ignore AOP trigger notification";
      goto LABEL_7;
    }
  }

  return v6;
}

- (BOOL)_shouldEnableAPVoiceTrigger
{
  v3 = [(CSBuiltInVoiceTrigger *)self _currentState];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(CSBuiltInVoiceTrigger *)self _currentState]== 2;
  }

  return v3;
}

- (void)_APModeValidationTimerFired
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015B174;
  v4[3] = &unk_100253510;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_startAPVoiceTriggerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSBuiltInVoiceTrigger _startAPVoiceTriggerWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (+[CSUtils isExclaveHardware])
  {
    v6 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[CSBuiltInVoiceTrigger _startAPVoiceTriggerWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s ExclaveClient BargeIn start", buf, 0xCu);
    }

    [(CSExclaveFirstPassVoiceTriggerAnalyzing *)self->_exclaveClient startBargeInVoiceTrigger];
  }

  validationTimer = self->_validationTimer;
  if (validationTimer)
  {
    dispatch_source_cancel(validationTimer);
    v8 = self->_validationTimer;
    self->_validationTimer = 0;
  }

  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  v10 = self->_validationTimer;
  self->_validationTimer = v9;

  v11 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(self->_validationTimer, v11, 0x1A3185C5000uLL, 0x3B9ACA00uLL);
  objc_initWeak(buf, self);
  v12 = self->_validationTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10015B538;
  handler[3] = &unk_100253510;
  objc_copyWeak(&v14, buf);
  dispatch_source_set_event_handler(v12, handler);
  dispatch_resume(self->_validationTimer);
  [(CSBuiltInVoiceTrigger *)self _startVoiceTriggerWithCompletion:v4];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)_startVoiceTriggerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSBuiltInVoiceTrigger _startVoiceTriggerWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (self->_isListenPollingStarting)
  {
    v6 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSBuiltInVoiceTrigger _startVoiceTriggerWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Already started listen polling, skip", buf, 0xCu);
    }

    if (v4)
    {
      v4[2](v4, 0);
    }
  }

  else
  {
    self->_isListenPollingStarting = 1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10015B71C;
    v7[3] = &unk_100253270;
    v7[4] = self;
    v8 = v4;
    [(CSBuiltInVoiceTrigger *)self _startListenPollingWithInterval:v7 completion:1.0];
  }
}

- (void)_stopListening
{
  v3 = [(CSBuiltInVoiceTrigger *)self audioStream];

  if (v3)
  {
    v4 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSBuiltInVoiceTrigger _stopListening]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Waiting for recordingWillStartGroup before scheduling stopAudioStream", buf, 0xCu);
    }

    recordingWillStartGroup = self->_recordingWillStartGroup;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015B954;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_group_notify(recordingWillStartGroup, queue, block);
  }
}

- (void)_requestStartAudioStreamWithSource:(unint64_t)a3 context:(id)a4 completion:(id)a5
{
  v8 = a4;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10015BF50;
  v32[3] = &unk_100253220;
  v9 = a5;
  v33 = v9;
  v10 = objc_retainBlock(v32);
  v11 = [(CSBuiltInVoiceTrigger *)self _shouldReuseBuiltInAudioProvider];
  if (a3 == 1)
  {
    if (v11)
    {
      v12 = [(CSSpeechManager *)self->_speechManager audioProviderWithStreamID:1];
      if (v12)
      {
        v13 = v12;
        [(CSBuiltInVoiceTrigger *)self setAudioProvider:v12];
        v14 = objc_alloc_init(CSAudioStreamRequest);
        v15 = 0;
LABEL_8:
        v17 = +[CSAudioRecordContext contextForBuiltInVoiceTrigger];
        v18 = [CSAudioStreamRequest defaultRequestWithContext:v17];

        v14 = v18;
LABEL_9:
        [v14 setRequiresHistoricalBuffer:1];
        [v14 setClientIdentity:2];
        if (+[CSUtils isExclaveHardware])
        {
          if (([CSUtils isHypotheticalAudioRouteBluetoothAndNotBTSpeakerFromAudioSessinoId:0]& 1) == 0)
          {
            [v14 setRequestExclaveAudio:1];
            v19 = CSLogCategoryVT;
            if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v35 = "[CSBuiltInVoiceTrigger _requestStartAudioStreamWithSource:context:completion:]";
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Asking Exclave Audio", buf, 0xCu);
            }
          }
        }

        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v30 = 0;
        v22 = [v13 audioStreamWithRequest:v14 streamName:v21 error:&v30];
        v23 = v30;

        if (v22)
        {
          [(CSBuiltInVoiceTrigger *)self setAudioStream:v22];
          [v22 setDelegate:self];
        }

        else
        {
          v24 = CSLogCategoryVT;
          if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
          {
            v26 = v24;
            v27 = [v23 localizedDescription];
            *buf = 136315394;
            v35 = "[CSBuiltInVoiceTrigger _requestStartAudioStreamWithSource:context:completion:]";
            v36 = 2114;
            v37 = v27;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Failed to get audio stream : %{public}@", buf, 0x16u);
          }
        }

        (v10[2])(v10, v22 != 0, v23);

        goto LABEL_21;
      }
    }
  }

  speechManager = self->_speechManager;
  v31 = 0;
  v13 = [(CSSpeechManager *)speechManager audioProviderWithContext:v8 error:&v31];
  v15 = v31;
  if (v13)
  {
    [(CSBuiltInVoiceTrigger *)self setAudioProvider:v13];
    v14 = objc_alloc_init(CSAudioStreamRequest);
    if (a3 > 0xC || ((1 << a3) & 0x1306) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v25 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    v28 = v25;
    v29 = [v15 localizedDescription];
    *buf = 136315394;
    v35 = "[CSBuiltInVoiceTrigger _requestStartAudioStreamWithSource:context:completion:]";
    v36 = 2114;
    v37 = v29;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Getting audio stream provider has failed : %{public}@", buf, 0x16u);
  }

  (v10[2])(v10, 0, v15);
LABEL_21:
}

- (void)_startListenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[CSBuiltInVoiceTrigger _startListenWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10015C184;
  v16[3] = &unk_100253220;
  v6 = v4;
  v17 = v6;
  v7 = objc_retainBlock(v16);
  v8 = +[CSAudioRecordContext contextForBuiltInVoiceTrigger];
  phoneCallState = self->_phoneCallState;
  v10 = 8;
  if (phoneCallState != 2 && phoneCallState != 4)
  {
    v11 = +[CSMXRingtoneMonitor sharedInstance];
    v12 = [v11 isAnyRingtoneCurrentlyPlaying];

    if (v12)
    {
      v10 = 8;
    }

    else
    {
      if (self->_phoneCallState != 3)
      {
        v10 = 1;
        goto LABEL_10;
      }

      v10 = 9;
    }
  }

  [v8 setIsRequestDuringActiveCall:1];
LABEL_10:
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10015C19C;
  v14[3] = &unk_100253270;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  [(CSBuiltInVoiceTrigger *)self _requestStartAudioStreamWithSource:v10 context:v8 completion:v14];
}

- (void)_startListenPollingWithInterval:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSBuiltInVoiceTrigger _startListenPollingWithInterval:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if ([(CSPolicy *)self->_voiceTriggerAPModeSuspendPolicy isEnabled])
  {
    v8 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[CSBuiltInVoiceTrigger _startListenPollingWithInterval:completion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Skip listen polling since VoiceTrigger AP mode is disabled", buf, 0xCu);
    }

    [(CSBuiltInVoiceTrigger *)self _notifyEvent:1];
  }

  else
  {
    v9 = [(CSBuiltInVoiceTrigger *)self audioStream];
    if ([v9 isStreaming])
    {
    }

    else
    {
      voiceTriggerEnabled = self->_voiceTriggerEnabled;

      if (voiceTriggerEnabled)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10015C834;
        v12[3] = &unk_1002531F8;
        v12[4] = self;
        v14 = a3;
        v13 = v6;
        [(CSBuiltInVoiceTrigger *)self _startListenWithCompletion:v12];

        goto LABEL_15;
      }
    }

    v11 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[CSBuiltInVoiceTrigger _startListenPollingWithInterval:completion:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Skip listen polling since audio is streaming / VoiceTrigger disabled", buf, 0xCu);
    }
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
  }

LABEL_15:
}

- (void)_transitAOPModeIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = 136315650;
    v8 = "[CSBuiltInVoiceTrigger _transitAOPModeIfNeeded:]";
    v9 = 1024;
    v10 = [(CSBuiltInVoiceTrigger *)self voiceTriggerEnabled];
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s voiceTriggerEnabled : %d, enable AOP mode : %d", &v7, 0x18u);
  }

  if ([(CSBuiltInVoiceTrigger *)self voiceTriggerEnabled])
  {
    [(CSBuiltInVoiceTrigger *)self _notifyEvent:v3];
  }
}

- (void)_transitAOPModeIfNeededSync:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015CBD8;
  v4[3] = &unk_100253BF8;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

- (void)_transitAOPModeIfNeededAsync:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015CC60;
  v4[3] = &unk_100253BF8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)_transitVoiceTriggerStatus:(BOOL)a3 force:(BOOL)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10015CCEC;
  v5[3] = &unk_1002531A8;
  v6 = a3;
  v5[4] = self;
  v7 = a4;
  dispatch_async(queue, v5);
}

- (void)_setIsSecondPassRunning:(BOOL)a3
{
  v3 = a3;
  self->_isSecondPassRunning = a3;
  WeakRetained = objc_loadWeakRetained(&self->_secondPassProgressDelegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = CSIsHorseman();

    if (v7)
    {
      if (v3)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10015D03C;
        v12[3] = &unk_100253180;
        v12[4] = self;
        [CSMyriadPHash signalEstimateWithBuilder:v12];
        v9 = v8;
        v10 = objc_loadWeakRetained(&self->_secondPassProgressDelegate);
        [v10 secondPassDidStartForClient:1 deviceId:0 withFirstPassEstimate:v9];
      }

      else
      {
        v11 = objc_loadWeakRetained(&self->_secondPassProgressDelegate);
        [v11 secondPassDidStopForClient:1 deviceId:0];
      }
    }
  }
}

- (void)_setAsset:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (+[CSUtils isExclaveHardware])
    {
      v6 = [v5 assetVariant] == 2 && objc_msgSend(v5, "assetProvider") == 2;
      v8 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
      [(CSExclaveAssetsControlling *)self->_exclaveAssetsController setAssetForLocale:v8 isOTA:v6 completion:&stru_100253130];
    }

    objc_storeStrong(&self->_currentAsset, a3);
    v9 = [CSVoiceTriggerFirstPassConfigDecoder decodeConfigFrom:self->_currentAsset];
    [(CSBuiltInVoiceTrigger *)self setFirstPassConfig:v9];
    v10 = [(CSBuiltInVoiceTrigger *)self firstPassConfig];
    [v10 delaySecondsForChannelSelection];
    v12 = v11;
    +[CSConfig inputRecordingSampleRate];
    self->_delayInSamplesRequiredForChannelSelection = (v12 * v13);

    v14 = [(CSBuiltInVoiceTrigger *)self firstPassConfig];
    [v14 processingChunkSeconds];
    v16 = v15;
    +[CSConfig inputRecordingSampleRate];
    self->_processingChunkSamples = (v16 * v17);

    keywordAnalyzersNDAPI = self->_keywordAnalyzersNDAPI;
    if (keywordAnalyzersNDAPI)
    {
      [(NSMutableArray *)keywordAnalyzersNDAPI removeAllObjects];
    }

    else
    {
      v19 = +[NSMutableArray array];
      v20 = self->_keywordAnalyzersNDAPI;
      self->_keywordAnalyzersNDAPI = v19;
    }

    v21 = +[CSPowerLogger sharedPowerLogger];
    v22 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
    v23 = [v22 isEnabled];
    v24 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
    v25 = [(CSAsset *)self->_currentAsset configVersion];
    [v21 powerLogSiriConfigWithVoiceTriggerEnabled:v23 withLanguage:v24 withModelVersion:v25];

    v26 = [(CSBuiltInVoiceTrigger *)self firstPassConfig];
    v27 = [v26 configPathNDAPI];

    v28 = [(CSAsset *)self->_currentAsset resourcePath];
    v29 = [(CSBuiltInVoiceTrigger *)self firstPassConfig];
    v30 = [v29 processingChannelsBitset];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10015D568;
    v33[3] = &unk_100253158;
    v31 = v27;
    v34 = v31;
    v35 = self;
    v32 = v28;
    v36 = v32;
    [CSUtils iterateBitset:v30 block:v33];

    [(CSBuiltInVoiceTrigger *)self _reset];
    if ([(CSBuiltInVoiceTrigger *)self _shouldEnableAOPVoiceTrigger])
    {
      [(CSBuiltInVoiceTrigger *)self _startAOPVoiceTrigger];
    }

    [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setAsset:v5];
    if (!self->_firstTimeAssetConfigured)
    {
      self->_firstTimeAssetConfigured = 1;
    }
  }

  else
  {
    v7 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v38 = "[CSBuiltInVoiceTrigger _setAsset:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s asset is nil, stop initialization", buf, 0xCu);
    }
  }
}

- (void)setAsset:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015D9A4;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setSecondPassProgressDelegate:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015DA7C;
  block[3] = &unk_1002538D8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015DB48;
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
    v34 = "[CSBuiltInVoiceTrigger start]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass start];
  voiceTriggerStartPolicy = self->_voiceTriggerStartPolicy;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100003744;
  v31[3] = &unk_100253000;
  objc_copyWeak(&v32, buf);
  [(CSPolicy *)voiceTriggerStartPolicy setCallback:v31];
  if ([(CSPolicy *)self->_voiceTriggerStartPolicy isEnabled])
  {
    [(CSBuiltInVoiceTrigger *)self _transitVoiceTriggerStatus:1 force:0];
  }

  else
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015E0FC;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }

  voiceTriggerAPModeSuspendPolicy = self->_voiceTriggerAPModeSuspendPolicy;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100003650;
  v28[3] = &unk_100253000;
  objc_copyWeak(&v29, buf);
  [(CSPolicy *)voiceTriggerAPModeSuspendPolicy setCallback:v28];
  if (CSHasAOP())
  {
    v7 = +[CSDeviceActivationEventNotificationHandler sharedInstance];
    [v7 setDelegate:self forType:1];
    [v7 start];
  }

  v8 = +[CSSiriClientBehaviorMonitor sharedInstance];
  [v8 registerObserver:self];

  v9 = +[CSAudioServerCrashMonitor sharedInstance];
  [v9 addObserver:self];

  v10 = +[CSAVVCRecordingClientMonitor sharedInstance];
  [v10 addObserver:self];

  v11 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  [v11 addObserver:self];

  v12 = +[CSAttSiriStateMonitor sharedInstance];
  [v12 addObserver:self];

  v13 = self->_queue;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10015E104;
  v27[3] = &unk_100253C20;
  v27[4] = self;
  dispatch_async(v13, v27);
  v14 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  [v14 addObserver:self];

  [(CSAudioRouteChangeMonitor *)self->_audioRouteChangeMonitor addObserver:self];
  v15 = +[CSBluetoothWirelessSplitterMonitor sharedInstance];
  [v15 addObserver:self];

  v16 = +[CSBluetoothWirelessSplitterMonitor sharedInstance];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10015E184;
  v26[3] = &unk_100253050;
  v26[4] = self;
  [v16 splitterState:v26];

  if (CSIsASMacWithAOP() && +[CSUtils supportHearstVoiceTrigger])
  {
    [(CSAudioRouteChangeMonitor *)self->_audioRouteChangeMonitor addObserver:self];
    audioRouteChangeMonitor = self->_audioRouteChangeMonitor;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10015E1FC;
    v25[3] = &unk_100253078;
    v25[4] = self;
    [(CSAudioRouteChangeMonitor *)audioRouteChangeMonitor getHearstRouteStatus:v25];
  }

  v18 = self->_audioRouteChangeMonitor;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10015E270;
  v24[3] = &unk_100253078;
  v24[4] = self;
  [(CSAudioRouteChangeMonitor *)v18 getHearstRouteStatus:v24];
  v19 = self->_audioRouteChangeMonitor;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10015E2E4;
  v23[3] = &unk_1002530A0;
  v23[4] = self;
  [(CSAudioRouteChangeMonitor *)v19 getJarvisConnected:v23];
  [(CSStateCapture *)self->_stateCapture start];
  stateCapture = self->_stateCapture;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10015E35C;
  v21[3] = &unk_1002530F0;
  objc_copyWeak(&v22, buf);
  [(CSStateCapture *)stateCapture setStateCaptureBlock:v21];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
}

- (CSBuiltInVoiceTrigger)initWithTargetQueue:(id)a3 withSpeechManager:(id)a4 withAudioRouteChangeMonitor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v47.receiver = self;
  v47.super_class = CSBuiltInVoiceTrigger;
  v11 = [(CSBuiltInVoiceTrigger *)&v47 init];
  if (v11)
  {
    v12 = dispatch_queue_create("VoiceTrigger First Pass Queue", 0);
    v13 = *(v11 + 7);
    *(v11 + 7) = v12;

    if (v8)
    {
      dispatch_set_target_queue(*(v11 + 7), v8);
    }

    v14 = +[NSUUID UUID];
    v15 = [v14 UUIDString];

    v16 = [NSString stringWithFormat:@"builtInVoiceTrigger-%@", v15];
    [v11 setName:v16];

    [v11 _setupStateMachine];
    if (CSHasAOP())
    {
      v17 = objc_alloc_init(CSVoiceTriggerAlwaysOnProcessor);
      v18 = *(v11 + 27);
      *(v11 + 27) = v17;
    }

    v19 = +[CSVoiceTriggerAPModeSuspendPolicyFactory policy];
    v20 = *(v11 + 25);
    *(v11 + 25) = v19;

    if (+[CSUtils isExclaveHardware])
    {
      v21 = +[CSExclaveMessageHandlingFactory exclaveFirstPassVoiceTriggerAnalyzer];
      v22 = *(v11 + 44);
      *(v11 + 44) = v21;

      v23 = +[CSExclaveMessageHandlingFactory exclaveAssetsController];
      v24 = *(v11 + 45);
      *(v11 + 45) = v23;

      [v11 _resetFirstExclaveAudioBufferMarkerIfNeeded];
    }

    if ([v11 _shouldSecondPassKeepAlive])
    {
      if (+[CSUtils isExclaveHardware])
      {
        v25 = 12;
      }

      else
      {
        v25 = 0;
      }

      v26 = [[CSVoiceTriggerSecondPass alloc] initWithFirstPassSource:v25 phsEnabled:1 speechManager:0 supportsMphDetection:0 secondPassQueue:0];
      v27 = *(v11 + 20);
      *(v11 + 20) = v26;

      [*(v11 + 20) setSecondPassClient:1];
      v28 = [v11 delegate];
      [*(v11 + 20) setDelegate:v28];
    }

    objc_storeStrong(v11 + 38, a4);
    if (!*(v11 + 38))
    {
      v29 = +[CSSpeechManager sharedManager];
      v30 = *(v11 + 38);
      *(v11 + 38) = v29;
    }

    objc_storeStrong(v11 + 37, a5);
    if (!*(v11 + 37))
    {
      v31 = +[CSAudioRouteChangeMonitor sharedInstance];
      v32 = *(v11 + 37);
      *(v11 + 37) = v31;
    }

    v33 = +[CSBuiltInVoiceTriggerEnabledPolicy builtInVoiceTriggerEnabledPolicy];
    v34 = *(v11 + 5);
    *(v11 + 5) = v33;

    v35 = dispatch_group_create();
    v36 = *(v11 + 28);
    *(v11 + 28) = v35;

    v37 = +[NSMutableArray array];
    v38 = *(v11 + 22);
    *(v11 + 22) = v37;

    *(v11 + 13) = 0;
    *(v11 + 29) = 0;
    *(v11 + 15) = 0;
    v39 = +[NSMutableArray array];
    v40 = *(v11 + 31);
    *(v11 + 31) = v39;

    *(v11 + 39) = 0;
    +[CSConfig inputRecordingBufferDuration];
    *(v11 + 40) = (2.0 / v41);
    *(v11 + 17) = 0;
    v42 = [[CSVoiceTriggerUserSelectedPhrase alloc] initWithEndpointId:0];
    v43 = *(v11 + 43);
    *(v11 + 43) = v42;

    v44 = objc_alloc_init(CSStateCapture);
    v45 = *(v11 + 41);
    *(v11 + 41) = v44;

    *(v11 + 19) = 1;
  }

  return v11;
}

@end