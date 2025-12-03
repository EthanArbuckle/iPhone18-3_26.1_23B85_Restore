@interface ESProfiler
+ (id)sharedProfiler;
- (ESProfiler)initWithESSelfHelper:(id)helper signpostHelper:(id)signpostHelper;
- (id)powerLogEventDictionaryWithPowerLogEvent:(id)event language:(id)language modelVersion:(id)version applicationName:(id)name;
- (id)timestampInTicksForAudioProcessed:(double)processed;
- (void)logActiveConfigUpdateEndedWithTimeInTicks:(id)ticks;
- (void)logActiveConfigUpdateStartedOrChangedWithTimeInTicks:(id)ticks;
- (void)logAotLmeEndedWithTimeInTicks:(id)ticks;
- (void)logAotLmeStartedOrChangedWithTimeInTicks:(id)ticks;
- (void)logAppleNeuralEngineModelInitializationEndedWithTimeInTicks:(id)ticks fileName:(id)name;
- (void)logAppleNeuralEngineModelInitializationStartedOrChangedWithTimeInTicks:(id)ticks fileName:(id)name;
- (void)logAssetsCompilationEventsWithPowerLogEvent:(id)event;
- (void)logAudioPacketArrivalEndedWithTimeInTicks:(id)ticks;
- (void)logAudioPacketArrivalStartedOrChangedWithTimeInTicks:(id)ticks;
- (void)logFinalAudioPacketContainingSpeechReceivedWithTimeInTicks:(id)ticks loggableSharedUserId:(id)id earPackage:(id)package;
- (void)logFinalResultGeneratedWithEARPackage:(id)package firstSeenPartialResultTokens:(id)tokens partialResultOffset:(unint64_t)offset timeInTicks:(id)ticks;
- (void)logFirstAudioPacketProcessedWithTimeInTicks:(id)ticks;
- (void)logFrameProcessingReadyWithTimeInTicks:(id)ticks;
- (void)logInitializationStartedOrChangedWithTimeInTicks:(id)ticks cachedRecognizerExisted:(BOOL)existed newRecognizerCreated:(BOOL)created;
- (void)logJitLmeEndedAndEndedTier1WithDialogContext:(id)context timeInTicks:(id)ticks;
- (void)logJitLmeStartedOrChangedWithTimeInTicks:(id)ticks;
- (void)logPackageGeneratedAndRecognitionResultTier1WithEARPackage:(id)package loggableSharedUserId:(id)id timeInTicks:(id)ticks;
- (void)logPartialResultGenerated:(id)generated ofSize:(id)size timeInTicks:(id)ticks;
- (void)logPauseRecognitionWithTimeInTicks:(id)ticks;
- (void)logPendingANEModelInitializationContextEvents:(id)events;
- (void)logPendingPreheatContextEvents:(id)events;
- (void)logPreheatOnlyEventsWithPowerLogEvent:(id)event language:(id)language modelVersion:(id)version;
- (void)logRequestEndedOrFailedOrCancelledWithError:(id)error recognizerComponents:(id)components averageActiveTokensPerFrame:(id)frame languageModelInterpolationWeights:(id)weights signalToNoiseRatioInDecibels:(id)decibels recognitionDurationInSec:(id)sec audioDurationMs:(id)ms eagerUsed:(id)self0 utteranceDetectionEnabled:(BOOL)self1 utteranceConcatenationEnabled:(BOOL)self2 cpuRealTimeFactor:(id)self3 numLmeDataStreams:(id)self4 phoneticMatchDecoderName:(id)self5 pauseDurations:(id)self6 itnDurationInNs:(id)self7 isEmojiPersonalizationUsed:(BOOL)self8 isEmojiDisambiguationUsed:(BOOL)self9 isEmojiExpectedButNotRecognized:(BOOL)recognized recognizedEmojis:(id)emojis allItnRunIntervals:(id)intervals allSecondaryPassIntervals:(id)passIntervals powerLogEvent:(id)event aneUsed:(id)aneUsed language:(id)language modelVersion:(id)version applicationName:(id)applicationName;
- (void)logRequestStartedOrChangedWithTask:(id)task modelLocale:(id)locale modelVersion:(id)version isHighQualityAsset:(id)asset hammerVersion:(id)hammerVersion geoLanguageModelRegion:(id)region geoLanguageModelLoaded:(BOOL)loaded speechProfileAgeInSec:(id)self0 dictationUIInteractionId:(id)self1 portraitExperimentVariantName:(id)self2 applicationName:(id)self3 powerLogEvent:(id)self4;
- (void)logResumeRecognitionWithTimeInTicks:(id)ticks;
- (void)logSpeechProfileGenerationStartedOrUpdatedEventsWithPowerLogEvent:(id)event language:(id)language;
- (void)logTotalAudioProcessedOfDuration:(double)duration timeInTicks:(id)ticks;
- (void)setESSelfHelper:(id)helper;
@end

@implementation ESProfiler

