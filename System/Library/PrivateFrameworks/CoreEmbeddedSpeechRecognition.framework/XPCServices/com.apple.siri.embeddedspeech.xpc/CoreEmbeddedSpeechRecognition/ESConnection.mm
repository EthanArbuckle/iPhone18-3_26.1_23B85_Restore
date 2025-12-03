@interface ESConnection
+ (id)_bestGuessTaskStringsFromPreheatSource:(id)source;
+ (id)_languagesToCompileForAssetType:(unint64_t)type assetManager:(id)manager;
+ (id)_speechRecognizerWithAssetConfig:(id)config geoLMRegionId:(id)id enableITN:(BOOL)n overrides:(id)overrides modelOverrideURL:(id)l preloadModels:(BOOL)models requestSource:(id)source enableParallelLoading:(BOOL)self0 isHighPriority:(BOOL)self1 geoLMLoadedOut:(id *)self2 error:(id *)self3;
+ (unint64_t)_cooldownTimerTimeoutSeconds;
+ (void)_addPendingAnalyticsEvent:(id)event;
+ (void)_addPendingProfilerANEModelInitializationEvent:(id)event;
+ (void)_addPendingProfilerPreheatEvent:(id)event;
+ (void)_cachedRecognizerCleanUp;
+ (void)_cancelCooldownTimer;
+ (void)_clearPendingAnalyticsEvents;
+ (void)_clearPendingProfilerEvents;
+ (void)_cooldownTimerFired;
+ (void)_discardCachedRecognizer;
+ (void)_replaceCachedRecognizerIfNeeded;
+ (void)_scheduleCooldownTimer;
+ (void)_sendPendingAnalyticsEvents;
+ (void)captureESStartTimeInTicks;
+ (void)didFinishModelInitializing:(id)initializing;
+ (void)didStartModelInitializing:(id)initializing;
+ (void)initialize;
+ (void)prepareToExit;
- (BOOL)_invalidated;
- (BOOL)shouldWriteDictationRecord:(id)record;
- (BOOL)siriDataSharingOptedIn;
- (ESConnection)initWithXPCConnection:(id)connection;
- (id)_audioDataPostRecognitionStart:(id)start;
- (id)_fidesEvalQueue;
- (id)_modelRootWithAssetConfig:(id)config modelOverridePath:(id)path overrides:(id)overrides error:(id *)error;
- (id)_packetReadyUpstreamTimestampsFromAudioTime:(float)time;
- (id)_recordedTimestampFromAudioTime:(float)time;
- (id)_redecodeQueue;
- (id)_sLowPrioritySerialQueue;
- (id)dummyResultPackage:(id)package;
- (id)geoLMRegionIdWithLanguage:(id)language location:(id)location;
- (id)personalizedLMWithTask:(id)task applicationName:(id)name recognizer:(id)recognizer weightOut:(float *)out ageOut:(double *)ageOut;
- (id)statusForError:(id)error;
- (void)_processAudioPacket:(id)packet;
- (void)_processBufferedAudioPackets;
- (void)_scheduleCacheResetTimer:(id)timer;
- (void)_scheduleCompilationTimerForAssetType:(unint64_t)type completion:(id)completion;
- (void)_writeDESRecord:(id *)record oneRecordPerDay:(BOOL)day;
- (void)addAudioPacket:(id)packet packetRecordedTime:(id)time packetReadyUpstreamTime:(id)upstreamTime;
- (void)adjustAppleTVLogLevelForSecureOfflineOnly:(BOOL)only;
- (void)compileAllAssetsWithType:(unint64_t)type completion:(id)completion;
- (void)compilePrimaryAssistantAssetWithCompletion:(id)completion;
- (void)createSpeechProfileWithLanguage:(id)language modelOverridePath:(id)path JSONData:(id)data completion:(id)completion;
- (void)dealloc;
- (void)deleteAllDESRecordsForDictationPersonalizationWithCompletion:(id)completion;
- (void)fetchModelPropertiesForAssetConfig:(id)config completion:(id)completion;
- (void)finishAudio;
- (void)forceCooldownIfIdleWithCompletion:(id)completion;
- (void)invalidatePersonalizedLM;
- (void)invalidateUaapLm;
- (void)pauseRecognition;
- (void)preheatSpeechRecognitionWithAssetConfig:(id)config preheatSource:(id)source modelOverrideURL:(id)l;
- (void)preheatSpeechRecognitionWithLanguage:(id)language modelOverrideURL:(id)l;
- (void)processPartialResultMetricsWithTokens:(id)tokens preITNTokens:(id)nTokens timestamp:(double)timestamp;
- (void)purgeInstalledAssetsExceptLanguages:(id)languages assetType:(unint64_t)type completion:(id)completion;
- (void)purgeInstalledAssetsExceptLanguages:(id)languages completion:(id)completion;
- (void)readProfileAndUserDataWithLanguage:(id)language allowOverride:(BOOL)override completion:(id)completion;
- (void)redecodeWithAudioDatas:(id)datas language:(id)language task:(id)task samplingRate:(unint64_t)rate completion:(id)completion;
- (void)removePersonalizedLMForFidesOnly:(BOOL)only completion:(id)completion;
- (void)requestEagerResult;
- (void)resetCacheWithCompletion:(id)completion;
- (void)resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)runCorrectedTextEvaluationWithAudioDatas:(id)datas recordDatas:(id)recordDatas language:(id)language samplingRate:(unint64_t)rate caseSensitive:(BOOL)sensitive skipLME:(BOOL)e wordSenseAccessListSet:(id)set completion:(id)self0;
- (void)runEvaluationWithDESRecordDatas:(id)datas language:(id)language recipe:(id)recipe attachments:(id)attachments fidesPersonalizedLMPath:(id)path fidesPersonalizedLMTrainingAsset:(id)asset scrubResult:(BOOL)result completion:(id)self0;
- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier;
- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error;
- (void)speechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration;
- (void)speechRecognizer:(id)recognizer didProduceEndpointFeaturesWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior processedAudioDurationInMilliseconds:(int64_t)milliseconds acousticEndpointerScore:(double)self0;
- (void)speechRecognizer:(id)recognizer didProduceLoggablePackage:(id)package;
- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultCandidatePackage:(id)package;
- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultPackage:(id)package;
- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result;
- (void)speechRecognizer:(id)recognizer didRecognizePartialResultPackage:(id)package;
- (void)speechRecognizer:(id)recognizer didRecognizeRawEagerRecognitionCandidate:(id)candidate;
- (void)speechRecognizer:(id)recognizer didRecognizeVoiceCommandCandidatePackage:(id)package;
- (void)speechRecognizer:(id)recognizer didReportStatus:(unint64_t)status statusContext:(id)context;
- (void)startRequestActivityWithCompletion:(id)completion;
- (void)startSpeechRecognitionWithParameters:(id)parameters didStartHandler:(id)handler;
- (void)startSpeechRecognitionWithParameters:(id)parameters didStartHandlerWithInfo:(id)info;
- (void)stopAudioDecoding;
- (void)updateSpeechProfileWithLanguage:(id)language modelOverridePath:(id)path existingProfile:(id)profile existingAssetPath:(id)assetPath completion:(id)completion;
- (void)writeUaapOovsForLanguage:(id)language bundleId:(id)id customProns:(id)prons newOovs:(id)oovs completion:(id)completion;
@end

@implementation ESConnection

- (void)speechRecognizer:(id)recognizer didRecognizeRawEagerRecognitionCandidate:(id)candidate
{
  recognizerCopy = recognizer;
  candidateCopy = candidate;
  if (AFDeviceSupportsSiriUOD())
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000168CC;
    v14[3] = &unk_100055660;
    v8 = v15;
    v15[0] = candidateCopy;
    v15[1] = self;
    v9 = candidateCopy;
    [recognizerCopy getFormatterWithBlock:v14];
  }

  else
  {
    v10 = qword_100061620;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000169A8;
    v12[3] = &unk_1000554A8;
    v8 = v13;
    v13[0] = candidateCopy;
    v13[1] = self;
    v11 = candidateCopy;
    dispatch_async(v10, v12);
  }
}

- (void)speechRecognizer:(id)recognizer didReportStatus:(unint64_t)status statusContext:(id)context
{
  v6 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v5 = +[ESProfiler sharedProfiler];
  [v5 logFrameProcessingReadyWithTimeInTicks:v6];
}

- (void)speechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration
{
  v6 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v7 = qword_100061620;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016D5C;
  block[3] = &unk_100055548;
  durationCopy = duration;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error
{
  recognizerCopy = recognizer;
  errorCopy = error;
  v8 = qword_100061620;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016F34;
  block[3] = &unk_1000555B0;
  block[4] = self;
  v12 = errorCopy;
  v13 = recognizerCopy;
  v9 = recognizerCopy;
  v10 = errorCopy;
  dispatch_async(v8, block);
}

- (id)statusForError:(id)error
{
  v3 = @"RECOGNITION_SUCCESS";
  if (error)
  {
    errorCopy = error;
    v5 = [NSNumber numberWithUnsignedInt:0];
    v13[0] = v5;
    v14[0] = @"RECOGNITION_FAILED";
    v6 = [NSNumber numberWithUnsignedInt:1];
    v13[1] = v6;
    v14[1] = @"RECOGNITION_SUCCESS";
    v7 = [NSNumber numberWithUnsignedInt:2];
    v13[2] = v7;
    v14[2] = @"RECOGNITION_CANCELLED";
    v8 = [NSNumber numberWithUnsignedInt:3];
    v13[3] = v8;
    v14[3] = @"RECOGNITION_REJECTED";
    v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

    code = [errorCopy code];
    v11 = [NSNumber numberWithInteger:code];
    v3 = [v9 objectForKey:v11];
  }

  return v3;
}

- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultPackage:(id)package
{
  recognizerCopy = recognizer;
  packageCopy = package;
  v8 = qword_100061620;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018210;
  block[3] = &unk_1000555B0;
  v12 = packageCopy;
  selfCopy = self;
  v14 = recognizerCopy;
  v9 = recognizerCopy;
  v10 = packageCopy;
  dispatch_async(v8, block);
}

- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultCandidatePackage:(id)package
{
  packageCopy = package;
  v6 = qword_100061620;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100018C2C;
  v8[3] = &unk_1000554A8;
  v8[4] = self;
  v9 = packageCopy;
  v7 = packageCopy;
  dispatch_async(v6, v8);
}

- (id)dummyResultPackage:(id)package
{
  packageCopy = package;
  v5 = objc_alloc_init(AFSpeechToken);
  [v5 setText:@"DUMMYTOKEN"];
  [v5 setStartTime:0.0];
  [v5 setEndTime:0.0];
  [v5 setSilenceStartTime:0.0];
  [v5 setRemoveSpaceAfter:0];
  [v5 setRemoveSpaceBefore:0];
  [v5 setPhoneSequence:&stru_100055AC8];
  [v5 setIpaPhoneSequence:&stru_100055AC8];
  v6 = objc_alloc_init(AFSpeechInterpretation);
  v26 = v5;
  v7 = [NSArray arrayWithObjects:&v26 count:1];
  [v6 setTokens:v7];

  v8 = [AFSpeechPhrase alloc];
  v25 = v6;
  v9 = [NSArray arrayWithObjects:&v25 count:1];
  v10 = [v8 initWithInterpretations:v9 isLowConfidence:0];

  v11 = [[AFSpeechUtterance alloc] initWithInterpretationIndices:&off_1000586B0 confidenceScore:0];
  [v11 setSource:2];
  v12 = [AFSpeechRecognition alloc];
  v24 = v10;
  v13 = [NSArray arrayWithObjects:&v24 count:1];
  v23 = v11;
  v14 = [NSArray arrayWithObjects:&v23 count:1];
  v15 = [v12 initWithPhrases:v13 utterances:v14 processedAudioDuration:self->_processedAudioDuration];

  v16 = [AFSpeechPackage alloc];
  isFinal = [packageCopy isFinal];
  [packageCopy utteranceStart];
  v19 = v18;
  LOBYTE(v14) = [packageCopy recognitionPaused];

  LOBYTE(v22) = v14;
  v20 = [v16 initWithRecognition:v15 unfilteredRecognition:v15 rawRecognition:v15 audioAnalytics:0 isFinal:isFinal utteranceStart:0 latticeMitigatorResult:v19 recognitionPaused:v22];

  return v20;
}

- (void)speechRecognizer:(id)recognizer didRecognizeVoiceCommandCandidatePackage:(id)package
{
  packageCopy = package;
  v6 = qword_100061620;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000190DC;
  v8[3] = &unk_1000554A8;
  v8[4] = self;
  v9 = packageCopy;
  v7 = packageCopy;
  dispatch_async(v6, v8);
}

- (void)speechRecognizer:(id)recognizer didRecognizePartialResultPackage:(id)package
{
  packageCopy = package;
  v6 = +[NSProcessInfo processInfo];
  [v6 systemUptime];
  v8 = v7;

  v9 = qword_100061620;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000193B0;
  block[3] = &unk_100055548;
  v12 = packageCopy;
  selfCopy = self;
  v14 = v8;
  v10 = packageCopy;
  dispatch_async(v9, block);
}

- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result
{
  recognizerCopy = recognizer;
  resultCopy = result;
  v8 = +[NSProcessInfo processInfo];
  [v8 systemUptime];
  v10 = v9;

  v11 = qword_100061620;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001962C;
  v14[3] = &unk_100055520;
  v15 = resultCopy;
  v16 = recognizerCopy;
  selfCopy = self;
  v18 = v10;
  v12 = recognizerCopy;
  v13 = resultCopy;
  dispatch_async(v11, v14);
}

- (void)processPartialResultMetricsWithTokens:(id)tokens preITNTokens:(id)nTokens timestamp:(double)timestamp
{
  tokensCopy = tokens;
  v9 = qword_100061620;
  nTokensCopy = nTokens;
  dispatch_assert_queue_V2(v9);
  v11 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 136315394;
    v33 = "[ESConnection processPartialResultMetricsWithTokens:preITNTokens:timestamp:]";
    v34 = 2048;
    v35 = COERCE_DOUBLE([tokensCopy count]);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s %lu results", buf, 0x16u);
  }

  if (self->_firstAudioPacketTimeUntilFirstPartial > 0.0)
  {
    v13 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      firstAudioPacketRecordedTimeInTicks = self->_firstAudioPacketRecordedTimeInTicks;
      v15 = v13;
      [CESRUtilities hostTimeToSeconds:[(NSNumber *)firstAudioPacketRecordedTimeInTicks unsignedLongLongValue]];
      *buf = 136315394;
      v33 = "[ESConnection processPartialResultMetricsWithTokens:preITNTokens:timestamp:]";
      v34 = 2048;
      v35 = timestamp - v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s EmbeddedSpeechMetric: first audio packet recorded to first partial result = %lf secs", buf, 0x16u);

      v13 = AFSiriLogContextSpeech;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = timestamp - self->_firstAudioPacketTimeUntilFirstPartial;
      *buf = 136315394;
      v33 = "[ESConnection processPartialResultMetricsWithTokens:preITNTokens:timestamp:]";
      v34 = 2048;
      v35 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s EmbeddedSpeechMetric: first audio packet received to first partial result = %lf secs", buf, 0x16u);
    }

    self->_firstAudioPacketTimeUntilFirstPartial = 0.0;
  }

  partialResultsTimeList = self->_partialResultsTimeList;
  v19 = [NSNumber numberWithDouble:timestamp];
  [(NSMutableArray *)partialResultsTimeList addObject:v19];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100019AFC;
  v31[3] = &unk_1000554F8;
  v31[4] = self;
  [nTokensCopy enumerateObjectsUsingBlock:v31];

  v20 = [tokensCopy count];
  v21 = v20;
  if (v20 > self->_lastWordCount)
  {
    self->_lastWordCount = v20;
  }

  +[NSMutableString string];
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100019C48;
  v30 = v29 = &unk_1000554F8;
  v22 = v30;
  [tokensCopy enumerateObjectsUsingBlock:&v26];
  v23 = [ESProfiler sharedProfiler:v26];
  v24 = [NSNumber numberWithInteger:v21];
  v25 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  [v23 logPartialResultGenerated:v22 ofSize:v24 timeInTicks:v25];

  ++self->_partialResultCount;
}

- (void)speechRecognizer:(id)recognizer didProduceLoggablePackage:(id)package
{
  packageCopy = package;
  v6 = qword_100061620;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100019D4C;
  v8[3] = &unk_1000554A8;
  v8[4] = self;
  v9 = packageCopy;
  v7 = packageCopy;
  dispatch_async(v6, v8);
}

- (void)speechRecognizer:(id)recognizer didProduceEndpointFeaturesWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior processedAudioDurationInMilliseconds:(int64_t)milliseconds acousticEndpointerScore:(double)self0
{
  countsCopy = counts;
  v18 = countsCopy;
  if (!self->_disableDeliveringAsrFeatures)
  {
    v19 = qword_100061620;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001A8CC;
    v20[3] = &unk_1000554D0;
    countCopy = count;
    durationCopy = duration;
    likelihoodCopy = likelihood;
    posteriorCopy = posterior;
    scoreCopy = score;
    v21 = countsCopy;
    selfCopy = self;
    millisecondsCopy = milliseconds;
    dispatch_async(v19, v20);
  }
}

- (void)_writeDESRecord:(id *)record oneRecordPerDay:(BOOL)day
{
  if (*record)
  {
    if ([*record hasData] && (objc_msgSend(*record, "hasRecognizedAnything") & 1) != 0)
    {
      v6 = *record;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10001ABC0;
      v16[3] = &unk_100055480;
      dayCopy = day;
      v17 = v6;
      v7 = v6;
      v8 = objc_retainBlock(v16);
      (v8[2])(v8, v9, v10, v11);
      v12 = *record;
      *record = 0;
    }

    else
    {
      v13 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v20 = "[ESConnection _writeDESRecord:oneRecordPerDay:]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Not saving DES Record with no data or recognition", buf, 0xCu);
      }

      v14 = *record;
      *record = 0;
    }
  }

  else
  {
    v15 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v20 = "[ESConnection _writeDESRecord:oneRecordPerDay:]";
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s No DES record, nothing to write", buf, 0xCu);
    }
  }
}

