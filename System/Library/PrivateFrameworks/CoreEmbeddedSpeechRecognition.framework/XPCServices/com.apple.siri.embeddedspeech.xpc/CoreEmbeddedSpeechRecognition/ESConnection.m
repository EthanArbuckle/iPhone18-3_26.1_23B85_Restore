@interface ESConnection
+ (id)_bestGuessTaskStringsFromPreheatSource:(id)a3;
+ (id)_languagesToCompileForAssetType:(unint64_t)a3 assetManager:(id)a4;
+ (id)_speechRecognizerWithAssetConfig:(id)a3 geoLMRegionId:(id)a4 enableITN:(BOOL)a5 overrides:(id)a6 modelOverrideURL:(id)a7 preloadModels:(BOOL)a8 requestSource:(id)a9 enableParallelLoading:(BOOL)a10 isHighPriority:(BOOL)a11 geoLMLoadedOut:(id *)a12 error:(id *)a13;
+ (unint64_t)_cooldownTimerTimeoutSeconds;
+ (void)_addPendingAnalyticsEvent:(id)a3;
+ (void)_addPendingProfilerANEModelInitializationEvent:(id)a3;
+ (void)_addPendingProfilerPreheatEvent:(id)a3;
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
+ (void)didFinishModelInitializing:(id)a3;
+ (void)didStartModelInitializing:(id)a3;
+ (void)initialize;
+ (void)prepareToExit;
- (BOOL)_invalidated;
- (BOOL)shouldWriteDictationRecord:(id)a3;
- (BOOL)siriDataSharingOptedIn;
- (ESConnection)initWithXPCConnection:(id)a3;
- (id)_audioDataPostRecognitionStart:(id)a3;
- (id)_fidesEvalQueue;
- (id)_modelRootWithAssetConfig:(id)a3 modelOverridePath:(id)a4 overrides:(id)a5 error:(id *)a6;
- (id)_packetReadyUpstreamTimestampsFromAudioTime:(float)a3;
- (id)_recordedTimestampFromAudioTime:(float)a3;
- (id)_redecodeQueue;
- (id)_sLowPrioritySerialQueue;
- (id)dummyResultPackage:(id)a3;
- (id)geoLMRegionIdWithLanguage:(id)a3 location:(id)a4;
- (id)personalizedLMWithTask:(id)a3 applicationName:(id)a4 recognizer:(id)a5 weightOut:(float *)a6 ageOut:(double *)a7;
- (id)statusForError:(id)a3;
- (void)_processAudioPacket:(id)a3;
- (void)_processBufferedAudioPackets;
- (void)_scheduleCacheResetTimer:(id)a3;
- (void)_scheduleCompilationTimerForAssetType:(unint64_t)a3 completion:(id)a4;
- (void)_writeDESRecord:(id *)a3 oneRecordPerDay:(BOOL)a4;
- (void)addAudioPacket:(id)a3 packetRecordedTime:(id)a4 packetReadyUpstreamTime:(id)a5;
- (void)adjustAppleTVLogLevelForSecureOfflineOnly:(BOOL)a3;
- (void)compileAllAssetsWithType:(unint64_t)a3 completion:(id)a4;
- (void)compilePrimaryAssistantAssetWithCompletion:(id)a3;
- (void)createSpeechProfileWithLanguage:(id)a3 modelOverridePath:(id)a4 JSONData:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)deleteAllDESRecordsForDictationPersonalizationWithCompletion:(id)a3;
- (void)fetchModelPropertiesForAssetConfig:(id)a3 completion:(id)a4;
- (void)finishAudio;
- (void)forceCooldownIfIdleWithCompletion:(id)a3;
- (void)invalidatePersonalizedLM;
- (void)invalidateUaapLm;
- (void)pauseRecognition;
- (void)preheatSpeechRecognitionWithAssetConfig:(id)a3 preheatSource:(id)a4 modelOverrideURL:(id)a5;
- (void)preheatSpeechRecognitionWithLanguage:(id)a3 modelOverrideURL:(id)a4;
- (void)processPartialResultMetricsWithTokens:(id)a3 preITNTokens:(id)a4 timestamp:(double)a5;
- (void)purgeInstalledAssetsExceptLanguages:(id)a3 assetType:(unint64_t)a4 completion:(id)a5;
- (void)purgeInstalledAssetsExceptLanguages:(id)a3 completion:(id)a4;
- (void)readProfileAndUserDataWithLanguage:(id)a3 allowOverride:(BOOL)a4 completion:(id)a5;
- (void)redecodeWithAudioDatas:(id)a3 language:(id)a4 task:(id)a5 samplingRate:(unint64_t)a6 completion:(id)a7;
- (void)removePersonalizedLMForFidesOnly:(BOOL)a3 completion:(id)a4;
- (void)requestEagerResult;
- (void)resetCacheWithCompletion:(id)a3;
- (void)resumeRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5;
- (void)runCorrectedTextEvaluationWithAudioDatas:(id)a3 recordDatas:(id)a4 language:(id)a5 samplingRate:(unint64_t)a6 caseSensitive:(BOOL)a7 skipLME:(BOOL)a8 wordSenseAccessListSet:(id)a9 completion:(id)a10;
- (void)runEvaluationWithDESRecordDatas:(id)a3 language:(id)a4 recipe:(id)a5 attachments:(id)a6 fidesPersonalizedLMPath:(id)a7 fidesPersonalizedLMTrainingAsset:(id)a8 scrubResult:(BOOL)a9 completion:(id)a10;
- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4;
- (void)speechRecognizer:(id)a3 didProcessAudioDuration:(double)a4;
- (void)speechRecognizer:(id)a3 didProduceEndpointFeaturesWithWordCount:(int64_t)a4 trailingSilenceDuration:(int64_t)a5 eosLikelihood:(double)a6 pauseCounts:(id)a7 silencePosterior:(double)a8 processedAudioDurationInMilliseconds:(int64_t)a9 acousticEndpointerScore:(double)a10;
- (void)speechRecognizer:(id)a3 didProduceLoggablePackage:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizeFinalResultCandidatePackage:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizeFinalResultPackage:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizePartialResultPackage:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizeRawEagerRecognitionCandidate:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizeVoiceCommandCandidatePackage:(id)a4;
- (void)speechRecognizer:(id)a3 didReportStatus:(unint64_t)a4 statusContext:(id)a5;
- (void)startRequestActivityWithCompletion:(id)a3;
- (void)startSpeechRecognitionWithParameters:(id)a3 didStartHandler:(id)a4;
- (void)startSpeechRecognitionWithParameters:(id)a3 didStartHandlerWithInfo:(id)a4;
- (void)stopAudioDecoding;
- (void)updateSpeechProfileWithLanguage:(id)a3 modelOverridePath:(id)a4 existingProfile:(id)a5 existingAssetPath:(id)a6 completion:(id)a7;
- (void)writeUaapOovsForLanguage:(id)a3 bundleId:(id)a4 customProns:(id)a5 newOovs:(id)a6 completion:(id)a7;
@end

@implementation ESConnection

- (void)speechRecognizer:(id)a3 didRecognizeRawEagerRecognitionCandidate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (AFDeviceSupportsSiriUOD())
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000168CC;
    v14[3] = &unk_100055660;
    v8 = v15;
    v15[0] = v7;
    v15[1] = self;
    v9 = v7;
    [v6 getFormatterWithBlock:v14];
  }

  else
  {
    v10 = qword_100061620;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000169A8;
    v12[3] = &unk_1000554A8;
    v8 = v13;
    v13[0] = v7;
    v13[1] = self;
    v11 = v7;
    dispatch_async(v10, v12);
  }
}

- (void)speechRecognizer:(id)a3 didReportStatus:(unint64_t)a4 statusContext:(id)a5
{
  v6 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v5 = +[ESProfiler sharedProfiler];
  [v5 logFrameProcessingReadyWithTimeInTicks:v6];
}