- (void)logResumeRecognitionWithTimeInTicks:(id)ticks
{
  v3 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticks unsignedLongLongValue]);
  v4 = os_signpost_id_generate(AFSiriLogContextSpeech);
  v5 = AFSiriLogContextSpeech;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = 134349056;
    v8 = v3;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, v4, "ES: Resume Recognition", "%{public, signpost.description:event_time}llu", &v7, 0xCu);
  }
}

- (void)logPauseRecognitionWithTimeInTicks:(id)ticks
{
  v3 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticks unsignedLongLongValue]);
  v4 = os_signpost_id_generate(AFSiriLogContextSpeech);
  v5 = AFSiriLogContextSpeech;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = 134349056;
    v8 = v3;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, v4, "ES: Pause Recognition", "%{public, signpost.description:event_time}llu", &v7, 0xCu);
  }
}

- (void)logTotalAudioProcessedOfDuration:(double)duration timeInTicks:(id)ticks
{
  ticksCopy = ticks;
  v7 = [NSNumber numberWithDouble:duration];
  v9[0] = v7;
  v9[1] = ticksCopy;
  v8 = [NSArray arrayWithObjects:v9 count:2];

  [(NSMutableArray *)self->_audioDurationProcessingTimestampInTicks addObject:v8];
}

- (void)logRequestEndedOrFailedOrCancelledWithError:(id)error recognizerComponents:(id)components averageActiveTokensPerFrame:(id)frame languageModelInterpolationWeights:(id)weights signalToNoiseRatioInDecibels:(id)decibels recognitionDurationInSec:(id)sec audioDurationMs:(id)ms eagerUsed:(id)self0 utteranceDetectionEnabled:(BOOL)self1 utteranceConcatenationEnabled:(BOOL)self2 cpuRealTimeFactor:(id)self3 numLmeDataStreams:(id)self4 phoneticMatchDecoderName:(id)self5 pauseDurations:(id)self6 itnDurationInNs:(id)self7 isEmojiPersonalizationUsed:(BOOL)self8 isEmojiDisambiguationUsed:(BOOL)self9 isEmojiExpectedButNotRecognized:(BOOL)recognized recognizedEmojis:(id)emojis allItnRunIntervals:(id)intervals allSecondaryPassIntervals:(id)passIntervals powerLogEvent:(id)event aneUsed:(id)aneUsed language:(id)language modelVersion:(id)version applicationName:(id)applicationName
{
  errorCopy = error;
  componentsCopy = components;
  frameCopy = frame;
  weightsCopy = weights;
  decibelsCopy = decibels;
  secCopy = sec;
  msCopy = ms;
  usedCopy = used;
  factorCopy = factor;
  streamsCopy = streams;
  nameCopy = name;
  durationsCopy = durations;
  nsCopy = ns;
  emojisCopy = emojis;
  intervalsCopy = intervals;
  passIntervalsCopy = passIntervals;
  eventCopy = event;
  aneUsedCopy = aneUsed;
  languageCopy = language;
  versionCopy = version;
  applicationNameCopy = applicationName;
  v62 = eventCopy;
  v63 = languageCopy;
  v64 = versionCopy;
  v38 = [(ESProfiler *)self powerLogEventDictionaryWithPowerLogEvent:eventCopy language:languageCopy modelVersion:versionCopy applicationName:applicationNameCopy];
  [CESRUtilities logToPowerLogForEventCategory:@"ESConnection" eventDictionary:v38];

  v138 = 0u;
  v137 = 0u;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  *buffer = 0u;
  v39 = getpid();
  proc_pid_rusage(v39, 6, buffer);
  v40 = *(&v125 + 1);
  ri_instructions = self->usage_start.ri_instructions;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_1000133E4;
  v91[3] = &unk_100054F10;
  v91[4] = self;
  v91[5] = &v96;
  v91[6] = &v92;
  [intervalsCopy enumerateObjectsUsingBlock:v91];
  v42 = v97[3];
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_1000135D4;
  v82[3] = &unk_100054F10;
  selfCopy = self;
  v82[4] = self;
  v82[5] = &v87;
  v82[6] = &v83;
  [passIntervalsCopy enumerateObjectsUsingBlock:v82];
  v44 = v88[3];
  selfHelper = self->_selfHelper;
  v46 = [NSNumber numberWithDouble:v42 * 1000000000.0];
  v47 = [NSNumber numberWithUnsignedInt:*(v93 + 6)];
  v48 = [NSNumber numberWithDouble:v44 * 1000000000.0];
  v49 = [NSNumber numberWithUnsignedInt:*(v84 + 6)];
  v50 = [NSNumber numberWithDouble:((v40 - ri_instructions) / 0xF4240)];
  BYTE2(v61) = recognized;
  LOWORD(v61) = __PAIR16__(disambiguationUsed, personalizationUsed);
  LOWORD(v60) = __PAIR16__(concatenationEnabled, enabled);
  [ESSelfHelper logRequestEndedOrFailedOrCancelledWithError:"logRequestEndedOrFailedOrCancelledWithError:recognizerComponents:averageActiveTokensPerFrame:languageModelInterpolationWeights:signalToNoiseRatioInDecibels:recognitionDurationInSec:audioDurationMs:eagerUsed:utteranceDetectionEnabled:utteranceConcatenationEnabled:cpuRealTimeFactor:numLmeDataStreams:phoneticMatchDecoderName:pauseDurations:itnDurationInNs:isEmojiPersonalizationUsed:isEmojiDisambiguationUsed:isEmojiExpectedButNotRecognized:recognizedEmojis:totalITNDurationInNs:totalITNRuns:totalSecondaryPassDurationInNs:totalSecondaryPasses:cpuInstructionsInMillionsPerSecond:aneUsed:" recognizerComponents:errorCopy averageActiveTokensPerFrame:componentsCopy languageModelInterpolationWeights:frameCopy signalToNoiseRatioInDecibels:weightsCopy recognitionDurationInSec:decibelsCopy audioDurationMs:secCopy eagerUsed:msCopy utteranceDetectionEnabled:usedCopy utteranceConcatenationEnabled:v60 cpuRealTimeFactor:factorCopy numLmeDataStreams:streamsCopy phoneticMatchDecoderName:nameCopy pauseDurations:durationsCopy itnDurationInNs:nsCopy isEmojiPersonalizationUsed:v61 isEmojiDisambiguationUsed:emojisCopy isEmojiExpectedButNotRecognized:v46 recognizedEmojis:v47 totalITNDurationInNs:v48 totalITNRuns:v49 totalSecondaryPassDurationInNs:v50 totalSecondaryPasses:aneUsedCopy cpuInstructionsInMillionsPerSecond:? aneUsed:?];

  if (selfCopy->_signpostHelper)
  {
    v51 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v52 = AFSiriLogContextSpeech;
    v53 = v52;
    if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
    {
      v54 = mach_continuous_time();
      [decibelsCopy floatValue];
      v56 = v55;
      unsignedLongLongValue = [msCopy unsignedLongLongValue];
      unsignedLongLongValue2 = [secCopy unsignedLongLongValue];
      [factorCopy floatValue];
      *buf = 134350080;
      v101 = v54;
      v102 = 2048;
      v103 = v56;
      v104 = 2048;
      v105 = unsignedLongLongValue;
      v106 = 2048;
      v107 = 1000 * unsignedLongLongValue2;
      v108 = 2048;
      v109 = v59;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_EVENT, v51, "ES: Engine Complete", "%{public, signpost.description:event_time}llu SNR = %f, AudioDurationMs = %llu, RecognitionDurationMs = %llu, CPU RTF = %f", buf, 0x34u);
    }
  }

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v96, 8);
}

