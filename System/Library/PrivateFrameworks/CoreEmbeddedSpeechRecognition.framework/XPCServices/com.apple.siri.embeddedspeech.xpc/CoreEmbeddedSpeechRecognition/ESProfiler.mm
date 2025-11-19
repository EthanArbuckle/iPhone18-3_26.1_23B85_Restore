@interface ESProfiler
+ (id)sharedProfiler;
- (ESProfiler)initWithESSelfHelper:(id)a3 signpostHelper:(id)a4;
- (id)powerLogEventDictionaryWithPowerLogEvent:(id)a3 language:(id)a4 modelVersion:(id)a5 applicationName:(id)a6;
- (id)timestampInTicksForAudioProcessed:(double)a3;
- (void)logActiveConfigUpdateEndedWithTimeInTicks:(id)a3;
- (void)logActiveConfigUpdateStartedOrChangedWithTimeInTicks:(id)a3;
- (void)logAotLmeEndedWithTimeInTicks:(id)a3;
- (void)logAotLmeStartedOrChangedWithTimeInTicks:(id)a3;
- (void)logAppleNeuralEngineModelInitializationEndedWithTimeInTicks:(id)a3 fileName:(id)a4;
- (void)logAppleNeuralEngineModelInitializationStartedOrChangedWithTimeInTicks:(id)a3 fileName:(id)a4;
- (void)logAssetsCompilationEventsWithPowerLogEvent:(id)a3;
- (void)logAudioPacketArrivalEndedWithTimeInTicks:(id)a3;
- (void)logAudioPacketArrivalStartedOrChangedWithTimeInTicks:(id)a3;
- (void)logFinalAudioPacketContainingSpeechReceivedWithTimeInTicks:(id)a3 loggableSharedUserId:(id)a4 earPackage:(id)a5;
- (void)logFinalResultGeneratedWithEARPackage:(id)a3 firstSeenPartialResultTokens:(id)a4 partialResultOffset:(unint64_t)a5 timeInTicks:(id)a6;
- (void)logFirstAudioPacketProcessedWithTimeInTicks:(id)a3;
- (void)logFrameProcessingReadyWithTimeInTicks:(id)a3;
- (void)logInitializationStartedOrChangedWithTimeInTicks:(id)a3 cachedRecognizerExisted:(BOOL)a4 newRecognizerCreated:(BOOL)a5;
- (void)logJitLmeEndedAndEndedTier1WithDialogContext:(id)a3 timeInTicks:(id)a4;
- (void)logJitLmeStartedOrChangedWithTimeInTicks:(id)a3;
- (void)logPackageGeneratedAndRecognitionResultTier1WithEARPackage:(id)a3 loggableSharedUserId:(id)a4 timeInTicks:(id)a5;
- (void)logPartialResultGenerated:(id)a3 ofSize:(id)a4 timeInTicks:(id)a5;
- (void)logPauseRecognitionWithTimeInTicks:(id)a3;
- (void)logPendingANEModelInitializationContextEvents:(id)a3;
- (void)logPendingPreheatContextEvents:(id)a3;
- (void)logPreheatOnlyEventsWithPowerLogEvent:(id)a3 language:(id)a4 modelVersion:(id)a5;
- (void)logRequestEndedOrFailedOrCancelledWithError:(id)a3 recognizerComponents:(id)a4 averageActiveTokensPerFrame:(id)a5 languageModelInterpolationWeights:(id)a6 signalToNoiseRatioInDecibels:(id)a7 recognitionDurationInSec:(id)a8 audioDurationMs:(id)a9 eagerUsed:(id)a10 utteranceDetectionEnabled:(BOOL)a11 utteranceConcatenationEnabled:(BOOL)a12 cpuRealTimeFactor:(id)a13 numLmeDataStreams:(id)a14 phoneticMatchDecoderName:(id)a15 pauseDurations:(id)a16 itnDurationInNs:(id)a17 isEmojiPersonalizationUsed:(BOOL)a18 isEmojiDisambiguationUsed:(BOOL)a19 isEmojiExpectedButNotRecognized:(BOOL)a20 recognizedEmojis:(id)a21 allItnRunIntervals:(id)a22 allSecondaryPassIntervals:(id)a23 powerLogEvent:(id)a24 aneUsed:(id)a25 language:(id)a26 modelVersion:(id)a27 applicationName:(id)a28;
- (void)logRequestStartedOrChangedWithTask:(id)a3 modelLocale:(id)a4 modelVersion:(id)a5 isHighQualityAsset:(id)a6 hammerVersion:(id)a7 geoLanguageModelRegion:(id)a8 geoLanguageModelLoaded:(BOOL)a9 speechProfileAgeInSec:(id)a10 dictationUIInteractionId:(id)a11 portraitExperimentVariantName:(id)a12 applicationName:(id)a13 powerLogEvent:(id)a14;
- (void)logResumeRecognitionWithTimeInTicks:(id)a3;
- (void)logSpeechProfileGenerationStartedOrUpdatedEventsWithPowerLogEvent:(id)a3 language:(id)a4;
- (void)logTotalAudioProcessedOfDuration:(double)a3 timeInTicks:(id)a4;
- (void)setESSelfHelper:(id)a3;
@end