- (void)speechRecognizer:(id)a3 didProcessAudioDuration:(double)a4
{
  v6 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v7 = qword_100061620;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016D5C;
  block[3] = &unk_100055548;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_100061620;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016F34;
  block[3] = &unk_1000555B0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (id)statusForError:(id)a3
{
  v3 = @"RECOGNITION_SUCCESS";
  if (a3)
  {
    v4 = a3;
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

    v10 = [v4 code];
    v11 = [NSNumber numberWithInteger:v10];
    v3 = [v9 objectForKey:v11];
  }

  return v3;
}

- (void)speechRecognizer:(id)a3 didRecognizeFinalResultPackage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_100061620;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018210;
  block[3] = &unk_1000555B0;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)speechRecognizer:(id)a3 didRecognizeFinalResultCandidatePackage:(id)a4
{
  v5 = a4;
  v6 = qword_100061620;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100018C2C;
  v8[3] = &unk_1000554A8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (id)dummyResultPackage:(id)a3
{
  v4 = a3;
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
  v17 = [v4 isFinal];
  [v4 utteranceStart];
  v19 = v18;
  LOBYTE(v14) = [v4 recognitionPaused];

  LOBYTE(v22) = v14;
  v20 = [v16 initWithRecognition:v15 unfilteredRecognition:v15 rawRecognition:v15 audioAnalytics:0 isFinal:v17 utteranceStart:0 latticeMitigatorResult:v19 recognitionPaused:v22];

  return v20;
}

- (void)speechRecognizer:(id)a3 didRecognizeVoiceCommandCandidatePackage:(id)a4
{
  v5 = a4;
  v6 = qword_100061620;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000190DC;
  v8[3] = &unk_1000554A8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)speechRecognizer:(id)a3 didRecognizePartialResultPackage:(id)a4
{
  v5 = a4;
  v6 = +[NSProcessInfo processInfo];
  [v6 systemUptime];
  v8 = v7;

  v9 = qword_100061620;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000193B0;
  block[3] = &unk_100055548;
  v12 = v5;
  v13 = self;
  v14 = v8;
  v10 = v5;
  dispatch_async(v9, block);
}

- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSProcessInfo processInfo];
  [v8 systemUptime];
  v10 = v9;

  v11 = qword_100061620;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001962C;
  v14[3] = &unk_100055520;
  v15 = v7;
  v16 = v6;
  v17 = self;
  v18 = v10;
  v12 = v6;
  v13 = v7;
  dispatch_async(v11, v14);
}

- (void)processPartialResultMetricsWithTokens:(id)a3 preITNTokens:(id)a4 timestamp:(double)a5
{
  v8 = a3;
  v9 = qword_100061620;
  v10 = a4;
  dispatch_assert_queue_V2(v9);
  v11 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 136315394;
    v33 = "[ESConnection processPartialResultMetricsWithTokens:preITNTokens:timestamp:]";
    v34 = 2048;
    v35 = COERCE_DOUBLE([v8 count]);
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
      v35 = a5 - v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s EmbeddedSpeechMetric: first audio packet recorded to first partial result = %lf secs", buf, 0x16u);

      v13 = AFSiriLogContextSpeech;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = a5 - self->_firstAudioPacketTimeUntilFirstPartial;
      *buf = 136315394;
      v33 = "[ESConnection processPartialResultMetricsWithTokens:preITNTokens:timestamp:]";
      v34 = 2048;
      v35 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s EmbeddedSpeechMetric: first audio packet received to first partial result = %lf secs", buf, 0x16u);
    }

    self->_firstAudioPacketTimeUntilFirstPartial = 0.0;
  }

  partialResultsTimeList = self->_partialResultsTimeList;
  v19 = [NSNumber numberWithDouble:a5];
  [(NSMutableArray *)partialResultsTimeList addObject:v19];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100019AFC;
  v31[3] = &unk_1000554F8;
  v31[4] = self;
  [v10 enumerateObjectsUsingBlock:v31];

  v20 = [v8 count];
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
  [v8 enumerateObjectsUsingBlock:&v26];
  v23 = [ESProfiler sharedProfiler:v26];
  v24 = [NSNumber numberWithInteger:v21];
  v25 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  [v23 logPartialResultGenerated:v22 ofSize:v24 timeInTicks:v25];

  ++self->_partialResultCount;
}

- (void)speechRecognizer:(id)a3 didProduceLoggablePackage:(id)a4
{
  v5 = a4;
  v6 = qword_100061620;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100019D4C;
  v8[3] = &unk_1000554A8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)speechRecognizer:(id)a3 didProduceEndpointFeaturesWithWordCount:(int64_t)a4 trailingSilenceDuration:(int64_t)a5 eosLikelihood:(double)a6 pauseCounts:(id)a7 silencePosterior:(double)a8 processedAudioDurationInMilliseconds:(int64_t)a9 acousticEndpointerScore:(double)a10
{
  v17 = a7;
  v18 = v17;
  if (!self->_disableDeliveringAsrFeatures)
  {
    v19 = qword_100061620;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001A8CC;
    v20[3] = &unk_1000554D0;
    v23 = a4;
    v24 = a5;
    v25 = a6;
    v26 = a8;
    v27 = a10;
    v21 = v17;
    v22 = self;
    v28 = a9;
    dispatch_async(v19, v20);
  }
}

- (void)_writeDESRecord:(id *)a3 oneRecordPerDay:(BOOL)a4
{
  if (*a3)
  {
    if ([*a3 hasData] && (objc_msgSend(*a3, "hasRecognizedAnything") & 1) != 0)
    {
      v6 = *a3;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10001ABC0;
      v16[3] = &unk_100055480;
      v18 = a4;
      v17 = v6;
      v7 = v6;
      v8 = objc_retainBlock(v16);
      (v8[2])(v8, v9, v10, v11);
      v12 = *a3;
      *a3 = 0;
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

      v14 = *a3;
      *a3 = 0;
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

- (void)forceCooldownIfIdleWithCompletion:(id)a3
{
  v3 = a3;
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

  if (v3)
  {
    v3[2](v3, v5 == 0);
  }
}

- (void)resumeRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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

    [qword_100061668 resumeRecognitionWithLeftContext:v7 rightContext:v8 selectedText:v9];
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

- (void)deleteAllDESRecordsForDictationPersonalizationWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    v7 = [BMStreamDatastorePruner alloc];
    v8 = +[BMStoreConfig newRestrictedStreamDefaultConfiguration];
    v9 = [v7 initWithStream:v6 config:v8];

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

  [CESRFidesASRRecord deleteAllRecordsForPlugin:@"com.apple.siri.speech-dictation-personalization" completion:v3];
}

- (void)removePersonalizedLMForFidesOnly:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  v6 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v7 = [v6 firstObject];

  v19[0] = v7;
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
  if (!a3)
  {
    v14[0] = v7;
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

  if (v5)
  {
    v5[2](v5);
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

- (void)compilePrimaryAssistantAssetWithCompletion:(id)a3
{
  v4 = a3;
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
    v7 = [v6 language];

    v8 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v62 = "[ESConnection compilePrimaryAssistantAssetWithCompletion:]";
      v63 = 2112;
      v64 = v41;
      v65 = 2112;
      v66 = v7;
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
            v18 = [(ESConnection *)self _sLowPrioritySerialQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10001BD10;
            block[3] = &unk_100055430;
            v19 = v41;
            v43 = v19;
            v20 = v7;
            v44 = v20;
            v45 = v14;
            v48 = &v49;
            v47 = v4;
            v21 = v17;
            v46 = v21;
            dispatch_async(v18, block);

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

          v23 = [NSString stringWithFormat:@"No accessible config for the primary %@ asset: %@", v41, v7];
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
            if (!v4)
            {
              goto LABEL_24;
            }
          }

          else if (!v4)
          {
LABEL_24:

            goto LABEL_25;
          }

          (*(v4 + 2))(v4, v50[5]);
          goto LABEL_24;
        }

        v23 = [NSString stringWithFormat:@"The primary %@ asset: %@, is ineligible for compilation.", v41, v7];
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
          if (!v4)
          {
            goto LABEL_25;
          }
        }

        else if (!v4)
        {
LABEL_25:

          goto LABEL_26;
        }

        (*(v4 + 2))(v4, v50[5]);
        goto LABEL_25;
      }
    }

    v23 = [NSString stringWithFormat:@"No accessible root path for the primary %@ asset: %@", v41, v7];
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
      if (!v4)
      {
        goto LABEL_26;
      }
    }

    else if (!v4)
    {
LABEL_26:

      goto LABEL_27;
    }

    (*(v4 + 2))(v4, v50[5]);
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
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v4)
  {
LABEL_16:
    (*(v4 + 2))(v4, v50[5]);
  }

LABEL_17:
  v23 = @"No language for the current user session.";
LABEL_27:
  _Block_object_dispose(&v49, 8);
}

