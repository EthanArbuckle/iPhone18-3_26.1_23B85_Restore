@interface CSAttSiriAsrNode
- (BOOL)_shouldDisableLocalSpeechRecognizerWithOption:(id)option audioRecordContext:(id)context;
- (BOOL)didDetectEndpoint;
- (BOOL)shouldStopProcessASROnEndpoint;
- (CSAttSiriAsrNode)init;
- (CSAttSiriAsrNode)initWithAttSiriController:(id)controller;
- (CSAttSiriAsrNode)initWithLocalSpeechRecognizer:(id)recognizer isFileLoggingEnabled:(BOOL)enabled;
- (CSAttSiriController)attSiriController;
- (CSAttSiriEndpointerNode)endpointerNode;
- (CSAttSiriSSRNode)ssrNode;
- (CSAttSiriUresNode)uresNode;
- (double)detectedEndpointTime;
- (double)localSpeechRecognizerDeliverAudioDuration;
- (id)_fetchInputOriginWithRecordContext:(id)context;
- (id)_fetchRecognizerLanguageWithSiriLanguage:(id)language UILanguage:(id)iLanguage taskString:(id)string asrLocale:(id)locale;
- (id)_getAsrInputoriginFromContext:(id)context;
- (id)_interactiveLocalSpeechRecognizer;
- (id)_sourceStringFromPreheatSource:(unint64_t)source;
- (id)_stateToString:(unint64_t)string;
- (unint64_t)fetchCurrentState;
- (void)_adjustEndpointStartTimeWithVoiceTriggerEvent:(id)event;
- (void)_clearAudioProcessWaitingBufferIfNeeded;
- (void)_clearEndpointHint;
- (void)_disableLocalSpeechRecognitionForRequestId:(id)id force:(BOOL)force;
- (void)_enforceEndpointHintWithRequestId:(id)id rcId:(unint64_t)rcId shouldAccept:(BOOL)accept featuresToLog:(id)log;
- (void)_handleDidRecognizedFinalSpeechPackage:(id)package requestId:(id)id metadata:(id)metadata;
- (void)_handleDidRecognizedSpeechPackageForEagerRecognitionCandidate:(id)candidate requestId:(id)id rcId:(unint64_t)rcId metadata:(id)metadata;
- (void)_handleShouldAcceptEagerResultWithRequestId:(id)id rcId:(unint64_t)rcId duration:(double)duration shouldAccept:(BOOL)accept featuresToLog:(id)log;
- (void)_handleStopDeliverLocalSpeechRecognitionWithStopUresProcessing:(BOOL)processing;
- (void)_invalidateLocalSpeechRecognizer;
- (void)_markTimeToFirstWordMetric;
- (void)_preheatWithLanguage:(id)language preheatSource:(unint64_t)source;
- (void)_preheatWithLanguage:(id)language preheatSource:(unint64_t)source shouldDownloadMissingAsset:(BOOL)asset;
- (void)_processAudioChunk:(id)chunk withReadyTimestamp:(id)timestamp;
- (void)_queryShouldAcceptEagerResultForDuration:(double)duration requestId:(id)id rcId:(unint64_t)rcId;
- (void)_releaseRecordingTransactionIfNeededWithToken:(id)token;
- (void)_resetLocalSpeechRecognizerParameters;
- (void)_scheduleRecordingTransactionReleaseTimer;
- (void)_setLocalSpeechRecognizerState:(unint64_t)state;
- (void)_setRecordingStartTimeWithStartStreamOption:(id)option audioRecordContext:(id)context voiceTriggerInfo:(id)info;
- (void)_setupRecognizerStateForMagusAsrNode;
- (void)_startDeliverLocalSpeechRecognitionResultsWithRequestId:(id)id;
- (void)_startLocalSpeechRecognizerIfNeeded;
- (void)attSiriAudioSrcNodeDidStartRecording:(id)recording successfully:(BOOL)successfully error:(id)error;
- (void)attSiriAudioSrcNodeDidStop:(id)stop;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk;
- (void)attSiriNode:(id)node didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing;
- (void)disableLocalSpeechRecognitionForRequestId:(id)id;
- (void)localSpeechRecognizer:(id)recognizer didCompletionRecognitionWithStatistics:(id)statistics error:(id)error;
- (void)localSpeechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration;
- (void)localSpeechRecognizer:(id)recognizer didProduceEndpointFeaturesWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior processedAudioDurationInMilliseconds:(int64_t)milliseconds acousticEndpointerScore:(double)self0;
- (void)localSpeechRecognizer:(id)recognizer didRecognizeFinalResultCandidatePackage:(id)package;
- (void)localSpeechRecognizer:(id)recognizer didRecognizePackage:(id)package;
- (void)localSpeechRecognizer:(id)recognizer didRecognizePackage:(id)package withMetadata:(id)metadata;
- (void)localSpeechRecognizer:(id)recognizer didRecognizePartialPackage:(id)package withMetadata:(id)metadata;
- (void)localSpeechRecognizer:(id)recognizer didRecognizeTokens:(id)tokens;
- (void)localSpeechRecognizer:(id)recognizer didRecognizeTokens:(id)tokens withMetadata:(id)metadata;
- (void)localSpeechRecognizer:(id)recognizer didRecognizeVoiceCommandCandidatePackage:(id)package withMetadata:(id)metadata;
- (void)localSpeechRecognizer:(id)recognizer didSelectRecognitionModelWithModelProperties:(id)properties;
- (void)pauseLocalSpeechRecognitionForRequestId:(id)id;
- (void)preheatLocalSpeechRecognitionWithLanguage:(id)language source:(unint64_t)source;
- (void)preheatWithLanguage:(id)language shouldDownloadMissingAsset:(BOOL)asset;
- (void)prepareToStartSpeechRequestWithStartStreamOption:(id)option audioRecordContext:(id)context voiceTriggerInfo:(id)info;
- (void)registerEndpointerNode:(id)node;
- (void)registerSSRNode:(id)node;
- (void)registerUresNode:(id)node;
- (void)resumeLocalRecognitionWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier;
- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier;
- (void)setMhId:(id)id;
- (void)start;
- (void)startSpeechRecognitionResultsWithSettings:(id)settings;
- (void)stopSpeechRecognitionWithReason:(unint64_t)reason requestId:(id)id;
- (void)stopWithReason:(unint64_t)reason;
- (void)trpCandidateReadyForExecutionForRequestId:(id)id withTrpId:(id)trpId;
- (void)updateTCUState:(id)state;
- (void)updateVoiceCommandContextWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)self0 undoEvent:(id)self1;
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