@implementation ESProfiler

- (void)logResumeRecognitionWithTimeInTicks:(id)a3
{
  v3 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [a3 unsignedLongLongValue]);
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

- (void)logPauseRecognitionWithTimeInTicks:(id)a3
{
  v3 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [a3 unsignedLongLongValue]);
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

- (void)logTotalAudioProcessedOfDuration:(double)a3 timeInTicks:(id)a4
{
  v6 = a4;
  v7 = [NSNumber numberWithDouble:a3];
  v9[0] = v7;
  v9[1] = v6;
  v8 = [NSArray arrayWithObjects:v9 count:2];

  [(NSMutableArray *)self->_audioDurationProcessingTimestampInTicks addObject:v8];
}

- (void)logRequestEndedOrFailedOrCancelledWithError:(id)a3 recognizerComponents:(id)a4 averageActiveTokensPerFrame:(id)a5 languageModelInterpolationWeights:(id)a6 signalToNoiseRatioInDecibels:(id)a7 recognitionDurationInSec:(id)a8 audioDurationMs:(id)a9 eagerUsed:(id)a10 utteranceDetectionEnabled:(BOOL)a11 utteranceConcatenationEnabled:(BOOL)a12 cpuRealTimeFactor:(id)a13 numLmeDataStreams:(id)a14 phoneticMatchDecoderName:(id)a15 pauseDurations:(id)a16 itnDurationInNs:(id)a17 isEmojiPersonalizationUsed:(BOOL)a18 isEmojiDisambiguationUsed:(BOOL)a19 isEmojiExpectedButNotRecognized:(BOOL)a20 recognizedEmojis:(id)a21 allItnRunIntervals:(id)a22 allSecondaryPassIntervals:(id)a23 powerLogEvent:(id)a24 aneUsed:(id)a25 language:(id)a26 modelVersion:(id)a27 applicationName:(id)a28
{
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v68 = a6;
  v78 = a7;
  v79 = a8;
  v80 = a9;
  v69 = a10;
  v81 = a13;
  v70 = a14;
  v71 = a15;
  v72 = a16;
  v73 = a17;
  v74 = a21;
  v77 = a22;
  v76 = a23;
  v34 = a24;
  v75 = a25;
  v35 = a26;
  v36 = a27;
  v37 = a28;
  v62 = v34;
  v63 = v35;
  v64 = v36;
  v38 = [(ESProfiler *)self powerLogEventDictionaryWithPowerLogEvent:v34 language:v35 modelVersion:v36 applicationName:v37];
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
  [v77 enumerateObjectsUsingBlock:v91];
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
  v43 = self;
  v82[4] = self;
  v82[5] = &v87;
  v82[6] = &v83;
  [v76 enumerateObjectsUsingBlock:v82];
  v44 = v88[3];
  selfHelper = self->_selfHelper;
  v46 = [NSNumber numberWithDouble:v42 * 1000000000.0];
  v47 = [NSNumber numberWithUnsignedInt:*(v93 + 6)];
  v48 = [NSNumber numberWithDouble:v44 * 1000000000.0];
  v49 = [NSNumber numberWithUnsignedInt:*(v84 + 6)];
  v50 = [NSNumber numberWithDouble:((v40 - ri_instructions) / 0xF4240)];
  BYTE2(v61) = a20;
  LOWORD(v61) = __PAIR16__(a19, a18);
  LOWORD(v60) = __PAIR16__(a12, a11);
  [ESSelfHelper logRequestEndedOrFailedOrCancelledWithError:"logRequestEndedOrFailedOrCancelledWithError:recognizerComponents:averageActiveTokensPerFrame:languageModelInterpolationWeights:signalToNoiseRatioInDecibels:recognitionDurationInSec:audioDurationMs:eagerUsed:utteranceDetectionEnabled:utteranceConcatenationEnabled:cpuRealTimeFactor:numLmeDataStreams:phoneticMatchDecoderName:pauseDurations:itnDurationInNs:isEmojiPersonalizationUsed:isEmojiDisambiguationUsed:isEmojiExpectedButNotRecognized:recognizedEmojis:totalITNDurationInNs:totalITNRuns:totalSecondaryPassDurationInNs:totalSecondaryPasses:cpuInstructionsInMillionsPerSecond:aneUsed:" recognizerComponents:v65 averageActiveTokensPerFrame:v66 languageModelInterpolationWeights:v67 signalToNoiseRatioInDecibels:v68 recognitionDurationInSec:v78 audioDurationMs:v79 eagerUsed:v80 utteranceDetectionEnabled:v69 utteranceConcatenationEnabled:v60 cpuRealTimeFactor:v81 numLmeDataStreams:v70 phoneticMatchDecoderName:v71 pauseDurations:v72 itnDurationInNs:v73 isEmojiPersonalizationUsed:v61 isEmojiDisambiguationUsed:v74 isEmojiExpectedButNotRecognized:v46 recognizedEmojis:v47 totalITNDurationInNs:v48 totalITNRuns:v49 totalSecondaryPassDurationInNs:v50 totalSecondaryPasses:v75 cpuInstructionsInMillionsPerSecond:? aneUsed:?];

  if (v43->_signpostHelper)
  {
    v51 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v52 = AFSiriLogContextSpeech;
    v53 = v52;
    if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
    {
      v54 = mach_continuous_time();
      [v78 floatValue];
      v56 = v55;
      v57 = [v80 unsignedLongLongValue];
      v58 = [v79 unsignedLongLongValue];
      [v81 floatValue];
      *buf = 134350080;
      v101 = v54;
      v102 = 2048;
      v103 = v56;
      v104 = 2048;
      v105 = v57;
      v106 = 2048;
      v107 = 1000 * v58;
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

- (void)logFinalResultGeneratedWithEARPackage:(id)a3 firstSeenPartialResultTokens:(id)a4 partialResultOffset:(unint64_t)a5 timeInTicks:(id)a6
{
  v10 = a3;
  v11 = a4;
  v57 = a6;
  v12 = [v10 recognition];
  v13 = [v12 oneBest];
  v14 = [v13 firstObject];
  [v14 start];
  v16 = v15;

  v59 = [(ESProfiler *)self timestampInTicksForAudioProcessed:0.0];
  v58 = [(ESProfiler *)self timestampInTicksForAudioProcessed:v16];
  v60 = [(ESProfiler *)self timestampInTicksForAudioProcessed:v16 + 1.0];
  v56 = v10;
  v17 = [v10 preITNRecognition];
  v18 = [v17 oneBest];
  v55 = v11;
  v19 = [CESRUtilities alignedPartialResultIndicesForTokens:v18 firstSeenPartialResultTokens:v11];

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
          v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v26 unsignedIntegerValue] + a5);
          [v20 addObject:v27];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v23);
  }

  [(ESSelfHelper *)self->_selfHelper logFinalResultGeneratedWithEARPackage:v10 correctAlignedPartialResultIndexList:v20];
  v28 = v58;
  if (v58)
  {
    [(ESSelfHelper *)self->_selfHelper logLeadingSilenceProcessedWithTimestampInTicks:v58];
  }

  v29 = v57;
  v30 = v60;
  if (v60)
  {
    [(ESSelfHelper *)self->_selfHelper logPostSpeechStartOneSecondAudioProcessedWithTimestampInTicks:v60];
  }

  if (self->_signpostHelper)
  {
    v31 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v57 unsignedLongLongValue]);
    v32 = earPackageResultCandidateId();
    v33 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v34 = AFSiriLogContextSpeech;
    v35 = v34;
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      v54 = [v56 recognition];
      v53 = [v54 oneBest];
      v36 = [CESRUtilities earTokensToString:?];
      v52 = [v36 UTF8String];
      v51 = [v56 isFinal];
      v50 = [v56 firstResultAfterResume];
      v37 = [v56 isFinal];
      v38 = -1;
      if ((v37 & 1) == 0 && v32)
      {
        v38 = [v32 unsignedLongValue];
      }

      *buf = 134350082;
      v66 = v31;
      v67 = 2080;
      v68 = v52;
      v69 = 1024;
      v70 = v51;
      v71 = 1024;
      v72 = v50;
      v73 = 2048;
      v74 = v38;
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

        v29 = v57;
      }

      v30 = v60;
    }
  }
}