- (void)compileAllAssetsWithType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
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

    [(ESConnection *)self _scheduleCompilationTimerForAssetType:a3 completion:v6];
  }

  else
  {
    v9 = +[ESProfiler sharedProfiler];
    [v9 logAssetsCompilationEventsWithPowerLogEvent:@"compileAllAssetsWithCompletion"];

    v10 = objc_alloc_init(SFEntitledAssetManager);
    v11 = [ESConnection _languagesToCompileForAssetType:a3 assetManager:v10];
    if ([v11 count])
    {
      v35 = self;
      v36 = v6;
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
            v16 = [[SFEntitledAssetConfig alloc] initWithLanguage:v15 assetType:a3];
            v17 = [v10 installedAssetWithConfig:v16];
            if (v17 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 fileExistsAtPath:v17], v18, (v19 & 1) != 0))
            {
              v20 = v12;
              v21 = v10;
              v22 = [SFEntitledAssetManager jsonFilenameForAssetType:a3];
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
      v29 = [(ESConnection *)v35 _sLowPrioritySerialQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001C510;
      block[3] = &unk_100055408;
      v30 = v38;
      v42 = v30;
      v31 = v37;
      v43 = v31;
      v6 = v36;
      v45 = v36;
      v32 = v28;
      v44 = v32;
      dispatch_async(v29, block);

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

    else if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

- (void)resetCacheWithCompletion:(id)a3
{
  v4 = a3;
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

    [(ESConnection *)self _scheduleCacheResetTimer:v4];
  }

  else
  {
    +[ESConnection _cachedRecognizerCleanUp];
    v4[2](v4, 0);
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

- (void)purgeInstalledAssetsExceptLanguages:(id)a3 assetType:(unint64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = qword_100061628;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CB88;
  block[3] = &unk_1000553B8;
  v14 = v8;
  v15 = a4;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)purgeInstalledAssetsExceptLanguages:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_100061628;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001CD58;
  v10[3] = &unk_100055190;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

- (void)runEvaluationWithDESRecordDatas:(id)a3 language:(id)a4 recipe:(id)a5 attachments:(id)a6 fidesPersonalizedLMPath:(id)a7 fidesPersonalizedLMTrainingAsset:(id)a8 scrubResult:(BOOL)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  v23 = [(ESConnection *)self _fidesEvalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D038;
  block[3] = &unk_100055340;
  v32 = v18;
  v33 = v17;
  v34 = self;
  v35 = v20;
  v36 = v21;
  v37 = v16;
  v40 = a9;
  v38 = v19;
  v39 = v22;
  v24 = v22;
  v25 = v19;
  v26 = v16;
  v27 = v21;
  v28 = v20;
  v29 = v17;
  v30 = v18;
  dispatch_async(v23, block);
}

- (id)_modelRootWithAssetConfig:(id)a3 modelOverridePath:(id)a4 overrides:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10 && AFIsInternalInstall())
  {
    v12 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[ESConnection _modelRootWithAssetConfig:modelOverridePath:overrides:error:]";
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Set model root to %@", buf, 0x16u);
    }

    v13 = v10;
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
    v13 = [v16 installedQuasarModelPathForAssetConfig:v9 error:&v20];
    v14 = v20;

    if (!v13)
    {
      if (a6)
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

        *a6 = [NSError errorWithDomain:v17 code:600 userInfo:v18];
        if (v14)
        {
        }
      }

      v13 = 0;
    }
  }

  return v13;
}

- (void)runCorrectedTextEvaluationWithAudioDatas:(id)a3 recordDatas:(id)a4 language:(id)a5 samplingRate:(unint64_t)a6 caseSensitive:(BOOL)a7 skipLME:(BOOL)a8 wordSenseAccessListSet:(id)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a9;
  v20 = a10;
  v21 = [(ESConnection *)self _fidesEvalQueue];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000223C0;
  v27[3] = &unk_1000552C8;
  v28 = v18;
  v29 = self;
  v30 = v17;
  v31 = v16;
  v33 = v20;
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v32 = v19;
  v22 = v19;
  v23 = v16;
  v24 = v17;
  v25 = v20;
  v26 = v18;
  dispatch_async(v21, v27);
}

- (void)redecodeWithAudioDatas:(id)a3 language:(id)a4 task:(id)a5 samplingRate:(unint64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(ESConnection *)self _redecodeQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100023FC0;
  v21[3] = &unk_100055250;
  v22 = v13;
  v23 = v14;
  v24 = v12;
  v25 = self;
  v26 = v15;
  v27 = a6;
  v17 = v12;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  dispatch_async(v16, v21);
}

- (void)_scheduleCompilationTimerForAssetType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
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
  v20 = self;
  v22 = a3;
  v12 = v6;
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

- (void)_scheduleCacheResetTimer:(id)a3
{
  v4 = a3;
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
  v8 = v4;
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

- (void)updateSpeechProfileWithLanguage:(id)a3 modelOverridePath:(id)a4 existingProfile:(id)a5 existingAssetPath:(id)a6 completion:(id)a7
{
  v7 = a7;
  v8 = [NSError alloc];
  v9 = kAFAssistantErrorDomain;
  v12 = NSLocalizedDescriptionKey;
  v13 = @"updateSpeechProfileWithLanguage is currently unsupported.";
  v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v11 = [v8 initWithDomain:v9 code:1102 userInfo:v10];

  (*(v7 + 2))(v7, 0, 0, v11);
}

- (void)createSpeechProfileWithLanguage:(id)a3 modelOverridePath:(id)a4 JSONData:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v26 = a5;
  v12 = a6;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10001BCF8;
  v36 = sub_10001BD08;
  v37 = 0;
  v13 = [[SFEntitledAssetConfig alloc] initWithLanguage:v10 assetType:3];
  v14 = (v33 + 5);
  obj = v33[5];
  v15 = [(ESConnection *)self _userProfileWithAssetConfig:v13 modelOverridePath:v11 overrides:0 isJit:0 returningFoundPath:0 error:&obj];
  objc_storeStrong(v14, obj);
  if (v15)
  {
    v16 = +[ESProfiler sharedProfiler];
    [v16 logSpeechProfileGenerationStartedOrUpdatedEventsWithPowerLogEvent:@"createSpeechProfileWithLanguage" language:v10];

    [v15 removeAllWords];
    v17 = (v33 + 5);
    v30 = v33[5];
    v18 = [NSJSONSerialization JSONObjectWithData:v26 options:0 error:&v30];
    objc_storeStrong(v17, v30);
    if (v18)
    {
      v19 = [v18 objectEnumerator];
      v20 = [v19 nextObject];

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
        [v20 enumerateKeysAndObjectsUsingBlock:v27];
        if (v33[5])
        {
          v12[2](v12, 0);
        }

        else
        {
          v25 = [v21 dataProfile];
          (v12[2])(v12, v25, 0);
        }

        v22 = v28;
      }

      else
      {
        v38 = NSLocalizedFailureReasonErrorKey;
        v22 = [NSString stringWithFormat:@"Not a dictionary: %@", v20];
        v39 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v24 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1102 userInfo:v23];
        (v12[2])(v12, 0, v24);
      }
    }

    else
    {
      (v12[2])(v12, 0, v33[5]);
    }
  }

  else
  {
    (v12[2])(v12, 0, v33[5]);
  }

  _Block_object_dispose(&v32, 8);
}

- (void)readProfileAndUserDataWithLanguage:(id)a3 allowOverride:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if (!v6)
  {
LABEL_11:
    v24 = 0;
    v12 = [CoreEmbeddedSpeechRecognizer dictionaryWithContentsProfilePathForLanguage:v7 errorOut:&v24];
    v10 = v24;
    if (v12)
    {
      v15 = [(__CFString *)v12 valueForKey:@"language"];
      v16 = [v15 isEqual:v7];

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
          v31 = v7;
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
            v29 = v7;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Successfully deserialized existing speech profile for %@", buf, 0x16u);
          }

          v11 = [(__CFString *)v12 valueForKey:@"data"];
          v20 = [(__CFString *)v12 valueForKey:@"assetPath"];
          v8[2](v8, v11, v20);

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

    v8[2](v8, 0, 0);
    goto LABEL_25;
  }

  v9 = +[AFPreferences sharedPreferences];
  v10 = [v9 offlineDictationProfileOverridePath];

  if (!v10)
  {
LABEL_10:

    goto LABEL_11;
  }

  v25 = 0;
  v11 = [NSData dataWithContentsOfFile:v10 options:0 error:&v25];
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
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Using override profile at %@", buf, 0x16u);
  }

  v8[2](v8, v11, 0);