- (id)_fetchRecognizerLanguageWithSiriLanguage:(id)language UILanguage:(id)iLanguage taskString:(id)string asrLocale:(id)locale
{
  languageCopy = language;
  iLanguageCopy = iLanguage;
  stringCopy = string;
  localeCopy = locale;
  if ([stringCopy isEqualToString:CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging])
  {
    v13 = 0;
  }

  else
  {
    v13 = [stringCopy isEqualToString:CoreEmbeddedSpeechRecognizerTaskSiriDictation] ^ 1;
  }

  if (localeCopy)
  {
    v13 = 1;
  }

  v14 = v13 ^ 1;
  if (localeCopy)
  {
    v14 = 1;
  }

  if (v13)
  {
    v15 = localeCopy;
  }

  else
  {
    v15 = languageCopy;
  }

  if (iLanguageCopy)
  {
    v16 = iLanguageCopy;
  }

  else
  {
    v16 = languageCopy;
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

- (id)_sourceStringFromPreheatSource:(unint64_t)source
{
  if (source == 1)
  {
    v4 = &CoreEmbeddedSpeechRecognizerSourceAssistant;
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (source == 2)
  {
    v4 = &CoreEmbeddedSpeechRecognizerSourceDictation;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)_stateToString:(unint64_t)string
{
  if (string > 4)
  {
    return @"[Unknown]";
  }

  else
  {
    return off_100251008[string];
  }
}

- (void)_setLocalSpeechRecognizerState:(unint64_t)state
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    localSpeechRecognizerState = self->_localSpeechRecognizerState;
    v7 = v5;
    v8 = [(CSAttSiriAsrNode *)self _stateToString:localSpeechRecognizerState];
    v9 = [(CSAttSiriAsrNode *)self _stateToString:state];
    v10 = 136315650;
    v11 = "[CSAttSiriAsrNode _setLocalSpeechRecognizerState:]";
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s set current state from %{public}@ to %{public}@", &v10, 0x20u);
  }

  self->_localSpeechRecognizerState = state;
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

- (id)_getAsrInputoriginFromContext:(id)context
{
  contextCopy = context;
  if ([contextCopy isVoiceTriggered] && !objc_msgSend(contextCopy, "isRequestFromSpokenNotification"))
  {
    v4 = @"VoiceTrigger";
  }

  else
  {
    v4 = @"HomeButton";
    if (([contextCopy isiOSButtonPress] & 1) == 0)
    {
      if ([contextCopy isRTSTriggered])
      {
        v4 = @"RaiseToSpeak";
      }

      else if ([contextCopy isContinuousConversation])
      {
        v4 = @"MagusFollowup";
      }
    }
  }

  return v4;
}

- (id)_fetchInputOriginWithRecordContext:(id)context
{
  contextCopy = context;
  inputOrigin = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings inputOrigin];
  if ([contextCopy isRequestFromTriggerless] && +[CSUtils supportMedocAnnounce](CSUtils, "supportMedocAnnounce"))
  {

    v6 = @"MagusFollowup";
  }

  else
  {
    if (!inputOrigin)
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

      inputOrigin = [(CSAttSiriAsrNode *)self _getAsrInputoriginFromContext:contextCopy];
    }

    v6 = inputOrigin;
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

- (void)localSpeechRecognizer:(id)recognizer didSelectRecognitionModelWithModelProperties:(id)properties
{
  propertiesCopy = properties;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    modelRoot = [propertiesCopy modelRoot];
    v11 = 136315394;
    v12 = "[CSAttSiriAsrNode localSpeechRecognizer:didSelectRecognitionModelWithModelProperties:]";
    v13 = 2114;
    v14 = modelRoot;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Received ASR datapack root directory: %{public}@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_uresNode);
  modelRoot2 = [propertiesCopy modelRoot];
  [WeakRetained setASRModelRootDirectory:modelRoot2];
}

- (void)localSpeechRecognizer:(id)recognizer didProduceEndpointFeaturesWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior processedAudioDurationInMilliseconds:(int64_t)milliseconds acousticEndpointerScore:(double)self0
{
  countsCopy = counts;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000D10E8;
  v20[3] = &unk_100250F90;
  countCopy = count;
  durationCopy = duration;
  v20[4] = self;
  v21 = countsCopy;
  likelihoodCopy = likelihood;
  posteriorCopy = posterior;
  millisecondsCopy = milliseconds;
  scoreCopy = score;
  v19 = countsCopy;
  dispatch_async(localSpeechRecognizerQueue, v20);
}

- (void)localSpeechRecognizer:(id)recognizer didCompletionRecognitionWithStatistics:(id)statistics error:(id)error
{
  recognizerCopy = recognizer;
  statisticsCopy = statistics;
  errorCopy = error;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D1380;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = recognizerCopy;
  v17 = errorCopy;
  v18 = statisticsCopy;
  v12 = statisticsCopy;
  v13 = errorCopy;
  v14 = recognizerCopy;
  dispatch_async(localSpeechRecognizerQueue, v15);
}

- (void)_handleDidRecognizedSpeechPackageForEagerRecognitionCandidate:(id)candidate requestId:(id)id rcId:(unint64_t)rcId metadata:(id)metadata
{
  candidateCopy = candidate;
  idCopy = id;
  metadataCopy = metadata;
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
    [CSAttSiriSpeechPackageHelper getLastTokenEndTimeFromSpeechPackage:candidateCopy];
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
    [WeakRetained processResultCandidate:candidateCopy forRCId:rcId forTask:self->_localSpeechRecognizerTaskString forRequestId:idCopy completion:0];

    if (self->_localSpeechRecognizerState == 2)
    {
      localSRBridgeListener = [(CSAttSiriAsrNode *)self localSRBridgeListener];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000D1DB8;
      v23[3] = &unk_100250F18;
      v23[4] = self;
      v24 = idCopy;
      rcIdCopy = rcId;
      v25 = candidateCopy;
      v28 = v15;
      v26 = metadataCopy;
      [localSRBridgeListener notifyClientsWithBlock:v23];
    }

    v19 = objc_loadWeakRetained(&self->_endpointerNode);
    v20 = [LBLocalSpeechRecognitionSettings getTaskStringFromSpeechRecognitionSettings:self->_speechRecognitionSettings];
    [v19 processSpeechPackage:candidateCopy taskName:v20];

    self->_lastEndpointHintDuration = v15;
    self->_lastEndpointHintRCId = rcId;
    self->_lastEndpointEagerResultTime = mach_continuous_time();
    endpointDelayReporter = self->_endpointDelayReporter;
    [CSAttSiriSpeechPackageHelper getLastTokenSilenceStartFromSpeechPackage:candidateCopy];
    [(CSEndpointDelayReporter *)endpointDelayReporter setUserSpeakingEndedTimeInMs:v22 * 1000.0];
    [(CSAttSiriAsrNode *)self _queryShouldAcceptEagerResultForDuration:idCopy requestId:rcId rcId:v15];
  }
}

- (void)_handleDidRecognizedFinalSpeechPackage:(id)package requestId:(id)id metadata:(id)metadata
{
  packageCopy = package;
  idCopy = id;
  metadataCopy = metadata;
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
    localSRBridgeListener = [(CSAttSiriAsrNode *)self localSRBridgeListener];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000D2038;
    v14[3] = &unk_100253AF8;
    v14[4] = self;
    v15 = idCopy;
    v16 = packageCopy;
    v17 = metadataCopy;
    [localSRBridgeListener notifyClientsWithBlock:v14];
  }
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizePackage:(id)package withMetadata:(id)metadata
{
  recognizerCopy = recognizer;
  packageCopy = package;
  metadataCopy = metadata;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D2190;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = recognizerCopy;
  v17 = packageCopy;
  v18 = metadataCopy;
  v12 = metadataCopy;
  v13 = packageCopy;
  v14 = recognizerCopy;
  dispatch_async(localSpeechRecognizerQueue, v15);
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizePackage:(id)package
{
  recognizerCopy = recognizer;
  packageCopy = package;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2430;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = recognizerCopy;
  v13 = packageCopy;
  v9 = packageCopy;
  v10 = recognizerCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizeVoiceCommandCandidatePackage:(id)package withMetadata:(id)metadata
{
  recognizerCopy = recognizer;
  packageCopy = package;
  metadataCopy = metadata;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D26E0;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = recognizerCopy;
  v17 = packageCopy;
  v18 = metadataCopy;
  v12 = metadataCopy;
  v13 = packageCopy;
  v14 = recognizerCopy;
  dispatch_async(localSpeechRecognizerQueue, v15);
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizeFinalResultCandidatePackage:(id)package
{
  recognizerCopy = recognizer;
  packageCopy = package;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2938;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = recognizerCopy;
  v13 = packageCopy;
  v9 = packageCopy;
  v10 = recognizerCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)_handleShouldAcceptEagerResultWithRequestId:(id)id rcId:(unint64_t)rcId duration:(double)duration shouldAccept:(BOOL)accept featuresToLog:(id)log
{
  idCopy = id;
  logCopy = log;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000D2BA4;
  v17[3] = &unk_100250EF0;
  acceptCopy = accept;
  durationCopy = duration;
  v17[4] = self;
  v18 = logCopy;
  v19 = idCopy;
  rcIdCopy = rcId;
  v15 = idCopy;
  v16 = logCopy;
  dispatch_async(localSpeechRecognizerQueue, v17);
}

- (void)_queryShouldAcceptEagerResultForDuration:(double)duration requestId:(id)id rcId:(unint64_t)rcId
{
  idCopy = id;
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
    getUsesAutomaticEndpointing = [WeakRetained getUsesAutomaticEndpointing];

    didDetectEndpoint = self->_didDetectEndpoint;
    if (!didDetectEndpoint || getUsesAutomaticEndpointing == 0)
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
        if (getUsesAutomaticEndpointing)
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
      v23 = idCopy;
      v24[1] = rcId;
      v24[2] = *&duration;
      [v21 shouldAcceptEagerResultForDuration:v22 resultsCompletionHandler:duration];

      objc_destroyWeak(v24);
      objc_destroyWeak(buf);
    }
  }
}

- (void)localSpeechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration
{
  recognizerCopy = recognizer;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D30B8;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v10 = recognizerCopy;
  durationCopy = duration;
  v8 = recognizerCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizeTokens:(id)tokens withMetadata:(id)metadata
{
  recognizerCopy = recognizer;
  tokensCopy = tokens;
  metadataCopy = metadata;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D3318;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = recognizerCopy;
  v17 = tokensCopy;
  v18 = metadataCopy;
  v12 = metadataCopy;
  v13 = tokensCopy;
  v14 = recognizerCopy;
  dispatch_async(localSpeechRecognizerQueue, v15);
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizePartialPackage:(id)package withMetadata:(id)metadata
{
  recognizerCopy = recognizer;
  packageCopy = package;
  metadataCopy = metadata;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D360C;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = recognizerCopy;
  v17 = packageCopy;
  v18 = metadataCopy;
  v12 = metadataCopy;
  v13 = packageCopy;
  v14 = recognizerCopy;
  dispatch_async(localSpeechRecognizerQueue, v15);
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizeTokens:(id)tokens
{
  recognizerCopy = recognizer;
  tokensCopy = tokens;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D38E0;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = recognizerCopy;
  v13 = tokensCopy;
  v9 = tokensCopy;
  v10 = recognizerCopy;
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
        selfCopy2 = self;
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
        selfCopy2 = self;
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

- (void)_releaseRecordingTransactionIfNeededWithToken:(id)token
{
  tokenCopy = token;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    recordingToken = self->_recordingToken;
    v10 = 136315650;
    v11 = "[CSAttSiriAsrNode _releaseRecordingTransactionIfNeededWithToken:]";
    v12 = 2114;
    v13 = tokenCopy;
    v14 = 2114;
    v15 = recordingToken;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Token : %{public}@, currentToken : %{public}@", &v10, 0x20u);
  }

  if ([tokenCopy isEqual:self->_recordingToken])
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

- (void)_processAudioChunk:(id)chunk withReadyTimestamp:(id)timestamp
{
  chunkCopy = chunk;
  if (self->_localSpeechRecognizerTaskString)
  {
    timestampCopy = timestamp;
    numSamples = [chunkCopy numSamples];
    +[CSConfig inputRecordingSampleRate];
    self->_localSpeechRecognizerDeliverAudioDuration = self->_localSpeechRecognizerDeliverAudioDuration + (numSamples / v9);
    v10 = [chunkCopy dataForChannel:self->_activeChannel];
    -[CSPlainAudioFileWriter addSamples:numSamples:](self->_audioFileWriter, "addSamples:numSamples:", [v10 bytes], objc_msgSend(chunkCopy, "numSamples"));
    if (+[CSConfig inputRecordingIsFloat])
    {
      v11 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:v10];

      v10 = v11;
    }

    _interactiveLocalSpeechRecognizer = [(CSAttSiriAsrNode *)self _interactiveLocalSpeechRecognizer];
    [chunkCopy hostTime];
    v13 = [NSNumber numberWithUnsignedLongLong:CSMachAbsoluteTimeToMachContinuousTime()];
    [_interactiveLocalSpeechRecognizer addAudioPacket:v10 packetRecordedTime:v13 packetReadyUpstreamTime:timestampCopy];

    [(CSUncompressedAudioLogging *)self->_audioLogging appendAudioData:v10];
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = 136315394;
      v17 = "[CSAttSiriAsrNode _processAudioChunk:withReadyTimestamp:]";
      v18 = 2050;
      numSamples2 = [chunkCopy numSamples];
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
    sharedUserInfos = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings sharedUserInfos];
    [v13 cacheSharedUserInfos:sharedUserInfos];

    v15 = self->_language;
    if (*&v15 != 0.0 && self->_localSpeechRecognizerTaskString)
    {
      if (self->_isFileLoggingEnabled)
      {
        v16 = +[CSFPreferences sharedPreferences];
        mhLogDirectory = [v16 mhLogDirectory];
        v18 = [CSUtils loggingFilePathWithDirectory:mhLogDirectory token:@"localASR" postfix:@"wav"];

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

      isVoiceTriggered = [(CSAudioRecordContext *)self->_recordContext isVoiceTriggered];
      dictationUIInteractionId = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings dictationUIInteractionId];
      shouldStoreAudioOnDevice = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings shouldStoreAudioOnDevice];
      overrideModelPath = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings overrideModelPath];
      v126 = CSShouldCensorSpeech();
      v131 = [(CSAttSiriAsrNode *)self _fetchInputOriginWithRecordContext:self->_recordContext];
      deliverEagerPackage = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings deliverEagerPackage];
      v25 = self->_language;
      uILanguage = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings UILanguage];
      localSpeechRecognizerTaskString = self->_localSpeechRecognizerTaskString;
      asrLocale = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings asrLocale];
      v130 = [(CSAttSiriAsrNode *)self _fetchRecognizerLanguageWithSiriLanguage:v25 UILanguage:uILanguage taskString:localSpeechRecognizerTaskString asrLocale:asrLocale];

      if (overrideModelPath)
      {
        v129 = [NSURL fileURLWithPath:overrideModelPath isDirectory:1];
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
      v127 = overrideModelPath;
      if (dictationUIInteractionId)
      {
        applicationName = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings applicationName];
      }

      else
      {
        applicationName = @"com.apple.siri.assistant";
      }

      v120 = [CESRSpeechParameters alloc];
      requestId = self->_requestId;
      v122 = self->_localSpeechRecognizerTaskString;
      recognitionOverrides = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings recognitionOverrides];
      detectUtterances = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings detectUtterances];
      secureOfflineOnly = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings secureOfflineOnly];
      continuousListening = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings continuousListening];
      shouldHandleCapitalization = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings shouldHandleCapitalization];
      [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings maximumRecognitionDuration];
      v34 = v33;
      location = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings location];
      jitGrammar = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings jitGrammar];
      disableEndpointer = self->_disableEndpointer;
      enableEmojiRecognition = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableEmojiRecognition];
      enableAutoPunctuation = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableAutoPunctuation];
      enableVoiceCommands = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableVoiceCommands];
      sharedUserInfos2 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings sharedUserInfos];
      prefixText = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings prefixText];
      postfixText = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings postfixText];
      selectedText = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings selectedText];
      powerContext = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings powerContext];
      LOBYTE(v112) = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings shouldGenerateVoiceCommandCandidates];
      BYTE4(v111) = enableVoiceCommands;
      BYTE3(v111) = enableAutoPunctuation;
      BYTE2(v111) = enableEmojiRecognition;
      BYTE1(v111) = disableEndpointer;
      LOBYTE(v111) = deliverEagerPackage;
      LOBYTE(v110) = 0;
      HIBYTE(v109) = shouldHandleCapitalization;
      BYTE6(v109) = continuousListening;
      BYTE5(v109) = shouldStoreAudioOnDevice;
      BYTE4(v109) = secureOfflineOnly;
      BYTE3(v109) = isVoiceTriggered;
      BYTE2(v109) = v126;
      BYTE1(v109) = detectUtterances;
      LOBYTE(v109) = 0;
      v125 = [v120 initWithLanguage:v130 requestIdentifier:requestId dictationUIInteractionIdentifier:dictationUIInteractionId task:v122 loggingContext:0 applicationName:applicationName profile:v34 overrides:endpointStartTimeInSec modelOverrideURL:v29 originalAudioFileURL:0 codec:recognitionOverrides narrowband:v129 detectUtterances:0 censorSpeech:0 farField:v109 secureOfflineOnly:v110 shouldStoreAudioOnDevice:v131 continuousListening:location shouldHandleCapitalization:jitGrammar isSpeechAPIRequest:v111 maximumRecognitionDuration:sharedUserInfos2 endpointStart:prefixText inputOrigin:postfixText location:selectedText jitGrammar:powerContext deliverEagerPackage:v112 disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:?];

      v44 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v45 = self->_localSpeechRecognizerTaskString;
        speechRecognitionSettings = self->_speechRecognitionSettings;
        v47 = v44;
        location2 = [(LBLocalSpeechRecognitionSettings *)speechRecognitionSettings location];
        if (v126)
        {
          v49 = @"YES";
        }

        else
        {
          v49 = @"NO";
        }

        jitGrammar2 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings jitGrammar];
        enableVoiceCommands2 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableVoiceCommands];
        *buf = 136316930;
        v146 = "[CSAttSiriAsrNode _startLocalSpeechRecognizerIfNeeded]";
        if (enableVoiceCommands2)
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
        v154 = location2;
        v155 = 2114;
        v156 = v49;
        v157 = 2112;
        v158 = jitGrammar2;
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

      task = [v58 task];
      if ([task isEqualToString:CoreEmbeddedSpeechRecognizerTaskDictation])
      {
        v73 = 1;
      }

      else
      {
        task2 = [v58 task];
        v73 = [task2 isEqualToString:CoreEmbeddedSpeechRecognizerTaskWebSearch];
      }

      v77 = [CSSpeechRecognitionSelfHelper alloc];
      task3 = [v58 task];
      v79 = [(CSSpeechRecognitionSelfHelper *)v77 initWithAsrId:v57 taskName:task3 isSamplingForDictation:v73];
      asrSelfHelper = self->_asrSelfHelper;
      self->_asrSelfHelper = v79;

      if (v73)
      {
        v81 = +[CESRDictationOnDeviceSampling sharedManager];
        self->_onDeviceDictationSampled = [v81 isRequestSelectedForSamplingFromConfigForLanguage:self->_language];
      }

      else
      {
        if ((shouldStoreAudioOnDevice & 1) == 0)
        {
          self->_onDeviceAssistantSampled = 0;
LABEL_55:
          if (self->_onDeviceAssistantSampled)
          {
            v83 = [CSUncompressedAudioLogging alloc];
            v84 = self->_requestId;
            uUIDString = [v57 UUIDString];
            v86 = self->_language;
            task4 = [v58 task];
            v88 = [v83 initWithRequestId:v84 asrId:uUIDString languageCode:v86 task:task4];
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

              uUIDString = self->_audioLogging;
              self->_audioLogging = 0;
              goto LABEL_63;
            }

            v89 = [CSUncompressedAudioLogging alloc];
            v90 = self->_requestId;
            uUIDString = [v57 UUIDString];
            v91 = self->_language;
            task4 = [v58 task];
            v88 = [v89 initWithRequestId:v90 asrId:uUIDString dictationInteractionId:dictationUIInteractionId languageCode:v91 task:task4 isSamplingForDictation:1];
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
          v98 = applicationName;

          _interactiveLocalSpeechRecognizer = [(CSAttSiriAsrNode *)self _interactiveLocalSpeechRecognizer];
          v138[0] = _NSConcreteStackBlock;
          v138[1] = 3221225472;
          v138[2] = sub_1000D538C;
          v138[3] = &unk_100250EA0;
          v138[4] = self;
          [_interactiveLocalSpeechRecognizer startSpeechRecognitionWithParameters:v58 didStartHandlerWithInfo:v138];

          fetchAudioChunksFromBuffer = [(CSAudioProcessWaitingBuffer *)self->_audioWaitingBuffer fetchAudioChunksFromBuffer];
          v101 = fetchAudioChunksFromBuffer;
          if (fetchAudioChunksFromBuffer)
          {
            v136 = 0u;
            v137 = 0u;
            v134 = 0u;
            v135 = 0u;
            v102 = [fetchAudioChunksFromBuffer countByEnumeratingWithState:&v134 objects:v144 count:16];
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
                  audioChunk = [v106 audioChunk];
                  bufferedTimestamp = [v106 bufferedTimestamp];
                  [(CSAttSiriAsrNode *)self _processAudioChunk:audioChunk withReadyTimestamp:bufferedTimestamp];
                }

                v103 = [v101 countByEnumeratingWithState:&v134 objects:v144 count:16];
              }

              while (v103);
            }

            [(CSAttSiriAsrNode *)self _clearAudioProcessWaitingBufferIfNeeded];
            v98 = applicationName;
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

