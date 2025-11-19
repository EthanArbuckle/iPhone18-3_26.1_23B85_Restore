@interface CSAttSiriSpeechRecognitionNode
- (BOOL)_shouldDisableLocalSpeechRecognizerWithOption:(id)a3 audioRecordContext:(id)a4;
- (BOOL)_shouldTriggerEagerResultForInterval:(double)a3;
- (BOOL)didDetectEndpoint;
- (CSAttSiriController)attSiriController;
- (CSAttSiriEndpointerNode)endpointerNode;
- (CSAttSiriSSRNode)ssrNode;
- (CSAttSiriSpeechRecognitionNode)initWithAttSiriController:(id)a3;
- (CSAttSiriSpeechRecognitionNode)initWithLocalSpeechRecognizer:(id)a3 fileLoggingDecisionBuilder:(id)a4;
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
- (void)_disableLocalSpeechRecognitionForRequestId:(id)a3 force:(BOOL)a4;
- (void)_handleDidRecognizedFinalSpeechPackage:(id)a3 requestId:(id)a4 metadata:(id)a5;
- (void)_handleDidRecognizedSpeechPackageForEagerRecognitionCandidate:(id)a3 requestId:(id)a4 rcId:(unint64_t)a5 metadata:(id)a6;
- (void)_handleStopDeliverLocalSpeechRecognitionWithRequestId:(id)a3 reason:(unint64_t)a4;
- (void)_invalidateLocalSpeechRecognizer;
- (void)_markTimeToFirstWordMetric;
- (void)_preheatWithLanguage:(id)a3 preheatSource:(unint64_t)a4;
- (void)_preheatWithLanguage:(id)a3 preheatSource:(unint64_t)a4 shouldDownloadMissingAsset:(BOOL)a5;
- (void)_processAudioChunk:(id)a3 withReadyTimestamp:(id)a4;
- (void)_releaseRecordingTransactionIfNeededWithToken:(id)a3;
- (void)_resetLocalSpeechRecognizerParameters;
- (void)_scheduleRecordingTransactionReleaseTimer;
- (void)_setLocalSpeechRecognizerState:(unint64_t)a3;
- (void)_setRecordingStartTimeWithStartStreamOption:(id)a3 audioRecordContext:(id)a4 voiceTriggerInfo:(id)a5;
- (void)_setUpAudioLogging;
- (void)_startDeliverLocalSpeechRecognitionResultsWithRequestId:(id)a3;
- (void)_startLocalSpeechRecognizerIfNeeded;
- (void)_stopPreviousRecognitionTaskIfNeededWithNewRequestId:(id)a3;
- (void)_stopSpeechRecognitionWithReason:(unint64_t)a3 requestId:(id)a4;
- (void)addEndpointFeatureReceiver:(id)a3;
- (void)addRecognitionTaskCompletionReceiver:(id)a3;
- (void)addResultCandidateReceiver:(id)a3;
- (void)addSpeechRecognitionReceiver:(id)a3;
- (void)attSiriAudioSrcNodeDidStartRecording:(id)a3 successfully:(BOOL)a4 error:(id)a5;
- (void)attSiriAudioSrcNodeDidStop:(id)a3;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)a3 audioChunk:(id)a4;
- (void)attSiriNode:(id)a3 didDetectEndpointEventAtTime:(double)a4 eventType:(int64_t)a5 withMetrics:(id)a6 usesAutomaticEndpointing:(BOOL)a7;
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
- (void)preheatWithLanguage:(id)a3 source:(unint64_t)a4 shouldDownloadMissingAsset:(BOOL)a5;
- (void)prepareToStartSpeechRequestWithStartStreamOption:(id)a3 audioRecordContext:(id)a4 voiceTriggerInfo:(id)a5;
- (void)registerEndpointerNode:(id)a3;
- (void)registerSSRNode:(id)a3;
- (void)resumeLocalRecognitionWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6;
- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)setMhId:(id)a3;
- (void)start;
- (void)startSpeechRecognitionResultsWithSettings:(id)a3;
- (void)stopSpeechRecognitionWithReason:(unint64_t)a3 requestId:(id)a4;
- (void)stopWithReason:(unint64_t)a3 stopStreamOption:(id)a4;
- (void)updateVoiceCommandContextWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6 disambiguationActive:(id)a7 cursorInVisibleText:(id)a8 favorCommandSuppression:(id)a9 abortCommandSuppression:(id)a10 undoEvent:(id)a11;
@end

@implementation CSAttSiriSpeechRecognitionNode

- (void)start
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSAttSiriSpeechRecognitionNode start]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007F88C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(localSpeechRecognizerQueue, block);
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
        v15 = "[CSAttSiriSpeechRecognitionNode _interactiveLocalSpeechRecognizer]";
        v16 = 2112;
        v17 = self;
        v18 = 2112;
        v19 = v8;
        v9 = "%s %@ created speech analyzer (v2) %@";
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
        v15 = "[CSAttSiriSpeechRecognitionNode _interactiveLocalSpeechRecognizer]";
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

- (CSAttSiriSSRNode)ssrNode
{
  WeakRetained = objc_loadWeakRetained(&self->_ssrNode);

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

- (void)_markTimeToFirstWordMetric
{
  recordingStartTime = self->_recordingStartTime;
  if (recordingStartTime && self->_firstPartialResultTime && self->_timeToSpeakFirstWord > 0.0)
  {
    v4 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
    v5 = CSLogContextFacilityCoreSpeech;
    v6 = v5;
    if (v4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v9 = CSLogContextFacilityCoreSpeech;
    }

    else
    {
      if (os_signpost_enabled(v5))
      {
        v7 = self->_recordingStartTime;
        timeToSpeakFirstWord = self->_timeToSpeakFirstWord;
        *&timeToSpeakFirstWord = timeToSpeakFirstWord;
        v14 = 134349570;
        v15 = [CSFTimeUtils secondsToHostTime:timeToSpeakFirstWord]+ v7;
        v16 = 2080;
        v17 = "SiriX";
        v18 = 2080;
        v19 = "enableTelemetry=YES";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ondevice_TimeToFirstWord", "%{public, signpost.description:begin_time}llu, %s %s", &v14, 0x20u);
      }

      v9 = CSLogContextFacilityCoreSpeech;
      if (os_signpost_enabled(v9))
      {
        firstPartialResultTime = self->_firstPartialResultTime;
        v14 = 134349570;
        v15 = firstPartialResultTime;
        v16 = 2080;
        v17 = "SiriX";
        v18 = 2080;
        v19 = "enableTelemetry=YES";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v4, "ondevice_TimeToFirstWord", "%{public, signpost.description:end_time}llu, %s %s", &v14, 0x20u);
      }
    }
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = self->_firstPartialResultTime;
      v13 = self->_timeToSpeakFirstWord;
      v14 = 136315906;
      v15 = "[CSAttSiriSpeechRecognitionNode _markTimeToFirstWordMetric]";
      v16 = 2048;
      v17 = recordingStartTime;
      v18 = 2048;
      v19 = v12;
      v20 = 2048;
      v21 = v13;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Can't calculate TTFW due to missing metric: %llu %llu %f", &v14, 0x2Au);
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
    v21 = "[CSAttSiriSpeechRecognitionNode _fetchRecognizerLanguageWithSiriLanguage:UILanguage:taskString:asrLocale:]";
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
    return off_10024FD28[a3];
  }
}

