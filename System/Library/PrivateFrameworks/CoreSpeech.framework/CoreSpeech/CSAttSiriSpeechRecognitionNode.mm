@interface CSAttSiriSpeechRecognitionNode
- (BOOL)_shouldDisableLocalSpeechRecognizerWithOption:(id)option audioRecordContext:(id)context;
- (BOOL)_shouldTriggerEagerResultForInterval:(double)interval;
- (BOOL)didDetectEndpoint;
- (CSAttSiriController)attSiriController;
- (CSAttSiriEndpointerNode)endpointerNode;
- (CSAttSiriSSRNode)ssrNode;
- (CSAttSiriSpeechRecognitionNode)initWithAttSiriController:(id)controller;
- (CSAttSiriSpeechRecognitionNode)initWithLocalSpeechRecognizer:(id)recognizer fileLoggingDecisionBuilder:(id)builder;
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
- (void)_disableLocalSpeechRecognitionForRequestId:(id)id force:(BOOL)force;
- (void)_handleDidRecognizedFinalSpeechPackage:(id)package requestId:(id)id metadata:(id)metadata;
- (void)_handleDidRecognizedSpeechPackageForEagerRecognitionCandidate:(id)candidate requestId:(id)id rcId:(unint64_t)rcId metadata:(id)metadata;
- (void)_handleStopDeliverLocalSpeechRecognitionWithRequestId:(id)id reason:(unint64_t)reason;
- (void)_invalidateLocalSpeechRecognizer;
- (void)_markTimeToFirstWordMetric;
- (void)_preheatWithLanguage:(id)language preheatSource:(unint64_t)source;
- (void)_preheatWithLanguage:(id)language preheatSource:(unint64_t)source shouldDownloadMissingAsset:(BOOL)asset;
- (void)_processAudioChunk:(id)chunk withReadyTimestamp:(id)timestamp;
- (void)_releaseRecordingTransactionIfNeededWithToken:(id)token;
- (void)_resetLocalSpeechRecognizerParameters;
- (void)_scheduleRecordingTransactionReleaseTimer;
- (void)_setLocalSpeechRecognizerState:(unint64_t)state;
- (void)_setRecordingStartTimeWithStartStreamOption:(id)option audioRecordContext:(id)context voiceTriggerInfo:(id)info;
- (void)_setUpAudioLogging;
- (void)_startDeliverLocalSpeechRecognitionResultsWithRequestId:(id)id;
- (void)_startLocalSpeechRecognizerIfNeeded;
- (void)_stopPreviousRecognitionTaskIfNeededWithNewRequestId:(id)id;
- (void)_stopSpeechRecognitionWithReason:(unint64_t)reason requestId:(id)id;
- (void)addEndpointFeatureReceiver:(id)receiver;
- (void)addRecognitionTaskCompletionReceiver:(id)receiver;
- (void)addResultCandidateReceiver:(id)receiver;
- (void)addSpeechRecognitionReceiver:(id)receiver;
- (void)attSiriAudioSrcNodeDidStartRecording:(id)recording successfully:(BOOL)successfully error:(id)error;
- (void)attSiriAudioSrcNodeDidStop:(id)stop;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk;
- (void)attSiriNode:(id)node didDetectEndpointEventAtTime:(double)time eventType:(int64_t)type withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing;
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
- (void)preheatWithLanguage:(id)language source:(unint64_t)source shouldDownloadMissingAsset:(BOOL)asset;
- (void)prepareToStartSpeechRequestWithStartStreamOption:(id)option audioRecordContext:(id)context voiceTriggerInfo:(id)info;
- (void)registerEndpointerNode:(id)node;
- (void)registerSSRNode:(id)node;
- (void)resumeLocalRecognitionWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier;
- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier;
- (void)setMhId:(id)id;
- (void)start;
- (void)startSpeechRecognitionResultsWithSettings:(id)settings;
- (void)stopSpeechRecognitionWithReason:(unint64_t)reason requestId:(id)id;
- (void)stopWithReason:(unint64_t)reason stopStreamOption:(id)option;
- (void)updateVoiceCommandContextWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)self0 undoEvent:(id)self1;
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
        selfCopy2 = self;
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
    v21 = "[CSAttSiriSpeechRecognitionNode _fetchRecognizerLanguageWithSiriLanguage:UILanguage:taskString:asrLocale:]";
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
    return off_10024FD28[string];
  }
}