- (void)logFinalResultGeneratedWithEARPackage:(id)package firstSeenPartialResultTokens:(id)tokens partialResultOffset:(unint64_t)offset timeInTicks:(id)ticks
{
  packageCopy = package;
  tokensCopy = tokens;
  ticksCopy = ticks;
  recognition = [packageCopy recognition];
  oneBest = [recognition oneBest];
  firstObject = [oneBest firstObject];
  [firstObject start];
  v16 = v15;

  v59 = [(ESProfiler *)self timestampInTicksForAudioProcessed:0.0];
  v58 = [(ESProfiler *)self timestampInTicksForAudioProcessed:v16];
  v60 = [(ESProfiler *)self timestampInTicksForAudioProcessed:v16 + 1.0];
  v56 = packageCopy;
  preITNRecognition = [packageCopy preITNRecognition];
  oneBest2 = [preITNRecognition oneBest];
  v55 = tokensCopy;
  v19 = [CESRUtilities alignedPartialResultIndicesForTokens:oneBest2 firstSeenPartialResultTokens:tokensCopy];

  v20 = +[NSMutableArray array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v62;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v62 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v61 + 1) + 8 * i);
        if ([v26 isEqualToNumber:&off_100058508])
        {
          [v20 addObject:v26];
        }

        else
        {
          v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v26 unsignedIntegerValue] + offset);
          [v20 addObject:v27];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v23);
  }

  [(ESSelfHelper *)self->_selfHelper logFinalResultGeneratedWithEARPackage:packageCopy correctAlignedPartialResultIndexList:v20];
  v28 = v58;
  if (v58)
  {
    [(ESSelfHelper *)self->_selfHelper logLeadingSilenceProcessedWithTimestampInTicks:v58];
  }

  v29 = ticksCopy;
  v30 = v60;
  if (v60)
  {
    [(ESSelfHelper *)self->_selfHelper logPostSpeechStartOneSecondAudioProcessedWithTimestampInTicks:v60];
  }

  if (self->_signpostHelper)
  {
    v31 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v32 = earPackageResultCandidateId();
    v33 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v34 = AFSiriLogContextSpeech;
    v35 = v34;
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      recognition2 = [v56 recognition];
      oneBest3 = [recognition2 oneBest];
      v36 = [CESRUtilities earTokensToString:?];
      uTF8String = [v36 UTF8String];
      isFinal = [v56 isFinal];
      firstResultAfterResume = [v56 firstResultAfterResume];
      isFinal2 = [v56 isFinal];
      unsignedLongValue = -1;
      if ((isFinal2 & 1) == 0 && v32)
      {
        unsignedLongValue = [v32 unsignedLongValue];
      }

      *buf = 134350082;
      v66 = v31;
      v67 = 2080;
      v68 = uTF8String;
      v69 = 1024;
      v70 = isFinal;
      v71 = 1024;
      v72 = firstResultAfterResume;
      v73 = 2048;
      v74 = unsignedLongValue;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_EVENT, v33, "ES: Final Recognition", "%{public, signpost.description:event_time}llu OneBest=%s, isFinal=%u, isAfterResume=%u, rcId=%ld", buf, 0x2Cu);
    }

    v28 = v58;
    v30 = v60;
  }

  if (v28)
  {
    v39 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v59 unsignedLongLongValue]);
    v40 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v28 unsignedLongLongValue]);
    v41 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v42 = AFSiriLogContextSpeech;
    v43 = v42;
    if (v41 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v44 = AFSiriLogContextSpeech;
    }

    else
    {
      if (os_signpost_enabled(v42))
      {
        *buf = 134349056;
        v66 = v39;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_BEGIN, v41, "ES: Leading Silence Process", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
      }

      v44 = AFSiriLogContextSpeech;
      if (os_signpost_enabled(v44))
      {
        *buf = 134349056;
        v66 = v40;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, v41, "ES: Leading Silence Process", "%{public, signpost.description:end_time}llu", buf, 0xCu);
      }
    }

    v30 = v60;
    if (v60)
    {
      v45 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v60 unsignedLongLongValue]);
      v46 = os_signpost_id_generate(AFSiriLogContextSpeech);
      v47 = AFSiriLogContextSpeech;
      v48 = v47;
      if (v46 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v49 = AFSiriLogContextSpeech;
      }

      else
      {
        if (os_signpost_enabled(v47))
        {
          *buf = 134349056;
          v66 = v40;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_BEGIN, v46, "ES: First Speech Second Process", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
        }

        v49 = AFSiriLogContextSpeech;
        if (os_signpost_enabled(v49))
        {
          *buf = 134349056;
          v66 = v45;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_INTERVAL_END, v46, "ES: First Speech Second Process", "%{public, signpost.description:end_time}llu", buf, 0xCu);
        }

        v29 = ticksCopy;
      }

      v30 = v60;
    }
  }
}