- (void)_setLocalSpeechRecognizerState:(unint64_t)a3
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    localSpeechRecognizerState = self->_localSpeechRecognizerState;
    v7 = v5;
    v8 = [(CSAttSiriSpeechRecognitionNode *)self _stateToString:localSpeechRecognizerState];
    v9 = [(CSAttSiriSpeechRecognitionNode *)self _stateToString:a3];
    v10 = 136315650;
    v11 = "[CSAttSiriSpeechRecognitionNode _setLocalSpeechRecognizerState:]";
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
        v10 = "[CSAttSiriSpeechRecognitionNode _fetchInputOriginWithRecordContext:]";
        v11 = 2114;
        v12 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Received inputOrigin: %{public}@ from Request Dispatcher, use hard-coded map", &v9, 0x16u);
      }

      v5 = [(CSAttSiriSpeechRecognitionNode *)self _getAsrInputoriginFromContext:v4];
    }

    v6 = v5;
  }

  return v6;
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
  v5[2] = sub_10007A74C;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(localSpeechRecognizerQueue, v5);
  v3 = v7[3];
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
  v5[2] = sub_10007A80C;
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
  v5[2] = sub_10007A8D0;
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
  v6 = a3;
  v7 = a4;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v7 modelRoot];
    *buf = 136315394;
    v24 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didSelectRecognitionModelWithModelProperties:]";
    v25 = 2114;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Received ASR datapack root directory: %{public}@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(CSAttSiriSpeechRecognitionNode *)self speechRecognitionReceivers];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          v17 = [v7 modelRoot];
          [v16 didSelectRecognitionModelWithModelRoot:v17];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)localSpeechRecognizer:(id)a3 didProduceEndpointFeaturesWithWordCount:(int64_t)a4 trailingSilenceDuration:(int64_t)a5 eosLikelihood:(double)a6 pauseCounts:(id)a7 silencePosterior:(double)a8 processedAudioDurationInMilliseconds:(int64_t)a9 acousticEndpointerScore:(double)a10
{
  v17 = a7;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007ABA0;
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
  v15[2] = sub_10007AEAC;
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
  v30 = a4;
  v29 = a6;
  v11 = v10;
  [CSAttSiriSpeechPackageHelper getLastTokenEndTimeFromSpeechPackage:v10];
  v13 = v12 * 1000.0;
  v14 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = "[CSAttSiriSpeechRecognitionNode _handleDidRecognizedSpeechPackageForEagerRecognitionCandidate:requestId:rcId:metadata:]";
    v43 = 2048;
    v44 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s SpeechPackage processed audio duration: %f ms", buf, 0x16u);
  }

  if ([(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableVoiceCommands])
  {
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v15 = [(CSAttSiriSpeechRecognitionNode *)self resultCandidateReceivers];
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v35 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v20 didReceiveResultCandidateWithRequestId:v30 rcId:a5 speechPackage:v11 duration:v29 metadata:self->_localSpeechRecognizerTaskString taskName:v13];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v33 = 0uLL;
    v34 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v15 = [(CSAttSiriSpeechRecognitionNode *)self resultCandidateReceivers];
    v21 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v15);
          }

          v25 = *(*(&v31 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            v26 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings inputOrigin];
            [v25 didReceiveResultCandidateWithRequestId:v30 rcId:a5 inputOrigin:v26 speechPackage:v11 duration:self->_localSpeechRecognizerTaskString taskName:v13];
          }
        }

        v22 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v22);
    }
  }

  self->_lastEndpointEagerResultTime = mach_continuous_time();
  endpointDelayReporter = self->_endpointDelayReporter;
  [CSAttSiriSpeechPackageHelper getLastTokenSilenceStartFromSpeechPackage:v11];
  [(CSEndpointDelayReporter *)endpointDelayReporter setUserSpeakingEndedTimeInMs:v28 * 1000.0];
}

- (void)_handleDidRecognizedFinalSpeechPackage:(id)a3 requestId:(id)a4 metadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(CSAttSiriSpeechRecognitionNode *)self _markTimeToFirstWordMetric];
  analyticsController = self->_analyticsController;
  v12 = [v8 recognition];
  v13 = [v12 oneBestTranscript];
  v14 = [(CSDADataAnalyticsController *)analyticsController shouldStoreAudioLogForTranscription:v13];

  [(CSUncompressedAudioLogging *)self->_audioLogging setShouldWriteRPIData:v14];
  if (self->_localSpeechRecognizerState == 2)
  {
    if ([(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableVoiceCommands])
    {
      v32 = 0uLL;
      v33 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v15 = [(CSAttSiriSpeechRecognitionNode *)self resultCandidateReceivers];
      v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v30 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v20 didReceiveFinalResultWithRequestId:v9 speechPackage:v8 metadata:v10 taskName:self->_localSpeechRecognizerTaskString];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v28 = 0uLL;
      v29 = 0uLL;
      *(&v26 + 1) = 0;
      v27 = 0uLL;
      v15 = [(CSAttSiriSpeechRecognitionNode *)self resultCandidateReceivers];
      v21 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v27;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v27 != v23)
            {
              objc_enumerationMutation(v15);
            }

            v25 = *(*(&v26 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v25 didReceiveFinalResultWithRequestId:v9 speechPackage:v8 taskName:self->_localSpeechRecognizerTaskString];
            }
          }

          v22 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v22);
      }
    }
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
  v15[2] = sub_10007BB74;
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
  block[2] = sub_10007BE14;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)localSpeechRecognizer:(id)a3 didRecognizeFinalResultCandidatePackage:(id)a4
{
  v6 = a3;
  v7 = a4;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C090;
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
  v15[2] = sub_10007C324;
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

- (void)localSpeechRecognizer:(id)a3 didProcessAudioDuration:(double)a4
{
  v6 = a3;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C580;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)localSpeechRecognizer:(id)a3 didRecognizePartialPackage:(id)a4 withMetadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007C7E0;
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

- (void)localSpeechRecognizer:(id)a3 didRecognizeTokens:(id)a4 withMetadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007CAE8;
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
  block[2] = sub_10007CDD0;
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
  self->_firstPartialResultTime = 0;
  self->_timeToSpeakFirstWord = 0.0;
}