- (void)_setLocalSpeechRecognizerState:(unint64_t)state
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    localSpeechRecognizerState = self->_localSpeechRecognizerState;
    v7 = v5;
    v8 = [(CSAttSiriSpeechRecognitionNode *)self _stateToString:localSpeechRecognizerState];
    v9 = [(CSAttSiriSpeechRecognitionNode *)self _stateToString:state];
    v10 = 136315650;
    v11 = "[CSAttSiriSpeechRecognitionNode _setLocalSpeechRecognizerState:]";
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
        v10 = "[CSAttSiriSpeechRecognitionNode _fetchInputOriginWithRecordContext:]";
        v11 = 2114;
        v12 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Received inputOrigin: %{public}@ from Request Dispatcher, use hard-coded map", &v9, 0x16u);
      }

      inputOrigin = [(CSAttSiriSpeechRecognitionNode *)self _getAsrInputoriginFromContext:contextCopy];
    }

    v6 = inputOrigin;
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

- (void)localSpeechRecognizer:(id)recognizer didSelectRecognitionModelWithModelProperties:(id)properties
{
  recognizerCopy = recognizer;
  propertiesCopy = properties;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    modelRoot = [propertiesCopy modelRoot];
    *buf = 136315394;
    v24 = "[CSAttSiriSpeechRecognitionNode localSpeechRecognizer:didSelectRecognitionModelWithModelProperties:]";
    v25 = 2114;
    v26 = modelRoot;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Received ASR datapack root directory: %{public}@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  speechRecognitionReceivers = [(CSAttSiriSpeechRecognitionNode *)self speechRecognitionReceivers];
  v12 = [speechRecognitionReceivers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(speechRecognitionReceivers);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          modelRoot2 = [propertiesCopy modelRoot];
          [v16 didSelectRecognitionModelWithModelRoot:modelRoot2];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [speechRecognitionReceivers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)localSpeechRecognizer:(id)recognizer didProduceEndpointFeaturesWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior processedAudioDurationInMilliseconds:(int64_t)milliseconds acousticEndpointerScore:(double)self0
{
  countsCopy = counts;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007ABA0;
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
  v15[2] = sub_10007AEAC;
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
  v11 = candidateCopy;
  [CSAttSiriSpeechPackageHelper getLastTokenEndTimeFromSpeechPackage:candidateCopy];
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
    resultCandidateReceivers = [(CSAttSiriSpeechRecognitionNode *)self resultCandidateReceivers];
    v16 = [resultCandidateReceivers countByEnumeratingWithState:&v35 objects:v40 count:16];
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
            objc_enumerationMutation(resultCandidateReceivers);
          }

          v20 = *(*(&v35 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v20 didReceiveResultCandidateWithRequestId:idCopy rcId:rcId speechPackage:v11 duration:metadataCopy metadata:self->_localSpeechRecognizerTaskString taskName:v13];
          }
        }

        v17 = [resultCandidateReceivers countByEnumeratingWithState:&v35 objects:v40 count:16];
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
    resultCandidateReceivers = [(CSAttSiriSpeechRecognitionNode *)self resultCandidateReceivers];
    v21 = [resultCandidateReceivers countByEnumeratingWithState:&v31 objects:v39 count:16];
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
            objc_enumerationMutation(resultCandidateReceivers);
          }

          v25 = *(*(&v31 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            inputOrigin = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings inputOrigin];
            [v25 didReceiveResultCandidateWithRequestId:idCopy rcId:rcId inputOrigin:inputOrigin speechPackage:v11 duration:self->_localSpeechRecognizerTaskString taskName:v13];
          }
        }

        v22 = [resultCandidateReceivers countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v22);
    }
  }

  self->_lastEndpointEagerResultTime = mach_continuous_time();
  endpointDelayReporter = self->_endpointDelayReporter;
  [CSAttSiriSpeechPackageHelper getLastTokenSilenceStartFromSpeechPackage:v11];
  [(CSEndpointDelayReporter *)endpointDelayReporter setUserSpeakingEndedTimeInMs:v28 * 1000.0];
}

