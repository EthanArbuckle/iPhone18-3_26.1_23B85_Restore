@interface CSVoiceTriggerSecondPass
+ (id)secondPassAudioLogDirectory;
+ (id)secondPassAudioLoggingFilePathWithDeviceId:(id)id;
+ (id)stringForSecondPassResult:(unint64_t)result;
+ (id)timeStampString;
- (BOOL)_shouldLogMediaplayState:(unint64_t)state;
- (BOOL)_usePHS;
- (CSAudioCircularBuffer)audioBuffer;
- (CSVoiceTriggerDelegate)delegate;
- (CSVoiceTriggerSecondPass)initWithFirstPassSource:(unint64_t)source phsEnabled:(BOOL)enabled speechManager:(id)manager supportsMphDetection:(BOOL)detection secondPassQueue:(id)queue;
- (id)_fetchSiriLocale;
- (id)_getAudioTimeConverter;
- (id)_getExclaveAudioTimeConverter;
- (id)_getFirstPassTriggerSourceAsString:(unint64_t)string;
- (id)_getVoiceTriggerInfoWithKeywordDetectorResult:(id)result;
- (id)_runRecognizersWithChunk:(id)chunk;
- (id)_voiceTriggerSecondPassLatencyMetrics;
- (id)constructVTEIFromExclaveKeywordResult:(unint64_t)result speakerDetectionResult:(unint64_t)detectionResult phraseId:(unsigned int)id triggerTimestamp:(unint64_t)timestamp triggerStartSampleCount:(unint64_t)count triggerEndSampleCount:(unint64_t)sampleCount;
- (id)convertSecureVoiceTriggerKeywordDetectionResultTypeToString:(unint64_t)string;
- (id)convertSecureVoiceTriggerSpeakerDetectionResultTypeToString:(unint64_t)string;
- (unint64_t)_getSecondPassRejectReasonFromExclaveKeywordResult:(unint64_t)result speakerDetectionResult:(unint64_t)detectionResult;
- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart;
- (void)CSMediaPlayingMonitor:(id)monitor didReceiveMediaPlayingChanged:(int64_t)changed;
- (void)CSVoiceTriggerEnabledMonitor:(id)monitor didReceiveEnabled:(BOOL)enabled;
- (void)CSVolumeMonitor:(id)monitor didReceiveMusicVolumeChanged:(float)changed;
- (void)_addDeviceStatusInfoToDict:(id)dict;
- (void)_addLosingPhraseResultstoVTEI:(id)i withLosingPhraseResults:(id)results;
- (void)_addPHSInfoToVTEI:(id)i fromSpeakerInfo:(id)info withThreshold:(float)threshold;
- (void)_addRejectStatsToDict:(id)dict;
- (void)_analyzeForChannel:(unint64_t)channel keywordDetectorResult:(id)result losingPhraseResults:(id)results;
- (void)_calculateRecordingTimeForAOPTriggerFromFirstPassInfo:(id)info completion:(id)completion;
- (void)_clearSecondPassCompletionWatchDog;
- (void)_clearTriggerCandidate;
- (void)_didStartAudioStream:(BOOL)stream;
- (void)_didStopAudioStream;
- (void)_getDidWakeAP:(id)p;
- (void)_handleAudioChunk:(id)chunk shouldPreprocessedByZeroFilter:(BOOL)filter;
- (void)_handlePHSResults:(id)results voiceTriggerEventInfo:(id)info forPhId:(unint64_t)id;
- (void)_handleSecondPassSuccess:(id)success;
- (void)_handleVoiceTriggerFirstPassFromAOP:(id)p audioProviderUUID:(id)d completion:(id)completion;
- (void)_handleVoiceTriggerFirstPassFromAP:(id)p audioProviderUUID:(id)d completion:(id)completion;
- (void)_handleVoiceTriggerFirstPassFromExclave:(id)exclave audioProviderUUID:(id)d completion:(id)completion;
- (void)_handleVoiceTriggerFirstPassFromHearst:(unint64_t)hearst deviceId:(id)id audioProviderUUID:(id)d firstPassInfo:(id)info rtModelRequestOptions:(id)options completion:(id)completion;
- (void)_handleVoiceTriggerFirstPassFromHearstAP:(unint64_t)p deviceId:(id)id audioProviderUUID:(id)d firstPassInfo:(id)info rtModelRequestOptions:(id)options completion:(id)completion;
- (void)_handleVoiceTriggerFirstPassFromJarvis:(unint64_t)jarvis deviceId:(id)id audioProviderUUID:(id)d firstPassInfo:(id)info completion:(id)completion;
- (void)_handleVoiceTriggerFirstPassFromRemora:(unint64_t)remora deviceId:(id)id audioProviderUUID:(id)d firstPassInfo:(id)info completion:(id)completion;
- (void)_initializeMediaPlayingState;
- (void)_logRejectionEventToSELF:(id)f result:(unint64_t)result;
- (void)_logSecondPassResult:(unint64_t)result withVTEI:(id)i;
- (void)_logUptimeWithVTSwitchChanged:(BOOL)changed VTEnabled:(BOOL)enabled;
- (void)_mmapModelForPreWarm;
- (void)_prepareStartAudioStream;
- (void)_processSecondPassInExclave:(id)exclave rejectBlock:(id)block;
- (void)_reportDiagnosticsForDelayedVTLaunchIfNeeded:(float)needed;
- (void)_reportModelProcessingLatency;
- (void)_requestStartAudioStreamWitContext:(id)context audioProviderUUID:(id)d startStreamOption:(id)option completion:(id)completion;
- (void)_reset;
- (void)_resetUpTime;
- (void)_resetVoiceTriggerLatencyMetrics;
- (void)_scheduleDidStartSecondPassCompletionWatchDogWithToken:(id)token;
- (void)_scheduleSecondPassCompletionWatchDog;
- (void)_setAsset:(id)asset;
- (void)_setKeywordDetectorStartMachTime:(unint64_t)time detectorEndMachTime:(unint64_t)machTime lastAudioPacketAnalyzedMachTime:(unint64_t)analyzedMachTime;
- (void)_setStartAnalyzeTime:(unint64_t)time;
- (void)_syncVoiceProfileEmbeddingsToExclave;
- (void)_unmapForPrewarmLoadedGraph;
- (void)_voiceTriggerFirstPassDidDetectKeywordFrom:(id)from completion:(id)completion;
- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available;
- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly;
- (void)audioStreamProvider:(id)provider numSamplesAvailableInExclave:(unint64_t)exclave hostTime:(unint64_t)time arrivalHostTimeToAudioRecorder:(unint64_t)recorder exclaveSampleCount:(unint64_t)count;
- (void)cancelCurrentRequest;
- (void)dealloc;
- (void)forceCancelSecondPassTrigger;
- (void)prewarm;
- (void)reset;
- (void)selfTriggerDetector:(id)detector didDetectSelfTrigger:(id)trigger;
- (void)setAsset:(id)asset;
- (void)setFirstPassDeviceId:(id)id;
- (void)setResultCompletion:(id)completion;
- (void)setSecondPassClient:(unint64_t)client;
- (void)setSpeechManager:(id)manager;
- (void)setSupportsMultiPhraseDetection:(BOOL)detection;
- (void)start;
- (void)voiceTriggerPhraseNDEAPIScorerDidDetectedKeyword:(id)keyword bestStartSampleCount:(unint64_t)count bestEndSampleCount:(unint64_t)sampleCount;
- (void)zeroFilter:(id)filter zeroFilteredBufferAvailable:(id)available atHostTime:(unint64_t)time;
@end

@implementation CSVoiceTriggerSecondPass

- (CSAudioCircularBuffer)audioBuffer
{
  WeakRetained = objc_loadWeakRetained(&self->_audioBuffer);

  return WeakRetained;
}

- (CSVoiceTriggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)constructVTEIFromExclaveKeywordResult:(unint64_t)result speakerDetectionResult:(unint64_t)detectionResult phraseId:(unsigned int)id triggerTimestamp:(unint64_t)timestamp triggerStartSampleCount:(unint64_t)count triggerEndSampleCount:(unint64_t)sampleCount
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000AB084;
  v17 = sub_1000AB094;
  v18 = 0;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AB09C;
  v11[3] = &unk_1002507B8;
  v11[4] = self;
  v11[5] = &v13;
  v11[6] = result;
  v11[7] = detectionResult;
  idCopy = id;
  v11[8] = timestamp;
  v11[9] = count;
  v11[10] = sampleCount;
  dispatch_sync(queue, v11);
  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (void)_syncVoiceProfileEmbeddingsToExclave
{
  ssrContext = self->_ssrContext;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AB1D4;
  v6[3] = &unk_100250790;
  v6[4] = self;
  [SSRSpeakerProfileEmbeddingExtractor extractPSRVoiceProfileWithContext:ssrContext completion:v6];
  v4 = self->_ssrContext;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AB358;
  v5[3] = &unk_100250790;
  v5[4] = self;
  [SSRSpeakerProfileEmbeddingExtractor extractSATVoiceProfileWithContext:v4 completion:v5];
}

- (id)convertSecureVoiceTriggerSpeakerDetectionResultTypeToString:(unint64_t)string
{
  if (string - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1002508C0 + string - 1);
  }
}

- (id)convertSecureVoiceTriggerKeywordDetectionResultTypeToString:(unint64_t)string
{
  if (string - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1002508A8 + string - 1);
  }
}

- (void)_unmapForPrewarmLoadedGraph
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    prewarmMmapedSize = self->_prewarmMmapedSize;
    v6 = 136315394;
    v7 = "[CSVoiceTriggerSecondPass _unmapForPrewarmLoadedGraph]";
    v8 = 2048;
    v9 = prewarmMmapedSize;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s unmapping for graph with size: %lu", &v6, 0x16u);
  }

  v5 = self->_prewarmMmapedSize;
  if (v5)
  {
    munmap(self->_prewarmModelGraph, v5);
    self->_prewarmMmapedSize = 0;
    self->_prewarmModelGraph = 0;
  }
}

- (void)_resetVoiceTriggerLatencyMetrics
{
  firstpassMetrics = self->_firstpassMetrics;
  self->_firstpassMetrics = 0;

  secondPassLatencyMetrics = self->_secondPassLatencyMetrics;
  self->_secondPassLatencyMetrics = 0;
}

- (id)_voiceTriggerSecondPassLatencyMetrics
{
  secondPassLatencyMetrics = self->_secondPassLatencyMetrics;
  if (!secondPassLatencyMetrics)
  {
    v4 = objc_alloc_init(CSVTSecondPassLatencyMetrics);
    v5 = self->_secondPassLatencyMetrics;
    self->_secondPassLatencyMetrics = v4;

    secondPassLatencyMetrics = self->_secondPassLatencyMetrics;
  }

  return secondPassLatencyMetrics;
}

- (void)setResultCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_isAdBlockerMatchedBeforeSetResultCompletion)
  {
    v6 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CSVoiceTriggerSecondPass setResultCompletion:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Ads is detected before result completion is set. Notifying VT reject because Ads was detected", &v11, 0xCu);
    }

    self->_isAdBlockerMatchedBeforeSetResultCompletion = 0;
    v7 = objc_retainBlock(v5);
    resultCompletion = self->_resultCompletion;
    self->_resultCompletion = v7;

    [(CSVoiceTriggerSecondPass *)self _notifySecondPassReject:0 result:11 isSecondChanceCandidate:0];
  }

  else
  {
    v9 = objc_retainBlock(completionCopy);
    v10 = self->_resultCompletion;
    self->_resultCompletion = v9;
  }
}

- (void)_clearSecondPassCompletionWatchDog
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    secondPassCompleteWatchDogToken = self->_secondPassCompleteWatchDogToken;
    v6 = 136315394;
    v7 = "[CSVoiceTriggerSecondPass _clearSecondPassCompletionWatchDog]";
    v8 = 2114;
    v9 = secondPassCompleteWatchDogToken;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Clearing secondPassCompletion WatchDogTimer : %{public}@", &v6, 0x16u);
  }

  v5 = self->_secondPassCompleteWatchDogToken;
  self->_secondPassCompleteWatchDogToken = 0;
}

- (void)_scheduleDidStartSecondPassCompletionWatchDogWithToken:(id)token
{
  tokenCopy = token;
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    secondPassCompleteWatchDogToken = self->_secondPassCompleteWatchDogToken;
    v11 = 136315650;
    v12 = "[CSVoiceTriggerSecondPass _scheduleDidStartSecondPassCompletionWatchDogWithToken:]";
    v13 = 2114;
    v14 = *&tokenCopy;
    v15 = 2114;
    v16 = secondPassCompleteWatchDogToken;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s secondPassComplete WDT did fire : %{public}@, currentToken : %{public}@", &v11, 0x20u);
  }

  if ([(NSUUID *)tokenCopy isEqual:self->_secondPassCompleteWatchDogToken])
  {
    [(CSVoiceTriggerSecondPass *)self _notifySecondPassReject:0 result:10 isSecondChanceCandidate:0];
    v7 = +[CSDiagnosticReporter sharedInstance];
    [v7 submitVoiceTriggerIssueReport:kCSDiagnosticReporterVoiceTriggerSecondPassCompleteWatchDogFire];

    v8 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      secondPassCompleteWatchDogTimeoutSec = self->_secondPassCompleteWatchDogTimeoutSec;
      v11 = 136315650;
      v12 = "[CSVoiceTriggerSecondPass _scheduleDidStartSecondPassCompletionWatchDogWithToken:]";
      v13 = 2050;
      v14 = secondPassCompleteWatchDogTimeoutSec;
      v15 = 2114;
      v16 = tokenCopy;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Secondpass didn't complete within %{public}lf seconds with token: %{public}@", &v11, 0x20u);
    }
  }

  else
  {
    v10 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CSVoiceTriggerSecondPass _scheduleDidStartSecondPassCompletionWatchDogWithToken:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s secondPassComplete WDT token doesn't match. Ignore this fire", &v11, 0xCu);
    }
  }
}

- (void)_scheduleSecondPassCompletionWatchDog
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(NSUUID);
  objc_storeStrong(&self->_secondPassCompleteWatchDogToken, v3);
  v4 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    secondPassCompleteWatchDogToken = self->_secondPassCompleteWatchDogToken;
    secondPassCompleteWatchDogTimeoutSec = self->_secondPassCompleteWatchDogTimeoutSec;
    *buf = 136315650;
    v15 = "[CSVoiceTriggerSecondPass _scheduleSecondPassCompletionWatchDog]";
    v16 = 2114;
    v17 = secondPassCompleteWatchDogToken;
    v18 = 2050;
    v19 = secondPassCompleteWatchDogTimeoutSec;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Schedule secondPassComplete WDT %{public}@ for %{public}lf seconds", buf, 0x20u);
  }

  v7 = dispatch_time(0, (self->_secondPassCompleteWatchDogTimeoutSec * 1000000000.0));
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ABC2C;
  block[3] = &unk_1002538D8;
  objc_copyWeak(&v12, &location);
  v11 = v3;
  v9 = v3;
  dispatch_after(v7, queue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_setStartAnalyzeTime:(unint64_t)time
{
  if (!self->_isStartSampleCountMarked)
  {
    self->_isStartSampleCountMarked = 1;
    self->_secondPassAnalyzerStartSampleCount = time;
    v4 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      uUID = [(CSVoiceTriggerSecondPass *)self UUID];
      secondPassAnalyzerStartSampleCount = self->_secondPassAnalyzerStartSampleCount;
      v8 = 136315650;
      v9 = "[CSVoiceTriggerSecondPass _setStartAnalyzeTime:]";
      v10 = 2114;
      v11 = uUID;
      v12 = 2050;
      v13 = secondPassAnalyzerStartSampleCount;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:set StartAnalyzeSampleCount = %{public}llu", &v8, 0x20u);
    }
  }
}

- (BOOL)_shouldLogMediaplayState:(unint64_t)state
{
  if (!+[CSUtils supportHearstVoiceTrigger]|| (result = 1, state != 3) && state != 6)
  {
    if (CSIsIOS() && state - 1 < 0xB && ((0x581u >> (state - 1)) & 1) != 0)
    {
      return 1;
    }

    else
    {
      result = CSIsHorseman();
      if (state != 1)
      {
        return 0;
      }
    }
  }

  return result;
}

- (void)_logSecondPassResult:(unint64_t)result withVTEI:(id)i
{
  iCopy = i;
  v7 = kVTEIrecognizerScore;
  v8 = [iCopy objectForKeyedSubscript:kVTEIrecognizerScore];
  v9 = 0.0;
  v10 = 0.0;
  if (v8)
  {
    v11 = [iCopy objectForKeyedSubscript:v7];
    [v11 floatValue];
    v10 = v12;
  }

  v13 = kVTEItriggerScore;
  v14 = [iCopy objectForKeyedSubscript:kVTEItriggerScore];
  if (v14)
  {
    v15 = [iCopy objectForKeyedSubscript:v13];
    [v15 floatValue];
    v9 = v16;
  }

  v17 = kVTEIsatScore;
  v18 = [iCopy objectForKeyedSubscript:kVTEIsatScore];
  v19 = 0.0;
  v20 = 0.0;
  if (v18)
  {
    v21 = [iCopy objectForKeyedSubscript:v17];
    [v21 floatValue];
    v20 = v22;
  }

  v66 = v20;

  v23 = kVTEItdsrScore;
  v24 = [iCopy objectForKeyedSubscript:kVTEItdsrScore];
  if (v24)
  {
    v25 = [iCopy objectForKeyedSubscript:v23];
    [v25 floatValue];
    v19 = v26;
  }

  v27 = kVTEItdsrCombinedScore;
  v28 = [iCopy objectForKeyedSubscript:kVTEItdsrCombinedScore];
  v29 = 0.0;
  v30 = 0.0;
  if (v28)
  {
    v31 = [iCopy objectForKeyedSubscript:v27];
    [v31 floatValue];
    v30 = v32;
  }

  v33 = kVTEItotalSamplesAtEndOfCapture;
  v34 = [iCopy objectForKeyedSubscript:kVTEItotalSamplesAtEndOfCapture];
  if (v34)
  {
    v35 = [iCopy objectForKeyedSubscript:v33];
    unsignedIntegerValue = [v35 unsignedIntegerValue];
    +[CSConfig inputRecordingSampleRate];
    v29 = (unsignedIntegerValue / v37);
  }

  v38 = kVTEIeffectiveThreshold;
  v39 = [iCopy objectForKeyedSubscript:kVTEIeffectiveThreshold];
  v40 = 0.0;
  v41 = 0.0;
  if (v39)
  {
    v42 = [iCopy objectForKeyedSubscript:v38];
    [v42 floatValue];
    v41 = v43;
  }

  v44 = kVTEItdsrCombinedThreshold;
  v45 = [iCopy objectForKeyedSubscript:kVTEItdsrCombinedThreshold];
  if (v45)
  {
    v46 = [iCopy objectForKeyedSubscript:v44];
    [v46 floatValue];
    v40 = v47;
  }

  v48 = kVTEIsatNumberTrainingUtterances;
  v49 = [iCopy objectForKeyedSubscript:kVTEIsatNumberTrainingUtterances];
  if (v49)
  {
    v50 = [iCopy objectForKeyedSubscript:v48];
    unsignedIntegerValue2 = [v50 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 0;
  }

  v52 = kVTEIfirstPassTriggerSource;
  v53 = [iCopy objectForKeyedSubscript:kVTEIfirstPassTriggerSource];
  if (v53)
  {
    v54 = [iCopy objectForKeyedSubscript:v52];
  }

  else
  {
    v54 = @"n/a";
  }

  v55 = [CSVoiceTriggerSecondPass stringForSecondPassResult:result];
  _fetchSiriLocale = [(CSVoiceTriggerSecondPass *)self _fetchSiriLocale];
  v57 = [iCopy objectForKeyedSubscript:kVTEITriggeredPhId];
  unsignedIntegerValue3 = [v57 unsignedIntegerValue];

  v59 = [NSString stringWithFormat:@"SecondPass Result Summary: \nLocale: %@\nAllowMultiPhrase: %d\nFirstPassSource: %@\nAnalyzedSecs: %.3f\nNdapiScore: %.3f\nCheckerScore: %.3f\nCombinedVTScore: %.3f\nEffectiveThreshold: %.3f\n", _fetchSiriLocale, self->_supportsMph, v54, *&v29, (v9 - v10), v10, v9, *&v41];
  v60 = v59;
  if (self->_speakerRecognitionController)
  {
    v61 = [v59 stringByAppendingFormat:@"\nPHS Summary: \nDNNScore: %.3f\nLSTMScore: %.3f\nCombinedPHSScore: %.3f\nNumSATVectors: %lu\ntdsrCombinedThreshold: %.3f\n", *&v66, *&v19, *&v30, unsignedIntegerValue2, *&v40];

    v60 = v61;
  }

  v62 = +[CSPowerLogger sharedPowerLogger];
  *&v63 = v9;
  [v62 powerLogSecondPassWithResult:result withSecondPassScore:unsignedIntegerValue3 withPhId:v63];

  v64 = [v60 stringByAppendingFormat:@"\nDecision: %@", v55];

  v65 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v68 = "[CSVoiceTriggerSecondPass _logSecondPassResult:withVTEI:]";
    v69 = 2114;
    v70 = v64;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "KeyLog - %s %{public}@", buf, 0x16u);
  }
}

- (id)_getFirstPassTriggerSourceAsString:(unint64_t)string
{
  if (string <= 0xE && ((0x7BFFu >> string) & 1) != 0)
  {
    v3 = **(&off_100250830 + string);
  }

  else
  {
    v3 = &stru_1002546C0;
  }

  return v3;
}

