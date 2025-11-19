@interface CSAttSiriAsrNode
- (BOOL)_shouldDisableLocalSpeechRecognizerWithOption:(id)a3 audioRecordContext:(id)a4;
- (BOOL)didDetectEndpoint;
- (BOOL)shouldStopProcessASROnEndpoint;
- (CSAttSiriAsrNode)init;
- (CSAttSiriAsrNode)initWithAttSiriController:(id)a3;
- (CSAttSiriAsrNode)initWithLocalSpeechRecognizer:(id)a3 isFileLoggingEnabled:(BOOL)a4;
- (CSAttSiriController)attSiriController;
- (CSAttSiriEndpointerNode)endpointerNode;
- (CSAttSiriSSRNode)ssrNode;
- (CSAttSiriUresNode)uresNode;
- (double)detectedEndpointTime;
- (double)localSpeechRecognizerDeliverAudioDuration;
- (id)_fetchInputOriginWithRecordContext:(id)a3;
- (id)_fetchRecognizerLanguageWithSiriLanguage:(id)a3 UILanguage:(id)a4 taskString:(id)a5 asrLocale:(id)a6;
- (id)_getAsrInputoriginFromContext:(id)a3;
- (id)_interactiveLocalSpeechRecognizer;
- (id)_sourceStringFromPreheatSource:(unint64_t)a3;
- (id)_stateToString:(unint64_t)a3;
- (unint64_t)fetchCurrentState;
- (void)_adjustEndpointStartTimeWithVoiceTriggerEvent:(id)a3;
- (void)_clearAudioProcessWaitingBufferIfNeeded;
- (void)_clearEndpointHint;
- (void)_disableLocalSpeechRecognitionForRequestId:(id)a3 force:(BOOL)a4;
- (void)_enforceEndpointHintWithRequestId:(id)a3 rcId:(unint64_t)a4 shouldAccept:(BOOL)a5 featuresToLog:(id)a6;
- (void)_handleDidRecognizedFinalSpeechPackage:(id)a3 requestId:(id)a4 metadata:(id)a5;
- (void)_handleDidRecognizedSpeechPackageForEagerRecognitionCandidate:(id)a3 requestId:(id)a4 rcId:(unint64_t)a5 metadata:(id)a6;
- (void)_handleShouldAcceptEagerResultWithRequestId:(id)a3 rcId:(unint64_t)a4 duration:(double)a5 shouldAccept:(BOOL)a6 featuresToLog:(id)a7;
- (void)_handleStopDeliverLocalSpeechRecognitionWithStopUresProcessing:(BOOL)a3;
- (void)_invalidateLocalSpeechRecognizer;
- (void)_markTimeToFirstWordMetric;
- (void)_preheatWithLanguage:(id)a3 preheatSource:(unint64_t)a4;
- (void)_preheatWithLanguage:(id)a3 preheatSource:(unint64_t)a4 shouldDownloadMissingAsset:(BOOL)a5;
- (void)_processAudioChunk:(id)a3 withReadyTimestamp:(id)a4;
- (void)_queryShouldAcceptEagerResultForDuration:(double)a3 requestId:(id)a4 rcId:(unint64_t)a5;
- (void)_releaseRecordingTransactionIfNeededWithToken:(id)a3;
- (void)_resetLocalSpeechRecognizerParameters;
- (void)_scheduleRecordingTransactionReleaseTimer;
- (void)_setLocalSpeechRecognizerState:(unint64_t)a3;
- (void)_setRecordingStartTimeWithStartStreamOption:(id)a3 audioRecordContext:(id)a4 voiceTriggerInfo:(id)a5;
- (void)_setupRecognizerStateForMagusAsrNode;
- (void)_startDeliverLocalSpeechRecognitionResultsWithRequestId:(id)a3;
- (void)_startLocalSpeechRecognizerIfNeeded;
- (void)attSiriAudioSrcNodeDidStartRecording:(id)a3 successfully:(BOOL)a4 error:(id)a5;
- (void)attSiriAudioSrcNodeDidStop:(id)a3;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)a3 audioChunk:(id)a4;
- (void)attSiriNode:(id)a3 didDetectHardEndpointAtTime:(double)a4 withMetrics:(id)a5 usesAutomaticEndpointing:(BOOL)a6;
- (void)disableLocalSpeechRecognitionForRequestId:(id)a3;
- (void)localSpeechRecognizer:(id)a3 didCompletionRecognitionWithStatistics:(id)a4 error:(id)a5;
- (void)localSpeechRecognizer:(id)a3 didProcessAudioDuration:(double)a4;
- (void)localSpeechRecognizer:(id)a3 didProduceEndpointFeaturesWithWordCount:(int64_t)a4 trailingSilenceDuration:(int64_t)a5 eosLikelihood:(double)a6 pauseCounts:(id)a7 silencePosterior:(double)a8 processedAudioDurationInMilliseconds:(int64_t)a9 acousticEndpointerScore:(double)a10;
- (void)localSpeechRecognizer:(id)a3 didRecognizeFinalResultCandidatePackage:(id)a4;
- (void)localSpeechRecognizer:(id)a3 didRecognizePackage:(id)a4;
- (void)localSpeechRecognizer:(id)a3 didRecognizePackage:(id)a4 withMetadata:(id)a5;
- (void)localSpeechRecognizer:(id)a3 didRecognizePartialPackage:(id)a4 withMetadata:(id)a5;
- (void)localSpeechRecognizer:(id)a3 didRecognizeTokens:(id)a4;
- (void)localSpeechRecognizer:(id)a3 didRecognizeTokens:(id)a4 withMetadata:(id)a5;
- (void)localSpeechRecognizer:(id)a3 didRecognizeVoiceCommandCandidatePackage:(id)a4 withMetadata:(id)a5;
- (void)localSpeechRecognizer:(id)a3 didSelectRecognitionModelWithModelProperties:(id)a4;
- (void)pauseLocalSpeechRecognitionForRequestId:(id)a3;
- (void)preheatLocalSpeechRecognitionWithLanguage:(id)a3 source:(unint64_t)a4;
- (void)preheatWithLanguage:(id)a3 shouldDownloadMissingAsset:(BOOL)a4;
- (void)prepareToStartSpeechRequestWithStartStreamOption:(id)a3 audioRecordContext:(id)a4 voiceTriggerInfo:(id)a5;
- (void)registerEndpointerNode:(id)a3;
- (void)registerSSRNode:(id)a3;
- (void)registerUresNode:(id)a3;
- (void)resumeLocalRecognitionWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6;
- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)setMhId:(id)a3;
- (void)start;
- (void)startSpeechRecognitionResultsWithSettings:(id)a3;
- (void)stopSpeechRecognitionWithReason:(unint64_t)a3 requestId:(id)a4;
- (void)stopWithReason:(unint64_t)a3;
- (void)trpCandidateReadyForExecutionForRequestId:(id)a3 withTrpId:(id)a4;
- (void)updateTCUState:(id)a3;
- (void)updateVoiceCommandContextWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6 disambiguationActive:(id)a7 cursorInVisibleText:(id)a8 favorCommandSuppression:(id)a9 abortCommandSuppression:(id)a10 undoEvent:(id)a11;
@end

@implementation CSAttSiriAsrNode

- (CSAttSiriSSRNode)ssrNode
{
  WeakRetained = objc_loadWeakRetained(&self->_ssrNode);

  return WeakRetained;
}

- (CSAttSiriUresNode)uresNode
{
  WeakRetained = objc_loadWeakRetained(&self->_uresNode);

  return WeakRetained;
}

- (CSAttSiriEndpointerNode)endpointerNode
{
  WeakRetained = objc_loadWeakRetained(&self->_endpointerNode);

  return WeakRetained;
}

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (void)_setupRecognizerStateForMagusAsrNode
{
  [(CSAttSiriAsrNode *)self _setLocalSpeechRecognizerState:2];

  [(CSAttSiriAsrNode *)self _startLocalSpeechRecognizerIfNeeded];
}