- (void)_invalidateLocalSpeechRecognizer
{
  interactiveLocalSpeechRecognizer = self->_interactiveLocalSpeechRecognizer;
  if (interactiveLocalSpeechRecognizer)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSAttSiriSpeechRecognitionNode _invalidateLocalSpeechRecognizer]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
      interactiveLocalSpeechRecognizer = self->_interactiveLocalSpeechRecognizer;
    }

    [(CoreEmbeddedSpeechRecognizerProvider *)interactiveLocalSpeechRecognizer invalidate];
    v5 = self->_interactiveLocalSpeechRecognizer;
    self->_interactiveLocalSpeechRecognizer = 0;
  }

  localSpeechRecognizerTaskString = self->_localSpeechRecognizerTaskString;
  self->_localSpeechRecognizerTaskString = 0;
}

- (void)_releaseRecordingTransactionIfNeededWithToken:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    recordingToken = self->_recordingToken;
    v10 = 136315650;
    v11 = "[CSAttSiriSpeechRecognitionNode _releaseRecordingTransactionIfNeededWithToken:]";
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = recordingToken;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Token : %{public}@, currentToken : %{public}@", &v10, 0x20u);
  }

  if ([v4 isEqual:self->_recordingToken])
  {
    [(CSAttSiriSpeechRecognitionNode *)self _clearAudioProcessWaitingBufferIfNeeded];
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
      v11 = "[CSAttSiriSpeechRecognitionNode _releaseRecordingTransactionIfNeededWithToken:]";
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
    v14 = "[CSAttSiriSpeechRecognitionNode _scheduleRecordingTransactionReleaseTimer]";
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
  block[2] = sub_10007D388;
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

    v12 = [(CSAttSiriSpeechRecognitionNode *)self _interactiveLocalSpeechRecognizer];
    [v6 hostTime];
    v13 = [NSNumber numberWithUnsignedLongLong:CSMachAbsoluteTimeToMachContinuousTime()];
    [v12 addAudioPacket:v10 packetRecordedTime:v13 packetReadyUpstreamTime:v7];

    if (+[CSUtils isMedocFeatureEnabled]&& [(CSAttSiriSpeechRecognitionNode *)self _shouldTriggerEagerResultForInterval:self->_localSpeechRecognizerDeliverAudioDuration])
    {
      v14 = [(CSAttSiriSpeechRecognitionNode *)self _interactiveLocalSpeechRecognizer];
      [v14 requestEagerResult];
    }

    [(CSUncompressedAudioLogging *)self->_audioLogging appendAudioData:v10];
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = 136315394;
      v18 = "[CSAttSiriSpeechRecognitionNode _processAudioChunk:withReadyTimestamp:]";
      v19 = 2050;
      v20 = [v6 numSamples];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Added %{public}lu samples to local speech recognizer", &v17, 0x16u);
    }
  }
}

- (BOOL)_shouldTriggerEagerResultForInterval:(double)a3
{
  v5 = [(NSMutableArray *)self->_detectedEndpointTimes count]+ 1;
  while (1)
  {
    v6 = v5--;
    if (!v5)
    {
      break;
    }

    v7 = [(NSMutableArray *)self->_detectedEndpointTimes objectAtIndexedSubscript:v6 - 2];
    [v7 doubleValue];
    v9 = v8;

    if (v9 < a3)
    {
      [(NSMutableArray *)self->_detectedEndpointTimes removeObjectsInRange:0, v5];
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = "[CSAttSiriSpeechRecognitionNode _shouldTriggerEagerResultForInterval:]";
        v14 = 2048;
        v15 = a3;
        v16 = 2048;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Triggering eager RC generation at time %f, removing %lu entries", &v12, 0x20u);
      }

      return v6 != 1;
    }
  }

  return v6 != 1;
}