LABEL_20:

LABEL_25:
}

- (id)_audioDataPostRecognitionStart:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_timeUntilRecognitionStartInMs <= 0.0)
  {
    v9 = v4;
  }

  else
  {
    [CESRUtilities audioDurationInMs:v4 samplingRate:self->_samplingRate];
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

- (void)_processAudioPacket:(id)a3
{
  v4 = a3;
  v19 = [v4 data];
  v5 = [v4 packetTimestamps];

  v6 = [v5 packetRecordedTimeInTicks];
  [v5 packetReceivedTime];
  v8 = v7;
  v9 = [v5 packetReceivedTimeInTicks];
  if (!self->_firstAudioPacketRecordedTimeInTicks)
  {
    objc_storeStrong(&self->_firstAudioPacketRecordedTimeInTicks, v6);
  }

  if (self->_firstAudioPacketReceivedTime == 2.22507386e-308)
  {
    self->_firstAudioPacketReceivedTime = v8;
    objc_storeStrong(&self->_firstAudioPacketReceivedTimeInTicks, v9);
  }

  if (self->_firstAudioPacketTimeUntilFirstPartial == 2.22507386e-308)
  {
    self->_firstAudioPacketTimeUntilFirstPartial = v8;
  }

  self->_lastAudioPacketReceivedTime = v8;
  objc_storeStrong(&self->_lastAudioPacketReceivedTimeInTicks, v9);
  v10 = [v19 length] >> 1;
  WeakRetained = objc_loadWeakRetained(&self->_audioBuffer);
  v12 = v19;
  [WeakRetained addAudioSamples:objc_msgSend(v19 count:{"bytes"), v10}];

  [(ESConnection *)self _updateAudioDuration:v19];
  [v5 setCumulativeAudioDuration:self->_audioDurationMs / 1000.0];
  v13 = [v5 packetReadyUpstreamTimeInTicks];
  if (v13)
  {
    [(NSMutableArray *)self->_processedPacketsReadyUpstreamTimestampsBuffer addObject:v13];
  }

  [v5 cumulativeAudioDuration];
  v14 = [NSNumber numberWithDouble:?];
  if (v14)
  {
    [(NSMutableArray *)self->_processedPacketsCumulativeAudioDurationBuffer addObject:v14];
  }

  if (!self->_firstAudioPacketProcessed)
  {
    self->_firstAudioPacketProcessed = 1;
    v15 = +[ESProfiler sharedProfiler];
    v16 = [v5 packetReadyUpstreamTimeInTicks];
    [v15 logFirstAudioPacketReadyUpstreamWithTimeInTicks:v16];

    v17 = +[ESProfiler sharedProfiler];
    v18 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
    [v17 logFirstAudioPacketProcessedWithTimeInTicks:v18];
  }

  [qword_1000616B0 addAudioPacket:v19];
}

- (id)_packetReadyUpstreamTimestampsFromAudioTime:(float)a3
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
  v9 = a3;
  v8[4] = self;
  v8[5] = &v10;
  [(NSMutableArray *)processedPacketsReadyUpstreamTimestampsBuffer enumerateObjectsUsingBlock:v8];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)_recordedTimestampFromAudioTime:(float)a3
{
  firstAudioPacketRecordedTimeInTicks = self->_firstAudioPacketRecordedTimeInTicks;
  if (firstAudioPacketRecordedTimeInTicks)
  {
    v6 = [firstAudioPacketRecordedTimeInTicks unsignedLongLongValue];
    *&v7 = a3;
    firstAudioPacketRecordedTimeInTicks = [NSNumber numberWithUnsignedLongLong:&v6[[CESRUtilities secondsToHostTime:v7]]];
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

- (void)addAudioPacket:(id)a3 packetRecordedTime:(id)a4 packetReadyUpstreamTime:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [ESAudioPacketTimestamps alloc];
  v12 = +[NSProcessInfo processInfo];
  [v12 systemUptime];
  v14 = v13;
  v15 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v19 = [(ESAudioPacketTimestamps *)v11 initWithPacketRecordedTimeInTicks:v10 packetReadyUpstreamTimeInTicks:v9 packetReceivedTime:v15 packetReceivedTimeInTicks:v14];

  v16 = [[ESAudioPacket alloc] initWithData:v8 packetTimestamps:v19];
  WeakRetained = objc_loadWeakRetained(&self->_audioBuffer);

  if (WeakRetained)
  {
    [(ESStoreAudioData *)self->_storeAudioData addAudioPacket:v8];
    v18 = [(ESConnection *)self _audioDataPostRecognitionStart:v8];

    [(ESAudioPacket *)v16 setData:v18];
    if (!v18)
    {
      goto LABEL_6;
    }

    [(ESConnection *)self _processAudioPacket:v16];
    v8 = v18;
  }

  else
  {
    [(NSMutableArray *)self->_bufferedAudioPackets addObject:v16];
    self->_bufferedAudioDataLength += [v8 length];
  }

LABEL_6:
}

- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 correctedText];
  v8 = [v5 recognizedTextInfo];
  v9 = [v8 objectForKeyedSubscript:@"userEditedText"];

  if ([v7 length] && objc_msgSend(v6, "length"))
  {
    v10 = qword_100061620;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100026A40;
    v11[3] = &unk_1000550B0;
    v12 = v6;
    v13 = v7;
    v14 = v9;
    v15 = v5;
    dispatch_async(v10, v11);
  }
}