- (void)_handleDidRecognizedFinalSpeechPackage:(id)package requestId:(id)id metadata:(id)metadata
{
  packageCopy = package;
  idCopy = id;
  metadataCopy = metadata;
  [(CSAttSiriSpeechRecognitionNode *)self _markTimeToFirstWordMetric];
  analyticsController = self->_analyticsController;
  recognition = [packageCopy recognition];
  oneBestTranscript = [recognition oneBestTranscript];
  v14 = [(CSDADataAnalyticsController *)analyticsController shouldStoreAudioLogForTranscription:oneBestTranscript];

  [(CSUncompressedAudioLogging *)self->_audioLogging setShouldWriteRPIData:v14];
  if (self->_localSpeechRecognizerState == 2)
  {
    if ([(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableVoiceCommands])
    {
      v32 = 0uLL;
      v33 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      resultCandidateReceivers = [(CSAttSiriSpeechRecognitionNode *)self resultCandidateReceivers];
      v16 = [resultCandidateReceivers countByEnumeratingWithState:&v30 objects:v35 count:16];
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
              objc_enumerationMutation(resultCandidateReceivers);
            }

            v20 = *(*(&v30 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v20 didReceiveFinalResultWithRequestId:idCopy speechPackage:packageCopy metadata:metadataCopy taskName:self->_localSpeechRecognizerTaskString];
            }
          }

          v17 = [resultCandidateReceivers countByEnumeratingWithState:&v30 objects:v35 count:16];
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
      resultCandidateReceivers = [(CSAttSiriSpeechRecognitionNode *)self resultCandidateReceivers];
      v21 = [resultCandidateReceivers countByEnumeratingWithState:&v26 objects:v34 count:16];
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
              objc_enumerationMutation(resultCandidateReceivers);
            }

            v25 = *(*(&v26 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v25 didReceiveFinalResultWithRequestId:idCopy speechPackage:packageCopy taskName:self->_localSpeechRecognizerTaskString];
            }
          }

          v22 = [resultCandidateReceivers countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v22);
      }
    }
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
  v15[2] = sub_10007BB74;
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
  block[2] = sub_10007BE14;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = recognizerCopy;
  v13 = packageCopy;
  v9 = packageCopy;
  v10 = recognizerCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizeFinalResultCandidatePackage:(id)package
{
  recognizerCopy = recognizer;
  packageCopy = package;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C090;
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
  v15[2] = sub_10007C324;
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

- (void)localSpeechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration
{
  recognizerCopy = recognizer;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C580;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v10 = recognizerCopy;
  durationCopy = duration;
  v8 = recognizerCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)localSpeechRecognizer:(id)recognizer didRecognizePartialPackage:(id)package withMetadata:(id)metadata
{
  recognizerCopy = recognizer;
  packageCopy = package;
  metadataCopy = metadata;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007C7E0;
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

- (void)localSpeechRecognizer:(id)recognizer didRecognizeTokens:(id)tokens withMetadata:(id)metadata
{
  recognizerCopy = recognizer;
  tokensCopy = tokens;
  metadataCopy = metadata;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007CAE8;
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

- (void)localSpeechRecognizer:(id)recognizer didRecognizeTokens:(id)tokens
{
  recognizerCopy = recognizer;
  tokensCopy = tokens;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007CDD0;
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

- (void)_releaseRecordingTransactionIfNeededWithToken:(id)token
{
  tokenCopy = token;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    recordingToken = self->_recordingToken;
    v10 = 136315650;
    v11 = "[CSAttSiriSpeechRecognitionNode _releaseRecordingTransactionIfNeededWithToken:]";
    v12 = 2114;
    v13 = tokenCopy;
    v14 = 2114;
    v15 = recordingToken;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Token : %{public}@, currentToken : %{public}@", &v10, 0x20u);
  }

  if ([tokenCopy isEqual:self->_recordingToken])
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

    _interactiveLocalSpeechRecognizer = [(CSAttSiriSpeechRecognitionNode *)self _interactiveLocalSpeechRecognizer];
    [chunkCopy hostTime];
    v13 = [NSNumber numberWithUnsignedLongLong:CSMachAbsoluteTimeToMachContinuousTime()];
    [_interactiveLocalSpeechRecognizer addAudioPacket:v10 packetRecordedTime:v13 packetReadyUpstreamTime:timestampCopy];

    if (+[CSUtils isMedocFeatureEnabled]&& [(CSAttSiriSpeechRecognitionNode *)self _shouldTriggerEagerResultForInterval:self->_localSpeechRecognizerDeliverAudioDuration])
    {
      _interactiveLocalSpeechRecognizer2 = [(CSAttSiriSpeechRecognitionNode *)self _interactiveLocalSpeechRecognizer];
      [_interactiveLocalSpeechRecognizer2 requestEagerResult];
    }

    [(CSUncompressedAudioLogging *)self->_audioLogging appendAudioData:v10];
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = 136315394;
      v18 = "[CSAttSiriSpeechRecognitionNode _processAudioChunk:withReadyTimestamp:]";
      v19 = 2050;
      numSamples2 = [chunkCopy numSamples];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Added %{public}lu samples to local speech recognizer", &v17, 0x16u);
    }
  }
}

- (BOOL)_shouldTriggerEagerResultForInterval:(double)interval
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

    if (v9 < interval)
    {
      [(NSMutableArray *)self->_detectedEndpointTimes removeObjectsInRange:0, v5];
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = "[CSAttSiriSpeechRecognitionNode _shouldTriggerEagerResultForInterval:]";
        v14 = 2048;
        intervalCopy = interval;
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
    speechRecognitionReceivers = [(CSAttSiriSpeechRecognitionNode *)self speechRecognitionReceivers];
    v14 = [speechRecognitionReceivers countByEnumeratingWithState:&v151 objects:v172 count:16];
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
            objc_enumerationMutation(speechRecognitionReceivers);
          }

          v18 = *(*(&v151 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            requestId = self->_requestId;
            localSpeechRecognizerTaskString = self->_localSpeechRecognizerTaskString;
            sharedUserInfos = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings sharedUserInfos];
            [v18 didReceiveStartRecognitionRequest:requestId taskName:localSpeechRecognizerTaskString sharedUserInfo:sharedUserInfos];
          }
        }

        v15 = [speechRecognitionReceivers countByEnumeratingWithState:&v151 objects:v172 count:16];
      }

      while (v15);
    }

    v22 = objc_loadWeakRetained(&self->_ssrNode);
    sharedUserInfos2 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings sharedUserInfos];
    [v22 cacheSharedUserInfos:sharedUserInfos2];

    v24 = self->_language;
    if (*&v24 != 0.0 && self->_localSpeechRecognizerTaskString)
    {
      isVoiceTriggered = [(CSAudioRecordContext *)self->_recordContext isVoiceTriggered];
      dictationUIInteractionId = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings dictationUIInteractionId];
      shouldStoreAudioOnDevice = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings shouldStoreAudioOnDevice];
      overrideModelPath = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings overrideModelPath];
      v27 = CSShouldCensorSpeech();
      v140 = [(CSAttSiriSpeechRecognitionNode *)self _fetchInputOriginWithRecordContext:self->_recordContext];
      deliverEagerPackage = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings deliverEagerPackage];
      v28 = self->_language;
      uILanguage = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings UILanguage];
      v30 = self->_localSpeechRecognizerTaskString;
      asrLocale = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings asrLocale];
      v138 = [(CSAttSiriSpeechRecognitionNode *)self _fetchRecognizerLanguageWithSiriLanguage:v28 UILanguage:uILanguage taskString:v30 asrLocale:asrLocale];

      [(CSAttSiriSpeechRecognitionNode *)self _setUpAudioLogging];
      if (overrideModelPath)
      {
        v137 = [NSURL fileURLWithPath:overrideModelPath isDirectory:1];
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
      v139 = dictationUIInteractionId;
      v131 = overrideModelPath;
      v133 = v27;
      if (dictationUIInteractionId)
      {
        applicationName = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings applicationName];
      }

      else
      {
        applicationName = @"com.apple.siri.assistant";
      }

      v127 = [CESRSpeechParameters alloc];
      v128 = self->_requestId;
      v129 = self->_localSpeechRecognizerTaskString;
      recognitionOverrides = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings recognitionOverrides];
      detectUtterances = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings detectUtterances];
      secureOfflineOnly = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings secureOfflineOnly];
      continuousListening = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings continuousListening];
      shouldHandleCapitalization = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings shouldHandleCapitalization];
      [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings maximumRecognitionDuration];
      v38 = v37;
      location = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings location];
      jitGrammar = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings jitGrammar];
      disableEndpointer = self->_disableEndpointer;
      enableEmojiRecognition = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableEmojiRecognition];
      enableAutoPunctuation = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableAutoPunctuation];
      enableVoiceCommands = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableVoiceCommands];
      sharedUserInfos3 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings sharedUserInfos];
      prefixText = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings prefixText];
      postfixText = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings postfixText];
      selectedText = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings selectedText];
      powerContext = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings powerContext];
      shouldGenerateVoiceCommandCandidates = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings shouldGenerateVoiceCommandCandidates];
      activeUserInfo = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings activeUserInfo];
      messagesContext = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings messagesContext];
      LOBYTE(v115) = shouldGenerateVoiceCommandCandidates;
      BYTE4(v114) = enableVoiceCommands;
      BYTE3(v114) = enableAutoPunctuation;
      BYTE2(v114) = enableEmojiRecognition;
      BYTE1(v114) = disableEndpointer;
      LOBYTE(v114) = deliverEagerPackage;
      LOBYTE(v113) = 0;
      HIBYTE(v112) = shouldHandleCapitalization;
      BYTE6(v112) = continuousListening;
      BYTE5(v112) = shouldStoreAudioOnDevice;
      BYTE4(v112) = secureOfflineOnly;
      BYTE3(v112) = isVoiceTriggered;
      BYTE2(v112) = v133;
      BYTE1(v112) = detectUtterances;
      LOBYTE(v112) = 0;
      v135 = [v127 initWithLanguage:v138 requestIdentifier:v128 dictationUIInteractionIdentifier:v139 task:v129 loggingContext:0 applicationName:applicationName profile:v38 overrides:endpointStartTimeInSec modelOverrideURL:v33 originalAudioFileURL:0 codec:recognitionOverrides narrowband:v137 detectUtterances:0 censorSpeech:0 farField:v112 secureOfflineOnly:v113 shouldStoreAudioOnDevice:v140 continuousListening:location shouldHandleCapitalization:jitGrammar isSpeechAPIRequest:v114 maximumRecognitionDuration:sharedUserInfos3 endpointStart:prefixText inputOrigin:postfixText location:selectedText jitGrammar:powerContext deliverEagerPackage:v115 disableDeliveringAsrFeatures:0 enableEmojiRecognition:activeUserInfo enableAutoPunctuation:messagesContext enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:? asrId:? activeUserInfo:? messagesContext:?];

      v47 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v48 = self->_localSpeechRecognizerTaskString;
        speechRecognitionSettings = self->_speechRecognitionSettings;
        v50 = v47;
        location2 = [(LBLocalSpeechRecognitionSettings *)speechRecognitionSettings location];
        if (v133)
        {
          v52 = @"YES";
        }

        else
        {
          v52 = @"NO";
        }

        jitGrammar2 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings jitGrammar];
        enableVoiceCommands2 = [(LBLocalSpeechRecognitionSettings *)self->_speechRecognitionSettings enableVoiceCommands];
        *buf = 136316930;
        v157 = "[CSAttSiriSpeechRecognitionNode _startLocalSpeechRecognizerIfNeeded]";
        if (enableVoiceCommands2)
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
        v165 = location2;
        v166 = 2114;
        v167 = v52;
        v168 = 2112;
        v169 = jitGrammar2;
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

      task = [v61 task];
      if ([task isEqualToString:CoreEmbeddedSpeechRecognizerTaskDictation])
      {
        v76 = 1;
      }

      else
      {
        task2 = [v61 task];
        v76 = [task2 isEqualToString:CoreEmbeddedSpeechRecognizerTaskWebSearch];
      }

      v80 = [CSSpeechRecognitionSelfHelper alloc];
      task3 = [v61 task];
      v82 = [(CSSpeechRecognitionSelfHelper *)v80 initWithAsrId:v60 taskName:task3 isSamplingForDictation:v76];
      asrSelfHelper = self->_asrSelfHelper;
      self->_asrSelfHelper = v82;

      if (v76)
      {
        v84 = +[CESRDictationOnDeviceSampling sharedManager];
        self->_onDeviceDictationSampled = [v84 isRequestSelectedForSamplingFromConfigForLanguage:self->_language];
      }

      else if (shouldStoreAudioOnDevice)
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
        uUIDString = [v60 UUIDString];
        v90 = self->_language;
        task4 = [v61 task];
        v92 = [v87 initWithRequestId:v88 asrId:uUIDString languageCode:v90 task:task4];
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

          uUIDString = self->_audioLogging;
          self->_audioLogging = 0;
          goto LABEL_69;
        }

        v93 = [CSUncompressedAudioLogging alloc];
        v94 = self->_requestId;
        uUIDString = [v60 UUIDString];
        v95 = self->_language;
        task4 = [v61 task];
        v92 = [v93 initWithRequestId:v94 asrId:uUIDString dictationInteractionId:v139 languageCode:v95 task:task4 isSamplingForDictation:1];
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
      _interactiveLocalSpeechRecognizer = [(CSAttSiriSpeechRecognitionNode *)self _interactiveLocalSpeechRecognizer];
      v145[0] = _NSConcreteStackBlock;
      v145[1] = 3221225472;
      v145[2] = sub_10007E95C;
      v145[3] = &unk_100250EA0;
      v145[4] = self;
      [_interactiveLocalSpeechRecognizer startSpeechRecognitionWithParameters:v61 didStartHandlerWithInfo:v145];

      fetchAudioChunksFromBuffer = [(CSAudioProcessWaitingBuffer *)self->_audioWaitingBuffer fetchAudioChunksFromBuffer];
      v104 = fetchAudioChunksFromBuffer;
      if (fetchAudioChunksFromBuffer)
      {
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v105 = [fetchAudioChunksFromBuffer countByEnumeratingWithState:&v141 objects:v155 count:16];
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
              audioChunk = [v109 audioChunk];
              bufferedTimestamp = [v109 bufferedTimestamp];
              [(CSAttSiriSpeechRecognitionNode *)self _processAudioChunk:audioChunk withReadyTimestamp:bufferedTimestamp];
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
    isSpeechStudyLoggingEnabled = [v6 isSpeechStudyLoggingEnabled];

    v8 = +[CSFPreferences sharedPreferences];
    mhLogDirectory = [v8 mhLogDirectory];
    if (isSpeechStudyLoggingEnabled)
    {
      [CSUtils loggingFilePathWithDirectory:mhLogDirectory requestId:self->_requestId token:@"asr" postfix:@"wav"];
    }

    else
    {
      [CSUtils loggingFilePathWithDirectory:mhLogDirectory token:@"localASR" postfix:@"wav"];
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

- (void)setMhId:(id)id
{
  idCopy = id;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAttSiriSpeechRecognitionNode setMhId:]";
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
      v10 = "[CSAttSiriSpeechRecognitionNode _shouldDisableLocalSpeechRecognizerWithOption:audioRecordContext:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Disable local SR for dictation", &v9, 0xCu);
    }
  }

  v6 = 1;