- (void)zeroFilter:(id)filter zeroFilteredBufferAvailable:(id)available atHostTime:(unint64_t)time
{
  queue = self->_queue;
  availableCopy = available;
  dispatch_assert_queue_V2(queue);
  v9 = [availableCopy length] >> 1;
  _getAudioTimeConverter = [(CSVoiceTriggerSecondPass *)self _getAudioTimeConverter];
  v11 = [_getAudioTimeConverter sampleCountFromHostTime:time];

  v12 = [CSAudioChunk alloc];
  v13 = +[CSConfig inputRecordingSampleByteDepth];
  LOBYTE(v14) = +[CSConfig inputRecordingIsFloat];
  v15 = [v12 initWithData:availableCopy numChannels:1 numSamples:v9 sampleByteDepth:v13 startSampleCount:v11 hostTime:time remoteVAD:0 isFloat:v14];

  [(CSVoiceTriggerSecondPass *)self _handleAudioChunk:v15 shouldPreprocessedByZeroFilter:0];
}

- (void)CSVolumeMonitor:(id)monitor didReceiveMusicVolumeChanged:(float)changed
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AC5F8;
  v5[3] = &unk_1002534E8;
  v5[4] = self;
  changedCopy = changed;
  dispatch_async(queue, v5);
}

- (void)CSMediaPlayingMonitor:(id)monitor didReceiveMediaPlayingChanged:(int64_t)changed
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AC67C;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = changed;
  dispatch_async(queue, v5);
}

- (void)selfTriggerDetector:(id)detector didDetectSelfTrigger:(id)trigger
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC6FC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart
{
  restartCopy = restart;
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    *buf = 136315394;
    v11 = "[CSVoiceTriggerSecondPass CSAudioServerCrashMonitorDidReceiveServerRestart:]";
    v12 = 2114;
    v13 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:audiomxd/bridgeaudiod recovered from crash", buf, 0x16u);
  }

  if ((CSIsHorseman() & 1) != 0 || CSHasAOP())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AC854;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_handlePHSResults:(id)results voiceTriggerEventInfo:(id)info forPhId:(unint64_t)id
{
  resultsCopy = results;
  v8 = [info mutableCopy];
  v9 = kSSRSpeakerRecognitionKnownUserScoresKey;
  v10 = [resultsCopy objectForKeyedSubscript:kSSRSpeakerRecognitionKnownUserScoresKey];
  v11 = [resultsCopy objectForKeyedSubscript:kSSRSpeakerRecognitionKnownUserPSRScoresKey];
  v12 = [resultsCopy objectForKeyedSubscript:kSSRSpeakerRecognitionKnownUserSATScoresKey];
  v13 = [resultsCopy objectForKeyedSubscript:kSSRSpeakerRecognitionKnownUserPSRExpScoresKey];
  v92 = [resultsCopy objectForKeyedSubscript:kSSRSpeakerRecognitionKnownUserSATExpScoresKey];
  allValues = [v10 allValues];
  v15 = [allValues count];

  if (v15)
  {
    v16 = [resultsCopy objectForKeyedSubscript:kSSRSpeakerRecognitionPSRAdditionalContextKey];
    v17 = kSSRSpeakerRecognitionNumSpeakerVector;
    v18 = [v16 objectForKeyedSubscript:kSSRSpeakerRecognitionNumSpeakerVector];

    v19 = [resultsCopy objectForKeyedSubscript:kSSRSpeakerRecognitionSATAdditionalContextKey];
    v20 = [v19 objectForKeyedSubscript:v17];

    v90 = v20;
    if (v18)
    {
      allValues2 = [v18 allValues];
      firstObject = [allValues2 firstObject];
      HIDWORD(v82) = [firstObject unsignedIntValue];

      v20 = v90;
    }

    else
    {
      HIDWORD(v82) = -1;
    }

    v84 = v18;
    if (v20)
    {
      allValues3 = [v20 allValues];
      firstObject2 = [allValues3 firstObject];
      LODWORD(v82) = [firstObject2 unsignedIntValue];
    }

    else
    {
      LODWORD(v82) = -1;
    }

    v89 = -1000.0;
    v85 = v10;
    allValues4 = [v10 allValues];
    firstObject3 = [allValues4 firstObject];
    [firstObject3 floatValue];
    v29 = v28;

    allValues5 = [v11 allValues];
    firstObject4 = [allValues5 firstObject];
    v88 = -1000.0;
    v32 = v13;
    if (firstObject4)
    {
      allValues6 = [v11 allValues];
      firstObject5 = [allValues6 firstObject];
      [firstObject5 floatValue];
      v88 = v35;

      v13 = v32;
    }

    v87 = v11;

    allValues7 = [v12 allValues];
    firstObject6 = [allValues7 firstObject];
    v38 = v12;
    v39 = -1000.0;
    if (firstObject6)
    {
      allValues8 = [v38 allValues];
      firstObject7 = [allValues8 firstObject];
      [firstObject7 floatValue];
      v39 = v42;

      v13 = v32;
    }

    v86 = v38;

    allValues9 = [v13 allValues];
    firstObject8 = [allValues9 firstObject];
    v45 = -1000.0;
    if (firstObject8)
    {
      allValues10 = [v13 allValues];
      firstObject9 = [allValues10 firstObject];
      [firstObject9 floatValue];
      v45 = v48;
    }

    allValues11 = [v92 allValues];
    firstObject10 = [allValues11 firstObject];
    if (firstObject10)
    {
      allValues12 = [v92 allValues];
      firstObject11 = [allValues12 firstObject];
      [firstObject11 floatValue];
      v89 = v53;
    }

    [(CSAsset *)self->_currentAsset satScoreThresholdForPhId:id];
    v55 = v54;
    [(CSVoiceTriggerSecondPass *)self _addPHSInfoToVTEI:v8 fromSpeakerInfo:resultsCopy withThreshold:?];
    [(CSVoiceTriggerSecondPass *)self _addRejectStatsToDict:v8];
    if (CSIsInternalBuild())
    {
      v56 = +[CSFPreferences sharedPreferences];
      isReducedPHSThresholdEnabled = [v56 isReducedPHSThresholdEnabled];

      if (isReducedPHSThresholdEnabled)
      {
        v58 = CSLogCategoryVT;
        v55 = 0.0;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v94 = "[CSVoiceTriggerSecondPass _handlePHSResults:voiceTriggerEventInfo:forPhId:]";
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%s Override PHS threshold to 0", buf, 0xCu);
        }
      }
    }

    v59 = CSLogCategoryVT;
    v60 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT);
    if (v29 >= v55)
    {
      v13 = v32;
      v68 = v84;
      if (v60)
      {
        v73 = v59;
        uUID = [(CSVoiceTriggerSecondPass *)self UUID];
        *buf = 136317442;
        v94 = "[CSVoiceTriggerSecondPass _handlePHSResults:voiceTriggerEventInfo:forPhId:]";
        v95 = 2114;
        v96 = uUID;
        v97 = 2050;
        v98 = v29;
        v99 = 1026;
        v100 = v83;
        v101 = 1026;
        v102 = HIDWORD(v83);
        v103 = 2050;
        v104 = v88;
        v105 = 2050;
        v106 = v45;
        v107 = 2050;
        v108 = v39;
        v109 = 2050;
        v110 = v89;
        v111 = 2050;
        v112 = v55;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:PHS Accept: Score %{public}.3f(%{public}d, %{public}d), PSR = [%{public}.3f, %{public}.3f], SAT = [%{public}.3f, %{public}.3f] Threshold %{public}f \n", buf, 0x5Eu);
      }

      [v8 setObject:&__kCFBooleanTrue forKey:kVTEIsatTriggered];
      v75 = +[CSVoiceTriggerStatistics sharedInstance];
      [v75 resetPHSRejectCount];

      [(CSVoiceTriggerSecondPass *)self _handleSecondPassSuccess:v8];
      v12 = v86;
      v11 = v87;
      v10 = v85;
      v76 = v90;
    }

    else
    {
      if (v60)
      {
        v61 = v59;
        uUID2 = [(CSVoiceTriggerSecondPass *)self UUID];
        *buf = 136317442;
        v94 = "[CSVoiceTriggerSecondPass _handlePHSResults:voiceTriggerEventInfo:forPhId:]";
        v95 = 2114;
        v96 = uUID2;
        v97 = 2050;
        v98 = v29;
        v99 = 1026;
        v100 = v83;
        v101 = 1026;
        v102 = HIDWORD(v83);
        v103 = 2050;
        v104 = v88;
        v105 = 2050;
        v106 = v45;
        v107 = 2050;
        v108 = v39;
        v109 = 2050;
        v110 = v89;
        v111 = 2050;
        v112 = v55;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:PHS Reject: Score %{public}f(%{public}d, %{public}d) PSR = [%{public}.3f, %{public}.3f], SAT = [%{public}.3f, %{public}.3f] Threshold %{public}f \n", buf, 0x5Eu);
      }

      v63 = [v8 objectForKeyedSubscript:kVTEItriggerScore];
      [v63 floatValue];
      v65 = v64;

      [v8 setObject:&__kCFBooleanFalse forKey:kVTEIsatTriggered];
      phraseConfigs = [(CSVoiceTriggerSecondPassConfig *)self->_config phraseConfigs];
      v67 = [phraseConfigs count];

      v68 = v84;
      if (v67 <= id)
      {
        v72 = INFINITY;
      }

      else
      {
        phraseConfigs2 = [(CSVoiceTriggerSecondPassConfig *)self->_config phraseConfigs];
        v70 = [phraseConfigs2 objectAtIndex:id];
        [v70 keywordRejectLoggingThreshold];
        v72 = v71;
      }

      v12 = v86;
      v11 = v87;
      v13 = v32;
      v76 = v90;
      v10 = v85;
      if (v29 >= self->_phsRejectLoggingThreshold && v65 >= v72)
      {
        v77 = +[CSVoiceTriggerDataCollector sharedInstance];
        [v77 addVTRejectEntry:v8 truncateData:0];
      }

      v78 = +[CSVoiceTriggerStatistics sharedInstance];
      [v78 incrementPHSRejectCount];

      [(CSVoiceTriggerSecondPass *)self _notifySecondPassReject:v8 result:9 isSecondChanceCandidate:0];
    }
  }

  else
  {
    v23 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v79 = v23;
      uUID3 = [(CSVoiceTriggerSecondPass *)self UUID];
      [resultsCopy objectForKeyedSubscript:v9];
      v81 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315650;
      v94 = "[CSVoiceTriggerSecondPass _handlePHSResults:voiceTriggerEventInfo:forPhId:]";
      v95 = 2114;
      v96 = uUID3;
      v97 = 2114;
      v98 = v81;
      _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:ERR: Failed to retrieve PHS score, letting trigger through - %{public}@", buf, 0x20u);
    }

    [(CSVoiceTriggerSecondPass *)self _handleSecondPassSuccess:v8];
  }
}

- (void)_addPHSInfoToVTEI:(id)i fromSpeakerInfo:(id)info withThreshold:(float)threshold
{
  iCopy = i;
  infoCopy = info;
  v9 = kSSRSpeakerRecognitionKnownUserScoresKey;
  v10 = [infoCopy objectForKeyedSubscript:kSSRSpeakerRecognitionKnownUserScoresKey];

  if (!v10)
  {
    goto LABEL_38;
  }

  v11 = [infoCopy objectForKeyedSubscript:v9];
  allKeys = [v11 allKeys];
  firstObject = [allKeys firstObject];

  if (firstObject)
  {
    v14 = kSSRSpeakerRecognitionKnownUserPSRScoresKey;
    v15 = [infoCopy objectForKeyedSubscript:kSSRSpeakerRecognitionKnownUserPSRScoresKey];

    if (v15)
    {
      v16 = [infoCopy objectForKeyedSubscript:v14];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 objectForKeyedSubscript:firstObject];

        if (v18)
        {
          v19 = [infoCopy objectForKeyedSubscript:v9];
          v20 = [v19 objectForKeyedSubscript:firstObject];
          [v20 floatValue];
          v22 = v21;

          v23 = [v17 objectForKeyedSubscript:firstObject];
          [v23 floatValue];
          v25 = v24;

          v26 = [infoCopy objectForKeyedSubscript:kSSRSpeakerRecognitionCombinationWeight];
          [v26 floatValue];
          v28 = v27;

          LODWORD(v29) = v22;
          v30 = [NSNumber numberWithFloat:v29];
          [iCopy setObject:v30 forKey:kVTEItdsrCombinedScore];

          LODWORD(v31) = v25;
          v32 = [NSNumber numberWithFloat:v31];
          [iCopy setObject:v32 forKey:kVTEItdsrScore];

          *&v33 = threshold;
          v34 = [NSNumber numberWithFloat:v33];
          [iCopy setObject:v34 forKey:kVTEItdsrCombinedThreshold];

          LODWORD(v35) = v28;
          v36 = [NSNumber numberWithFloat:v35];
          [iCopy setObject:v36 forKey:kVTEItdsrCombinationWeight];
        }
      }
    }

    v37 = kSSRSpeakerRecognitionKnownUserSATScoresKey;
    v38 = [infoCopy objectForKeyedSubscript:kSSRSpeakerRecognitionKnownUserSATScoresKey];

    if (v38)
    {
      v39 = [infoCopy objectForKeyedSubscript:v37];
      v40 = v39;
      if (v39)
      {
        v41 = [v39 objectForKeyedSubscript:firstObject];

        if (v41)
        {
          v42 = [v40 objectForKeyedSubscript:firstObject];
          [v42 floatValue];
          v44 = v43;

          LODWORD(v45) = v44;
          v46 = [NSNumber numberWithFloat:v45];
          [iCopy setObject:v46 forKey:kVTEIsatScore];

          *&v47 = threshold;
          v48 = [NSNumber numberWithFloat:v47];
          [iCopy setObject:v48 forKey:kVTEIsatThreshold];
        }
      }
    }

    v49 = kSSRSpeakerRecognitionSATAdditionalContextKey;
    v50 = [infoCopy objectForKeyedSubscript:kSSRSpeakerRecognitionSATAdditionalContextKey];

    if (v50)
    {
      v51 = [infoCopy objectForKeyedSubscript:v49];
      v52 = [v51 objectForKeyedSubscript:kSSRSpeakerRecognitionNumSpeakerVector];
      v53 = v52;
      if (v52)
      {
        v54 = [v52 objectForKeyedSubscript:firstObject];

        if (v54)
        {
          v55 = [v53 objectForKeyedSubscript:firstObject];
          unsignedIntegerValue = [v55 unsignedIntegerValue];

          v57 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
          [iCopy setObject:v57 forKey:kVTEIsatNumberTrainingUtterances];
        }
      }
    }

    v58 = kSSRSpeakerRecognitionPSRAdditionalContextKey;
    v59 = [infoCopy objectForKeyedSubscript:kSSRSpeakerRecognitionPSRAdditionalContextKey];

    if (v59)
    {
      v60 = [infoCopy objectForKeyedSubscript:v58];
      v61 = [v60 objectForKeyedSubscript:kSSRSpeakerRecognitionNumSpeakerVector];
      v62 = v61;
      if (v61)
      {
        v63 = [v61 objectForKeyedSubscript:firstObject];

        if (v63)
        {
          v64 = [v62 objectForKeyedSubscript:firstObject];
          unsignedIntegerValue2 = [v64 unsignedIntegerValue];

          v66 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue2];
          [iCopy setObject:v66 forKey:kVTEIsatNumberTrainingUtterances];
        }
      }
    }

    v67 = kSSRSpeakerRecognitionNumEnrollmentUtterances;
    v68 = [infoCopy objectForKeyedSubscript:kSSRSpeakerRecognitionNumEnrollmentUtterances];

    if (v68)
    {
      v69 = [infoCopy objectForKeyedSubscript:v67];
      v70 = v69;
      if (v69)
      {
        v71 = [v69 objectForKeyedSubscript:firstObject];

        if (v71)
        {
          v72 = [v70 objectForKeyedSubscript:firstObject];
          unsignedIntegerValue3 = [v72 unsignedIntegerValue];

          v74 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue3];
          [iCopy setObject:v74 forKey:kVTEINumHSUtterances];
        }
      }
    }

    v75 = kSSRSpeakerRecognitionKnownUserPSRExpScoresKey;
    v76 = [infoCopy objectForKeyedSubscript:kSSRSpeakerRecognitionKnownUserPSRExpScoresKey];

    if (v76)
    {
      v77 = [infoCopy objectForKeyedSubscript:v75];
      v78 = v77;
      if (v77)
      {
        v79 = [v77 objectForKeyedSubscript:firstObject];

        if (v79)
        {
          v80 = [v78 objectForKeyedSubscript:firstObject];
          [v80 floatValue];
          v82 = v81;

          LODWORD(v83) = v82;
          v84 = [NSNumber numberWithFloat:v83];
          [iCopy setObject:v84 forKey:kVTEItriggerExplicitTDSRSatScore];
        }
      }
    }

    v85 = kSSRSpeakerRecognitionKnownUserSATExpScoresKey;
    v86 = [infoCopy objectForKeyedSubscript:kSSRSpeakerRecognitionKnownUserSATExpScoresKey];

    if (v86)
    {
      v87 = [infoCopy objectForKeyedSubscript:v85];
      v88 = v87;
      if (v87)
      {
        v89 = [v87 objectForKeyedSubscript:firstObject];

        if (v89)
        {
          v90 = [v88 objectForKeyedSubscript:firstObject];
          [v90 floatValue];
          v92 = v91;

          LODWORD(v93) = v92;
          v94 = [NSNumber numberWithFloat:v93];
          [iCopy setObject:v94 forKey:kVTEItriggerExplicitSatScore];
        }
      }
    }
  }

  else
  {
LABEL_38:
    v95 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v96 = 136315394;
      v97 = "[CSVoiceTriggerSecondPass _addPHSInfoToVTEI:fromSpeakerInfo:withThreshold:]";
      v98 = 2112;
      v99 = infoCopy;
      _os_log_error_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "%s ERR: No known voice profile reported in %@", &v96, 0x16u);
    }

    firstObject = 0;
  }
}

- (void)_getDidWakeAP:(id)p
{
  self->_didWakeAP = 0;
  if (p)
  {
    v4 = [p objectForKeyedSubscript:@"trigger-woke-ap"];
    v5 = v4;
    if (v4)
    {
      v7 = v4;
      bOOLValue = [v4 BOOLValue];
      v5 = v7;
      if (bOOLValue)
      {
        self->_didWakeAP = 1;
      }
    }
  }
}

- (void)_addDeviceStatusInfoToDict:(id)dict
{
  dictCopy = dict;
  v3 = [dictCopy objectForKeyedSubscript:kVTEItriggerStartMachTime];
  longLongValue = [v3 longLongValue];

  if (longLongValue)
  {
    v5 = +[CSGestureMonitor sharedInstance];
    isTriggerHandheld = [v5 isTriggerHandheld];

    v7 = +[CSSiriAssertionMonitor sharedInstance];
    isEnabled = [v7 isEnabled];

    v9 = [NSNumber numberWithBool:isTriggerHandheld];
    [dictCopy setObject:v9 forKey:kVTEIDeviceHandHeld];

    v10 = [NSNumber numberWithBool:isEnabled];
    [dictCopy setObject:v10 forKey:kVTEISiriIsActiveOrOtherAssertion];
  }
}

- (void)_addRejectStatsToDict:(id)dict
{
  dictCopy = dict;
  +[CSUtils systemUpTime];
  v4 = v3;
  v5 = +[CSVoiceTriggerStatistics sharedInstance];
  [v5 getLastPHSRejectTime];
  v7 = v6;

  v8 = +[CSVoiceTriggerStatistics sharedInstance];
  getPHSRejectCount = [v8 getPHSRejectCount];

  v10 = [NSNumber numberWithUnsignedInteger:getPHSRejectCount];
  [dictCopy setObject:v10 forKey:kVTEILastConsecutivePHSRejects];

  if (getPHSRejectCount)
  {
    v11 = [NSNumber numberWithDouble:v4 - v7];
    [dictCopy setObject:v11 forKey:kVTEIDeltaTimeFromlastPHSReject];
  }

  else
  {
    [dictCopy setObject:&off_10025E348 forKey:kVTEIDeltaTimeFromlastPHSReject];
  }
}