- (void)startSpeechRecognitionWithParameters:(id)a3 didStartHandlerWithInfo:(id)a4
{
  v6 = a3;
  v357 = a4;
  v358 = v6;
  v7 = [v6 task];
  if (([CESRUtilities isTaskDictationSpecific:v7]& 1) != 0)
  {
    v8 = [v6 location];

    if (v8)
    {
      v9 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
        _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s Location data was provided in the context of a Dictation request!", buf, 0xCu);
      }

      v10 = [v6 mutatedCopyWithMutator:&stru_100055010];

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
    v29 = [v358 applicationName];
    if (v29)
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

    v31 = [v358 overrides];
    v32 = v31;
    if (v31)
    {
      v33 = [v31 mutableCopy];
      v34 = [v33 objectForKey:@"continuousListening"];

      if (v34)
      {
        v35 = [v33 objectForKey:@"continuousListening"];
        v354 = [v35 BOOLValue];

        [v33 removeObjectForKey:@"continuousListening"];
      }

      else
      {
        v354 = 0;
      }

      v36 = [v33 objectForKey:@"shouldHandleCapitalization"];

      if (v36)
      {
        v37 = [v33 objectForKey:@"shouldHandleCapitalization"];
        v331 = [v37 BOOLValue];

        [v33 removeObjectForKey:@"shouldHandleCapitalization"];
      }

      else
      {
        v331 = 0;
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
      v331 = 0;
      v354 = 0;
      v349 = 0;
    }

    v340 = [v358 continuousListening];
    v329 = [v358 shouldHandleCapitalization];
    v38 = [v358 modelOverrideURL];
    v345 = sub_10002A160(v349, v38);

    v39 = [SFEntitledAssetConfig alloc];
    v40 = [v358 language];
    v41 = [v358 task];
    v348 = [v39 initWithLanguage:v40 task:v41];

    dispatch_assert_queue_V2(qword_100061620);
    v42 = [v358 language];
    v43 = [v358 location];
    obj = [(ESConnection *)self geoLMRegionIdWithLanguage:v42 location:v43];

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

    v44 = [v358 task];
    v45 = [v352 isSpeakerCodeTrainingSupported:v44];

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
    v48 = [v358 language];
    if ([v47 isEqualToString:v48])
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
            v52 = [v358 language];
            v53 = v52;
            v54 = @"(none)";
            *buf = 136315651;
            *&buf[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
            if (obj)
            {
              v54 = obj;
            }

            *&buf[12] = 2114;
            *&buf[14] = v52;
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
        v350 = [v128 modelInfo];

        if (v350)
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
          v67 = [v358 modelOverrideURL];
          v68 = [v358 task];
          v69 = [CESRUtilities recognizerSourceForTask:v68];
          isHighPriority = self->_isHighPriority;
          v388 = &off_100058538;
          v387 = 0;
          BYTE1(v311) = isHighPriority;
          LOBYTE(v311) = 0;
          v71 = [ESConnection _speechRecognizerWithAssetConfig:v348 geoLMRegionId:obj enableITN:1 overrides:v349 modelOverrideURL:v67 preloadModels:0 requestSource:v69 enableParallelLoading:v311 isHighPriority:&v388 geoLMLoadedOut:&v387 error:?];
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
            v79 = [v77 modelInfo];

            [qword_100061678 addObject:qword_100061668];
            v80 = [v358 language];
            v81 = qword_100061660;
            qword_100061660 = v80;

            objc_storeStrong(&qword_100061670, obj);
            objc_storeStrong(&qword_100061680, v345);
            byte_100061688 = [v72 BOOLValue];
            v350 = v79;
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
            if (v357)
            {
              v357[2](v357, 0, v73);
            }

            [(ESConnection *)self startRequestActivityWithCompletion:0];
            goto LABEL_243;
          }

          v84 = [v358 task];
          v386 = v73;
          v85 = sub_1000212CC(v350, v84, &v386);
          v333 = v386;

          taskToUse = self->_taskToUse;
          self->_taskToUse = v85;

          if (!self->_taskToUse)
          {
            if (v357)
            {
              v357[2](v357, 0, v333);
            }

            [(ESConnection *)self startRequestActivityWithCompletion:0];
            goto LABEL_242;
          }

          v87 = [CESRModelProperties alloc];
          v88 = [v350 version];
          v89 = objc_loadWeakRetained(&self->_recognizer);
          v90 = [v89 modelType];
          v91 = objc_loadWeakRetained(&self->_recognizer);
          v92 = [v91 modelRoot];
          v336 = [v87 initWithModelVersion:v88 modelType:v90 modelRoot:v92];

          v93 = [(ESConnection *)self _delegate];
          [v93 speechServiceDidSelectRecognitionModelWithModelProperties:v336];

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
          v97 = [v358 requestIdentifier];
          v98 = [v358 language];
          v99 = [v358 asrId];
          v326 = [(ESSelfHelper *)v94 initWithTask:v95 isSpeechAPIRequest:isSpeechAPIRequest requestId:v97 language:v98 asrId:v99];

          v100 = +[ESProfiler sharedProfiler];
          [v100 setESSelfHelper:v326];
          v341 = v340 | v354;
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

            v102 = [v358 language];
            v327 = [CESRUtilities speechProfileDateLastModifiedForLanguage:v102];

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
            v105 = [v358 language];
            v324 = [v104 installedHammerConfigFileForLanguage:v105];

            v317 = [[_EARSpeechModelInfo alloc] initWithConfig:v324];
            v106 = +[PPConfigStore defaultStore];
            v382 = 0;
            v107 = [v106 variantNameWithError:&v382];
            v315 = v382;

            [v355 logPendingPreheatContextEvents:qword_1000616A8];
            +[ESConnection _clearPendingProfilerEvents];
            v108 = self->_taskToUse;
            v109 = [v350 language];
            v110 = [v350 version];
            v111 = [v317 version];
            v112 = qword_100061670;
            LOBYTE(v104) = byte_100061688;
            v113 = [v358 dictationUIInteractionIdentifier];
            LOBYTE(v310) = v104;
            [v355 logRequestStartedOrChangedWithTask:v108 modelLocale:v109 modelVersion:v110 isHighQualityAsset:group hammerVersion:v111 geoLanguageModelRegion:v112 geoLanguageModelLoaded:v310 speechProfileAgeInSec:v319 dictationUIInteractionId:v113 portraitExperimentVariantName:v107 applicationName:*p_applicationName powerLogEvent:@"startSpeechRecognitionWithParameters"];

            v114 = [v355 selfHelper];
            [v114 setContinuousListeningEnabled:v341 & 1];

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

          v138 = [v358 profile];
          LODWORD(v137) = v138 == 0;

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
            v143 = [v358 language];
            [CESRUtilities loadSpeechProfiles:v142 language:v143];

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
            v304 = [v358 profile];
            *v395 = 136315650;
            *&v395[4] = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
            *&v395[12] = 1024;
            *&v395[14] = v303 != 0;
            *&v395[18] = 1024;
            *&v395[20] = v304 != 0;
            _os_log_debug_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEBUG, "%s Setting new profile: %d, old profile: %d", v395, 0x18u);
          }

          v151 = objc_loadWeakRetained(&self->_recognizer);
          v152 = [v139 firstObject];
          [v151 setUserProfile:v152];

          v153 = [v139 firstObject];
          v154 = [v153 experimentIds];
          [v355 logPersonalizationExperimentTriggersForExperimentIds:v154];

          v155 = [v358 profile];

          if (v155)
          {
            v156 = objc_loadWeakRetained(&self->_recognizer);
            v157 = [v358 profile];
            [v156 setUserProfileData:v157];
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
            v165 = [v358 applicationName];
            v328 = [(ESContextualData *)v162 initWithConfiguration:v163 taskName:v164 applicationName:v165];
          }

          else
          {
            v165 = AFSiriLogContextSpeech;
            if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
            {
              *v389 = 136315394;
              v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
              v391 = 2112;
              v392 = 0.0;
              _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_INFO, "%s Failed to get model root, error: %@", v389, 0x16u);
            }

            v328 = 0;
          }

          v166 = [v358 jitGrammar];

          if (v166)
          {
            v167 = [v358 jitGrammar];
            [v344 addObjectsFromArray:v167];
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
            v363 = self;
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

          v173 = [v358 inputOrigin];

          if (v173)
          {
            v174 = objc_loadWeakRetained(&self->_recognizer);
            v175 = [v358 inputOrigin];
            [v174 setInputOrigin:v175];

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

          v187 = [v355 selfHelper];
          v188 = [NSNumber numberWithDouble:v359];
          [v187 setPersonalizedLmAgeInSec:v188];

          v189 = [v355 selfHelper];
          LODWORD(v190) = v360;
          v191 = [NSNumber numberWithFloat:v190];
          [v189 setPersonalizedLmWeight:v191];

          if (_os_feature_enabled_impl() && [(NSString *)self->_taskToUse isEqualToString:CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging])
          {
            v192 = qword_1000616B8;
            if (!qword_1000616B8)
            {
              v193 = [[ESUaapLm alloc] initUaapLm];
              v194 = qword_1000616B8;
              qword_1000616B8 = v193;

              v192 = qword_1000616B8;
            }

            v195 = [v358 language];
            v196 = objc_loadWeakRetained(&self->_recognizer);
            v197 = [v192 readUaapLMsForLanguage:v195 recognizer:v196];

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
          [v207 setFormatAcrossUtterances:(v329 | v331) & 1];

          v208 = objc_loadWeakRetained(&self->_recognizer);
          [v208 setDisableAutoPunctuation:{objc_msgSend(v358, "enableAutoPunctuation") ^ 1}];

          v209 = objc_loadWeakRetained(&self->_recognizer);
          [v209 setRecognizeEmoji:{objc_msgSend(v358, "enableEmojiRecognition")}];

          v210 = objc_loadWeakRetained(&self->_recognizer);
          v211 = [v358 prefixText];
          [v210 setLeftContextText:v211];

          v212 = objc_loadWeakRetained(&self->_recognizer);
          LOBYTE(v211) = objc_opt_respondsToSelector();

          if (v211)
          {
            v213 = objc_loadWeakRetained(&self->_recognizer);
            v214 = [v358 postfixText];
            [v213 setRightContext:v214];
          }

          v215 = objc_loadWeakRetained(&self->_recognizer);
          v216 = objc_opt_respondsToSelector();

          if (v216)
          {
            v217 = objc_loadWeakRetained(&self->_recognizer);
            v218 = [v358 selectedText];
            [v217 setSelectedText:v218];
          }

          v219 = objc_loadWeakRetained(&self->_recognizer);
          [v219 setEnableVoiceCommands:{objc_msgSend(v358, "enableVoiceCommands")}];

          if ([v358 enableVoiceCommands])
          {
            v220 = 1;
          }

          else
          {
            v220 = [v358 shouldGenerateVoiceCommandCandidates];
          }

          v221 = objc_loadWeakRetained(&self->_recognizer);
          [v221 setShouldGenerateVoiceCommandCandidates:v220];

          v222 = [v358 narrowband];
          v223 = 16000;
          if (v222)
          {
            v223 = 8000;
          }

          self->_samplingRate = v223;
          v224 = [v358 codec];
          if (v224)
          {
            v316 = [v358 codec];
          }

          else
          {
            v316 = &stru_100055AC8;
          }

          v225 = objc_loadWeakRetained(&self->_recognizer);
          v332 = [v225 activeConfiguration];

          v353 = [v332 copy];
          v226 = [v353 farFieldFilter];
          LOBYTE(v225) = v226 == 0;

          if ((v225 & 1) == 0)
          {
            v227 = [v353 farFieldFilter];
            v228 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v358 farField]);
            v229 = [v227 setByAddingObject:v228];
            [v353 setFarFieldFilter:v229];
          }

          v230 = [v353 samplingRateFilter];
          v231 = v230 == 0;

          if (!v231)
          {
            v232 = [v353 samplingRateFilter];
            v233 = [NSNumber numberWithUnsignedInteger:self->_samplingRate];
            v234 = [v232 setByAddingObject:v233];
            [v353 setSamplingRateFilter:v234];
          }

          v235 = [v353 taskTypeFilter];
          v236 = v235 == 0;

          if (!v236)
          {
            v237 = [v353 taskTypeFilter];
            v238 = [v237 setByAddingObject:self->_taskToUse];
            [v353 setTaskTypeFilter:v238];
          }

          [v353 setDeviceIdFilter:0];
          [v353 setAneContextFilter:0];
          [v353 setCpuContextFilter:0];
          [v353 setGpuContextFilter:0];
          v239 = AFSiriLogContextSpeech;
          if (os_log_type_enabled(v239, OS_LOG_TYPE_DEBUG))
          {
            sub_10002AA88(v332);
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
          v249 = [v358 language];
          v342 = [v247 runRecognitionWithResultStream:self speakerCodeWriter:v248 language:v249 task:self->_taskToUse samplingRate:self->_samplingRate];

          objc_storeStrong(&qword_100061638, v342);
          objc_storeWeak(&self->_audioBuffer, v342);
          if (v357)
          {
            (v357)[2](v357, v336, 0);
          }

          self->_shouldStoreDictationAudioOnDevice = 0;
          v250 = [v358 task];
          v251 = [CESRUtilities isTaskDictationSpecific:v250];

          if (v251 && !self->_isSpeechAPIRequest)
          {
            v252 = +[CESRDictationOnDeviceSampling sharedManager];
            v253 = [v358 language];
            self->_shouldStoreDictationAudioOnDevice = [v252 isRequestSelectedForSamplingFromConfigForLanguage:v253];
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
            v259 = [v358 language];
            v313 = self->_taskToUse;
            v314 = [v358 loggingContext];
            v312 = [v358 narrowband];
            v260 = [v358 farField];
            v261 = [v358 dictationUIInteractionIdentifier];
            v262 = [v355 selfHelper];
            v263 = [v262 asrId];
            v264 = [v263 UUIDString];
            v265 = [CESRFidesASRRecord recordWithLanguage:v259 task:v313 context:v314 narrowband:v312 farField:v260 interactionIdentifier:v261 asrSelfComponentIdentifier:v264 pluginId:@"com.apple.siri.speech-dictation-personalization" frequency:1];
            v266 = qword_1000616B0;
            qword_1000616B0 = v265;
          }

          else
          {
LABEL_216:
            v259 = qword_1000616B0;
            qword_1000616B0 = 0;
          }

          if (qword_1000616B0)
          {
            [qword_1000616B0 setApplicationName:*p_applicationName];
            v267 = [v358 profile];

            if (v267)
            {
              v268 = qword_1000616B0;
              v269 = [v358 profile];
              [v268 setProfile:v269];
            }

            else
            {
              if ([v139 count] != 1)
              {
                goto LABEL_221;
              }

              v293 = [v139 firstObject];
              v269 = [v293 data];

              if (v269)
              {
                v294 = AFSiriLogContextFides;
                if (os_log_type_enabled(v294, OS_LOG_TYPE_INFO))
                {
                  v295 = COERCE_DOUBLE([v269 length]);
                  *v389 = 136315394;
                  v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
                  v391 = 2048;
                  v392 = v295;
                  _os_log_impl(&_mh_execute_header, v294, OS_LOG_TYPE_INFO, "%s Saving profile snapshot: %lu bytes", v389, 0x16u);
                }

                [qword_1000616B0 setProfile:v269];
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
          v273 = [v355 selfHelper];
          v274 = [v273 asrId];
          v275 = [v274 UUIDString];
          v276 = [v358 dictationUIInteractionIdentifier];
          v277 = [v358 language];
          v278 = [v358 task];
          v279 = [(ESBiomeAsrRecord *)v272 initWithAsrId:v275 interactionId:v276 language:v277 taskName:v278 samplingRate:self->_samplingRate];
          v280 = qword_1000616D0;
          qword_1000616D0 = v279;

          if (qword_1000616D0)
          {
            v281 = AFSiriLogContextSpeech;
            if (os_log_type_enabled(v281, OS_LOG_TYPE_DEBUG))
            {
              [qword_1000616D0 asrId];
              v308 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v309 = [qword_1000616D0 interactionId];
              *v389 = 136315650;
              v390 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]";
              v391 = 2112;
              v392 = v308;
              v393 = 2112;
              v394 = v309;
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
          v287 = [v358 dictationUIInteractionIdentifier];
          [(ESBiomeRecord *)v286 setInteractionId:v287];

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
        v350 = 0;
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

      v60 = [v358 language];
      v61 = v60;
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
      *&v402[2] = v60;
      *&v402[10] = 2113;
      *&v402[12] = v62;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%s Cached recognizer is for language: %{public}@, regionId: %{private}@, requesting recognizer for language: %{public}@, regionId: %{private}@", buf, 0x34u);
    }

    v63 = qword_1000616A0;
    qword_1000616A0 = 0;

    v64 = qword_100061660;
    v65 = [v358 language];
    LOBYTE(v64) = [v64 isEqualToString:v65];

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

  if (v357)
  {
    v403 = NSLocalizedDescriptionKey;
    v404 = @"Recognizer is busy";
    v17 = [NSDictionary dictionaryWithObjects:&v404 forKeys:&v403 count:1];
    v18 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1100 userInfo:v17];
    v357[2](v357, 0, v18);
  }

  [(ESConnection *)self startRequestActivityWithCompletion:0];
LABEL_244:
}

- (void)adjustAppleTVLogLevelForSecureOfflineOnly:(BOOL)a3
{
  v3 = a3;
  if (AFIsATV() && AFIsInternalInstall())
  {
    v4 = AFSiriLogContextSpeech;
    v5 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO);
    if (v3)
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

- (void)startSpeechRecognitionWithParameters:(id)a3 didStartHandler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002AEC8;
  v7[3] = &unk_100054FD0;
  v8 = a4;
  v6 = v8;
  [(ESConnection *)self startSpeechRecognitionWithParameters:a3 didStartHandlerWithInfo:v7];
}

- (id)geoLMRegionIdWithLanguage:(id)a3 location:(id)a4
{
  v5 = a3;
  v6 = qword_100061660;
  v7 = a4;
  if (![v6 isEqualToString:v5] || (+[ESAssetManager sharedInstance](ESAssetManager, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "geoLmInitialized"), v8, (v9 & 1) == 0))
  {
    v10 = +[ESAssetManager sharedInstance];
    [v10 initializeGeoLMWithLanguage:v5];
  }

  v11 = +[ESAssetManager sharedInstance];
  v12 = [v11 geoLMRegionIdForLocation:v7];

  return v12;
}

- (BOOL)shouldWriteDictationRecord:(id)a3
{
  v3 = a3;
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
    v15 = v3;
    v16 = 1024;
    v17 = v4 > 9;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s dictationCapable=%d task=%@ aneCapable=%d", &v10, 0x22u);
  }

  if (AFOfflineDictationCapable())
  {
    v6 = [CESRUtilities isTaskDictationSpecific:v3];
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
  v3 = [v2 siriDataSharingOptInStatus];

  return v3 == 1;
}

- (id)personalizedLMWithTask:(id)a3 applicationName:(id)a4 recognizer:(id)a5 weightOut:(float *)a6 ageOut:(double *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = sysconf(71);
  if (v14 == -1)
  {
    v15 = 0;
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
    v31 = 0;
    v15 = 0;
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

      v22 = [v19 loadForRecognitionWithDirectory:v18 recognizer:v13 task:v11 applicationName:v12];
      if (v22)
      {
        v23 = v22;
        v15 = [v22 handle];
        if (v15)
        {
          [v23 weight];
          v25 = v24;
          [v23 age];
          v27 = v26;
          if (a6)
          {
            *a6 = v25;
          }

          if (a7)
          {
            *a7 = v26;
          }

          v28 = qword_100061630;
          if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316419;
            v34 = "[ESConnection personalizedLMWithTask:applicationName:recognizer:weightOut:ageOut:]";
            v35 = 2113;
            v36 = v18;
            v37 = 2113;
            v38 = v11;
            v39 = 2113;
            v40 = v12;
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
        v15 = 0;
      }
    }
  }

  return v15;
}

- (void)preheatSpeechRecognitionWithAssetConfig:(id)a3 preheatSource:(id)a4 modelOverrideURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(qword_100061620);
  v11 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v74 = "[ESConnection preheatSpeechRecognitionWithAssetConfig:preheatSource:modelOverrideURL:]";
    v75 = 2114;
    v76 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Preheat for %{public}@", buf, 0x16u);
  }

  if (qword_100061638)
  {
    v12 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      [v8 assetType];
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
    v15 = [v8 language];
    v16 = objc_alloc_init(NSMutableDictionary);
    v68 = sub_10002A160(0, v10);
    obj = v15;
    v17 = [qword_100061660 isEqualToString:v15];
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
    v67 = v9;
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
        v76 = v15;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Skipping preheat for %{public}@; recognizer already loaded", buf, 0x16u);
        v20 = 0;
      }
    }

    else
    {
      if (v10)
      {
        v21 = [NSString stringWithFormat:@" with CustomModelURL %@", v10];
      }

      else
      {
        v21 = &stru_100055AC8;
      }

      if (!qword_100061670)
      {
        v22 = +[CESRGeoLMRegionIDCache sharedInstance];
        v23 = [v22 lastUsedGeoLMRegionIdForLanguage:v15];
        v24 = qword_100061670;
        qword_100061670 = v23;
      }

      if (qword_100061668)
      {
        if (([qword_100061660 isEqualToString:v15] & 1) == 0)
        {
          v25 = +[SFEntitledAssetManager sharedInstance];
          [v25 refreshAssetSetWithConfig:v8 regionId:qword_100061670];
        }

        v26 = qword_100061668;
        v27 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForNothing];
        [v26 setActiveConfiguration:v27];

        v28 = qword_100061668;
        qword_100061668 = 0;
      }

      v29 = [qword_100061678 allObjects];
      v30 = [v29 count];

      if (v30)
      {
        v31 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_FAULT))
        {
          v57 = qword_100061678;
          v58 = v31;
          v59 = [v57 allObjects];
          v60 = [v59 count];
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
      v33 = [ESConnection _speechRecognizerWithAssetConfig:v8 geoLMRegionId:qword_100061670 enableITN:1 overrides:0 modelOverrideURL:v10 preloadModels:1 requestSource:v9 enableParallelLoading:v62 isHighPriority:&v72 geoLMLoadedOut:&v71 error:?];
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
        objc_storeStrong(&qword_100061660, v15);
        objc_storeStrong(&qword_100061680, v68);
        byte_100061688 = [v34 BOOLValue];
        [qword_100061678 addObject:qword_100061668];
        v39 = [qword_100061668 modelInfo];
        v40 = [v39 version];

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
          v76 = v15;
          v77 = 2114;
          v78 = v67;
          v79 = 2113;
          v80 = v42;
          v81 = 2114;
          v82 = v21;
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
          v76 = v15;
          v77 = 2114;
          v78 = v67;
          v79 = 2113;
          v80 = v61;
          v81 = 2114;
          v82 = v21;
          v83 = 2112;
          v84 = v35;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s Could not preheat for language %{public}@, source %{public}@, regionId %{private}@%{public}@: %@", buf, 0x3Eu);
          v40 = &stru_100055AC8;
        }

        else
        {
          v40 = &stru_100055AC8;
        }
      }

      v44 = +[ESProfiler sharedProfiler];
      [v44 logPreheatOnlyEventsWithPowerLogEvent:@"preheatSpeechRecognitionWithAssetConfig" language:v15 modelVersion:v40];

      v45 = +[ESAssetManager sharedInstance];
      [v45 purgeUnusedGeoLMAssetsForLanguage:v15];
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

    [CESRUtilities loadSpeechProfiles:qword_100061690 language:v15];
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
    v49 = [v48 preheatContext];
    v50 = [v49 timestampInTicks];
    v51 = [v50 unsignedLongLongValue];
    v52 = [v64 preheatContext];
    v53 = [v52 timestampInTicks];
    v54 = v51 - [v53 unsignedLongLongValue];

    [CESRUtilities hostTimeToSeconds:v54];
    NSLog(@"Preheat time interval in seconds: %lf", v55);
    v56 = AFAnalyticsEventCreateCurrent();
    [ESConnection _addPendingAnalyticsEvent:v56];

    v9 = v67;
  }
}