- (void)logPackageGeneratedAndRecognitionResultTier1WithEARPackage:(id)package loggableSharedUserId:(id)id timeInTicks:(id)ticks
{
  packageCopy = package;
  ticksCopy = ticks;
  [(ESSelfHelper *)self->_selfHelper logPackageGeneratedAndRecognitionResultTier1WithEARPackage:packageCopy loggableSharedUserId:id];
  if (self->_signpostHelper)
  {
    v10 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v11 = earPackageResultCandidateId();
    v12 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v13 = AFSiriLogContextSpeech;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      recognition = [packageCopy recognition];
      oneBest = [recognition oneBest];
      v15 = [CESRUtilities earTokensToString:?];
      uTF8String = [v15 UTF8String];
      isFinal = [packageCopy isFinal];
      firstResultAfterResume = [packageCopy firstResultAfterResume];
      isFinal2 = [packageCopy isFinal];
      unsignedLongValue = -1;
      if ((isFinal2 & 1) == 0 && v11)
      {
        unsignedLongValue = [v11 unsignedLongValue];
      }

      *buf = 134350082;
      v24 = v10;
      v25 = 2080;
      v26 = uTF8String;
      v27 = 1024;
      v28 = isFinal;
      v29 = 1024;
      v30 = firstResultAfterResume;
      v31 = 2048;
      v32 = unsignedLongValue;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v12, "ES: Package Recognition", "%{public, signpost.description:event_time}lluOneBest=%s, isFinal=%u, isAfterResume=%u, rcId=%ld", buf, 0x2Cu);
    }
  }
}

- (void)logPartialResultGenerated:(id)generated ofSize:(id)size timeInTicks:(id)ticks
{
  generatedCopy = generated;
  sizeCopy = size;
  ticksCopy = ticks;
  [(ESSelfHelper *)self->_selfHelper logPartialResultGenerated];
  if (self->_signpostHelper)
  {
    v11 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v12 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v13 = AFSiriLogContextSpeech;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v15 = 134349570;
      v16 = v11;
      v17 = 2080;
      uTF8String = [generatedCopy UTF8String];
      v19 = 1024;
      unsignedIntValue = [sizeCopy unsignedIntValue];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v12, "ES: Partial Recognition", "%{public, signpost.description:event_time}lluWords=%s, WordCount=%u", &v15, 0x1Cu);
    }
  }
}