- (void)forceCooldownIfIdleWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(qword_100061620);
  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ESConnection forceCooldownIfIdleWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  v5 = qword_100061638;
  if (qword_100061638)
  {
    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[ESConnection forceCooldownIfIdleWithCompletion:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Not cooling down now because recognition is active", &v7, 0xCu);
    }
  }

  else
  {
    +[ESConnection _cancelCooldownTimer];
    +[ESConnection _cachedRecognizerCleanUp];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v5 == 0);
  }
}

- (void)resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  v10 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[ESConnection resumeRecognitionWithPrefixText:postfixText:selectedText:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s ", &v13, 0xCu);
  }

  if (qword_100061668 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = +[ESProfiler sharedProfiler];
    v12 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
    [v11 logResumeRecognitionWithTimeInTicks:v12];

    [qword_100061668 resumeRecognitionWithLeftContext:textCopy rightContext:postfixTextCopy selectedText:selectedTextCopy];
  }
}

- (void)pauseRecognition
{
  v2 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ESConnection pauseRecognition]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  if (qword_100061668)
  {
    if (objc_opt_respondsToSelector())
    {
      [qword_100061668 pauseRecognition];
      v3 = +[ESProfiler sharedProfiler];
      v4 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
      [v3 logPauseRecognitionWithTimeInTicks:v4];
    }
  }
}

- (void)deleteAllDESRecordsForDictationPersonalizationWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    identifier = [v4 identifier];
    v7 = [BMStreamDatastorePruner alloc];
    v8 = +[BMStoreConfig newRestrictedStreamDefaultConfiguration];
    v9 = [v7 initWithStream:identifier config:v8];

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001B1B4;
    v13[3] = &unk_100055458;
    v13[4] = &v14;
    v10 = objc_retainBlock(v13);
    [v9 removeEventsFrom:2 to:v10 reason:0.0 usingBlock:CFAbsoluteTimeGetCurrent()];
    v11 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v12 = v15[3];
      *buf = 136315394;
      v19 = "[ESConnection deleteAllDESRecordsForDictationPersonalizationWithCompletion:]";
      v20 = 2048;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Biome Dictation: Removed %zu dictation events from Biome", buf, 0x16u);
    }

    _Block_object_dispose(&v14, 8);
  }

  [CESRFidesASRRecord deleteAllRecordsForPlugin:@"com.apple.siri.speech-dictation-personalization" completion:completionCopy];
}

- (void)removePersonalizedLMForFidesOnly:(BOOL)only completion:(id)completion
{
  completionCopy = completion;
  v6 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  firstObject = [v6 firstObject];

  v19[0] = firstObject;
  v19[1] = @"/Assistant";
  v19[2] = @"SpeechPersonalizedLM_Fides";
  v8 = [NSArray arrayWithObjects:v19 count:3];
  v9 = [NSString pathWithComponents:v8];

  v10 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[ESConnection removePersonalizedLMForFidesOnly:completion:]";
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s PLM: Removing if exists: %@", buf, 0x16u);
  }

  [_EARLmModel removeWithDirectory:v9];
  if (!only)
  {
    v14[0] = firstObject;
    v14[1] = @"/Assistant";
    v14[2] = @"SpeechPersonalizedLM";
    v11 = [NSArray arrayWithObjects:v14 count:3];
    v12 = [NSString pathWithComponents:v11];

    v13 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[ESConnection removePersonalizedLMForFidesOnly:completion:]";
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s PLM: Removing if exists: %@", buf, 0x16u);
    }

    [_EARLmModel removeWithDirectory:v12];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)invalidateUaapLm
{
  dispatch_assert_queue_V2(qword_100061620);
  v2 = qword_1000616B8;

  [v2 invalidate];
}

- (void)invalidatePersonalizedLM
{
  dispatch_assert_queue_V2(qword_100061620);
  v2 = qword_100061698;

  [v2 invalidate];
}

- (void)compilePrimaryAssistantAssetWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(qword_100061620);
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_10001BCF8;
  v53 = sub_10001BD08;
  v54 = 0;
  v5 = AFPreferencesMobileUserSessionLanguage();
  if (v5)
  {
    v41 = SFEntitledAssetTypeToString();
    v6 = [[SFEntitledAssetConfig alloc] initWithLanguage:v5 assetType:3];
    language = [v6 language];

    v8 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v62 = "[ESConnection compilePrimaryAssistantAssetWithCompletion:]";
      v63 = 2112;
      v64 = v41;
      v65 = 2112;
      v66 = language;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Requesting model compilation for the primary %@ asset: %@", buf, 0x20u);
    }

    v9 = objc_alloc_init(SFEntitledAssetManager);
    v10 = [v9 installedAssetWithConfig:v6];
    if (v10)
    {
      v11 = +[NSFileManager defaultManager];
      v12 = [v11 fileExistsAtPath:v10];

      if (v12)
      {
        v40 = [v9 modelQualityTypeStatusStringWithConfig:v6];
        if ([v40 isEqualToString:@"HQ"])
        {
          v13 = [SFEntitledAssetManager jsonFilenameForAssetType:3];
          v14 = [v10 stringByAppendingPathComponent:v13];

          v15 = +[NSFileManager defaultManager];
          v16 = [v15 fileExistsAtPath:v14];

          if (v16)
          {
            v17 = os_transaction_create();
            _sLowPrioritySerialQueue = [(ESConnection *)self _sLowPrioritySerialQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10001BD10;
            block[3] = &unk_100055430;
            v19 = v41;
            v43 = v19;
            v20 = language;
            v44 = v20;
            v45 = v14;
            v48 = &v49;
            v47 = completionCopy;
            v21 = v17;
            v46 = v21;
            dispatch_async(_sLowPrioritySerialQueue, block);

            v22 = qword_100061630;
            if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v62 = "[ESConnection compilePrimaryAssistantAssetWithCompletion:]";
              v63 = 2112;
              v64 = v19;
              v65 = 2112;
              v66 = v20;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Requested model compilation for the primary %@ asset: %@", buf, 0x20u);
            }

            v23 = 0;
            goto LABEL_24;
          }

          v23 = [NSString stringWithFormat:@"No accessible config for the primary %@ asset: %@", v41, language];
          v55 = NSLocalizedDescriptionKey;
          v56 = v23;
          v36 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v37 = [NSError errorWithDomain:kAFAssistantErrorDomain code:600 userInfo:v36];
          v38 = v50[5];
          v50[5] = v37;

          v39 = AFSiriLogContextSpeech;
          if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v62 = "[ESConnection compilePrimaryAssistantAssetWithCompletion:]";
            v63 = 2112;
            v64 = v23;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
            if (!completionCopy)
            {
              goto LABEL_24;
            }
          }

          else if (!completionCopy)
          {
LABEL_24:

            goto LABEL_25;
          }

          (*(completionCopy + 2))(completionCopy, v50[5]);
          goto LABEL_24;
        }

        v23 = [NSString stringWithFormat:@"The primary %@ asset: %@, is ineligible for compilation.", v41, language];
        v57 = NSLocalizedDescriptionKey;
        v58 = v23;
        v32 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v33 = [NSError errorWithDomain:kAFAssistantErrorDomain code:600 userInfo:v32];
        v34 = v50[5];
        v50[5] = v33;

        v35 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v62 = "[ESConnection compilePrimaryAssistantAssetWithCompletion:]";
          v63 = 2112;
          v64 = v23;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
          if (!completionCopy)
          {
            goto LABEL_25;
          }
        }

        else if (!completionCopy)
        {
LABEL_25:

          goto LABEL_26;
        }

        (*(completionCopy + 2))(completionCopy, v50[5]);
        goto LABEL_25;
      }
    }

    v23 = [NSString stringWithFormat:@"No accessible root path for the primary %@ asset: %@", v41, language];
    v59 = NSLocalizedDescriptionKey;
    v60 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v25 = [NSError errorWithDomain:kAFAssistantErrorDomain code:600 userInfo:v24];
    v26 = v50[5];
    v50[5] = v25;

    v27 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v62 = "[ESConnection compilePrimaryAssistantAssetWithCompletion:]";
      v63 = 2112;
      v64 = v23;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_26;
      }
    }

    else if (!completionCopy)
    {
LABEL_26:

      goto LABEL_27;
    }

    (*(completionCopy + 2))(completionCopy, v50[5]);
    goto LABEL_26;
  }

  v67 = NSLocalizedDescriptionKey;
  v68 = @"No language for the current user session.";
  v28 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v29 = [NSError errorWithDomain:kAFAssistantErrorDomain code:0 userInfo:v28];
  v30 = v50[5];
  v50[5] = v29;

  v31 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v62 = "[ESConnection compilePrimaryAssistantAssetWithCompletion:]";
    v63 = 2112;
    v64 = @"No language for the current user session.";
    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    if (!completionCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (completionCopy)
  {
LABEL_16:
    (*(completionCopy + 2))(completionCopy, v50[5]);
  }

LABEL_17:
  v23 = @"No language for the current user session.";
LABEL_27:
  _Block_object_dispose(&v49, 8);
}

- (void)compileAllAssetsWithType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(qword_100061620);
  v37 = SFEntitledAssetTypeToString();
  v7 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v51 = "[ESConnection compileAllAssetsWithType:completion:]";
    v52 = 2112;
    v53 = v37;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Requesting model compilation for %@ assets.", buf, 0x16u);
  }

  if (qword_100061638)
  {
    v8 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v51 = "[ESConnection compileAllAssetsWithType:completion:]";
      v52 = 2112;
      v53 = v37;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Deferring model compilation for %@ assets due to active recognition.", buf, 0x16u);
    }

    [(ESConnection *)self _scheduleCompilationTimerForAssetType:type completion:completionCopy];
  }

  else
  {
    v9 = +[ESProfiler sharedProfiler];
    [v9 logAssetsCompilationEventsWithPowerLogEvent:@"compileAllAssetsWithCompletion"];

    v10 = objc_alloc_init(SFEntitledAssetManager);
    v11 = [ESConnection _languagesToCompileForAssetType:type assetManager:v10];
    if ([v11 count])
    {
      selfCopy = self;
      v36 = completionCopy;
      v38 = +[NSMutableDictionary dictionary];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v34 = v11;
      v12 = v11;
      v40 = [v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v40)
      {
        v13 = *v47;
        v39 = *v47;
        do
        {
          v14 = 0;
          do
          {
            if (*v47 != v13)
            {
              objc_enumerationMutation(v12);
            }

            v15 = *(*(&v46 + 1) + 8 * v14);
            v16 = [[SFEntitledAssetConfig alloc] initWithLanguage:v15 assetType:type];
            v17 = [v10 installedAssetWithConfig:v16];
            if (v17 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 fileExistsAtPath:v17], v18, (v19 & 1) != 0))
            {
              v20 = v12;
              v21 = v10;
              v22 = [SFEntitledAssetManager jsonFilenameForAssetType:type];
              v23 = [v17 stringByAppendingPathComponent:v22];

              v24 = +[NSFileManager defaultManager];
              v25 = [v24 fileExistsAtPath:v23];

              if (v25)
              {
                [v38 setObject:v23 forKey:v15];
              }

              else
              {
                v27 = AFSiriLogContextSpeech;
                if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v51 = "[ESConnection compileAllAssetsWithType:completion:]";
                  v52 = 2112;
                  v53 = v37;
                  v54 = 2112;
                  v55 = v15;
                  _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s No accessible config for %@ asset: %@", buf, 0x20u);
                }
              }

              v10 = v21;
              v12 = v20;
              v13 = v39;
            }

            else
            {
              v26 = AFSiriLogContextSpeech;
              if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v51 = "[ESConnection compileAllAssetsWithType:completion:]";
                v52 = 2112;
                v53 = v37;
                v54 = 2112;
                v55 = v15;
                _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s No accessible root path for %@ asset: %@", buf, 0x20u);
              }
            }

            v14 = v14 + 1;
          }

          while (v40 != v14);
          v40 = [v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v40);
      }

      v28 = os_transaction_create();
      _sLowPrioritySerialQueue = [(ESConnection *)selfCopy _sLowPrioritySerialQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001C510;
      block[3] = &unk_100055408;
      v30 = v38;
      v42 = v30;
      v31 = v37;
      v43 = v31;
      completionCopy = v36;
      v45 = v36;
      v32 = v28;
      v44 = v32;
      dispatch_async(_sLowPrioritySerialQueue, block);

      v33 = qword_100061630;
      if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v51 = "[ESConnection compileAllAssetsWithType:completion:]";
        v52 = 2112;
        v53 = v31;
        v54 = 2112;
        v55 = v12;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s Requested model compilation for %@ assets: %@", buf, 0x20u);
      }

      v11 = v34;
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)resetCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(qword_100061620);
  v5 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ESConnection resetCacheWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Requesting cache reset.", &v7, 0xCu);
  }

  if (qword_100061638)
  {
    v6 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[ESConnection resetCacheWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Deferring cache reset due to active recognition.", &v7, 0xCu);
    }

    [(ESConnection *)self _scheduleCacheResetTimer:completionCopy];
  }

  else
  {
    +[ESConnection _cachedRecognizerCleanUp];
    completionCopy[2](completionCopy, 0);
  }
}

- (void)requestEagerResult
{
  WeakRetained = objc_loadWeakRetained(&self->_audioBuffer);

  if (WeakRetained)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v4 = [NSNumber numberWithDouble:self->_audioDurationMs / 1000.0];
    [v9 addObject:v4];

    v5 = objc_loadWeakRetained(&self->_recognizer);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_recognizer);
      [v7 requestEagerResult:v9];
    }
  }

  else
  {
    bufferedRequestEagerResultData = self->_bufferedRequestEagerResultData;
    v9 = [[NSNumber alloc] initWithUnsignedLong:self->_bufferedAudioDataLength];
    [(NSMutableArray *)bufferedRequestEagerResultData addObject:?];
  }
}

- (void)purgeInstalledAssetsExceptLanguages:(id)languages assetType:(unint64_t)type completion:(id)completion
{
  languagesCopy = languages;
  completionCopy = completion;
  v9 = qword_100061628;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CB88;
  block[3] = &unk_1000553B8;
  v14 = completionCopy;
  typeCopy = type;
  v13 = languagesCopy;
  v10 = completionCopy;
  v11 = languagesCopy;
  dispatch_async(v9, block);
}

- (void)purgeInstalledAssetsExceptLanguages:(id)languages completion:(id)completion
{
  languagesCopy = languages;
  completionCopy = completion;
  v7 = qword_100061628;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001CD58;
  v10[3] = &unk_100055190;
  v11 = languagesCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = languagesCopy;
  dispatch_async(v7, v10);
}

- (void)runEvaluationWithDESRecordDatas:(id)datas language:(id)language recipe:(id)recipe attachments:(id)attachments fidesPersonalizedLMPath:(id)path fidesPersonalizedLMTrainingAsset:(id)asset scrubResult:(BOOL)result completion:(id)self0
{
  datasCopy = datas;
  languageCopy = language;
  recipeCopy = recipe;
  attachmentsCopy = attachments;
  pathCopy = path;
  assetCopy = asset;
  completionCopy = completion;
  _fidesEvalQueue = [(ESConnection *)self _fidesEvalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D038;
  block[3] = &unk_100055340;
  v32 = recipeCopy;
  v33 = languageCopy;
  selfCopy = self;
  v35 = pathCopy;
  v36 = assetCopy;
  v37 = datasCopy;
  resultCopy = result;
  v38 = attachmentsCopy;
  v39 = completionCopy;
  v24 = completionCopy;
  v25 = attachmentsCopy;
  v26 = datasCopy;
  v27 = assetCopy;
  v28 = pathCopy;
  v29 = languageCopy;
  v30 = recipeCopy;
  dispatch_async(_fidesEvalQueue, block);
}

- (id)_modelRootWithAssetConfig:(id)config modelOverridePath:(id)path overrides:(id)overrides error:(id *)error
{
  configCopy = config;
  pathCopy = path;
  overridesCopy = overrides;
  if (pathCopy && AFIsInternalInstall())
  {
    v12 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[ESConnection _modelRootWithAssetConfig:modelOverridePath:overrides:error:]";
      v25 = 2112;
      v26 = pathCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Set model root to %@", buf, 0x16u);
    }

    v13 = pathCopy;
    v14 = 0;
  }

  else
  {
    v15 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "[ESConnection _modelRootWithAssetConfig:modelOverridePath:overrides:error:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Use currently installed asset.", buf, 0xCu);
    }

    v16 = +[ESAssetManager sharedInstance];
    v20 = 0;
    v13 = [v16 installedQuasarModelPathForAssetConfig:configCopy error:&v20];
    v14 = v20;

    if (!v13)
    {
      if (error)
      {
        v17 = kAFAssistantErrorDomain;
        if (v14)
        {
          v21 = NSUnderlyingErrorKey;
          v22 = v14;
          v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        }

        else
        {
          v18 = 0;
        }

        *error = [NSError errorWithDomain:v17 code:600 userInfo:v18];
        if (v14)
        {
        }
      }

      v13 = 0;
    }
  }

  return v13;
}

- (void)runCorrectedTextEvaluationWithAudioDatas:(id)datas recordDatas:(id)recordDatas language:(id)language samplingRate:(unint64_t)rate caseSensitive:(BOOL)sensitive skipLME:(BOOL)e wordSenseAccessListSet:(id)set completion:(id)self0
{
  datasCopy = datas;
  recordDatasCopy = recordDatas;
  languageCopy = language;
  setCopy = set;
  completionCopy = completion;
  _fidesEvalQueue = [(ESConnection *)self _fidesEvalQueue];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000223C0;
  v27[3] = &unk_1000552C8;
  v28 = languageCopy;
  selfCopy = self;
  v30 = recordDatasCopy;
  v31 = datasCopy;
  v33 = completionCopy;
  rateCopy = rate;
  sensitiveCopy = sensitive;
  eCopy = e;
  v32 = setCopy;
  v22 = setCopy;
  v23 = datasCopy;
  v24 = recordDatasCopy;
  v25 = completionCopy;
  v26 = languageCopy;
  dispatch_async(_fidesEvalQueue, v27);
}