- (void)setMhId:(id)id
{
  idCopy = id;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAttSiriAsrNode setMhId:]";
    v9 = 2112;
    v10 = idCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s mhID : %@", &v7, 0x16u);
  }

  mhId = self->_mhId;
  self->_mhId = idCopy;
}

- (BOOL)_shouldDisableLocalSpeechRecognizerWithOption:(id)option audioRecordContext:(id)context
{
  contextCopy = context;
  if (([option disableLocalSpeechRecognizer] & 1) == 0)
  {
    if (![contextCopy isDictation] || (+[CSUtils supportsDictationOnDevice](CSUtils, "supportsDictationOnDevice") & 1) != 0)
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

- (void)prepareToStartSpeechRequestWithStartStreamOption:(id)option audioRecordContext:(id)context voiceTriggerInfo:(id)info
{
  optionCopy = option;
  contextCopy = context;
  infoCopy = info;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D5A6C;
  v15[3] = &unk_100252F38;
  v15[4] = self;
  v16 = optionCopy;
  v17 = contextCopy;
  v18 = infoCopy;
  v12 = infoCopy;
  v13 = contextCopy;
  v14 = optionCopy;
  dispatch_async(localSpeechRecognizerQueue, v15);
}

- (void)_preheatWithLanguage:(id)language preheatSource:(unint64_t)source
{
  languageCopy = language;
  v7 = languageCopy;
  if (languageCopy)
  {
    v8 = languageCopy;
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
  v13 = [(CSAttSiriAsrNode *)self _sourceStringFromPreheatSource:source];
  _interactiveLocalSpeechRecognizer = [(CSAttSiriAsrNode *)self _interactiveLocalSpeechRecognizer];
  [_interactiveLocalSpeechRecognizer preheatSpeechRecognitionWithAssetConfig:v12 preheatSource:v13 modelOverrideURL:0];
}

- (void)_preheatWithLanguage:(id)language preheatSource:(unint64_t)source shouldDownloadMissingAsset:(BOOL)asset
{
  assetCopy = asset;
  languageCopy = language;
  if (assetCopy)
  {
    _interactiveLocalSpeechRecognizer = [(CSAttSiriAsrNode *)self _interactiveLocalSpeechRecognizer];
    [_interactiveLocalSpeechRecognizer startMissingAssetDownload];
  }

  [(CSAttSiriAsrNode *)self _preheatWithLanguage:languageCopy preheatSource:source];
}

- (void)preheatWithLanguage:(id)language shouldDownloadMissingAsset:(BOOL)asset
{
  languageCopy = language;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5EE4;
  block[3] = &unk_100253900;
  block[4] = self;
  v10 = languageCopy;
  assetCopy = asset;
  v8 = languageCopy;
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

- (void)_enforceEndpointHintWithRequestId:(id)id rcId:(unint64_t)rcId shouldAccept:(BOOL)accept featuresToLog:(id)log
{
  idCopy = id;
  logCopy = log;
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
        v15 = [WeakRetained getMitigationDecisionForRCId:rcId forRequestId:idCopy];

        v25 = v15;
        localSRBridgeListener = [(CSAttSiriAsrNode *)self localSRBridgeListener];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000D64BC;
        v17[3] = &unk_100250E50;
        p_buf = &buf;
        rcIdCopy = rcId;
        acceptCopy = accept;
        v18 = idCopy;
        v19 = logCopy;
        [localSRBridgeListener notifyClientsWithBlock:v17];

        _Block_object_dispose(&buf, 8);
      }
    }

    [(CSAttSiriAsrNode *)self _clearEndpointHint];
  }
}

- (void)attSiriNode:(id)node didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing
{
  metricsCopy = metrics;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6680;
  block[3] = &unk_1002533C8;
  timeCopy = time;
  block[4] = self;
  v12 = metricsCopy;
  v10 = metricsCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)attSiriAudioSrcNodeDidStop:(id)stop
{
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D685C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk
{
  chunkCopy = chunk;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D69AC;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = chunkCopy;
  v7 = chunkCopy;
  dispatch_async(localSpeechRecognizerQueue, v8);
}

- (void)attSiriAudioSrcNodeDidStartRecording:(id)recording successfully:(BOOL)successfully error:(id)error
{
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D6C34;
  v6[3] = &unk_100253BF8;
  v6[4] = self;
  successfullyCopy = successfully;
  dispatch_async(localSpeechRecognizerQueue, v6);
}

- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D6D58;
  v11[3] = &unk_100253C48;
  v12 = infoCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = infoCopy;
  dispatch_async(localSpeechRecognizerQueue, v11);
}

- (void)updateTCUState:(id)state
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriAsrNode updateTCUState:]";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Unimplemented method called", &v4, 0xCu);
  }
}