- (void)logRequestStartedOrChangedWithTask:(id)task modelLocale:(id)locale modelVersion:(id)version isHighQualityAsset:(id)asset hammerVersion:(id)hammerVersion geoLanguageModelRegion:(id)region geoLanguageModelLoaded:(BOOL)loaded speechProfileAgeInSec:(id)self0 dictationUIInteractionId:(id)self1 portraitExperimentVariantName:(id)self2 applicationName:(id)self3 powerLogEvent:(id)self4
{
  nameCopy = name;
  idCopy = id;
  secCopy = sec;
  regionCopy = region;
  hammerVersionCopy = hammerVersion;
  assetCopy = asset;
  versionCopy = version;
  localeCopy = locale;
  taskCopy = task;
  v29 = [(ESProfiler *)self powerLogEventDictionaryWithPowerLogEvent:event language:localeCopy modelVersion:versionCopy applicationName:applicationName];
  [CESRUtilities logToPowerLogForEventCategory:@"ESConnection" eventDictionary:v29];

  LOBYTE(v30) = loaded;
  [(ESSelfHelper *)self->_selfHelper logRequestStartedOrChangedWithTask:taskCopy modelLocale:localeCopy modelVersion:versionCopy isHighQualityAsset:assetCopy hammerVersion:hammerVersionCopy geoLanguageModelRegion:regionCopy geoLanguageModelLoaded:v30 speechProfileAgeInSec:secCopy dictationUIInteractionId:idCopy portraitExperimentVariantName:nameCopy];
}

- (void)logFrameProcessingReadyWithTimeInTicks:(id)ticks
{
  if (self->_signpostHelper)
  {
    v4 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticks unsignedLongLongValue]);
    v5 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v6 = AFSiriLogContextSpeech;
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v8 = 134349056;
      v9 = v4;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, v5, "ES: Frame Processing Ready", "%{public, signpost.description:event_time}llu", &v8, 0xCu);
    }
  }

  [(ESSelfHelper *)self->_selfHelper logFrameProcessingReady];
}

- (void)logFinalAudioPacketContainingSpeechReceivedWithTimeInTicks:(id)ticks loggableSharedUserId:(id)id earPackage:(id)package
{
  ticksCopy = ticks;
  [(ESSelfHelper *)self->_selfHelper logFinalAudioPacketContainingSpeechReceivedWithTimeInTicks:ticksCopy loggableSharedUserId:id earPackage:package];
  if (self->_signpostHelper)
  {
    v9 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v10 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v11 = AFSiriLogContextSpeech;
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v13 = 134349056;
      v14 = v9;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, v10, "ES: Last Speech Audio Packet", "%{public, signpost.description:event_time}llu", &v13, 0xCu);
    }
  }
}

- (void)logFirstAudioPacketProcessedWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  [(ESSelfHelper *)self->_selfHelper logFirstAudioPacketProcessed];
  if (self->_signpostHelper)
  {
    v5 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v6 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v7 = AFSiriLogContextSpeech;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = 134349056;
      v10 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, v6, "ES: First Audio Packet Process", "%{public, signpost.description:event_time}llu", &v9, 0xCu);
    }
  }
}

- (void)logAudioPacketArrivalEndedWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  [(ESSelfHelper *)self->_selfHelper logAudioPacketArrivalEndedWithTimeInTicks:ticksCopy];
  if (self->_signpostHelper)
  {
    v5 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v6 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v7 = AFSiriLogContextSpeech;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = 134349056;
      v10 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, v6, "ES: Last Audio Packet", "%{public, signpost.description:event_time}llu", &v9, 0xCu);
    }
  }
}

- (void)logAudioPacketArrivalStartedOrChangedWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  [(ESSelfHelper *)self->_selfHelper logAudioPacketArrivalStartedOrChangedWithTimeInTicks:ticksCopy];
  if (self->_signpostHelper)
  {
    v5 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v6 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v7 = AFSiriLogContextSpeech;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = 134349056;
      v10 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, v6, "ES: First Audio Packet", "%{public, signpost.description:event_time}llu", &v9, 0xCu);
    }
  }
}

- (void)logAotLmeEndedWithTimeInTicks:(id)ticks
{
  if (self->_signpostHelper)
  {
    v4 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticks unsignedLongLongValue]);
    v5 = [(CESRSignpostHelper *)self->_signpostHelper fetchAndDestroySignpostIdForEventName:@"ES: AOT Profile Load"];
    v6 = AFSiriLogContextSpeech;
    v7 = v6;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v8 = 134349056;
      v9 = v4;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v5, "ES: AOT Profile Load", "%{public, signpost.description:end_time}llu", &v8, 0xCu);
    }
  }
}

- (void)logAotLmeStartedOrChangedWithTimeInTicks:(id)ticks
{
  if (self->_signpostHelper)
  {
    v4 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticks unsignedLongLongValue]);
    v5 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v6 = AFSiriLogContextSpeech;
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v8 = 134349056;
      v9 = v4;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ES: AOT Profile Load", "%{public, signpost.description:begin_time}llu", &v8, 0xCu);
    }

    [(CESRSignpostHelper *)self->_signpostHelper storeSignpostId:v5 forEventName:@"ES: AOT Profile Load"];
  }
}