- (void)redecodeWithAudioDatas:(id)datas language:(id)language task:(id)task samplingRate:(unint64_t)rate completion:(id)completion
{
  datasCopy = datas;
  languageCopy = language;
  taskCopy = task;
  completionCopy = completion;
  _redecodeQueue = [(ESConnection *)self _redecodeQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100023FC0;
  v21[3] = &unk_100055250;
  v22 = languageCopy;
  v23 = taskCopy;
  v24 = datasCopy;
  selfCopy = self;
  v26 = completionCopy;
  rateCopy = rate;
  v17 = datasCopy;
  v18 = completionCopy;
  v19 = taskCopy;
  v20 = languageCopy;
  dispatch_async(_redecodeQueue, v21);
}

- (void)_scheduleCompilationTimerForAssetType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(qword_100061620);
  if (!self->_compilationTimerForAssetType)
  {
    v7 = +[NSMutableDictionary dictionary];
    compilationTimerForAssetType = self->_compilationTimerForAssetType;
    self->_compilationTimerForAssetType = v7;
  }

  v9 = SFEntitledAssetTypeToString();
  v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100061620);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100024BA0;
  v18 = &unk_1000551B8;
  v11 = v9;
  v19 = v11;
  selfCopy = self;
  typeCopy = type;
  v12 = completionCopy;
  v21 = v12;
  dispatch_source_set_event_handler(v10, &v15);
  [(NSMutableDictionary *)self->_compilationTimerForAssetType setObject:v10 forKey:v11, v15, v16, v17, v18];
  v13 = dispatch_time(0, 120000000000);
  dispatch_source_set_timer(v10, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(v10);
  v14 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[ESConnection _scheduleCompilationTimerForAssetType:completion:]";
    v25 = 2112;
    v26 = v11;
    v27 = 2048;
    v28 = 120;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Model compilation for %@ assets scheduled for %zus.", buf, 0x20u);
  }
}

- (void)_scheduleCacheResetTimer:(id)timer
{
  timerCopy = timer;
  dispatch_assert_queue_V2(qword_100061620);
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100061620);
  cacheResetTimer = self->_cacheResetTimer;
  self->_cacheResetTimer = v5;

  v7 = self->_cacheResetTimer;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100024DFC;
  v11[3] = &unk_100055190;
  v11[4] = self;
  v8 = timerCopy;
  v12 = v8;
  dispatch_source_set_event_handler(v7, v11);
  v9 = dispatch_time(0, 120000000000);
  dispatch_source_set_timer(self->_cacheResetTimer, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(self->_cacheResetTimer);
  v10 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[ESConnection _scheduleCacheResetTimer:]";
    v15 = 2048;
    v16 = 120;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Cache reset scheduled for %zus.", buf, 0x16u);
  }
}

- (void)updateSpeechProfileWithLanguage:(id)language modelOverridePath:(id)path existingProfile:(id)profile existingAssetPath:(id)assetPath completion:(id)completion
{
  completionCopy = completion;
  v8 = [NSError alloc];
  v9 = kAFAssistantErrorDomain;
  v12 = NSLocalizedDescriptionKey;
  v13 = @"updateSpeechProfileWithLanguage is currently unsupported.";
  v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v11 = [v8 initWithDomain:v9 code:1102 userInfo:v10];

  (*(completionCopy + 2))(completionCopy, 0, 0, v11);
}

- (void)createSpeechProfileWithLanguage:(id)language modelOverridePath:(id)path JSONData:(id)data completion:(id)completion
{
  languageCopy = language;
  pathCopy = path;
  dataCopy = data;
  completionCopy = completion;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10001BCF8;
  v36 = sub_10001BD08;
  v37 = 0;
  v13 = [[SFEntitledAssetConfig alloc] initWithLanguage:languageCopy assetType:3];
  v14 = (v33 + 5);
  obj = v33[5];
  v15 = [(ESConnection *)self _userProfileWithAssetConfig:v13 modelOverridePath:pathCopy overrides:0 isJit:0 returningFoundPath:0 error:&obj];
  objc_storeStrong(v14, obj);
  if (v15)
  {
    v16 = +[ESProfiler sharedProfiler];
    [v16 logSpeechProfileGenerationStartedOrUpdatedEventsWithPowerLogEvent:@"createSpeechProfileWithLanguage" language:languageCopy];

    [v15 removeAllWords];
    v17 = (v33 + 5);
    v30 = v33[5];
    v18 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:&v30];
    objc_storeStrong(v17, v30);
    if (v18)
    {
      objectEnumerator = [v18 objectEnumerator];
      nextObject = [objectEnumerator nextObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100025388;
        v27[3] = &unk_100055168;
        v29 = &v32;
        v21 = v15;
        v28 = v21;
        [nextObject enumerateKeysAndObjectsUsingBlock:v27];
        if (v33[5])
        {
          completionCopy[2](completionCopy, 0);
        }

        else
        {
          dataProfile = [v21 dataProfile];
          (completionCopy[2])(completionCopy, dataProfile, 0);
        }

        v22 = v28;
      }

      else
      {
        v38 = NSLocalizedFailureReasonErrorKey;
        v22 = [NSString stringWithFormat:@"Not a dictionary: %@", nextObject];
        v39 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v24 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1102 userInfo:v23];
        (completionCopy[2])(completionCopy, 0, v24);
      }
    }

    else
    {
      (completionCopy[2])(completionCopy, 0, v33[5]);
    }
  }

  else
  {
    (completionCopy[2])(completionCopy, 0, v33[5]);
  }

  _Block_object_dispose(&v32, 8);
}

- (void)readProfileAndUserDataWithLanguage:(id)language allowOverride:(BOOL)override completion:(id)completion
{
  overrideCopy = override;
  languageCopy = language;
  completionCopy = completion;
  if (!overrideCopy)
  {
LABEL_11:
    v24 = 0;
    v12 = [CoreEmbeddedSpeechRecognizer dictionaryWithContentsProfilePathForLanguage:languageCopy errorOut:&v24];
    offlineDictationProfileOverridePath = v24;
    if (v12)
    {
      v15 = [(__CFString *)v12 valueForKey:@"language"];
      v16 = [v15 isEqual:languageCopy];

      if ((v16 & 1) == 0)
      {
        v17 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          v22 = v17;
          v23 = [(__CFString *)v12 objectForKeyedSubscript:@"language"];
          *buf = 136315650;
          v27 = "[ESConnection readProfileAndUserDataWithLanguage:allowOverride:completion:]";
          v28 = 2114;
          v29 = v23;
          v30 = 2114;
          v31 = languageCopy;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Mismatch in speech profile language in content (%{public}@) and filename (%{public}@)", buf, 0x20u);
        }
      }

      v18 = [(__CFString *)v12 valueForKey:@"version"];
      if (([(__CFString *)v18 isEqual:@"2.0"]& 1) != 0)
      {

        if (v16)
        {
          v19 = AFSiriLogContextSpeech;
          if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v27 = "[ESConnection readProfileAndUserDataWithLanguage:allowOverride:completion:]";
            v28 = 2112;
            v29 = languageCopy;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Successfully deserialized existing speech profile for %@", buf, 0x16u);
          }

          v11 = [(__CFString *)v12 valueForKey:@"data"];
          v20 = [(__CFString *)v12 valueForKey:@"assetPath"];
          completionCopy[2](completionCopy, v11, v20);

          goto LABEL_20;
        }
      }

      else
      {
        v21 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v27 = "[ESConnection readProfileAndUserDataWithLanguage:allowOverride:completion:]";
          v28 = 2114;
          v29 = v18;
          v30 = 2114;
          v31 = @"2.0";
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Profile version on disk (%{public}@) does not match the expected version (%{public}@)", buf, 0x20u);
        }
      }
    }

    completionCopy[2](completionCopy, 0, 0);
    goto LABEL_25;
  }

  v9 = +[AFPreferences sharedPreferences];
  offlineDictationProfileOverridePath = [v9 offlineDictationProfileOverridePath];

  if (!offlineDictationProfileOverridePath)
  {
LABEL_10:

    goto LABEL_11;
  }

  v25 = 0;
  v11 = [NSData dataWithContentsOfFile:offlineDictationProfileOverridePath options:0 error:&v25];
  v12 = v25;
  v13 = AFSiriLogContextSpeech;
  v14 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO);
  if (!v11)
  {
    if (v14)
    {
      *buf = 136315650;
      v27 = "[ESConnection readProfileAndUserDataWithLanguage:allowOverride:completion:]";
      v28 = 2112;
      v29 = 0;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Could not use override profile at %@: %@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  if (v14)
  {
    *buf = 136315394;
    v27 = "[ESConnection readProfileAndUserDataWithLanguage:allowOverride:completion:]";
    v28 = 2112;
    v29 = offlineDictationProfileOverridePath;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Using override profile at %@", buf, 0x16u);
  }

  completionCopy[2](completionCopy, v11, 0);
LABEL_20:

LABEL_25:
}

- (id)_audioDataPostRecognitionStart:(id)start
{
  startCopy = start;
  v5 = startCopy;
  if (self->_timeUntilRecognitionStartInMs <= 0.0)
  {
    v9 = startCopy;
  }

  else
  {
    [CESRUtilities audioDurationInMs:startCopy samplingRate:self->_samplingRate];
    v7 = self->_timeUntilRecognitionStartInMs - v6;
    self->_timeUntilRecognitionStartInMs = v7;
    if (v7 >= 0.0)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v9 = [CESRUtilities audioData:v5 withBytesFromEnd:[CESRUtilities audioLengthInBytes:self->_samplingRate samplingRate:fabs(v7)]];
  }

  v8 = v9;
LABEL_7:

  return v8;
}

- (void)_processAudioPacket:(id)packet
{
  packetCopy = packet;
  data = [packetCopy data];
  packetTimestamps = [packetCopy packetTimestamps];

  packetRecordedTimeInTicks = [packetTimestamps packetRecordedTimeInTicks];
  [packetTimestamps packetReceivedTime];
  v8 = v7;
  packetReceivedTimeInTicks = [packetTimestamps packetReceivedTimeInTicks];
  if (!self->_firstAudioPacketRecordedTimeInTicks)
  {
    objc_storeStrong(&self->_firstAudioPacketRecordedTimeInTicks, packetRecordedTimeInTicks);
  }

  if (self->_firstAudioPacketReceivedTime == 2.22507386e-308)
  {
    self->_firstAudioPacketReceivedTime = v8;
    objc_storeStrong(&self->_firstAudioPacketReceivedTimeInTicks, packetReceivedTimeInTicks);
  }

  if (self->_firstAudioPacketTimeUntilFirstPartial == 2.22507386e-308)
  {
    self->_firstAudioPacketTimeUntilFirstPartial = v8;
  }

  self->_lastAudioPacketReceivedTime = v8;
  objc_storeStrong(&self->_lastAudioPacketReceivedTimeInTicks, packetReceivedTimeInTicks);
  v10 = [data length] >> 1;
  WeakRetained = objc_loadWeakRetained(&self->_audioBuffer);
  v12 = data;
  [WeakRetained addAudioSamples:objc_msgSend(data count:{"bytes"), v10}];

  [(ESConnection *)self _updateAudioDuration:data];
  [packetTimestamps setCumulativeAudioDuration:self->_audioDurationMs / 1000.0];
  packetReadyUpstreamTimeInTicks = [packetTimestamps packetReadyUpstreamTimeInTicks];
  if (packetReadyUpstreamTimeInTicks)
  {
    [(NSMutableArray *)self->_processedPacketsReadyUpstreamTimestampsBuffer addObject:packetReadyUpstreamTimeInTicks];
  }

  [packetTimestamps cumulativeAudioDuration];
  v14 = [NSNumber numberWithDouble:?];
  if (v14)
  {
    [(NSMutableArray *)self->_processedPacketsCumulativeAudioDurationBuffer addObject:v14];
  }

  if (!self->_firstAudioPacketProcessed)
  {
    self->_firstAudioPacketProcessed = 1;
    v15 = +[ESProfiler sharedProfiler];
    packetReadyUpstreamTimeInTicks2 = [packetTimestamps packetReadyUpstreamTimeInTicks];
    [v15 logFirstAudioPacketReadyUpstreamWithTimeInTicks:packetReadyUpstreamTimeInTicks2];

    v17 = +[ESProfiler sharedProfiler];
    v18 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
    [v17 logFirstAudioPacketProcessedWithTimeInTicks:v18];
  }

  [qword_1000616B0 addAudioPacket:data];
}

- (id)_packetReadyUpstreamTimestampsFromAudioTime:(float)time
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10001BCF8;
  v14 = sub_10001BD08;
  v15 = [[NSNumber alloc] initWithUnsignedLongLong:0];
  processedPacketsReadyUpstreamTimestampsBuffer = self->_processedPacketsReadyUpstreamTimestampsBuffer;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100026228;
  v8[3] = &unk_100055100;
  timeCopy = time;
  v8[4] = self;
  v8[5] = &v10;
  [(NSMutableArray *)processedPacketsReadyUpstreamTimestampsBuffer enumerateObjectsUsingBlock:v8];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)_recordedTimestampFromAudioTime:(float)time
{
  firstAudioPacketRecordedTimeInTicks = self->_firstAudioPacketRecordedTimeInTicks;
  if (firstAudioPacketRecordedTimeInTicks)
  {
    unsignedLongLongValue = [firstAudioPacketRecordedTimeInTicks unsignedLongLongValue];
    *&v7 = time;
    firstAudioPacketRecordedTimeInTicks = [NSNumber numberWithUnsignedLongLong:&unsignedLongLongValue[[CESRUtilities secondsToHostTime:v7]]];
    v3 = vars8;
  }

  return firstAudioPacketRecordedTimeInTicks;
}

- (void)_processBufferedAudioPackets
{
  if (self->_bufferedRequestEagerResultData)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = self->_bufferedRequestEagerResultData;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = ([*(*(&v16 + 1) + 8 * v8) unsignedLongValue] >> 1) / self->_samplingRate * 1000.0 - self->_timeUntilRecognitionStartInMs;
          if (v9 >= 0.0)
          {
            v10 = [NSNumber numberWithDouble:v9 / 1000.0];
            [v3 addObject:v10];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_recognizer);
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = objc_loadWeakRetained(&self->_recognizer);
        [v13 requestEagerResult:v3];
      }
    }
  }

  bufferedAudioPackets = self->_bufferedAudioPackets;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100026574;
  v15[3] = &unk_1000550D8;
  v15[4] = self;
  [(NSMutableArray *)bufferedAudioPackets enumerateObjectsUsingBlock:v15];
  self->_bufferedAudioDataLength = 0;
  [(NSMutableArray *)self->_bufferedRequestEagerResultData removeAllObjects];
  [(NSMutableArray *)self->_bufferedAudioPackets removeAllObjects];
}

- (void)stopAudioDecoding
{
  WeakRetained = objc_loadWeakRetained(&self->_audioBuffer);

  if (WeakRetained)
  {
    v4 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[ESConnection stopAudioDecoding]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stopping audio decoding since RC has been accepted", &v6, 0xCu);
    }

    v5 = objc_loadWeakRetained(&self->_audioBuffer);
    [v5 stopAudioDecoding];
  }
}

- (void)finishAudio
{
  WeakRetained = objc_loadWeakRetained(&self->_audioBuffer);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_audioBuffer);
    [v4 endAudio];
  }

  else
  {
    self->_bufferedAudioEnded = 1;
  }
}

- (void)addAudioPacket:(id)packet packetRecordedTime:(id)time packetReadyUpstreamTime:(id)upstreamTime
{
  packetCopy = packet;
  upstreamTimeCopy = upstreamTime;
  timeCopy = time;
  v11 = [ESAudioPacketTimestamps alloc];
  v12 = +[NSProcessInfo processInfo];
  [v12 systemUptime];
  v14 = v13;
  v15 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v19 = [(ESAudioPacketTimestamps *)v11 initWithPacketRecordedTimeInTicks:timeCopy packetReadyUpstreamTimeInTicks:upstreamTimeCopy packetReceivedTime:v15 packetReceivedTimeInTicks:v14];

  v16 = [[ESAudioPacket alloc] initWithData:packetCopy packetTimestamps:v19];
  WeakRetained = objc_loadWeakRetained(&self->_audioBuffer);

  if (WeakRetained)
  {
    [(ESStoreAudioData *)self->_storeAudioData addAudioPacket:packetCopy];
    v18 = [(ESConnection *)self _audioDataPostRecognitionStart:packetCopy];

    [(ESAudioPacket *)v16 setData:v18];
    if (!v18)
    {
      goto LABEL_6;
    }

    [(ESConnection *)self _processAudioPacket:v16];
    packetCopy = v18;
  }

  else
  {
    [(NSMutableArray *)self->_bufferedAudioPackets addObject:v16];
    self->_bufferedAudioDataLength += [packetCopy length];
  }

LABEL_6:
}

- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  correctedText = [infoCopy correctedText];
  recognizedTextInfo = [infoCopy recognizedTextInfo];
  v9 = [recognizedTextInfo objectForKeyedSubscript:@"userEditedText"];

  if ([correctedText length] && objc_msgSend(identifierCopy, "length"))
  {
    v10 = qword_100061620;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100026A40;
    v11[3] = &unk_1000550B0;
    v12 = identifierCopy;
    v13 = correctedText;
    v14 = v9;
    v15 = infoCopy;
    dispatch_async(v10, v11);
  }
}