LABEL_6:

  return v6;
}

- (void)_stopPreviousRecognitionTaskIfNeededWithNewRequestId:(id)id
{
  idCopy = id;
  requestId = self->_requestId;
  if (requestId && ![(NSString *)requestId isEqualToString:idCopy])
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
      v13 = idCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s cached requestId : %@, newRequestId : %@", &v8, 0x20u);
    }

    [(CSAttSiriSpeechRecognitionNode *)self _handleStopDeliverLocalSpeechRecognitionWithRequestId:self->_requestId reason:3];
  }
}

- (void)prepareToStartSpeechRequestWithStartStreamOption:(id)option audioRecordContext:(id)context voiceTriggerInfo:(id)info
{
  optionCopy = option;
  contextCopy = context;
  infoCopy = info;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007F364;
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
    v16 = "[CSAttSiriSpeechRecognitionNode _preheatWithLanguage:preheatSource:]";
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Preheat local speech recognizer with language : %@", &v15, 0x16u);
  }

  v12 = [[SFEntitledAssetConfig alloc] initWithLanguage:self->_language assetType:3];
  v13 = [(CSAttSiriSpeechRecognitionNode *)self _sourceStringFromPreheatSource:source];
  _interactiveLocalSpeechRecognizer = [(CSAttSiriSpeechRecognitionNode *)self _interactiveLocalSpeechRecognizer];
  [_interactiveLocalSpeechRecognizer preheatSpeechRecognitionWithAssetConfig:v12 preheatSource:v13 modelOverrideURL:0];
}