- (void)preheatSpeechRecognitionWithLanguage:(id)a3 modelOverrideURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[SFEntitledAssetConfig alloc] initWithLanguage:v7 assetType:3];

  [(ESConnection *)self preheatSpeechRecognitionWithAssetConfig:v8 preheatSource:0 modelOverrideURL:v6];
}

- (void)writeUaapOovsForLanguage:(id)a3 bundleId:(id)a4 customProns:(id)a5 newOovs:(id)a6 completion:(id)a7
{
  v13 = 0;
  v11 = a7;
  [CESRUaapData writeUaapOovsForLanguage:a3 bundleId:a4 customProns:a5 newOovs:a6 error:&v13];
  v12 = v13;
  v11[2](v11, v12);
}

- (void)fetchModelPropertiesForAssetConfig:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C09C;
  v7[3] = &unk_100054F88;
  v8 = a4;
  v6 = v8;
  [(ESConnection *)self fetchModelInfoForAssetConfig:a3 triggerDownload:0 completion:v7];
}

- (void)startRequestActivityWithCompletion:(id)a3
{
  v7 = a3;
  requestCompletion = self->_requestCompletion;
  if (requestCompletion)
  {
    requestCompletion[2]();
  }

  v5 = objc_retainBlock(v7);
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
    v12 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s %{public}@ deallocating", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = ESConnection;
  [(ESConnection *)&v8 dealloc];
}