- (void)_calculateRecordingTimeForAOPTriggerFromFirstPassInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = mach_absolute_time();
  LODWORD(v9) = 1.5;
  v10 = [CSFTimeUtils secondsToHostTime:v9];
  +[CSConfig inputRecordingSampleRate];
  v12 = v11;
  v13 = [infoCopy objectForKeyedSubscript:@"trigger-time"];

  v14 = &CSLogCategorySDSD_ptr;
  if (!v13)
  {
    unsignedLongLongValue = (v8 - v10);
    AOPVTTriggerLength = (v12 * 1.5);
    v24 = CSLogCategoryVT;
    if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v25 = v24;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    v47 = 136315394;
    v48 = "[CSVoiceTriggerSecondPass _calculateRecordingTimeForAOPTriggerFromFirstPassInfo:completion:]";
    v49 = 2114;
    v50 = uUID;
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Failed to get AOP trigger-time", &v47, 0x16u);
    goto LABEL_14;
  }

  v15 = [infoCopy objectForKeyedSubscript:@"trigger-time"];
  unsignedLongLongValue = [v15 unsignedLongLongValue];

  [CSFTimeUtils hostTimeToSeconds:mach_absolute_time() - unsignedLongLongValue];
  v18 = v17;
  +[CSConfig inputRecordingSampleRate];
  self->_timeBasedEstimatedTriggerLength = (v18 * v19);
  v20 = [infoCopy objectForKeyedSubscript:@"trigger-length"];
  if (v20)
  {
    v21 = [infoCopy objectForKeyedSubscript:@"trigger-length"];
    p_AOPVTTriggerLength = &self->_AOPVTTriggerLength;
    self->_AOPVTTriggerLength = [v21 unsignedLongValue];
  }

  else
  {
    p_AOPVTTriggerLength = &self->_AOPVTTriggerLength;
    self->_AOPVTTriggerLength = self->_timeBasedEstimatedTriggerLength;
  }

  AOPVTTriggerLength = self->_AOPVTTriggerLength;
  config = self->_config;
  v28 = AOPVTTriggerLength;
  if (!config)
  {
LABEL_10:
    if (v28 < 0x13881)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (([(CSVoiceTriggerSecondPassConfig *)config useTimeBasedTriggerLength]& 1) == 0)
  {
    v28 = *p_AOPVTTriggerLength;
    goto LABEL_10;
  }

LABEL_11:
  AOPVTTriggerLength = self->_timeBasedEstimatedTriggerLength;
LABEL_12:
  v29 = [infoCopy objectForKeyedSubscript:@"trigger-config-blob"];

  if (v29)
  {
    v30 = [CSKeywordAnalyzerNDEAPIResult alloc];
    v31 = [infoCopy objectForKeyedSubscript:@"trigger-config-blob"];
    v25 = [v30 initWithBlob:v31 isEarlyDetected:0];

    [CSFTimeUtils hostTimeToSeconds:mach_absolute_time() - unsignedLongLongValue];
    v33 = v32;
    samplesFed = [v25 samplesFed];
    v35 = (samplesFed - [v25 bestStart]);
    +[CSConfig inputRecordingSampleRate];
    v37 = v33 - (v35 / v36);
    v14 = &CSLogCategorySDSD_ptr;
    uUID = +[CSVoiceTriggerStatAggregator sharedAggregator];
    *&v38 = v37;
    [uUID logAOPFirstPassTriggerWakeupLatency:v38];
LABEL_14:

    goto LABEL_16;
  }

  v14 = &CSLogCategorySDSD_ptr;
LABEL_16:
  v39 = [infoCopy objectForKeyedSubscript:@"trigger-length"];

  if (v39)
  {
    sharedAggregator = [v14[102] sharedAggregator];
    [sharedAggregator logTimeBasedTriggerLengthSampleCountStatistics:self->_timeBasedEstimatedTriggerLength withAOPVTTriggerLengthSampleCount:self->_AOPVTTriggerLength];
LABEL_18:

    goto LABEL_20;
  }

  v42 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    sharedAggregator = v42;
    uUID2 = [(CSVoiceTriggerSecondPass *)self UUID];
    v47 = 136315394;
    v48 = "[CSVoiceTriggerSecondPass _calculateRecordingTimeForAOPTriggerFromFirstPassInfo:completion:]";
    v49 = 2114;
    v50 = uUID2;
    _os_log_error_impl(&_mh_execute_header, sharedAggregator, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Failed to get AOP trigger-length", &v47, 0x16u);

    goto LABEL_18;
  }

LABEL_20:
  *&v41 = self->_secondPassPrependingSec;
  v43 = [CSFTimeUtils secondsToHostTime:v41];
  secondPassPrependingSec = self->_secondPassPrependingSec;
  +[CSConfig inputRecordingSampleRate];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, unsignedLongLongValue - v43, ((AOPVTTriggerLength + (secondPassPrependingSec * v45)) + self->_analyzerTrailingSamples));
  }
}

- (void)_handleVoiceTriggerFirstPassFromAOP:(id)p audioProviderUUID:(id)d completion:(id)completion
{
  pCopy = p;
  dCopy = d;
  completionCopy = completion;
  v11 = +[CSConfig channelForProcessedInput];
  self->_activeChannel = v11;
  [(CSPhraseDetector *)self->_phraseDetector setActiveChannel:v11];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000AE518;
  v42[3] = &unk_100250600;
  v42[4] = &v47;
  v42[5] = &v43;
  [(CSVoiceTriggerSecondPass *)self _calculateRecordingTimeForAOPTriggerFromFirstPassInfo:pCopy completion:v42];
  v12 = v44[3];
  self->_secondPassTimeout = v12;
  +[CSConfig inputRecordingDurationInSecs];
  v14 = v13;
  +[CSConfig inputRecordingSampleRate];
  if ((v14 * v15) < v12)
  {
    v16 = CSLogCategoryVT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      uUID = [(CSVoiceTriggerSecondPass *)self UUID];
      secondPassTimeout = self->_secondPassTimeout;
      +[CSConfig inputRecordingSampleRate];
      v38 = v37;
      +[CSConfig inputRecordingDurationInSecs];
      *buf = 136315906;
      v52 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromAOP:audioProviderUUID:completion:]";
      v53 = 2114;
      v54 = uUID;
      v55 = 2050;
      v56 = (secondPassTimeout / v38);
      v57 = 2050;
      v58 = v39;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Second pass timeout (%{public}.2fs) should not exceed the max size of %{public}.2fs, set to max size", buf, 0x2Au);
    }

    +[CSConfig inputRecordingDurationInSecs];
    v18 = v17;
    +[CSConfig inputRecordingSampleRate];
    self->_secondPassTimeout = (v18 * v19);
  }

  v20 = CSLogCategoryVT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    uUID2 = [(CSVoiceTriggerSecondPass *)self UUID];
    v22 = self->_secondPassTimeout;
    +[CSConfig inputRecordingSampleRate];
    *buf = 136315906;
    v52 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromAOP:audioProviderUUID:completion:]";
    v53 = 2114;
    v54 = uUID2;
    v55 = 2050;
    v56 = *&v22;
    v57 = 2050;
    v58 = (v22 / v23);
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Second pass set to analyze %{public}tu samples (%{public}.2fs)", buf, 0x2Au);
  }

  if (CSIsIOS() && (+[CSUtils isDarwinOS]& 1) == 0)
  {
    v24 = +[CSUtils supportZeroFilter:](CSUtils, "supportZeroFilter:", +[CSConfig inputRecordingNumberOfChannels]);
  }

  else
  {
    v24 = 1;
  }

  v25 = +[CSFPreferences sharedPreferences];
  programmableAudioInjectionEnabled = [v25 programmableAudioInjectionEnabled];

  if (((programmableAudioInjectionEnabled | v24) & 1) == 0)
  {
    v27 = CSLogCategoryVT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      uUID3 = [(CSVoiceTriggerSecondPass *)self UUID];
      *buf = 136315394;
      v52 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromAOP:audioProviderUUID:completion:]";
      v53 = 2114;
      v54 = uUID3;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Using zero filter for AOP trigger", buf, 0x16u);
    }

    v29 = objc_alloc_init(CSVoiceTriggerAwareZeroFilter);
    zeroFilter = self->_zeroFilter;
    self->_zeroFilter = v29;

    [(CSVoiceTriggerAwareZeroFilter *)self->_zeroFilter setDelegate:self];
    v31 = self->_zeroFilter;
    +[CSConfig inputRecordingSampleRate];
    [(CSVoiceTriggerAwareZeroFilter *)v31 resetWithSampleRate:1 containsVoiceTrigger:0 voiceTriggerInfo:?];
  }

  v32 = objc_alloc_init(CSAudioStartStreamOption);
  [v32 setRequestHistoricalAudioDataWithHostTime:1];
  [v32 setStartRecordingHostTime:v48[3]];
  [v32 setStartAlertBehavior:0];
  [v32 setStopAlertBehavior:0];
  [v32 setErrorAlertBehavior:0];
  v33 = +[CSAudioRecordContext contextForBuiltInVoiceTrigger];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000AE534;
  v40[3] = &unk_100253220;
  v34 = completionCopy;
  v41 = v34;
  [(CSVoiceTriggerSecondPass *)self _requestStartAudioStreamWitContext:v33 audioProviderUUID:dCopy startStreamOption:v32 completion:v40];
  [(CSVoiceTriggerSecondPass *)self setResultCompletion:v34];

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
}

- (void)CSVoiceTriggerEnabledMonitor:(id)monitor didReceiveEnabled:(BOOL)enabled
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AE63C;
  v5[3] = &unk_100253BF8;
  v5[4] = self;
  enabledCopy = enabled;
  dispatch_async(queue, v5);
}

- (void)_resetUpTime
{
  self->_cumulativeUptime = 0.0;
  self->_cumulativeDowntime = 0.0;
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    v6 = 136315394;
    v7 = "[CSVoiceTriggerSecondPass _resetUpTime]";
    v8 = 2114;
    v9 = uUID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:VoiceTrigger uptime/downtime reset", &v6, 0x16u);
  }
}

- (void)_logUptimeWithVTSwitchChanged:(BOOL)changed VTEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  changedCopy = changed;
  +[CSUtils systemUpTime];
  v8 = v7;
  lastAggTime = self->_lastAggTime;
  if (lastAggTime > 0.0)
  {
    v10 = v8 - lastAggTime;
    if (changedCopy)
    {
      if (enabledCopy)
      {
        self->_cumulativeDowntime = v10 + self->_cumulativeDowntime;
        v11 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          uUID = [(CSVoiceTriggerSecondPass *)self UUID];
          v16 = 136315650;
          v17 = "[CSVoiceTriggerSecondPass _logUptimeWithVTSwitchChanged:VTEnabled:]";
          v18 = 2114;
          v19 = uUID;
          v20 = 2050;
          v21 = v10;
          v14 = "%s CSVoiceTriggerSecondPass[%{public}@]:VT switch toggled: VoiceTrigger has been INACTIVE for an interval of %{public}5.3f seconds.";
LABEL_10:
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, &v16, 0x20u);
        }
      }

      else
      {
        self->_cumulativeUptime = v10 + self->_cumulativeUptime;
        v15 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v15;
          uUID = [(CSVoiceTriggerSecondPass *)self UUID];
          v16 = 136315650;
          v17 = "[CSVoiceTriggerSecondPass _logUptimeWithVTSwitchChanged:VTEnabled:]";
          v18 = 2114;
          v19 = uUID;
          v20 = 2050;
          v21 = v10;
          v14 = "%s CSVoiceTriggerSecondPass[%{public}@]:VT switch toggled: VoiceTrigger has been ACTIVE for an interval of %{public}5.3f seconds.";
          goto LABEL_10;
        }
      }
    }

    else if (enabledCopy)
    {
      self->_cumulativeUptime = v10 + self->_cumulativeUptime;
    }

    else
    {
      self->_cumulativeDowntime = v10 + self->_cumulativeDowntime;
    }
  }

  self->_lastAggTime = v8;
}

- (void)_reportDiagnosticsForDelayedVTLaunchIfNeeded:(float)needed
{
  if (needed > 20.0)
  {
    v5 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
      _getAudioTimeConverter = [(CSVoiceTriggerSecondPass *)self _getAudioTimeConverter];
      v9 = [_getAudioTimeConverter description];
      v10 = 136315650;
      v11 = "[CSVoiceTriggerSecondPass _reportDiagnosticsForDelayedVTLaunchIfNeeded:]";
      v12 = 2048;
      neededCopy = needed;
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Report unexpectedly long launch latency %{publlic}.3f AudioTimeConverter: %@", &v10, 0x20u);
    }

    v6 = +[CSDiagnosticReporter sharedInstance];
    [v6 submitVoiceTriggerIssueReport:kCSDiagnosticReporterVoiceTriggerLaunchDelayTooHigh];
  }
}

- (void)_handleSecondPassSuccess:(id)success
{
  successCopy = success;
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    v61 = 136315394;
    v62 = "[CSVoiceTriggerSecondPass _handleSecondPassSuccess:]";
    v63 = 2114;
    v64 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:", &v61, 0x16u);
  }

  [(CSVoiceTriggerSecondPass *)self _reportModelProcessingLatency];
  v8 = mach_absolute_time();
  v9 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    uUID2 = [(CSVoiceTriggerSecondPass *)self UUID];
    v61 = 136315650;
    v62 = "[CSVoiceTriggerSecondPass _handleSecondPassSuccess:]";
    v63 = 2114;
    v64 = uUID2;
    v65 = 2048;
    v66 = *&v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Marking SecondPassTriggerMachAbsoluteTime: %llu", &v61, 0x20u);
  }

  self->_secondPassHasMadeDecision = 1;
  kdebug_trace();
  v12 = [successCopy mutableCopy];
  v13 = [NSNumber numberWithUnsignedLongLong:v8];
  [v12 setObject:v13 forKey:kVTEItriggerFireMachTime];

  v14 = [successCopy objectForKeyedSubscript:kVTEITriggeredPhId];
  unsignedIntegerValue = [v14 unsignedIntegerValue];

  config = [(CSVoiceTriggerSecondPass *)self config];
  phraseConfigs = [config phraseConfigs];
  v18 = [phraseConfigs count];

  if (v18 <= unsignedIntegerValue)
  {
    v21 = 0;
  }

  else
  {
    config2 = [(CSVoiceTriggerSecondPass *)self config];
    phraseConfigs2 = [config2 phraseConfigs];
    v21 = [phraseConfigs2 objectAtIndex:unsignedIntegerValue];

    if (v21)
    {
      [v21 twoShotFeedbackDelay];
      v22 = [NSNumber numberWithFloat:?];
      v23 = kVTEItwoShotAudibleFeedbackDelay;
      [v12 setObject:v22 forKey:kVTEItwoShotAudibleFeedbackDelay];

      if (self->_firstPassSource == 7)
      {
        [v21 remoraTwoShotFeedbackDelay];
        v24 = [NSNumber numberWithFloat:?];
        [v12 setObject:v24 forKey:v23];
      }
    }
  }

  [(CSPhraseNDEAPIScorer *)self->_phraseNDEAPIScorer currentShadowMicScore];
  v25 = [NSNumber numberWithDouble:?];
  [v12 setObject:v25 forKey:kVTEIShadowMicScore];

  [(CSPhraseNDEAPIScorer *)self->_phraseNDEAPIScorer shadowMicScoreThresholdForVAD];
  v26 = [NSNumber numberWithFloat:?];
  [v12 setObject:v26 forKey:kVTEIShadowMicScoreThresholdForVAD];

  [(CSVoiceTriggerSecondPass *)self _addDeviceStatusInfoToDict:v12];
  v27 = v12;

  [(CSVoiceTriggerSecondPass *)self _resetUpTime];
  [(CSVoiceTriggerAwareZeroFilter *)self->_zeroFilter flush];
  [(CSVoiceTriggerSecondPass *)self _didStopAudioStream];
  [(CSVoiceTriggerSecondPass *)self _handleResultCompletion:1 voiceTriggerInfo:v27 isSecondChanceCandidate:0 error:0];
  audioStream = [(CSVoiceTriggerSecondPass *)self audioStream];

  if (audioStream)
  {
    audioStream2 = [(CSVoiceTriggerSecondPass *)self audioStream];
    [audioStream2 stopAudioStreamWithOption:0 completion:0];
  }

  else
  {
    v30 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v61 = 136315138;
      v62 = "[CSVoiceTriggerSecondPass _handleSecondPassSuccess:]";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s audioStream not existing", &v61, 0xCu);
    }
  }

  v31 = +[CSVoiceTriggerDataCollector sharedInstance];
  [v31 addVTAcceptEntryAndSubmit:v27];

  v32 = kVTEItriggerEndMachTime;
  v33 = [v27 objectForKeyedSubscript:kVTEItriggerEndMachTime];

  if (v33)
  {
    v34 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
    v35 = CSLogContextFacilityCoreSpeech;
    v36 = v35;
    if (v34 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v39 = CSLogContextFacilityCoreSpeech;
    }

    else
    {
      if (os_signpost_enabled(v35))
      {
        v37 = [v27 objectForKeyedSubscript:v32];
        unsignedLongLongValue = [v37 unsignedLongLongValue];
        v61 = 134349570;
        v62 = unsignedLongLongValue;
        v63 = 2080;
        v64 = "SiriX";
        v65 = 2080;
        v66 = COERCE_DOUBLE("enableTelemetry=YES");
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "VoiceTriggerLatency", "%{public, signpost.description:begin_time}llu, %s %s", &v61, 0x20u);
      }

      v39 = CSLogContextFacilityCoreSpeech;
      if (os_signpost_enabled(v39))
      {
        v61 = 134349570;
        v62 = v8;
        v63 = 2080;
        v64 = "SiriX";
        v65 = 2080;
        v66 = COERCE_DOUBLE("enableTelemetry=YES");
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v34, "VoiceTriggerLatency", "%{public, signpost.description:end_time}llu, %s %s", &v61, 0x20u);
      }
    }

    v40 = [v27 objectForKeyedSubscript:v32];
    v41 = (v8 - [v40 unsignedLongValue]);

    v42 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
      [CSFTimeUtils hostTimeToSeconds:v41];
      v61 = 136315650;
      v62 = "[CSVoiceTriggerSecondPass _handleSecondPassSuccess:]";
      v63 = 2048;
      v64 = v41;
      v65 = 2048;
      v66 = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%s Reporting VT Latency: %lu, %.3f seconds", &v61, 0x20u);
    }

    v45 = [v27 objectForKeyedSubscript:v32];
    unsignedLongValue = [v45 unsignedLongValue];

    [CSFTimeUtils hostTimeToSeconds:v41];
    [(CSVoiceTriggerSecondPass *)self _reportDiagnosticsForDelayedVTLaunchIfNeeded:?];
    firstPassFireHostTime = self->_firstPassFireHostTime;
    if (firstPassFireHostTime)
    {
      v48 = &unsignedLongValue[-firstPassFireHostTime];
      if (unsignedLongValue >= firstPassFireHostTime)
      {
        v54 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v54;
          [CSFTimeUtils hostTimeToSeconds:v48];
          v61 = 136315650;
          v62 = "[CSVoiceTriggerSecondPass _handleSecondPassSuccess:]";
          v63 = 2048;
          v64 = v48;
          v65 = 2048;
          v66 = v56;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%s Reporting First Pass fire ahead: %lu, %.3f seconds", &v61, 0x20u);
        }
      }

      else
      {
        v49 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
        v50 = CSLogContextFacilityCoreSpeech;
        v51 = v50;
        if (v49 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {

          v52 = CSLogContextFacilityCoreSpeech;
        }

        else
        {
          if (os_signpost_enabled(v50))
          {
            v61 = 134349570;
            v62 = unsignedLongValue;
            v63 = 2080;
            v64 = "SiriX";
            v65 = 2080;
            v66 = COERCE_DOUBLE("enableTelemetry=YES");
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_BEGIN, v49, "firstPassReportFireLatency", "%{public, signpost.description:begin_time}llu, %s %s", &v61, 0x20u);
          }

          v52 = CSLogContextFacilityCoreSpeech;
          if (os_signpost_enabled(v52))
          {
            v53 = self->_firstPassFireHostTime;
            v61 = 134349570;
            v62 = v53;
            v63 = 2080;
            v64 = "SiriX";
            v65 = 2080;
            v66 = COERCE_DOUBLE("enableTelemetry=YES");
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_INTERVAL_END, v49, "firstPassReportFireLatency", "%{public, signpost.description:end_time}llu, %s %s", &v61, 0x20u);
          }
        }

        v57 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          v58 = (self->_firstPassFireHostTime - unsignedLongValue);
          v59 = v57;
          [CSFTimeUtils hostTimeToSeconds:v58];
          v61 = 136315650;
          v62 = "[CSVoiceTriggerSecondPass _handleSecondPassSuccess:]";
          v63 = 2048;
          v64 = v58;
          v65 = 2048;
          v66 = v60;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%s Reporting First Pass fire delay: %lu, %.3f seconds", &v61, 0x20u);
        }
      }
    }
  }
}

- (void)_reportModelProcessingLatency
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    secondPassCheckerExecutionTime = self->_secondPassCheckerExecutionTime;
    [CSFTimeUtils hostTimeToSeconds:secondPassCheckerExecutionTime];
    v8 = v7;
    getPSRProcessingTime = [(SSRSpeakerRecognitionController *)self->_speakerRecognitionController getPSRProcessingTime];
    [CSFTimeUtils hostTimeToSeconds:[(SSRSpeakerRecognitionController *)self->_speakerRecognitionController getPSRProcessingTime]];
    v11 = 136316418;
    v12 = "[CSVoiceTriggerSecondPass _reportModelProcessingLatency]";
    v13 = 2114;
    v14 = uUID;
    v15 = 2048;
    v16 = secondPassCheckerExecutionTime;
    v17 = 2048;
    v18 = v8;
    v19 = 2048;
    v20 = getPSRProcessingTime;
    v21 = 2048;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:secondPassChecker processing time: %lu, %.3f seconds\n speakerRecognition processing time: %lu, %.3f seconds", &v11, 0x3Eu);
  }
}