- (void)_preheatWithLanguage:(id)language preheatSource:(unint64_t)source shouldDownloadMissingAsset:(BOOL)asset
{
  assetCopy = asset;
  languageCopy = language;
  if (assetCopy)
  {
    _interactiveLocalSpeechRecognizer = [(CSAttSiriSpeechRecognitionNode *)self _interactiveLocalSpeechRecognizer];
    [_interactiveLocalSpeechRecognizer startMissingAssetDownload];
  }

  [(CSAttSiriSpeechRecognitionNode *)self _preheatWithLanguage:languageCopy preheatSource:source];
}

- (void)preheatWithLanguage:(id)language source:(unint64_t)source shouldDownloadMissingAsset:(BOOL)asset
{
  languageCopy = language;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007F878;
  v11[3] = &unk_100250678;
  v11[4] = self;
  v12 = languageCopy;
  sourceCopy = source;
  assetCopy = asset;
  v10 = languageCopy;
  dispatch_async(localSpeechRecognizerQueue, v11);
}

- (void)attSiriNode:(id)node didDetectEndpointEventAtTime:(double)time eventType:(int64_t)type withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing
{
  nodeCopy = node;
  metricsCopy = metrics;
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
  block[5] = type;
  *&block[6] = time;
  dispatch_async(localSpeechRecognizerQueue, block);
  WeakRetained = objc_loadWeakRetained(&self->_endpointerNode);
  getUsesAutomaticEndpointing = [WeakRetained getUsesAutomaticEndpointing];

  if (getUsesAutomaticEndpointing)
  {
    self->_endpointMode = 4;
  }
}