- (ESConnection)initWithXPCConnection:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v6->_connection, a3);
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
      v25 = [v24 infersQoSFromInstanceUUIDForEAR];

      if (v25)
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
    [v5 setInterruptionHandler:v27];
    [v5 setInvalidationHandler:v27];

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  return v6;
}

+ (void)didFinishModelInitializing:(id)a3
{
  v3 = a3;
  v4 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v5 = qword_100061620;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D1BC;
  v8[3] = &unk_1000554A8;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  dispatch_async(v5, v8);
}

+ (void)didStartModelInitializing:(id)a3
{
  v3 = a3;
  v4 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v5 = qword_100061620;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D350;
  v8[3] = &unk_1000554A8;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  dispatch_async(v5, v8);
}

+ (id)_languagesToCompileForAssetType:(unint64_t)a3 assetManager:(id)a4
{
  v5 = a4;
  v6 = SFEntitledAssetTypeToString();
  v7 = +[NSMutableSet set];
  if (a3 == 7)
  {
    v16 = [v5 installedLanguagesForAssetType:7];
    v17 = [v16 mutableCopy];

    v7 = v17;
  }

  else if (a3 == 3)
  {
    v8 = [v5 installationStatusForLanguagesWithAssetType:3];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [v8 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [v8 objectForKey:v14];
          if (SFEntitledAssetStatusIsInstalled() && SFEntitledAssetStatusIsHighQuality())
          {
            [v7 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
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

+ (void)_addPendingProfilerANEModelInitializationEvent:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(qword_100061620);
  v3 = qword_1000616F8;
  if (!qword_1000616F8)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = qword_1000616F8;
    qword_1000616F8 = v4;

    v3 = qword_1000616F8;
  }

  [v3 addObject:v6];
}

+ (void)_addPendingProfilerPreheatEvent:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(qword_100061620);
  v3 = qword_1000616A8;
  if (!qword_1000616A8)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = qword_1000616A8;
    qword_1000616A8 = v4;

    v3 = qword_1000616A8;
  }

  [v3 addObject:v6];
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

+ (void)_addPendingAnalyticsEvent:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(qword_100061620);
  v3 = qword_1000616F0;
  if (!qword_1000616F0)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = qword_1000616F0;
    qword_1000616F0 = v4;

    v3 = qword_1000616F0;
  }

  [v3 addObject:v6];
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

  [a1 _cancelCooldownTimer];
  v13 = qword_1000616E8;
  qword_1000616E8 = 0;

  [a1 _clearPendingAnalyticsEvents];
  [a1 _clearPendingProfilerEvents];
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
      [a1 _cancelCooldownTimer];
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

  [a1 _cachedRecognizerCleanUp];
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
  [a1 _cancelCooldownTimer];
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
    v3 = [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = 120;
  }

  return v3;
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
  v12 = [qword_100061678 allObjects];
  v13 = [v12 count];

  if (v13)
  {
    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_FAULT))
    {
      v15 = qword_100061678;
      v16 = v14;
      v17 = [v15 allObjects];
      v18 = [v17 count];
      v19 = 136315394;
      v20 = "+[ESConnection _discardCachedRecognizer]";
      v21 = 2048;
      v22 = v18;
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s sRecognizerTracker: Too many recognizers active: %lu", &v19, 0x16u);
    }
  }
}