- (void)logPackageGeneratedAndRecognitionResultTier1WithEARPackage:(id)a3 loggableSharedUserId:(id)a4 timeInTicks:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(ESSelfHelper *)self->_selfHelper logPackageGeneratedAndRecognitionResultTier1WithEARPackage:v8 loggableSharedUserId:a4];
  if (self->_signpostHelper)
  {
    v10 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v9 unsignedLongLongValue]);
    v11 = earPackageResultCandidateId();
    v12 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v13 = AFSiriLogContextSpeech;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v22 = [v8 recognition];
      v21 = [v22 oneBest];
      v15 = [CESRUtilities earTokensToString:?];
      v16 = [v15 UTF8String];
      v17 = [v8 isFinal];
      v18 = [v8 firstResultAfterResume];
      v19 = [v8 isFinal];
      v20 = -1;
      if ((v19 & 1) == 0 && v11)
      {
        v20 = [v11 unsignedLongValue];
      }

      *buf = 134350082;
      v24 = v10;
      v25 = 2080;
      v26 = v16;
      v27 = 1024;
      v28 = v17;
      v29 = 1024;
      v30 = v18;
      v31 = 2048;
      v32 = v20;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v12, "ES: Package Recognition", "%{public, signpost.description:event_time}lluOneBest=%s, isFinal=%u, isAfterResume=%u, rcId=%ld", buf, 0x2Cu);
    }
  }
}