- (void)_markTimeToFirstWordMetric
{
  recordingStartTime = self->_recordingStartTime;
  if (recordingStartTime && self->_firstPartialResultTime && self->_firstWordDuration > 0.0 && self->_leadingSilenceDuration > 0.0)
  {
    v4 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
    v5 = CSLogContextFacilityCoreSpeech;
    v6 = v5;
    if (v4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v11 = CSLogContextFacilityCoreSpeech;
    }

    else
    {
      if (os_signpost_enabled(v5))
      {
        v7 = self->_recordingStartTime;
        leadingSilenceDuration = self->_leadingSilenceDuration;
        *&leadingSilenceDuration = leadingSilenceDuration;
        v9 = [CSFTimeUtils secondsToHostTime:leadingSilenceDuration]+ v7;
        firstWordDuration = self->_firstWordDuration;
        *&firstWordDuration = firstWordDuration;
        v37 = 134349570;
        v38 = [CSFTimeUtils secondsToHostTime:firstWordDuration]+ v9;
        v39 = 2080;
        v40 = "SiriX";
        v41 = 2080;
        v42 = "enableTelemetry=YES";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ondevice_TimeToFirstWord", "%{public, signpost.description:begin_time}llu, %s %s", &v37, 0x20u);
      }

      v11 = CSLogContextFacilityCoreSpeech;
      if (os_signpost_enabled(v11))
      {
        firstPartialResultTime = self->_firstPartialResultTime;
        v37 = 134349570;
        v38 = firstPartialResultTime;
        v39 = 2080;
        v40 = "SiriX";
        v41 = 2080;
        v42 = "enableTelemetry=YES";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v4, "ondevice_TimeToFirstWord", "%{public, signpost.description:end_time}llu, %s %s", &v37, 0x20u);
      }
    }

    v17 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
    v18 = CSLogContextFacilityCoreSpeech;
    v19 = v18;
    if (v17 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v21 = CSLogContextFacilityCoreSpeech;
    }

    else
    {
      if (os_signpost_enabled(v18))
      {
        v20 = self->_recordingStartTime;
        v37 = 134349314;
        v38 = v20;
        v39 = 2080;
        v40 = "SiriX";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "ondevice_LeadingSilence", "%{public, signpost.description:begin_time}llu, %s", &v37, 0x16u);
      }

      v21 = CSLogContextFacilityCoreSpeech;
      if (os_signpost_enabled(v21))
      {
        v22 = self->_recordingStartTime;
        v23 = self->_leadingSilenceDuration;
        *&v23 = v23;
        v24 = [CSFTimeUtils secondsToHostTime:v23];
        v37 = 134349314;
        v38 = &v24[v22];
        v39 = 2080;
        v40 = "SiriX";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v17, "ondevice_LeadingSilence", "%{public, signpost.description:end_time}llu, %s", &v37, 0x16u);
      }
    }

    v25 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
    v26 = CSLogContextFacilityCoreSpeech;
    v27 = v26;
    if (v25 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v31 = CSLogContextFacilityCoreSpeech;
    }

    else
    {
      if (os_signpost_enabled(v26))
      {
        v28 = self->_recordingStartTime;
        v29 = self->_leadingSilenceDuration;
        *&v29 = v29;
        v30 = [CSFTimeUtils secondsToHostTime:v29];
        v37 = 134349314;
        v38 = &v30[v28];
        v39 = 2080;
        v40 = "SiriX";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "ondevice_FirstWordDuration", "%{public, signpost.description:begin_time}llu, %s", &v37, 0x16u);
      }

      v31 = CSLogContextFacilityCoreSpeech;
      if (os_signpost_enabled(v31))
      {
        v32 = self->_recordingStartTime;
        v33 = self->_leadingSilenceDuration;
        *&v33 = v33;
        v34 = [CSFTimeUtils secondsToHostTime:v33]+ v32;
        v35 = self->_firstWordDuration;
        *&v35 = v35;
        v36 = [CSFTimeUtils secondsToHostTime:v35];
        v37 = 134349314;
        v38 = &v36[v34];
        v39 = 2080;
        v40 = "SiriX";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, v25, "ondevice_FirstWordDuration", "%{public, signpost.description:end_time}llu, %s", &v37, 0x16u);
      }
    }
  }

  else
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = self->_firstPartialResultTime;
      v15 = self->_firstWordDuration;
      v16 = self->_leadingSilenceDuration;
      v37 = 136316162;
      v38 = "[CSAttSiriAsrNode _markTimeToFirstWordMetric]";
      v39 = 2048;
      v40 = recordingStartTime;
      v41 = 2048;
      v42 = v14;
      v43 = 2048;
      v44 = v15;
      v45 = 2048;
      v46 = v16;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Can't calculate TTFW due to missing metric: %llu %llu %f %f", &v37, 0x34u);
    }
  }
}

- (id)_fetchRecognizerLanguageWithSiriLanguage:(id)a3 UILanguage:(id)a4 taskString:(id)a5 asrLocale:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v11 isEqualToString:CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging])
  {
    v13 = 0;
  }

  else
  {
    v13 = [v11 isEqualToString:CoreEmbeddedSpeechRecognizerTaskSiriDictation] ^ 1;
  }

  if (v12)
  {
    v13 = 1;
  }

  v14 = v13 ^ 1;
  if (v12)
  {
    v14 = 1;
  }

  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = v9;
  }

  if (v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v9;
  }

  if (!v14)
  {
    v15 = v16;
  }

  v17 = v15;
  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[CSAttSiriAsrNode _fetchRecognizerLanguageWithSiriLanguage:UILanguage:taskString:asrLocale:]";
    v22 = 2114;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Selected recognizer language : %{public}@", &v20, 0x16u);
  }

  return v17;
}

- (id)_sourceStringFromPreheatSource:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = &CoreEmbeddedSpeechRecognizerSourceAssistant;
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (a3 == 2)
  {
    v4 = &CoreEmbeddedSpeechRecognizerSourceDictation;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)_stateToString:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"[Unknown]";
  }

  else
  {
    return off_100251008[a3];
  }
}

- (void)_setLocalSpeechRecognizerState:(unint64_t)a3
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    localSpeechRecognizerState = self->_localSpeechRecognizerState;
    v7 = v5;
    v8 = [(CSAttSiriAsrNode *)self _stateToString:localSpeechRecognizerState];
    v9 = [(CSAttSiriAsrNode *)self _stateToString:a3];
    v10 = 136315650;
    v11 = "[CSAttSiriAsrNode _setLocalSpeechRecognizerState:]";
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s set current state from %{public}@ to %{public}@", &v10, 0x20u);
  }

  self->_localSpeechRecognizerState = a3;
}

- (void)_clearAudioProcessWaitingBufferIfNeeded
{
  if (self->_audioWaitingBuffer)
  {
    v3 = objc_autoreleasePoolPush();
    audioWaitingBuffer = self->_audioWaitingBuffer;
    self->_audioWaitingBuffer = 0;

    objc_autoreleasePoolPop(v3);
  }
}

- (id)_getAsrInputoriginFromContext:(id)a3
{
  v3 = a3;
  if ([v3 isVoiceTriggered] && !objc_msgSend(v3, "isRequestFromSpokenNotification"))
  {
    v4 = @"VoiceTrigger";
  }

  else
  {
    v4 = @"HomeButton";
    if (([v3 isiOSButtonPress] & 1) == 0)
    {
      if ([v3 isRTSTriggered])
      {
        v4 = @"RaiseToSpeak";
      }

      else if ([v3 isContinuousConversation])
      {
        v4 = @"MagusFollowup";
      }
    }
  }

  return v4;
}

- (id)_fetchInputOriginWithRecordContext:(id)a3
{
  v4 = a3;
  v5 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings inputOrigin];
  if ([v4 isRequestFromTriggerless] && +[CSUtils supportMedocAnnounce](CSUtils, "supportMedocAnnounce"))
  {

    v6 = @"MagusFollowup";
  }

  else
  {
    if (!v5)
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = "[CSAttSiriAsrNode _fetchInputOriginWithRecordContext:]";
        v11 = 2114;
        v12 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Received inputOrigin: %{public}@ from Request Dispatcher, use hard-coded map", &v9, 0x16u);
      }

      v5 = [(CSAttSiriAsrNode *)self _getAsrInputoriginFromContext:v4];
    }

    v6 = v5;
  }

  return v6;
}