- (void)_startLocalSpeechRecognizerIfNeeded
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    localSpeechRecognizerState = self->_localSpeechRecognizerState;
    v5 = v3;
    [(CSAttSiriSpeechRecognitionNode *)self _stateToString:localSpeechRecognizerState];
    v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 136315394;
    v157 = "[CSAttSiriSpeechRecognitionNode _startLocalSpeechRecognizerIfNeeded]";
    v158 = 2114;
    v159 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s current state = %{public}@", buf, 0x16u);
  }

  if (self->_localSpeechRecognizerState == 2)
  {
    v7 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
    language = self->_language;
    self->_language = v7;

    self->_didDetectEndpoint = 0;
    self->_localSpeechRecognizerDeliverAudioDuration = 0.0;
    self->_lastEndpointEagerResultTime = 0;
    v9 = [[CSEndpointDelayReporter alloc] initWithRequestMHUUID:0 turnIdentifier:0];
    endpointDelayReporter = self->_endpointDelayReporter;
    self->_endpointDelayReporter = v9;

    [(NSMutableArray *)self->_detectedEndpointTimes removeAllObjects];
    if (!self->_disableEndpointer)
    {
      WeakRetained = objc_loadWeakRetained(&self->_endpointerNode);
      v12 = [LBLocalSpeechRecognitionSettings getTaskStringFromSpeechRecognitionSettings:self->_speechRecognitionSettings];
      [WeakRetained processTaskString:v12];
    }

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v13 = [(CSAttSiriSpeechRecognitionNode *)self speechRecognitionReceivers];
    v14 = [v13 countByEnumeratingWithState:&v151 objects:v172 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v152;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v152 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v151 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            requestId = self->_requestId;
            localSpeechRecognizerTaskString = self->_localSpeechRecognizerTaskString;
            v21 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings sharedUserInfos];
            [v18 didReceiveStartRecognitionRequest:requestId taskName:localSpeechRecognizerTaskString sharedUserInfo:v21];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v151 objects:v172 count:16];
      }

      while (v15);
    }

    v22 = objc_loadWeakRetained(&self->_ssrNode);
    v23 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings sharedUserInfos];
    [v22 cacheSharedUserInfos:v23];

    v24 = self->_language;
    if (*&v24 != 0.0 && self->_localSpeechRecognizerTaskString)
    {
      v134 = [(CSAudioRecordContext *)self->_recordContext isVoiceTriggered];
      v25 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings dictationUIInteractionId];
      v132 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings shouldStoreAudioOnDevice];
      v26 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings overrideModelPath];
      v27 = CSShouldCensorSpeech();
      v140 = [(CSAttSiriSpeechRecognitionNode *)self _fetchInputOriginWithRecordContext:self->_recordContext];
      v130 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings deliverEagerPackage];
      v28 = self->_language;
      v29 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings UILanguage];
      v30 = self->_localSpeechRecognizerTaskString;
      v31 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings asrLocale];
      v138 = [(CSAttSiriSpeechRecognitionNode *)self _fetchRecognizerLanguageWithSiriLanguage:v28 UILanguage:v29 taskString:v30 asrLocale:v31];

      [(CSAttSiriSpeechRecognitionNode *)self _setUpAudioLogging];
      if (v26)
      {
        v137 = [NSURL fileURLWithPath:v26 isDirectory:1];
      }

      else
      {
        v137 = 0;
      }

      v33 = 0.0;
      endpointStartTimeInSec = 0.0;
      if ([(CSAudioRecordContext *)self->_recordContext isVoiceTriggered])
      {
        endpointStartTimeInSec = self->_endpointStartTimeInSec;
        audioSampleCountToSkip = self->_audioSampleCountToSkip;
        +[CSConfig inputRecordingSampleRate];
        v33 = (audioSampleCountToSkip / v36);
      }

      [(CSAttSiriSpeechRecognitionNode *)self _resetLocalSpeechRecognizerParameters];
      v139 = v25;
      v131 = v26;
      v133 = v27;
      if (v25)
      {
        v136 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings applicationName];
      }

      else
      {
        v136 = @"com.apple.siri.assistant";
      }

      v127 = [CESRSpeechParameters alloc];
      v128 = self->_requestId;
      v129 = self->_localSpeechRecognizerTaskString;
      v126 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings recognitionOverrides];
      v125 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings detectUtterances];
      v124 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings secureOfflineOnly];
      v123 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings continuousListening];
      v122 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings shouldHandleCapitalization];
      [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings maximumRecognitionDuration];
      v38 = v37;
      v121 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings location];
      v120 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings jitGrammar];
      disableEndpointer = self->_disableEndpointer;
      v118 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableEmojiRecognition];
      v117 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableAutoPunctuation];
      v39 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableVoiceCommands];
      v116 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings sharedUserInfos];
      v40 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings prefixText];
      v41 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings postfixText];
      v42 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings selectedText];
      v43 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings powerContext];
      v44 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings shouldGenerateVoiceCommandCandidates];
      v45 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings activeUserInfo];
      v46 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings messagesContext];
      LOBYTE(v115) = v44;
      BYTE4(v114) = v39;
      BYTE3(v114) = v117;
      BYTE2(v114) = v118;
      BYTE1(v114) = disableEndpointer;
      LOBYTE(v114) = v130;
      LOBYTE(v113) = 0;
      HIBYTE(v112) = v122;
      BYTE6(v112) = v123;
      BYTE5(v112) = v132;
      BYTE4(v112) = v124;
      BYTE3(v112) = v134;
      BYTE2(v112) = v133;
      BYTE1(v112) = v125;
      LOBYTE(v112) = 0;
      v135 = [v127 initWithLanguage:v138 requestIdentifier:v128 dictationUIInteractionIdentifier:v139 task:v129 loggingContext:0 applicationName:v136 profile:v38 overrides:endpointStartTimeInSec modelOverrideURL:v33 originalAudioFileURL:0 codec:v126 narrowband:v137 detectUtterances:0 censorSpeech:0 farField:v112 secureOfflineOnly:v113 shouldStoreAudioOnDevice:v140 continuousListening:v121 shouldHandleCapitalization:v120 isSpeechAPIRequest:v114 maximumRecognitionDuration:v116 endpointStart:v40 inputOrigin:v41 location:v42 jitGrammar:v43 deliverEagerPackage:v115 disableDeliveringAsrFeatures:0 enableEmojiRecognition:v45 enableAutoPunctuation:v46 enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:? asrId:? activeUserInfo:? messagesContext:?];

      v47 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v48 = self->_localSpeechRecognizerTaskString;
        speechRecognitionSettings = self->_speechRecognitionSettings;
        v50 = v47;
        v51 = [(LBLocalSpeechRecognitionSettings *)speechRecognitionSettings location];
        if (v133)
        {
          v52 = @"YES";
        }

        else
        {
          v52 = @"NO";
        }

        v53 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings jitGrammar];
        v54 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableVoiceCommands];
        *buf = 136316930;
        v157 = "[CSAttSiriSpeechRecognitionNode _startLocalSpeechRecognizerIfNeeded]";
        if (v54)
        {
          v55 = @"YES";
        }

        else
        {
          v55 = @"NO";
        }

        v158 = 2114;
        v159 = *&v48;
        v160 = 2050;
        v161 = *&endpointStartTimeInSec;
        v162 = 2114;
        v163 = v140;
        v164 = 2112;
        v165 = v51;
        v166 = 2114;
        v167 = v52;
        v168 = 2112;
        v169 = v53;
        v170 = 2114;
        v171 = v55;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%s Calling local speech recognition with settings : task(%{public}@), endpointStart(%{public}.3f), inputOrigin(%{public}@), location(%@), shouldCensorSpeech(%{public}@), jitGrammar(%@), enableVoiceCommands(%{public}@)", buf, 0x52u);
      }

      v56 = +[NSUUID UUID];
      v57 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v57;
        [v56 UUIDString];
        v59 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 136315394;
        v157 = "[CSAttSiriSpeechRecognitionNode _startLocalSpeechRecognizerIfNeeded]";
        v158 = 2112;
        v159 = v59;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%s Setting ASR UUID : %@", buf, 0x16u);
      }

      v149[0] = _NSConcreteStackBlock;
      v149[1] = 3221225472;
      v149[2] = sub_10007E934;
      v149[3] = &unk_100250E78;
      v60 = v56;
      v150 = v60;
      v61 = [v135 mutatedCopyWithMutator:v149];
      if (self->_voiceTriggerFireMachTime)
      {
        v62 = mach_absolute_time();
        v63 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
        v64 = CSLogContextFacilityCoreSpeech;
        v65 = v64;
        if (v63 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {

          v67 = CSLogContextFacilityCoreSpeech;
        }

        else
        {
          if (os_signpost_enabled(v64))
          {
            voiceTriggerFireMachTime = self->_voiceTriggerFireMachTime;
            *buf = 134349570;
            v157 = voiceTriggerFireMachTime;
            v158 = 2080;
            v159 = COERCE_DOUBLE("SiriX");
            v160 = 2080;
            v161 = "enableTelemetry=YES";
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v65, OS_SIGNPOST_INTERVAL_BEGIN, v63, "ondevice_VoiceTriggerEndToASRStartLatency", "%{public, signpost.description:begin_time}llu, %s %s", buf, 0x20u);
          }

          v67 = CSLogContextFacilityCoreSpeech;
          if (os_signpost_enabled(v67))
          {
            *buf = 134349570;
            v157 = v62;
            v158 = 2080;
            v159 = COERCE_DOUBLE("SiriX");
            v160 = 2080;
            v161 = "enableTelemetry=YES";
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_INTERVAL_END, v63, "ondevice_VoiceTriggerEndToASRStartLatency", "%{public, signpost.description:end_time}llu, %s %s", buf, 0x20u);
          }
        }

        v68 = self->_voiceTriggerFireMachTime;
        CSMachAbsoluteTimeGetTimeInterval();
        v70 = v69;
        v71 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v72 = v70 * 1000.0;
          *buf = 136315394;
          v157 = "[CSAttSiriSpeechRecognitionNode _startLocalSpeechRecognizerIfNeeded]";
          v158 = 2050;
          v159 = v72;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%s Voice trigger end to ASR Start Latency: %{public}.2f ms", buf, 0x16u);
        }
      }

      self->_voiceTriggerFireMachTime = 0;
      *&self->_onDeviceDictationSampled = 0;
      if (!+[CSUtils isOnDeviceASRAudioLoggingEnabled](CSUtils, "isOnDeviceASRAudioLoggingEnabled") || ([v61 task], v73 = objc_claimAutoreleasedReturnValue(), v74 = +[CESRUtilities isSamplingSupportedForTask:](CESRUtilities, "isSamplingSupportedForTask:", v73), v73, !v74))
      {
        v77 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v157 = "[CSAttSiriSpeechRecognitionNode _startLocalSpeechRecognizerIfNeeded]";
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%s Request is ineligible for sampling. Disabling audio logging.", buf, 0xCu);
        }

        audioLogging = self->_audioLogging;
        self->_audioLogging = 0;
        goto LABEL_70;
      }

      v75 = [v61 task];
      if ([v75 isEqualToString:CoreEmbeddedSpeechRecognizerTaskDictation])
      {
        v76 = 1;
      }

      else
      {
        v79 = [v61 task];
        v76 = [v79 isEqualToString:CoreEmbeddedSpeechRecognizerTaskWebSearch];
      }

      v80 = [CSSpeechRecognitionSelfHelper alloc];
      v81 = [v61 task];
      v82 = [(CSSpeechRecognitionSelfHelper *)v80 initWithAsrId:v60 taskName:v81 isSamplingForDictation:v76];
      asrSelfHelper = self->_asrSelfHelper;
      self->_asrSelfHelper = v82;

      if (v76)
      {
        v84 = +[CESRDictationOnDeviceSampling sharedManager];
        self->_onDeviceDictationSampled = [v84 isRequestSelectedForSamplingFromConfigForLanguage:self->_language];
      }

      else if (v132)
      {
        v85 = +[CESRAssistantOnDeviceSampling sharedManager];
        self->_onDeviceAssistantSampled = [v85 isRequestSelectedForSamplingForTask:self->_localSpeechRecognizerTaskString];
      }

      else
      {
        self->_onDeviceAssistantSampled = 0;
      }

      if (self->_onDeviceAssistantSampled)
      {
        v87 = [CSUncompressedAudioLogging alloc];
        v88 = self->_requestId;
        v89 = [v60 UUIDString];
        v90 = self->_language;
        v91 = [v61 task];
        v92 = [v87 initWithRequestId:v88 asrId:v89 languageCode:v90 task:v91];
      }

      else
      {
        if (!self->_onDeviceDictationSampled)
        {
          v97 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v157 = "[CSAttSiriSpeechRecognitionNode _startLocalSpeechRecognizerIfNeeded]";
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%s Request was not selected for sampling. Disabling audio logging.", buf, 0xCu);
          }

          v89 = self->_audioLogging;
          self->_audioLogging = 0;
          goto LABEL_69;
        }

        v93 = [CSUncompressedAudioLogging alloc];
        v94 = self->_requestId;
        v89 = [v60 UUIDString];
        v95 = self->_language;
        v91 = [v61 task];
        v92 = [v93 initWithRequestId:v94 asrId:v89 dictationInteractionId:v139 languageCode:v95 task:v91 isSamplingForDictation:1];
      }

      v96 = self->_audioLogging;
      self->_audioLogging = v92;