- (void)voiceTriggerPhraseNDEAPIScorerDidDetectedKeyword:(id)keyword bestStartSampleCount:(unint64_t)count bestEndSampleCount:(unint64_t)sampleCount
{
  v6 = (sampleCount - count);
  secondPassPrependingSec = self->_secondPassPrependingSec;
  +[CSConfig inputRecordingSampleRate];
  self->_secondPassTimeout = ((v6 + (secondPassPrependingSec * v8)) + self->_analyzerTrailingSamples);
  v9 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    secondPassTimeout = self->_secondPassTimeout;
    v13 = self->_secondPassPrependingSec;
    +[CSConfig inputRecordingSampleRate];
    analyzerTrailingSamples = self->_analyzerTrailingSamples;
    v16 = 136316162;
    v17 = "[CSVoiceTriggerSecondPass voiceTriggerPhraseNDEAPIScorerDidDetectedKeyword:bestStartSampleCount:bestEndSampleCount:]";
    v18 = 2114;
    v19 = uUID;
    v20 = 1026;
    v21 = secondPassTimeout;
    v22 = 1026;
    v23 = (v13 * v14);
    v24 = 1026;
    v25 = analyzerTrailingSamples;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Setting secondPassTimeout = %{public}d, PrependingSamples = %{public}d, analyzerTrailingSamples = %{public}d", &v16, 0x28u);
  }
}

- (void)_analyzeForChannel:(unint64_t)channel keywordDetectorResult:(id)result losingPhraseResults:(id)results
{
  resultCopy = result;
  resultsCopy = results;
  dispatch_assert_queue_V2(self->_queue);
  decision = [resultCopy decision];
  if (decision)
  {
    v10 = decision;
    if (decision == 1)
    {
      phId = [resultCopy phId];
      phraseConfigs = [(CSVoiceTriggerSecondPassConfig *)self->_config phraseConfigs];
      v13 = [phraseConfigs count];

      v14 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315394;
        v33 = "[CSVoiceTriggerSecondPass _analyzeForChannel:keywordDetectorResult:losingPhraseResults:]";
        v34 = 2048;
        v35 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Asset config supports %lu phrase(s)", &v32, 0x16u);
      }

      supportsMph = self->_supportsMph;
      v16 = v13 > 1 && self->_supportsMph;
      if (v16 || !phId)
      {
        v18 = [(CSVoiceTriggerSecondPass *)self _getVoiceTriggerInfoWithKeywordDetectorResult:resultCopy];
        [(CSVoiceTriggerSecondPass *)self _addLosingPhraseResultstoVTEI:v18 withLosingPhraseResults:resultsCopy];
        [(CSPhraseDetector *)self->_phraseDetector reset];
        speakerRecognitionController = self->_speakerRecognitionController;
        if (speakerRecognitionController)
        {
          if (!self->_isPSRAudioFlushed)
          {
            [(SSRSpeakerRecognitionController *)speakerRecognitionController endAudio];
            self->_isPSRAudioFlushed = 1;
            speakerRecognitionController = self->_speakerRecognitionController;
          }

          getLatestSpeakerInfo = [(SSRSpeakerRecognitionController *)speakerRecognitionController getLatestSpeakerInfo];
          v25 = [getLatestSpeakerInfo objectForKeyedSubscript:kSSRSpeakerRecognitionKnownUserScoresKey];

          if (v25)
          {
            -[CSVoiceTriggerSecondPass _handlePHSResults:voiceTriggerEventInfo:forPhId:](self, "_handlePHSResults:voiceTriggerEventInfo:forPhId:", getLatestSpeakerInfo, v18, [resultCopy phId]);
          }

          else
          {
            v29 = CSLogCategoryVT;
            if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
            {
              v30 = v29;
              uUID = [(CSVoiceTriggerSecondPass *)self UUID];
              v32 = 136315394;
              v33 = "[CSVoiceTriggerSecondPass _analyzeForChannel:keywordDetectorResult:losingPhraseResults:]";
              v34 = 2114;
              v35 = uUID;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:PHS Scores not available, ignoring for now !", &v32, 0x16u);
            }

            [(CSVoiceTriggerSecondPass *)self _handleSecondPassSuccess:v18];
          }

          goto LABEL_31;
        }

        if (!+[CSUtils supportRemoraVoiceTrigger]|| (os_unfair_lock_lock(&self->_secondpassTriggerCancellationLock), cancelSecondPassTrigger = self->_cancelSecondPassTrigger, self->_cancelSecondPassTrigger = 0, os_unfair_lock_unlock(&self->_secondpassTriggerCancellationLock), !cancelSecondPassTrigger))
        {
          v28 = +[CSVoiceTriggerStatistics sharedInstance];
          [v28 resetPHSRejectCount];

          [(CSVoiceTriggerSecondPass *)self _handleSecondPassSuccess:v18];
          goto LABEL_31;
        }

        [(CSPhraseDetector *)self->_phraseDetector reset];
        self->_secondPassTimeout = 0;
        isSecondChanceCandidate = [resultCopy isSecondChanceCandidate];
        selfCopy3 = self;
        v21 = v18;
        v22 = 6;
        goto LABEL_22;
      }

      v17 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315138;
        v33 = "[CSVoiceTriggerSecondPass _analyzeForChannel:keywordDetectorResult:losingPhraseResults:]";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Report as rejection since the detected phId is not the default", &v32, 0xCu);
      }

      v18 = [(CSVoiceTriggerSecondPass *)self _getVoiceTriggerInfoWithKeywordDetectorResult:resultCopy];
      [(CSVoiceTriggerSecondPass *)self _addLosingPhraseResultstoVTEI:v18 withLosingPhraseResults:resultsCopy];
    }

    else
    {
      v18 = [(CSVoiceTriggerSecondPass *)self _getVoiceTriggerInfoWithKeywordDetectorResult:resultCopy];
      [(CSVoiceTriggerSecondPass *)self _addLosingPhraseResultstoVTEI:v18 withLosingPhraseResults:resultsCopy];
      if (v10 == 2)
      {
        [(CSPhraseDetector *)self->_phraseDetector reset];
        v26 = +[CSVoiceTriggerDataCollector sharedInstance];
        [v26 addVTRejectEntry:v18 truncateData:1];

        isSecondChanceCandidate = [resultCopy isSecondChanceCandidate];
        selfCopy3 = self;
        v21 = v18;
        v22 = 3;
        goto LABEL_22;
      }

      if (v10 != 3)
      {
LABEL_31:
        [(CSVoiceTriggerSecondPass *)self _resetVoiceTriggerLatencyMetrics];

        goto LABEL_32;
      }
    }

    [(CSPhraseDetector *)self->_phraseDetector reset];
    self->_secondPassTimeout = 0;
    isSecondChanceCandidate = [resultCopy isSecondChanceCandidate];
    selfCopy3 = self;
    v21 = v18;
    v22 = 2;
LABEL_22:
    [(CSVoiceTriggerSecondPass *)selfCopy3 _notifySecondPassReject:v21 result:v22 isSecondChanceCandidate:isSecondChanceCandidate];
    goto LABEL_31;
  }

LABEL_32:
}

- (void)_setKeywordDetectorStartMachTime:(unint64_t)time detectorEndMachTime:(unint64_t)machTime lastAudioPacketAnalyzedMachTime:(unint64_t)analyzedMachTime
{
  secondPassLatencyMetrics = self->_secondPassLatencyMetrics;
  if (secondPassLatencyMetrics)
  {
    [(CSVTSecondPassLatencyMetrics *)secondPassLatencyMetrics setSecondPassCheckerModelKeywordDetectionStartTime:time];
    [(CSVTSecondPassLatencyMetrics *)self->_secondPassLatencyMetrics setSecondPassCheckerModelKeywordDetectionEndTime:machTime];
    v9 = self->_secondPassLatencyMetrics;

    [(CSVTSecondPassLatencyMetrics *)v9 setSecondPassLastAudioPacketReceptionTime:analyzedMachTime];
  }

  else
  {
    v10 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CSVoiceTriggerSecondPass _setKeywordDetectorStartMachTime:detectorEndMachTime:lastAudioPacketAnalyzedMachTime:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s nil second pass metrics instance", &v11, 0xCu);
    }
  }
}

- (void)_addLosingPhraseResultstoVTEI:(id)i withLosingPhraseResults:(id)results
{
  iCopy = i;
  resultsCopy = results;
  v6 = +[NSMutableArray array];
  if ([resultsCopy count] != -1)
  {
    v7 = 0;
    do
    {
      v8 = +[NSDictionary dictionary];
      [v6 addObject:v8];

      ++v7;
    }

    while (v7 < [resultsCopy count] + 1);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = resultsCopy;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    v12 = kVTEIrecognizerScore;
    v13 = kVTEItriggerScore;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if (v15)
        {
          v16 = +[NSMutableDictionary dictionary];
          [v15 recognizerScore];
          v17 = [NSNumber numberWithFloat:?];
          [v16 setObject:v17 forKey:v12];

          [v15 combinedScore];
          v18 = [NSNumber numberWithFloat:?];
          [v16 setObject:v18 forKey:v13];

          v19 = [v16 copy];
          [v6 setObject:v19 atIndexedSubscript:{objc_msgSend(v15, "phId")}];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  if ([v6 count])
  {
    v20 = [v6 copy];
    [iCopy setObject:v20 forKey:kVTEILosingPhraseScores];
  }
}

- (id)_getVoiceTriggerInfoWithKeywordDetectorResult:(id)result
{
  resultCopy = result;
  phId = [resultCopy phId];
  v144 = [(CSPhraseDetector *)self->_phraseDetector phraseDetectorInfoFromPhId:phId];
  phraseConfig = [v144 phraseConfig];
  ndapiResult = [resultCopy ndapiResult];
  [resultCopy combinedScore];
  v139 = v6;
  samplesFed = [ndapiResult samplesFed];
  v137 = samplesFed;
  bestStart = [ndapiResult bestStart];
  bestEnd = [ndapiResult bestEnd];
  v10 = [ndapiResult samplesAtFire] + self->_processedSampleCountsInPending;
  v134 = v10;
  v143 = ndapiResult;
  startSampleCount = [ndapiResult startSampleCount];
  numAnalyzedSamples = self->_numAnalyzedSamples;
  extraSamplesAtStart = self->_extraSamplesAtStart;
  v135 = numAnalyzedSamples;
  secondPassAnalyzerStartSampleCount = self->_secondPassAnalyzerStartSampleCount;
  if (extraSamplesAtStart >= bestStart)
  {
    extraSamplesAtStart = bestStart;
  }

  v138 = extraSamplesAtStart;
  v14 = &bestStart[-extraSamplesAtStart];
  v15 = (bestEnd - &bestStart[-extraSamplesAtStart]);
  +[CSConfig inputRecordingSampleRate];
  v17 = (v15 / v16);
  +[CSConfig inputRecordingSampleRate];
  v19 = ((v10 - v14) / v18);
  _getAudioTimeConverter = [(CSVoiceTriggerSecondPass *)self _getAudioTimeConverter];
  v140 = [_getAudioTimeConverter hostTimeFromSampleCount:v14];

  _getAudioTimeConverter2 = [(CSVoiceTriggerSecondPass *)self _getAudioTimeConverter];
  v141 = [_getAudioTimeConverter2 hostTimeFromSampleCount:bestEnd];

  v22 = +[CSBatteryMonitor sharedInstance];
  v145 = [v22 batteryState] == 2;

  [(CSVoiceTriggerSecondPass *)self _logUptimeWithVTSwitchChanged:0 VTEnabled:1];
  v130 = [NSNumber numberWithDouble:self->_cumulativeUptime];
  v133 = [NSNumber numberWithDouble:self->_cumulativeDowntime];
  +[CSUtils systemUpTime];
  v24 = v23;
  +[CSConfig inputRecordingSampleRate];
  v26 = ((&samplesFed[startSampleCount] - v14) / v25);
  +[CSConfig inputRecordingSampleRate];
  v28 = v24 - v26;
  v29 = v24 - ((&samplesFed[startSampleCount] - bestEnd) / v27);
  configPathNDAPI = [(CSVoiceTriggerSecondPassConfig *)self->_config configPathNDAPI];
  v31 = configPathNDAPI;
  if (configPathNDAPI)
  {
    v32 = configPathNDAPI;
  }

  else
  {
    v32 = @"n/a";
  }

  v33 = v32;

  hashFromResourcePath = [(CSAsset *)self->_currentAsset hashFromResourcePath];
  v35 = hashFromResourcePath;
  if (hashFromResourcePath)
  {
    v36 = hashFromResourcePath;
  }

  else
  {
    v36 = @"n/a";
  }

  v37 = v36;

  _fetchSiriLocale = [(CSVoiceTriggerSecondPass *)self _fetchSiriLocale];
  earlyDetectFiredMachTime = self->_earlyDetectFiredMachTime;
  CSMachAbsoluteTimeGetTimeInterval();
  v41 = v40;
  v42 = self->_secondPassAnalyzerStartSampleCount;
  [phraseConfig preTriggerSilenceOffset];
  v44 = v43;
  +[CSConfig inputRecordingSampleRate];
  v131 = (v42 + (v44 * v45));
  v46 = +[NSMutableDictionary dictionary];
  configVersion = [(CSAsset *)self->_currentAsset configVersion];
  [v46 setObject:configVersion forKey:kVTEIconfigVersion];

  v48 = +[CSUtils deviceBuildVersion];
  [v46 setObject:v48 forKey:kVTEIbuildVersion];

  [v46 setObject:v33 forKey:kVTEIconfigPath];
  [v46 setObject:v37 forKey:kVTEIConfigDataHash];

  v49 = [NSNumber numberWithBool:v145];
  [v46 setObject:v49 forKey:kVTEIOnBatteryPower];

  v50 = [NSNumber numberWithBool:self->_didWakeAP];
  [v46 setObject:v50 forKey:kVTEIDidWakeAP];

  [v46 setObject:&__kCFBooleanFalse forKey:kVTEISatBeingTrained];
  v51 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [resultCopy isSecondChance]);
  [v46 setObject:v51 forKey:kVTEIisSecondChance];

  [v46 setObject:_fetchSiriLocale forKey:kVTEILanguageCode];
  +[CSConfig inputRecordingSampleRate];
  v52 = [NSNumber numberWithFloat:?];
  [v46 setObject:v52 forKey:kVTEIhardwareSamplerate];

  v53 = [NSNumber numberWithUnsignedLongLong:v131];
  [v46 setObject:v53 forKey:kVTEIclientStartSampleCount];

  v54 = [NSNumber numberWithUnsignedInteger:v14];
  [v46 setObject:v54 forKey:kVTEItriggerStartSampleCount];

  v55 = [NSNumber numberWithUnsignedInteger:bestEnd];
  [v46 setObject:v55 forKey:kVTEItriggerEndSampleCount];

  v56 = [NSNumber numberWithUnsignedInteger:v134];
  [v46 setObject:v56 forKey:kVTEItriggerFireSampleCount];

  v57 = [NSNumber numberWithUnsignedLongLong:self->_secondPassAnalyzerStartSampleCount];
  [v46 setObject:v57 forKey:kVTEIsecondPassAnalyzerStartSampleCount];

  secondPassAnalyzerStartSampleCount = [NSNumber numberWithUnsignedInteger:v135 + secondPassAnalyzerStartSampleCount];
  [v46 setObject:secondPassAnalyzerStartSampleCount forKey:kVTEIsecondPassAnalyzerEndSampleCount];

  [v46 setObject:&off_10025E9B8 forKey:kVTEItriggerStartSeconds];
  v59 = [NSNumber numberWithDouble:v17];
  [v46 setObject:v59 forKey:kVTEItriggerEndSeconds];

  v60 = [NSNumber numberWithDouble:v19];
  [v46 setObject:v60 forKey:kVTEItriggerFireSeconds];

  v61 = [NSNumber numberWithDouble:v28];
  [v46 setObject:v61 forKey:kVTEItriggerStartTime];

  v62 = [NSNumber numberWithDouble:v29];
  [v46 setObject:v62 forKey:kVTEItriggerEndTime];

  v63 = [NSNumber numberWithDouble:v29 - v28];
  [v46 setObject:v63 forKey:kVTEItriggerDuration];

  v64 = [NSNumber numberWithDouble:v24];
  [v46 setObject:v64 forKey:kVTEItriggerFiredTime];

  v65 = [NSNumber numberWithUnsignedInteger:v137];
  [v46 setObject:v65 forKey:kVTEItotalSamplesAtEndOfCapture];

  v66 = [NSNumber numberWithUnsignedInteger:v14];
  [v46 setObject:v66 forKey:kVTEItotalSamplesAtTriggerStart];

  v67 = [NSNumber numberWithUnsignedInteger:bestEnd];
  [v46 setObject:v67 forKey:kVTEItotalSamplesAtTriggerEnd];

  [v130 doubleValue];
  v68 = [NSNumber numberWithDouble:?];
  [v46 setObject:v68 forKey:kVTEIVTuptime];

  [v133 doubleValue];
  v69 = [NSNumber numberWithDouble:?];
  [v46 setObject:v69 forKey:kVTEIVTdowntime];

  v70 = [NSNumber numberWithDouble:v41];
  [v46 setObject:v70 forKey:kVTEIearlyDetectFiredTime];

  LODWORD(v71) = v139;
  v72 = [NSNumber numberWithFloat:v71];
  [v46 setObject:v72 forKey:kVTEItriggerScore];

  v73 = [NSNumber numberWithUnsignedInteger:v138];
  [v46 setObject:v73 forKey:kVTEIextraSamplesAtStart];

  v74 = [NSNumber numberWithUnsignedInteger:self->_analyzerPrependingSamples];
  [v46 setObject:v74 forKey:kVTEIanalyzerPrependingSamples];

  v75 = [NSNumber numberWithUnsignedInteger:self->_analyzerTrailingSamples];
  v76 = kVTEIanalyzerTrailingSamples;
  [v46 setObject:v75 forKey:kVTEIanalyzerTrailingSamples];

  [v144 effectiveKeywordThreshold];
  v77 = [NSNumber numberWithFloat:?];
  [v46 setObject:v77 forKey:kVTEIeffectiveThreshold];

  [v144 effectiveKeywordThreshold];
  v78 = [NSNumber numberWithFloat:?];
  [v46 setObject:v78 forKey:kVTEIthreshold];

  v79 = [NSNumber numberWithUnsignedLongLong:self->_earlyDetectFiredMachTime];
  [v46 setObject:v79 forKey:kVTEIearlyDetectFiredMachTime];

  v80 = [NSNumber numberWithUnsignedLongLong:v140];
  [v46 setObject:v80 forKey:kVTEItriggerStartMachTime];

  v81 = [NSNumber numberWithUnsignedLongLong:v141];
  [v46 setObject:v81 forKey:kVTEItriggerEndMachTime];

  [v46 setObject:&__kCFBooleanFalse forKey:kVTEIisContinuous];
  v82 = [NSNumber numberWithUnsignedInteger:phId];
  [v46 setObject:v82 forKey:kVTEITriggeredPhId];

  name = [phraseConfig name];

  if (name)
  {
    name2 = [phraseConfig name];
    [v46 setObject:name2 forKey:kVTEITriggeredPh];
  }

  _shouldRequestSingleChannelFromAudioProvider = [(CSVoiceTriggerSecondPass *)self _shouldRequestSingleChannelFromAudioProvider];
  v86 = 224;
  if (_shouldRequestSingleChannelFromAudioProvider)
  {
    v86 = 232;
  }

  v87 = [NSNumber numberWithUnsignedInteger:*(&self->super.isa + v86)];
  [v46 setObject:v87 forKey:kVTEIactiveChannel];

  [v130 doubleValue];
  v88 = [NSNumber numberWithDouble:?];
  [v46 setObject:v88 forKey:kVTEIuptime];

  [v133 doubleValue];
  v89 = [NSNumber numberWithDouble:?];
  [v46 setObject:v89 forKey:kVTEIdowntime];

  if ([resultCopy isRunningQuasar])
  {
    [resultCopy recognizerScore];
    v90 = [NSNumber numberWithFloat:?];
    [v46 setObject:v90 forKey:kVTEIrecognizerScore];

    [phraseConfig recognizerScoreOffset];
    v91 = [NSNumber numberWithFloat:?];
    [v46 setObject:v91 forKey:kVTEIrecognizerThresholdOffset];

    [phraseConfig recognizerScoreScaleFactor];
    v92 = [NSNumber numberWithFloat:?];
    [v46 setObject:v92 forKey:kVTEIrecognizerScaleFactor];
  }

  if (CSIsHorseman())
  {
    if (self->_firstPassChannelSelectionScores)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v46 setObject:self->_firstPassChannelSelectionScores forKey:kVTEIfirstPassChannelSelectionScores];
      }
    }

    v93 = [NSNumber numberWithUnsignedInteger:self->_firstPassTriggerStartSampleCount];
    [v46 setObject:v93 forKey:kVTEIfirstPassStartSampleCount];

    v94 = [NSNumber numberWithUnsignedInteger:self->_firstPassTriggerFireSampleCount];
    [v46 setObject:v94 forKey:kVTEIfirstPassFireSampleCount];

    *&v95 = self->_firstPassChannelSelectionDelaySeconds;
    v96 = [NSNumber numberWithFloat:v95];
    [v46 setObject:v96 forKey:kVTEIfirstPassChannelSelectionDelaySeconds];

    *&v97 = self->_firstPassMasterChannelScoreBoost;
    v98 = [NSNumber numberWithFloat:v97];
    [v46 setObject:v98 forKey:kVTEIfirstPassMasterChannelScoreBoost];

    v99 = [NSNumber numberWithUnsignedInteger:self->_firstPassOnsetChannel];
    [v46 setObject:v99 forKey:kVTEIfirstPassOnsetChannel];

    *&v100 = self->_firstPassOnsetScore;
    v101 = [NSNumber numberWithFloat:v100];
    [v46 setObject:v101 forKey:kVTEIfirstPassOnsetScore];
  }

  v102 = [(CSVoiceTriggerSecondPass *)self _getFirstPassTriggerSourceAsString:self->_firstPassSource];
  [v46 setObject:v102 forKey:kVTEIfirstPassTriggerSource];

  firstpassMetrics = self->_firstpassMetrics;
  if (firstpassMetrics)
  {
    firstPassInfoGeneratedTime = [(CSVoiceTriggerFirstPassMetrics *)firstpassMetrics firstPassInfoGeneratedTime];
    [v46 setObject:firstPassInfoGeneratedTime forKey:kVTEIFirstPassInfoGeneratedTime];

    firstPassInfoProcessedTime = [(CSVoiceTriggerFirstPassMetrics *)self->_firstpassMetrics firstPassInfoProcessedTime];
    [v46 setObject:firstPassInfoProcessedTime forKey:kVTEIFirstPassInfoProcessedTime];
  }

  v106 = +[CSUtils supportJarvisVoiceTrigger];
  firstPassSource = self->_firstPassSource;
  if (v106 && firstPassSource == 4)
  {
    +[CSConfig inputRecordingSampleRate];
    v109 = [NSNumber numberWithUnsignedInteger:(v108 * 0.5)];
    [v46 setObject:v109 forKey:v76];

    firstPassSource = self->_firstPassSource;
  }

  if ([(CSVoiceTriggerSecondPass *)self _shouldLogMediaplayState:firstPassSource])
  {
    mediaPlayingState = self->_mediaPlayingState;
    v111 = [NSNumber numberWithBool:mediaPlayingState == 1];
    [v46 setObject:v111 forKey:kVTEIisMediaPlaying];

    if (mediaPlayingState == 1)
    {
      *&v112 = self->_mediaVolume;
      v113 = [NSNumber numberWithFloat:v112];
      [v46 setObject:v113 forKey:kVTEImediaVolume];
    }
  }

  audioProviderUUID = [(CSVoiceTriggerSecondPass *)self audioProviderUUID];

  if (audioProviderUUID)
  {
    audioProviderUUID2 = [(CSVoiceTriggerSecondPass *)self audioProviderUUID];
    [v46 setObject:audioProviderUUID2 forKey:kVTEIAudioProviderUUID];
  }

  v116 = +[NSUUID UUID];
  uUIDString = [v116 UUIDString];
  [v46 setObject:uUIDString forKey:kVTEISelfLoggingUUID];

  secondPassLatencyMetrics = self->_secondPassLatencyMetrics;
  if (secondPassLatencyMetrics)
  {
    v119 = [NSNumber numberWithUnsignedLongLong:[CSFTimeUtils hostTimeToNs:[(CSVTSecondPassLatencyMetrics *)secondPassLatencyMetrics secondPassAssetQueryStartTime]]];
    [v46 setObject:v119 forKey:kVTEISecondPassAssetQueryStartTime];

    v120 = [NSNumber numberWithUnsignedLongLong:[CSFTimeUtils hostTimeToNs:[(CSVTSecondPassLatencyMetrics *)self->_secondPassLatencyMetrics secondPassAssetQueryCompleteTime]]];
    [v46 setObject:v120 forKey:kVTEISecondPassAssetQueryCompleteTime];

    v121 = [NSNumber numberWithUnsignedLongLong:[CSFTimeUtils hostTimeToNs:[(CSVTSecondPassLatencyMetrics *)self->_secondPassLatencyMetrics secondPassAssetLoadStartTime]]];
    [v46 setObject:v121 forKey:kVTEISecondPassAssetLoadStartTime];

    v122 = [NSNumber numberWithUnsignedLongLong:[CSFTimeUtils hostTimeToNs:[(CSVTSecondPassLatencyMetrics *)self->_secondPassLatencyMetrics secondPassAssetLoadCompleteTime]]];
    [v46 setObject:v122 forKey:kVTEISecondPassAssetLoadCompleteTime];

    v123 = [NSNumber numberWithUnsignedLongLong:[CSFTimeUtils hostTimeToNs:[(CSVTSecondPassLatencyMetrics *)self->_secondPassLatencyMetrics secondPassAudioStreamStartTime]]];
    [v46 setObject:v123 forKey:kVTEISecondPassAudioStreamStartTime];

    v124 = [NSNumber numberWithUnsignedLongLong:[CSFTimeUtils hostTimeToNs:[(CSVTSecondPassLatencyMetrics *)self->_secondPassLatencyMetrics secondPassAudioStreamReadyTime]]];
    [v46 setObject:v124 forKey:kVTEISecondPassAudioStreamReadyTime];

    v125 = [NSNumber numberWithUnsignedLongLong:[CSFTimeUtils hostTimeToNs:[(CSVTSecondPassLatencyMetrics *)self->_secondPassLatencyMetrics secondPassFirstAudioPacketReceptionTime]]];
    [v46 setObject:v125 forKey:kVTEISecondPassFirstAudioPacketReceptionTime];

    v126 = [NSNumber numberWithUnsignedLongLong:[CSFTimeUtils hostTimeToNs:[(CSVTSecondPassLatencyMetrics *)self->_secondPassLatencyMetrics secondPassLastAudioPacketReceptionTime]]];
    [v46 setObject:v126 forKey:kVTEISecondPassLastAudioPacketReceptionTime];

    v127 = [NSNumber numberWithUnsignedLongLong:[CSFTimeUtils hostTimeToNs:[(CSVTSecondPassLatencyMetrics *)self->_secondPassLatencyMetrics secondPassCheckerModelKeywordDetectionStartTime]]];
    [v46 setObject:v127 forKey:kVTEISecondPassCheckerModelKeywordDetectionStartTime];

    v128 = [NSNumber numberWithUnsignedLongLong:[CSFTimeUtils hostTimeToNs:[(CSVTSecondPassLatencyMetrics *)self->_secondPassLatencyMetrics secondPassCheckerModelKeywordDetectionEndTime]]];
    [v46 setObject:v128 forKey:kVTEISecondPassCheckerModelKeywordDetectionEndTime];
  }

  return v46;
}