- (double)detectedEndpointTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D0BD4;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(localSpeechRecognizerQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)localSpeechRecognizerDeliverAudioDuration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D0C94;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(localSpeechRecognizerQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldStopProcessASROnEndpoint
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D0D54;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(localSpeechRecognizerQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)didDetectEndpoint
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D0E14;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(localSpeechRecognizerQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)fetchCurrentState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 100;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D0ED8;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(localSpeechRecognizerQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)localSpeechRecognizer:(id)a3 didSelectRecognitionModelWithModelProperties:(id)a4
{
  v5 = a4;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v5 modelRoot];
    v11 = 136315394;
    v12 = "[CSAttSiriAsrNode localSpeechRecognizer:didSelectRecognitionModelWithModelProperties:]";
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Received ASR datapack root directory: %{public}@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_uresNode);
  v10 = [v5 modelRoot];
  [WeakRetained setASRModelRootDirectory:v10];
}

- (void)localSpeechRecognizer:(id)a3 didProduceEndpointFeaturesWithWordCount:(int64_t)a4 trailingSilenceDuration:(int64_t)a5 eosLikelihood:(double)a6 pauseCounts:(id)a7 silencePosterior:(double)a8 processedAudioDurationInMilliseconds:(int64_t)a9 acousticEndpointerScore:(double)a10
{
  v17 = a7;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000D10E8;
  v20[3] = &unk_100250F90;
  v22 = a4;
  v23 = a5;
  v20[4] = self;
  v21 = v17;
  v24 = a6;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v19 = v17;
  dispatch_async(localSpeechRecognizerQueue, v20);
}

- (void)localSpeechRecognizer:(id)a3 didCompletionRecognitionWithStatistics:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D1380;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(localSpeechRecognizerQueue, v15);
}

- (void)_handleDidRecognizedSpeechPackageForEagerRecognitionCandidate:(id)a3 requestId:(id)a4 rcId:(unint64_t)a5 metadata:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (self->_speechHasAcceptedResultCandidate)
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[CSAttSiriAsrNode _handleDidRecognizedSpeechPackageForEagerRecognitionCandidate:requestId:rcId:metadata:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Already accepted result candidate for request", buf, 0xCu);
    }
  }

  else
  {
    [CSAttSiriSpeechPackageHelper getLastTokenEndTimeFromSpeechPackage:v10];
    v15 = v14 * 1000.0;
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[CSAttSiriAsrNode _handleDidRecognizedSpeechPackageForEagerRecognitionCandidate:requestId:rcId:metadata:]";
      v31 = 2048;
      v32 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s SpeechPackage processed audio duration: %f ms", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_uresNode);
    [WeakRetained processResultCandidate:v10 forRCId:a5 forTask:self->_localSpeechRecognizerTaskString forRequestId:v11 completion:0];

    if (self->_localSpeechRecognizerState == 2)
    {
      v18 = [(CSAttSiriAsrNode *)self localSRBridgeListener];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000D1DB8;
      v23[3] = &unk_100250F18;
      v23[4] = self;
      v24 = v11;
      v27 = a5;
      v25 = v10;
      v28 = v15;
      v26 = v12;
      [v18 notifyClientsWithBlock:v23];
    }

    v19 = objc_loadWeakRetained(&self->_endpointerNode);
    v20 = [LBLocalSpeechRecognitionSettings getTaskStringFromSpeechRecognitionSettings:self->_speechRecognitionSettings];
    [v19 processSpeechPackage:v10 taskName:v20];

    self->_lastEndpointHintDuration = v15;
    self->_lastEndpointHintRCId = a5;
    self->_lastEndpointEagerResultTime = mach_continuous_time();
    endpointDelayReporter = self->_endpointDelayReporter;
    [CSAttSiriSpeechPackageHelper getLastTokenSilenceStartFromSpeechPackage:v10];
    [(CSEndpointDelayReporter *)endpointDelayReporter setUserSpeakingEndedTimeInMs:v22 * 1000.0];
    [(CSAttSiriAsrNode *)self _queryShouldAcceptEagerResultForDuration:v11 requestId:a5 rcId:v15];
  }
}

- (void)_handleDidRecognizedFinalSpeechPackage:(id)a3 requestId:(id)a4 metadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  lastEndpointHintRCId = self->_lastEndpointHintRCId;
  v12 = CSLogContextFacilityCoreSpeech;
  if (lastEndpointHintRCId < 0)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v19 = "[CSAttSiriAsrNode _handleDidRecognizedFinalSpeechPackage:requestId:metadata:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s There is no valid RC to deliver, or previous RC already got accepted", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[CSAttSiriAsrNode _handleDidRecognizedFinalSpeechPackage:requestId:metadata:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Enforce previous endpointHint", buf, 0xCu);
      lastEndpointHintRCId = self->_lastEndpointHintRCId;
    }

    [(CSAttSiriAsrNode *)self _enforceEndpointHintWithRequestId:self->_requestId rcId:lastEndpointHintRCId shouldAccept:1 featuresToLog:self->_lastEndpointHintFeatures];
  }

  [(CSAttSiriAsrNode *)self _markTimeToFirstWordMetric];
  if (self->_localSpeechRecognizerState == 2)
  {
    v13 = [(CSAttSiriAsrNode *)self localSRBridgeListener];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000D2038;
    v14[3] = &unk_100253AF8;
    v14[4] = self;
    v15 = v9;
    v16 = v8;
    v17 = v10;
    [v13 notifyClientsWithBlock:v14];
  }
}

- (void)localSpeechRecognizer:(id)a3 didRecognizePackage:(id)a4 withMetadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D2190;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(localSpeechRecognizerQueue, v15);
}

- (void)localSpeechRecognizer:(id)a3 didRecognizePackage:(id)a4
{
  v6 = a3;
  v7 = a4;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2430;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)localSpeechRecognizer:(id)a3 didRecognizeVoiceCommandCandidatePackage:(id)a4 withMetadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D26E0;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(localSpeechRecognizerQueue, v15);
}

- (void)localSpeechRecognizer:(id)a3 didRecognizeFinalResultCandidatePackage:(id)a4
{
  v6 = a3;
  v7 = a4;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2938;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)_handleShouldAcceptEagerResultWithRequestId:(id)a3 rcId:(unint64_t)a4 duration:(double)a5 shouldAccept:(BOOL)a6 featuresToLog:(id)a7
{
  v12 = a3;
  v13 = a7;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000D2BA4;
  v17[3] = &unk_100250EF0;
  v22 = a6;
  v20 = a5;
  v17[4] = self;
  v18 = v13;
  v19 = v12;
  v21 = a4;
  v15 = v12;
  v16 = v13;
  dispatch_async(localSpeechRecognizerQueue, v17);
}

- (void)_queryShouldAcceptEagerResultForDuration:(double)a3 requestId:(id)a4 rcId:(unint64_t)a5
{
  v8 = a4;
  if (self->_speechHasAcceptedResultCandidate)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[CSAttSiriAsrNode _queryShouldAcceptEagerResultForDuration:requestId:rcId:]";
      v10 = "%s Skip query as already accepted result candidate for request";
      v11 = v9;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 12;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_endpointerNode);
    v15 = [WeakRetained getUsesAutomaticEndpointing];

    didDetectEndpoint = self->_didDetectEndpoint;
    if (!didDetectEndpoint || v15 == 0)
    {
      v18 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v19 = @"NO";
        v26 = "[CSAttSiriAsrNode _queryShouldAcceptEagerResultForDuration:requestId:rcId:]";
        if (didDetectEndpoint)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        *buf = 136315650;
        v27 = 2114;
        v28 = v20;
        if (v15)
        {
          v19 = @"YES";
        }

        v29 = 2114;
        v30 = v19;
        v10 = "%s didDetectEndpoint = %{public}@, usesAutomaticEndpointing = %{public}@, waiting";
        v11 = v18;
        v12 = OS_LOG_TYPE_DEFAULT;
        v13 = 32;
        goto LABEL_16;
      }
    }

    else
    {
      objc_initWeak(buf, self);
      v21 = objc_loadWeakRetained(&self->_endpointerNode);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000D2F94;
      v22[3] = &unk_100250EC8;
      objc_copyWeak(v24, buf);
      v23 = v8;
      v24[1] = a5;
      v24[2] = *&a3;
      [v21 shouldAcceptEagerResultForDuration:v22 resultsCompletionHandler:a3];

      objc_destroyWeak(v24);
      objc_destroyWeak(buf);
    }
  }
}

- (void)localSpeechRecognizer:(id)a3 didProcessAudioDuration:(double)a4
{
  v6 = a3;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D30B8;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)localSpeechRecognizer:(id)a3 didRecognizeTokens:(id)a4 withMetadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D3318;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(localSpeechRecognizerQueue, v15);
}