- (void)logJitLmeEndedAndEndedTier1WithDialogContext:(id)context timeInTicks:(id)ticks
{
  ticksCopy = ticks;
  [(ESSelfHelper *)self->_selfHelper logJitLmeEndedAndEndedTier1WithDialogContext:context];
  if (self->_signpostHelper)
  {
    v7 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v8 = [(CESRSignpostHelper *)self->_signpostHelper fetchAndDestroySignpostIdForEventName:@"ES: JIT Profile Build Load"];
    v9 = AFSiriLogContextSpeech;
    v10 = v9;
    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v11 = 134349056;
      v12 = v7;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v8, "ES: JIT Profile Build Load", "%{public, signpost.description:end_time}llu", &v11, 0xCu);
    }
  }
}

- (void)logJitLmeStartedOrChangedWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  [(ESSelfHelper *)self->_selfHelper logJitLmeStartedOrChangedWithTimeInTicks:ticksCopy];
  if (self->_signpostHelper)
  {
    v5 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v6 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v7 = AFSiriLogContextSpeech;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = 134349056;
      v10 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ES: JIT Profile Build Load", "%{public, signpost.description:begin_time}llu", &v9, 0xCu);
    }

    [(CESRSignpostHelper *)self->_signpostHelper storeSignpostId:v6 forEventName:@"ES: JIT Profile Build Load"];
  }
}

- (void)logActiveConfigUpdateEndedWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  [(ESSelfHelper *)self->_selfHelper logActiveConfigUpdateEnded];
  if (self->_signpostHelper)
  {
    v5 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v6 = [(CESRSignpostHelper *)self->_signpostHelper fetchAndDestroySignpostIdForEventName:@"ES: Update Active Config"];
    v7 = AFSiriLogContextSpeech;
    v8 = v7;
    if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = 134349056;
      v10 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v6, "ES: Update Active Config", "%{public, signpost.description:end_time}llu", &v9, 0xCu);
    }
  }
}

- (void)logActiveConfigUpdateStartedOrChangedWithTimeInTicks:(id)ticks
{
  ticksCopy = ticks;
  [(ESSelfHelper *)self->_selfHelper logActiveConfigUpdateStartedOrChangedWithTimeInTicks:ticksCopy];
  if (self->_signpostHelper)
  {
    v5 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v6 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v7 = AFSiriLogContextSpeech;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = 134349056;
      v10 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ES: Update Active Config", "%{public, signpost.description:begin_time}llu", &v9, 0xCu);
    }

    [(CESRSignpostHelper *)self->_signpostHelper storeSignpostId:v6 forEventName:@"ES: Update Active Config"];
  }
}

- (void)logAppleNeuralEngineModelInitializationEndedWithTimeInTicks:(id)ticks fileName:(id)name
{
  ticksCopy = ticks;
  nameCopy = name;
  [(ESSelfHelper *)self->_selfHelper logAppleNeuralEngineModelInitializationEnded];
  if (self->_signpostHelper)
  {
    v8 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v9 = [(CESRSignpostHelper *)self->_signpostHelper fetchAndDestroySignpostIdForEventName:@"ES: ANE Model Init"];
    v10 = AFSiriLogContextSpeech;
    v11 = v10;
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v12 = 134349314;
      v13 = v8;
      v14 = 2080;
      uTF8String = [nameCopy UTF8String];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v9, "ES: ANE Model Init", "%{public, signpost.description:end_time}llu FileName=%s", &v12, 0x16u);
    }
  }
}

- (void)logAppleNeuralEngineModelInitializationStartedOrChangedWithTimeInTicks:(id)ticks fileName:(id)name
{
  ticksCopy = ticks;
  nameCopy = name;
  [(ESSelfHelper *)self->_selfHelper logAppleNeuralEngineModelInitializationStartedOrChangedWithTimeInTicks:ticksCopy];
  if (self->_signpostHelper)
  {
    v8 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v9 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v10 = AFSiriLogContextSpeech;
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v12 = 134349314;
      v13 = v8;
      v14 = 2080;
      uTF8String = [nameCopy UTF8String];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ES: ANE Model Init", "%{public, signpost.description:begin_time}llu FileName=%s", &v12, 0x16u);
    }

    [(CESRSignpostHelper *)self->_signpostHelper storeSignpostId:v9 forEventName:@"ES: ANE Model Init"];
  }
}