- (void)startSpeechRecognitionWithParameters:(id)parameters didStartHandlerWithInfo:(id)info
{
  parametersCopy = parameters;
  infoCopy = info;
  v358 = parametersCopy;
  task = [parametersCopy task];
  if (([CESRUtilities isTaskDictationSpecific:task]& 1) != 0)
  {
    location = [parametersCopy location];

    if (location)
    {
      v9 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
        _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s Location data was provided in the context of a Dictation request!", buf, 0xCu);
      }

      v10 = [parametersCopy mutatedCopyWithMutator:&stru_100055010];

      v358 = v10;
    }
  }

  else
  {
  }

  v11 = qword_100061630;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Starting", buf, 0xCu);
  }

  -[ESConnection adjustAppleTVLogLevelForSecureOfflineOnly:](self, "adjustAppleTVLogLevelForSecureOfflineOnly:", [v358 secureOfflineOnly]);
  v356 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v12 = os_signpost_id_generate(AFSiriLogContextSpeech);
  v13 = AFSiriLogContextSpeech;
  v14 = v13;
  v346 = v12 - 1;
  spid = v12;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 136315394;
    *&buf[4] = "SiriX";
    *&buf[12] = 2080;
    *&buf[14] = "enableTelemetry=YES";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ES: Recognizer Init", "%s %s", buf, 0x16u);
  }

  self->_recognitionBeginTime = 0.0;
  self->_resultCandidateId = 0;
  self->_audioDurationMs = 0.0;
  self->_processedAudioDuration = 0.0;
  self->_recognitionEndTime = 0.0;
  self->_recognitionAbsoluteEndTime = 0.0;
  self->_isSpeechAPIRequest = [v358 isSpeechAPIRequest];
  +[ESConnection _sendPendingAnalyticsEvents];
  WeakRetained = objc_loadWeakRetained(&self->_audioBuffer);

  if (!WeakRetained)
  {
    if (qword_100061638)
    {
      v19 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Previous recognizer on other XPC connection is busy. Send sync cancel", buf, 0xCu);
      }

      v20 = os_signpost_id_generate(AFSiriLogContextSpeech);
      v21 = AFSiriLogContextSpeech;
      v22 = v21;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        v23 = mach_continuous_time();
        *buf = 134349056;
        *&buf[4] = v23;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "ES: Previous Request Cancellation", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
      }

      [qword_100061668 cancelRecognition];
      v24 = AFSiriLogContextSpeech;
      v25 = v24;
      if (v20 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v24))
      {
        v26 = mach_continuous_time();
        *buf = 134349056;
        *&buf[4] = v26;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, v20, "ES: Previous Request Cancellation", "%{public, signpost.description:end_time}llu", buf, 0xCu);
      }

      v27 = qword_100061638;
      qword_100061638 = 0;
    }

    [v358 recognitionStart];
    self->_timeUntilRecognitionStartInMs = v28 * 1000.0;
    applicationName = [v358 applicationName];
    if (applicationName)
    {
      applicationName = [v358 applicationName];
      p_applicationName = &self->_applicationName;
      objc_storeStrong(&self->_applicationName, applicationName);
    }

    else
    {
      p_applicationName = &self->_applicationName;
      applicationName = self->_applicationName;
      self->_applicationName = &stru_100055AC8;
    }

    overrides = [v358 overrides];
    v32 = overrides;
    if (overrides)
    {
      v33 = [overrides mutableCopy];
      v34 = [v33 objectForKey:@"continuousListening"];

      if (v34)
      {
        v35 = [v33 objectForKey:@"continuousListening"];
        bOOLValue = [v35 BOOLValue];

        [v33 removeObjectForKey:@"continuousListening"];
      }

      else
      {
        bOOLValue = 0;
      }

      v36 = [v33 objectForKey:@"shouldHandleCapitalization"];

      if (v36)
      {
        v37 = [v33 objectForKey:@"shouldHandleCapitalization"];
        bOOLValue2 = [v37 BOOLValue];

        [v33 removeObjectForKey:@"shouldHandleCapitalization"];
      }

      else
      {
        bOOLValue2 = 0;
      }

      if ([v33 count])
      {
        v349 = [v33 copy];

        v32 = v349;
      }

      else
      {
        v349 = 0;
      }
    }

    else
    {
      bOOLValue2 = 0;
      bOOLValue = 0;
      v349 = 0;
    }

    continuousListening = [v358 continuousListening];
    shouldHandleCapitalization = [v358 shouldHandleCapitalization];
    modelOverrideURL = [v358 modelOverrideURL];
    v345 = sub_10002A160(v349, modelOverrideURL);

    v39 = [SFEntitledAssetConfig alloc];
    language = [v358 language];
    task2 = [v358 task];
    v348 = [v39 initWithLanguage:language task:task2];

    dispatch_assert_queue_V2(qword_100061620);
    language2 = [v358 language];
    location2 = [v358 location];
    obj = [(ESConnection *)self geoLMRegionIdWithLanguage:language2 location:location2];

    objc_storeWeak(&self->_recognizer, 0);
    v352 = qword_100061668;
    if (!qword_100061668)
    {
      v56 = qword_100061630;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%s No cached recognizer.", buf, 0xCu);
      }

      goto LABEL_70;
    }

    task3 = [v358 task];
    v45 = [v352 isSpeakerCodeTrainingSupported:task3];

    if (v45)
    {
      [qword_100061668 interruptTraining];
    }

    v46 = qword_100061670 == 0;
    if (obj)
    {
      v46 = [qword_100061670 isEqualToString:?];
    }

    v47 = qword_100061660;
    language3 = [v358 language];
    if ([v47 isEqualToString:language3])
    {
      v49 = [v345 isEqualToDictionary:qword_100061680];

      if (v49)
      {
        v50 = qword_100061630;
        v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
        if (v46)
        {
          if (v51)
          {
            language4 = [v358 language];
            v53 = language4;
            v54 = @"(none)";
            *buf = 136315651;
            *&buf[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
            if (obj)
            {
              v54 = obj;
            }

            *&buf[12] = 2114;
            *&buf[14] = language4;
            *&buf[22] = 2113;
            v401 = v54;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%s Cached recognizer for language: %{public}@, regionId: %{private}@ already loaded.", buf, 0x20u);
          }

          v55 = 0;
        }

        else
        {
          if (v51)
          {
            v125 = qword_100061670;
            v126 = @"(none)";
            if (!qword_100061670)
            {
              v125 = @"(none)";
            }

            if (obj)
            {
              v126 = obj;
            }

            *buf = 136315907;
            *&buf[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
            *&buf[12] = 2114;
            *&buf[14] = qword_100061660;
            *&buf[22] = 2113;
            v401 = v125;
            *v402 = 2113;
            *&v402[2] = v126;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%s Cached recognizer is for language: %{public}@, regionId: %{private}@, but this request specifies a different regionId: %{private}@. Discarding the cached recognizer upon cooldown.", buf, 0x2Au);
          }

          v55 = obj;
        }

        v127 = qword_1000616A0;
        qword_1000616A0 = v55;

        v128 = qword_100061668;
        v129 = objc_storeWeak(&self->_recognizer, qword_100061668);
        modelInfo = [v128 modelInfo];

        if (modelInfo)
        {
          v130 = objc_loadWeakRetained(&self->_recognizer);
          v131 = v130 == 0;

          if (!v131)
          {
            v73 = 0;
            v343 = 0;
            goto LABEL_76;
          }

LABEL_71:
          modelOverrideURL2 = [v358 modelOverrideURL];
          task4 = [v358 task];
          v69 = [CESRUtilities recognizerSourceForTask:task4];
          isHighPriority = self->_isHighPriority;
          v388 = &off_100058538;
          v387 = 0;
          BYTE1(v311) = isHighPriority;
          LOBYTE(v311) = 0;
          v71 = [ESConnection _speechRecognizerWithAssetConfig:v348 geoLMRegionId:obj enableITN:1 overrides:v349 modelOverrideURL:modelOverrideURL2 preloadModels:0 requestSource:v69 enableParallelLoading:v311 isHighPriority:&v388 geoLMLoadedOut:&v387 error:?];
          v72 = v388;
          v73 = v387;
          v74 = qword_100061668;
          qword_100061668 = v71;

          if (!qword_100061678)
          {
            v75 = +[NSHashTable weakObjectsHashTable];
            v76 = qword_100061678;
            qword_100061678 = v75;
          }

          v77 = qword_100061668;
          if (qword_100061668)
          {
            v78 = objc_storeWeak(&self->_recognizer, qword_100061668);
            modelInfo2 = [v77 modelInfo];

            [qword_100061678 addObject:qword_100061668];
            language5 = [v358 language];
            v81 = qword_100061660;
            qword_100061660 = language5;

            objc_storeStrong(&qword_100061670, obj);
            objc_storeStrong(&qword_100061680, v345);
            byte_100061688 = [v72 BOOLValue];
            modelInfo = modelInfo2;
          }

          v343 = 1;
LABEL_76:
          if (qword_100061668)
          {
            +[ESConnection _scheduleCooldownTimer];
          }

          v82 = objc_loadWeakRetained(&self->_recognizer);
          v83 = v82 == 0;

          if (v83)
          {
            if (infoCopy)
            {
              infoCopy[2](infoCopy, 0, v73);
            }

            [(ESConnection *)self startRequestActivityWithCompletion:0];
            goto LABEL_243;
          }

          task5 = [v358 task];
          v386 = v73;
          v85 = sub_1000212CC(modelInfo, task5, &v386);
          v333 = v386;

          taskToUse = self->_taskToUse;
          self->_taskToUse = v85;

          if (!self->_taskToUse)
          {
            if (infoCopy)
            {
              infoCopy[2](infoCopy, 0, v333);
            }

            [(ESConnection *)self startRequestActivityWithCompletion:0];
            goto LABEL_242;
          }

          v87 = [CESRModelProperties alloc];
          version = [modelInfo version];
          v89 = objc_loadWeakRetained(&self->_recognizer);
          modelType = [v89 modelType];
          v91 = objc_loadWeakRetained(&self->_recognizer);
          modelRoot = [v91 modelRoot];
          v336 = [v87 initWithModelVersion:version modelType:modelType modelRoot:modelRoot];

          _delegate = [(ESConnection *)self _delegate];
          [_delegate speechServiceDidSelectRecognitionModelWithModelProperties:v336];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v401 = sub_10001BCF8;
          *v402 = sub_10001BD08;
          *&v402[8] = 0;
          v383[0] = _NSConcreteStackBlock;
          v383[1] = 3221225472;
          v383[2] = sub_10002A1EC;
          v383[3] = &unk_100055038;
          v385 = buf;
          v338 = v348;
          v384 = v338;
          v321 = objc_retainBlock(v383);
          v94 = [ESSelfHelper alloc];
          v95 = self->_taskToUse;
          isSpeechAPIRequest = self->_isSpeechAPIRequest;
          requestIdentifier = [v358 requestIdentifier];
          language6 = [v358 language];
          asrId = [v358 asrId];
          v326 = [(ESSelfHelper *)v94 initWithTask:v95 isSpeechAPIRequest:isSpeechAPIRequest requestId:requestIdentifier language:language6 asrId:asrId];

          v100 = +[ESProfiler sharedProfiler];
          [v100 setESSelfHelper:v326];
          v341 = continuousListening | bOOLValue;
          v355 = v100;
          if (v100)
          {
            v101 = +[SFEntitledAssetManager sharedInstance];
            v334 = [v101 modelQualityTypeStatusStringWithConfig:v338];

            if (v334)
            {
              group = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v334 isEqualToString:@"HQ"]);
            }

            else
            {
              group = 0;
            }

            language7 = [v358 language];
            v327 = [CESRUtilities speechProfileDateLastModifiedForLanguage:language7];

            if (v327)
            {
              [v327 timeIntervalSinceNow];
              v319 = [NSNumber numberWithDouble:fabs(v103)];
            }

            else
            {
              v319 = 0;
            }

            v104 = +[ESAssetManager sharedInstance];
            language8 = [v358 language];
            v324 = [v104 installedHammerConfigFileForLanguage:language8];

            v317 = [[_EARSpeechModelInfo alloc] initWithConfig:v324];
            v106 = +[PPConfigStore defaultStore];
            v382 = 0;
            v107 = [v106 variantNameWithError:&v382];
            v315 = v382;

            [v355 logPendingPreheatContextEvents:qword_1000616A8];
            +[ESConnection _clearPendingProfilerEvents];
            v108 = self->_taskToUse;
            language9 = [modelInfo language];
            version2 = [modelInfo version];
            version3 = [v317 version];
            v112 = qword_100061670;
            LOBYTE(v104) = byte_100061688;
            dictationUIInteractionIdentifier = [v358 dictationUIInteractionIdentifier];
            LOBYTE(v310) = v104;
            [v355 logRequestStartedOrChangedWithTask:v108 modelLocale:language9 modelVersion:version2 isHighQualityAsset:group hammerVersion:version3 geoLanguageModelRegion:v112 geoLanguageModelLoaded:v310 speechProfileAgeInSec:v319 dictationUIInteractionId:dictationUIInteractionIdentifier portraitExperimentVariantName:v107 applicationName:*p_applicationName powerLogEvent:@"startSpeechRecognitionWithParameters"];

            selfHelper = [v355 selfHelper];
            [selfHelper setContinuousListeningEnabled:v341 & 1];

            [v355 logInitializationStartedOrChangedWithTimeInTicks:v356 cachedRecognizerExisted:v352 != 0 newRecognizerCreated:v343];
            v100 = v355;
          }

          v115 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
          [v100 logInitializationEndedWithTimeInTicks:v115 isSpeechRecognizerCreated:v343];

          if (qword_100061650)
          {
            [v355 logESStartWithTimeInTicks:?];
            v116 = qword_100061650;
            qword_100061650 = 0;
          }

          v117 = +[NSProcessInfo processInfo];
          [v117 systemUptime];
          self->_recognitionBeginTime = v118;

          if ([v358 censorSpeech])
          {
            v325 = (v321[2])();
          }

          else
          {
            v325 = 0;
          }

          v119 = objc_loadWeakRetained(&self->_recognizer);
          [v119 setRecognitionReplacements:v325];

          if ([(NSString *)self->_taskToUse isEqualToString:CoreEmbeddedSpeechRecognizerTaskVoiceMail])
          {
            v120 = v338;
            v121 = objc_opt_class();
            v122 = sub_10002A290(v120, @"voicemail_confidence_subtraction.json", v121);

            if (!v122)
            {
              v123 = (v321[2])();
              if (v123)
              {
                v380[0] = _NSConcreteStackBlock;
                v380[1] = 3221225472;
                v380[2] = sub_10002A6E8;
                v380[3] = &unk_100055060;
                v124 = objc_alloc_init(NSMutableDictionary);
                v381 = v124;
                [v123 enumerateKeysAndObjectsUsingBlock:v380];
                v122 = [v124 copy];
              }

              else
              {
                v122 = 0;
              }
            }

            v132 = objc_loadWeakRetained(&self->_recognizer);
            [v132 setRecognitionConfidenceSubtraction:v122];
          }

          if ([v358 disableDeliveringAsrFeatures])
          {
            [v358 endpointStart];
            if (v133 > 0.0)
            {
              v134 = AFSiriLogContextConnection;
              if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
              {
                *v395 = 136315138;
                *&v395[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
                _os_log_error_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "%s EndpointStart > 0 but asr features delivery is disabled!", v395, 0xCu);
              }
            }
          }

          self->_disableDeliveringAsrFeatures = [v358 disableDeliveringAsrFeatures];
          [v358 endpointStart];
          if (v135 >= 0.0)
          {
            v136 = objc_loadWeakRetained(&self->_recognizer);
            [v358 endpointStart];
            [v136 setEndpointStart:?];
          }

          else
          {
            v136 = AFSiriLogContextConnection;
            if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
            {
              *v395 = 136315138;
              *&v395[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
              _os_log_error_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "%s EndpointStart < 0", v395, 0xCu);
            }
          }

          v137 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
          [v355 logAotLmeStartedOrChangedWithTimeInTicks:v137];

          profile = [v358 profile];
          LODWORD(v137) = profile == 0;

          if (v137)
          {
            if (qword_100061690)
            {
              v140 = qword_100061690;
              v141 = qword_100061690;
              qword_100061690 = v140;
            }

            else
            {
              v141 = objc_alloc_init(NSMutableDictionary);
              objc_storeStrong(&qword_100061690, v141);
            }

            v142 = qword_100061690;
            language10 = [v358 language];
            [CESRUtilities loadSpeechProfiles:v142 language:language10];

            v139 = objc_alloc_init(NSMutableArray);
            v378 = 0u;
            v379 = 0u;
            v376 = 0u;
            v377 = 0u;
            v144 = qword_100061690;
            v145 = [v144 countByEnumeratingWithState:&v376 objects:v399 count:16];
            if (v145)
            {
              v146 = *v377;
              do
              {
                for (i = 0; i != v145; i = i + 1)
                {
                  if (*v377 != v146)
                  {
                    objc_enumerationMutation(v144);
                  }

                  v148 = [qword_100061690 objectForKeyedSubscript:*(*(&v376 + 1) + 8 * i)];
                  [v139 addObject:v148];
                }

                v145 = [v144 countByEnumeratingWithState:&v376 objects:v399 count:16];
              }

              while (v145);
            }

            if ([v139 count])
            {
              v149 = objc_loadWeakRetained(&self->_recognizer);
              [v149 setUserProfileData:0];
            }
          }

          else
          {
            v139 = 0;
          }

          v150 = AFSiriLogContextSpeech;
          if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
          {
            v303 = [v139 count];
            profile2 = [v358 profile];
            *v395 = 136315650;
            *&v395[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
            *&v395[12] = 1024;
            *&v395[14] = v303 != 0;
            *&v395[18] = 1024;
            *&v395[20] = profile2 != 0;
            _os_log_debug_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEBUG, "%s Setting new profile: %d, old profile: %d", v395, 0x18u);
          }

          v151 = objc_loadWeakRetained(&self->_recognizer);
          firstObject = [v139 firstObject];
          [v151 setUserProfile:firstObject];

          firstObject2 = [v139 firstObject];
          experimentIds = [firstObject2 experimentIds];
          [v355 logPersonalizationExperimentTriggersForExperimentIds:experimentIds];

          profile3 = [v358 profile];

          if (profile3)
          {
            v156 = objc_loadWeakRetained(&self->_recognizer);
            profile4 = [v358 profile];
            [v156 setUserProfileData:profile4];
          }

          v158 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
          [v355 logAotLmeEndedWithTimeInTicks:v158];

          v159 = dispatch_time(0, 500000000);
          *v395 = 0;
          *&v395[8] = v395;
          *&v395[16] = 0x3032000000;
          v396 = sub_10001BCF8;
          v397 = sub_10001BD08;
          v398 = 0;
          v344 = objc_alloc_init(NSMutableArray);
          v318 = +[NSProcessInfo processInfo];
          [v318 systemUptime];
          v161 = v160;
          v320 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
          v370 = 0;
          v371 = &v370;
          v372 = 0x3032000000;
          v373 = sub_10001BCF8;
          v374 = sub_10001BD08;
          v375 = 0;
          if ([qword_100061658 length])
          {
            v162 = [ESContextualData alloc];
            v163 = qword_100061658;
            v164 = self->_taskToUse;
            applicationName2 = [v358 applicationName];
            v328 = [(ESContextualData *)v162 initWithConfiguration:v163 taskName:v164 applicationName:applicationName2];
          }

          else
          {
            applicationName2 = AFSiriLogContextSpeech;
            if (os_log_type_enabled(applicationName2, OS_LOG_TYPE_INFO))
            {
              *v389 = 136315394;
              v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
              v391 = 2112;
              v392 = 0.0;
              _os_log_impl(&_mh_execute_header, applicationName2, OS_LOG_TYPE_INFO, "%s Failed to get model root, error: %@", v389, 0x16u);
            }

            v328 = 0;
          }

          jitGrammar = [v358 jitGrammar];

          if (jitGrammar)
          {
            jitGrammar2 = [v358 jitGrammar];
            [v344 addObjectsFromArray:jitGrammar2];
          }

          v168 = [v344 count] | v328;
          v169 = v168 != 0;
          if (v168)
          {
            v170 = dispatch_group_create();
            if (self->_isHighPriority)
            {
              v171 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
            }

            else
            {
              v171 = 0;
            }

            v172 = dispatch_queue_create("jitDataProcessing", v171);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10002A6FC;
            block[3] = &unk_100055088;
            v362 = v328;
            selfCopy = self;
            v364 = v344;
            v365 = v338;
            v366 = v358;
            v367 = v349;
            v368 = v395;
            v369 = &v370;
            groupa = v170;
            dispatch_group_async(v170, v172, block);
          }

          else
          {
            groupa = 0;
          }

          inputOrigin = [v358 inputOrigin];

          if (inputOrigin)
          {
            v174 = objc_loadWeakRetained(&self->_recognizer);
            inputOrigin2 = [v358 inputOrigin];
            [v174 setInputOrigin:inputOrigin2];

            v176 = AFSiriLogContextSpeech;
            if (os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG))
            {
              [v358 inputOrigin];
              v307 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *v389 = 136315394;
              v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
              v391 = 2112;
              v392 = v307;
              _os_log_debug_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEBUG, "%s Set inputOrigin to: %@", v389, 0x16u);
            }
          }

          if (!self->_localMetrics)
          {
            v177 = objc_alloc_init(NSMutableDictionary);
            localMetrics = self->_localMetrics;
            self->_localMetrics = v177;
          }

          v339 = +[NSMutableArray array];
          v360 = 0;
          v359 = 0.0;
          v179 = self->_taskToUse;
          v180 = self->_applicationName;
          v181 = objc_loadWeakRetained(&self->_recognizer);
          v335 = [(ESConnection *)self personalizedLMWithTask:v179 applicationName:v180 recognizer:v181 weightOut:&v360 ageOut:&v359];

          if (v335)
          {
            [v339 addObject:v335];
            [qword_1000616B0 setPersonalizedLMUsed:1];
          }

          v183 = self->_localMetrics;
          LODWORD(v182) = v360;
          v184 = [NSNumber numberWithFloat:v182];
          [(NSMutableDictionary *)v183 setValue:v184 forKey:@"personalizedLMWeight"];

          v185 = self->_localMetrics;
          v186 = [NSNumber numberWithDouble:v359];
          [(NSMutableDictionary *)v185 setValue:v186 forKey:@"personalizedLMAge"];

          selfHelper2 = [v355 selfHelper];
          v188 = [NSNumber numberWithDouble:v359];
          [selfHelper2 setPersonalizedLmAgeInSec:v188];

          selfHelper3 = [v355 selfHelper];
          LODWORD(v190) = v360;
          v191 = [NSNumber numberWithFloat:v190];
          [selfHelper3 setPersonalizedLmWeight:v191];

          if (_os_feature_enabled_impl() && [(NSString *)self->_taskToUse isEqualToString:CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging])
          {
            v192 = qword_1000616B8;
            if (!qword_1000616B8)
            {
              initUaapLm = [[ESUaapLm alloc] initUaapLm];
              v194 = qword_1000616B8;
              qword_1000616B8 = initUaapLm;

              v192 = qword_1000616B8;
            }

            language11 = [v358 language];
            v196 = objc_loadWeakRetained(&self->_recognizer);
            v197 = [v192 readUaapLMsForLanguage:language11 recognizer:v196];

            [v339 addObjectsFromArray:v197];
          }

          v198 = objc_loadWeakRetained(&self->_recognizer);
          [v198 setExtraLmList:v339];

          v199 = objc_loadWeakRetained(&self->_recognizer);
          [v199 setDetectUtterances:1];

          v200 = objc_loadWeakRetained(&self->_recognizer);
          [v200 setConcatenateUtterances:{objc_msgSend(v358, "detectUtterances") ^ 1}];

          if ([v358 deliverEagerPackage])
          {
            v201 = objc_loadWeakRetained(&self->_recognizer);
            [v201 setDetectUtterances:0];

            v202 = objc_loadWeakRetained(&self->_recognizer);
            [v202 setConcatenateUtterances:0];

            v203 = AFSiriLogContextSpeech;
            if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
            {
              *v389 = 136315138;
              v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
              _os_log_debug_impl(&_mh_execute_header, v203, OS_LOG_TYPE_DEBUG, "%s Switching off UC/UD for this request", v389, 0xCu);
            }
          }

          v204 = objc_loadWeakRetained(&self->_recognizer);
          [v358 maximumRecognitionDuration];
          [v204 setMaximumRecognitionDuration:?];

          v205 = objc_loadWeakRetained(&self->_recognizer);
          [v205 setFarField:{objc_msgSend(v358, "farField")}];

          v206 = objc_loadWeakRetained(&self->_recognizer);
          [v206 setAllowUtteranceDelay:v341 & 1];

          v207 = objc_loadWeakRetained(&self->_recognizer);
          [v207 setFormatAcrossUtterances:(shouldHandleCapitalization | bOOLValue2) & 1];

          v208 = objc_loadWeakRetained(&self->_recognizer);
          [v208 setDisableAutoPunctuation:{objc_msgSend(v358, "enableAutoPunctuation") ^ 1}];

          v209 = objc_loadWeakRetained(&self->_recognizer);
          [v209 setRecognizeEmoji:{objc_msgSend(v358, "enableEmojiRecognition")}];

          v210 = objc_loadWeakRetained(&self->_recognizer);
          prefixText = [v358 prefixText];
          [v210 setLeftContextText:prefixText];

          v212 = objc_loadWeakRetained(&self->_recognizer);
          LOBYTE(prefixText) = objc_opt_respondsToSelector();

          if (prefixText)
          {
            v213 = objc_loadWeakRetained(&self->_recognizer);
            postfixText = [v358 postfixText];
            [v213 setRightContext:postfixText];
          }

          v215 = objc_loadWeakRetained(&self->_recognizer);
          v216 = objc_opt_respondsToSelector();

          if (v216)
          {
            v217 = objc_loadWeakRetained(&self->_recognizer);
            selectedText = [v358 selectedText];
            [v217 setSelectedText:selectedText];
          }

          v219 = objc_loadWeakRetained(&self->_recognizer);
          [v219 setEnableVoiceCommands:{objc_msgSend(v358, "enableVoiceCommands")}];

          if ([v358 enableVoiceCommands])
          {
            shouldGenerateVoiceCommandCandidates = 1;
          }

          else
          {
            shouldGenerateVoiceCommandCandidates = [v358 shouldGenerateVoiceCommandCandidates];
          }

          v221 = objc_loadWeakRetained(&self->_recognizer);
          [v221 setShouldGenerateVoiceCommandCandidates:shouldGenerateVoiceCommandCandidates];

          narrowband = [v358 narrowband];
          v223 = 16000;
          if (narrowband)
          {
            v223 = 8000;
          }

          self->_samplingRate = v223;
          codec = [v358 codec];
          if (codec)
          {
            codec2 = [v358 codec];
          }

          else
          {
            codec2 = &stru_100055AC8;
          }

          v225 = objc_loadWeakRetained(&self->_recognizer);
          activeConfiguration = [v225 activeConfiguration];

          v353 = [activeConfiguration copy];
          farFieldFilter = [v353 farFieldFilter];
          LOBYTE(v225) = farFieldFilter == 0;

          if ((v225 & 1) == 0)
          {
            farFieldFilter2 = [v353 farFieldFilter];
            v228 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v358 farField]);
            v229 = [farFieldFilter2 setByAddingObject:v228];
            [v353 setFarFieldFilter:v229];
          }

          samplingRateFilter = [v353 samplingRateFilter];
          v231 = samplingRateFilter == 0;

          if (!v231)
          {
            samplingRateFilter2 = [v353 samplingRateFilter];
            v233 = [NSNumber numberWithUnsignedInteger:self->_samplingRate];
            v234 = [samplingRateFilter2 setByAddingObject:v233];
            [v353 setSamplingRateFilter:v234];
          }

          taskTypeFilter = [v353 taskTypeFilter];
          v236 = taskTypeFilter == 0;

          if (!v236)
          {
            taskTypeFilter2 = [v353 taskTypeFilter];
            v238 = [taskTypeFilter2 setByAddingObject:self->_taskToUse];
            [v353 setTaskTypeFilter:v238];
          }

          [v353 setDeviceIdFilter:0];
          [v353 setAneContextFilter:0];
          [v353 setCpuContextFilter:0];
          [v353 setGpuContextFilter:0];
          v239 = AFSiriLogContextSpeech;
          if (os_log_type_enabled(v239, OS_LOG_TYPE_DEBUG))
          {
            sub_10002AA88(activeConfiguration);
            v305 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v306 = sub_10002AA88(v353);
            *v389 = 136315650;
            v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
            v391 = 2112;
            v392 = v305;
            v393 = 2112;
            v394 = v306;
            _os_log_debug_impl(&_mh_execute_header, v239, OS_LOG_TYPE_DEBUG, "%s Changing active configuration from \n%@ to \n%@", v389, 0x20u);
          }

          v240 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
          [v355 logActiveConfigUpdateStartedOrChangedWithTimeInTicks:v240];

          v241 = objc_loadWeakRetained(&self->_recognizer);
          [v241 setActiveConfiguration:v353];

          v242 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
          [v355 logActiveConfigUpdateEndedWithTimeInTicks:v242];

          v243 = objc_alloc_init(_EARSpeakerCodeWriter);
          speakerCodeWriter = self->_speakerCodeWriter;
          self->_speakerCodeWriter = v243;

          if (groupa)
          {
            v245 = v169;
          }

          else
          {
            v245 = 0;
          }

          if (v245 && !dispatch_group_wait(groupa, v159) && (v296 = *(*&v395[8] + 40)) != 0)
          {
            v330 = v296;
            v297 = AFSiriLogContextSpeech;
            if (os_log_type_enabled(v297, OS_LOG_TYPE_INFO))
            {
              v298 = COERCE_DOUBLE([v344 count]);
              v299 = [*(*&v395[8] + 40) length];
              *v389 = 136315650;
              v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
              v391 = 2048;
              v392 = v298;
              v393 = 2048;
              v394 = v299;
              _os_log_impl(&_mh_execute_header, v297, OS_LOG_TYPE_INFO, "%s Injected %lu jit strings or contextual data to recognizer, length: %lu", v389, 0x20u);
            }

            if (v371[5])
            {
              [v355 logJitLmeStartedOrChangedWithTimeInTicks:v320];
              [v355 logJitLmeEndedAndEndedTier1WithDialogContext:v344 timeInTicks:v371[5]];
              +[CESRUtilities hostTimeToSeconds:](CESRUtilities, "hostTimeToSeconds:", [v371[5] unsignedLongLongValue]);
              v301 = v300;
              v302 = AFSiriLogContextSpeech;
              if (os_log_type_enabled(v302, OS_LOG_TYPE_INFO))
              {
                *v389 = 136315394;
                v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
                v391 = 2050;
                v392 = v301 - v161;
                _os_log_impl(&_mh_execute_header, v302, OS_LOG_TYPE_INFO, "%s Duration spent in jit processing on critical path = %{public}lfs", v389, 0x16u);
              }
            }
          }

          else
          {
            v330 = 0;
          }

          v246 = objc_loadWeakRetained(&self->_recognizer);
          [v246 setJitProfileData:v330];

          v247 = objc_loadWeakRetained(&self->_recognizer);
          v248 = self->_speakerCodeWriter;
          language12 = [v358 language];
          v342 = [v247 runRecognitionWithResultStream:self speakerCodeWriter:v248 language:language12 task:self->_taskToUse samplingRate:self->_samplingRate];

          objc_storeStrong(&qword_100061638, v342);
          objc_storeWeak(&self->_audioBuffer, v342);
          if (infoCopy)
          {
            (infoCopy)[2](infoCopy, v336, 0);
          }

          self->_shouldStoreDictationAudioOnDevice = 0;
          task6 = [v358 task];
          v251 = [CESRUtilities isTaskDictationSpecific:task6];

          if (v251 && !self->_isSpeechAPIRequest)
          {
            v252 = +[CESRDictationOnDeviceSampling sharedManager];
            language13 = [v358 language];
            self->_shouldStoreDictationAudioOnDevice = [v252 isRequestSelectedForSamplingFromConfigForLanguage:language13];
          }

          v254 = AFSiriLogContextSpeech;
          if (os_log_type_enabled(v254, OS_LOG_TYPE_DEBUG))
          {
            *v389 = 136315138;
            v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
            _os_log_debug_impl(&_mh_execute_header, v254, OS_LOG_TYPE_DEBUG, "%s Audio storing from embeddedspeech not supported on this platform.", v389, 0xCu);
          }

          if (qword_1000616C0)
          {
            v255 = AFSiriLogContextFides;
            if (os_log_type_enabled(v255, OS_LOG_TYPE_DEBUG))
            {
              *v389 = 136315138;
              v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
              _os_log_debug_impl(&_mh_execute_header, v255, OS_LOG_TYPE_DEBUG, "%s Cancelling delayedBlock", v389, 0xCu);
            }

            dispatch_block_cancel(qword_1000616C0);
            v256 = qword_1000616C0;
            qword_1000616C0 = 0;
          }

          if (![(ESConnection *)self shouldWriteDictationRecord:self->_taskToUse])
          {
            goto LABEL_216;
          }

          v257 = AFSiriLogContextFides;
          if (os_log_type_enabled(v257, OS_LOG_TYPE_INFO))
          {
            [v358 dictationUIInteractionIdentifier];
            v258 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *v389 = 136315394;
            v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
            v391 = 2112;
            v392 = v258;
            _os_log_impl(&_mh_execute_header, v257, OS_LOG_TYPE_INFO, "%s Create DES record for Dictation with interactionId=%@", v389, 0x16u);
          }

          if ([(ESConnection *)self siriDataSharingOptedIn]&& self->_shouldStoreDictationAudioOnDevice)
          {
            language14 = [v358 language];
            v313 = self->_taskToUse;
            loggingContext = [v358 loggingContext];
            narrowband2 = [v358 narrowband];
            farField = [v358 farField];
            dictationUIInteractionIdentifier2 = [v358 dictationUIInteractionIdentifier];
            selfHelper4 = [v355 selfHelper];
            asrId2 = [selfHelper4 asrId];
            uUIDString = [asrId2 UUIDString];
            v265 = [CESRFidesASRRecord recordWithLanguage:language14 task:v313 context:loggingContext narrowband:narrowband2 farField:farField interactionIdentifier:dictationUIInteractionIdentifier2 asrSelfComponentIdentifier:uUIDString pluginId:@"com.apple.siri.speech-dictation-personalization" frequency:1];
            v266 = qword_1000616B0;
            qword_1000616B0 = v265;
          }

          else
          {
LABEL_216:
            language14 = qword_1000616B0;
            qword_1000616B0 = 0;
          }

          if (qword_1000616B0)
          {
            [qword_1000616B0 setApplicationName:*p_applicationName];
            profile5 = [v358 profile];

            if (profile5)
            {
              v268 = qword_1000616B0;
              profile6 = [v358 profile];
              [v268 setProfile:profile6];
            }

            else
            {
              if ([v139 count] != 1)
              {
                goto LABEL_221;
              }

              firstObject3 = [v139 firstObject];
              profile6 = [firstObject3 data];

              if (profile6)
              {
                v294 = AFSiriLogContextFides;
                if (os_log_type_enabled(v294, OS_LOG_TYPE_INFO))
                {
                  v295 = COERCE_DOUBLE([profile6 length]);
                  *v389 = 136315394;
                  v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
                  v391 = 2048;
                  v392 = v295;
                  _os_log_impl(&_mh_execute_header, v294, OS_LOG_TYPE_INFO, "%s Saving profile snapshot: %lu bytes", v389, 0x16u);
                }

                [qword_1000616B0 setProfile:profile6];
              }
            }
          }