- (id)_runRecognizersWithChunk:(id)chunk
{
  chunkCopy = chunk;
  dispatch_assert_queue_V2(self->_queue);
  v5 = mach_absolute_time();
  v6 = [(CSPhraseDetector *)self->_phraseDetector getAnalyzedResultFromAudioChunk:chunkCopy];
  self->_secondPassCheckerExecutionTime += mach_absolute_time() - v5;
  [(CSPhraseNDEAPIScorer *)self->_phraseNDEAPIScorer processAudioChunk:chunkCopy activeChannel:self->_activeChannel];
  if (self->_speakerRecognitionController)
  {
    v7 = [chunkCopy dataForChannel:self->_activeChannel];
    if (+[CSConfig inputRecordingIsFloat])
    {
      v8 = [chunkCopy dataForChannel:self->_activeChannel];
      v9 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:v8];

      v7 = v9;
    }

    -[SSRSpeakerRecognitionController processAudio:withNumberOfSamples:](self->_speakerRecognitionController, "processAudio:withNumberOfSamples:", v7, [chunkCopy numSamples]);
  }

  return v6;
}

- (void)_handleAudioChunk:(id)chunk shouldPreprocessedByZeroFilter:(BOOL)filter
{
  filterCopy = filter;
  chunkCopy = chunk;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_currentAsset)
  {
    if (self->_secondPassHasMadeDecision)
    {
      v7 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        uUID = [(CSVoiceTriggerSecondPass *)self UUID];
        v38 = 136315394;
        v39 = "[CSVoiceTriggerSecondPass _handleAudioChunk:shouldPreprocessedByZeroFilter:]";
        v40 = 2114;
        v41 = uUID;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:second pass has made decision, skip processing", &v38, 0x16u);
LABEL_5:

LABEL_13:
      }
    }

    else
    {
      if (filterCopy)
      {
        v11 = qword_10029E240;
        if (!(v11 % +[CSUtils loggingHeartbeatRate]))
        {
          v12 = CSLogCategoryVT;
          if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v12;
            uUID2 = [(CSVoiceTriggerSecondPass *)self UUID];
            v38 = 136315394;
            v39 = "[CSVoiceTriggerSecondPass _handleAudioChunk:shouldPreprocessedByZeroFilter:]";
            v40 = 2114;
            v41 = uUID2;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Preprocessing through zero-filter for this trigger event", &v38, 0x16u);
          }
        }

        ++qword_10029E240;
        zeroFilter = self->_zeroFilter;
        v8 = [chunkCopy dataForChannel:0];
        -[CSVoiceTriggerAwareZeroFilter processBuffer:atTime:](zeroFilter, "processBuffer:atTime:", v8, [chunkCopy hostTime]);
        goto LABEL_13;
      }

      if (!self->_numProcessedSamples)
      {
        _voiceTriggerSecondPassLatencyMetrics = [(CSVoiceTriggerSecondPass *)self _voiceTriggerSecondPassLatencyMetrics];
        [_voiceTriggerSecondPassLatencyMetrics setSecondPassFirstAudioPacketReceptionTime:mach_absolute_time()];
      }

      -[CSVoiceTriggerSecondPass _setStartAnalyzeTime:](self, "_setStartAnalyzeTime:", [chunkCopy startSampleCount]);
      numProcessedSamples = self->_numProcessedSamples;
      v18 = [chunkCopy numSamples] + numProcessedSamples;
      v19 = mach_absolute_time();
      secondPassTimeout = self->_secondPassTimeout;
      if (v18 >= secondPassTimeout)
      {
        v25 = self->_numProcessedSamples;
        v26 = secondPassTimeout - v25;
        if ((secondPassTimeout - v25) >= 1)
        {
          v27 = [chunkCopy subChunkFrom:0 numSamples:secondPassTimeout - v25];
          v28 = [(CSVoiceTriggerSecondPass *)self _runRecognizersWithChunk:v27];
          self->_numAnalyzedSamples += v26;
          audioFileWriter = self->_audioFileWriter;
          data = [v27 data];
          -[CSPlainAudioFileWriter addSamples:numSamples:](audioFileWriter, "addSamples:numSamples:", [data bytes], objc_msgSend(v27, "numSamples"));
        }

        self->_processedSampleCountsInPending += [chunkCopy numSamples] - v26;
        v31 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
          uUID3 = [(CSVoiceTriggerSecondPass *)self UUID];
          v34 = self->_secondPassTimeout;
          v38 = 136315650;
          v39 = "[CSVoiceTriggerSecondPass _handleAudioChunk:shouldPreprocessedByZeroFilter:]";
          v40 = 2114;
          v41 = uUID3;
          v42 = 2050;
          v43 = v34;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Stop feeding audio at sampleCount: %{public}tu", &v38, 0x20u);
        }

        speakerRecognitionController = self->_speakerRecognitionController;
        if (speakerRecognitionController)
        {
          [(SSRSpeakerRecognitionController *)speakerRecognitionController endAudio];
          self->_isPSRAudioFlushed = 1;
        }

        v36 = mach_absolute_time();
        getAnalyzedResultFromFlushedAudio = [(CSPhraseDetector *)self->_phraseDetector getAnalyzedResultFromFlushedAudio];
        self->_secondPassCheckerExecutionTime += mach_absolute_time() - v36;
        v37 = -[CSPhraseDetector getLosingPhraseResultsWithDetectedPhId:](self->_phraseDetector, "getLosingPhraseResultsWithDetectedPhId:", [getAnalyzedResultFromFlushedAudio phId]);
        [(CSVoiceTriggerSecondPass *)self _setKeywordDetectorStartMachTime:v19 detectorEndMachTime:mach_absolute_time() lastAudioPacketAnalyzedMachTime:v19];
        [(CSVoiceTriggerSecondPass *)self _analyzeForChannel:self->_activeChannel keywordDetectorResult:getAnalyzedResultFromFlushedAudio losingPhraseResults:v37];
      }

      else
      {
        getAnalyzedResultFromFlushedAudio = [(CSVoiceTriggerSecondPass *)self _runRecognizersWithChunk:chunkCopy];
        v22 = -[CSPhraseDetector getLosingPhraseResultsWithDetectedPhId:](self->_phraseDetector, "getLosingPhraseResultsWithDetectedPhId:", [getAnalyzedResultFromFlushedAudio phId]);
        [(CSVoiceTriggerSecondPass *)self _setKeywordDetectorStartMachTime:v19 detectorEndMachTime:mach_absolute_time() lastAudioPacketAnalyzedMachTime:v19];
        [(CSVoiceTriggerSecondPass *)self _analyzeForChannel:self->_activeChannel keywordDetectorResult:getAnalyzedResultFromFlushedAudio losingPhraseResults:v22];
        self->_numAnalyzedSamples += [chunkCopy numSamples];
        v23 = self->_audioFileWriter;
        data2 = [chunkCopy data];
        -[CSPlainAudioFileWriter addSamples:numSamples:](v23, "addSamples:numSamples:", [data2 bytes], objc_msgSend(chunkCopy, "numSamples"));

        self->_numProcessedSamples += [chunkCopy numSamples];
      }
    }
  }

  else
  {
    v10 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v8 = v10;
      uUID = [(CSVoiceTriggerSecondPass *)self UUID];
      v38 = 136315394;
      v39 = "[CSVoiceTriggerSecondPass _handleAudioChunk:shouldPreprocessedByZeroFilter:]";
      v40 = 2114;
      v41 = uUID;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Could not find Assets. Cannot process Audio", &v38, 0x16u);
      goto LABEL_5;
    }
  }
}

- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available
{
  availableCopy = available;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B1804;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = availableCopy;
  v7 = availableCopy;
  dispatch_async(queue, v8);
}

- (void)_processSecondPassInExclave:(id)exclave rejectBlock:(id)block
{
  exclaveCopy = exclave;
  blockCopy = block;
  if (self->_secondPassHasMadeDecision)
  {
    v8 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      uUID = [(CSVoiceTriggerSecondPass *)self UUID];
      *buf = 136315394;
      v18 = "[CSVoiceTriggerSecondPass _processSecondPassInExclave:rejectBlock:]";
      v19 = 2114;
      v20 = uUID;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:second pass has made decision, skip processing", buf, 0x16u);
    }
  }

  else
  {
    v11 = self->_numAnalyzedSamples >= self->_secondPassTimeout;
    exclaveClient = self->_exclaveClient;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B1B84;
    v13[3] = &unk_100250768;
    v13[4] = self;
    v14 = exclaveCopy;
    v16 = v11;
    v15 = blockCopy;
    [(CSExclaveSecondPassVoiceTriggerAnalyzing *)exclaveClient processSecondPassVoiceTriggerWithShouldFlushAudio:v11 result:v13];
  }
}

- (unint64_t)_getSecondPassRejectReasonFromExclaveKeywordResult:(unint64_t)result speakerDetectionResult:(unint64_t)detectionResult
{
  switch(result)
  {
    case 2uLL:
      return 3;
    case 1uLL:
      if (detectionResult - 3 < 2)
      {
        return 9;
      }

      break;
    case 0uLL:
      return 0;
  }

  return 2;
}

- (void)audioStreamProvider:(id)provider numSamplesAvailableInExclave:(unint64_t)exclave hostTime:(unint64_t)time arrivalHostTimeToAudioRecorder:(unint64_t)recorder exclaveSampleCount:(unint64_t)count
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000B25A4;
  v19[3] = &unk_1002506C8;
  v19[4] = self;
  v19[5] = count;
  v9 = objc_retainBlock(v19);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B3184;
  v18[3] = &unk_1002506F0;
  v18[4] = self;
  v10 = objc_retainBlock(v18);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B3310;
  block[3] = &unk_100250718;
  block[4] = self;
  v15 = v9;
  v16 = v10;
  countCopy = count;
  v12 = v10;
  v13 = v9;
  dispatch_async(queue, block);
}

- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly
{
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    *buf = 136315394;
    v11 = "[CSVoiceTriggerSecondPass audioStreamProvider:didStopStreamUnexpectedly:]";
    v12 = 2114;
    v13 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B3488;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_didStopAudioStream
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    v6 = 136315394;
    v7 = "[CSVoiceTriggerSecondPass _didStopAudioStream]";
    v8 = 2114;
    v9 = uUID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:", &v6, 0x16u);
  }

  kdebug_trace();
  [(CSPhraseDetector *)self->_phraseDetector reset];
  [(CSVoiceTriggerSecondPass *)self _clearTriggerCandidate];
  [(SSRSpeakerRecognitionController *)self->_speakerRecognitionController endAudio];
  [(CSPlainAudioFileWriter *)self->_audioFileWriter endAudio];
}

- (void)_didStartAudioStream:(BOOL)stream
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    v8 = 136315394;
    v9 = "[CSVoiceTriggerSecondPass _didStartAudioStream:]";
    v10 = 2114;
    v11 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:", &v8, 0x16u);
  }

  kdebug_trace();
  if (!stream)
  {
    [(CSPhraseDetector *)self->_phraseDetector reset];
    [(CSVoiceTriggerSecondPass *)self _clearTriggerCandidate];
    [(CSPlainAudioFileWriter *)self->_audioFileWriter endAudio];
    [(SSRSpeakerRecognitionController *)self->_speakerRecognitionController endAudio];
  }
}

- (void)_prepareStartAudioStream
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    v14 = 136315394;
    v15 = "[CSVoiceTriggerSecondPass _prepareStartAudioStream]";
    v16 = 2114;
    v17 = uUID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:", &v14, 0x16u);
  }

  v6 = +[CSFPreferences sharedPreferences];
  secondPassAudioLoggingEnabled = [v6 secondPassAudioLoggingEnabled];

  if (secondPassAudioLoggingEnabled)
  {
    if (self->_firstPassSource == 7)
    {
      firstPassDeviceId = self->_firstPassDeviceId;
    }

    else
    {
      firstPassDeviceId = 0;
    }

    v9 = [CSVoiceTriggerSecondPass secondPassAudioLoggingFilePathWithDeviceId:firstPassDeviceId];
    v10 = [CSPlainAudioFileWriter alloc];
    v11 = [NSURL URLWithString:v9];
    v12 = [v10 initWithURL:v11];
    audioFileWriter = self->_audioFileWriter;
    self->_audioFileWriter = v12;
  }

  else
  {
    v9 = self->_audioFileWriter;
    self->_audioFileWriter = 0;
  }
}

- (void)_logRejectionEventToSELF:(id)f result:(unint64_t)result
{
  fCopy = f;
  v7 = fCopy;
  if (!self->_hasLoggedSecondPass)
  {
    v13 = fCopy;
    v8 = CSIsInternalBuild();
    v7 = v13;
    if (v8)
    {
      storedFirstPassInfo = self->_storedFirstPassInfo;
      v10 = [(CSVoiceTriggerSecondPass *)self _getFirstPassTriggerSourceAsString:self->_firstPassSource];
      [(NSMutableDictionary *)storedFirstPassInfo setObject:v10 forKey:kVTEIfirstPassTriggerSource];

      v11 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
      [v11 logStartEventWithFirstPassStartedInfo:self->_storedFirstPassInfo withMHUUID:self->_secondPassRejectionMHUUID];

      v12 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
      [v12 logRejectEventWithVTEI:v13 withMHUUID:self->_secondPassRejectionMHUUID withSecondPassResult:result];

      v7 = v13;
      self->_hasLoggedSecondPass = 1;
    }
  }
}

- (void)_voiceTriggerFirstPassDidDetectKeywordFrom:(id)from completion:(id)completion
{
  fromCopy = from;
  completionCopy = completion;
  firstPassSource = [fromCopy firstPassSource];
  deviceId = [fromCopy deviceId];
  audioProviderUUID = [fromCopy audioProviderUUID];
  firstPassTriggerInfo = [fromCopy firstPassTriggerInfo];
  isSecondChanceRun = [fromCopy isSecondChanceRun];
  self->_firstPassFireHostTime = 0;
  v12 = kVTEIFirstPassFireHostTime;
  v13 = [(NSUUID *)firstPassTriggerInfo objectForKeyedSubscript:kVTEIFirstPassFireHostTime];

  if (v13)
  {
    v14 = [(NSUUID *)firstPassTriggerInfo objectForKeyedSubscript:v12];
    self->_firstPassFireHostTime = [v14 unsignedLongValue];
  }

  v15 = CSLogCategoryVT;
  if ((!firstPassTriggerInfo || !firstPassSource) && os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v50 = "[CSVoiceTriggerSecondPass _voiceTriggerFirstPassDidDetectKeywordFrom:completion:]";
    v51 = 2050;
    v52 = firstPassSource;
    v53 = 2114;
    v54 = firstPassTriggerInfo;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s There are nils in starting second pass with firstPassSource: %{public}lu firstPassInfo: %{public}@", buf, 0x20u);
    v15 = CSLogCategoryVT;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    secondPassRejectionMHUUID = self->_secondPassRejectionMHUUID;
    *buf = 136315650;
    v50 = "[CSVoiceTriggerSecondPass _voiceTriggerFirstPassDidDetectKeywordFrom:completion:]";
    v51 = 2114;
    v52 = uUID;
    v53 = 2112;
    v54 = secondPassRejectionMHUUID;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Second pass generated mhUUID for rejections: %@", buf, 0x20u);
  }

  if (firstPassSource != 4)
  {
    v19 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      uUID2 = [(CSVoiceTriggerSecondPass *)self UUID];
      *buf = 136315394;
      v50 = "[CSVoiceTriggerSecondPass _voiceTriggerFirstPassDidDetectKeywordFrom:completion:]";
      v51 = 2114;
      v52 = uUID2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Sending early detect notification upon first pass trigger", buf, 0x16u);
    }

    self->_earlyDetectFiredMachTime = mach_absolute_time();
  }

  if ([(CSVoiceTriggerSecondPass *)self _isBuiltInFirstPassSource:firstPassSource])
  {
    notify_post("com.apple.voicetrigger.builtin.EarlyDetect");
  }

  v22 = &off_1001A9000;
  if (firstPassSource != 4)
  {
    kdebug_trace();
    if (firstPassSource <= 0xC)
    {
      if (((1 << firstPassSource) & 0x1B06) != 0)
      {
        goto LABEL_23;
      }

      if (firstPassSource == 5)
      {
        goto LABEL_36;
      }
    }
  }

  if (![(CSVoiceTriggerSecondPass *)self _isFirstPassSourceExclave:firstPassSource])
  {
    if (firstPassSource != 3)
    {
      if (firstPassSource == 7)
      {
        v23 = +[CSSiriLauncher sharedLauncher];
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1000B44A4;
        v47[3] = &unk_100253300;
        v47[4] = self;
        [v23 notifyRemoraVoiceTriggerPrewarm:firstPassTriggerInfo deviceId:deviceId completion:v47];
        goto LABEL_35;
      }

      if (firstPassSource != 6)
      {
        goto LABEL_36;
      }
    }

    v23 = +[CSSiriLauncher sharedLauncher];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000B4318;
    v48[3] = &unk_100253300;
    v48[4] = self;
    [v23 notifyBluetoothDeviceVoiceTriggerPrewarm:firstPassTriggerInfo deviceId:deviceId completion:v48];
LABEL_35:

    goto LABEL_36;
  }