- (void)trpCandidateReadyForExecutionForRequestId:(id)id withTrpId:(id)trpId
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[CSAttSiriAsrNode trpCandidateReadyForExecutionForRequestId:withTrpId:]";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unimplemented method called", &v5, 0xCu);
  }
}

- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6F94;
  block[3] = &unk_100253680;
  v12 = infoCopy;
  v13 = identifierCopy;
  selfCopy = self;
  v9 = identifierCopy;
  v10 = infoCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)updateVoiceCommandContextWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)self0 undoEvent:(id)self1
{
  idCopy = id;
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  v25 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v46 = "[CSAttSiriAsrNode updateVoiceCommandContextWithRequestId:prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:]";
    v47 = 2112;
    v48 = idCopy;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s requestId : %@", buf, 0x16u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D72A8;
  block[3] = &unk_100250E28;
  block[4] = self;
  v37 = textCopy;
  v38 = postfixTextCopy;
  v39 = selectedTextCopy;
  v40 = activeCopy;
  v41 = visibleTextCopy;
  v42 = suppressionCopy;
  v43 = commandSuppressionCopy;
  v44 = eventCopy;
  v27 = eventCopy;
  v28 = commandSuppressionCopy;
  v29 = suppressionCopy;
  v30 = visibleTextCopy;
  v31 = activeCopy;
  v32 = selectedTextCopy;
  v33 = postfixTextCopy;
  v34 = textCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)resumeLocalRecognitionWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  idCopy = id;
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  v14 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[CSAttSiriAsrNode resumeLocalRecognitionWithRequestId:prefixText:postfixText:selectedText:]";
    v25 = 2112;
    v26 = idCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s requestId : %@", buf, 0x16u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000D749C;
  v19[3] = &unk_100252F38;
  v19[4] = self;
  v20 = textCopy;
  v21 = postfixTextCopy;
  v22 = selectedTextCopy;
  v16 = selectedTextCopy;
  v17 = postfixTextCopy;
  v18 = textCopy;
  dispatch_async(localSpeechRecognizerQueue, v19);
}