LABEL_221:
          if (qword_1000616C8)
          {
            v270 = AFSiriLogContextFides;
            if (os_log_type_enabled(v270, OS_LOG_TYPE_DEBUG))
            {
              *v389 = 136315138;
              v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
              _os_log_debug_impl(&_mh_execute_header, v270, OS_LOG_TYPE_DEBUG, "%s Cancelling edit delayedBlock", v389, 0xCu);
            }

            dispatch_block_cancel(qword_1000616C8);
            v271 = qword_1000616C8;
            qword_1000616C8 = 0;
          }

          v272 = [ESBiomeAsrRecord alloc];
          selfHelper5 = [v355 selfHelper];
          asrId3 = [selfHelper5 asrId];
          uUIDString2 = [asrId3 UUIDString];
          dictationUIInteractionIdentifier3 = [v358 dictationUIInteractionIdentifier];
          language15 = [v358 language];
          task7 = [v358 task];
          v279 = [(ESBiomeAsrRecord *)v272 initWithAsrId:uUIDString2 interactionId:dictationUIInteractionIdentifier3 language:language15 taskName:task7 samplingRate:self->_samplingRate];
          v280 = qword_1000616D0;
          qword_1000616D0 = v279;

          if (qword_1000616D0)
          {
            v281 = AFSiriLogContextSpeech;
            if (os_log_type_enabled(v281, OS_LOG_TYPE_DEBUG))
            {
              [qword_1000616D0 asrId];
              v308 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              interactionId = [qword_1000616D0 interactionId];
              *v389 = 136315650;
              v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
              v391 = 2112;
              v392 = v308;
              v393 = 2112;
              v394 = interactionId;
              _os_log_debug_impl(&_mh_execute_header, v281, OS_LOG_TYPE_DEBUG, "%s Created edited record, asrId: %@, interactionId: %@", v389, 0x20u);
            }
          }

          if (self->_storeAudioData)
          {
            v282 = AFSiriLogContextSpeech;
            if (os_log_type_enabled(v282, OS_LOG_TYPE_ERROR))
            {
              *v389 = 136315138;
              v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
              _os_log_error_impl(&_mh_execute_header, v282, OS_LOG_TYPE_ERROR, "%s _storeAudioData should be nil. Critical Error. Please check.", v389, 0xCu);
            }

            storeAudioData = self->_storeAudioData;
            self->_storeAudioData = 0;
          }

          v284 = objc_alloc_init(ESBiomeRecord);
          biomeRecord = self->_biomeRecord;
          self->_biomeRecord = v284;

          [(ESBiomeRecord *)self->_biomeRecord setApplicationName:self->_applicationName];
          v286 = self->_biomeRecord;
          dictationUIInteractionIdentifier4 = [v358 dictationUIInteractionIdentifier];
          [(ESBiomeRecord *)v286 setInteractionId:dictationUIInteractionIdentifier4];

          [(ESBiomeRecord *)self->_biomeRecord setTaskName:self->_taskToUse];
          if (qword_1000616D8)
          {
            [qword_1000616D8 removeAllObjects];
          }

          else
          {
            v288 = objc_alloc_init(NSMutableDictionary);
            v289 = qword_1000616D8;
            qword_1000616D8 = v288;
          }

          v290 = AFSiriLogContextSpeech;
          v291 = v290;
          if (v346 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v290))
          {
            *v389 = 136315394;
            v390 = "SiriX";
            v391 = 2080;
            v392 = COERCE_DOUBLE("enableTelemetry=YES");
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v291, OS_SIGNPOST_INTERVAL_END, spid, "ES: Recognizer Init", "%s %s", v389, 0x16u);
          }

          [(ESConnection *)self _processBufferedAudioPackets];
          if (self->_bufferedAudioEnded)
          {
            v292 = objc_loadWeakRetained(&self->_audioBuffer);
            [v292 endAudio];

            self->_bufferedAudioEnded = 0;
          }

          +[ESConnection _cancelCooldownTimer];

          _Block_object_dispose(&v370, 8);
          _Block_object_dispose(v395, 8);

          _Block_object_dispose(buf, 8);