LABEL_23:
  v24 = +[CSFPreferences sharedPreferences];
  if (([v24 useSiriActivationSPIForHomePod] & 1) == 0)
  {
    v25 = +[CSUtils isLocalVoiceTriggerAvailable];

    if (v25)
    {
      goto LABEL_26;
    }

    notify_post("com.apple.voicetrigger.EarlyDetect");
    v29 = CSLogCategoryVT;
    v22 = &off_1001A9000;
    if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v23 = v29;
    uUID3 = [(CSVoiceTriggerSecondPass *)self UUID];
    *buf = 136315394;
    v50 = "[CSVoiceTriggerSecondPass _voiceTriggerFirstPassDidDetectKeywordFrom:completion:]";
    v51 = 2114;
    v52 = uUID3;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Use legacy early detection notification", buf, 0x16u);

    v22 = &off_1001A9000;
    goto LABEL_35;
  }

LABEL_26:
  v26 = [(CSVoiceTriggerSecondPass *)self _isFirstPassSourceExclave:firstPassSource];
  v27 = +[CSSiriLauncher sharedLauncher];
  v28 = v27;
  if (v26)
  {
    [v27 notifyBuiltInVoiceTriggerPrewarmExclave:firstPassTriggerInfo completion:0];
  }

  else
  {
    [v27 notifyBuiltInVoiceTriggerPrewarm:firstPassTriggerInfo completion:0];
  }

  v22 = &off_1001A9000;
LABEL_36:
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = *(v22 + 502);
  block[2] = sub_1000B45E0;
  block[3] = &unk_100250650;
  block[4] = self;
  v40 = firstPassTriggerInfo;
  v44 = completionCopy;
  v45 = firstPassSource;
  v41 = fromCopy;
  v42 = deviceId;
  v46 = isSecondChanceRun;
  v43 = audioProviderUUID;
  v32 = audioProviderUUID;
  v33 = deviceId;
  v34 = completionCopy;
  v35 = fromCopy;
  v36 = firstPassTriggerInfo;
  dispatch_async(queue, block);
  v37 = +[CSVoiceTriggerStatistics sharedInstance];
  [v37 incrementFirstPassTriggerCount];
}

- (void)cancelCurrentRequest
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    *buf = 136315394;
    v9 = "[CSVoiceTriggerSecondPass cancelCurrentRequest]";
    v10 = 2114;
    v11 = uUID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Cancel VoiceTrigger second pass request has received", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4EB0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)forceCancelSecondPassTrigger
{
  os_unfair_lock_lock(&self->_secondpassTriggerCancellationLock);
  self->_cancelSecondPassTrigger = 1;

  os_unfair_lock_unlock(&self->_secondpassTriggerCancellationLock);
}

- (void)_handleVoiceTriggerFirstPassFromJarvis:(unint64_t)jarvis deviceId:(id)id audioProviderUUID:(id)d firstPassInfo:(id)info completion:(id)completion
{
  idCopy = id;
  dCopy = d;
  infoCopy = info;
  completionCopy = completion;
  if (jarvis != 4)
  {
    v14 = CSLogCategoryVT;
    if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      if (!completionCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v52 = v14;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    *buf = 136315394;
    v63 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromJarvis:deviceId:audioProviderUUID:firstPassInfo:completion:]";
    v64 = 2114;
    v65 = uUID;
    _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Expecting first pass source as Jarvis", buf, 0x16u);

    if (completionCopy)
    {
LABEL_4:
      v15 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
      v16 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
      completionCopy[2](completionCopy, v15, v16);
    }
  }

LABEL_5:
  v17 = [infoCopy objectForKeyedSubscript:kVTEIfirstPassDetectedChannel];
  self->_activeChannel = [v17 unsignedIntegerValue];

  [(CSPhraseDetector *)self->_phraseDetector setActiveChannel:self->_activeChannel];
  v18 = [infoCopy objectForKeyedSubscript:kVTEIearlyDetectFiredMachTime];
  self->_earlyDetectFiredMachTime = [v18 unsignedLongLongValue];

  v19 = [infoCopy objectForKeyedSubscript:kVTEIfirstPassStartSampleCount];
  self->_firstPassTriggerStartSampleCount = [v19 unsignedIntegerValue];

  v20 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    uUID2 = [(CSVoiceTriggerSecondPass *)self UUID];
    activeChannel = self->_activeChannel;
    firstPassTriggerStartSampleCount = self->_firstPassTriggerStartSampleCount;
    *buf = 136315906;
    v63 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromJarvis:deviceId:audioProviderUUID:firstPassInfo:completion:]";
    v64 = 2114;
    v65 = uUID2;
    v66 = 2050;
    v67 = *&activeChannel;
    v68 = 2050;
    v69 = *&firstPassTriggerStartSampleCount;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Received first pass Jarvis triggered in channel: %{public}tu with trigger start: %{public}tu", buf, 0x2Au);
  }

  v25 = self->_firstPassTriggerStartSampleCount;
  if (self->_analyzerPrependingSamples >= v25)
  {
    analyzerPrependingSamples = self->_firstPassTriggerStartSampleCount;
  }

  else
  {
    analyzerPrependingSamples = self->_analyzerPrependingSamples;
  }

  v27 = v25 - analyzerPrependingSamples;
  +[CSConfig inputRecordingSampleRate];
  v29 = (v28 * 0.5);
  v30 = [infoCopy objectForKeyedSubscript:kVTEIfirstPassEndSampleCount];
  v31 = [v30 unsignedIntegerValue] + v29;

  self->_secondPassTimeout = &v31[-v27];
  +[CSConfig inputRecordingDurationInSecs];
  v33 = v32;
  +[CSConfig inputRecordingSampleRate];
  if ((v33 * v34) < &v31[-v27])
  {
    v35 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      log = v35;
      uUID3 = [(CSVoiceTriggerSecondPass *)self UUID];
      secondPassTimeout = self->_secondPassTimeout;
      +[CSConfig inputRecordingSampleRate];
      *buf = 136315650;
      v63 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromJarvis:deviceId:audioProviderUUID:firstPassInfo:completion:]";
      v64 = 2114;
      v65 = uUID3;
      v66 = 2050;
      v67 = (secondPassTimeout / v55);
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Second pass timeout (%{public}.2fs) should not exceed the ring buffer size, set to ring buffer size", buf, 0x20u);
    }

    +[CSConfig inputRecordingDurationInSecs];
    v37 = v36;
    +[CSConfig inputRecordingSampleRate];
    self->_secondPassTimeout = (v37 * v38);
  }

  v39 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v39;
    uUID4 = [(CSVoiceTriggerSecondPass *)self UUID];
    v42 = v29;
    v43 = analyzerPrependingSamples;
    v44 = infoCopy;
    v45 = completionCopy;
    v46 = self->_secondPassTimeout;
    v47 = v46;
    +[CSConfig inputRecordingSampleRate];
    *buf = 136316930;
    v63 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromJarvis:deviceId:audioProviderUUID:firstPassInfo:completion:]";
    v64 = 2114;
    v65 = uUID4;
    v66 = 2050;
    v67 = *&v46;
    completionCopy = v45;
    infoCopy = v44;
    v68 = 2050;
    v69 = (v47 / v48);
    v70 = 2050;
    v71 = v27;
    v72 = 2050;
    v73 = v31;
    v74 = 2050;
    v75 = v43;
    v76 = 2050;
    v77 = v42;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Second pass set to analyze %{public}tu samples (%{public}.2fs) from %{public}tu to %{public}tu, with prepending samples %{public}tu, trailing samples %{public}tu", buf, 0x52u);
  }

  v49 = [CSAudioRecordContext contextForJarvisWithDeviceId:idCopy];
  v50 = +[CSAudioStartStreamOption noAlertOption];
  [v50 setRequestHistoricalAudioDataSampleCount:1];
  [v50 setStartRecordingSampleCount:v27];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1000B571C;
  v60[3] = &unk_100253220;
  v61 = completionCopy;
  v51 = completionCopy;
  [(CSVoiceTriggerSecondPass *)self _requestStartAudioStreamWitContext:v49 audioProviderUUID:dCopy startStreamOption:v50 completion:v60];
  [(CSVoiceTriggerSecondPass *)self setResultCompletion:v51];
}

- (void)_handleVoiceTriggerFirstPassFromHearstAP:(unint64_t)p deviceId:(id)id audioProviderUUID:(id)d firstPassInfo:(id)info rtModelRequestOptions:(id)options completion:(id)completion
{
  idCopy = id;
  dCopy = d;
  infoCopy = info;
  optionsCopy = options;
  completionCopy = completion;
  if (p == 6)
  {
    v48 = dCopy;
    v49 = idCopy;
    self->_activeChannel = 0;
    [(CSPhraseDetector *)self->_phraseDetector setActiveChannel:0];
    +[CSConfig inputRecordingSampleRate];
    self->_secondPassTimeout = (v19 + v19);
    v20 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      uUID = [(CSVoiceTriggerSecondPass *)self UUID];
      secondPassTimeout = self->_secondPassTimeout;
      *buf = 136315650;
      v53 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromHearstAP:deviceId:audioProviderUUID:firstPassInfo:rtModelRequestOptions:completion:]";
      v54 = 2114;
      v55 = uUID;
      v56 = 1026;
      LODWORD(v57) = secondPassTimeout;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Setting second pass timeout for hearst : %{public}d", buf, 0x1Cu);
    }

    v24 = [CSPhraseNDEAPIScorer alloc];
    currentAsset = self->_currentAsset;
    config = self->_config;
    firstPassSource = self->_firstPassSource;
    activeChannel = self->_activeChannel;
    _fetchSiriLocale = [(CSVoiceTriggerSecondPass *)self _fetchSiriLocale];
    v30 = [(CSPhraseNDEAPIScorer *)v24 initWithAsset:currentAsset assetConfig:config firstPassSource:firstPassSource activeChannel:activeChannel siriLanguage:_fetchSiriLocale shouldEnableShadowMicScore:0 rtmodelRequestOptions:optionsCopy];
    phraseNDEAPIScorer = self->_phraseNDEAPIScorer;
    self->_phraseNDEAPIScorer = v30;

    v32 = [infoCopy objectForKeyedSubscript:kVTEIfirstPassStartSampleCount];
    self->_firstPassTriggerStartSampleCount = [v32 unsignedIntegerValue];

    v33 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      uUID2 = [(CSVoiceTriggerSecondPass *)self UUID];
      v36 = self->_activeChannel;
      firstPassTriggerStartSampleCount = self->_firstPassTriggerStartSampleCount;
      *buf = 136315906;
      v53 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromHearstAP:deviceId:audioProviderUUID:firstPassInfo:rtModelRequestOptions:completion:]";
      v54 = 2114;
      v55 = uUID2;
      v56 = 2050;
      v57 = v36;
      v58 = 2050;
      v59 = firstPassTriggerStartSampleCount;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Received first pass triggered in channel: %{public}tu with trigger start: %{public}tu", buf, 0x2Au);
    }

    analyzerPrependingSamples = self->_analyzerPrependingSamples;
    v39 = self->_firstPassTriggerStartSampleCount;
    v40 = v39 >= analyzerPrependingSamples;
    v41 = v39 - analyzerPrependingSamples;
    if (v40)
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    idCopy = v49;
    v43 = [CSAudioRecordContext contextForHearstVoiceTriggerWithDeviceId:v49];
    v44 = +[CSAudioStartStreamOption noAlertOption];
    [v44 setDisableBoostForDoAP:1];
    [v44 setRequestHistoricalAudioDataSampleCount:1];
    [v44 setStartRecordingSampleCount:v42];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000B5C30;
    v50[3] = &unk_100253270;
    v50[4] = self;
    v51 = completionCopy;
    dCopy = v48;
    [(CSVoiceTriggerSecondPass *)self _requestStartAudioStreamWitContext:v43 audioProviderUUID:v48 startStreamOption:v44 completion:v50];

    goto LABEL_13;
  }

  v45 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    v46 = v45;
    uUID3 = [(CSVoiceTriggerSecondPass *)self UUID];
    *buf = 136315394;
    v53 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromHearstAP:deviceId:audioProviderUUID:firstPassInfo:rtModelRequestOptions:completion:]";
    v54 = 2114;
    v55 = uUID3;
    _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Expecting first pass source as Hearst", buf, 0x16u);

    if (!completionCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (completionCopy)
  {
LABEL_12:
    v43 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
    v44 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v43, v44);
LABEL_13:
  }

LABEL_14:
}

- (void)_handleVoiceTriggerFirstPassFromRemora:(unint64_t)remora deviceId:(id)id audioProviderUUID:(id)d firstPassInfo:(id)info completion:(id)completion
{
  idCopy = id;
  dCopy = d;
  infoCopy = info;
  completionCopy = completion;
  if (remora == 7)
  {
    self->_activeChannel = 0;
    [(CSPhraseDetector *)self->_phraseDetector setActiveChannel:0];
    v74 = kVTEIfirstPassStartSampleCount;
    v16 = [infoCopy objectForKeyedSubscript:?];
    self->_firstPassTriggerStartSampleCount = [v16 unsignedIntegerValue];

    v17 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      uUID = [(CSVoiceTriggerSecondPass *)self UUID];
      activeChannel = self->_activeChannel;
      firstPassTriggerStartSampleCount = self->_firstPassTriggerStartSampleCount;
      *buf = 136315906;
      v79 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromRemora:deviceId:audioProviderUUID:firstPassInfo:completion:]";
      v80 = 2114;
      v81 = uUID;
      v82 = 2050;
      v83 = *&activeChannel;
      v84 = 2050;
      v85 = *&firstPassTriggerStartSampleCount;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Received first pass triggered in channel: %{public}tu with trigger start: %{public}tu", buf, 0x2Au);
    }

    analyzerPrependingSamples = self->_analyzerPrependingSamples;
    v23 = self->_firstPassTriggerStartSampleCount;
    v24 = v23 >= analyzerPrependingSamples;
    v25 = v23 - analyzerPrependingSamples;
    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = [infoCopy objectForKeyedSubscript:kVTEIfirstPassEndSampleCount];
    v28 = [v27 unsignedIntegerValue] + self->_analyzerTrailingSamples;

    self->_secondPassTimeout = &v28[-v26];
    +[CSConfig inputRecordingDurationInSecs];
    v30 = v29;
    +[CSConfig inputRecordingSampleRate];
    if ((v30 * v31) < &v28[-v26])
    {
      v32 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
      {
        v70 = v32;
        uUID2 = [(CSVoiceTriggerSecondPass *)self UUID];
        secondPassTimeout = self->_secondPassTimeout;
        +[CSConfig inputRecordingSampleRate];
        *buf = 136315650;
        v79 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromRemora:deviceId:audioProviderUUID:firstPassInfo:completion:]";
        v80 = 2114;
        v81 = uUID2;
        v82 = 2050;
        v83 = (secondPassTimeout / v73);
        _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Second pass timeout (%{public}.2fs) should not exceed the ring buffer size, set to ring buffer size", buf, 0x20u);
      }

      +[CSConfig inputRecordingDurationInSecs];
      v34 = v33;
      +[CSConfig inputRecordingSampleRate];
      self->_secondPassTimeout = (v34 * v35);
    }

    v36 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
      uUID3 = [(CSVoiceTriggerSecondPass *)self UUID];
      v39 = dCopy;
      v40 = idCopy;
      v41 = self->_secondPassTimeout;
      v42 = v41;
      +[CSConfig inputRecordingSampleRate];
      *buf = 136316418;
      v79 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromRemora:deviceId:audioProviderUUID:firstPassInfo:completion:]";
      v80 = 2114;
      v81 = uUID3;
      v82 = 2050;
      v83 = *&v41;
      idCopy = v40;
      dCopy = v39;
      v84 = 2050;
      v85 = (v42 / v43);
      v86 = 2050;
      v87 = v26;
      v88 = 2050;
      v89 = v28;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Second pass set to analyze %{public}tu samples (%{public}.2fs) from %{public}tu to %{public}tu", buf, 0x3Eu);
    }

    v75 = idCopy;
    v44 = [CSAudioRecordContext contextForRemoraVoiceTriggerWithDeviceId:idCopy];
    v45 = +[CSAudioStartStreamOption noAlertOption];
    [v45 setRequestHistoricalAudioDataSampleCount:1];
    [v45 setStartRecordingSampleCount:0];
    if (!infoCopy)
    {
      goto LABEL_18;
    }

    v46 = kVTEIfirstPassSampleCountFromHistoricalBuffer;
    v47 = [infoCopy objectForKeyedSubscript:kVTEIfirstPassSampleCountFromHistoricalBuffer];

    if (v47)
    {
      v48 = [infoCopy objectForKeyedSubscript:v46];
      unsignedIntValue = [v48 unsignedIntValue];

      +[CSConfig inputRecordingSampleRate];
      v51 = unsignedIntValue / v50;
      v52 = mach_absolute_time();
      *&v53 = v51;
      v54 = v52 - [CSFTimeUtils secondsToHostTime:v53];
      v55 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
LABEL_16:
        *buf = 136315906;
        v79 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromRemora:deviceId:audioProviderUUID:firstPassInfo:completion:]";
        v80 = 2048;
        v81 = v52;
        v82 = 2048;
        v83 = v51;
        v84 = 2048;
        v85 = *&v54;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%s current host:%llu delta:%f estimatedStartHostTime : %llu", buf, 0x2Au);
      }
    }

    else
    {
      v58 = kVTEItotalSampleCount;
      v59 = [infoCopy objectForKeyedSubscript:kVTEItotalSampleCount];
      if (!v59)
      {
        goto LABEL_18;
      }

      v60 = v59;
      v61 = [infoCopy objectForKeyedSubscript:v74];

      if (!v61)
      {
        goto LABEL_18;
      }

      v62 = [infoCopy objectForKeyedSubscript:v58];
      unsignedIntValue2 = [v62 unsignedIntValue];

      v64 = [infoCopy objectForKeyedSubscript:v74];
      unsignedIntValue3 = [v64 unsignedIntValue];

      +[CSConfig inputRecordingSampleRate];
      v51 = (unsignedIntValue2 - unsignedIntValue3 + 8000) / v66;
      v52 = mach_absolute_time();
      *&v67 = v51;
      v54 = v52 - [CSFTimeUtils secondsToHostTime:v67];
      v55 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }
    }

    [v45 setEstimatedStartHostTime:v54];
LABEL_18:
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_1000B6454;
    v76[3] = &unk_100253220;
    v56 = completionCopy;
    v77 = v56;
    [(CSVoiceTriggerSecondPass *)self _requestStartAudioStreamWitContext:v44 audioProviderUUID:dCopy startStreamOption:v45 completion:v76];
    [(CSVoiceTriggerSecondPass *)self setResultCompletion:v56];

    idCopy = v75;
LABEL_22:

    goto LABEL_23;
  }

  v57 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    v68 = v57;
    uUID4 = [(CSVoiceTriggerSecondPass *)self UUID];
    *buf = 136315394;
    v79 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromRemora:deviceId:audioProviderUUID:firstPassInfo:completion:]";
    v80 = 2114;
    v81 = uUID4;
    _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Expecting first pass source as Remora", buf, 0x16u);

    if (!completionCopy)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (completionCopy)
  {
LABEL_21:
    v44 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
    v45 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v44, v45);
    goto LABEL_22;
  }

LABEL_23:
}