LABEL_69:
      v98 = self->_asrSelfHelper;
      v99 = self->_requestId;
      v100 = self->_audioLogging;
      v146[0] = _NSConcreteStackBlock;
      v146[1] = 3221225472;
      v146[2] = sub_10007E940;
      v146[3] = &unk_100253C70;
      v147 = v98;
      v148 = v99;
      v101 = v99;
      audioLogging = v98;
      [(CSUncompressedAudioLogging *)v100 prepareLogging:v146];

LABEL_70:
      v102 = [(CSAttSiriSpeechRecognitionNode *)self _interactiveLocalSpeechRecognizer];
      v145[0] = _NSConcreteStackBlock;
      v145[1] = 3221225472;
      v145[2] = sub_10007E95C;
      v145[3] = &unk_100250EA0;
      v145[4] = self;
      [v102 startSpeechRecognitionWithParameters:v61 didStartHandlerWithInfo:v145];

      v103 = [(CSAudioProcessWaitingBuffer *)self->_audioWaitingBuffer fetchAudioChunksFromBuffer];
      v104 = v103;
      if (v103)
      {
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v105 = [v103 countByEnumeratingWithState:&v141 objects:v155 count:16];
        if (v105)
        {
          v106 = v105;
          v107 = *v142;
          do
          {
            for (j = 0; j != v106; j = j + 1)
            {
              if (*v142 != v107)
              {
                objc_enumerationMutation(v104);
              }

              v109 = *(*(&v141 + 1) + 8 * j);
              v110 = [v109 audioChunk];
              v111 = [v109 bufferedTimestamp];
              [(CSAttSiriSpeechRecognitionNode *)self _processAudioChunk:v110 withReadyTimestamp:v111];
            }

            v106 = [v104 countByEnumeratingWithState:&v141 objects:v155 count:16];
          }

          while (v106);
        }

        [(CSAttSiriSpeechRecognitionNode *)self _clearAudioProcessWaitingBufferIfNeeded];
      }

      return;
    }

    v32 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v86 = self->_localSpeechRecognizerTaskString;
      *buf = 136315650;
      v157 = "[CSAttSiriSpeechRecognitionNode _startLocalSpeechRecognizerIfNeeded]";
      v158 = 2114;
      v159 = *&v24;
      v160 = 2114;
      v161 = v86;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s Local speech recognizer can't started : locale(%{public}@), taskName(%{public}@)", buf, 0x20u);
    }

    [(CSAttSiriSpeechRecognitionNode *)self _setLocalSpeechRecognizerState:3];
    [(CSAttSiriSpeechRecognitionNode *)self _clearAudioProcessWaitingBufferIfNeeded];
  }
}