LABEL_242:
          v73 = v333;
LABEL_243:

          goto LABEL_244;
        }

LABEL_70:
        modelInfo = 0;
        goto LABEL_71;
      }
    }

    else
    {
    }

    v57 = qword_100061630;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = qword_100061660;
      if (qword_100061670)
      {
        v59 = qword_100061670;
      }

      else
      {
        v59 = @"(none)";
      }

      language16 = [v358 language];
      v61 = language16;
      *buf = 136316163;
      v62 = obj;
      if (!obj)
      {
        v62 = @"(none)";
      }

      *&buf[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
      *&buf[12] = 2114;
      *&buf[14] = v58;
      *&buf[22] = 2113;
      v401 = v59;
      *v402 = 2114;
      *&v402[2] = language16;
      *&v402[10] = 2113;
      *&v402[12] = v62;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%s Cached recognizer is for language: %{public}@, regionId: %{private}@, requesting recognizer for language: %{public}@, regionId: %{private}@", buf, 0x34u);
    }

    v63 = qword_1000616A0;
    qword_1000616A0 = 0;

    v64 = qword_100061660;
    language17 = [v358 language];
    LOBYTE(v64) = [v64 isEqualToString:language17];

    if ((v64 & 1) == 0)
    {
      v66 = +[SFEntitledAssetManager sharedInstance];
      [v66 refreshAssetSetWithConfig:v348 regionId:obj];
    }

    +[ESConnection _discardCachedRecognizer];
    goto LABEL_70;
  }

  v16 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Recognizer is busy", buf, 0xCu);
  }

  if (infoCopy)
  {
    v403 = NSLocalizedDescriptionKey;
    v404 = @"Recognizer is busy";
    v17 = [NSDictionary dictionaryWithObjects:&v404 forKeys:&v403 count:1];
    v18 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1100 userInfo:v17];
    infoCopy[2](infoCopy, 0, v18);
  }

  [(ESConnection *)self startRequestActivityWithCompletion:0];
LABEL_244:
}

- (void)adjustAppleTVLogLevelForSecureOfflineOnly:(BOOL)only
{
  onlyCopy = only;
  if (AFIsATV() && AFIsInternalInstall())
  {
    v4 = AFSiriLogContextSpeech;
    v5 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO);
    if (onlyCopy)
    {
      if (v5)
      {
        v6 = 136315138;
        v7 = "[ESConnection adjustAppleTVLogLevelForSecureOfflineOnly:]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Setting Quasar log level to WARN", &v6, 0xCu);
      }

      [_EARLogHelper setCustomQuasarLogLevel:2];
    }

    else
    {
      if (v5)
      {
        v6 = 136315138;
        v7 = "[ESConnection adjustAppleTVLogLevelForSecureOfflineOnly:]";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Settting Quasar log level to System Default", &v6, 0xCu);
      }

      +[_EARLogHelper setQuasarLogLevelToSystemDefault];
    }
  }
}

- (void)startSpeechRecognitionWithParameters:(id)parameters didStartHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002AEC8;
  v7[3] = &unk_100054FD0;
  handlerCopy = handler;
  v6 = handlerCopy;
  [(ESConnection *)self startSpeechRecognitionWithParameters:parameters didStartHandlerWithInfo:v7];
}

- (id)geoLMRegionIdWithLanguage:(id)language location:(id)location
{
  languageCopy = language;
  v6 = qword_100061660;
  locationCopy = location;
  if (![v6 isEqualToString:languageCopy] || (+[ESAssetManager sharedInstance](ESAssetManager, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "geoLmInitialized"), v8, (v9 & 1) == 0))
  {
    v10 = +[ESAssetManager sharedInstance];
    [v10 initializeGeoLMWithLanguage:languageCopy];
  }

  v11 = +[ESAssetManager sharedInstance];
  v12 = [v11 geoLMRegionIdForLocation:locationCopy];

  return v12;
}

- (BOOL)shouldWriteDictationRecord:(id)record
{
  recordCopy = record;
  v4 = AFDeviceHighestLanguageModelCapabilityIdentifier();
  v5 = AFSiriLogContextFides;
  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_DEBUG))
  {
    v9 = v5;
    v10 = 136315906;
    v11 = "[ESConnection shouldWriteDictationRecord:]";
    v12 = 1024;
    v13 = AFOfflineDictationCapable();
    v14 = 2112;
    v15 = recordCopy;
    v16 = 1024;
    v17 = v4 > 9;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s dictationCapable=%d task=%@ aneCapable=%d", &v10, 0x22u);
  }

  if (AFOfflineDictationCapable())
  {
    v6 = [CESRUtilities isTaskDictationSpecific:recordCopy];
    if (v4 > 9)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)siriDataSharingOptedIn
{
  v2 = +[AFPreferences sharedPreferences];
  siriDataSharingOptInStatus = [v2 siriDataSharingOptInStatus];

  return siriDataSharingOptInStatus == 1;
}

- (id)personalizedLMWithTask:(id)task applicationName:(id)name recognizer:(id)recognizer weightOut:(float *)out ageOut:(double *)ageOut
{
  taskCopy = task;
  nameCopy = name;
  recognizerCopy = recognizer;
  v14 = sysconf(71);
  if (v14 == -1)
  {
    handle = 0;
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
    v31 = 0;
    handle = 0;
    if (!getpwnam_r("mobile", &v32, &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14, &v31) && v31)
    {
      v16 = [NSString stringWithUTF8String:v32.pw_dir];
      v45[0] = v16;
      v45[1] = @"Library";
      v45[2] = @"/Assistant";
      v45[3] = @"SpeechPersonalizedLM";
      v17 = [NSArray arrayWithObjects:v45 count:4];
      v18 = [NSString pathWithComponents:v17];

      if (!v18)
      {
        goto LABEL_17;
      }

      v19 = qword_100061698;
      if (!qword_100061698)
      {
        v20 = objc_alloc_init(_EARLmLoader);
        v21 = qword_100061698;
        qword_100061698 = v20;

        v19 = qword_100061698;
      }

      v22 = [v19 loadForRecognitionWithDirectory:v18 recognizer:recognizerCopy task:taskCopy applicationName:nameCopy];
      if (v22)
      {
        v23 = v22;
        handle = [v22 handle];
        if (handle)
        {
          [v23 weight];
          v25 = v24;
          [v23 age];
          v27 = v26;
          if (out)
          {
            *out = v25;
          }

          if (ageOut)
          {
            *ageOut = v26;
          }

          v28 = qword_100061630;
          if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316419;
            v34 = "[ESConnection personalizedLMWithTask:applicationName:recognizer:weightOut:ageOut:]";
            v35 = 2113;
            v36 = v18;
            v37 = 2113;
            v38 = taskCopy;
            v39 = 2113;
            v40 = nameCopy;
            v41 = 2048;
            v42 = v25;
            v43 = 2048;
            v44 = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s PLM: Loaded path=%{private}@ task=%{private}@ applicationName=%{private}@ weight=%f age=%f", buf, 0x3Eu);
          }
        }
      }

      else
      {
LABEL_17:
        handle = 0;
      }
    }
  }

  return handle;
}

- (void)preheatSpeechRecognitionWithAssetConfig:(id)config preheatSource:(id)source modelOverrideURL:(id)l
{
  configCopy = config;
  sourceCopy = source;
  lCopy = l;
  dispatch_assert_queue_V2(qword_100061620);
  v11 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v74 = "[ESConnection preheatSpeechRecognitionWithAssetConfig:preheatSource:modelOverrideURL:]";
    v75 = 2114;
    v76 = sourceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Preheat for %{public}@", buf, 0x16u);
  }

  if (qword_100061638)
  {
    v12 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      [configCopy assetType];
      v14 = SFEntitledAssetTypeToString();
      *buf = 136315394;
      v74 = "[ESConnection preheatSpeechRecognitionWithAssetConfig:preheatSource:modelOverrideURL:]";
      v75 = 2114;
      v76 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Preheat for %{public}@ dismissed because recognition in progress", buf, 0x16u);
    }
  }

  else
  {
    +[ESConnection _clearPendingAnalyticsEvents];
    v66 = AFAnalyticsEventCreateCurrent();
    [ESConnection _addPendingAnalyticsEvent:?];
    +[ESConnection _clearPendingProfilerEvents];
    v64 = +[ESSelfHelper createPreheatStartedOrChangedEvent];
    [ESConnection _addPendingProfilerPreheatEvent:?];
    language = [configCopy language];
    v16 = objc_alloc_init(NSMutableDictionary);
    v68 = sub_10002A160(0, lCopy);
    obj = language;
    v17 = [qword_100061660 isEqualToString:language];
    if (qword_100061668)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    +[ESConnection _scheduleCooldownTimer];
    v63 = v18;
    v69 = v16;
    v67 = sourceCopy;
    if (v18 == 1)
    {
      [v16 setObject:@"AlreadyLoaded" forKey:@"Preheating"];
      v19 = qword_100061630;
      v20 = 0;
      if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v74 = "[ESConnection preheatSpeechRecognitionWithAssetConfig:preheatSource:modelOverrideURL:]";
        v75 = 2114;
        v76 = language;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Skipping preheat for %{public}@; recognizer already loaded", buf, 0x16u);
        v20 = 0;
      }
    }

    else
    {
      if (lCopy)
      {
        lCopy = [NSString stringWithFormat:@" with CustomModelURL %@", lCopy];
      }

      else
      {
        lCopy = &stru_100055AC8;
      }

      if (!qword_100061670)
      {
        v22 = +[CESRGeoLMRegionIDCache sharedInstance];
        v23 = [v22 lastUsedGeoLMRegionIdForLanguage:language];
        v24 = qword_100061670;
        qword_100061670 = v23;
      }

      if (qword_100061668)
      {
        if (([qword_100061660 isEqualToString:language] & 1) == 0)
        {
          v25 = +[SFEntitledAssetManager sharedInstance];
          [v25 refreshAssetSetWithConfig:configCopy regionId:qword_100061670];
        }

        v26 = qword_100061668;
        v27 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForNothing];
        [v26 setActiveConfiguration:v27];

        v28 = qword_100061668;
        qword_100061668 = 0;
      }

      allObjects = [qword_100061678 allObjects];
      v30 = [allObjects count];

      if (v30)
      {
        v31 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_FAULT))
        {
          v57 = qword_100061678;
          v58 = v31;
          allObjects2 = [v57 allObjects];
          v60 = [allObjects2 count];
          *buf = 136315394;
          v74 = "[ESConnection preheatSpeechRecognitionWithAssetConfig:preheatSource:modelOverrideURL:]";
          v75 = 2048;
          v76 = v60;
          _os_log_fault_impl(&_mh_execute_header, v58, OS_LOG_TYPE_FAULT, "%s sRecognizerTracker: Too many recognizers active during preheat: %lu", buf, 0x16u);
        }
      }

      isHighPriority = self->_isHighPriority;
      v71 = 0;
      v72 = &off_100058538;
      BYTE1(v62) = isHighPriority;
      LOBYTE(v62) = 0;
      v33 = [ESConnection _speechRecognizerWithAssetConfig:configCopy geoLMRegionId:qword_100061670 enableITN:1 overrides:0 modelOverrideURL:lCopy preloadModels:1 requestSource:sourceCopy enableParallelLoading:v62 isHighPriority:&v72 geoLMLoadedOut:&v71 error:?];
      v34 = v72;
      v35 = v71;
      v36 = qword_100061668;
      qword_100061668 = v33;

      if (!qword_100061678)
      {
        v37 = +[NSHashTable weakObjectsHashTable];
        v38 = qword_100061678;
        qword_100061678 = v37;
      }

      v20 = qword_100061668 == 0;
      v65 = v34;
      if (qword_100061668)
      {
        objc_storeStrong(&qword_100061660, language);
        objc_storeStrong(&qword_100061680, v68);
        byte_100061688 = [v34 BOOLValue];
        [qword_100061678 addObject:qword_100061668];
        modelInfo = [qword_100061668 modelInfo];
        version = [modelInfo version];

        [v69 setObject:@"Success" forKey:@"Preheating"];
        v41 = qword_100061630;
        if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
        {
          v42 = qword_100061670;
          *buf = 136316163;
          if (!qword_100061670)
          {
            v42 = @"(none)";
          }

          v74 = "[ESConnection preheatSpeechRecognitionWithAssetConfig:preheatSource:modelOverrideURL:]";
          v75 = 2114;
          v76 = language;
          v77 = 2114;
          v78 = v67;
          v79 = 2113;
          v80 = v42;
          v81 = 2114;
          v82 = lCopy;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s Preheated for language %{public}@, source %{public}@, regionId %{private}@%{public}@", buf, 0x34u);
        }
      }

      else
      {
        [v69 setObject:@"Failure" forKey:@"Preheating"];
        v43 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          v61 = qword_100061670;
          if (!qword_100061670)
          {
            v61 = @"(none)";
          }

          *buf = 136316419;
          v74 = "[ESConnection preheatSpeechRecognitionWithAssetConfig:preheatSource:modelOverrideURL:]";
          v75 = 2114;
          v76 = language;
          v77 = 2114;
          v78 = v67;
          v79 = 2113;
          v80 = v61;
          v81 = 2114;
          v82 = lCopy;
          v83 = 2112;
          v84 = v35;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s Could not preheat for language %{public}@, source %{public}@, regionId %{private}@%{public}@: %@", buf, 0x3Eu);
          version = &stru_100055AC8;
        }

        else
        {
          version = &stru_100055AC8;
        }
      }

      v44 = +[ESProfiler sharedProfiler];
      [v44 logPreheatOnlyEventsWithPowerLogEvent:@"preheatSpeechRecognitionWithAssetConfig" language:language modelVersion:version];

      v45 = +[ESAssetManager sharedInstance];
      [v45 purgeUnusedGeoLMAssetsForLanguage:language];
    }

    if (qword_100061690)
    {
      v46 = qword_100061690;
    }

    else
    {
      v46 = objc_alloc_init(NSMutableDictionary);
    }

    v47 = qword_100061690;
    qword_100061690 = v46;

    [CESRUtilities loadSpeechProfiles:qword_100061690 language:language];
    if (v20)
    {
      +[ESSelfHelper createPreheatFailedEvent];
    }

    else
    {
      [ESSelfHelper createPreheatEndedEventWithPreheatAlreadyDone:v63];
    }
    v48 = ;
    [ESConnection _addPendingProfilerPreheatEvent:v48];
    preheatContext = [v48 preheatContext];
    timestampInTicks = [preheatContext timestampInTicks];
    unsignedLongLongValue = [timestampInTicks unsignedLongLongValue];
    preheatContext2 = [v64 preheatContext];
    timestampInTicks2 = [preheatContext2 timestampInTicks];
    v54 = unsignedLongLongValue - [timestampInTicks2 unsignedLongLongValue];

    [CESRUtilities hostTimeToSeconds:v54];
    NSLog(@"Preheat time interval in seconds: %lf", v55);
    v56 = AFAnalyticsEventCreateCurrent();
    [ESConnection _addPendingAnalyticsEvent:v56];

    sourceCopy = v67;
  }
}