- (void)logPartialResultGenerated:(id)a3 ofSize:(id)a4 timeInTicks:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(ESSelfHelper *)self->_selfHelper logPartialResultGenerated];
  if (self->_signpostHelper)
  {
    v11 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v10 unsignedLongLongValue]);
    v12 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v13 = AFSiriLogContextSpeech;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v15 = 134349570;
      v16 = v11;
      v17 = 2080;
      v18 = [v8 UTF8String];
      v19 = 1024;
      v20 = [v9 unsignedIntValue];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v12, "ES: Partial Recognition", "%{public, signpost.description:event_time}lluWords=%s, WordCount=%u", &v15, 0x1Cu);
    }
  }
}

- (void)logRequestStartedOrChangedWithTask:(id)a3 modelLocale:(id)a4 modelVersion:(id)a5 isHighQualityAsset:(id)a6 hammerVersion:(id)a7 geoLanguageModelRegion:(id)a8 geoLanguageModelLoaded:(BOOL)a9 speechProfileAgeInSec:(id)a10 dictationUIInteractionId:(id)a11 portraitExperimentVariantName:(id)a12 applicationName:(id)a13 powerLogEvent:(id)a14
{
  v21 = a12;
  v22 = a11;
  v23 = a10;
  v24 = a8;
  v25 = a7;
  v26 = a6;
  v27 = a5;
  v28 = a4;
  v31 = a3;
  v29 = [(ESProfiler *)self powerLogEventDictionaryWithPowerLogEvent:a14 language:v28 modelVersion:v27 applicationName:a13];
  [CESRUtilities logToPowerLogForEventCategory:@"ESConnection" eventDictionary:v29];

  LOBYTE(v30) = a9;
  [(ESSelfHelper *)self->_selfHelper logRequestStartedOrChangedWithTask:v31 modelLocale:v28 modelVersion:v27 isHighQualityAsset:v26 hammerVersion:v25 geoLanguageModelRegion:v24 geoLanguageModelLoaded:v30 speechProfileAgeInSec:v23 dictationUIInteractionId:v22 portraitExperimentVariantName:v21];
}