- (void)_handleVoiceTriggerFirstPassFromHearst:(unint64_t)hearst deviceId:(id)id audioProviderUUID:(id)d firstPassInfo:(id)info rtModelRequestOptions:(id)options completion:(id)completion
{
  idCopy = id;
  dCopy = d;
  infoCopy = info;
  optionsCopy = options;
  completionCopy = completion;
  if (hearst == 3)
  {
    v38 = infoCopy;
    v39 = idCopy;
    self->_activeChannel = 0;
    [(CSPhraseDetector *)self->_phraseDetector setActiveChannel:0];
    +[CSConfig inputRecordingSampleRate];
    self->_secondPassTimeout = (v19 + v19);
    v20 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      uUID = [(CSVoiceTriggerSecondPass *)self UUID];
      secondPassTimeout = self->_secondPassTimeout;
      *buf = 136315650;
      v43 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromHearst:deviceId:audioProviderUUID:firstPassInfo:rtModelRequestOptions:completion:]";
      v44 = 2114;
      v45 = uUID;
      v46 = 1026;
      v47 = secondPassTimeout;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Setting second pass timeout for hearst : %{public}d", buf, 0x1Cu);
    }

    v24 = [CSPhraseNDEAPIScorer alloc];
    currentAsset = self->_currentAsset;
    config = self->_config;
    firstPassSource = self->_firstPassSource;
    activeChannel = self->_activeChannel;
    _fetchSiriLocale = [(CSVoiceTriggerSecondPass *)self _fetchSiriLocale];
    v30 = [(CSPhraseNDEAPIScorer *)v24 initWithAsset:currentAsset assetConfig:config firstPassSource:firstPassSource activeChannel:activeChannel siriLanguage:_fetchSiriLocale shouldEnableShadowMicScore:1 rtmodelRequestOptions:optionsCopy];
    phraseNDEAPIScorer = self->_phraseNDEAPIScorer;
    self->_phraseNDEAPIScorer = v30;

    [(CSPhraseNDEAPIScorer *)self->_phraseNDEAPIScorer setDelegate:self];
    idCopy = v39;
    v32 = [CSAudioRecordContext contextForHearstVoiceTriggerWithDeviceId:v39];
    v33 = +[CSAudioStartStreamOption noAlertOption];
    [v33 setDisableBoostForDoAP:1];
    [v33 setRequestHistoricalAudioDataSampleCount:1];
    [v33 setStartRecordingSampleCount:0];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000B68A8;
    v40[3] = &unk_100253220;
    v34 = completionCopy;
    v41 = v34;
    [(CSVoiceTriggerSecondPass *)self _requestStartAudioStreamWitContext:v32 audioProviderUUID:dCopy startStreamOption:v33 completion:v40];
    [(CSVoiceTriggerSecondPass *)self setResultCompletion:v34];

    infoCopy = v38;
    goto LABEL_8;
  }

  v35 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    v36 = v35;
    uUID2 = [(CSVoiceTriggerSecondPass *)self UUID];
    *buf = 136315394;
    v43 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromHearst:deviceId:audioProviderUUID:firstPassInfo:rtModelRequestOptions:completion:]";
    v44 = 2114;
    v45 = uUID2;
    _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Expecting first pass source as Hearst", buf, 0x16u);

    if (!completionCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (completionCopy)
  {
LABEL_7:
    v32 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
    v33 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v32, v33);
LABEL_8:
  }

LABEL_9:
}

- (void)_handleVoiceTriggerFirstPassFromAP:(id)p audioProviderUUID:(id)d completion:(id)completion
{
  pCopy = p;
  completionCopy = completion;
  v10 = kVTEIfirstPassDetectedChannel;
  dCopy = d;
  v12 = [pCopy objectForKeyedSubscript:v10];
  self->_selectedChannelFromFirstPass = [v12 unsignedIntegerValue];

  if ([(CSVoiceTriggerSecondPass *)self _shouldRequestSingleChannelFromAudioProvider])
  {
    selectedChannelFromFirstPass = 0;
  }

  else
  {
    selectedChannelFromFirstPass = self->_selectedChannelFromFirstPass;
  }

  self->_activeChannel = selectedChannelFromFirstPass;
  [(CSPhraseDetector *)self->_phraseDetector setActiveChannel:?];
  v14 = [pCopy objectForKeyedSubscript:kVTEIfirstPassChannelSelectionScores];
  firstPassChannelSelectionScores = self->_firstPassChannelSelectionScores;
  self->_firstPassChannelSelectionScores = v14;

  v16 = [pCopy objectForKeyedSubscript:kVTEIfirstPassChannelSelectionDelaySeconds];
  [v16 floatValue];
  self->_firstPassChannelSelectionDelaySeconds = v17;

  v18 = [pCopy objectForKeyedSubscript:kVTEIfirstPassMasterChannelScoreBoost];
  [v18 floatValue];
  self->_firstPassMasterChannelScoreBoost = v19;

  v20 = [pCopy objectForKeyedSubscript:kVTEIfirstPassOnsetScore];
  [v20 floatValue];
  self->_firstPassOnsetScore = v21;

  v22 = [pCopy objectForKeyedSubscript:kVTEIfirstPassOnsetChannel];
  self->_firstPassOnsetChannel = [v22 unsignedIntegerValue];

  v23 = [pCopy objectForKeyedSubscript:kVTEIfirstPassStartSampleCount];
  self->_firstPassTriggerStartSampleCount = [v23 unsignedIntegerValue];

  v24 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    activeChannel = self->_activeChannel;
    firstPassTriggerStartSampleCount = self->_firstPassTriggerStartSampleCount;
    *buf = 136315906;
    v61 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromAP:audioProviderUUID:completion:]";
    v62 = 2114;
    v63 = uUID;
    v64 = 2050;
    v65 = *&activeChannel;
    v66 = 2050;
    v67 = *&firstPassTriggerStartSampleCount;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Received first pass triggered in channel: %{public}tu with trigger start: %{public}tu", buf, 0x2Au);
  }

  analyzerPrependingSamples = self->_analyzerPrependingSamples;
  v30 = self->_firstPassTriggerStartSampleCount;
  v31 = v30 >= analyzerPrependingSamples;
  v32 = v30 - analyzerPrependingSamples;
  if (v31)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = [pCopy objectForKeyedSubscript:kVTEIfirstPassFireSampleCount];
  self->_firstPassTriggerFireSampleCount = [v34 unsignedIntegerValue];

  v35 = self->_analyzerTrailingSamples + self->_firstPassTriggerFireSampleCount;
  v57 = v33;
  self->_secondPassTimeout = v35 - v33;
  +[CSConfig inputRecordingDurationInSecs];
  v37 = v36;
  +[CSConfig inputRecordingSampleRate];
  if ((v37 * v38) < (v35 - v33))
  {
    v39 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v53 = v39;
      uUID2 = [(CSVoiceTriggerSecondPass *)self UUID];
      secondPassTimeout = self->_secondPassTimeout;
      +[CSConfig inputRecordingSampleRate];
      *buf = 136315650;
      v61 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromAP:audioProviderUUID:completion:]";
      v62 = 2114;
      v63 = uUID2;
      v64 = 2050;
      v65 = (secondPassTimeout / v56);
      _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Second pass timeout (%{public}.2fs) should not exceed the ring buffer size, set to ring buffer size", buf, 0x20u);
    }

    +[CSConfig inputRecordingDurationInSecs];
    v41 = v40;
    +[CSConfig inputRecordingSampleRate];
    self->_secondPassTimeout = (v41 * v42);
  }

  v43 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v44 = v43;
    [(CSVoiceTriggerSecondPass *)self UUID];
    v45 = completionCopy;
    v47 = v46 = dCopy;
    v48 = self->_secondPassTimeout;
    +[CSConfig inputRecordingSampleRate];
    *buf = 136316418;
    v61 = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromAP:audioProviderUUID:completion:]";
    v62 = 2114;
    v63 = v47;
    v64 = 2050;
    v65 = *&v48;
    v66 = 2050;
    v67 = (v48 / v49);
    v68 = 2050;
    v69 = v57;
    v70 = 2050;
    v71 = v35;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Second pass set to analyze %{public}tu samples (%{public}.2fs) from %{public}tu to %{public}tu", buf, 0x3Eu);

    dCopy = v46;
    completionCopy = v45;
  }

  v50 = +[CSAudioRecordContext contextForBuiltInVoiceTrigger];
  v51 = +[CSAudioStartStreamOption noAlertOption];
  if ([(CSVoiceTriggerSecondPass *)self _shouldRequestSingleChannelFromAudioProvider])
  {
    [v51 setRequireSingleChannelLookup:1];
    [v51 setSelectedChannel:LODWORD(self->_selectedChannelFromFirstPass)];
  }

  [v51 setRequestHistoricalAudioDataSampleCount:1];
  [v51 setStartRecordingSampleCount:v57];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1000B6EAC;
  v58[3] = &unk_100253220;
  v59 = completionCopy;
  v52 = completionCopy;
  [(CSVoiceTriggerSecondPass *)self _requestStartAudioStreamWitContext:v50 audioProviderUUID:dCopy startStreamOption:v51 completion:v58];

  [(CSVoiceTriggerSecondPass *)self setResultCompletion:v52];
}

- (void)_handleVoiceTriggerFirstPassFromExclave:(id)exclave audioProviderUUID:(id)d completion:(id)completion
{
  exclaveCopy = exclave;
  dCopy = d;
  completionCopy = completion;
  v11 = [exclaveCopy objectForKeyedSubscript:kVTEIfirstPassDetectedChannel];
  self->_activeChannel = [v11 unsignedIntegerValue];

  v12 = +[CSAudioStartStreamOption noAlertOption];
  firstPassSource = self->_firstPassSource;
  if (firstPassSource - 13 < 2)
  {
    goto LABEL_4;
  }

  if (firstPassSource == 12)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v58 = 0.0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1000B75C8;
    v52[3] = &unk_100250600;
    v52[4] = buf;
    v52[5] = &v53;
    [(CSVoiceTriggerSecondPass *)self _calculateRecordingTimeForAOPTriggerFromFirstPassInfo:exclaveCopy completion:v52];
    self->_secondPassTimeout = v54[3];
    [v12 setRequestHistoricalAudioDataWithHostTime:1];
    [v12 setStartRecordingHostTime:*(*&buf[8] + 24)];
    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(buf, 8);
LABEL_11:
    secondPassTimeout = self->_secondPassTimeout;
    +[CSConfig inputRecordingDurationInSecs];
    v28 = v27;
    +[CSConfig inputRecordingSampleRate];
    if ((v28 * v29) < secondPassTimeout)
    {
      v30 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
      {
        v43 = v30;
        uUID = [(CSVoiceTriggerSecondPass *)self UUID];
        v45 = self->_secondPassTimeout;
        +[CSConfig inputRecordingSampleRate];
        *buf = 136315650;
        *&buf[4] = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromExclave:audioProviderUUID:completion:]";
        *&buf[12] = 2114;
        *&buf[14] = uUID;
        *&buf[22] = 2050;
        v58 = (v45 / v46);
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Second pass timeout (%{public}.2fs) should not exceed the ring buffer size, set to ring buffer size", buf, 0x20u);
      }

      +[CSConfig inputRecordingDurationInSecs];
      v32 = v31;
      +[CSConfig inputRecordingSampleRate];
      self->_secondPassTimeout = (v32 * v33);
    }

    v34 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v34;
      uUID2 = [(CSVoiceTriggerSecondPass *)self UUID];
      v37 = self->_secondPassTimeout;
      +[CSConfig inputRecordingSampleRate];
      *buf = 136315906;
      *&buf[4] = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromExclave:audioProviderUUID:completion:]";
      *&buf[12] = 2114;
      *&buf[14] = uUID2;
      *&buf[22] = 2050;
      v58 = *&v37;
      v59 = 2050;
      v60 = (v37 / v38);
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Second pass set to analyze %{public}tu samples (%{public}.2fs)", buf, 0x2Au);
    }

    [(CSExclaveSecondPassVoiceTriggerAnalyzing *)self->_exclaveClient startSecondPassVoiceTriggerWithFirstPassSource:self->_firstPassSource enablePHS:[(CSVoiceTriggerSecondPass *)self _usePHS] supportMultiPhrase:self->_supportsMph activeChannel:LODWORD(self->_activeChannel)];
    v39 = +[CSAudioRecordContext contextForBuiltInVoiceTrigger];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000B75E4;
    v50[3] = &unk_100253220;
    v40 = completionCopy;
    v51 = v40;
    [(CSVoiceTriggerSecondPass *)self _requestStartAudioStreamWitContext:v39 audioProviderUUID:dCopy startStreamOption:v12 completion:v50];
    [(CSVoiceTriggerSecondPass *)self setResultCompletion:v40];
    v41 = v51;
    goto LABEL_18;
  }

  if (firstPassSource == 11)
  {
LABEL_4:
    v14 = [exclaveCopy objectForKeyedSubscript:kVTEIfirstPassStartSampleCount];
    self->_firstPassTriggerStartSampleCount = [v14 unsignedIntegerValue];

    v15 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      uUID3 = [(CSVoiceTriggerSecondPass *)self UUID];
      activeChannel = self->_activeChannel;
      v19 = *&self->_firstPassTriggerStartSampleCount;
      *buf = 136315906;
      *&buf[4] = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromExclave:audioProviderUUID:completion:]";
      *&buf[12] = 2114;
      *&buf[14] = uUID3;
      *&buf[22] = 2050;
      v58 = *&activeChannel;
      v59 = 2050;
      v60 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Received first pass triggered in channel: %{public}tu with trigger start: %{public}tu", buf, 0x2Au);
    }

    analyzerPrependingSamples = self->_analyzerPrependingSamples;
    firstPassTriggerStartSampleCount = self->_firstPassTriggerStartSampleCount;
    v22 = firstPassTriggerStartSampleCount >= analyzerPrependingSamples;
    v23 = firstPassTriggerStartSampleCount - analyzerPrependingSamples;
    if (v22)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = [exclaveCopy objectForKeyedSubscript:kVTEIfirstPassFireSampleCount];
    self->_firstPassTriggerFireSampleCount = [v25 unsignedIntegerValue];

    self->_secondPassTimeout = self->_firstPassTriggerFireSampleCount - v24 + self->_analyzerTrailingSamples;
    [v12 setRequestHistoricalAudioDataSampleCount:1];
    [v12 setStartRecordingSampleCount:v24];
    goto LABEL_11;
  }

  v42 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    v47 = v42;
    uUID4 = [(CSVoiceTriggerSecondPass *)self UUID];
    v49 = self->_firstPassSource;
    *buf = 136315650;
    *&buf[4] = "[CSVoiceTriggerSecondPass _handleVoiceTriggerFirstPassFromExclave:audioProviderUUID:completion:]";
    *&buf[12] = 2114;
    *&buf[14] = uUID4;
    *&buf[22] = 2050;
    v58 = *&v49;
    _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Not valid firstPass source for Exclave : %{public}lu", buf, 0x20u);
  }

  if (completionCopy)
  {
    v39 = [[CSVoiceTriggerSecondPassResultHolder alloc] initWithResult:4 voiceTriggerEventInfo:0 isSecondChanceCandidate:0];
    v41 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v39, v41);
LABEL_18:
  }
}

- (void)_requestStartAudioStreamWitContext:(id)context audioProviderUUID:(id)d startStreamOption:(id)option completion:(id)completion
{
  contextCopy = context;
  dCopy = d;
  optionCopy = option;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1000B7DA4;
  v51[3] = &unk_1002505D8;
  objc_copyWeak(&v53, &location);
  v41 = completionCopy;
  v52 = v41;
  v11 = objc_retainBlock(v51);
  _voiceTriggerSecondPassLatencyMetrics = [(CSVoiceTriggerSecondPass *)self _voiceTriggerSecondPassLatencyMetrics];
  [_voiceTriggerSecondPassLatencyMetrics setSecondPassAudioStreamStartTime:mach_absolute_time()];

  speechManager = self->_speechManager;
  if (speechManager)
  {
    v14 = [(CSSpeechManager *)speechManager audioProviderWithUUID:dCopy];
    if (!v14)
    {
      v15 = self->_speechManager;
      v50 = 0;
      v14 = [(CSSpeechManager *)v15 audioProviderWithContext:contextCopy error:&v50];
      v43 = v50;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = +[CSSpeechManager sharedManager];
  v14 = [v16 audioProviderWithUUID:dCopy];

  if (v14)
  {
LABEL_5:
    v43 = 0;
    goto LABEL_6;
  }

  v36 = +[CSSpeechManager sharedManager];
  v49 = 0;
  v14 = [v36 audioProviderWithContext:contextCopy error:&v49];
  v43 = v49;

LABEL_6:
  v17 = CSLogCategoryVT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    deviceId = [contextCopy deviceId];
    uUID2 = [v14 UUID];
    *buf = 136315906;
    v56 = "[CSVoiceTriggerSecondPass _requestStartAudioStreamWitContext:audioProviderUUID:startStreamOption:completion:]";
    v57 = 2114;
    v58 = uUID;
    v59 = 2112;
    v60 = deviceId;
    v61 = 2112;
    v62 = uUID2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:DeviceID : %@, audioProviderUUID : %@", buf, 0x2Au);
  }

  uUID3 = [v14 UUID];
  [(CSVoiceTriggerSecondPass *)self setAudioProviderUUID:uUID3];

  v22 = CSLogCategoryVT;
  v23 = v22;
  if (v14)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      uUID4 = [(CSVoiceTriggerSecondPass *)self UUID];
      *buf = 136315394;
      v56 = "[CSVoiceTriggerSecondPass _requestStartAudioStreamWitContext:audioProviderUUID:startStreamOption:completion:]";
      v57 = 2114;
      v58 = uUID4;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Start audio stream with request", buf, 0x16u);
    }

    if ([contextCopy isBuiltInVoiceTriggered])
    {
      v25 = objc_alloc_init(CSAudioStreamRequest);
      [v25 setClientIdentity:2];
      if ([(CSVoiceTriggerSecondPass *)self _isFirstPassSourceExclave:self->_firstPassSource])
      {
        [v25 setRequestExclaveAudio:1];
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v48 = 0;
    v28 = [v14 audioStreamWithRequest:v25 streamName:v27 error:&v48];
    v29 = v48;

    v30 = CSLogCategoryVT;
    v31 = v30;
    if (v28)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        uUID5 = [(CSVoiceTriggerSecondPass *)self UUID];
        name = [v28 name];
        *buf = 136315650;
        v56 = "[CSVoiceTriggerSecondPass _requestStartAudioStreamWitContext:audioProviderUUID:startStreamOption:completion:]";
        v57 = 2114;
        v58 = uUID5;
        v59 = 2114;
        v60 = name;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Has received audio stream : %{public}@", buf, 0x20u);
      }

      [(CSVoiceTriggerSecondPass *)self setAudioStream:v28];
      audioStream = [(CSVoiceTriggerSecondPass *)self audioStream];
      [audioStream setDelegate:self];

      [(CSVoiceTriggerSecondPass *)self _prepareStartAudioStream];
      audioStream2 = [(CSVoiceTriggerSecondPass *)self audioStream];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000B7E40;
      v46[3] = &unk_100253270;
      v46[4] = self;
      v47 = v11;
      [audioStream2 startAudioStreamWithOption:optionCopy completion:v46];
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        uUID6 = [(CSVoiceTriggerSecondPass *)self UUID];
        localizedDescription = [v29 localizedDescription];
        *buf = 136315650;
        v56 = "[CSVoiceTriggerSecondPass _requestStartAudioStreamWitContext:audioProviderUUID:startStreamOption:completion:]";
        v57 = 2114;
        v58 = uUID6;
        v59 = 2114;
        v60 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Failed to get audio stream : %{public}@", buf, 0x20u);
      }

      (v11[2])(v11, 0, v29);
    }
  }

  else
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      uUID7 = [(CSVoiceTriggerSecondPass *)self UUID];
      localizedDescription2 = [v43 localizedDescription];
      *buf = 136315650;
      v56 = "[CSVoiceTriggerSecondPass _requestStartAudioStreamWitContext:audioProviderUUID:startStreamOption:completion:]";
      v57 = 2114;
      v58 = uUID7;
      v59 = 2114;
      v60 = localizedDescription2;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Getting audio stream provider has failed : %{public}@", buf, 0x20u);
    }

    (v11[2])(v11, 0, v43);
  }

  objc_destroyWeak(&v53);
  objc_destroyWeak(&location);
}

- (void)_clearTriggerCandidate
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    v6 = 136315394;
    v7 = "[CSVoiceTriggerSecondPass _clearTriggerCandidate]";
    v8 = 2114;
    v9 = uUID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Clearing VoiceTrigger candidate in the second pass", &v6, 0x16u);
  }

  self->_hasTriggerCandidate = 0;
}

- (void)_initializeMediaPlayingState
{
  v3 = +[CSMediaPlayingMonitor sharedInstance];
  [v3 addObserver:self];
  [v3 initializeMediaPlayingState];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B8150;
  v6[3] = &unk_100253078;
  v6[4] = self;
  [v3 mediaPlayingStateWithCompletion:v6];
  v4 = +[CSVolumeMonitor sharedInstance];
  [v4 addObserver:self];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B81C4;
  v5[3] = &unk_1002505B0;
  v5[4] = self;
  [v4 musicVolumeWithCompletion:v5];
}

- (BOOL)_usePHS
{
  if (!self->_shouldUsePHS || !+[CSUtils supportSAT])
  {
    return 0;
  }

  currentAsset = self->_currentAsset;

  return [(CSAsset *)currentAsset containsSpeakerRecognitionCategory];
}