- (void)localSpeechRecognizer:(id)a3 didRecognizePartialPackage:(id)a4 withMetadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D360C;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(localSpeechRecognizerQueue, v15);
}

- (void)localSpeechRecognizer:(id)a3 didRecognizeTokens:(id)a4
{
  v6 = a3;
  v7 = a4;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D38E0;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)_resetLocalSpeechRecognizerParameters
{
  self->_eagerResultId = 0;
  self->_speechHasAcceptedResultCandidate = 0;
  self->_firstWordDuration = 0.0;
  self->_leadingSilenceDuration = 0.0;
  self->_firstPartialResultTime = 0;
}

- (void)_invalidateLocalSpeechRecognizer
{
  interactiveLocalSpeechRecognizer = self->_interactiveLocalSpeechRecognizer;
  if (interactiveLocalSpeechRecognizer)
  {
    [(CoreEmbeddedSpeechRecognizerProvider *)interactiveLocalSpeechRecognizer invalidate];
    v4 = self->_interactiveLocalSpeechRecognizer;
    self->_interactiveLocalSpeechRecognizer = 0;
  }

  localSpeechRecognizerTaskString = self->_localSpeechRecognizerTaskString;
  self->_localSpeechRecognizerTaskString = 0;
}

- (id)_interactiveLocalSpeechRecognizer
{
  if (!+[CSUtils supportsSpeechRecognitionOnDevice])
  {
    v4 = 0;
    goto LABEL_13;
  }

  if (!self->_interactiveLocalSpeechRecognizer)
  {
    presetLocalSpeechRecognizer = self->_presetLocalSpeechRecognizer;
    if (!presetLocalSpeechRecognizer)
    {
      if (+[CSUtils isASRViaSpeechAPIEnabled])
      {
        v5 = [[CoreEmbeddedSpeechAnalyzer alloc] initWithDelegate:self instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
        interactiveLocalSpeechRecognizer = self->_interactiveLocalSpeechRecognizer;
        self->_interactiveLocalSpeechRecognizer = v5;

        v7 = CSLogContextFacilityCoreSpeech;
        if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        v8 = self->_interactiveLocalSpeechRecognizer;
        v14 = 136315650;
        v15 = "[CSAttSiriAsrNode _interactiveLocalSpeechRecognizer]";
        v16 = 2112;
        v17 = self;
        v18 = 2112;
        v19 = v8;
        v9 = "%s %@ created speech recognizer (v2) %@";
      }

      else
      {
        v10 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:self instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
        v11 = self->_interactiveLocalSpeechRecognizer;
        self->_interactiveLocalSpeechRecognizer = v10;

        v7 = CSLogContextFacilityCoreSpeech;
        if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        v12 = self->_interactiveLocalSpeechRecognizer;
        v14 = 136315650;
        v15 = "[CSAttSiriAsrNode _interactiveLocalSpeechRecognizer]";
        v16 = 2112;
        v17 = self;
        v18 = 2112;
        v19 = v12;
        v9 = "%s %@ created speech recognizer (v1) %@";
      }

      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &v14, 0x20u);
      goto LABEL_12;
    }

    objc_storeStrong(&self->_interactiveLocalSpeechRecognizer, presetLocalSpeechRecognizer);
  }

LABEL_12:
  v4 = self->_interactiveLocalSpeechRecognizer;
LABEL_13:

  return v4;
}

- (void)_releaseRecordingTransactionIfNeededWithToken:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    recordingToken = self->_recordingToken;
    v10 = 136315650;
    v11 = "[CSAttSiriAsrNode _releaseRecordingTransactionIfNeededWithToken:]";
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = recordingToken;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Token : %{public}@, currentToken : %{public}@", &v10, 0x20u);
  }

  if ([v4 isEqual:self->_recordingToken])
  {
    [(CSAttSiriAsrNode *)self _clearAudioProcessWaitingBufferIfNeeded];
    v7 = self->_recordingToken;
    self->_recordingToken = 0;

    recordingTransaction = self->_recordingTransaction;
    self->_recordingTransaction = 0;
  }

  else
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[CSAttSiriAsrNode _releaseRecordingTransactionIfNeededWithToken:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s recordingToken doesn't match, ignore", &v10, 0xCu);
    }
  }
}

- (void)_scheduleRecordingTransactionReleaseTimer
{
  objc_initWeak(&location, self);
  v3 = self->_recordingToken;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    recordingToken = self->_recordingToken;
    *buf = 136315650;
    v14 = "[CSAttSiriAsrNode _scheduleRecordingTransactionReleaseTimer]";
    v15 = 2114;
    v16 = recordingToken;
    v17 = 2050;
    v18 = 0x4014000000000000;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Schedule RecordingTransactionReleaseTimer %{public}@ for %{public}lf seconds", buf, 0x20u);
  }

  v6 = dispatch_time(0, 5000000000);
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D3FC4;
  block[3] = &unk_1002538D8;
  objc_copyWeak(&v11, &location);
  v10 = v3;
  v8 = v3;
  dispatch_after(v6, localSpeechRecognizerQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_processAudioChunk:(id)a3 withReadyTimestamp:(id)a4
{
  v6 = a3;
  if (self->_localSpeechRecognizerTaskString)
  {
    v7 = a4;
    v8 = [v6 numSamples];
    +[CSConfig inputRecordingSampleRate];
    self->_localSpeechRecognizerDeliverAudioDuration = self->_localSpeechRecognizerDeliverAudioDuration + (v8 / v9);
    v10 = [v6 dataForChannel:self->_activeChannel];
    -[CSPlainAudioFileWriter addSamples:numSamples:](self->_audioFileWriter, "addSamples:numSamples:", [v10 bytes], objc_msgSend(v6, "numSamples"));
    if (+[CSConfig inputRecordingIsFloat])
    {
      v11 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:v10];

      v10 = v11;
    }

    v12 = [(CSAttSiriAsrNode *)self _interactiveLocalSpeechRecognizer];
    [v6 hostTime];
    v13 = [NSNumber numberWithUnsignedLongLong:CSMachAbsoluteTimeToMachContinuousTime()];
    [v12 addAudioPacket:v10 packetRecordedTime:v13 packetReadyUpstreamTime:v7];

    [(CSUncompressedAudioLogging *)self->_audioLogging appendAudioData:v10];
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = 136315394;
      v17 = "[CSAttSiriAsrNode _processAudioChunk:withReadyTimestamp:]";
      v18 = 2050;
      v19 = [v6 numSamples];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Added %{public}lu samples to local speech recognizer", &v16, 0x16u);
    }
  }
}