- (void)attSiriNode:(id)node didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics usesAutomaticEndpointing:(BOOL)endpointing
{
  metricsCopy = metrics;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FE58;
  block[3] = &unk_100253900;
  block[4] = self;
  v12 = metricsCopy;
  endpointingCopy = endpointing;
  v10 = metricsCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)attSiriAudioSrcNodeDidStop:(id)stop
{
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FF3C;
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
  v8[2] = sub_10008008C;
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
  v6[2] = sub_100080290;
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
  v11[2] = sub_1000803B4;
  v11[3] = &unk_100253C48;
  v12 = infoCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = infoCopy;
  dispatch_async(localSpeechRecognizerQueue, v11);
}

- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080498;
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
    v46 = "[CSAttSiriSpeechRecognitionNode updateVoiceCommandContextWithRequestId:prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:]";
    v47 = 2112;
    v48 = idCopy;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s requestId : %@", buf, 0x16u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000807AC;
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
    v24 = "[CSAttSiriSpeechRecognitionNode resumeLocalRecognitionWithRequestId:prefixText:postfixText:selectedText:]";
    v25 = 2112;
    v26 = idCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s requestId : %@", buf, 0x16u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000809A0;
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
    v9 = "[CSAttSiriSpeechRecognitionNode pauseLocalSpeechRecognitionForRequestId:]";
    v10 = 2112;
    v11 = idCopy;
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