- (void)_setAsset:(id)asset
{
  assetCopy = asset;
  dispatch_assert_queue_V2(self->_queue);
  if (assetCopy)
  {
    objc_storeStrong(&self->_currentAsset, asset);
    v6 = [CSVoiceTriggerSecondPassConfigDecoder decodeConfigFrom:self->_currentAsset forFirstPassSource:self->_firstPassSource];
    config = self->_config;
    self->_config = v6;

    [(CSVoiceTriggerSecondPassConfig *)self->_config preTriggerAudioTime];
    v9 = v8;
    +[CSConfig inputRecordingSampleRate];
    self->_extraSamplesAtStart = (v9 * v10);
    [(CSVoiceTriggerSecondPassConfig *)self->_config prependingAudioTime];
    v12 = v11;
    +[CSConfig inputRecordingSampleRate];
    self->_analyzerPrependingSamples = (v12 * v13);
    [(CSVoiceTriggerSecondPassConfig *)self->_config trailingAudioTime];
    v15 = v14;
    +[CSConfig inputRecordingSampleRate];
    self->_analyzerTrailingSamples = (v15 * v16);
    [(CSVoiceTriggerSecondPassConfig *)self->_config prependingAudioTime];
    self->_secondPassPrependingSec = v17;
    if (!self->_phraseDetector)
    {
      v18 = objc_alloc_init(CSPhraseDetector);
      phraseDetector = self->_phraseDetector;
      self->_phraseDetector = v18;
    }

    _voiceTriggerSecondPassLatencyMetrics = [(CSVoiceTriggerSecondPass *)self _voiceTriggerSecondPassLatencyMetrics];
    [_voiceTriggerSecondPassLatencyMetrics setSecondPassAssetLoadStartTime:mach_absolute_time()];

    [(CSPhraseDetector *)self->_phraseDetector setConfig:self->_config];
    _voiceTriggerSecondPassLatencyMetrics2 = [(CSVoiceTriggerSecondPass *)self _voiceTriggerSecondPassLatencyMetrics];
    [_voiceTriggerSecondPassLatencyMetrics2 setSecondPassAssetLoadCompleteTime:mach_absolute_time()];

    if (!self->_firstTimeAssetConfigured)
    {
      self->_firstTimeAssetConfigured = 1;
      v22 = self->_config;
      if (v22)
      {
        firstPassSource = self->_firstPassSource;
        if (firstPassSource == 12 || firstPassSource == 2)
        {
          AOPVTTriggerLength = self->_AOPVTTriggerLength;
          if (AOPVTTriggerLength)
          {
            v25 = AOPVTTriggerLength;
            secondPassPrependingSec = self->_secondPassPrependingSec;
            +[CSConfig inputRecordingSampleRate];
            v28 = ((v25 + (secondPassPrependingSec * v27)) + self->_analyzerTrailingSamples);
            self->_secondPassTimeout = v28;
            v29 = CSLogCategoryVT;
            if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v91 = "[CSVoiceTriggerSecondPass _setAsset:]";
              v92 = 2048;
              v93 = v28;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s AOP trigger length to override secondpass timeout: %lu", buf, 0x16u);
            }

            v22 = self->_config;
          }

          if ([(CSVoiceTriggerSecondPassConfig *)v22 useTimeBasedTriggerLength])
          {
            timeBasedEstimatedTriggerLength = self->_timeBasedEstimatedTriggerLength;
            if (timeBasedEstimatedTriggerLength)
            {
              v31 = timeBasedEstimatedTriggerLength;
              v32 = self->_secondPassPrependingSec;
              +[CSConfig inputRecordingSampleRate];
              v34 = ((v31 + (v32 * v33)) + self->_analyzerTrailingSamples);
              self->_secondPassTimeout = v34;
              v35 = CSLogCategoryVT;
              if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v91 = "[CSVoiceTriggerSecondPass _setAsset:]";
                v92 = 2048;
                v93 = v34;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s Timebased trigger length to override secondpass timeout: %lu", buf, 0x16u);
              }
            }
          }
        }
      }
    }

    if (![(CSVoiceTriggerSecondPass *)self _usePHS])
    {
      v51 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v52 = v51;
        uUID = [(CSVoiceTriggerSecondPass *)self UUID];
        *buf = 136315650;
        v91 = "[CSVoiceTriggerSecondPass _setAsset:]";
        v92 = 2114;
        v93 = uUID;
        v94 = 1026;
        LODWORD(v95) = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Not creating SAT objects: usePHS %{public}d", buf, 0x1Cu);
      }

      goto LABEL_31;
    }

    v36 = self->_currentAsset;
    _fetchSiriLocale = [(CSVoiceTriggerSecondPass *)self _fetchSiriLocale];
    if (_fetchSiriLocale)
    {
      v38 = _fetchSiriLocale;
      v39 = +[SSRVoiceProfileManager sharedInstance];
      v40 = SSRSpeakerRecognitionSiriAppDomain;
      v41 = [v39 provisionedVoiceProfilesForAppDomain:SSRSpeakerRecognitionSiriAppDomain withLocale:v38];

      if ([v41 count])
      {
        if ([v41 count] >= 2)
        {
          v42 = CSLogCategoryVT;
          if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
          {
            v83 = v42;
            uUID2 = [(CSVoiceTriggerSecondPass *)self UUID];
            *buf = 136315906;
            v91 = "[CSVoiceTriggerSecondPass _setAsset:]";
            v92 = 2114;
            v93 = uUID2;
            v94 = 2114;
            v95 = v38;
            v96 = 2114;
            v97 = v41;
            _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:ERR: More than one Siri voice profile present for %{public}@ - %{public}@, trigger cleanup", buf, 0x2Au);
          }

          v43 = +[SSRVoiceProfileManager sharedInstance];
          [v43 triggerInvalidSiriProfileCleanupFromPersonalDevicesForLanguage:v38 appDomain:v40];
        }

        if ([assetCopy useSpeakerRecognitionAsset])
        {
          v45 = +[SSRAssetManager sharedManager];
          v46 = [v45 installedSpeakerRecognitionAssetForLanguage:v38];

          if (v46)
          {
            v47 = CSLogCategoryVT;
            if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v91 = "[CSVoiceTriggerSecondPass _setAsset:]";
              v92 = 2112;
              v93 = v46;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%s Found speaker recognition asset:%@", buf, 0x16u);
            }
          }

          else
          {
            v46 = self->_currentAsset;
            v76 = CSLogCategoryVT;
            if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
            {
              v77 = v76;
              uUID3 = [(CSVoiceTriggerSecondPass *)self UUID];
              *buf = 136315394;
              v91 = "[CSVoiceTriggerSecondPass _setAsset:]";
              v92 = 2114;
              v93 = uUID3;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:Falling back to VT-assets", buf, 0x16u);
            }
          }
        }

        else
        {
          v46 = v36;
        }

        v88[0] = SSRSpeakerRecognitionStyleKey;
        v88[1] = SSRSpeakerRecognitionAssetKey;
        v89[0] = &off_10025E330;
        v89[1] = v46;
        v88[2] = SSRSpeakerRecognitionMaxAudioDurationSecs;
        LODWORD(v44) = 2.5;
        v56 = [NSNumber numberWithFloat:v44];
        v89[2] = v56;
        v88[3] = SSRSpeakerRecognitionProfileArrayKey;
        v57 = [v41 objectAtIndexedSubscript:0];
        v87 = v57;
        v58 = [NSArray arrayWithObjects:&v87 count:1];
        v88[4] = SSRSpeakerRecognitionLocaleKey;
        v89[3] = v58;
        v89[4] = v38;
        v59 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:5];

        v86 = 0;
        v60 = [[SSRSpeakerRecognitionContext alloc] initWithVoiceRecognitionContext:v59 error:&v86];
        v61 = v86;
        ssrContext = self->_ssrContext;
        self->_ssrContext = v60;

        if (!self->_ssrContext || v61)
        {
          v70 = CSLogCategoryVT;
          if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
          {
            v71 = v70;
            uUID4 = [(CSVoiceTriggerSecondPass *)self UUID];
            localizedDescription = [v61 localizedDescription];
            *buf = 136315650;
            v91 = "[CSVoiceTriggerSecondPass _setAsset:]";
            v92 = 2114;
            v93 = uUID4;
            v94 = 2112;
            v95 = localizedDescription;
            v74 = "%s CSVoiceTriggerSecondPass[%{public}@]:Failed to create SSR context with error %@";
LABEL_51:
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, v74, buf, 0x20u);
          }
        }

        else
        {
          if (+[CSUtils isExclaveHardware])
          {
            [(CSVoiceTriggerSecondPass *)self _syncVoiceProfileEmbeddingsToExclave];
          }

          v63 = [SSRSpeakerRecognitionController alloc];
          v64 = self->_ssrContext;
          v85 = 0;
          v65 = [v63 initWithContext:v64 withDelegate:self error:&v85];
          v61 = v85;
          speakerRecognitionController = self->_speakerRecognitionController;
          self->_speakerRecognitionController = v65;

          if (self->_speakerRecognitionController && !v61)
          {
            phraseConfigs = [(CSVoiceTriggerSecondPassConfig *)self->_config phraseConfigs];
            firstObject = [phraseConfigs firstObject];
            [firstObject speakerRejectLoggingThreshold];
            self->_phsRejectLoggingThreshold = v69;

LABEL_31:
            [(CSVoiceTriggerSecondPass *)self _reset];
            [(CSVoiceTriggerSecondPass *)self _unmapForPrewarmLoadedGraph];
            [(CSVoiceTriggerSecondPass *)self _mmapModelForPreWarm];
            goto LABEL_53;
          }

          v75 = CSLogCategoryVT;
          if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
          {
            v71 = v75;
            uUID4 = [(CSVoiceTriggerSecondPass *)self UUID];
            localizedDescription = [v61 localizedDescription];
            *buf = 136315650;
            v91 = "[CSVoiceTriggerSecondPass _setAsset:]";
            v92 = 2114;
            v93 = uUID4;
            v94 = 2112;
            v95 = localizedDescription;
            v74 = "%s CSVoiceTriggerSecondPass[%{public}@]:Failed to create SSR controller with error %@";
            goto LABEL_51;
          }
        }

        [(CSVoiceTriggerSecondPass *)self _reset];

        goto LABEL_53;
      }

      v55 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
      {
        v81 = v55;
        uUID5 = [(CSVoiceTriggerSecondPass *)self UUID];
        *buf = 136315650;
        v91 = "[CSVoiceTriggerSecondPass _setAsset:]";
        v92 = 2114;
        v93 = uUID5;
        v94 = 2114;
        v95 = v38;
        _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:ERR: Failed to retrieve voice profiles for %{public}@", buf, 0x20u);
      }

      [(CSVoiceTriggerSecondPass *)self _reset];
    }

    else
    {
      v54 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
      {
        v79 = v54;
        uUID6 = [(CSVoiceTriggerSecondPass *)self UUID];
        *buf = 136315394;
        v91 = "[CSVoiceTriggerSecondPass _setAsset:]";
        v92 = 2114;
        v93 = uUID6;
        _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:Failed to get language code!!!", buf, 0x16u);
      }

      [(CSVoiceTriggerSecondPass *)self _reset];
    }

    goto LABEL_53;
  }

  v48 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    v49 = v48;
    uUID7 = [(CSVoiceTriggerSecondPass *)self UUID];
    *buf = 136315394;
    v91 = "[CSVoiceTriggerSecondPass _setAsset:]";
    v92 = 2114;
    v93 = uUID7;
    _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s CSVoiceTriggerSecondPass[%{public}@]:asset is nil, stop initialization", buf, 0x16u);
  }

LABEL_53:
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B8E44;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(queue, v7);
}

- (void)_reset
{
  dispatch_assert_queue_V2(self->_queue);
  self->_isPSRAudioFlushed = 0;
  self->_numProcessedSamples = 0;
  self->_numAnalyzedSamples = 0;
  [(CSPhraseDetector *)self->_phraseDetector reset];
  self->_processedSampleCountsInPending = 0;
  self->_secondPassCheckerExecutionTime = 0;
  [(CSVoiceTriggerSecondPass *)self _resetStartAnalyzeTime];
  self->_secondPassHasMadeDecision = 0;
  v3 = [(SSRSpeakerRecognitionController *)self->_speakerRecognitionController resetWithContext:self->_ssrContext];
  currentLocale = self->_currentLocale;
  self->_currentLocale = 0;

  self->_cancelSecondPassTrigger = 0;
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B8F30;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_fetchSiriLocale
{
  if (self->_firstPassDeviceId && self->_secondPassClient == 5)
  {
    currentLocale = self->_currentLocale;
    if (!currentLocale)
    {
      v4 = [CSUtils getSiriLanguageWithEndpointId:"getSiriLanguageWithEndpointId:fallbackLanguage:" fallbackLanguage:?];
      v5 = self->_currentLocale;
      self->_currentLocale = v4;

      currentLocale = self->_currentLocale;
    }

    v6 = currentLocale;
  }

  else
  {
    v6 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  }

  return v6;
}

- (id)_getExclaveAudioTimeConverter
{
  exclaveAudioTimeConverter = self->_exclaveAudioTimeConverter;
  if (!exclaveAudioTimeConverter)
  {
    v4 = +[CSAudioTimeConverterPool sharedInstance];
    defaultExclaveConverter = [v4 defaultExclaveConverter];
    v6 = self->_exclaveAudioTimeConverter;
    self->_exclaveAudioTimeConverter = defaultExclaveConverter;

    exclaveAudioTimeConverter = self->_exclaveAudioTimeConverter;
  }

  return exclaveAudioTimeConverter;
}

- (id)_getAudioTimeConverter
{
  audioTimeConverter = self->_audioTimeConverter;
  if (!audioTimeConverter)
  {
    audioStream = [(CSVoiceTriggerSecondPass *)self audioStream];
    streamProvider = [audioStream streamProvider];
    audioStreamId = [streamProvider audioStreamId];

    v7 = +[CSAudioTimeConverterPool sharedInstance];
    v8 = [v7 converterForAudioStreamId:audioStreamId];
    v9 = self->_audioTimeConverter;
    self->_audioTimeConverter = v8;

    audioTimeConverter = self->_audioTimeConverter;
  }

  return audioTimeConverter;
}

- (void)setSecondPassClient:(unint64_t)client
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B9188;
  block[3] = &unk_100251DF0;
  objc_copyWeak(v7, &location);
  v7[1] = client;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)setFirstPassDeviceId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B9264;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)_mmapModelForPreWarm
{
  if (CSIsHorseman())
  {
    configPathRecognizer = [(CSVoiceTriggerSecondPassConfig *)self->_config configPathRecognizer];
    v4 = [CSMil2BnnsUtils readBnnsIrFromModelConfig:configPathRecognizer modelType:1];

    v10 = 0;
    v5 = [CSUtils mmapWithFile:v4 mappedSizeOut:&v10];
    v6 = v10;
    v7 = v6;
    self->_prewarmModelGraph = v5;
    if (v6)
    {
      self->_prewarmMmapedSize = [v6 unsignedLongValue];
    }

    v8 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      prewarmMmapedSize = self->_prewarmMmapedSize;
      *buf = 136315394;
      v12 = "[CSVoiceTriggerSecondPass _mmapModelForPreWarm]";
      v13 = 2048;
      v14 = prewarmMmapedSize;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s mmap with model size: %lu", buf, 0x16u);
    }
  }
}

- (void)prewarm
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B9428;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)start
{
  v3 = +[CSAudioServerCrashMonitor sharedInstance];
  [v3 addObserver:self];
}

- (void)setSupportsMultiPhraseDetection:(BOOL)detection
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B95B8;
  v4[3] = &unk_100253BF8;
  v4[4] = self;
  detectionCopy = detection;
  dispatch_async_and_wait(queue, v4);
}

- (void)setSpeechManager:(id)manager
{
  managerCopy = manager;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B97AC;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = managerCopy;
  v6 = managerCopy;
  dispatch_async_and_wait(queue, v7);
}

- (void)dealloc
{
  [(CSExclaveSecondPassVoiceTriggerAnalyzing *)self->_exclaveClient deinitializeSecondPass];
  [(CSVoiceTriggerSecondPass *)self _unmapForPrewarmLoadedGraph];
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    uUID = [(CSVoiceTriggerSecondPass *)self UUID];
    *buf = 136315394;
    v8 = "[CSVoiceTriggerSecondPass dealloc]";
    v9 = 2114;
    v10 = uUID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:deallocated", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = CSVoiceTriggerSecondPass;
  [(CSVoiceTriggerSecondPass *)&v6 dealloc];
}

- (CSVoiceTriggerSecondPass)initWithFirstPassSource:(unint64_t)source phsEnabled:(BOOL)enabled speechManager:(id)manager supportsMphDetection:(BOOL)detection secondPassQueue:(id)queue
{
  enabledCopy = enabled;
  managerCopy = manager;
  queueCopy = queue;
  v34.receiver = self;
  v34.super_class = CSVoiceTriggerSecondPass;
  v15 = [(CSVoiceTriggerSecondPass *)&v34 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_speechManager, manager);
    if (queueCopy)
    {
      v17 = queueCopy;
      queue = v16->_queue;
      v16->_queue = v17;
    }

    else
    {
      queue = dispatch_get_global_queue(33, 0);
      v19 = dispatch_queue_create_with_target_V2("VoiceTrigger Second Pass Queue", 0, queue);
      v20 = v16->_queue;
      v16->_queue = v19;
    }

    v16->_firstPassSource = source;
    v16->_shouldUsePHS = enabledCopy;
    v16->_numProcessedSamples = 0;
    v16->_numAnalyzedSamples = 0;
    +[CSConfig inputRecordingSampleRate];
    v16->_secondPassTimeout = (v21 * 3.0);
    v16->_secondPassCompleteWatchDogTimeoutSec = 20.0;
    [(CSVoiceTriggerSecondPass *)v16 _clearTriggerCandidate];
    *&v16->_lastAggTime = 0u;
    *&v16->_cumulativeDowntime = 0u;
    v22 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
    [v22 addObserver:v16];

    [(CSVoiceTriggerSecondPass *)v16 _initializeMediaPlayingState];
    v23 = +[NSUUID UUID];
    uUIDString = [v23 UUIDString];
    UUID = v16->_UUID;
    v16->_UUID = uUIDString;

    v16->_firstTimeAssetConfigured = 0;
    v26 = +[NSMutableArray array];
    assetConfigWaitingBuffer = v16->_assetConfigWaitingBuffer;
    v16->_assetConfigWaitingBuffer = v26;

    v16->_firstPassFireHostTime = 0;
    v16->_prewarmMmapedSize = 0;
    v16->_prewarmModelGraph = 0;
    v16->_supportsMph = detection;
    *&v16->_isPSRAudioFlushed = 0;
    v16->_AOPVTTriggerLength = 0;
    v16->_timeBasedEstimatedTriggerLength = 0;
    v28 = [CSExclaveMessageHandlingFactory exclaveSecondPassVoiceTriggerAnalyzerForFirstPassSource:v16->_firstPassSource];
    exclaveClient = v16->_exclaveClient;
    v16->_exclaveClient = v28;

    [(CSExclaveSecondPassVoiceTriggerAnalyzing *)v16->_exclaveClient initializeSecondPass];
    v30 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      uUID = [(CSVoiceTriggerSecondPass *)v16 UUID];
      *buf = 136315650;
      v36 = "[CSVoiceTriggerSecondPass initWithFirstPassSource:phsEnabled:speechManager:supportsMphDetection:secondPassQueue:]";
      v37 = 2114;
      v38 = uUID;
      v39 = 1024;
      v40 = enabledCopy;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerSecondPass[%{public}@]:initialized with PHS : %d", buf, 0x1Cu);
    }

    v16->_cancelSecondPassTrigger = 0;
    v16->_secondpassTriggerCancellationLock._os_unfair_lock_opaque = 0;
  }

  return v16;
}

+ (id)stringForSecondPassResult:(unint64_t)result
{
  if (result > 0xA)
  {
    return @"n/a";
  }

  else
  {
    return off_1002507D8[result];
  }
}

+ (id)timeStampString
{
  v2 = objc_alloc_init(NSDateFormatter);
  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd-HHmmss"];
  v4 = +[NSDate date];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

+ (id)secondPassAudioLogDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[CSFPreferences sharedPreferences];
  voiceTriggerAudioLogDirectory = [v3 voiceTriggerAudioLogDirectory];

  if ([v2 fileExistsAtPath:voiceTriggerAudioLogDirectory])
  {
    v5 = 0;
  }

  else
  {
    v11 = 0;
    v6 = [v2 createDirectoryAtPath:voiceTriggerAudioLogDirectory withIntermediateDirectories:1 attributes:0 error:&v11];
    v5 = v11;
    if ((v6 & 1) == 0)
    {
      v7 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
      {
        v9 = v7;
        localizedDescription = [v5 localizedDescription];
        *buf = 136315650;
        v13 = "+[CSVoiceTriggerSecondPass secondPassAudioLogDirectory]";
        v14 = 2114;
        v15 = voiceTriggerAudioLogDirectory;
        v16 = 2114;
        v17 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Couldn't create voice trigger audio logging directory at path %{public}@ %{public}@", buf, 0x20u);
      }

      voiceTriggerAudioLogDirectory = @"/tmp";
    }
  }

  return voiceTriggerAudioLogDirectory;
}

+ (id)secondPassAudioLoggingFilePathWithDeviceId:(id)id
{
  idCopy = id;
  v4 = +[CSVoiceTriggerSecondPass secondPassAudioLogDirectory];
  v5 = +[CSVoiceTriggerSecondPass timeStampString];
  v6 = v5;
  if (idCopy)
  {
    [NSString stringWithFormat:@"%@%@%@.wav", v5, idCopy, @"-activation"];
  }

  else
  {
    [NSString stringWithFormat:@"%@%@.wav", v5, @"-activation", v10];
  }
  v7 = ;

  v8 = [v4 stringByAppendingPathComponent:v7];

  return v8;
}

@end