- (void)_startLocalSpeechRecognizerIfNeeded
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    localSpeechRecognizerState = self->_localSpeechRecognizerState;
    v5 = v3;
    [(CSAttSiriAsrNode *)self _stateToString:localSpeechRecognizerState];
    v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 136315394;
    v146 = "[CSAttSiriAsrNode _startLocalSpeechRecognizerIfNeeded]";
    v147 = 2114;
    v148 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s current state = %{public}@", buf, 0x16u);
  }

  if (self->_localSpeechRecognizerState == 2)
  {
    v7 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
    language = self->_language;
    self->_language = v7;

    *&self->_didDetectEndpoint = 0;
    self->_localSpeechRecognizerDeliverAudioDuration = 0.0;
    self->_lastEndpointEagerResultTime = 0;
    v9 = [[CSEndpointDelayReporter alloc] initWithRequestMHUUID:0 turnIdentifier:0];
    endpointDelayReporter = self->_endpointDelayReporter;
    self->_endpointDelayReporter = v9;

    [(CSAttSiriAsrNode *)self _clearEndpointHint];
    if (!self->_disableEndpointer)
    {
      WeakRetained = objc_loadWeakRetained(&self->_endpointerNode);
      v12 = [LBLocalSpeechRecognitionSettings getTaskStringFromSpeechRecognitionSettings:self->_speechRecognitionSettings];
      [WeakRetained processTaskString:v12];
    }

    v13 = objc_loadWeakRetained(&self->_ssrNode);
    v14 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings sharedUserInfos];
    [v13 cacheSharedUserInfos:v14];

    v15 = self->_language;
    if (*&v15 != 0.0 && self->_localSpeechRecognizerTaskString)
    {
      if (self->_isFileLoggingEnabled)
      {
        v16 = +[CSFPreferences sharedPreferences];
        v17 = [v16 mhLogDirectory];
        v18 = [CSUtils loggingFilePathWithDirectory:v17 token:@"localASR" postfix:@"wav"];

        v19 = [CSPlainAudioFileWriter alloc];
        v20 = [NSURL URLWithString:v18];
        v21 = [v19 initWithURL:v20];
        audioFileWriter = self->_audioFileWriter;
        self->_audioFileWriter = v21;
      }

      else
      {
        v18 = self->_audioFileWriter;
        self->_audioFileWriter = 0;
      }

      v124 = [(CSAudioRecordContext *)self->_recordContext isVoiceTriggered];
      v133 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings dictationUIInteractionId];
      v128 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings shouldStoreAudioOnDevice];
      v24 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings overrideModelPath];
      v126 = CSShouldCensorSpeech();
      v131 = [(CSAttSiriAsrNode *)self _fetchInputOriginWithRecordContext:self->_recordContext];
      v123 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings deliverEagerPackage];
      v25 = self->_language;
      v26 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings UILanguage];
      localSpeechRecognizerTaskString = self->_localSpeechRecognizerTaskString;
      v28 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings asrLocale];
      v130 = [(CSAttSiriAsrNode *)self _fetchRecognizerLanguageWithSiriLanguage:v25 UILanguage:v26 taskString:localSpeechRecognizerTaskString asrLocale:v28];

      if (v24)
      {
        v129 = [NSURL fileURLWithPath:v24 isDirectory:1];
      }

      else
      {
        v129 = 0;
      }

      v29 = 0.0;
      endpointStartTimeInSec = 0.0;
      if ([(CSAudioRecordContext *)self->_recordContext isVoiceTriggered])
      {
        endpointStartTimeInSec = self->_endpointStartTimeInSec;
        audioSampleCountToSkip = self->_audioSampleCountToSkip;
        +[CSConfig inputRecordingSampleRate];
        v29 = (audioSampleCountToSkip / v32);
      }

      [(CSAttSiriAsrNode *)self _resetLocalSpeechRecognizerParameters];
      v127 = v24;
      if (v133)
      {
        v132 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings applicationName];
      }

      else
      {
        v132 = @"com.apple.siri.assistant";
      }

      v120 = [CESRSpeechParameters alloc];
      requestId = self->_requestId;
      v122 = self->_localSpeechRecognizerTaskString;
      v119 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings recognitionOverrides];
      v118 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings detectUtterances];
      v117 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings secureOfflineOnly];
      v116 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings continuousListening];
      v115 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings shouldHandleCapitalization];
      [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings maximumRecognitionDuration];
      v34 = v33;
      v35 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings location];
      v36 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings jitGrammar];
      disableEndpointer = self->_disableEndpointer;
      v113 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableEmojiRecognition];
      v37 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableAutoPunctuation];
      v38 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableVoiceCommands];
      v39 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings sharedUserInfos];
      v40 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings prefixText];
      v41 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings postfixText];
      v42 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings selectedText];
      v43 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings powerContext];
      LOBYTE(v112) = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings shouldGenerateVoiceCommandCandidates];
      BYTE4(v111) = v38;
      BYTE3(v111) = v37;
      BYTE2(v111) = v113;
      BYTE1(v111) = disableEndpointer;
      LOBYTE(v111) = v123;
      LOBYTE(v110) = 0;
      HIBYTE(v109) = v115;
      BYTE6(v109) = v116;
      BYTE5(v109) = v128;
      BYTE4(v109) = v117;
      BYTE3(v109) = v124;
      BYTE2(v109) = v126;
      BYTE1(v109) = v118;
      LOBYTE(v109) = 0;
      v125 = [v120 initWithLanguage:v130 requestIdentifier:requestId dictationUIInteractionIdentifier:v133 task:v122 loggingContext:0 applicationName:v132 profile:v34 overrides:endpointStartTimeInSec modelOverrideURL:v29 originalAudioFileURL:0 codec:v119 narrowband:v129 detectUtterances:0 censorSpeech:0 farField:v109 secureOfflineOnly:v110 shouldStoreAudioOnDevice:v131 continuousListening:v35 shouldHandleCapitalization:v36 isSpeechAPIRequest:v111 maximumRecognitionDuration:v39 endpointStart:v40 inputOrigin:v41 location:v42 jitGrammar:v43 deliverEagerPackage:v112 disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:?];

      v44 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v45 = self->_localSpeechRecognizerTaskString;
        speechRecognitionSettings = self->_speechRecognitionSettings;
        v47 = v44;
        v48 = [(LBLocalSpeechRecognitionSettings *)speechRecognitionSettings location];
        if (v126)
        {
          v49 = @"YES";
        }

        else
        {
          v49 = @"NO";
        }

        v50 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings jitGrammar];
        v51 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableVoiceCommands];
        *buf = 136316930;
        v146 = "[CSAttSiriAsrNode _startLocalSpeechRecognizerIfNeeded]";
        if (v51)
        {
          v52 = @"YES";
        }

        else
        {
          v52 = @"NO";
        }

        v147 = 2114;
        v148 = *&v45;
        v149 = 2050;
        v150 = *&endpointStartTimeInSec;
        v151 = 2114;
        v152 = v131;
        v153 = 2112;
        v154 = v48;
        v155 = 2114;
        v156 = v49;
        v157 = 2112;
        v158 = v50;
        v159 = 2114;
        v160 = v52;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%s Calling local speech recognition with settings : task(%{public}@), endpointStart(%{public}.3f), inputOrigin(%{public}@), location(%@), shouldCensorSpeech(%{public}@), jitGrammar(%@), enableVoiceCommands(%{public}@)", buf, 0x52u);
      }

      v53 = +[NSUUID UUID];
      v54 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v55 = v54;
        [v53 UUIDString];
        v56 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 136315394;
        v146 = "[CSAttSiriAsrNode _startLocalSpeechRecognizerIfNeeded]";
        v147 = 2112;
        v148 = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%s Setting ASR UUID : %@", buf, 0x16u);
      }

      v142[0] = _NSConcreteStackBlock;
      v142[1] = 3221225472;
      v142[2] = sub_1000D5364;
      v142[3] = &unk_100250E78;
      v57 = v53;
      v143 = v57;
      v58 = [v125 mutatedCopyWithMutator:v142];
      if (self->_voiceTriggerFireMachTime)
      {
        v59 = mach_absolute_time();
        v60 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
        v61 = CSLogContextFacilityCoreSpeech;
        v62 = v61;
        if (v60 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {

          v64 = CSLogContextFacilityCoreSpeech;
        }

        else
        {
          if (os_signpost_enabled(v61))
          {
            voiceTriggerFireMachTime = self->_voiceTriggerFireMachTime;
            *buf = 134349570;
            v146 = voiceTriggerFireMachTime;
            v147 = 2080;
            v148 = COERCE_DOUBLE("SiriX");
            v149 = 2080;
            v150 = "enableTelemetry=YES";
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v62, OS_SIGNPOST_INTERVAL_BEGIN, v60, "ondevice_VoiceTriggerEndToASRStartLatency", "%{public, signpost.description:begin_time}llu, %s %s", buf, 0x20u);
          }

          v64 = CSLogContextFacilityCoreSpeech;
          if (os_signpost_enabled(v64))
          {
            *buf = 134349570;
            v146 = v59;
            v147 = 2080;
            v148 = COERCE_DOUBLE("SiriX");
            v149 = 2080;
            v150 = "enableTelemetry=YES";
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_INTERVAL_END, v60, "ondevice_VoiceTriggerEndToASRStartLatency", "%{public, signpost.description:end_time}llu, %s %s", buf, 0x20u);
          }
        }

        v65 = self->_voiceTriggerFireMachTime;
        CSMachAbsoluteTimeGetTimeInterval();
        v67 = v66;
        v68 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v69 = v67 * 1000.0;
          *buf = 136315394;
          v146 = "[CSAttSiriAsrNode _startLocalSpeechRecognizerIfNeeded]";
          v147 = 2050;
          v148 = v69;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%s Voice trigger end to ASR Start Latency: %{public}.2f ms", buf, 0x16u);
        }
      }

      self->_voiceTriggerFireMachTime = 0;
      *&self->_onDeviceDictationSampled = 0;
      if (!+[CSUtils isOnDeviceASRAudioLoggingEnabled](CSUtils, "isOnDeviceASRAudioLoggingEnabled") || ([v58 task], v70 = objc_claimAutoreleasedReturnValue(), v71 = +[CESRUtilities isSamplingSupportedForTask:](CESRUtilities, "isSamplingSupportedForTask:", v70), v70, !v71))
      {
        v74 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v146 = "[CSAttSiriAsrNode _startLocalSpeechRecognizerIfNeeded]";
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%s Request is ineligible for sampling. Disabling audio logging.", buf, 0xCu);
        }

        audioLogging = self->_audioLogging;
        self->_audioLogging = 0;
        goto LABEL_64;
      }

      v72 = [v58 task];
      if ([v72 isEqualToString:CoreEmbeddedSpeechRecognizerTaskDictation])
      {
        v73 = 1;
      }

      else
      {
        v76 = [v58 task];
        v73 = [v76 isEqualToString:CoreEmbeddedSpeechRecognizerTaskWebSearch];
      }

      v77 = [CSSpeechRecognitionSelfHelper alloc];
      v78 = [v58 task];
      v79 = [(CSSpeechRecognitionSelfHelper *)v77 initWithAsrId:v57 taskName:v78 isSamplingForDictation:v73];
      asrSelfHelper = self->_asrSelfHelper;
      self->_asrSelfHelper = v79;

      if (v73)
      {
        v81 = +[CESRDictationOnDeviceSampling sharedManager];
        self->_onDeviceDictationSampled = [v81 isRequestSelectedForSamplingFromConfigForLanguage:self->_language];
      }

      else
      {
        if ((v128 & 1) == 0)
        {
          self->_onDeviceAssistantSampled = 0;
LABEL_55:
          if (self->_onDeviceAssistantSampled)
          {
            v83 = [CSUncompressedAudioLogging alloc];
            v84 = self->_requestId;
            v85 = [v57 UUIDString];
            v86 = self->_language;
            v87 = [v58 task];
            v88 = [v83 initWithRequestId:v84 asrId:v85 languageCode:v86 task:v87];
          }

          else
          {
            if (!self->_onDeviceDictationSampled)
            {
              v93 = CSLogContextFacilityCoreSpeech;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v146 = "[CSAttSiriAsrNode _startLocalSpeechRecognizerIfNeeded]";
                _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "%s Request was not selected for sampling. Disabling audio logging.", buf, 0xCu);
              }

              v85 = self->_audioLogging;
              self->_audioLogging = 0;
              goto LABEL_63;
            }

            v89 = [CSUncompressedAudioLogging alloc];
            v90 = self->_requestId;
            v85 = [v57 UUIDString];
            v91 = self->_language;
            v87 = [v58 task];
            v88 = [v89 initWithRequestId:v90 asrId:v85 dictationInteractionId:v133 languageCode:v91 task:v87 isSamplingForDictation:1];
          }

          v92 = self->_audioLogging;
          self->_audioLogging = v88;