- (void)logInitializationStartedOrChangedWithTimeInTicks:(id)ticks cachedRecognizerExisted:(BOOL)existed newRecognizerCreated:(BOOL)created
{
  createdCopy = created;
  existedCopy = existed;
  ticksCopy = ticks;
  [(ESSelfHelper *)self->_selfHelper logInitializationStartedOrChangedWithTimeInTicks:ticksCopy];
  if (self->_signpostHelper)
  {
    v9 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [ticksCopy unsignedLongLongValue]);
    v10 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v11 = AFSiriLogContextSpeech;
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v14 = 134349568;
      v15 = v9;
      v16 = 1024;
      v17 = existedCopy;
      v18 = 1024;
      v19 = createdCopy;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ES: Engine Init", "%{public, signpost.description:begin_time}llu cachedRecognizerExisted = %u, newRecognizerCreated = %u", &v14, 0x18u);
    }

    [(CESRSignpostHelper *)self->_signpostHelper storeSignpostId:v10 forEventName:@"ES: Engine Init"];
  }

  v13 = getpid();
  proc_pid_rusage(v13, 6, &self->usage_start);
}

- (void)logSpeechProfileGenerationStartedOrUpdatedEventsWithPowerLogEvent:(id)event language:(id)language
{
  v4 = [(ESProfiler *)self powerLogEventDictionaryWithPowerLogEvent:event language:language modelVersion:0 applicationName:0];
  [CESRUtilities logToPowerLogForEventCategory:@"ESConnection" eventDictionary:v4];
}

- (void)logPendingANEModelInitializationContextEvents:(id)events
{
  eventsCopy = events;
  [(ESSelfHelper *)self->_selfHelper logPendingANEModelInitializationContextEvents:eventsCopy];
  if (self->_signpostHelper)
  {
    if ([eventsCopy count] == 2)
    {
      v5 = [eventsCopy objectAtIndex:0];
      startedOrChanged = [v5 startedOrChanged];
      exists = [startedOrChanged exists];

      if (exists)
      {
        timestampInTicks = [v5 timestampInTicks];
        v9 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [timestampInTicks unsignedLongLongValue]);

        v10 = os_signpost_id_generate(AFSiriLogContextSpeech);
        v11 = AFSiriLogContextSpeech;
        v12 = v11;
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
        {
          fileName = [v5 fileName];
          v25 = 134349314;
          v26 = v9;
          v27 = 2080;
          uTF8String = [fileName UTF8String];
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ES: ANE Model Init", "%{public, signpost.description:begin_time}llu FileName=%s", &v25, 0x16u);
        }

        [(CESRSignpostHelper *)self->_signpostHelper storeSignpostId:v10 forEventName:@"ES: ANE Model Init"];
        v14 = [eventsCopy objectAtIndex:1];
        ended = [v14 ended];
        exists2 = [ended exists];

        if (exists2)
        {
          timestampInTicks2 = [v14 timestampInTicks];
          v18 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [timestampInTicks2 unsignedLongLongValue]);

          v19 = [(CESRSignpostHelper *)self->_signpostHelper fetchAndDestroySignpostIdForEventName:@"ES: ANE Model Init"];
          v20 = AFSiriLogContextSpeech;
          v21 = v20;
          if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
          {
            fileName2 = [v14 fileName];
            uTF8String2 = [fileName2 UTF8String];
            v25 = 134349314;
            v26 = v18;
            v27 = 2080;
            uTF8String = uTF8String2;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v19, "ES: ANE Model Init", "%{public, signpost.description:end_time}llu FileName=%s", &v25, 0x16u);
          }
        }
      }

      goto LABEL_16;
    }

    if ([eventsCopy count])
    {
      v24 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v5 = v24;
        v25 = 136315394;
        v26 = "[ESProfiler logPendingANEModelInitializationContextEvents:]";
        v27 = 2048;
        uTF8String = [eventsCopy count];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Unexpected pending ane model initialization event count %lu", &v25, 0x16u);
LABEL_16:
      }
    }
  }
}

- (void)logAssetsCompilationEventsWithPowerLogEvent:(id)event
{
  v3 = [(ESProfiler *)self powerLogEventDictionaryWithPowerLogEvent:event language:0 modelVersion:0 applicationName:0];
  [CESRUtilities logToPowerLogForEventCategory:@"ESConnection" eventDictionary:v3];
}