- (void)logFrameProcessingReadyWithTimeInTicks:(id)a3
{
  if (self->_signpostHelper)
  {
    v4 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [a3 unsignedLongLongValue]);
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

- (void)logFinalAudioPacketContainingSpeechReceivedWithTimeInTicks:(id)a3 loggableSharedUserId:(id)a4 earPackage:(id)a5
{
  v8 = a3;
  [(ESSelfHelper *)self->_selfHelper logFinalAudioPacketContainingSpeechReceivedWithTimeInTicks:v8 loggableSharedUserId:a4 earPackage:a5];
  if (self->_signpostHelper)
  {
    v9 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v8 unsignedLongLongValue]);
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

- (void)logFirstAudioPacketProcessedWithTimeInTicks:(id)a3
{
  v4 = a3;
  [(ESSelfHelper *)self->_selfHelper logFirstAudioPacketProcessed];
  if (self->_signpostHelper)
  {
    v5 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v4 unsignedLongLongValue]);
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

- (void)logAudioPacketArrivalEndedWithTimeInTicks:(id)a3
{
  v4 = a3;
  [(ESSelfHelper *)self->_selfHelper logAudioPacketArrivalEndedWithTimeInTicks:v4];
  if (self->_signpostHelper)
  {
    v5 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v4 unsignedLongLongValue]);
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

- (void)logAudioPacketArrivalStartedOrChangedWithTimeInTicks:(id)a3
{
  v4 = a3;
  [(ESSelfHelper *)self->_selfHelper logAudioPacketArrivalStartedOrChangedWithTimeInTicks:v4];
  if (self->_signpostHelper)
  {
    v5 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v4 unsignedLongLongValue]);
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

- (void)logAotLmeEndedWithTimeInTicks:(id)a3
{
  if (self->_signpostHelper)
  {
    v4 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [a3 unsignedLongLongValue]);
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

- (void)logAotLmeStartedOrChangedWithTimeInTicks:(id)a3
{
  if (self->_signpostHelper)
  {
    v4 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [a3 unsignedLongLongValue]);
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

- (void)logJitLmeEndedAndEndedTier1WithDialogContext:(id)a3 timeInTicks:(id)a4
{
  v6 = a4;
  [(ESSelfHelper *)self->_selfHelper logJitLmeEndedAndEndedTier1WithDialogContext:a3];
  if (self->_signpostHelper)
  {
    v7 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v6 unsignedLongLongValue]);
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

- (void)logJitLmeStartedOrChangedWithTimeInTicks:(id)a3
{
  v4 = a3;
  [(ESSelfHelper *)self->_selfHelper logJitLmeStartedOrChangedWithTimeInTicks:v4];
  if (self->_signpostHelper)
  {
    v5 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v4 unsignedLongLongValue]);
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

- (void)logActiveConfigUpdateEndedWithTimeInTicks:(id)a3
{
  v4 = a3;
  [(ESSelfHelper *)self->_selfHelper logActiveConfigUpdateEnded];
  if (self->_signpostHelper)
  {
    v5 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v4 unsignedLongLongValue]);
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

- (void)logActiveConfigUpdateStartedOrChangedWithTimeInTicks:(id)a3
{
  v4 = a3;
  [(ESSelfHelper *)self->_selfHelper logActiveConfigUpdateStartedOrChangedWithTimeInTicks:v4];
  if (self->_signpostHelper)
  {
    v5 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v4 unsignedLongLongValue]);
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

- (void)logAppleNeuralEngineModelInitializationEndedWithTimeInTicks:(id)a3 fileName:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ESSelfHelper *)self->_selfHelper logAppleNeuralEngineModelInitializationEnded];
  if (self->_signpostHelper)
  {
    v8 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v6 unsignedLongLongValue]);
    v9 = [(CESRSignpostHelper *)self->_signpostHelper fetchAndDestroySignpostIdForEventName:@"ES: ANE Model Init"];
    v10 = AFSiriLogContextSpeech;
    v11 = v10;
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v12 = 134349314;
      v13 = v8;
      v14 = 2080;
      v15 = [v7 UTF8String];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v9, "ES: ANE Model Init", "%{public, signpost.description:end_time}llu FileName=%s", &v12, 0x16u);
    }
  }
}