LABEL_63:
          v94 = self->_asrSelfHelper;
          v95 = self->_requestId;
          v96 = self->_audioLogging;
          v139[0] = _NSConcreteStackBlock;
          v139[1] = 3221225472;
          v139[2] = sub_1000D5370;
          v139[3] = &unk_100253C70;
          v140 = v94;
          v141 = v95;
          v97 = v95;
          audioLogging = v94;
          [(CSUncompressedAudioLogging *)v96 prepareLogging:v139];

LABEL_64:
          v98 = v132;

          v99 = [(CSAttSiriAsrNode *)self _interactiveLocalSpeechRecognizer];
          v138[0] = _NSConcreteStackBlock;
          v138[1] = 3221225472;
          v138[2] = sub_1000D538C;
          v138[3] = &unk_100250EA0;
          v138[4] = self;
          [v99 startSpeechRecognitionWithParameters:v58 didStartHandlerWithInfo:v138];

          v100 = [(CSAudioProcessWaitingBuffer *)self->_audioWaitingBuffer fetchAudioChunksFromBuffer];
          v101 = v100;
          if (v100)
          {
            v136 = 0u;
            v137 = 0u;
            v134 = 0u;
            v135 = 0u;
            v102 = [v100 countByEnumeratingWithState:&v134 objects:v144 count:16];
            if (v102)
            {
              v103 = v102;
              v104 = *v135;
              do
              {
                for (i = 0; i != v103; i = i + 1)
                {
                  if (*v135 != v104)
                  {
                    objc_enumerationMutation(v101);
                  }

                  v106 = *(*(&v134 + 1) + 8 * i);
                  v107 = [v106 audioChunk];
                  v108 = [v106 bufferedTimestamp];
                  [(CSAttSiriAsrNode *)self _processAudioChunk:v107 withReadyTimestamp:v108];
                }

                v103 = [v101 countByEnumeratingWithState:&v134 objects:v144 count:16];
              }

              while (v103);
            }

            [(CSAttSiriAsrNode *)self _clearAudioProcessWaitingBufferIfNeeded];
            v98 = v132;
          }

          return;
        }

        v81 = +[CESRAssistantOnDeviceSampling sharedManager];
        self->_onDeviceAssistantSampled = [v81 isRequestSelectedForSamplingForTask:self->_localSpeechRecognizerTaskString];
      }

      goto LABEL_55;
    }

    v23 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v82 = self->_localSpeechRecognizerTaskString;
      *buf = 136315650;
      v146 = "[CSAttSiriAsrNode _startLocalSpeechRecognizerIfNeeded]";
      v147 = 2114;
      v148 = *&v15;
      v149 = 2114;
      v150 = v82;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Local speech recognizer can't started : locale(%{public}@), taskName(%{public}@)", buf, 0x20u);
    }

    [(CSAttSiriAsrNode *)self _setLocalSpeechRecognizerState:3];
    [(CSAttSiriAsrNode *)self _clearAudioProcessWaitingBufferIfNeeded];
  }
}

- (void)setMhId:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAttSiriAsrNode setMhId:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s mhID : %@", &v7, 0x16u);
  }

  mhId = self->_mhId;
  self->_mhId = v4;
}

- (BOOL)_shouldDisableLocalSpeechRecognizerWithOption:(id)a3 audioRecordContext:(id)a4
{
  v5 = a4;
  if (([a3 disableLocalSpeechRecognizer] & 1) == 0)
  {
    if (![v5 isDictation] || (+[CSUtils supportsDictationOnDevice](CSUtils, "supportsDictationOnDevice") & 1) != 0)
    {
      v6 = 0;
      goto LABEL_6;
    }

    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSAttSiriAsrNode _shouldDisableLocalSpeechRecognizerWithOption:audioRecordContext:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Disable local SR for dictation", &v9, 0xCu);
    }
  }

  v6 = 1;
LABEL_6:

  return v6;
}

- (void)prepareToStartSpeechRequestWithStartStreamOption:(id)a3 audioRecordContext:(id)a4 voiceTriggerInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D5A6C;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(localSpeechRecognizerQueue, v15);
}

- (void)_preheatWithLanguage:(id)a3 preheatSource:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  }

  language = self->_language;
  self->_language = v8;

  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_language;
    v15 = 136315394;
    v16 = "[CSAttSiriAsrNode _preheatWithLanguage:preheatSource:]";
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Preheat local speech recognizer with language : %@", &v15, 0x16u);
  }

  v12 = [[SFEntitledAssetConfig alloc] initWithLanguage:self->_language assetType:3];
  v13 = [(CSAttSiriAsrNode *)self _sourceStringFromPreheatSource:a4];
  v14 = [(CSAttSiriAsrNode *)self _interactiveLocalSpeechRecognizer];
  [v14 preheatSpeechRecognitionWithAssetConfig:v12 preheatSource:v13 modelOverrideURL:0];
}

- (void)_preheatWithLanguage:(id)a3 preheatSource:(unint64_t)a4 shouldDownloadMissingAsset:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  if (v5)
  {
    v8 = [(CSAttSiriAsrNode *)self _interactiveLocalSpeechRecognizer];
    [v8 startMissingAssetDownload];
  }

  [(CSAttSiriAsrNode *)self _preheatWithLanguage:v9 preheatSource:a4];
}