- (void)_setUpAudioLogging
{
  fileLoggingDecisionBuilder = self->_fileLoggingDecisionBuilder;
  if (fileLoggingDecisionBuilder)
  {
    v4 = fileLoggingDecisionBuilder[2](fileLoggingDecisionBuilder, a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "[CSAttSiriSpeechRecognitionNode _setUpAudioLogging]";
    v19 = 1024;
    LODWORD(v20) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s fileLogging enabled:%u", &v17, 0x12u);
  }

  if (v4)
  {
    v6 = +[CSFPreferences sharedPreferences];
    v7 = [v6 isSpeechStudyLoggingEnabled];

    v8 = +[CSFPreferences sharedPreferences];
    v9 = [v8 mhLogDirectory];
    if (v7)
    {
      [CSUtils loggingFilePathWithDirectory:v9 requestId:self->_requestId token:@"asr" postfix:@"wav"];
    }

    else
    {
      [CSUtils loggingFilePathWithDirectory:v9 token:@"localASR" postfix:@"wav"];
    }
    v10 = ;

    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      mhId = self->_mhId;
      v17 = 136315650;
      v18 = "[CSAttSiriSpeechRecognitionNode _setUpAudioLogging]";
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = mhId;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s asrAudioLoggingPath:%@, mhID:%@", &v17, 0x20u);
    }

    v13 = [CSPlainAudioFileWriter alloc];
    v14 = [NSURL URLWithString:v10];
    v15 = [v13 initWithURL:v14];
    audioFileWriter = self->_audioFileWriter;
    self->_audioFileWriter = v15;
  }

  else
  {
    v10 = self->_audioFileWriter;
    self->_audioFileWriter = 0;
  }
}

- (void)setMhId:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAttSiriSpeechRecognitionNode setMhId:]";
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
      v10 = "[CSAttSiriSpeechRecognitionNode _shouldDisableLocalSpeechRecognizerWithOption:audioRecordContext:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Disable local SR for dictation", &v9, 0xCu);
    }
  }

  v6 = 1;
LABEL_6:

  return v6;
}

- (void)_stopPreviousRecognitionTaskIfNeededWithNewRequestId:(id)a3
{
  v4 = a3;
  requestId = self->_requestId;
  if (requestId && ![(NSString *)requestId isEqualToString:v4])
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_requestId;
      v8 = 136315650;
      v9 = "[CSAttSiriSpeechRecognitionNode _stopPreviousRecognitionTaskIfNeededWithNewRequestId:]";
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s cached requestId : %@, newRequestId : %@", &v8, 0x20u);
    }

    [(CSAttSiriSpeechRecognitionNode *)self _handleStopDeliverLocalSpeechRecognitionWithRequestId:self->_requestId reason:3];
  }
}

- (void)prepareToStartSpeechRequestWithStartStreamOption:(id)a3 audioRecordContext:(id)a4 voiceTriggerInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007F364;
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
    v16 = "[CSAttSiriSpeechRecognitionNode _preheatWithLanguage:preheatSource:]";
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Preheat local speech recognizer with language : %@", &v15, 0x16u);
  }

  v12 = [[SFEntitledAssetConfig alloc] initWithLanguage:self->_language assetType:3];
  v13 = [(CSAttSiriSpeechRecognitionNode *)self _sourceStringFromPreheatSource:a4];
  v14 = [(CSAttSiriSpeechRecognitionNode *)self _interactiveLocalSpeechRecognizer];
  [v14 preheatSpeechRecognitionWithAssetConfig:v12 preheatSource:v13 modelOverrideURL:0];
}

- (void)_preheatWithLanguage:(id)a3 preheatSource:(unint64_t)a4 shouldDownloadMissingAsset:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  if (v5)
  {
    v8 = [(CSAttSiriSpeechRecognitionNode *)self _interactiveLocalSpeechRecognizer];
    [v8 startMissingAssetDownload];
  }

  [(CSAttSiriSpeechRecognitionNode *)self _preheatWithLanguage:v9 preheatSource:a4];
}