- (void)_disableLocalSpeechRecognitionForRequestId:(id)id force:(BOOL)force
{
  forceCopy = force;
  idCopy = id;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[CSAttSiriSpeechRecognitionNode _disableLocalSpeechRecognitionForRequestId:force:]";
    v12 = 2112;
    v13 = idCopy;
    v14 = 1024;
    v15 = forceCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s requestId : %@, force : %d", &v10, 0x1Cu);
  }

  if (!idCopy || [(NSString *)idCopy isEqualToString:self->_siriSessionUUID]|| forceCopy)
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

- (void)disableLocalSpeechRecognitionForRequestId:(id)id
{
  idCopy = id;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100080D68;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (void)_stopSpeechRecognitionWithReason:(unint64_t)reason requestId:(id)id
{
  idCopy = id;
  v7 = idCopy;
  if (!idCopy || ([idCopy isEqualToString:self->_requestId] & 1) == 0)
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
    [(CSAttSiriSpeechRecognitionNode *)self _handleStopDeliverLocalSpeechRecognitionWithRequestId:self->_requestId reason:reason];
    asrResultDeliveryTransaction = self->_asrResultDeliveryTransaction;
    self->_asrResultDeliveryTransaction = 0;

    if (reason == 1)
    {
      [(CSAttSiriSpeechRecognitionNode *)self _invalidateLocalSpeechRecognizer];
      [(CSUncompressedAudioLogging *)self->_audioLogging endAudioWithCancellation:1 completion:0];
    }
  }
}