- (void)logAppleNeuralEngineModelInitializationStartedOrChangedWithTimeInTicks:(id)a3 fileName:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ESSelfHelper *)self->_selfHelper logAppleNeuralEngineModelInitializationStartedOrChangedWithTimeInTicks:v6];
  if (self->_signpostHelper)
  {
    v8 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v6 unsignedLongLongValue]);
    v9 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v10 = AFSiriLogContextSpeech;
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v12 = 134349314;
      v13 = v8;
      v14 = 2080;
      v15 = [v7 UTF8String];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ES: ANE Model Init", "%{public, signpost.description:begin_time}llu FileName=%s", &v12, 0x16u);
    }

    [(CESRSignpostHelper *)self->_signpostHelper storeSignpostId:v9 forEventName:@"ES: ANE Model Init"];
  }
}

- (void)logInitializationStartedOrChangedWithTimeInTicks:(id)a3 cachedRecognizerExisted:(BOOL)a4 newRecognizerCreated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  [(ESSelfHelper *)self->_selfHelper logInitializationStartedOrChangedWithTimeInTicks:v8];
  if (self->_signpostHelper)
  {
    v9 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v8 unsignedLongLongValue]);
    v10 = os_signpost_id_generate(AFSiriLogContextSpeech);
    v11 = AFSiriLogContextSpeech;
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v14 = 134349568;
      v15 = v9;
      v16 = 1024;
      v17 = v6;
      v18 = 1024;
      v19 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ES: Engine Init", "%{public, signpost.description:begin_time}llu cachedRecognizerExisted = %u, newRecognizerCreated = %u", &v14, 0x18u);
    }

    [(CESRSignpostHelper *)self->_signpostHelper storeSignpostId:v10 forEventName:@"ES: Engine Init"];
  }

  v13 = getpid();
  proc_pid_rusage(v13, 6, &self->usage_start);
}

- (void)logSpeechProfileGenerationStartedOrUpdatedEventsWithPowerLogEvent:(id)a3 language:(id)a4
{
  v4 = [(ESProfiler *)self powerLogEventDictionaryWithPowerLogEvent:a3 language:a4 modelVersion:0 applicationName:0];
  [CESRUtilities logToPowerLogForEventCategory:@"ESConnection" eventDictionary:v4];
}

- (void)logPendingANEModelInitializationContextEvents:(id)a3
{
  v4 = a3;
  [(ESSelfHelper *)self->_selfHelper logPendingANEModelInitializationContextEvents:v4];
  if (self->_signpostHelper)
  {
    if ([v4 count] == 2)
    {
      v5 = [v4 objectAtIndex:0];
      v6 = [v5 startedOrChanged];
      v7 = [v6 exists];

      if (v7)
      {
        v8 = [v5 timestampInTicks];
        v9 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v8 unsignedLongLongValue]);

        v10 = os_signpost_id_generate(AFSiriLogContextSpeech);
        v11 = AFSiriLogContextSpeech;
        v12 = v11;
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
        {
          v13 = [v5 fileName];
          v25 = 134349314;
          v26 = v9;
          v27 = 2080;
          v28 = [v13 UTF8String];
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ES: ANE Model Init", "%{public, signpost.description:begin_time}llu FileName=%s", &v25, 0x16u);
        }

        [(CESRSignpostHelper *)self->_signpostHelper storeSignpostId:v10 forEventName:@"ES: ANE Model Init"];
        v14 = [v4 objectAtIndex:1];
        v15 = [v14 ended];
        v16 = [v15 exists];

        if (v16)
        {
          v17 = [v14 timestampInTicks];
          v18 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v17 unsignedLongLongValue]);

          v19 = [(CESRSignpostHelper *)self->_signpostHelper fetchAndDestroySignpostIdForEventName:@"ES: ANE Model Init"];
          v20 = AFSiriLogContextSpeech;
          v21 = v20;
          if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
          {
            v22 = [v14 fileName];
            v23 = [v22 UTF8String];
            v25 = 134349314;
            v26 = v18;
            v27 = 2080;
            v28 = v23;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v19, "ES: ANE Model Init", "%{public, signpost.description:end_time}llu FileName=%s", &v25, 0x16u);
          }
        }
      }

      goto LABEL_16;
    }

    if ([v4 count])
    {
      v24 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v5 = v24;
        v25 = 136315394;
        v26 = "[ESProfiler logPendingANEModelInitializationContextEvents:]";
        v27 = 2048;
        v28 = [v4 count];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Unexpected pending ane model initialization event count %lu", &v25, 0x16u);
LABEL_16:
      }
    }
  }
}