+ (id)_bestGuessTaskStringsFromPreheatSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:CoreEmbeddedSpeechRecognizerSourceAssistant])
  {
    v4 = AFIsHorseman();
    v5 = &CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging;
    if (v4)
    {
      v5 = &CoreEmbeddedSpeechRecognizerTaskBeto;
    }

    goto LABEL_4;
  }

  if ([v3 isEqualToString:CoreEmbeddedSpeechRecognizerSourceDictation] && (AFIsHorseman() & 1) == 0)
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

+ (id)_speechRecognizerWithAssetConfig:(id)a3 geoLMRegionId:(id)a4 enableITN:(BOOL)a5 overrides:(id)a6 modelOverrideURL:(id)a7 preloadModels:(BOOL)a8 requestSource:(id)a9 enableParallelLoading:(BOOL)a10 isHighPriority:(BOOL)a11 geoLMLoadedOut:(id *)a12 error:(id *)a13
{
  v133 = a8;
  v16 = a3;
  v17 = a4;
  v137 = a6;
  v18 = a7;
  v138 = a9;
  v139 = [v16 language];
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

  if (v18 && AFIsInternalInstall())
  {
    v26 = [v18 path];
    v136 = 0;
    v27 = 0;
    v28 = 0;
    if (!v26)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v31 = +[SFEntitledAssetManager sharedInstance];
    [v31 refreshAssetSetWithConfig:v16 regionId:v17];

    v32 = +[ESAssetManager sharedInstance];
    v141 = 0;
    v33 = [v32 installedModelInfoForAssetConfig:v16 error:&v141];
    v28 = v141;

    v26 = [v33 objectForKey:@"quasarModelPath"];
    v136 = v33;
    v27 = [v33 objectForKey:@"type"];
    if (!v26)
    {
LABEL_10:
      if (a13)
      {
        v29 = v28;
        v30 = 0;
        *a13 = v28;
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

  v37 = [v26 stringByAppendingPathComponent:@"mini.json"];
  v38 = qword_100061658;
  qword_100061658 = v37;

  v135 = v27;
  if (([CESRUtilities isFilePathValid:qword_100061658]& 1) != 0)
  {
    v132 = objc_alloc_init(NSMutableDictionary);
    if (a10)
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

    v119 = v18;
    if (v133)
    {
      v40 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
      v41 = [ESConnection _bestGuessTaskStringsFromPreheatSource:v138];
      if (v41)
      {
        v115 = v17;
        v42 = [v40 taskTypeFilter];
        v43 = v42;
        if (v42)
        {
          v44 = v42;
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
          v60 = [v40 taskTypeFilter];
          *buf = 136315395;
          v143 = "+[ESConnection _speechRecognizerWithAssetConfig:geoLMRegionId:enableITN:overrides:modelOverrideURL:preloadModels:requestSource:enableParallelLoading:isHighPriority:geoLMLoadedOut:error:]";
          v144 = 2113;
          v145 = v60;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%s ASR: filtering for tasks: %{private}@", buf, 0x16u);
        }

        v17 = v115;
      }

      if (v138)
      {
        [v132 setValue:v138 forKey:@"preheatSource"];
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
    v65 = [v64 installedHammerConfigFileForLanguage:v139];

    if (v65)
    {
      v66 = +[ESAssetManager sharedInstance];
      v67 = [v66 validateHammerConfigFile:v65];

      if (v67)
      {
        [v124 addObject:v65];
      }
    }

    if (v17)
    {
      v68 = +[ESAssetManager sharedInstance];
      v69 = [v68 installedGeoLMRegionSpecificAssetForLanguage:v139 regionId:v17 mainAssetConfig:qword_100061658];

      if (v69)
      {
        [v124 addObject:v69];
        if (a12)
        {
          *a12 = &off_100058520;
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
        [v30 setHighPriority:a11];
        [v30 setDetectUtterances:1];
        [v30 setRecognizeEagerCandidates:1];
        [v30 setConcatenateUtterances:1];
        [v30 setModelType:v135];
        [v30 setModelRoot:v26];
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

        [AFAggregator logLocalRecognitionLoadedForLanguage:v139 duration:v91];
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
          v127 = [v134 UTF8String];
          v131 = [v132 valueForKey:@"enableParallelLoading"];
          v126 = [v131 UTF8String];
          [v132 valueForKey:@"preheatSource"];
          v99 = v98 = v17;
          v100 = [v99 UTF8String];
          v101 = [v132 valueForKey:@"taskForMemoryLock"];
          v102 = [v101 UTF8String];
          *buf = 134350338;
          v143 = v129;
          v144 = 2080;
          v145 = v127;
          v146 = 2080;
          v147 = v126;
          v148 = 1024;
          v149 = v133;
          v150 = 2080;
          v151 = v100;
          v152 = 2080;
          v153 = v102;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v97, OS_SIGNPOST_INTERVAL_END, v121, "ES: Recognizer Create", "%{public, signpost.description:end_time}llu keepANEModelLoaded = %s, enableParallelLoading = %s, preloadModels = %u, preheatSource = %s, taskForMemoryLock = %s", buf, 0x3Au);

          v17 = v98;
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

        if (a13)
        {
          v105 = kAFAssistantErrorDomain;
          v154 = NSLocalizedDescriptionKey;
          [NSString stringWithFormat:@"Failed to create recognizer from %@", qword_100061658];
          v106 = v117 = v17;
          v155 = v106;
          v107 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v154 count:1];
          v108 = v105;
          v27 = v135;
          *a13 = [NSError errorWithDomain:v108 code:1105 userInfo:v107];

          v17 = v117;
        }
      }

      v28 = 0;
      v18 = v119;
      goto LABEL_84;
    }

    if (_os_feature_enabled_impl())
    {
      v114 = v72;
      v116 = v17;
      v77 = [v26 stringByAppendingPathComponent:@"TP/voice-commands"];
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

      v17 = v116;
      v72 = v114;
    }

    else
    {
      v87 = 0;
    }

    LOBYTE(v111) = a5;
    BYTE1(v110) = v72;
    LOBYTE(v110) = 1;
    v30 = [[_EARSpeechRecognizer alloc] initWithConfiguration:p_info[203] overrides:v137 overrideConfigFiles:v124 language:v139 activeConfiguration:v40 modelLoadingOptions:v132 enableSpeakerCodeTraining:v110 supportEmojiRecognition:v87 voiceCommandActiveSet:a1 modelContextDelegate:v111 enableItn:?];

    goto LABEL_69;
  }

  v45 = v18;
  v46 = kAFAssistantErrorDomain;
  v156 = NSLocalizedDescriptionKey;
  v47 = [NSString stringWithFormat:@"No file at path: %@", qword_100061658];
  v157 = v47;
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
  v18 = v45;
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
  if (objc_opt_class() == a1)
  {
    v2 = dispatch_queue_create("com.apple.siri.ESConnection", 0);
    v3 = qword_100061620;
    qword_100061620 = v2;

    qword_100061628 = dispatch_get_global_queue(9, 0);

    _objc_release_x1();
  }
}

@end