- (void)pauseLocalSpeechRecognitionForRequestId:(id)id
{
  idCopy = id;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSAttSiriAsrNode pauseLocalSpeechRecognitionForRequestId:]";
    v10 = 2112;
    v11 = idCopy;
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

- (void)_disableLocalSpeechRecognitionForRequestId:(id)id force:(BOOL)force
{
  forceCopy = force;
  idCopy = id;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[CSAttSiriAsrNode _disableLocalSpeechRecognitionForRequestId:force:]";
    v12 = 2112;
    v13 = idCopy;
    v14 = 1024;
    v15 = forceCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s requestId : %@, force : %d", &v10, 0x1Cu);
  }

  if (!idCopy || [(NSString *)idCopy isEqualToString:self->_siriSessionUUID]|| forceCopy)
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

- (void)disableLocalSpeechRecognitionForRequestId:(id)id
{
  idCopy = id;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D7864;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (void)stopSpeechRecognitionWithReason:(unint64_t)reason requestId:(id)id
{
  idCopy = id;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    requestId = self->_requestId;
    *buf = 136315906;
    v16 = "[CSAttSiriAsrNode stopSpeechRecognitionWithReason:requestId:]";
    v17 = 2050;
    reasonCopy = reason;
    v19 = 2112;
    v20 = idCopy;
    v21 = 2112;
    v22 = requestId;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Reason : %{public}lu, requestId: %@, cached requestId : %@", buf, 0x2Au);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D79C8;
  block[3] = &unk_1002533C8;
  v12 = idCopy;
  selfCopy = self;
  reasonCopy2 = reason;
  v10 = idCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)_startDeliverLocalSpeechRecognitionResultsWithRequestId:(id)id
{
  idCopy = id;
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
      uuid = [(CSAudioProcessWaitingBuffer *)self->_audioWaitingBuffer uuid];
      v10 = [uuid isEqualToString:self->_requestId];

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
            uuid2 = [(CSAudioProcessWaitingBuffer *)audioWaitingBuffer uuid];
            v16 = 136315650;
            v17 = "[CSAttSiriAsrNode _startDeliverLocalSpeechRecognitionResultsWithRequestId:]";
            v18 = 2112;
            v19 = idCopy;
            v20 = 2114;
            v21 = uuid2;
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

- (void)startSpeechRecognitionResultsWithSettings:(id)settings
{
  settingsCopy = settings;
  speechRecognitionMode = [settingsCopy speechRecognitionMode];
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7E3C;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v9 = settingsCopy;
  v10 = speechRecognitionMode;
  v7 = settingsCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)preheatLocalSpeechRecognitionWithLanguage:(id)language source:(unint64_t)source
{
  languageCopy = language;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D823C;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v10 = languageCopy;
  sourceCopy = source;
  v8 = languageCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)_handleStopDeliverLocalSpeechRecognitionWithStopUresProcessing:(BOOL)processing
{
  processingCopy = processing;
  [(CSAttSiriAsrNode *)self _setLocalSpeechRecognizerState:0];
  speechRecognitionSettings = self->_speechRecognitionSettings;
  self->_speechRecognitionSettings = 0;

  if ([(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings speechRecognitionMode]!= 1)
  {
    if (processingCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_uresNode);
      [WeakRetained stopUresProcessingForRequest:self->_requestId];
    }

    requestId = self->_requestId;
    self->_requestId = 0;
  }
}

- (void)_setRecordingStartTimeWithStartStreamOption:(id)option audioRecordContext:(id)context voiceTriggerInfo:(id)info
{
  optionCopy = option;
  infoCopy = info;
  isVoiceTriggered = [context isVoiceTriggered];
  if (infoCopy && isVoiceTriggered && (v10 = kVTEItriggerEndMachTime, [infoCopy objectForKeyedSubscript:kVTEItriggerEndMachTime], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [infoCopy objectForKeyedSubscript:v10];
    self->_recordingStartTime = +[CSFTimeUtils absoluteHostTimeToContinuousHostTime:](CSFTimeUtils, "absoluteHostTimeToContinuousHostTime:", [v12 unsignedLongLongValue]);
  }

  else
  {
    if ([optionCopy startRecordingHostTime])
    {
      v13 = +[CSFTimeUtils absoluteHostTimeToContinuousHostTime:](CSFTimeUtils, "absoluteHostTimeToContinuousHostTime:", [optionCopy startRecordingHostTime]);
    }

    else
    {
      v13 = mach_continuous_time();
    }

    self->_recordingStartTime = v13;
  }
}

- (void)_adjustEndpointStartTimeWithVoiceTriggerEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    v6 = kVTEIclientStartSampleCount;
    v7 = [eventCopy objectForKeyedSubscript:kVTEIclientStartSampleCount];
    if (v7)
    {
      v8 = v7;
      v9 = kVTEItriggerEndSampleCount;
      v10 = [v5 objectForKeyedSubscript:kVTEItriggerEndSampleCount];

      if (v10)
      {
        v11 = [v5 objectForKeyedSubscript:v9];
        unsignedIntegerValue = [v11 unsignedIntegerValue];
        v13 = [v5 objectForKeyedSubscript:v6];
        v14 = unsignedIntegerValue - [v13 unsignedIntegerValue];

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

- (void)registerSSRNode:(id)node
{
  nodeCopy = node;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D87F8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (void)registerUresNode:(id)node
{
  nodeCopy = node;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D889C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (void)registerEndpointerNode:(id)node
{
  nodeCopy = node;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D8940;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (void)stopWithReason:(unint64_t)reason
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSAttSiriAsrNode stopWithReason:]";
    v10 = 2050;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Reason : %{public}lu", buf, 0x16u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D8A6C;
  v7[3] = &unk_100253C98;
  v7[4] = self;
  v7[5] = reason;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (CSAttSiriAsrNode)initWithAttSiriController:(id)controller
{
  controllerCopy = controller;
  v5 = [(CSAttSiriAsrNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, controllerCopy);
  }

  return v6;
}

- (CSAttSiriAsrNode)initWithLocalSpeechRecognizer:(id)recognizer isFileLoggingEnabled:(BOOL)enabled
{
  recognizerCopy = recognizer;
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
    objc_storeStrong(&v9->_presetLocalSpeechRecognizer, recognizer);
    v9->_endpointMode = 0;
    v9->_isFileLoggingEnabled = enabled;
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