- (void)logAssetsCompilationEventsWithPowerLogEvent:(id)a3
{
  v3 = [(ESProfiler *)self powerLogEventDictionaryWithPowerLogEvent:a3 language:0 modelVersion:0 applicationName:0];
  [CESRUtilities logToPowerLogForEventCategory:@"ESConnection" eventDictionary:v3];
}

- (void)logPendingPreheatContextEvents:(id)a3
{
  v4 = a3;
  [(ESSelfHelper *)self->_selfHelper logPendingPreheatContextEvents:v4];
  if (self->_signpostHelper)
  {
    if ([v4 count] == 2)
    {
      v5 = [v4 objectAtIndex:0];
      v6 = [v5 preheatContext];
      v7 = [v6 startedOrChanged];
      v8 = [v7 exists];

      if (!v8)
      {
LABEL_24:

        goto LABEL_25;
      }

      v9 = [v6 timestampInTicks];
      v10 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v9 unsignedLongLongValue]);

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
      v14 = [v4 objectAtIndex:1];
      v15 = [v14 preheatContext];
      v16 = [v15 ended];
      if (v16)
      {
      }

      else
      {
        v18 = [v15 failed];

        if (!v18)
        {
LABEL_23:

          goto LABEL_24;
        }
      }

      v19 = [v15 ended];

      if (v19)
      {
        v20 = [v15 ended];
        if ([v20 status] == 1)
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

      v22 = [v15 timestampInTicks];
      v23 = +[CESRUtilities machAbsoluteTimeToMachContinuousTime:](CESRUtilities, "machAbsoluteTimeToMachContinuousTime:", [v22 unsignedLongLongValue]);

      v24 = [(CESRSignpostHelper *)self->_signpostHelper fetchAndDestroySignpostIdForEventName:@"ondevice_preheat_time"];
      v25 = AFSiriLogContextSpeech;
      v26 = v25;
      if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        v27 = [(__CFString *)v21 UTF8String];
        v28 = 134349314;
        v29 = v23;
        v30 = 2080;
        v31 = v27;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, v24, "ondevice_preheat_time", "%{public, signpost.description:end_time}llu Status=%s", &v28, 0x16u);
      }

      goto LABEL_23;
    }

    if ([v4 count])
    {
      v17 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v5 = v17;
        v28 = 136315394;
        v29 = "[ESProfiler logPendingPreheatContextEvents:]";
        v30 = 2048;
        v31 = [v4 count];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Unexpected pending preheat event count %lu", &v28, 0x16u);
LABEL_25:
      }
    }
  }
}

- (void)logPreheatOnlyEventsWithPowerLogEvent:(id)a3 language:(id)a4 modelVersion:(id)a5
{
  v5 = [(ESProfiler *)self powerLogEventDictionaryWithPowerLogEvent:a3 language:a4 modelVersion:a5 applicationName:0];
  [CESRUtilities logToPowerLogForEventCategory:@"ESConnection" eventDictionary:v5];
}

- (id)powerLogEventDictionaryWithPowerLogEvent:(id)a3 language:(id)a4 modelVersion:(id)a5 applicationName:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = v13;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = @"undefined ASR event";
  }

  [v13 setObject:v15 forKeyedSubscript:CESRPowerLogEventString];

  if (v9)
  {
    [v14 setObject:v9 forKeyedSubscript:@"Language"];
  }

  if (v10)
  {
    [v14 setObject:v10 forKeyedSubscript:@"ModelVersion"];
  }

  if (v11)
  {
    [v14 setObject:v11 forKeyedSubscript:@"ApplicationName"];
  }

  return v14;
}

- (id)timestampInTicksForAudioProcessed:(double)a3
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

  v5 = vcvtad_u64_f64(a3 / *&qword_100061618);
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

- (void)setESSelfHelper:(id)a3
{
  objc_storeStrong(&self->_selfHelper, a3);
  v5 = a3;
  [(NSMutableArray *)self->_audioDurationProcessingTimestampInTicks removeAllObjects];
}

- (ESProfiler)initWithESSelfHelper:(id)a3 signpostHelper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ESProfiler;
  v9 = [(ESProfiler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_selfHelper, a3);
    objc_storeStrong(&v10->_signpostHelper, a4);
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