- (void)logPendingPreheatContextEvents:(id)events
{
  eventsCopy = events;
  [(ESSelfHelper *)self->_selfHelper logPendingPreheatContextEvents:eventsCopy];
  if (self->_signpostHelper)
  {
    if ([eventsCopy count] == 2)
    {
      v5 = [eventsCopy objectAtIndex:0];
      preheatContext = [v5 preheatContext];
      startedOrChanged = [preheatContext startedOrChanged];
      exists = [startedOrChanged exists];

      if (!exists)
      {
LABEL_24:

        goto LABEL_25;
      }

      timestampInTicks = [preheatContext timestampInTicks];
      v10 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [timestampInTicks unsignedLongLongValue]);

      v11 = os_signpost_id_generate(AFSiriLogContextSpeech);
      v12 = AFSiriLogContextSpeech;
      v13 = v12;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        v28 = 134349056;
        v29 = v10;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ondevice_preheat_time", "%{public, signpost.description:begin_time}llu", &v28, 0xCu);
      }

      [(CESRSignpostHelper *)self->_signpostHelper storeSignpostId:v11 forEventName:@"ondevice_preheat_time"];
      v14 = [eventsCopy objectAtIndex:1];
      preheatContext2 = [v14 preheatContext];
      ended = [preheatContext2 ended];
      if (ended)
      {
      }

      else
      {
        failed = [preheatContext2 failed];

        if (!failed)
        {
LABEL_23:

          goto LABEL_24;
        }
      }

      ended2 = [preheatContext2 ended];

      if (ended2)
      {
        ended3 = [preheatContext2 ended];
        if ([ended3 status] == 1)
        {
          v21 = @"Success";
        }

        else
        {
          v21 = @"AlreadyLoaded";
        }
      }

      else
      {
        v21 = @"Failed";
      }

      timestampInTicks2 = [preheatContext2 timestampInTicks];
      v23 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [timestampInTicks2 unsignedLongLongValue]);

      v24 = [(CESRSignpostHelper *)self->_signpostHelper fetchAndDestroySignpostIdForEventName:@"ondevice_preheat_time"];
      v25 = AFSiriLogContextSpeech;
      v26 = v25;
      if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        uTF8String = [(__CFString *)v21 UTF8String];
        v28 = 134349314;
        v29 = v23;
        v30 = 2080;
        v31 = uTF8String;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, v24, "ondevice_preheat_time", "%{public, signpost.description:end_time}llu Status=%s", &v28, 0x16u);
      }

      goto LABEL_23;
    }

    if ([eventsCopy count])
    {
      v17 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v5 = v17;
        v28 = 136315394;
        v29 = "[ESProfiler logPendingPreheatContextEvents:]";
        v30 = 2048;
        v31 = [eventsCopy count];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Unexpected pending preheat event count %lu", &v28, 0x16u);
LABEL_25:
      }
    }
  }
}

- (void)logPreheatOnlyEventsWithPowerLogEvent:(id)event language:(id)language modelVersion:(id)version
{
  v5 = [(ESProfiler *)self powerLogEventDictionaryWithPowerLogEvent:event language:language modelVersion:version applicationName:0];
  [CESRUtilities logToPowerLogForEventCategory:@"ESConnection" eventDictionary:v5];
}

- (id)powerLogEventDictionaryWithPowerLogEvent:(id)event language:(id)language modelVersion:(id)version applicationName:(id)name
{
  languageCopy = language;
  versionCopy = version;
  nameCopy = name;
  eventCopy = event;
  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = v13;
  if (eventCopy)
  {
    v15 = eventCopy;
  }

  else
  {
    v15 = @"undefined ASR event";
  }

  [v13 setObject:v15 forKeyedSubscript:CESRPowerLogEventString];

  if (languageCopy)
  {
    [v14 setObject:languageCopy forKeyedSubscript:@"Language"];
  }

  if (versionCopy)
  {
    [v14 setObject:versionCopy forKeyedSubscript:@"ModelVersion"];
  }

  if (nameCopy)
  {
    [v14 setObject:nameCopy forKeyedSubscript:@"ApplicationName"];
  }

  return v14;
}

- (id)timestampInTicksForAudioProcessed:(double)processed
{
  if ([(NSMutableArray *)self->_audioDurationProcessingTimestampInTicks count]< 2)
  {
    goto LABEL_6;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015F1C;
  block[3] = &unk_100055618;
  block[4] = self;
  if (qword_100061610 != -1)
  {
    dispatch_once(&qword_100061610, block);
  }

  v5 = vcvtad_u64_f64(processed / *&qword_100061618);
  if ([(NSMutableArray *)self->_audioDurationProcessingTimestampInTicks count]<= v5)
  {
LABEL_6:
    v7 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_audioDurationProcessingTimestampInTicks objectAtIndex:v5];
    v7 = [v6 objectAtIndex:1];
  }

  return v7;
}

- (void)setESSelfHelper:(id)helper
{
  objc_storeStrong(&self->_selfHelper, helper);
  helperCopy = helper;
  [(NSMutableArray *)self->_audioDurationProcessingTimestampInTicks removeAllObjects];
}

- (ESProfiler)initWithESSelfHelper:(id)helper signpostHelper:(id)signpostHelper
{
  helperCopy = helper;
  signpostHelperCopy = signpostHelper;
  v14.receiver = self;
  v14.super_class = ESProfiler;
  v9 = [(ESProfiler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_selfHelper, helper);
    objc_storeStrong(&v10->_signpostHelper, signpostHelper);
    v11 = objc_alloc_init(NSMutableArray);
    audioDurationProcessingTimestampInTicks = v10->_audioDurationProcessingTimestampInTicks;
    v10->_audioDurationProcessingTimestampInTicks = v11;
  }

  return v10;
}

+ (id)sharedProfiler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000161B0;
  block[3] = &unk_100055618;
  v8 = objc_alloc_init(CESRSignpostHelper);
  v2 = qword_100061608;
  v3 = v8;
  if (v2 != -1)
  {
    dispatch_once(&qword_100061608, block);
  }

  v4 = qword_100061600;
  v5 = qword_100061600;

  return v4;
}

@end