- (void)preheatWithLanguage:(id)a3 shouldDownloadMissingAsset:(BOOL)a4
{
  v6 = a3;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5EE4;
  block[3] = &unk_100253900;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)start
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSAttSiriAsrNode start]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5FF8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)_clearEndpointHint
{
  self->_lastEndpointHintDuration = 0.0;
  self->_lastEndpointHintRCId = -1;
  lastEndpointHintFeatures = self->_lastEndpointHintFeatures;
  self->_lastEndpointHintFeatures = 0;
}

- (void)_enforceEndpointHintWithRequestId:(id)a3 rcId:(unint64_t)a4 shouldAccept:(BOOL)a5 featuresToLog:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (self->_speechHasAcceptedResultCandidate)
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[CSAttSiriAsrNode _enforceEndpointHintWithRequestId:rcId:shouldAccept:featuresToLog:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Already accepted result candidate for request", &buf, 0xCu);
    }
  }

  else
  {
    self->_speechHasAcceptedResultCandidate = 1;
    if (self->_localSpeechRecognizerState == 2)
    {
      if (+[CSUtils isMedocFeatureEnabled])
      {
        v13 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "[CSAttSiriAsrNode _enforceEndpointHintWithRequestId:rcId:shouldAccept:featuresToLog:]";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s isMedocFeatureEnabled - don't need to send mitigationSignal", &buf, 0xCu);
        }
      }

      else
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v24 = 0x2020000000;
        WeakRetained = objc_loadWeakRetained(&self->_uresNode);
        v15 = [WeakRetained getMitigationDecisionForRCId:a4 forRequestId:v10];

        v25 = v15;
        v16 = [(CSAttSiriAsrNode *)self localSRBridgeListener];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000D64BC;
        v17[3] = &unk_100250E50;
        p_buf = &buf;
        v21 = a4;
        v22 = a5;
        v18 = v10;
        v19 = v11;
        [v16 notifyClientsWithBlock:v17];

        _Block_object_dispose(&buf, 8);
      }
    }

    [(CSAttSiriAsrNode *)self _clearEndpointHint];
  }
}

- (void)attSiriNode:(id)a3 didDetectHardEndpointAtTime:(double)a4 withMetrics:(id)a5 usesAutomaticEndpointing:(BOOL)a6
{
  v8 = a5;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6680;
  block[3] = &unk_1002533C8;
  v13 = a4;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)attSiriAudioSrcNodeDidStop:(id)a3
{
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D685C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)a3 audioChunk:(id)a4
{
  v5 = a4;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D69AC;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(localSpeechRecognizerQueue, v8);
}

- (void)attSiriAudioSrcNodeDidStartRecording:(id)a3 successfully:(BOOL)a4 error:(id)a5
{
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D6C34;
  v6[3] = &unk_100253BF8;
  v6[4] = self;
  v7 = a4;
  dispatch_async(localSpeechRecognizerQueue, v6);
}

- (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D6D58;
  v11[3] = &unk_100253C48;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(localSpeechRecognizerQueue, v11);
}

- (void)updateTCUState:(id)a3
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriAsrNode updateTCUState:]";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Unimplemented method called", &v4, 0xCu);
  }
}

- (void)trpCandidateReadyForExecutionForRequestId:(id)a3 withTrpId:(id)a4
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[CSAttSiriAsrNode trpCandidateReadyForExecutionForRequestId:withTrpId:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unimplemented method called", &v5, 0xCu);
  }
}

- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6F94;
  block[3] = &unk_100253680;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)updateVoiceCommandContextWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6 disambiguationActive:(id)a7 cursorInVisibleText:(id)a8 favorCommandSuppression:(id)a9 abortCommandSuppression:(id)a10 undoEvent:(id)a11
{
  v35 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v46 = "[CSAttSiriAsrNode updateVoiceCommandContextWithRequestId:prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:]";
    v47 = 2112;
    v48 = v35;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s requestId : %@", buf, 0x16u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D72A8;
  block[3] = &unk_100250E28;
  block[4] = self;
  v37 = v17;
  v38 = v18;
  v39 = v19;
  v40 = v20;
  v41 = v21;
  v42 = v22;
  v43 = v23;
  v44 = v24;
  v27 = v24;
  v28 = v23;
  v29 = v22;
  v30 = v21;
  v31 = v20;
  v32 = v19;
  v33 = v18;
  v34 = v17;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)resumeLocalRecognitionWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[CSAttSiriAsrNode resumeLocalRecognitionWithRequestId:prefixText:postfixText:selectedText:]";
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s requestId : %@", buf, 0x16u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000D749C;
  v19[3] = &unk_100252F38;
  v19[4] = self;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  dispatch_async(localSpeechRecognizerQueue, v19);
}

- (void)pauseLocalSpeechRecognitionForRequestId:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSAttSiriAsrNode pauseLocalSpeechRecognitionForRequestId:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s requestId : %@", buf, 0x16u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7614;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)_disableLocalSpeechRecognitionForRequestId:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[CSAttSiriAsrNode _disableLocalSpeechRecognitionForRequestId:force:]";
    v12 = 2112;
    v13 = v6;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s requestId : %@, force : %d", &v10, 0x1Cu);
  }

  if (!v6 || [(NSString *)v6 isEqualToString:self->_siriSessionUUID]|| v4)
  {
    [(CSAttSiriAsrNode *)self _setLocalSpeechRecognizerState:3];
    [(CSAttSiriAsrNode *)self _clearAudioProcessWaitingBufferIfNeeded];
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      siriSessionUUID = self->_siriSessionUUID;
      v10 = 136315394;
      v11 = "[CSAttSiriAsrNode _disableLocalSpeechRecognitionForRequestId:force:]";
      v12 = 2112;
      v13 = siriSessionUUID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s requestId doesn't match current siriSessionUUID (%@), ignore", &v10, 0x16u);
    }
  }
}

- (void)disableLocalSpeechRecognitionForRequestId:(id)a3
{
  v4 = a3;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D7864;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (void)stopSpeechRecognitionWithReason:(unint64_t)a3 requestId:(id)a4
{
  v6 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    requestId = self->_requestId;
    *buf = 136315906;
    v16 = "[CSAttSiriAsrNode stopSpeechRecognitionWithReason:requestId:]";
    v17 = 2050;
    v18 = a3;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = requestId;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Reason : %{public}lu, requestId: %@, cached requestId : %@", buf, 0x2Au);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D79C8;
  block[3] = &unk_1002533C8;
  v12 = v6;
  v13 = self;
  v14 = a3;
  v10 = v6;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)_startDeliverLocalSpeechRecognitionResultsWithRequestId:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    localSpeechRecognizerState = self->_localSpeechRecognizerState;
    v16 = 136315394;
    v17 = "[CSAttSiriAsrNode _startDeliverLocalSpeechRecognitionResultsWithRequestId:]";
    v18 = 2048;
    v19 = localSpeechRecognizerState;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s _localSpeechRecognizerState:%lu", &v16, 0x16u);
    v5 = CSLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    requestId = self->_requestId;
    v16 = 136315394;
    v17 = "[CSAttSiriAsrNode _startDeliverLocalSpeechRecognitionResultsWithRequestId:]";
    v18 = 2112;
    v19 = requestId;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Start deliver asr results with requestId: %@", &v16, 0x16u);
  }

  v8 = self->_localSpeechRecognizerState;
  if (v8 != 3)
  {
    [(CSAttSiriAsrNode *)self _setLocalSpeechRecognizerState:2];
    if (v8 == 4)
    {
      v9 = [(CSAudioProcessWaitingBuffer *)self->_audioWaitingBuffer uuid];
      v10 = [v9 isEqualToString:self->_requestId];

      if (v10)
      {
        v11 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315138;
          v17 = "[CSAttSiriAsrNode _startDeliverLocalSpeechRecognitionResultsWithRequestId:]";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Handle late start request from Request Dispatcher", &v16, 0xCu);
        }

        [(CSAttSiriAsrNode *)self _startLocalSpeechRecognizerIfNeeded];
        [(CSAttSiriAsrNode *)self _handleStopSpeechRecognitionTaskIfNeeded:1];
      }

      else
      {
        audioWaitingBuffer = self->_audioWaitingBuffer;
        if (audioWaitingBuffer)
        {
          v13 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v13;
            v15 = [(CSAudioProcessWaitingBuffer *)audioWaitingBuffer uuid];
            v16 = 136315650;
            v17 = "[CSAttSiriAsrNode _startDeliverLocalSpeechRecognitionResultsWithRequestId:]";
            v18 = 2112;
            v19 = v4;
            v20 = 2114;
            v21 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Clear audio waiting buffer since current requestId(%@) doesn't match expected one (%{public}@)", &v16, 0x20u);
          }

          [(CSAttSiriAsrNode *)self _clearAudioProcessWaitingBufferIfNeeded];
        }
      }
    }

    else if (v8 == 1)
    {
      [(CSAttSiriAsrNode *)self _startLocalSpeechRecognizerIfNeeded];
    }
  }
}

- (void)startSpeechRecognitionResultsWithSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 speechRecognitionMode];
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7E3C;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v9 = v4;
  v10 = v5;
  v7 = v4;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)preheatLocalSpeechRecognitionWithLanguage:(id)a3 source:(unint64_t)a4
{
  v6 = a3;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D823C;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)_handleStopDeliverLocalSpeechRecognitionWithStopUresProcessing:(BOOL)a3
{
  v3 = a3;
  [(CSAttSiriAsrNode *)self _setLocalSpeechRecognizerState:0];
  speechRecognitionSettings = self->_speechRecognitionSettings;
  self->_speechRecognitionSettings = 0;

  if ([(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings speechRecognitionMode]!= 1)
  {
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_uresNode);
      [WeakRetained stopUresProcessingForRequest:self->_requestId];
    }

    requestId = self->_requestId;
    self->_requestId = 0;
  }
}

- (void)_setRecordingStartTimeWithStartStreamOption:(id)a3 audioRecordContext:(id)a4 voiceTriggerInfo:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = [a4 isVoiceTriggered];
  if (v8 && v9 && (v10 = kVTEItriggerEndMachTime, [v8 objectForKeyedSubscript:kVTEItriggerEndMachTime], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [v8 objectForKeyedSubscript:v10];
    self->_recordingStartTime = +[CSFTimeUtils absoluteHostTimeToContinuousHostTime:](CSFTimeUtils, "absoluteHostTimeToContinuousHostTime:", [v12 unsignedLongLongValue]);
  }

  else
  {
    if ([v14 startRecordingHostTime])
    {
      v13 = +[CSFTimeUtils absoluteHostTimeToContinuousHostTime:](CSFTimeUtils, "absoluteHostTimeToContinuousHostTime:", [v14 startRecordingHostTime]);
    }

    else
    {
      v13 = mach_continuous_time();
    }

    self->_recordingStartTime = v13;
  }
}

- (void)_adjustEndpointStartTimeWithVoiceTriggerEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = kVTEIclientStartSampleCount;
    v7 = [v4 objectForKeyedSubscript:kVTEIclientStartSampleCount];
    if (v7)
    {
      v8 = v7;
      v9 = kVTEItriggerEndSampleCount;
      v10 = [v5 objectForKeyedSubscript:kVTEItriggerEndSampleCount];

      if (v10)
      {
        v11 = [v5 objectForKeyedSubscript:v9];
        v12 = [v11 unsignedIntegerValue];
        v13 = [v5 objectForKeyedSubscript:v6];
        v14 = v12 - [v13 unsignedIntegerValue];

        +[CSConfig inputRecordingSampleRate];
        v16 = (v14 / v15);
        self->_endpointStartTimeInSec = v16;
        v17 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 136315394;
          v35 = "[CSAttSiriAsrNode _adjustEndpointStartTimeWithVoiceTriggerEvent:]";
          v36 = 2050;
          v37 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Updated endpoint start time in sec : %{public}.3f", &v34, 0x16u);
        }
      }
    }

    v18 = kVTEIextraSamplesAtStart;
    v19 = [v5 objectForKeyedSubscript:kVTEIextraSamplesAtStart];

    if (v19)
    {
      v20 = [v5 objectForKeyedSubscript:v18];
      self->_audioSampleCountToSkip = [v20 unsignedIntegerValue];

      endpointStartTimeInSec = self->_endpointStartTimeInSec;
      audioSampleCountToSkip = self->_audioSampleCountToSkip;
      +[CSConfig inputRecordingSampleRate];
      v24 = (audioSampleCountToSkip / v23);
      v25 = 0.0;
      if (endpointStartTimeInSec > v24)
      {
        v26 = self->_endpointStartTimeInSec;
        v27 = self->_audioSampleCountToSkip;
        +[CSConfig inputRecordingSampleRate];
        v25 = v26 - (v27 / v28);
      }

      self->_endpointStartTimeInSec = v25;
      v29 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v30 = self->_audioSampleCountToSkip;
        v34 = 136315650;
        v35 = "[CSAttSiriAsrNode _adjustEndpointStartTimeWithVoiceTriggerEvent:]";
        v36 = 2050;
        v37 = v25;
        v38 = 2050;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s Adjusted endpoint start time to : %{public}.3f, audioSampleCountToSkip : %{public}lu", &v34, 0x20u);
      }
    }

    v31 = kVTEItriggerFireMachTime;
    v32 = [v5 objectForKeyedSubscript:kVTEItriggerFireMachTime];

    if (v32)
    {
      v33 = [v5 objectForKeyedSubscript:v31];
      self->_voiceTriggerFireMachTime = [v33 unsignedLongLongValue];
    }
  }
}

- (void)registerSSRNode:(id)a3
{
  v4 = a3;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D87F8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (void)registerUresNode:(id)a3
{
  v4 = a3;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D889C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (void)registerEndpointerNode:(id)a3
{
  v4 = a3;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D8940;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (void)stopWithReason:(unint64_t)a3
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSAttSiriAsrNode stopWithReason:]";
    v10 = 2050;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Reason : %{public}lu", buf, 0x16u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D8A6C;
  v7[3] = &unk_100253C98;
  v7[4] = self;
  v7[5] = a3;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (CSAttSiriAsrNode)initWithAttSiriController:(id)a3
{
  v4 = a3;
  v5 = [(CSAttSiriAsrNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, v4);
  }

  return v6;
}

- (CSAttSiriAsrNode)initWithLocalSpeechRecognizer:(id)a3 isFileLoggingEnabled:(BOOL)a4
{
  v7 = a3;
  v18.receiver = self;
  v18.super_class = CSAttSiriAsrNode;
  v8 = [(CSAttSiriAsrNode *)&v18 init];
  v9 = v8;
  if (v8)
  {
    requiredNodes = v8->_requiredNodes;
    v8->_type = 2;
    v8->_requiredNodes = &off_10025ED50;

    v9->_isReady = 0;
    targetQueue = v9->_targetQueue;
    v9->_targetQueue = 0;

    if (+[CSUtils supportsDispatchWorkloop])
    {
      v12 = [CSUtils getSerialQueueWithQOS:33 name:@"localSpeechRecognizerQueue Queue" fixedPriority:kCSDefaultSerialQueueFixedPriority];
    }

    else
    {
      v13 = [CSUtils rootQueueWithFixedPriority:kCSDefaultSerialQueueFixedPriority];
      v14 = v9->_targetQueue;
      v9->_targetQueue = v13;

      v12 = dispatch_queue_create_with_target_V2([@"localSpeechRecognizerQueue Queue" UTF8String], 0, v9->_targetQueue);
    }

    localSpeechRecognizerQueue = v9->_localSpeechRecognizerQueue;
    v9->_localSpeechRecognizerQueue = v12;

    v9->_activeChannel = 0;
    requestId = v9->_requestId;
    v9->_requestId = 0;

    v9->_eagerResultId = 0;
    v9->_disableEndpointer = 0;
    v9->_endpointStartTimeInSec = 0.0;
    v9->_audioSampleCountToSkip = 0;
    [(CSAttSiriAsrNode *)v9 _setLocalSpeechRecognizerState:0];
    v9->_shouldProcessAudio = 0;
    objc_storeStrong(&v9->_presetLocalSpeechRecognizer, a3);
    v9->_endpointMode = 0;
    v9->_isFileLoggingEnabled = a4;
    v9->_voiceTriggerFireMachTime = 0;
  }

  return v9;
}

- (CSAttSiriAsrNode)init
{
  v3 = +[CSFPreferences sharedPreferences];
  v4 = -[CSAttSiriAsrNode initWithLocalSpeechRecognizer:isFileLoggingEnabled:](self, "initWithLocalSpeechRecognizer:isFileLoggingEnabled:", 0, [v3 fileLoggingIsEnabled]);

  return v4;
}

@end