- (void)stopSpeechRecognitionWithReason:(unint64_t)reason requestId:(id)id
{
  idCopy = id;
  v7 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[CSAttSiriSpeechRecognitionNode stopSpeechRecognitionWithReason:requestId:]";
    v15 = 2050;
    reasonCopy = reason;
    v17 = 2112;
    v18 = idCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "KeyLog - %s Reason : %{public}lu, requestId : %@", buf, 0x20u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081088;
  block[3] = &unk_1002533C8;
  v11 = idCopy;
  reasonCopy2 = reason;
  block[4] = self;
  v9 = idCopy;
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
      uuid = [(CSAudioProcessWaitingBuffer *)self->_audioWaitingBuffer uuid];
      v10 = [uuid isEqualToString:self->_requestId];

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
            uuid2 = [(CSAudioProcessWaitingBuffer *)audioWaitingBuffer uuid];
            v16 = 136315650;
            v17 = "[CSAttSiriSpeechRecognitionNode _startDeliverLocalSpeechRecognitionResultsWithRequestId:]";
            v18 = 2112;
            v19 = idCopy;
            v20 = 2114;
            v21 = uuid2;
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

- (void)startSpeechRecognitionResultsWithSettings:(id)settings
{
  settingsCopy = settings;
  speechRecognitionMode = [settingsCopy speechRecognitionMode];
  [(CSAttSiriSpeechRecognitionNode *)self setSpeechRecognitionMode:speechRecognitionMode];
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000813E0;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v9 = settingsCopy;
  v10 = speechRecognitionMode;
  v7 = settingsCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (void)_handleStopDeliverLocalSpeechRecognitionWithRequestId:(id)id reason:(unint64_t)reason
{
  idCopy = id;
  if (self->_speechRecognitionMode != 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    speechRecognitionReceivers = [(CSAttSiriSpeechRecognitionNode *)self speechRecognitionReceivers];
    v8 = [speechRecognitionReceivers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(speechRecognitionReceivers);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 didReceiveStopRecognitionRequest:idCopy stopReason:reason];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [speechRecognitionReceivers countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)registerSSRNode:(id)node
{
  nodeCopy = node;
  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100081E1C;
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
  v7[2] = sub_100081EC0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = nodeCopy;
  v6 = nodeCopy;
  dispatch_async(localSpeechRecognizerQueue, v7);
}

- (void)addRecognitionTaskCompletionReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (receiverCopy)
  {
    localSpeechRecognizerQueue = [(CSAttSiriSpeechRecognitionNode *)self localSpeechRecognizerQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100081F84;
    v6[3] = &unk_100253C48;
    v6[4] = self;
    v7 = receiverCopy;
    dispatch_async(localSpeechRecognizerQueue, v6);
  }
}

- (void)addSpeechRecognitionReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (receiverCopy)
  {
    localSpeechRecognizerQueue = [(CSAttSiriSpeechRecognitionNode *)self localSpeechRecognizerQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100082048;
    v6[3] = &unk_100253C48;
    v6[4] = self;
    v7 = receiverCopy;
    dispatch_async(localSpeechRecognizerQueue, v6);
  }
}

- (void)addEndpointFeatureReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (receiverCopy)
  {
    localSpeechRecognizerQueue = [(CSAttSiriSpeechRecognitionNode *)self localSpeechRecognizerQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10008210C;
    v6[3] = &unk_100253C48;
    v6[4] = self;
    v7 = receiverCopy;
    dispatch_async(localSpeechRecognizerQueue, v6);
  }
}

- (void)addResultCandidateReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (receiverCopy)
  {
    localSpeechRecognizerQueue = [(CSAttSiriSpeechRecognitionNode *)self localSpeechRecognizerQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000821D0;
    v6[3] = &unk_100253C48;
    v6[4] = self;
    v7 = receiverCopy;
    dispatch_async(localSpeechRecognizerQueue, v6);
  }
}

- (void)stopWithReason:(unint64_t)reason stopStreamOption:(id)option
{
  optionCopy = option;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [optionCopy description];
    *buf = 136315650;
    v16 = "[CSAttSiriSpeechRecognitionNode stopWithReason:stopStreamOption:]";
    v17 = 2050;
    reasonCopy = reason;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Reason : %{public}lu, option : %{public}@", buf, 0x20u);
  }

  localSpeechRecognizerQueue = self->_localSpeechRecognizerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082354;
  block[3] = &unk_1002533C8;
  v13 = optionCopy;
  reasonCopy2 = reason;
  block[4] = self;
  v11 = optionCopy;
  dispatch_async(localSpeechRecognizerQueue, block);
}

- (CSAttSiriSpeechRecognitionNode)initWithAttSiriController:(id)controller
{
  controllerCopy = controller;
  v5 = [(CSAttSiriSpeechRecognitionNode *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, controllerCopy);
  }

  return v6;
}

- (CSAttSiriSpeechRecognitionNode)initWithLocalSpeechRecognizer:(id)recognizer fileLoggingDecisionBuilder:(id)builder
{
  recognizerCopy = recognizer;
  builderCopy = builder;
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
    objc_storeStrong(&v10->_presetLocalSpeechRecognizer, recognizer);
    v10->_endpointMode = 0;
    v15 = objc_retainBlock(builderCopy);
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