- (void)preheatSpeechRecognitionWithLanguage:(id)language modelOverrideURL:(id)l
{
  lCopy = l;
  languageCopy = language;
  v8 = [[SFEntitledAssetConfig alloc] initWithLanguage:languageCopy assetType:3];

  [(ESConnection *)self preheatSpeechRecognitionWithAssetConfig:v8 preheatSource:0 modelOverrideURL:lCopy];
}

- (void)writeUaapOovsForLanguage:(id)language bundleId:(id)id customProns:(id)prons newOovs:(id)oovs completion:(id)completion
{
  v13 = 0;
  completionCopy = completion;
  [CESRUaapData writeUaapOovsForLanguage:language bundleId:id customProns:prons newOovs:oovs error:&v13];
  v12 = v13;
  completionCopy[2](completionCopy, v12);
}

- (void)fetchModelPropertiesForAssetConfig:(id)config completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C09C;
  v7[3] = &unk_100054F88;
  completionCopy = completion;
  v6 = completionCopy;
  [(ESConnection *)self fetchModelInfoForAssetConfig:config triggerDownload:0 completion:v7];
}

- (void)startRequestActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  requestCompletion = self->_requestCompletion;
  if (requestCompletion)
  {
    requestCompletion[2]();
  }

  v5 = objc_retainBlock(completionCopy);
  v6 = self->_requestCompletion;
  self->_requestCompletion = v5;
}

- (id)_sLowPrioritySerialQueue
{
  dispatch_assert_queue_V2(qword_100061620);
  v2 = qword_100061640;
  if (!qword_100061640)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.siri.ESConnection.lowPrioritySerial", v4);
    v6 = qword_100061640;
    qword_100061640 = v5;

    v2 = qword_100061640;
  }

  return v2;
}

- (id)_redecodeQueue
{
  dispatch_assert_queue_V2(qword_100061620);
  redecodeQueue = self->_redecodeQueue;
  if (!redecodeQueue)
  {
    v4 = dispatch_queue_create("com.apple.siri.ESConnection.redecode", 0);
    v5 = self->_redecodeQueue;
    self->_redecodeQueue = v4;

    redecodeQueue = self->_redecodeQueue;
  }

  return redecodeQueue;
}

- (BOOL)_invalidated
{
  dispatch_assert_queue_not_V2(qword_100061620);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002C9DC;
  v4[3] = &unk_100054F60;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(qword_100061620, v4);
  LOBYTE(self) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return self;
}

- (id)_fidesEvalQueue
{
  dispatch_assert_queue_V2(qword_100061620);
  fidesEvalQueue = self->_fidesEvalQueue;
  if (!fidesEvalQueue)
  {
    v4 = dispatch_queue_create("com.apple.siri.ESConnection.fidesEval", 0);
    v5 = self->_fidesEvalQueue;
    self->_fidesEvalQueue = v4;

    fidesEvalQueue = self->_fidesEvalQueue;
  }

  return fidesEvalQueue;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_audioBuffer);
  [WeakRetained cancelRecognition];

  v4 = objc_loadWeakRetained(&self->_audioBuffer);
  v5 = qword_100061638;

  if (v4 == v5)
  {
    v6 = qword_100061638;
    qword_100061638 = 0;
  }

  [(NSXPCConnection *)self->_connection invalidate];
  v7 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[ESConnection dealloc]";
    v11 = 2114;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s %{public}@ deallocating", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = ESConnection;
  [(ESConnection *)&v8 dealloc];
}

- (ESConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v31.receiver = self;
  v31.super_class = ESConnection;
  v6 = [(ESConnection *)&v31 init];
  if (v6)
  {
    v7 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = +[NSXPCListener _UUID];
      *buf = 136315394;
      *&buf[4] = "[ESConnection initWithXPCConnection:]";
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Instantiating ESConnection %{public}@", buf, 0x16u);
    }

    v6->_resultCandidateId = 0;
    v6->_lastWordCount = 0;
    v6->_disableDeliveringAsrFeatures = 0;
    objc_storeStrong(&v6->_connection, connection);
    v10 = objc_alloc_init(NSMutableArray);
    bufferedAudioPackets = v6->_bufferedAudioPackets;
    v6->_bufferedAudioPackets = v10;

    v6->_bufferedAudioDataLength = 0;
    v12 = objc_alloc_init(NSMutableArray);
    bufferedRequestEagerResultData = v6->_bufferedRequestEagerResultData;
    v6->_bufferedRequestEagerResultData = v12;

    firstAudioPacketRecordedTimeInTicks = v6->_firstAudioPacketRecordedTimeInTicks;
    v6->_firstAudioPacketRecordedTimeInTicks = 0;

    v6->_firstAudioPacketReceivedTime = 2.22507386e-308;
    firstAudioPacketReceivedTimeInTicks = v6->_firstAudioPacketReceivedTimeInTicks;
    v6->_firstAudioPacketReceivedTimeInTicks = 0;

    v6->_firstAudioPacketTimeUntilFirstPartial = 2.22507386e-308;
    v6->_timeUntilRecognitionStartInMs = 0.0;
    v16 = objc_alloc_init(NSMutableArray);
    processedPacketsReadyUpstreamTimestampsBuffer = v6->_processedPacketsReadyUpstreamTimestampsBuffer;
    v6->_processedPacketsReadyUpstreamTimestampsBuffer = v16;

    v18 = objc_alloc_init(NSMutableArray);
    processedPacketsCumulativeAudioDurationBuffer = v6->_processedPacketsCumulativeAudioDurationBuffer;
    v6->_processedPacketsCumulativeAudioDurationBuffer = v18;

    v6->_partialResultCount = 0;
    v6->_partialResultOffset = 0;
    v20 = objc_alloc_init(NSMutableArray);
    partialResultsTimeList = v6->_partialResultsTimeList;
    v6->_partialResultsTimeList = v20;

    v22 = objc_alloc_init(NSMutableArray);
    firstSeenPartialResultTokens = v6->_firstSeenPartialResultTokens;
    v6->_firstSeenPartialResultTokens = v22;

    if ((AFDeviceSupportsSiriUOD() & 1) != 0 || AFOfflineDictationCapable())
    {
      v24 = +[AFPreferences sharedPreferences];
      infersQoSFromInstanceUUIDForEAR = [v24 infersQoSFromInstanceUUIDForEAR];

      if (infersQoSFromInstanceUUIDForEAR)
      {
        *buf = 0;
        *&buf[8] = 0;
        uuid_clear(buf);
        if (xpc_get_instance())
        {
          if (CoreEmbeddedSpeechRecognizerGetIsHighPriorityFromInstanceUUID())
          {
            v26 = AFSiriLogContextSpeech;
            if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
            {
              *v32 = 136315138;
              v33 = "[ESConnection initWithXPCConnection:]";
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s ASR: Using high priority configuration.", v32, 0xCu);
            }

            v6->_isHighPriority = 1;
          }
        }
      }
    }

    [(NSXPCConnection *)v6->_connection _setQueue:qword_100061620];
    objc_initWeak(buf, v6);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10002CEE4;
    v29[3] = &unk_100054F38;
    objc_copyWeak(&v30, buf);
    v27 = objc_retainBlock(v29);
    [connectionCopy setInterruptionHandler:v27];
    [connectionCopy setInvalidationHandler:v27];

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  return v6;
}

+ (void)didFinishModelInitializing:(id)initializing
{
  initializingCopy = initializing;
  v4 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v5 = qword_100061620;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D1BC;
  v8[3] = &unk_1000554A8;
  v9 = v4;
  v10 = initializingCopy;
  v6 = initializingCopy;
  v7 = v4;
  dispatch_async(v5, v8);
}

+ (void)didStartModelInitializing:(id)initializing
{
  initializingCopy = initializing;
  v4 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v5 = qword_100061620;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D350;
  v8[3] = &unk_1000554A8;
  v9 = v4;
  v10 = initializingCopy;
  v6 = initializingCopy;
  v7 = v4;
  dispatch_async(v5, v8);
}

+ (id)_languagesToCompileForAssetType:(unint64_t)type assetManager:(id)manager
{
  managerCopy = manager;
  v6 = SFEntitledAssetTypeToString();
  v7 = +[NSMutableSet set];
  if (type == 7)
  {
    v16 = [managerCopy installedLanguagesForAssetType:7];
    v17 = [v16 mutableCopy];

    v7 = v17;
  }

  else if (type == 3)
  {
    v8 = [managerCopy installationStatusForLanguagesWithAssetType:3];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    allKeys = [v8 allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [v8 objectForKey:v14];
          if (SFEntitledAssetStatusIsInstalled() && SFEntitledAssetStatusIsHighQuality())
          {
            [v7 addObject:v14];
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v18 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "+[ESConnection _languagesToCompileForAssetType:assetManager:]";
      v32 = 2112;
      v33 = v6;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s %@ assets do not support model compilation.", buf, 0x16u);
    }
  }

  v19 = [v7 count];
  v20 = qword_100061630;
  v21 = os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_23;
    }

    *buf = 136315650;
    v31 = "+[ESConnection _languagesToCompileForAssetType:assetManager:]";
    v32 = 2112;
    v33 = v6;
    v34 = 2112;
    v35 = v7;
    v22 = "%s %@ assets eligible for model compilation: %@";
    v23 = v20;
    v24 = 32;
  }

  else
  {
    if (!v21)
    {
      goto LABEL_23;
    }

    *buf = 136315394;
    v31 = "+[ESConnection _languagesToCompileForAssetType:assetManager:]";
    v32 = 2112;
    v33 = v6;
    v22 = "%s No %@ assets eligible for model compilation.";
    v23 = v20;
    v24 = 22;
  }

  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
LABEL_23:

  return v7;
}

+ (void)_clearPendingProfilerEvents
{
  dispatch_assert_queue_V2(qword_100061620);
  [qword_1000616A8 removeAllObjects];
  v2 = qword_1000616A8;
  qword_1000616A8 = 0;

  [qword_1000616F8 removeAllObjects];
  v3 = qword_1000616F8;
  qword_1000616F8 = 0;
}

+ (void)_addPendingProfilerANEModelInitializationEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(qword_100061620);
  v3 = qword_1000616F8;
  if (!qword_1000616F8)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = qword_1000616F8;
    qword_1000616F8 = v4;

    v3 = qword_1000616F8;
  }

  [v3 addObject:eventCopy];
}

+ (void)_addPendingProfilerPreheatEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(qword_100061620);
  v3 = qword_1000616A8;
  if (!qword_1000616A8)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = qword_1000616A8;
    qword_1000616A8 = v4;

    v3 = qword_1000616A8;
  }

  [v3 addObject:eventCopy];
}

+ (void)_clearPendingAnalyticsEvents
{
  dispatch_assert_queue_V2(qword_100061620);
  [qword_1000616F0 removeAllObjects];
  v2 = qword_1000616F0;
  qword_1000616F0 = 0;
}

+ (void)_sendPendingAnalyticsEvents
{
  dispatch_assert_queue_V2(qword_100061620);
  if ([qword_1000616F0 count])
  {
    v2 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v3 = qword_1000616F0;
      v4 = v2;
      v7 = 136315394;
      v8 = "+[ESConnection _sendPendingAnalyticsEvents]";
      v9 = 2048;
      v10 = [v3 count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Sending %lu events", &v7, 0x16u);
    }

    v5 = +[AFAnalytics sharedAnalytics];
    v6 = [qword_1000616F0 copy];
    [v5 logEvents:v6];
  }

  +[ESConnection _clearPendingAnalyticsEvents];
}

+ (void)_addPendingAnalyticsEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(qword_100061620);
  v3 = qword_1000616F0;
  if (!qword_1000616F0)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = qword_1000616F0;
    qword_1000616F0 = v4;

    v3 = qword_1000616F0;
  }

  [v3 addObject:eventCopy];
}

+ (void)prepareToExit
{
  v2 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[ESConnection prepareToExit]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Received termination signal. Cleaning up immediately", &v4, 0xCu);
  }

  v3 = qword_1000616E8;
  qword_1000616E8 = 0;
}

+ (void)_cachedRecognizerCleanUp
{
  dispatch_assert_queue_V2(qword_100061620);
  v3 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315138;
    v21 = "+[ESConnection _cachedRecognizerCleanUp]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v20, 0xCu);
  }

  v4 = qword_100061668;
  v5 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForNothing];
  [v4 setActiveConfiguration:v5];

  v6 = qword_100061668;
  qword_100061668 = 0;

  v7 = qword_100061660;
  qword_100061660 = 0;

  v8 = qword_100061680;
  qword_100061680 = 0;

  byte_100061688 = 0;
  v9 = qword_1000616B8;
  qword_1000616B8 = 0;

  [qword_100061698 invalidate];
  v10 = qword_100061690;
  qword_100061690 = 0;

  v11 = qword_100061658;
  qword_100061658 = 0;

  v12 = qword_100061670;
  qword_100061670 = 0;

  [self _cancelCooldownTimer];
  v13 = qword_1000616E8;
  qword_1000616E8 = 0;

  [self _clearPendingAnalyticsEvents];
  [self _clearPendingProfilerEvents];
  v14 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315138;
    v21 = "+[ESConnection _cachedRecognizerCleanUp]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Releasing all asset sets.", &v20, 0xCu);
  }

  v15 = +[SFEntitledAssetManager sharedInstance];
  [v15 releaseAssetSets];

  v16 = qword_1000616C0;
  qword_1000616C0 = 0;

  v17 = qword_1000616B0;
  qword_1000616B0 = 0;

  v18 = qword_1000616C8;
  qword_1000616C8 = 0;

  v19 = qword_1000616D0;
  qword_1000616D0 = 0;
}

+ (void)_cooldownTimerFired
{
  dispatch_assert_queue_V2(qword_100061620);
  v3 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "+[ESConnection _cooldownTimerFired]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (+[CESRUtilities cooldownDisabledForDevice])
  {
    v10 = 0;
    v4 = [CESRUtilities isCommonUserWithReason:&v10];
    v5 = v10;
    if (v4)
    {
      v6 = qword_100061630;
      if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v12 = "+[ESConnection _cooldownTimerFired]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s On-Device ASR: Cooldown is disabled.", buf, 0xCu);
      }

      +[ESConnection _replaceCachedRecognizerIfNeeded];
      [self _cancelCooldownTimer];
      goto LABEL_12;
    }

    v9 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "+[ESConnection _cooldownTimerFired]";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Overriding and cooling down for reason: %@", buf, 0x16u);
    }
  }

  else
  {
    v5 = 0;
  }

  if (qword_1000616A0)
  {
    v7 = +[ESAssetManager sharedInstance];
    v8 = [v7 installedGeoLMRegionSpecificAssetForLanguage:qword_100061660 regionId:qword_1000616A0 mainAssetConfig:qword_100061658];
  }

  [self _cachedRecognizerCleanUp];
LABEL_12:
}

+ (void)_cancelCooldownTimer
{
  dispatch_assert_queue_V2(qword_100061620);
  v2 = qword_1000616E0;
  if (qword_1000616E0)
  {
    v3 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "+[ESConnection _cancelCooldownTimer]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
      v2 = qword_1000616E0;
    }

    dispatch_source_cancel(v2);
    v4 = qword_1000616E0;
    qword_1000616E0 = 0;
  }
}

+ (void)_scheduleCooldownTimer
{
  dispatch_assert_queue_V2(qword_100061620);
  [self _cancelCooldownTimer];
  if (!qword_1000616E0)
  {
    if (!qword_1000616E8)
    {
      v3 = qword_100061630;
      if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "+[ESConnection _scheduleCooldownTimer]";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Acquired os_transaction during cooldown start", &v12, 0xCu);
      }

      v4 = os_transaction_create();
      v5 = qword_1000616E8;
      qword_1000616E8 = v4;
    }

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100061620);
    v7 = qword_1000616E0;
    qword_1000616E0 = v6;

    dispatch_source_set_event_handler(qword_1000616E0, &stru_1000551D8);
    v8 = +[ESConnection _cooldownTimerTimeoutSeconds];
    v9 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "+[ESConnection _scheduleCooldownTimer]";
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s On-Device ASR: Cooldown scheduled for %zus.", &v12, 0x16u);
    }

    v10 = qword_1000616E0;
    v11 = dispatch_time(0, 1000000000 * v8);
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(qword_1000616E0);
  }
}

+ (unint64_t)_cooldownTimerTimeoutSeconds
{
  if (!AFIsInternalInstall())
  {
    return 120;
  }

  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 120;
  }

  return unsignedIntegerValue;
}

+ (void)_replaceCachedRecognizerIfNeeded
{
  v2 = qword_1000616A0;
  if (qword_100061668)
  {
    v3 = qword_1000616A0 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      v5 = qword_100061670;
      if (!qword_100061670)
      {
        v5 = @"(none)";
      }

      *buf = 136315907;
      v21 = "+[ESConnection _replaceCachedRecognizerIfNeeded]";
      v22 = 2114;
      v23 = qword_100061660;
      v24 = 2113;
      v25 = v5;
      v26 = 2113;
      v27 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s On-Device ASR: Replacing the cached recognizer for language: %{public}@, regionId: %{private}@ to account for the pending regionId: %{private}@", buf, 0x2Au);
    }

    +[ESConnection _discardCachedRecognizer];
    v6 = [SFEntitledAssetConfig alloc];
    v7 = [v6 initWithLanguage:qword_100061660 assetType:3];
    v18 = 0;
    v19 = &off_100058538;
    LOWORD(v17) = 256;
    v8 = [ESConnection _speechRecognizerWithAssetConfig:v7 geoLMRegionId:qword_1000616A0 enableITN:1 overrides:qword_100061680 modelOverrideURL:0 preloadModels:1 requestSource:0 enableParallelLoading:v17 isHighPriority:&v19 geoLMLoadedOut:&v18 error:?];
    v9 = v19;
    v10 = v18;
    v11 = qword_100061668;
    qword_100061668 = v8;

    if (v10)
    {
      v12 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "+[ESConnection _replaceCachedRecognizerIfNeeded]";
        v22 = 2112;
        v23 = v10;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Error replacing the cached recognizer: %@", buf, 0x16u);
      }
    }

    objc_storeStrong(&qword_100061670, qword_1000616A0);
    byte_100061688 = [v9 BOOLValue];
    v13 = qword_1000616A0;
    qword_1000616A0 = 0;

    v14 = qword_100061678;
    if (!qword_100061678)
    {
      v15 = +[NSHashTable weakObjectsHashTable];
      v16 = qword_100061678;
      qword_100061678 = v15;

      v14 = qword_100061678;
    }

    [v14 addObject:qword_100061668];
  }
}