- (void)preheatWithLanguage:(id)a3 source:(unint64_t)a4 shouldDownloadMissingAsset:(BOOL)a5
{
  v8 = a3;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007F878;
  v11[3] = &unk_100250678;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_async(localSpeechRecognizerQueue, v11);
}

- (void)attSiriNode:(id)a3 didDetectEndpointEventAtTime:(double)a4 eventType:(int64_t)a5 withMetrics:(id)a6 usesAutomaticEndpointing:(BOOL)a7
{
  v11 = a3;
  v12 = a6;
  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[CSAttSiriSpeechRecognitionNode attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FC24;
  block[3] = &unk_1002512C0;
  block[4] = self;
  block[5] = a5;
  *&block[6] = a4;
  dispatch_async(localSpeechRecognizerQueue, block);
  WeakRetained = objc_loadWeakRetained(&self->_endpointerNode);
  v16 = [WeakRetained getUsesAutomaticEndpointing];

  if (v16)
  {
    self->_endpointMode = 4;
  }
}

- (void)attSiriNode:(id)a3 didDetectHardEndpointAtTime:(double)a4 withMetrics:(id)a5 usesAutomaticEndpointing:(BOOL)a6
{
  v8 = a5;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FE58;
  block[3] = &unk_100253900;
  block[4] = self;
  v12 = v8;
  v13 = a6;
  v10 = v8;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)attSiriAudioSrcNodeDidStop:(id)a3
{
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FF3C;
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
  v8[2] = sub_10008008C;
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
  v6[2] = sub_100080290;
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
  v11[2] = sub_1000803B4;
  v11[3] = &unk_100253C48;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(localSpeechRecognizerQueue, v11);
}

- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080498;
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
    v46 = "[CSAttSiriSpeechRecognitionNode updateVoiceCommandContextWithRequestId:prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:]";
    v47 = 2112;
    v48 = v35;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s requestId : %@", buf, 0x16u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000807AC;
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
    v24 = "[CSAttSiriSpeechRecognitionNode resumeLocalRecognitionWithRequestId:prefixText:postfixText:selectedText:]";
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s requestId : %@", buf, 0x16u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000809A0;
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
    v9 = "[CSAttSiriSpeechRecognitionNode pauseLocalSpeechRecognitionForRequestId:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s requestId : %@", buf, 0x16u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080B18;
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
    v11 = "[CSAttSiriSpeechRecognitionNode _disableLocalSpeechRecognitionForRequestId:force:]";
    v12 = 2112;
    v13 = v6;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s requestId : %@, force : %d", &v10, 0x1Cu);
  }

  if (!v6 || [(NSString *)v6 isEqualToString:self->_siriSessionUUID]|| v4)
  {
    [(CSAttSiriSpeechRecognitionNode *)self _setLocalSpeechRecognizerState:3];
    [(CSAttSiriSpeechRecognitionNode *)self _clearAudioProcessWaitingBufferIfNeeded];
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      siriSessionUUID = self->_siriSessionUUID;
      v10 = 136315394;
      v11 = "[CSAttSiriSpeechRecognitionNode _disableLocalSpeechRecognitionForRequestId:force:]";
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
  v7[2] = sub_100080D68;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (void)_stopSpeechRecognitionWithReason:(unint64_t)a3 requestId:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!v6 || ([v6 isEqualToString:self->_requestId] & 1) == 0)
  {
    if (self->_requestId)
    {
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315138;
        v14 = "[CSAttSiriSpeechRecognitionNode _stopSpeechRecognitionWithReason:requestId:]";
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Received unexpected requestId", &v13, 0xCu);
      }

      v9 = +[CSDiagnosticReporter sharedInstance];
      [v9 submitASRIssueReport:kCSDiagnosticReporterReceivedInvalidRequestId];
    }

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  if (![v7 isEqualToString:self->_requestId])
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      requestId = self->_requestId;
      v13 = 136315394;
      v14 = "[CSAttSiriSpeechRecognitionNode _stopSpeechRecognitionWithReason:requestId:]";
      v15 = 2112;
      v16 = requestId;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s requestId doesn't match current one (%@), ignore", &v13, 0x16u);
    }
  }

  else
  {
LABEL_9:
    [(CSAttSiriSpeechRecognitionNode *)self _handleStopDeliverLocalSpeechRecognitionWithRequestId:self->_requestId reason:a3];
    asrResultDeliveryTransaction = self->_asrResultDeliveryTransaction;
    self->_asrResultDeliveryTransaction = 0;

    if (a3 == 1)
    {
      [(CSAttSiriSpeechRecognitionNode *)self _invalidateLocalSpeechRecognizer];
      [(CSUncompressedAudioLogging *)self->_audioLogging endAudioWithCancellation:1 completion:0];
    }
  }
}

- (void)stopSpeechRecognitionWithReason:(unint64_t)a3 requestId:(id)a4
{
  v6 = a4;
  v7 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[CSAttSiriSpeechRecognitionNode stopSpeechRecognitionWithReason:requestId:]";
    v15 = 2050;
    v16 = a3;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "KeyLog - %s Reason : %{public}lu, requestId : %@", buf, 0x20u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081088;
  block[3] = &unk_1002533C8;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
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
    v17 = "[CSAttSiriSpeechRecognitionNode _startDeliverLocalSpeechRecognitionResultsWithRequestId:]";
    v18 = 2048;
    v19 = localSpeechRecognizerState;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s _localSpeechRecognizerState:%lu", &v16, 0x16u);
    v5 = CSLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    requestId = self->_requestId;
    v16 = 136315394;
    v17 = "[CSAttSiriSpeechRecognitionNode _startDeliverLocalSpeechRecognitionResultsWithRequestId:]";
    v18 = 2112;
    v19 = requestId;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Start deliver asr results with requestId: %@", &v16, 0x16u);
  }

  v8 = self->_localSpeechRecognizerState;
  if (v8 != 3)
  {
    [(CSAttSiriSpeechRecognitionNode *)self _setLocalSpeechRecognizerState:2];
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
          v17 = "[CSAttSiriSpeechRecognitionNode _startDeliverLocalSpeechRecognitionResultsWithRequestId:]";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Handle late start request from Request Dispatcher", &v16, 0xCu);
        }

        [(CSAttSiriSpeechRecognitionNode *)self _startLocalSpeechRecognizerIfNeeded];
        [(CSAttSiriSpeechRecognitionNode *)self _handleStopSpeechRecognitionTaskIfNeeded:1];
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
            v17 = "[CSAttSiriSpeechRecognitionNode _startDeliverLocalSpeechRecognitionResultsWithRequestId:]";
            v18 = 2112;
            v19 = v4;
            v20 = 2114;
            v21 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Clear audio waiting buffer since current requestId(%@) doesn't match expected one (%{public}@)", &v16, 0x20u);
          }

          [(CSAttSiriSpeechRecognitionNode *)self _clearAudioProcessWaitingBufferIfNeeded];
        }
      }
    }

    else if (v8 == 1)
    {
      [(CSAttSiriSpeechRecognitionNode *)self _startLocalSpeechRecognizerIfNeeded];
    }
  }
}

- (void)startSpeechRecognitionResultsWithSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 speechRecognitionMode];
  [(CSAttSiriSpeechRecognitionNode *)self setSpeechRecognitionMode:v5];
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000813E0;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v9 = v4;
  v10 = v5;
  v7 = v4;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)_handleStopDeliverLocalSpeechRecognitionWithRequestId:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  if (self->_speechRecognitionMode != 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(CSAttSiriSpeechRecognitionNode *)self speechRecognitionReceivers];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 didReceiveStopRecognitionRequest:v6 stopReason:a4];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  [(CSAttSiriSpeechRecognitionNode *)self _setLocalSpeechRecognizerState:0];
  speechRecognitionSettings = self->_speechRecognitionSettings;
  self->_speechRecognitionSettings = 0;

  requestId = self->_requestId;
  self->_requestId = 0;
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
          v35 = "[CSAttSiriSpeechRecognitionNode _adjustEndpointStartTimeWithVoiceTriggerEvent:]";
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
        v35 = "[CSAttSiriSpeechRecognitionNode _adjustEndpointStartTimeWithVoiceTriggerEvent:]";
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
  v7[2] = sub_100081E1C;
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
  v7[2] = sub_100081EC0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (void)addRecognitionTaskCompletionReceiver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CSAttSiriSpeechRecognitionNode *)self localSpeechRecognizerQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100081F84;
    v6[3] = &unk_100253C48;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)addSpeechRecognitionReceiver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CSAttSiriSpeechRecognitionNode *)self localSpeechRecognizerQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100082048;
    v6[3] = &unk_100253C48;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)addEndpointFeatureReceiver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CSAttSiriSpeechRecognitionNode *)self localSpeechRecognizerQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10008210C;
    v6[3] = &unk_100253C48;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)addResultCandidateReceiver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CSAttSiriSpeechRecognitionNode *)self localSpeechRecognizerQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000821D0;
    v6[3] = &unk_100253C48;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)stopWithReason:(unint64_t)a3 stopStreamOption:(id)a4
{
  v6 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 description];
    *buf = 136315650;
    v16 = "[CSAttSiriSpeechRecognitionNode stopWithReason:stopStreamOption:]";
    v17 = 2050;
    v18 = a3;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Reason : %{public}lu, option : %{public}@", buf, 0x20u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082354;
  block[3] = &unk_1002533C8;
  v13 = v6;
  v14 = a3;
  block[4] = self;
  v11 = v6;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (CSAttSiriSpeechRecognitionNode)initWithAttSiriController:(id)a3
{
  v4 = a3;
  v5 = [(CSAttSiriSpeechRecognitionNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, v4);
  }

  return v6;
}

- (CSAttSiriSpeechRecognitionNode)initWithLocalSpeechRecognizer:(id)a3 fileLoggingDecisionBuilder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = CSAttSiriSpeechRecognitionNode;
  v9 = [(CSAttSiriSpeechRecognitionNode *)&v28 init];
  v10 = v9;
  if (v9)
  {
    requiredNodes = v9->_requiredNodes;
    v9->_type = 2;
    v9->_requiredNodes = &off_10025ECD8;

    v10->_isReady = 0;
    v12 = [CSUtils getSerialQueueWithQOS:33 name:@"localSpeechRecognizerQueue Queue" fixedPriority:kCSDefaultSerialQueueFixedPriority];
    localSpeechRecognizerQueue = v10->_localSpeechRecognizerQueue;
    v10->_localSpeechRecognizerQueue = v12;

    v10->_activeChannel = 0;
    requestId = v10->_requestId;
    v10->_requestId = 0;

    v10->_eagerResultId = 0;
    v10->_disableEndpointer = 0;
    v10->_endpointStartTimeInSec = 0.0;
    v10->_audioSampleCountToSkip = 0;
    [(CSAttSiriSpeechRecognitionNode *)v10 _setLocalSpeechRecognizerState:0];
    v10->_shouldProcessAudio = 0;
    objc_storeStrong(&v10->_presetLocalSpeechRecognizer, a3);
    v10->_endpointMode = 0;
    v15 = objc_retainBlock(v8);
    fileLoggingDecisionBuilder = v10->_fileLoggingDecisionBuilder;
    v10->_fileLoggingDecisionBuilder = v15;

    v10->_voiceTriggerFireMachTime = 0;
    v17 = +[NSHashTable weakObjectsHashTable];
    speechRecognitionReceivers = v10->_speechRecognitionReceivers;
    v10->_speechRecognitionReceivers = v17;

    v19 = +[NSHashTable weakObjectsHashTable];
    resultCandidateReceivers = v10->_resultCandidateReceivers;
    v10->_resultCandidateReceivers = v19;

    v21 = +[NSHashTable weakObjectsHashTable];
    endpointFeatureReceivers = v10->_endpointFeatureReceivers;
    v10->_endpointFeatureReceivers = v21;

    v23 = +[NSHashTable weakObjectsHashTable];
    recognitionTaskCompletionReceivers = v10->_recognitionTaskCompletionReceivers;
    v10->_recognitionTaskCompletionReceivers = v23;

    v25 = +[NSMutableArray array];
    detectedEndpointTimes = v10->_detectedEndpointTimes;
    v10->_detectedEndpointTimes = v25;
  }

  return v10;
}

@end