+ (void)_discardCachedRecognizer
{
  v2 = objc_autoreleasePoolPush();
  v3 = os_signpost_id_generate(AFSiriLogContextSpeech);
  v4 = AFSiriLogContextSpeech;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v19 = 134349056;
    v20 = mach_continuous_time();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "ES: Previous Recognizer Unload", "%{public, signpost.description:begin_time}llu", &v19, 0xCu);
  }

  v6 = qword_100061668;
  v7 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForNothing];
  [v6 setActiveConfiguration:v7];

  v8 = qword_100061668;
  qword_100061668 = 0;

  v9 = AFSiriLogContextSpeech;
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = mach_continuous_time();
    v19 = 134349056;
    v20 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v3, "ES: Previous Recognizer Unload", "%{public, signpost.description:end_time}llu", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  allObjects = [qword_100061678 allObjects];
  v13 = [allObjects count];

  if (v13)
  {
    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_FAULT))
    {
      v15 = qword_100061678;
      v16 = v14;
      allObjects2 = [v15 allObjects];
      v18 = [allObjects2 count];
      v19 = 136315394;
      v20 = "+[ESConnection _discardCachedRecognizer]";
      v21 = 2048;
      v22 = v18;
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s sRecognizerTracker: Too many recognizers active: %lu", &v19, 0x16u);
    }
  }
}

+ (id)_bestGuessTaskStringsFromPreheatSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:CoreEmbeddedSpeechRecognizerSourceAssistant])
  {
    v4 = AFIsHorseman();
    v5 = &CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging;
    if (v4)
    {
      v5 = &CoreEmbeddedSpeechRecognizerTaskBeto;
    }

    goto LABEL_4;
  }

  if ([sourceCopy isEqualToString:CoreEmbeddedSpeechRecognizerSourceDictation] && (AFIsHorseman() & 1) == 0)
  {
    v5 = &CoreEmbeddedSpeechRecognizerTaskDictation;
LABEL_4:
    v6 = [NSSet setWithObjects:*v5, 0];
    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)_speechRecognizerWithAssetConfig:(id)config geoLMRegionId:(id)id enableITN:(BOOL)n overrides:(id)overrides modelOverrideURL:(id)l preloadModels:(BOOL)models requestSource:(id)source enableParallelLoading:(BOOL)self0 isHighPriority:(BOOL)self1 geoLMLoadedOut:(id *)self2 error:(id *)self3
{
  modelsCopy = models;
  configCopy = config;
  idCopy = id;
  overridesCopy = overrides;
  lCopy = l;
  sourceCopy = source;
  language = [configCopy language];
  v19 = os_signpost_id_generate(AFSiriLogContextSpeech);
  v20 = AFSiriLogContextSpeech;
  v21 = v20;
  v130 = v19 - 1;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 136315394;
    v143 = "SiriX";
    v144 = 2080;
    v145 = "enableTelemetry=YES";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "ondevice_CreateRecognizer", "%s %s", buf, 0x16u);
  }

  v22 = os_signpost_id_generate(AFSiriLogContextSpeech);
  v23 = AFSiriLogContextSpeech;
  v24 = v23;
  v128 = v22 - 1;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v25 = mach_continuous_time();
    *buf = 134349056;
    v143 = v25;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "ES: Recognizer Create", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
  }

  spid = v19;
  v121 = v22;

  if (lCopy && AFIsInternalInstall())
  {
    path = [lCopy path];
    v136 = 0;
    v27 = 0;
    v28 = 0;
    if (!path)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v31 = +[SFEntitledAssetManager sharedInstance];
    [v31 refreshAssetSetWithConfig:configCopy regionId:idCopy];

    v32 = +[ESAssetManager sharedInstance];
    v141 = 0;
    v33 = [v32 installedModelInfoForAssetConfig:configCopy error:&v141];
    v28 = v141;

    path = [v33 objectForKey:@"quasarModelPath"];
    v136 = v33;
    v27 = [v33 objectForKey:@"type"];
    if (!path)
    {
LABEL_10:
      if (error)
      {
        v29 = v28;
        v30 = 0;
        *error = v28;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_84;
    }
  }

  v34 = +[NSProcessInfo processInfo];
  [v34 systemUptime];
  v36 = v35;

  v37 = [path stringByAppendingPathComponent:@"mini.json"];
  v38 = qword_100061658;
  qword_100061658 = v37;

  v135 = v27;
  if (([CESRUtilities isFilePathValid:qword_100061658]& 1) != 0)
  {
    v132 = objc_alloc_init(NSMutableDictionary);
    if (loading)
    {
      v39 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v143 = "+[ESConnection _speechRecognizerWithAssetConfig:geoLMRegionId:enableITN:overrides:modelOverrideURL:preloadModels:requestSource:enableParallelLoading:isHighPriority:geoLMLoadedOut:error:]";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s ASR: enable parallel loading", buf, 0xCu);
      }

      [v132 setValue:@"YES" forKey:@"enableParallelLoading"];
    }

    v119 = lCopy;
    if (modelsCopy)
    {
      v40 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
      v41 = [ESConnection _bestGuessTaskStringsFromPreheatSource:sourceCopy];
      if (v41)
      {
        v115 = idCopy;
        taskTypeFilter = [v40 taskTypeFilter];
        v43 = taskTypeFilter;
        if (taskTypeFilter)
        {
          v44 = taskTypeFilter;
        }

        else
        {
          v44 = +[NSSet set];
        }

        v56 = v44;

        v57 = [v56 setByAddingObjectsFromSet:v41];
        [v40 setTaskTypeFilter:v57];

        v58 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          v59 = v58;
          taskTypeFilter2 = [v40 taskTypeFilter];
          *buf = 136315395;
          v143 = "+[ESConnection _speechRecognizerWithAssetConfig:geoLMRegionId:enableITN:overrides:modelOverrideURL:preloadModels:requestSource:enableParallelLoading:isHighPriority:geoLMLoadedOut:error:]";
          v144 = 2113;
          v145 = taskTypeFilter2;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%s ASR: filtering for tasks: %{private}@", buf, 0x16u);
        }

        idCopy = v115;
      }

      if (sourceCopy)
      {
        [v132 setValue:sourceCopy forKey:@"preheatSource"];
      }
    }

    else
    {
      v40 = objc_alloc_init(_EARSpeechRecognitionActiveConfiguration);
      v51 = +[NSSet set];
      [v40 setSamplingRateFilter:v51];

      v52 = +[NSSet set];
      [v40 setTaskTypeFilter:v52];

      v53 = +[NSSet set];
      [v40 setFarFieldFilter:v53];

      [v40 setDeviceIdFilter:0];
      v54 = +[NSSet set];
      [v40 setAneContextFilter:v54];

      v55 = +[NSSet set];
      [v40 setCpuContextFilter:v55];

      v41 = +[NSSet set];
      [v40 setGpuContextFilter:v41];
    }

    v61 = _AFPreferencesValueForKeyWithContext();
    objc_opt_class();
    v62 = 0;
    if (objc_opt_isKindOfClass())
    {
      v62 = v61;
    }

    v63 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v143 = "+[ESConnection _speechRecognizerWithAssetConfig:geoLMRegionId:enableITN:overrides:modelOverrideURL:preloadModels:requestSource:enableParallelLoading:isHighPriority:geoLMLoadedOut:error:]";
      v144 = 2113;
      v145 = v62;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s ASR: taskForMemoryLock: %{private}@", buf, 0x16u);
    }

    if (v62)
    {
      [v132 setValue:v62 forKey:@"taskForMemoryLock"];
    }

    v118 = v62;
    v124 = objc_alloc_init(NSMutableArray);
    v64 = +[ESAssetManager sharedInstance];
    v65 = [v64 installedHammerConfigFileForLanguage:language];

    if (v65)
    {
      v66 = +[ESAssetManager sharedInstance];
      v67 = [v66 validateHammerConfigFile:v65];

      if (v67)
      {
        [v124 addObject:v65];
      }
    }

    if (idCopy)
    {
      v68 = +[ESAssetManager sharedInstance];
      v69 = [v68 installedGeoLMRegionSpecificAssetForLanguage:language regionId:idCopy mainAssetConfig:qword_100061658];

      if (v69)
      {
        [v124 addObject:v69];
        if (out)
        {
          *out = &off_100058520;
        }
      }
    }

    v70 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v143 = "+[ESConnection _speechRecognizerWithAssetConfig:geoLMRegionId:enableITN:overrides:modelOverrideURL:preloadModels:requestSource:enableParallelLoading:isHighPriority:geoLMLoadedOut:error:]";
      v144 = 2112;
      v145 = v124;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "%s Override json files=%@", buf, 0x16u);
    }

    v71 = AFIsATVOnly();
    v72 = _os_feature_enabled_impl();
    v73 = AFSiriLogContextSpeech;
    p_info = &OBJC_METACLASS___ESUserDataContactWord.info;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v76 = @"NO";
      if (v71)
      {
        v76 = @"YES";
      }

      *buf = 136315394;
      v143 = "+[ESConnection _speechRecognizerWithAssetConfig:geoLMRegionId:enableITN:overrides:modelOverrideURL:preloadModels:requestSource:enableParallelLoading:isHighPriority:geoLMLoadedOut:error:]";
      v144 = 2112;
      v145 = v76;
      _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "%s On-Device ASR: isSpellingUseCase: %@", buf, 0x16u);
      if (v71)
      {
        goto LABEL_52;
      }
    }

    else if (v71)
    {
LABEL_52:
      v75 = [_EARSpeechRecognizer alloc];
      v30 = [v75 initWithConfiguration:qword_100061658 useQuasarFormatter:1 activeConfiguration:v40];
LABEL_69:
      v27 = v135;
      if (v30)
      {
        [v30 setHighPriority:priority];
        [v30 setDetectUtterances:1];
        [v30 setRecognizeEagerCandidates:1];
        [v30 setConcatenateUtterances:1];
        [v30 setModelType:v135];
        [v30 setModelRoot:path];
        v89 = +[NSProcessInfo processInfo];
        [v89 systemUptime];
        v91 = v90 - v36;

        v92 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          v93 = p_info[203];
          *buf = 136315650;
          v143 = "+[ESConnection _speechRecognizerWithAssetConfig:geoLMRegionId:enableITN:overrides:modelOverrideURL:preloadModels:requestSource:enableParallelLoading:isHighPriority:geoLMLoadedOut:error:]";
          v144 = 2048;
          v145 = *&v91;
          v146 = 2112;
          v147 = v93;
          _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_INFO, "%s EmbeddedSpeechMetric: Created recognizer in %lf sec from %@", buf, 0x20u);
        }

        [AFAggregator logLocalRecognitionLoadedForLanguage:language duration:v91];
        v94 = AFSiriLogContextSpeech;
        v95 = v94;
        if (v130 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
        {
          *buf = 136315394;
          v143 = "SiriX";
          v144 = 2080;
          v145 = "enableTelemetry=YES";
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v95, OS_SIGNPOST_INTERVAL_END, spid, "ondevice_CreateRecognizer", "%s %s", buf, 0x16u);
        }

        v96 = AFSiriLogContextSpeech;
        v97 = v96;
        if (v128 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v96))
        {
          v129 = mach_continuous_time();
          v134 = [v132 valueForKey:@"keepANEModelLoaded"];
          uTF8String = [v134 UTF8String];
          v131 = [v132 valueForKey:@"enableParallelLoading"];
          uTF8String2 = [v131 UTF8String];
          [v132 valueForKey:@"preheatSource"];
          v99 = v98 = idCopy;
          uTF8String3 = [v99 UTF8String];
          v101 = [v132 valueForKey:@"taskForMemoryLock"];
          uTF8String4 = [v101 UTF8String];
          *buf = 134350338;
          v143 = v129;
          v144 = 2080;
          v145 = uTF8String;
          v146 = 2080;
          v147 = uTF8String2;
          v148 = 1024;
          v149 = modelsCopy;
          v150 = 2080;
          v151 = uTF8String3;
          v152 = 2080;
          v153 = uTF8String4;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v97, OS_SIGNPOST_INTERVAL_END, v121, "ES: Recognizer Create", "%{public, signpost.description:end_time}llu keepANEModelLoaded = %s, enableParallelLoading = %s, preloadModels = %u, preheatSource = %s, taskForMemoryLock = %s", buf, 0x3Au);

          idCopy = v98;
        }

        v103 = v30;
        v27 = v135;
      }

      else
      {
        v104 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v143 = "+[ESConnection _speechRecognizerWithAssetConfig:geoLMRegionId:enableITN:overrides:modelOverrideURL:preloadModels:requestSource:enableParallelLoading:isHighPriority:geoLMLoadedOut:error:]";
          v144 = 2114;
          v145 = qword_100061658;
          _os_log_error_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "%s Failed to create recognizer from %{public}@", buf, 0x16u);
        }

        if (error)
        {
          v105 = kAFAssistantErrorDomain;
          v154 = NSLocalizedDescriptionKey;
          [NSString stringWithFormat:@"Failed to create recognizer from %@", qword_100061658];
          v106 = v117 = idCopy;
          v155 = v106;
          v107 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v154 count:1];
          v108 = v105;
          v27 = v135;
          *error = [NSError errorWithDomain:v108 code:1105 userInfo:v107];

          idCopy = v117;
        }
      }

      v28 = 0;
      lCopy = v119;
      goto LABEL_84;
    }

    if (_os_feature_enabled_impl())
    {
      v114 = v72;
      v116 = idCopy;
      v77 = [path stringByAppendingPathComponent:@"TP/voice-commands"];
      v78 = [v77 stringByAppendingPathComponent:@"textfield-editing-suite.plist"];
      v79 = [NSURL fileURLWithPath:v78];
      v140 = 0;
      v125 = [NSMutableDictionary dictionaryWithContentsOfURL:v79 error:&v140];
      v80 = v140;

      v112 = v80;
      if (v80)
      {
        v81 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v143 = "+[ESConnection _speechRecognizerWithAssetConfig:geoLMRegionId:enableITN:overrides:modelOverrideURL:preloadModels:requestSource:enableParallelLoading:isHighPriority:geoLMLoadedOut:error:]";
          v144 = 2112;
          v145 = v78;
          v146 = 2112;
          v147 = 0;
          _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%s Voice Command: Failed to read editing suite plist at path: %@, error: %@", buf, 0x20u);
        }
      }

      v113 = v78;
      p_info = (&OBJC_METACLASS___ESUserDataContactWord + 32);
      if (!v125)
      {
        goto LABEL_63;
      }

      v82 = [[EARVoiceCommandSuite alloc] initWithPlistJSONDictionary:v125];
      if (!v82)
      {
        goto LABEL_63;
      }

      v83 = v82;
      v84 = [NSSet setWithObject:v82];
      [NSURL fileURLWithPath:v77 isDirectory:1];
      v86 = v85 = v77;
      v87 = [[EARVoiceCommandActiveSet alloc] initWithSuites:v84 resourceBaseURL:v86];

      v77 = v85;
      p_info = (&OBJC_METACLASS___ESUserDataContactWord + 32);

      if (!v87)
      {
LABEL_63:
        v88 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v143 = "+[ESConnection _speechRecognizerWithAssetConfig:geoLMRegionId:enableITN:overrides:modelOverrideURL:preloadModels:requestSource:enableParallelLoading:isHighPriority:geoLMLoadedOut:error:]";
          _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "%s Unable to locate or read dictation voice commands assets", buf, 0xCu);
        }

        v87 = 0;
      }

      idCopy = v116;
      v72 = v114;
    }

    else
    {
      v87 = 0;
    }

    LOBYTE(v111) = n;
    BYTE1(v110) = v72;
    LOBYTE(v110) = 1;
    v30 = [[_EARSpeechRecognizer alloc] initWithConfiguration:p_info[203] overrides:overridesCopy overrideConfigFiles:v124 language:language activeConfiguration:v40 modelLoadingOptions:v132 enableSpeakerCodeTraining:v110 supportEmojiRecognition:v87 voiceCommandActiveSet:self modelContextDelegate:v111 enableItn:?];

    goto LABEL_69;
  }

  v45 = lCopy;
  v46 = kAFAssistantErrorDomain;
  v156 = NSLocalizedDescriptionKey;
  qword_100061658 = [NSString stringWithFormat:@"No file at path: %@", qword_100061658];
  v157 = qword_100061658;
  v48 = [NSDictionary dictionaryWithObjects:&v157 forKeys:&v156 count:1];
  v49 = [NSError errorWithDomain:v46 code:600 userInfo:v48];

  v50 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v143 = "+[ESConnection _speechRecognizerWithAssetConfig:geoLMRegionId:enableITN:overrides:modelOverrideURL:preloadModels:requestSource:enableParallelLoading:isHighPriority:geoLMLoadedOut:error:]";
    v144 = 2112;
    v145 = v49;
    _os_log_fault_impl(&_mh_execute_header, v50, OS_LOG_TYPE_FAULT, "%s %@", buf, 0x16u);
  }

  v28 = 0;
  v30 = 0;
  lCopy = v45;
  v27 = v135;
LABEL_84:

  return v30;
}

+ (void)captureESStartTimeInTicks
{
  if (qword_100061648 != -1)
  {
    dispatch_once(&qword_100061648, &stru_100054FA8);
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = dispatch_queue_create("com.apple.siri.ESConnection", 0);
    v3 = qword_100061620;
    qword_100061620 = v2;

    qword_100061628 = dispatch_get_global_queue(9, 0);

    _objc_release_x1();
  }
}

@end