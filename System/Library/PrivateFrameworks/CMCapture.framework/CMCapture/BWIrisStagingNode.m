@interface BWIrisStagingNode
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)beginIrisMovieCaptureTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endIrisMovieCaptureTime;
- (BOOL)_haveEnoughVideoStagedToStartFirstIrisRecording:(CMTime *)a3 currentTime:(CMTime *)a4 emitEndTimeOut:;
- (BOOL)allInputsHaveReachedState:(int)a3;
- (BOOL)waitUntilReadyToReceiveRequestsWithTimeout:(float)a3;
- (BWIrisStagingNode)initWithNumberOfVideoInputs:(unint64_t)a3 numberOfAudioInputs:(unint64_t)a4 numberOfMetadataInputs:(unint64_t)a5 autoTrimMethod:(int)a6 vitalityScoringEnabled:(BOOL)a7 captureDeviceHasOverCaptureEnabled:(BOOL)a8 overCaptureEnabled:(BOOL)a9 depthEnabled:(BOOL)a10 videoStabilizationOverscanOverride:(float)a11 sequenceAdjusterEnabled:(BOOL)a12 visMotionMetadataPreloadingMode:(int)a13 frameReconstructionEnabled:(BOOL)a14 subjectRelightingEnabled:(BOOL)a15 intermediateJPEGCompressionQuality:(float)a16 intermediateJPEGCompressionRate:(float)a17 maxLossyCompressionLevel:(int)a18 temporaryMovieDirectoryURL:(id)a19 cameraInfoByPortType:(id)a20 smartStyleRenderingEnabled:(BOOL)a21 smartStyleReversibilityEnabled:(BOOL)a22 smartFramingEnabled:(BOOL)a23 irisRequestDelegate:(id)a24 inferenceScheduler:(id)a25;
- (CMTime)_adjustedStartTimeForTrimmedStartTime:(__int128 *)a3@<X2> ensuringAtLeast3FramesBeforeStillTime:(int)a4@<W3> ensuringFrameIsAfterTrimmedStartTime:(__int128 *)a5@<X4> butNotEarlierThanOriginalStartTime:(uint64_t *)a6@<X5> adjustedStartBufferIndexOut:(uint64_t)a7@<X8>;
- (CMTime)_earliestAllowedStillHostPTS;
- (CMTime)_emitSampleBuffer:(uint64_t)a3 forInputIndex:;
- (CMTime)_hostPTSForSampleBuffer:(uint64_t)a3@<X8>;
- (CMTime)_maxPTSForIrisRequest:(uint64_t)a3@<X8>;
- (CMTime)_mostRecentCuttingBufferPTSBeforePTS:(uint64_t *)a3@<X2> cuttingBufferIndexOut:(uint64_t)a4@<X8>;
- (char)_emitBuffersThroughPTS:(char *)result;
- (double)_prepareToEmitFramesFromStartTime:(uint64_t)a3 throughEndTime:(uint64_t)a4;
- (double)_resumeStaging;
- (float)_appliedZoomFromSampleBuffer:(uint64_t)a1;
- (int)enqueueIrisRequest:(id)a3;
- (int)openValveWithIrisRequest:(id)a3;
- (uint64_t)_adjustedStartTimeForSmartStyle:(int)a3@<W2> allowSearchBackward:(CMTime *)a4@<X3> searchEndPTS:(uint64_t *)a5@<X4> adjustedStartBufferIndexOut:(CMTime *)a6@<X8>;
- (uint64_t)_emissionStatusForSampleBuffer:(uint64_t)result;
- (uint64_t)_emitBuffersThroughPTS:(uint64_t)a3 forInputIndex:(unint64_t *)a4 inOutBufferIndex:(unint64_t)a5 bufferCount:;
- (uint64_t)_emitIrisRequestsOlderThanTime:(uint64_t)a3 withEndingVideoSampleTimingInfo:(uint64_t)a4;
- (uint64_t)_emittingInputsCount;
- (uint64_t)_feedTrimmerWithInferencesSampleBuffer:(uint64_t)result;
- (uint64_t)_flushAndSuspendStaging;
- (uint64_t)_indexOfBufferBeforeOrEqualToHostPTS:(uint64_t)a3 inputIndex:(CMTime *)a4 tolerance:;
- (uint64_t)_informDelegateOfSoonToBeEmittedIrisRequestsForTime:(uint64_t)a3;
- (uint64_t)_momentCaptureMovieRecordingInProgress;
- (uint64_t)_sbufHasSmartStyleReversibilityAttachedMedia:(uint64_t)a1;
- (uint64_t)_setupDepthMediaConfigurationForInput:(uint64_t)a3 attachedMediaKey:;
- (uint64_t)_setupDepthMediaConfigurationForOutput:(uint64_t)a3 attachedMediaKey:;
- (uint64_t)_setupSmartStyleMediaConfigurationsForInput:(uint64_t)result;
- (uint64_t)_setupSmartStyleMediaConfigurationsForOutput:(uint64_t)result;
- (uint64_t)_updateIrisInfoRequiresSRLCalculation:(CMAttachmentBearerRef)target withStillReferenceSampleBuffer:;
- (uint64_t)_updateRetainedBufferCount;
- (uint64_t)_updateSmartStyleRenderingBypassedForIrisMovieInfo:(uint64_t)a3 startBufferIndex:;
- (unint64_t)_indexOfBufferBeforeOrEqualToPTS:(id *)a3 inputIndex:(unint64_t)a4 applyFrameDropsMitigation:(BOOL)a5;
- (unint64_t)_trimQueueForInputIndex:(unint64_t)result;
- (void)_emitIrisMovieRequestWithInfo:(uint64_t)a1;
- (void)_emitIrisRequest:(uint64_t)a3 withEndingVideoSampleTimingInfo:;
- (void)_enqueueIrisRequest:(uint64_t)a1;
- (void)_feedTrimmerWithVideoSampleBuffer:(uint64_t)a1;
- (void)_fillInRefMovieStartAndTrimTimesForStillImageTimesBeforeTime:(uint64_t)a1;
- (void)_fillInStartAndTrimTimesForMasterMovieWithInfo:(uint64_t)a1;
- (void)_findAndMarkCuttingBufferForVideoSbuf:(uint64_t)a1;
- (void)_processQueuedVideoFrames;
- (void)_serviceIrisRequestsForCurrentTime:(int)a3 emitBuffers:(int)a4 ensureStillImageTimesAreStaged:;
- (void)_setupIrisAutoTrimmer;
- (void)_signalReadyToReceiveRequestsWithEarliestAllowedStillHostPTS:(uint64_t)a1;
- (void)_suspendStaging;
- (void)_tagStillImageVISKeyFrames;
- (void)closeValve;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)prepareToFinishAllEnqueuedIrisRequestsWithEndTime:(id *)a3;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setBeginIrisMovieCaptureTime:(id *)a3;
- (void)setBufferingTime:(id *)a3;
- (void)setEndIrisMovieCaptureTime:(id *)a3;
- (void)setMasterClock:(OpaqueCMClock *)a3;
- (void)setMomentCaptureMovieRecordingMasterEndTime:(id *)a3 forRequestWithSettingsID:(int64_t)a4;
- (void)setTargetFrameDuration:(id *)a3;
@end

@implementation BWIrisStagingNode

- (uint64_t)_updateRetainedBufferCount
{
  if (result)
  {
    v1 = result;
    result = [objc_msgSend(result "inputs")];
    if (result)
    {
      if (*(v1 + 140) & 1) != 0 && (*(v1 + 164))
      {
        OUTLINED_FUNCTION_44_5((v1 + 152));
        time2 = **&MEMORY[0x1E6960CC0];
        result = CMTimeCompare(&time1, &time2);
        if (result >= 1)
        {
          v2 = [OUTLINED_FUNCTION_4_3() objectAtIndexedSubscript:?];
          OUTLINED_FUNCTION_44_5((v1 + 128));
          Seconds = CMTimeGetSeconds(&time1);
          OUTLINED_FUNCTION_44_5((v1 + 152));
          v4 = ceil(Seconds / CMTimeGetSeconds(&time1)) + 1.0 + 3.0;
          v5 = (v4 + [*(v1 + 592) audioOffsetForOriginalStillImageTimeMaximumFrameLatency]);
          v6 = [*(v1 + 592) audioOffsetForOriginalStillImageTimeMaximumFrameLatency];
          v7 = ((7 - *(v1 + 648) - v6) & ~((7 - *(v1 + 648) - v6) >> 31)) + v5;
          if (*(v1 + 616))
          {
            v8 = *(v1 + 608);
            if (v8)
            {

              *(v1 + 608) = 0;
            }

            v9 = (v7 * 1.5);
            *(v1 + 608) = [[BWMotionDataTimeMachine alloc] initWithCapacity:v9 synchronizedSlaveMotionDataCachingEnabled:*(v1 + 616) == 2 cacheEntireMetadataDictionary:0];
          }

          else
          {
            v9 = 0;
          }

          if (*(v1 + 680) == 1)
          {
            [v2 setRetainedBufferCount:0];
            [v2 setDelayedBufferCount:0];
            *(v1 + 652) = v7;
          }

          else
          {
            [v2 setDelayedBufferCount:v7];
          }

          v10 = [v2 specifiedAttachedMediaKeys];
          OUTLINED_FUNCTION_43();
          result = [v11 countByEnumeratingWithState:? objects:? count:?];
          if (result)
          {
            v12 = result;
            v13 = *v20;
            do
            {
              v14 = 0;
              do
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(v19 + 8 * v14);
                v16 = [v2 mediaConfigurationForAttachedMediaKey:v15];
                [v16 setDelayedBufferCount:v7];
                if ([BWAttachedMediaKeysAvailableOnSmartStyleLearnedFramesOnly() containsObject:v15])
                {
                  [v16 setDelayedBufferCount:v7];
                }

                if ([v15 isEqualToString:0x1F21AB070])
                {
                  v17 = [v16 delayedBufferCount];
                  v18 = v9;
                  if (v17 > v9)
                  {
                    v18 = [v16 delayedBufferCount];
                  }

                  [v16 setDelayedBufferCount:v18];
                }

                ++v14;
              }

              while (v12 != v14);
              OUTLINED_FUNCTION_43();
              result = [v10 countByEnumeratingWithState:? objects:? count:?];
              v12 = result;
            }

            while (result);
          }
        }
      }
    }
  }

  return result;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWIrisStagingNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  FigSimpleMutexLock();
  [(BWIrisStagingNode *)self _setupIrisAutoTrimmer];
  FigSimpleMutexUnlock();
}

- (void)_setupIrisAutoTrimmer
{
  if (a1)
  {
    if (!*(a1 + 528))
    {
      if (*(a1 + 512) > 0 || (OUTLINED_FUNCTION_33(), v2))
      {
        *(a1 + 528) = objc_alloc_init(FigIrisAutoTrimmer);
        CMTimeMake(&time, *(a1 + 160), *(a1 + 152));
        CMTimeGetSeconds(&time);
        [OUTLINED_FUNCTION_65_2() setVideoFrameRate:?];
        OUTLINED_FUNCTION_6_3(a1 + 128);
        CMTimeGetSeconds(&time);
        [OUTLINED_FUNCTION_65_2() setBufferHistorySeconds:?];
        OUTLINED_FUNCTION_6_3(a1 + 128);
        CMTimeMultiplyByRatio(&v4, &time, 1, 2);
        v3 = OUTLINED_FUNCTION_65_2();
        time = v4;
        [v3 setMaxHoldDuration:&time];
        [OUTLINED_FUNCTION_65_2() setVitalityScoringEnabled:?];
        OUTLINED_FUNCTION_33();
        if (v2)
        {
          [*(a1 + 528) setVitalityScoringSmartCameraPipelineVersion:*(a1 + 518) | (*(a1 + 520) << 16)];
        }

        [OUTLINED_FUNCTION_65_2() startMotionProcessing];
      }
    }
  }
}

- (double)_resumeStaging
{
  if (a1)
  {
    FigSimpleMutexCheckIsLockedOnThisThread();
    *(a1 + 224) = 0;
    *(a1 + 225) = 0;
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v4, HostTimeClock);
    result = *&v4.value;
    *(a1 + 228) = v4;
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWIrisStagingNode)initWithNumberOfVideoInputs:(unint64_t)a3 numberOfAudioInputs:(unint64_t)a4 numberOfMetadataInputs:(unint64_t)a5 autoTrimMethod:(int)a6 vitalityScoringEnabled:(BOOL)a7 captureDeviceHasOverCaptureEnabled:(BOOL)a8 overCaptureEnabled:(BOOL)a9 depthEnabled:(BOOL)a10 videoStabilizationOverscanOverride:(float)a11 sequenceAdjusterEnabled:(BOOL)a12 visMotionMetadataPreloadingMode:(int)a13 frameReconstructionEnabled:(BOOL)a14 subjectRelightingEnabled:(BOOL)a15 intermediateJPEGCompressionQuality:(float)a16 intermediateJPEGCompressionRate:(float)a17 maxLossyCompressionLevel:(int)a18 temporaryMovieDirectoryURL:(id)a19 cameraInfoByPortType:(id)a20 smartStyleRenderingEnabled:(BOOL)a21 smartStyleReversibilityEnabled:(BOOL)a22 smartFramingEnabled:(BOOL)a23 irisRequestDelegate:(id)a24 inferenceScheduler:(id)a25
{
  v80 = a8;
  v25 = a4 + a3;
  v85 = a4 + a3 + a5;
  if (!v85)
  {
    v73 = MEMORY[0x1E695DF30];
    v74 = *MEMORY[0x1E695D940];
    v75 = @"Need at least 1 input";
    goto LABEL_73;
  }

  v29 = a7;
  if (a9 && !a8)
  {
    v73 = MEMORY[0x1E695DF30];
    v74 = *MEMORY[0x1E695D940];
    v75 = @"captureDeviceHasOverCaptureEnabled must be true when overCaptureEnabled is true";
LABEL_73:
    objc_exception_throw([v73 exceptionWithName:v74 reason:v75 userInfo:{0, *&a6, a7}]);
  }

  v86.receiver = self;
  v86.super_class = BWIrisStagingNode;
  v34 = [(BWNode *)&v86 init];
  v35 = v34;
  if (!v34)
  {
    return v35;
  }

  v78 = a5;
  v79 = a4;
  HIDWORD(v76) = a14;
  v36 = a10;
  [(BWNode *)v34 setSupportsConcurrentLiveInputCallbacks:1];
  *(v35 + 400) = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(v35 + 408) = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(v35 + 416) = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(v35 + 464) = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(v35 + 472) = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(v35 + 688) = a20;
  *(v35 + 624) = a24;
  v37 = MEMORY[0x1E6960C70];
  v83 = *(MEMORY[0x1E6960C70] + 16);
  *(v35 + 244) = v83;
  v82 = *v37;
  *(v35 + 228) = *v37;
  *(v35 + 834) = a21;
  LODWORD(v76) = a22;
  *(v35 + 835) = a22;
  *(v35 + 512) = a6;
  v77 = v29;
  *(v35 + 516) = v29;
  *(v35 + 812) = a15;
  *(v35 + 488) = FigSimpleMutexCreate();
  *(v35 + 496) = malloc_type_calloc(v85, 0x18uLL, 0x1000040504FFAC1uLL);
  *(v35 + 640) = a16;
  *(v35 + 644) = a17;
  *(v35 + 680) = fmaxf(a17, *(v35 + 640)) > 0.0;
  v84 = [MEMORY[0x1E695DF70] array];
  v38 = 0;
  v39 = 0;
  v81 = v25;
  do
  {
    if (v39 >= a3)
    {
      v40 = 1936684398;
    }

    else
    {
      v40 = 1986618469;
    }

    v41 = v39 < v25 && v39 < a3;
    if (v39 >= v25)
    {
      v42 = 1835365473;
    }

    else
    {
      v42 = v40;
    }

    [v84 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v42, v76)}];
    v43 = [[BWNodeInput alloc] initWithMediaType:v42 node:v35 index:v39];
    if (v41)
    {
      v44 = objc_alloc_init(BWVideoFormatRequirements);
      if (*(v35 + 680) == 1)
      {
        v45 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2248718];
        [v45 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 0, 0, a18)}];
        [(BWVideoFormatRequirements *)v44 setSupportedPixelFormats:v45];
      }

      [(BWNodeInput *)v43 setFormatRequirements:v44];

      [(BWNodeInput *)v43 setPassthroughMode:*(v35 + 680) ^ 1u];
      *(v35 + 732) = v80;
      if (v80)
      {
        *(v35 + 252) = *(v35 + 680) & a9;
        v46 = objc_alloc_init(BWNodeInputMediaConfiguration);
        [(BWNodeInputMediaConfiguration *)v46 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
        if (a9)
        {
          [(BWNodeInputMediaConfiguration *)v46 setPassthroughMode:*(v35 + 252) ^ 1u];
          [(BWNodeInput *)v43 setMediaConfiguration:v46 forAttachedMediaKey:@"SynchronizedSlaveFrame"];
          *(v35 + 736) = 1053609165;
        }

        else
        {
          [(BWNodeInputMediaConfiguration *)v46 setPassthroughMode:0];
          [(BWNodeInput *)v43 setMediaConfiguration:v46 forAttachedMediaKey:@"SynchronizedSlaveFrame"];
        }

        v36 = a10;
      }

      if (v36)
      {
        [(BWIrisStagingNode *)v35 _setupDepthMediaConfigurationForInput:v43 attachedMediaKey:@"DepthData_DX"];
        [(BWIrisStagingNode *)v35 _setupDepthMediaConfigurationForInput:v43 attachedMediaKey:@"DepthData_DY"];
      }

      *(v35 + 728) = a11;
      v25 = v81;
    }

    [v35 addInput:v43];
    v47 = [[BWNodeOutput alloc] initWithMediaType:v42 node:v35];
    if (v41)
    {
      v48 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeOutput *)v47 setFormatRequirements:v48];
      [(BWNodeOutput *)v47 setPassthroughMode:*(v35 + 680) ^ 1u];
      [(BWNodeOutput *)v47 setIndexOfInputWhichDrivesThisOutput:v39];

      if (a9)
      {
        v49 = objc_alloc_init(BWVideoFormatRequirements);
        v50 = objc_alloc_init(BWNodeOutputMediaConfiguration);
        [(BWNodeOutputMediaConfiguration *)v50 setFormatRequirements:v49];
        [(BWNodeOutputMediaConfiguration *)v50 setPassthroughMode:*(v35 + 252) ^ 1u];
        [(BWNodeOutputMediaConfiguration *)v50 setIndexOfInputWhichDrivesThisOutput:v39];
        [(BWNodeOutputMediaConfiguration *)v50 setAttachedMediaKeyOfInputWhichDrivesThisOutput:@"SynchronizedSlaveFrame"];
        if (*(v35 + 252))
        {
          v51 = @"CompressedSynchronizedSlaveFrame";
        }

        else
        {
          v51 = @"SynchronizedSlaveFrame";
        }

        v52 = v50;
        v25 = v81;
        [(BWNodeOutput *)v47 setMediaConfiguration:v52 forAttachedMediaKey:v51];
      }

      if (v36)
      {
        [(BWIrisStagingNode *)v35 _setupDepthMediaConfigurationForOutput:v47 attachedMediaKey:@"DepthData_DX"];
        [(BWIrisStagingNode *)v35 _setupDepthMediaConfigurationForOutput:v47 attachedMediaKey:@"DepthData_DY"];
      }

      if (*(v35 + 834) == 1)
      {
        [(BWIrisStagingNode *)v35 _setupSmartStyleMediaConfigurationsForInput:v43];
        [(BWIrisStagingNode *)v35 _setupSmartStyleMediaConfigurationsForOutput:v47];
      }
    }

    [v35 addOutput:v47];
    [*(v35 + 400) addObject:{objc_msgSend(MEMORY[0x1E695DF70], "array")}];
    [*(v35 + 408) addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
    v53 = *(v35 + 496) + v38;
    *v53 = v82;
    *(v53 + 16) = v83;

    ++v39;
    v38 += 24;
  }

  while (v85 != v39);
  if (v77)
  {
    *(v35 + 568) = v85;
    v54 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v35 index:*(v35 + 568)];
    v55 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v54 setFormatRequirements:v55];

    [v35 addInput:v54];
  }

  else
  {
    *(v35 + 568) = -1;
  }

  v56 = v78;
  *(v35 + 616) = a13;
  *(v35 + 576) = a25;
  *(v35 + 584) = -[BWMotionDataPreserver initWithName:]([BWMotionDataPreserver alloc], "initWithName:", [v35 description]);
  if (a12)
  {
    v57 = *(v35 + 616);
    if (v76)
    {
      v58 = BWAttachedMediaKeysAvailableOnSmartStyleLearnedFramesOnly();
    }

    else
    {
      v58 = 0;
    }

    *(v35 + 592) = [[BWIrisSequenceAdjuster alloc] initWithMediaTypes:v84 visMotionMetadataPreloadingEnabled:v57 != 0 generateIFrames:HIDWORD(v76) attachedMediaKeysToPreserve:v58];
  }

  *(v35 + 376) = a19;
  if (!a3)
  {
    *(v35 + 705) = 1;
  }

  if (!v79)
  {
    *(v35 + 704) = 1;
  }

  v59 = malloc_type_malloc(8 * v85, 0x100004000313F17uLL);
  *(v35 + 696) = v59;
  if (v25 < v85)
  {
    v60 = (v78 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v61 = vdupq_n_s64(v78 - 1);
    v62 = xmmword_1AD046360;
    v63 = v59 + 1;
    v64 = vdupq_n_s64(2uLL);
    v65 = v25;
    do
    {
      v66 = vmovn_s64(vcgeq_u64(v61, v62));
      if (v66.i8[0])
      {
        *(v63 - 1) = v65;
      }

      if (v66.i8[4])
      {
        *v63 = v65 + 1;
      }

      v62 = vaddq_s64(v62, v64);
      v63 += 2;
      v65 += 2;
      v60 -= 2;
    }

    while (v60);
    if (!a3)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v56 = 0;
  if (a3)
  {
LABEL_59:
    v67 = 0;
    do
    {
      v59[v56 + v67] = v67;
      ++v67;
    }

    while (a3 != v67);
    v56 += v67;
  }

LABEL_62:
  if (v25 > a3)
  {
    v68 = 0;
    v69 = vdupq_n_s64(v79 - 1);
    v70 = &v59[v56];
    do
    {
      v71 = vmovn_s64(vcgeq_u64(v69, vorrq_s8(vdupq_n_s64(v68), xmmword_1AD046360)));
      if (v71.i8[0])
      {
        *&v70[8 * v68] = a3 + v68;
      }

      if (v71.i8[4])
      {
        *&v70[8 * v68 + 8] = a3 + v68 + 1;
      }

      v68 += 2;
    }

    while (((v79 + 1) & 0xFFFFFFFFFFFFFFFELL) != v68);
  }

  *(v35 + 800) = [[BWLimitedGMErrorLogger alloc] initWithName:@"BWIrisStagingNode" maxLoggingCount:10];
  *(v35 + 632) = 1000;
  *(v35 + 656) = 0;
  *(v35 + 560) = 1;
  *(v35 + 836) = a23;
  *(v35 + 720) = 2;
  [v35 setSupportsLiveReconfiguration:1];
  [v35 setRequiresEndOfDataForConfigurationChanges:1];
  return v35;
}

- (void)dealloc
{
  firstEmittedPTSArray = self->_firstEmittedPTSArray;
  if (firstEmittedPTSArray)
  {
    CFRelease(firstEmittedPTSArray);
  }

  free(self->_stateMutex);
  FigSimpleMutexDestroy();

  v4 = *&self->_additionalCompressedBufferCount;
  if (v4)
  {
  }

  intermediateJPEGCompressor = self->_intermediateJPEGCompressor;
  if (intermediateJPEGCompressor)
  {
  }

  v6 = *&self->_haveSeenFirstAudioSampleBuffer;
  if (v6)
  {
    dispatch_group_leave(v6);
  }

  free(self->_cameraInfoByPortType);

  v7.receiver = self;
  v7.super_class = BWIrisStagingNode;
  [(BWNode *)&v7 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if ([a4 index] != *&self->_trimLivePhotoMovieAtWideAndSuperWideAutoSwitching)
  {
    v9 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [a4 index]);
    if ([a4 mediaType] == 1986618469)
    {
      synchronizedSlaveJPEGCompressor = self->_synchronizedSlaveJPEGCompressor;
    }

    else
    {
      synchronizedSlaveJPEGCompressor = 0;
    }

    v11 = BYTE4(self->_stagingResumedTime.epoch);
    v12 = a5;
    if (v11 == 1)
    {
      if ([a5 isEqualToString:@"SynchronizedSlaveFrame"])
      {
        v12 = @"CompressedSynchronizedSlaveFrame";
      }

      else
      {
        v12 = a5;
      }
    }

    if (![v12 isEqualToString:@"SynchronizedSlaveFrame"] || objc_msgSend(objc_msgSend(a4, "mediaConfigurationForAttachedMediaKey:", a5), "passthroughMode"))
    {
      v13 = [v9 mediaPropertiesForAttachedMediaKey:v12];
      if (v13)
      {
        if ((synchronizedSlaveJPEGCompressor & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v13 = objc_alloc_init(BWNodeOutputMediaProperties);
        [v9 _setMediaProperties:v13 forAttachedMediaKey:v12];
        if ((synchronizedSlaveJPEGCompressor & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if (([v12 isEqualToString:@"PrimaryFormat"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", 0x1F21AAA50))
      {
        v14 = objc_alloc_init(BWVideoFormatRequirements);
        Dimensions = CMVideoFormatDescriptionGetDimensions([a3 formatDescription]);
        [(BWVideoFormatRequirements *)v14 setWidth:Dimensions.width];
        [(BWVideoFormatRequirements *)v14 setHeight:*&Dimensions >> 32];
        v16 = FigCaptureEncodedByteStreamFormatForPixelFormat([a3 pixelFormat]);
        if (v16)
        {
          v19 = v16;
          -[BWVideoFormatRequirements setSupportedPixelFormats:](v14, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1]);
        }

        if ([a3 colorSpaceProperties])
        {
          v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "colorSpaceProperties")}];
          -[BWVideoFormatRequirements setSupportedColorSpaceProperties:](v14, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1]);
        }

        v17 = [v9 mediaConfigurationForAttachedMediaKey:v12];
        [v17 setFormatRequirements:v14];
        [v17 setProvidesPixelBufferPool:0];

        return;
      }

LABEL_23:

      [(BWNodeOutputMediaProperties *)v13 setResolvedFormat:a3];
    }
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if (![a5 index])
  {
    FigSimpleMutexLock();
    [(BWIrisStagingNode *)self _setupIrisAutoTrimmer];
    if (!self->_stagingSuspended)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v9, HostTimeClock);
      *(&self->_flushAndSuspendPending + 3) = v9;
    }

    LODWORD(self->_limitedGMErrorLogger) = 0;
    FigSimpleMutexUnlock();
  }

  if ([a5 index] != *&self->_trimLivePhotoMovieAtWideAndSuperWideAutoSwitching)
  {
    v7 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [a5 index]);
    if (![v7 liveFormat])
    {
      [v7 makeConfiguredFormatLive];
    }
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  FigSimpleMutexLock();
  if ([(BWIrisStagingNode *)self allInputsHaveReachedState:0])
  {
    BYTE1(self->_subjectRelightingResult) = 1;
    if (LOBYTE(self->_droppedFramePTSs) == 1)
    {
      v71 = **&MEMORY[0x1E6960C70];
      v6 = [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{0), "lastObject"}];
      if (v6)
      {
        CMSampleBufferGetPresentationTimeStamp(&v71, v6);
        v49 = *&v71.value;
        *v50 = v71.epoch;
        [(BWIrisStagingNode *)self _serviceIrisRequestsForCurrentTime:0 emitBuffers:0 ensureStillImageTimesAreStaged:?];
      }

      v7 = [MEMORY[0x1E695DF70] array];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      valveOpenerSettingsID = self->_valveOpenerSettingsID;
      v9 = [valveOpenerSettingsID countByEnumeratingWithState:&v67 objects:v66 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v68;
        v12 = MEMORY[0x1E6960CF0];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v68 != v11)
            {
              objc_enumerationMutation(valveOpenerSettingsID);
            }

            v14 = *(*(&v67 + 1) + 8 * i);
            if (v14)
            {
              [v14 movieStartTime];
              if ((v64 & 0x100000000) != 0)
              {
                v15 = *v12;
                v16 = v12[1];
                v52 = *(v12 + 8);
                v51 = v12[3];
                *v50 = v16;
                *&v50[8] = v71;
                v60 = *&v71.timescale;
                v61 = v51;
                v49 = v15;
                v62 = v52;
                *v59 = v15;
                *&v59[16] = *v50;
                [(BWIrisStagingNode *)self _emitIrisRequest:v14 withEndingVideoSampleTimingInfo:v59];
                [v7 addObject:v14];
              }
            }

            else
            {
              v64 = 0;
              v63 = 0;
              v65 = 0;
            }
          }

          v10 = [valveOpenerSettingsID countByEnumeratingWithState:&v67 objects:v66 count:16];
        }

        while (v10);
      }

      [self->_valveOpenerSettingsID removeObjectsInArray:v7];
      if ([self->_valveOpenerSettingsID count])
      {
        [*&self->_visMotionMetadataPreloadingMode stagingNode:self valveClosedWithPendingIrisRequests:self->_valveOpenerSettingsID];
        [self->_valveOpenerSettingsID removeAllObjects];
      }
    }

    v17 = *&self->_vitalityScoringSmartCameraPipelineVersion.minor;
    if (v17)
    {
      [v17 stopMotionProcessing];

      *&self->_vitalityScoringSmartCameraPipelineVersion.minor = 0;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    spatialOverCaptureMasterMovieURL = self->_spatialOverCaptureMasterMovieURL;
    v19 = [(NSURL *)spatialOverCaptureMasterMovieURL countByEnumeratingWithState:&v55 objects:v54 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v56;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v56 != v21)
          {
            objc_enumerationMutation(spatialOverCaptureMasterMovieURL);
          }

          [*(*(&v55 + 1) + 8 * j) removeAllObjects];
        }

        v20 = [(NSURL *)spatialOverCaptureMasterMovieURL countByEnumeratingWithState:&v55 objects:v54 count:16];
      }

      while (v20);
    }

    BYTE2(self->_emissionMap) = 0;
    epoch = self->_lastReceivedVideoTime.epoch;
    if (epoch)
    {
      [epoch average];
      v25 = v24;
      [self->_lastReceivedVideoTime.epoch multiplier];
      if (v26 > 0.0)
      {
        [self->_lastReceivedVideoTime.epoch multiplier];
        v25 = v25 / v27;
      }

      if (dword_1ED844290)
      {
        LODWORD(v71.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = v71.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v30 = value;
        }

        else
        {
          v30 = value & 0xFFFFFFFE;
        }

        if (v30)
        {
          v31 = [self->_lastReceivedVideoTime.epoch description];
          v32 = 0.0;
          *v59 = 136315906;
          *&v59[4] = "[BWIrisStagingNode didReachEndOfDataForConfigurationID:input:]";
          *&v59[12] = 2048;
          *&v59[14] = self;
          *&v59[22] = 2112;
          *&v59[24] = v31;
          if (v25 > 0.0)
          {
            v32 = 1.0 / v25;
          }

          LOWORD(v60) = 2048;
          *(&v60 + 2) = v32;
          LODWORD(v43) = 42;
          v42 = v59;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      self->_lastReceivedVideoTime.epoch = 0;
    }

    BYTE5(self->_limitedGMErrorLogger) = 0;

    self->_subjectRelightingCalculator = 0;
    if (a3)
    {
      v33 = [-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](self "inputs")];
      [*&self->_additionalCompressedBufferCount prepareForVideoFormat:v33];
      [(BWIntermediateJPEGCompressor *)self->_intermediateJPEGCompressor prepareForVideoFormat:v33];
      if (([objc_msgSend(*&self->_numberOfVideoFramesReceived "preparedVideoFormat")] & 1) == 0)
      {

        *&self->_numberOfVideoFramesReceived = 0;
      }

      self->_readyToReceiveRequestsGroup = 5;
    }

    else
    {
      v34 = *&self->_additionalCompressedBufferCount;
      if (v34)
      {

        *&self->_additionalCompressedBufferCount = 0;
      }

      intermediateJPEGCompressor = self->_intermediateJPEGCompressor;
      if (intermediateJPEGCompressor)
      {

        self->_intermediateJPEGCompressor = 0;
      }

      *&self->_numberOfVideoFramesReceived = 0;
    }

    [(BWStats *)self->_valveActiveVideoFrameReceptionStats resetCurrentLoggingCounter:v42];
    BYTE1(self->_subjectRelightingResult) = 0;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v36 = [(BWNode *)self outputs];
    v37 = [(NSArray *)v36 countByEnumeratingWithState:&v45 objects:v44 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v46;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v46 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v45 + 1) + 8 * k);
          if ([v41 liveFormat])
          {
            [v41 markEndOfLiveOutputForConfigurationID:a3];
          }
        }

        v38 = [(NSArray *)v36 countByEnumeratingWithState:&v45 objects:v44 count:16];
      }

      while (v38);
    }
  }

  FigSimpleMutexUnlock();
}

- (BOOL)allInputsHaveReachedState:(int)a3
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(BWNode *)self inputs];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ((a3 != 1) == ([*(*(&v11 + 1) + 8 * v8) liveFormat] != 0))
        {
          return 0;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (CMTime)_earliestAllowedStillHostPTS
{
  if (result)
  {
    v3 = result;
    FigSimpleMutexCheckIsLockedOnThisThread();
    v4 = [v3[16].epoch objectAtIndexedSubscript:0];
    v5 = MEMORY[0x1E6960C88];
    *&a2->value = *MEMORY[0x1E6960C88];
    a2->epoch = *(v5 + 16);
    result = [v4 count];
    if (result >= v3[30].value)
    {
      -[BWIrisStagingNode _hostPTSForSampleBuffer:]([v4 objectAtIndexedSubscript:1], v3, a2);
      CMTimeMake(&rhs, a2->timescale / 1000, a2->timescale);
      v6 = *a2;
      return CMTimeAdd(a2, &v6, &rhs);
    }
  }

  else
  {
    a2->value = 0;
    *&a2->timescale = 0;
    a2->epoch = 0;
  }

  return result;
}

- (CMTime)_emitSampleBuffer:(uint64_t)a3 forInputIndex:
{
  if (result)
  {
    v5 = result;
    v39 = [-[CMTime outputs](result "outputs")];
    sampleBufferOut = 0;
    value = v5[25].value;
    if (!value)
    {
      BWCMSampleBufferCreateCopyIncludingMetadata(a2, &sampleBufferOut);
      goto LABEL_24;
    }

    [value enqueueSampleBuffer:a2 forMediaTypeWithIndex:a3];
    if (!a3)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v7 = *&v5[19].timescale;
      v8 = [v7 countByEnumeratingWithState:&v56 objects:v55 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v57;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v57 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v56 + 1) + 8 * i);
            if (v12)
            {
              [v12 audioOffset];
              if ((v53 & 0x100000000) != 0)
              {
                continue;
              }

              CMSampleBufferGetPresentationTimeStamp(&time1, a2);
              [v12 stillImageCaptureTime];
            }

            else
            {
              v52 = 0;
              v53 = 0;
              v54 = 0;
              CMSampleBufferGetPresentationTimeStamp(&time1, a2);
              memset(&time2, 0, sizeof(time2));
            }

            if (CMTimeCompare(&time1, &time2) >= 1)
            {
              memset(&time1, 0, sizeof(time1));
              v13 = v5[25].value;
              if (v12)
              {
                [v12 stillImageCaptureTime];
                if (!v13)
                {
                  continue;
                }
              }

              else
              {
                memset(v50, 0, sizeof(v50));
                if (!v13)
                {
                  continue;
                }
              }

              [v13 audioOffsetForOriginalStillImageTime:v50];
              if (time1.flags)
              {
                time2 = time1;
                [v12 setAudioOffset:&time2];
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v56 objects:v55 count:16];
        }

        while (v9);
      }
    }

LABEL_24:
    key = *off_1E798A3C8;
    v37 = *off_1E798A8F8;
    v35 = *off_1E798A908;
    v36 = *MEMORY[0x1E695E4D0];
    v14 = sampleBufferOut;
    v15 = v39;
    while (1)
    {
      v16 = v5[25].value;
      if (v16 || v14 == 0)
      {
        v14 = [v16 dequeueAndRetainAdjustedSampleBufferForMediaTypeWithIndex:a3];
        sampleBufferOut = v14;
        if (!v14)
        {
          break;
        }
      }

      if (!a3)
      {
        time1.value = 0;
        *&time1.timescale = &time1;
        time1.epoch = 0x3810000000;
        v48 = &unk_1AD138BA7;
        memset(&v49, 0, sizeof(v49));
        CMSampleBufferGetPresentationTimeStamp(&v49, v14);
        v18 = *&v5[19].timescale;
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __53__BWIrisStagingNode__emitSampleBuffer_forInputIndex___block_invoke;
        v46[3] = &unk_1E7991B20;
        v46[4] = v5;
        v46[5] = &time1;
        v46[6] = sampleBufferOut;
        [v18 enumerateObjectsUsingBlock:v46];
        v19 = MEMORY[0x1E696AD98];
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&time2, HostTimeClock);
        CMTimeConvertScale(&v45, &time2, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v21 = [v19 numberWithLongLong:v45.value];
        CMSetAttachment(sampleBufferOut, @"IrisStagingNodeEmissionTimeStamp", v21, 1u);
        AttachedMedia = BWSampleBufferGetAttachedMedia(sampleBufferOut, 0x1F21AAA50);
        if (AttachedMedia || (AttachedMedia = BWSampleBufferGetAttachedMedia(sampleBufferOut, @"SynchronizedSlaveFrame")) != 0)
        {
          CMSetAttachment(AttachedMedia, @"IrisStagingNodeEmissionTimeStamp", v21, 1u);
        }

        if (v5[34].value && BYTE5(v5[33].epoch) == 1)
        {
          if (BYTE2(v5[34].epoch) == 1)
          {
            if ([+[FigCaptureSmartStyle createFromDictionary:](FigCaptureSmartStyle createFromDictionary:{objc_msgSend(CMGetAttachment(sampleBufferOut, key, 0), "objectForKeyedSubscript:", v37)), "isIdentity"}])
            {
              v23 = *&v5[34].timescale;
              if (v23)
              {
                CMSetAttachment(sampleBufferOut, @"SubjectRelightingResult", v23, 1u);
              }

              v24 = BWSampleBufferGetAttachedMedia(sampleBufferOut, 0x1F21AB070);
              v25 = CMGetAttachment(v24, key, 0);
              if (!v25)
              {
                v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
                CMSetAttachment(v24, key, v25, 1u);
              }

              [v25 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *&v5[34].timescale != 0), v35}];
            }
          }

          else
          {
            v26 = *&v5[34].timescale;
            if (v26)
            {
              CMSetAttachment(sampleBufferOut, @"SubjectRelightingResult", v26, 1u);
            }
          }
        }

        if (BYTE3(v5[34].epoch) == 1)
        {
          if ([objc_msgSend(objc_msgSend(*&v5[19].timescale "firstObject")])
          {
            BWSynchronizeSmartStyleAttachedMediaPTS(sampleBufferOut);
          }

          else
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v27 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(0, 1);
            v28 = [v27 countByEnumeratingWithState:&v41 objects:v40 count:16];
            if (v28)
            {
              v29 = *v42;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v42 != v29)
                  {
                    objc_enumerationMutation(v27);
                  }

                  BWSampleBufferRemoveAttachedMedia(sampleBufferOut, *(*(&v41 + 1) + 8 * j));
                }

                v28 = [v27 countByEnumeratingWithState:&v41 objects:v40 count:16];
              }

              while (v28);
            }
          }
        }

        _Block_object_dispose(&time1, 8);
        v14 = sampleBufferOut;
        if (BYTE2(v5[34].epoch) == 1)
        {
          v31 = CMGetAttachment(sampleBufferOut, key, 0);
          v32 = [v31 objectForKeyedSubscript:v37];
          v14 = sampleBufferOut;
          v15 = v39;
          if (!v32)
          {
            CMSetAttachment(sampleBufferOut, @"SampleDataToBeDropped", v36, 1u);
            [v31 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21AA550];
            v14 = sampleBufferOut;
          }
        }

        else
        {
          v15 = v39;
        }
      }

      [v15 emitSampleBuffer:v14];
      v14 = 0;
      if (sampleBufferOut)
      {
        CFRelease(sampleBufferOut);
        v14 = 0;
        sampleBufferOut = 0;
      }
    }

    result = [v5[17].value setObject:a2 atIndexedSubscript:a3];
    v33 = v5[20].epoch + 24 * a3;
    if ((*(v33 + 12) & 1) == 0)
    {
      result = CMSampleBufferGetPresentationTimeStamp(&time1, a2);
      v34 = *&time1.value;
      *(v33 + 16) = time1.epoch;
      *v33 = v34;
    }
  }

  return result;
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  if ([a4 index] != *&self->_trimLivePhotoMovieAtWideAndSuperWideAutoSwitching)
  {
    v7 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [a4 index]);

    [v7 emitNodeError:a3];
  }
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  if (![a4 index])
  {
    memset(&v9[1], 0, sizeof(CMTime));
    if (a3)
    {
      [a3 pts];
    }

    v6 = *MEMORY[0x1E695E480];
    v9[0] = v9[1];
    v7 = CMTimeCopyAsDictionary(v9, v6);
    if (v7)
    {
      v8 = v7;
      [(NSMutableArray *)self->_lastEmittedBuffers addObject:v7];
      CFRelease(v8);
    }
  }
}

- (int)openValveWithIrisRequest:(id)a3
{
  FigSimpleMutexLock();
  if (LOBYTE(self->_droppedFramePTSs) == 1)
  {
    if (dword_1ED844290)
    {
      LODWORD(rhs.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_10:
    if (self->_droppedFramePTSs)
    {
      v7 = 0;
    }

    else
    {
      LODWORD(rhs.value) = 0;
      LOBYTE(type.value) = 0;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = rhs.value;
      if (os_log_type_enabled(v8, type.value))
      {
        v10 = value;
      }

      else
      {
        v10 = value & 0xFFFFFFFE;
      }

      if (v10)
      {
        LODWORD(time2.value) = 136315394;
        *(&time2.value + 4) = "[BWIrisStagingNode openValveWithIrisRequest:]";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = self;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v7 = -16959;
    }

    goto LABEL_78;
  }

  v77 = *MEMORY[0x1E6960C70];
  *&v105.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v105.epoch = v6;
  if (self->_stagingSuspended)
  {
    [a3 isMomentCaptureMovieRecording];
    v17 = [(BWIrisStagingNode *)self _resumeStaging];
    self->_flushAndSuspendPending = 1;
    if (a3)
    {
      [a3 stillImageCaptureHostTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v105 = time1;
  }

  else
  {
    [(BWIrisStagingNode *)self _earliestAllowedStillHostPTS];
  }

  if ([a3 isMomentCaptureMovieRecording])
  {
    time1 = v105;
    time2 = **&MEMORY[0x1E6960C88];
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (a3)
      {
        [a3 stillImageCaptureHostTime];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      time2 = v105;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        memset(&rhs, 0, sizeof(rhs));
        HostTimeClock = CMClockGetHostTimeClock();
        firstEmittedPTSArray = self->_firstEmittedPTSArray;
        time1 = v105;
        CMSyncConvertTime(&rhs, &time1, HostTimeClock, firstEmittedPTSArray);
        LODWORD(type.value) = 0;
        LOBYTE(v102.value) = 0;
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v14 = type.value;
        if (os_log_type_enabled(v13, v102.value))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          *&v16 = COERCE_DOUBLE([objc_msgSend(a3 "settings")]);
          if (a3)
          {
            [a3 stillImageCaptureHostTime];
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
          }

          Seconds = CMTimeGetSeconds(&time1);
          time1 = v105;
          v19 = CMTimeGetSeconds(&time1);
          if (a3)
          {
            [a3 stillImageCaptureTime];
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
          }

          v20 = CMTimeGetSeconds(&time1);
          time1 = rhs;
          v21 = CMTimeGetSeconds(&time1);
          time1 = v105;
          v22 = CMTimeGetSeconds(&time1);
          if (a3)
          {
            [a3 stillImageCaptureHostTime];
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
          }

          v23 = CMTimeGetSeconds(&time1);
          LODWORD(time2.value) = 136316930;
          *(&time2.value + 4) = "[BWIrisStagingNode openValveWithIrisRequest:]";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = self;
          HIWORD(time2.epoch) = 2048;
          v80 = *&v16;
          v81 = 2048;
          v82 = Seconds;
          v83 = 2048;
          v84 = v19;
          v85 = 2048;
          v86 = v20;
          v87 = 2048;
          v88 = v21;
          v89 = 2048;
          v90 = v22 - v23;
          LODWORD(v73) = 82;
          p_time2 = &time2;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        time1 = v105;
        time2 = rhs;
        [a3 setMomentCaptureRecordingStillImageCaptureHostTimeOverride:&time1 stillImageCaptureTimeOverride:&time2];
      }
    }
  }

  if ([a3 isMomentCaptureMovieRecording])
  {
    goto LABEL_64;
  }

  if (a3)
  {
    [a3 stillImageCaptureHostTime];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  time2 = v105;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
LABEL_64:
    memset(&v97, 0, sizeof(v97));
    CMSampleBufferGetPresentationTimeStamp(&v97, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{0), "lastObject"}]);
    if (dword_1ED844290)
    {
      LODWORD(type.value) = 0;
      LOBYTE(v102.value) = 0;
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v33 = type.value;
      if (os_log_type_enabled(v32, v102.value))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        *&v76 = COERCE_DOUBLE([objc_msgSend(a3 "settings")]);
        v41 = [a3 isMomentCaptureMovieRecording];
        v42 = @"Live Photo";
        if (v41)
        {
          v42 = @"Moment Capture Movie Recording";
        }

        v75 = v42;
        if (a3)
        {
          [a3 stillImageCaptureTime];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        v50 = CMTimeGetSeconds(&time1);
        mach_absolute_time();
        v51 = FigHostTimeToNanoseconds();
        if (a3)
        {
          [a3 stillImageCaptureHostTime];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        v52 = v51 / 1000000000.0;
        v53 = CMTimeGetSeconds(&time1);
        CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{0), "firstObject"}]);
        v54 = CMTimeGetSeconds(&time1);
        time1 = v97;
        v55 = CMTimeGetSeconds(&time1);
        v56 = 0.0;
        v57 = 0.0;
        if ([(BWIrisStagingNode *)self _emittingInputsCount]!= 1)
        {
          CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{1), "firstObject"}]);
          v57 = CMTimeGetSeconds(&time1);
        }

        v58 = v52 - v53;
        if ([(BWIrisStagingNode *)self _emittingInputsCount]!= 1)
        {
          CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{1), "lastObject"}]);
          v56 = CMTimeGetSeconds(&time1);
        }

        v59 = v58 * 1000.0;
        if (a3)
        {
          [a3 stillImageCaptureHostTime];
        }

        else
        {
          memset(&time2, 0, sizeof(time2));
        }

        rhs = v105;
        CMTimeSubtract(&time1, &time2, &rhs);
        v60 = CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136317698;
        *(&time2.value + 4) = "[BWIrisStagingNode openValveWithIrisRequest:]";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = self;
        HIWORD(time2.epoch) = 2048;
        v80 = *&v76;
        v81 = 2112;
        v82 = *&v75;
        v83 = 2048;
        v84 = v50;
        v85 = 2048;
        v86 = v59;
        v87 = 2048;
        v88 = v54;
        v89 = 2048;
        v90 = v55;
        v91 = 2048;
        v92 = v57;
        v93 = 2048;
        v94 = v56;
        v95 = 2048;
        v96 = v60 * 1000.0;
        LODWORD(v74) = 112;
        v72 = &time2;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    LOBYTE(self->_droppedFramePTSs) = 1;
    BYTE3(self->_droppedFramePTSs) = 0;
    BYTE4(self->_droppedFramePTSs) = [a3 isMomentCaptureMovieRecording];
    self->_valveDiscontinuitySearchLimit.epoch = [objc_msgSend(a3 "settings")];
    *&self->_frameGovernorReferenceTime.epoch = v77;
    *&self->_readyToEmitPTS.timescale = v6;
    *&self->_readyToEmitPTS.epoch = v77;
    *&self->_lastProcessedVideoPTS.timescale = v6;
    *&self->_lastProcessedVideoPTS.epoch = v77;
    *&self->_masterMovieStartPTS.timescale = v6;
    *&self->_trimmer = v77;
    *&self->_firstTrimStartPTS.timescale = v6;
    LODWORD(self->_irisRequestsSoonToBeEmitted) = 0;
    v61 = objc_alloc_init(BWStats);
    self->_overallVideoFrameReceptionStats = v61;
    [(BWStats *)v61 setMultiplier:1000.0];
    [(BWStats *)self->_overallVideoFrameReceptionStats setUnitDesignator:@"ms"];
    if ([a3 isMomentCaptureMovieRecording])
    {
      self->_sequenceAdjusterBackingStore = 0;
    }

    else
    {
      motionDataPreserver = self->_motionDataPreserver;
      self->_sequenceAdjusterBackingStore = motionDataPreserver;
      if (motionDataPreserver)
      {
        time2 = self->_targetFrameDuration;
        CMTimeMultiply(&time1, &time2, 5);
        CMTimeMake(&time2, 5, 1000);
        type = self->_targetFrameDuration;
        CMTimeAdd(&rhs, &type, &time2);
        CMTimeAdd(&time2, &time1, &rhs);
        rhs = v97;
        CMTimeAdd(&time1, &rhs, &time2);
        *&self->_valveOpen = time1;
LABEL_112:

        self->_masterMovieURL = 0;
        if ([a3 isMomentCaptureMovieRecording])
        {
          self->_temporaryMovieDirectoryURL = [objc_msgSend(a3 "settings")];
          self->_masterMovieURL = [objc_msgSend(a3 "settings")];
        }

        else
        {
          if (self->_masterMovieStartPTS.epoch)
          {
            v64 = [self->_masterMovieStartPTS.epoch URLByAppendingPathComponent:objc_msgSend(MEMORY[0x1E696AEC0] isDirectory:{"stringWithFormat:", @"master%lld.mov", objc_msgSend(objc_msgSend(a3, "settings"), "settingsID")), 0}];
          }

          else
          {
            v63 = [objc_msgSend(a3 "settings")];
            v64 = [objc_msgSend(v63 "URLByDeletingLastPathComponent")];
          }

          v65 = v64;
          self->_temporaryMovieDirectoryURL = v65;
          [objc_msgSend(a3 "settings")];
          if ([objc_msgSend(a3 "settings")])
          {
            v66 = isn_addVariantToURL(self->_temporaryMovieDirectoryURL);
            self->_masterMovieURL = v66;
            [objc_msgSend(a3 "settings")];
          }
        }

        p_beginIrisMovieCaptureTime = &self->_beginIrisMovieCaptureTime;
        if (self->_beginIrisMovieCaptureTime.flags)
        {
          if (!a3)
          {
            goto LABEL_123;
          }

          [a3 beginTrimMasterPTS];
          if ((v78 & 1) == 0 || ([a3 beginTrimMasterPTS], *&time2.value = *&p_beginIrisMovieCaptureTime->value, time2.epoch = self->_beginIrisMovieCaptureTime.epoch, (CMTimeCompare(&time2, &time1) & 0x80000000) == 0))
          {
LABEL_127:
            p_endIrisMovieCaptureTime = &self->_endIrisMovieCaptureTime;
            [a3 stillImageCaptureTime];
            goto LABEL_128;
          }
        }

        else if (!a3)
        {
          p_beginIrisMovieCaptureTime->value = 0;
          *&self->_beginIrisMovieCaptureTime.timescale = 0;
          self->_beginIrisMovieCaptureTime.epoch = 0;
LABEL_123:
          p_endIrisMovieCaptureTime = &self->_endIrisMovieCaptureTime;
          memset(&time1, 0, sizeof(time1));
LABEL_128:
          v69 = *&p_endIrisMovieCaptureTime->value;
          time2.epoch = p_endIrisMovieCaptureTime->epoch;
          *&time2.value = v69;
          if (CMTimeCompare(&time2, &time1) <= 0)
          {
            *&p_endIrisMovieCaptureTime->value = v77;
            p_endIrisMovieCaptureTime->epoch = v6;
          }

          [BWIrisStagingNode _enqueueIrisRequest:?];
          goto LABEL_10;
        }

        [a3 beginTrimMasterPTS];
        *&p_beginIrisMovieCaptureTime->value = *&time1.value;
        self->_beginIrisMovieCaptureTime.epoch = time1.epoch;
        goto LABEL_127;
      }
    }

    *&self->_valveOpen = v77;
    *&self->_valveDiscontinuitySearchLimit.timescale = v6;
    goto LABEL_112;
  }

  memset(&rhs, 0, sizeof(rhs));
  v24 = CMClockGetHostTimeClock();
  CMClockGetTime(&rhs, v24);
  memset(&type, 0, sizeof(type));
  if (a3)
  {
    [a3 stillImageCaptureHostTime];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  time2 = rhs;
  CMTimeSubtract(&type, &time2, &time1);
  memset(&v102, 0, sizeof(v102));
  CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{0), "lastObject"}]);
  time2 = rhs;
  CMTimeSubtract(&v102, &time2, &time1);
  memset(&v101, 0, sizeof(v101));
  time1 = rhs;
  time2 = *(&self->_flushAndSuspendPending + 3);
  CMTimeSubtract(&v101, &time1, &time2);
  memset(&v100, 0, sizeof(v100));
  CMTimeMake(&v100, 500, 1000);
  if ((v101.flags & 1) != 0 && (time1 = v101, time2 = v100, CMTimeCompare(&time1, &time2) < 0))
  {
    v99 = 0;
    v98 = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v99;
    if (os_log_type_enabled(v25, v98))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      time1 = v101;
      v28 = CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 136315650;
      *(&time2.value + 4) = "[BWIrisStagingNode openValveWithIrisRequest:]";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = self;
      HIWORD(time2.epoch) = 2048;
      v80 = v28;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = -15544;
  }

  else
  {
    time1 = type;
    time2 = v102;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (v102.flags)
      {
        v99 = 0;
        v98 = OS_LOG_TYPE_DEFAULT;
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v30 = v99;
        if (os_log_type_enabled(v29, v98))
        {
          v31 = v30;
        }

        else
        {
          v31 = v30 & 0xFFFFFFFE;
        }

        if (v31)
        {
          LODWORD(time2.value) = 136315394;
          *(&time2.value + 4) = "[BWIrisStagingNode openValveWithIrisRequest:]";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = self;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v7 = -16959;
      }

      else
      {
        v7 = -16958;
      }
    }

    else
    {
      v7 = -16955;
    }
  }

  if (dword_1ED844290)
  {
    v99 = 0;
    v98 = OS_LOG_TYPE_DEFAULT;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v36 = v99;
    if (os_log_type_enabled(v35, v98))
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 & 0xFFFFFFFE;
    }

    if (v37)
    {
      *&v40 = COERCE_DOUBLE([objc_msgSend(a3 "settings")]);
      if (a3)
      {
        [a3 stillImageCaptureHostTime];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v43 = CMTimeGetSeconds(&time1);
      time1 = v105;
      v44 = CMTimeGetSeconds(&time1);
      CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{0), "firstObject"}]);
      v45 = CMTimeGetSeconds(&time1);
      CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{0), "lastObject"}]);
      v46 = CMTimeGetSeconds(&time1);
      v47 = 0.0;
      v48 = 0.0;
      if ([(BWIrisStagingNode *)self _emittingInputsCount]!= 1)
      {
        CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{1), "firstObject"}]);
        v48 = CMTimeGetSeconds(&time1);
      }

      if ([(BWIrisStagingNode *)self _emittingInputsCount]!= 1)
      {
        CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{1), "lastObject"}]);
        v47 = CMTimeGetSeconds(&time1);
      }

      mach_absolute_time();
      v49 = FigHostTimeToNanoseconds() / 1000000000.0;
      if (a3)
      {
        [a3 stillImageCaptureHostTime];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v70 = CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 136317698;
      *(&time2.value + 4) = "[BWIrisStagingNode openValveWithIrisRequest:]";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = self;
      HIWORD(time2.epoch) = 2048;
      v80 = *&v40;
      v81 = 2048;
      v82 = v43;
      v83 = 2048;
      v84 = v44;
      v85 = 2048;
      v86 = v45;
      v87 = 2048;
      v88 = v46;
      v89 = 2048;
      v90 = v48;
      v91 = 2048;
      v92 = v47;
      v93 = 2048;
      v94 = (v49 - v70) * 1000.0;
      v95 = 1024;
      LODWORD(v96) = v7;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_78:
  droppedFramePTSs_low = LOBYTE(self->_droppedFramePTSs);
  FigSimpleMutexUnlock();
  if (droppedFramePTSs_low)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (void)closeValve
{
  FigSimpleMutexLock();
  if (self->_droppedFramePTSs)
  {
    if (dword_1ED844290)
    {
      v34 = 0;
      v33 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    overallVideoFrameReceptionStats = self->_overallVideoFrameReceptionStats;
    if (overallVideoFrameReceptionStats)
    {
      [(BWStats *)overallVideoFrameReceptionStats average];
      v7 = v6;
      [(BWStats *)self->_overallVideoFrameReceptionStats multiplier];
      if (v8 > 0.0)
      {
        [(BWStats *)self->_overallVideoFrameReceptionStats multiplier];
        v7 = v7 / v9;
      }

      if (dword_1ED844290)
      {
        v34 = 0;
        v33 = OS_LOG_TYPE_DEFAULT;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v11 = v34;
        if (os_log_type_enabled(v10, v33))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (v12)
        {
          v13 = [(BWStats *)self->_overallVideoFrameReceptionStats description];
          v14 = 0.0;
          v25 = 136315906;
          v26 = "[BWIrisStagingNode closeValve]";
          v27 = 2048;
          v28 = self;
          v29 = 2112;
          v30 = v13;
          if (v7 > 0.0)
          {
            v14 = 1.0 / v7;
          }

          v31 = 2048;
          v32 = v14;
          LODWORD(v23) = 42;
          v22 = &v25;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      self->_overallVideoFrameReceptionStats = 0;
    }

    v15 = [(BWIrisStagingNode *)self _emittingInputsCount];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = 0;
      v24 = *MEMORY[0x1E6960C70];
      v19 = *(MEMORY[0x1E6960C70] + 16);
      do
      {
        -[NSMutableArray setObject:atIndexedSubscript:](self->_stagingQueues, "setObject:atIndexedSubscript:", [MEMORY[0x1E695DFB0] null], v18);
        v20 = self->_stateMutex + v17;
        *v20 = v24;
        *(v20 + 2) = v19;
        ++v18;
        v17 += 24;
      }

      while (v16 != v18);
    }

    LOBYTE(self->_droppedFramePTSs) = 0;
    v21 = MEMORY[0x1E6960C70];
    *&self->_valveOpen = *MEMORY[0x1E6960C70];
    *&self->_valveDiscontinuitySearchLimit.timescale = *(v21 + 16);
    BYTE1(self->_droppedFramePTSs) = 0;
    BYTE2(self->_droppedFramePTSs) = 0;
    BYTE5(self->_limitedGMErrorLogger) = 0;

    self->_subjectRelightingCalculator = 0;
    [(BWIrisSequenceAdjuster *)self->_sequenceAdjusterBackingStore reset];
    self->_sequenceAdjusterBackingStore = 0;
    if ([self->_valveOpenerSettingsID count])
    {
      [*&self->_visMotionMetadataPreloadingMode stagingNode:self valveClosedWithPendingIrisRequests:self->_valveOpenerSettingsID];
      [self->_valveOpenerSettingsID removeAllObjects];
    }

    if (self->_flushAndSuspendPending)
    {
      [(BWIrisStagingNode *)self _flushAndSuspendStaging];
    }
  }

  else if (dword_1ED844290)
  {
    v34 = 0;
    v33 = OS_LOG_TYPE_DEFAULT;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
}

- (int)enqueueIrisRequest:(id)a3
{
  FigSimpleMutexLock();
  if ([objc_msgSend(a3 "settings")] < self->_valveDiscontinuitySearchLimit.epoch)
  {
    if (dword_1ED844290)
    {
      v57 = 0;
      v56 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = -16954;
    goto LABEL_11;
  }

  if (LOBYTE(self->_droppedFramePTSs) != 1 || (BYTE2(self->_droppedFramePTSs) & 1) != 0 || (BYTE1(self->_droppedFramePTSs) & 1) != 0)
  {
    if (dword_1ED844290)
    {
      v57 = 0;
      v56 = OS_LOG_TYPE_DEFAULT;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = -16953;
    goto LABEL_11;
  }

  if (dword_1ED844290)
  {
    v57 = 0;
    v56 = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v41 = [(BWIrisStagingNode *)self _momentCaptureMovieRecordingInProgress];
  FigSimpleMutexCheckIsLockedOnThisThread();
  masterMovieURL = self->_masterMovieURL;
  v11 = [self->_valveOpenerSettingsID firstObject];
  v12 = [v11 semanticStyle];
  v13 = [a3 semanticStyle];
  v14 = v13;
  if (v13 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = [v13 isEqual:v12] ^ 1;
  }

  v39 = [objc_msgSend(v11 settings];
  v16 = [objc_msgSend(a3 "settings")];
  v17 = BYTE3(self->_subjectRelightingResult);
  if (([a3 isMomentCaptureMovieRecording] & 1) != 0 || v41 != objc_msgSend(a3, "isMomentCaptureMovieRecording") || objc_msgSend(a3, "spatialOverCaptureExpected") && !masterMovieURL)
  {
    if (!dword_1ED844290)
    {
LABEL_40:
      v7 = -16957;
      goto LABEL_11;
    }

    v57 = 0;
    v56 = OS_LOG_TYPE_DEFAULT;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v19 = v57;
    if (os_log_type_enabled(v18, v56))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v40 = [objc_msgSend(a3 "settings")];
      if ([a3 isMomentCaptureMovieRecording])
      {
        v21 = 84;
      }

      else
      {
        v21 = 70;
      }

      v38 = v21;
      if (v41)
      {
        v22 = 84;
      }

      else
      {
        v22 = 70;
      }

      v23 = [a3 spatialOverCaptureExpected];
      v42 = 136316674;
      v43 = "[BWIrisStagingNode enqueueIrisRequest:]";
      if (v23)
      {
        v24 = 84;
      }

      else
      {
        v24 = 70;
      }

      v44 = 2048;
      if (masterMovieURL)
      {
        v25 = 84;
      }

      else
      {
        v25 = 70;
      }

      v45 = self;
      v46 = 2048;
      v47 = v40;
      v48 = 1024;
      v49 = v38;
      v50 = 1024;
      v51 = v22;
      v52 = 1024;
      v53 = v24;
      v54 = 1024;
      v55 = v25;
      _os_log_send_and_compose_impl();
    }

LABEL_39:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_40;
  }

  if (!v15)
  {
    if ((v17 & (v39 ^ v16) & 1) == 0)
    {
      [BWIrisStagingNode _enqueueIrisRequest:?];
      v7 = 0;
      goto LABEL_11;
    }

    if (!dword_1ED844290)
    {
      goto LABEL_40;
    }

    v57 = 0;
    v56 = OS_LOG_TYPE_DEFAULT;
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v32 = v57;
    if (!os_log_type_enabled(v31, v56))
    {
      v32 &= ~1u;
    }

    if (v32)
    {
      v33 = [objc_msgSend(a3 "settings")];
      v42 = 136316418;
      v43 = "[BWIrisStagingNode enqueueIrisRequest:]";
      if (v16)
      {
        v34 = 84;
      }

      else
      {
        v34 = 70;
      }

      v44 = 2048;
      v45 = self;
      if (v39)
      {
        v35 = 84;
      }

      else
      {
        v35 = 70;
      }

      v46 = 2048;
      v47 = v33;
      v48 = 1024;
      v49 = v34;
      v50 = 1024;
      v51 = v35;
      v52 = 1024;
      v53 = 70;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_39;
  }

  if (dword_1ED844290)
  {
    v57 = 0;
    v56 = OS_LOG_TYPE_DEFAULT;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = v57;
    if (!os_log_type_enabled(v26, v56))
    {
      v27 &= ~1u;
    }

    if (v27)
    {
      v28 = [objc_msgSend(a3 "settings")];
      v42 = 136316418;
      v43 = "[BWIrisStagingNode enqueueIrisRequest:]";
      if (v14)
      {
        v29 = 84;
      }

      else
      {
        v29 = 70;
      }

      v44 = 2048;
      v45 = self;
      if (v12)
      {
        v30 = 84;
      }

      else
      {
        v30 = 70;
      }

      v46 = 2048;
      v47 = v28;
      v48 = 1024;
      v49 = v29;
      v50 = 1024;
      v51 = v30;
      v52 = 1024;
      v53 = 84;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = -15543;
LABEL_11:
  FigSimpleMutexUnlock();
  return v7;
}

- (void)prepareToFinishAllEnqueuedIrisRequestsWithEndTime:(id *)a3
{
  FigSimpleMutexLock();
  time1 = *a3;
  endIrisMovieCaptureTime = self->_endIrisMovieCaptureTime;
  if (CMTimeCompare(&time1, &endIrisMovieCaptureTime) < 0)
  {
    v5 = *&a3->var0;
    self->_endIrisMovieCaptureTime.epoch = a3->var3;
    *&self->_endIrisMovieCaptureTime.value = v5;
  }

  BYTE1(self->_droppedFramePTSs) = 1;
  FigSimpleMutexUnlock();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)beginIrisMovieCaptureTime
{
  FigSimpleMutexLock();
  *retstr = self->_beginIrisMovieCaptureTime;

  return FigSimpleMutexUnlock();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endIrisMovieCaptureTime
{
  FigSimpleMutexLock();
  *retstr = self->_endIrisMovieCaptureTime;

  return FigSimpleMutexUnlock();
}

- (void)setEndIrisMovieCaptureTime:(id *)a3
{
  FigSimpleMutexLock();
  var3 = a3->var3;
  *&self->_endIrisMovieCaptureTime.value = *&a3->var0;
  self->_endIrisMovieCaptureTime.epoch = var3;
  self->_beginIrisMovieCaptureTime = **&MEMORY[0x1E6960C70];
  [(BWIrisStagingNode *)self _suspendStaging];

  FigSimpleMutexUnlock();
}

- (void)setMomentCaptureMovieRecordingMasterEndTime:(id *)a3 forRequestWithSettingsID:(int64_t)a4
{
  FigSimpleMutexLock();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  valveOpenerSettingsID = self->_valveOpenerSettingsID;
  v8 = [valveOpenerSettingsID countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(valveOpenerSettingsID);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([objc_msgSend(v12 "settings")] == a4)
        {
          if (dword_1ED844290)
          {
            v18 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          time = *a3;
          [v12 setMomentCaptureMovieRecordingMasterEndTime:{&time, v14, v15}];
          goto LABEL_13;
        }
      }

      v9 = [valveOpenerSettingsID countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  FigSimpleMutexUnlock();
}

- (BOOL)waitUntilReadyToReceiveRequestsWithTimeout:(float)a3
{
  FigSimpleMutexLock();
  if (BYTE2(self->_emissionMap) == 1)
  {
    FigSimpleMutexUnlock();
    return 1;
  }

  else
  {
    v6 = *&self->_haveSeenFirstAudioSampleBuffer;
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = dispatch_group_create();
      *&self->_haveSeenFirstAudioSampleBuffer = v8;
      v7 = v8;
      dispatch_group_enter(v7);
    }

    FigSimpleMutexUnlock();
    if (v7)
    {
      mach_absolute_time();
      v9 = dispatch_time(0, (a3 * 1000000000.0));
      v5 = dispatch_group_wait(v7, v9) == 0;
      mach_absolute_time();

      if (dword_1ED844290)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (void)setTargetFrameDuration:(id *)a3
{
  var3 = a3->var3;
  *&self->_targetFrameDuration.value = *&a3->var0;
  self->_targetFrameDuration.epoch = var3;
  [(BWIrisStagingNode *)self _updateRetainedBufferCount];
}

- (void)setMasterClock:(OpaqueCMClock *)a3
{
  firstEmittedPTSArray = self->_firstEmittedPTSArray;
  self->_firstEmittedPTSArray = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (firstEmittedPTSArray)
  {

    CFRelease(firstEmittedPTSArray);
  }
}

- (CMTime)_hostPTSForSampleBuffer:(uint64_t)a3@<X8>
{
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x1E6960C70];
    *a3 = *MEMORY[0x1E6960C70];
    *(a3 + 16) = *(v6 + 16);
    v7 = CMGetAttachment(target, *off_1E798A420, 0);
    if (v7)
    {

      return CMTimeMakeFromDictionary(a3, v7);
    }

    else
    {
      memset(&v11, 0, sizeof(v11));
      CMSampleBufferGetPresentationTimeStamp(&v11, target);
      v8 = *(v5 + 504);
      HostTimeClock = CMClockGetHostTimeClock();
      v10 = v11;
      return CMSyncConvertTime(a3, &v10, v8, HostTimeClock);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

- (CMTime)_maxPTSForIrisRequest:(uint64_t)a3@<X8>
{
  if (result)
  {
    v5 = result;
    if ([a2 isMomentCaptureMovieRecording])
    {
      if (a2)
      {
        [a2 stillImageCaptureTime];
        [a2 momentCaptureMovieRecordingMasterEndTime];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
        memset(&v6, 0, sizeof(v6));
      }

      return CMTimeMaximum(a3, &time1, &v6);
    }

    else
    {
      if (a2)
      {
        [a2 stillImageCaptureTime];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v6 = *(v5 + 128);
      return CMTimeAdd(a3, &time1, &v6);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t __45__BWIrisStagingNode__trimQueueForInputIndex___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = [*(a1 + 32) mediaType];
  result = a2;
  if (v6 != 1835365473)
  {
    if (*(a1 + 56) - 1 <= a3)
    {
      return 0;
    }

    result = [*(a1 + 40) objectAtIndexedSubscript:a3 + 1];
  }

  if (!result)
  {
    return result;
  }

  CMSampleBufferGetPresentationTimeStamp(&time1, result);
  v8 = *(a1 + 72);
  if ((CMTimeCompare(&time1, &v8) & 0x80000000) == 0)
  {
    return 0;
  }

  if ([*(*(a1 + 48) + 408) objectAtIndexedSubscript:*(a1 + 64)] == a2)
  {
    [*(*(a1 + 48) + 408) setObject:objc_msgSend(MEMORY[0x1E695DFB0] atIndexedSubscript:{"null"), *(a1 + 64)}];
  }

  return 1;
}

uint64_t __53__BWIrisStagingNode__emitSampleBuffer_forInputIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  result = [a2 stillImageEncoderKeyFrameEmitted];
  if ((result & 1) == 0)
  {
    memset(&v13, 0, sizeof(v13));
    if (a2)
    {
      [a2 stillImageCaptureTime];
    }

    result = *(*(a1 + 32) + 600);
    if (result)
    {
      time2 = v13;
      result = [result adjustedTimeForStillImageTime:&time2];
      v13 = v12;
    }

    if (v13.flags)
    {
      memset(&v12, 0, sizeof(v12));
      result = CMTimeMake(&v12, v13.timescale / 1000, v13.timescale);
      if ((~v13.flags & 0x11) != 0)
      {
        v8 = *(*(a1 + 40) + 8);
        lhs = v13;
        v9 = v12;
        CMTimeSubtract(&time2, &lhs, &v9);
        lhs = *(v8 + 32);
        result = CMTimeCompare(&lhs, &time2);
        *a4 = result < 0;
        if ((result & 0x80000000) == 0)
        {
          CMSetAttachment(*(a1 + 48), *MEMORY[0x1E69604E0], *MEMORY[0x1E695E4D0], 1u);
          return [a2 setStillImageEncoderKeyFrameEmitted:1];
        }
      }

      else
      {
        *a4 = 1;
      }
    }
  }

  return result;
}

- (unint64_t)_indexOfBufferBeforeOrEqualToPTS:(id *)a3 inputIndex:(unint64_t)a4 applyFrameDropsMitigation:(BOOL)a5
{
  v5 = a5;
  v8 = [(NSURL *)self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:a4];
  v9 = [v8 count];
  if (!v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = v9 - 1;
  while (1)
  {
    memset(&v21, 0, sizeof(v21));
    CMSampleBufferGetPresentationTimeStamp(&v21, [v8 objectAtIndexedSubscript:v11]);
    time1 = v21;
    time2 = *a3;
    if (CMTimeCompare(&time1, &time2) > 0)
    {
      break;
    }

    if (v13 == v11)
    {
      memset(&time1, 0, sizeof(time1));
      time2 = v21;
      CMTimeConvertScale(&time1, &time2, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      memset(&time2, 0, sizeof(time2));
      time = *a3;
      CMTimeConvertScale(&time2, &time, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      time = time1;
      targetFrameDuration = time2;
      v12 = CMTimeCompare(&time, &targetFrameDuration) == 0;
    }

    if (++v11 >= v10)
    {
      if (v12)
      {
        return v13;
      }

      else
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  if (v11)
  {
    result = v11 - 1;
  }

  else
  {
    result = 0;
  }

  if (v11 && v5)
  {
    v15 = [v8 objectAtIndexedSubscript:v11 - 1];
    memset(&v21, 0, sizeof(v21));
    CMSampleBufferGetPresentationTimeStamp(&v21, v15);
    v16 = [v8 objectAtIndexedSubscript:v11];
    memset(&time1, 0, sizeof(time1));
    CMSampleBufferGetPresentationTimeStamp(&time1, v16);
    time = time1;
    targetFrameDuration = v21;
    CMTimeSubtract(&time2, &time, &targetFrameDuration);
    targetFrameDuration = self->_targetFrameDuration;
    CMTimeMultiply(&time, &targetFrameDuration, 3);
    if (CMTimeCompare(&time2, &time) <= 0)
    {
      return v11 - 1;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

- (CMTime)_adjustedStartTimeForTrimmedStartTime:(__int128 *)a3@<X2> ensuringAtLeast3FramesBeforeStillTime:(int)a4@<W3> ensuringFrameIsAfterTrimmedStartTime:(__int128 *)a5@<X4> butNotEarlierThanOriginalStartTime:(uint64_t *)a6@<X5> adjustedStartBufferIndexOut:(uint64_t)a7@<X8>
{
  if (result)
  {
    v12 = result;
    v13 = MEMORY[0x1E6960C70];
    *a7 = *MEMORY[0x1E6960C70];
    *(a7 + 16) = *(v13 + 16);
    v20 = *a3;
    v21 = *(a3 + 2);
    v14 = [(CMTime *)result _indexOfBufferBeforeOrEqualToPTS:&v20 inputIndex:0 applyFrameDropsMitigation:0];
    v20 = *a2;
    v21 = *(a2 + 2);
    v15 = [v12 _indexOfBufferBeforeOrEqualToPTS:&v20 inputIndex:0 applyFrameDropsMitigation:0];
    v20 = *a5;
    v21 = *(a5 + 2);
    v16 = [v12 _indexOfBufferBeforeOrEqualToPTS:&v20 inputIndex:0 applyFrameDropsMitigation:0];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return [BWIrisStagingNode _adjustedStartTimeForTrimmedStartTime:ensuringAtLeast3FramesBeforeStillTime:ensuringFrameIsAfterTrimmedStartTime:butNotEarlierThanOriginalStartTime:adjustedStartBufferIndexOut:];
    }

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return [BWIrisStagingNode _adjustedStartTimeForTrimmedStartTime:ensuringAtLeast3FramesBeforeStillTime:ensuringFrameIsAfterTrimmedStartTime:butNotEarlierThanOriginalStartTime:adjustedStartBufferIndexOut:];
    }

    v17 = v16;
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return [BWIrisStagingNode _adjustedStartTimeForTrimmedStartTime:ensuringAtLeast3FramesBeforeStillTime:ensuringFrameIsAfterTrimmedStartTime:butNotEarlierThanOriginalStartTime:adjustedStartBufferIndexOut:];
    }

    else
    {
      if (a4 && v15 + 1 < [objc_msgSend(v12[50] objectAtIndexedSubscript:{0), "count"}])
      {
        ++v15;
      }

      v18 = v14 - 3;
      if (v14 - 3 <= v17)
      {
        v18 = v17;
      }

      if (v14 - v15 >= 3)
      {
        v19 = v15;
      }

      else
      {
        v19 = v18;
      }

      result = CMSampleBufferGetPresentationTimeStamp(a7, [objc_msgSend(v12[50] objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", v19}]);
      if (a6)
      {
        *a6 = v19;
      }
    }
  }

  else
  {
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
  }

  return result;
}

- (CMTime)_mostRecentCuttingBufferPTSBeforePTS:(uint64_t *)a3@<X2> cuttingBufferIndexOut:(uint64_t)a4@<X8>
{
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x1E6960C70];
    *a4 = *MEMORY[0x1E6960C70];
    *(a4 + 16) = *(v7 + 16);
    v13 = *a2;
    v14 = *(a2 + 2);
    v8 = [(CMTime *)result _indexOfBufferBeforeOrEqualToPTS:&v13 inputIndex:0 applyFrameDropsMitigation:0];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return [BWIrisStagingNode _mostRecentCuttingBufferPTSBeforePTS:cuttingBufferIndexOut:];
    }

    else
    {
      v9 = v8;
      v10 = [v6[16].epoch objectAtIndexedSubscript:0];
      result = [v10 count];
      if (v9 >= result)
      {
        return [BWIrisStagingNode _mostRecentCuttingBufferPTSBeforePTS:cuttingBufferIndexOut:];
      }

      else if ((v9 & 0x8000000000000000) == 0)
      {
        while (1)
        {
          v11 = [v10 objectAtIndexedSubscript:v9];
          result = [CMGetAttachment(v11 @"BufferRequiresCuttingInLivePhotoMovie"];
          if (result)
          {
            break;
          }

          if (v9-- <= 0)
          {
            return result;
          }
        }

        result = CMSampleBufferGetPresentationTimeStamp(a4, v11);
        if (a3)
        {
          *a3 = v9;
        }
      }
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

- (uint64_t)_adjustedStartTimeForSmartStyle:(int)a3@<W2> allowSearchBackward:(CMTime *)a4@<X3> searchEndPTS:(uint64_t *)a5@<X4> adjustedStartBufferIndexOut:(CMTime *)a6@<X8>
{
  if (result)
  {
    v11 = result;
    v12 = [objc_msgSend(*(result + 400) objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", a2}];
    memset(&v33, 0, sizeof(v33));
    CMSampleBufferGetPresentationTimeStamp(&v33, v12);
    *a6 = v33;
    v13 = MEMORY[0x1E6960C70];
    *&v32.value = *MEMORY[0x1E6960C70];
    v14 = *(MEMORY[0x1E6960C70] + 16);
    v32.epoch = v14;
    *&v31.value = *&v32.value;
    v31.epoch = v14;
    result = [(BWIrisStagingNode *)v11 _sbufHasSmartStyleReversibilityAttachedMedia:v12];
    if ((result & 1) == 0)
    {
      v23 = a5;
      value = *v13;
      v15 = *(v13 + 12);
      timescale = *(v13 + 8);
      v27 = value;
      v28 = timescale;
      if (a3)
      {
        v16 = a2;
        while (v16 >= 1)
        {
          v17 = [objc_msgSend(*(v11 + 400) objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", --v16}];
          if ([(BWIrisStagingNode *)v11 _sbufHasSmartStyleReversibilityAttachedMedia:v17])
          {
            CMSampleBufferGetPresentationTimeStamp(&time, v17);
            value = time.value;
            flags = time.flags;
            timescale = time.timescale;
            epoch = time.epoch;
            goto LABEL_9;
          }
        }
      }

      v16 = 0x7FFFFFFFFFFFFFFFLL;
      epoch = v14;
      flags = v15;
LABEL_9:
      LODWORD(v20) = a2 + 1;
      if ([objc_msgSend(*(v11 + 400) objectAtIndexedSubscript:{0), "count"}] <= v20)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = epoch;
        v20 = v20;
        while (1)
        {
          v21 = [objc_msgSend(*(v11 + 400) objectAtIndexedSubscript:{0, v22), "objectAtIndexedSubscript:", v20}];
          memset(&time, 0, sizeof(time));
          CMSampleBufferGetPresentationTimeStamp(&time, v21);
          time1 = time;
          time2 = *a4;
          if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
          {
LABEL_14:
            v20 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_15;
          }

          if ([(BWIrisStagingNode *)v11 _sbufHasSmartStyleReversibilityAttachedMedia:v21])
          {
            break;
          }

          if ([objc_msgSend(*(v11 + 400) objectAtIndexedSubscript:{0), "count"}] <= ++v20)
          {
            goto LABEL_14;
          }
        }

        CMSampleBufferGetPresentationTimeStamp(&time1, v21);
        v27 = time1.value;
        v15 = time1.flags;
        v28 = time1.timescale;
        v14 = time1.epoch;
LABEL_15:
        epoch = v22;
      }

      if ((flags | v15))
      {
        time1 = v33;
        time2.value = value;
        time2.timescale = timescale;
        time2.flags = flags;
        time2.epoch = epoch;
        CMTimeSubtract(&time, &time1, &time2);
        CMTimeAbsoluteValue(&v32, &time);
        time1.value = v27;
        time1.timescale = v28;
        time1.flags = v15;
        time1.epoch = v14;
        time2 = v33;
        CMTimeSubtract(&time, &time1, &time2);
        CMTimeAbsoluteValue(&v31, &time);
        time = v32;
        time1 = v31;
        result = CMTimeCompare(&time, &time1);
        if (result <= 0)
        {
          a6->value = value;
          a6->timescale = timescale;
          a6->flags = flags;
          a6->epoch = epoch;
          if (v23)
          {
            *v23 = v16;
          }
        }

        else
        {
          a6->value = v27;
          a6->timescale = v28;
          a6->flags = v15;
          a6->epoch = v14;
          if (v23)
          {
            *v23 = v20;
          }
        }
      }

      else
      {
        return [BWIrisStagingNode _adjustedStartTimeForSmartStyle:allowSearchBackward:searchEndPTS:adjustedStartBufferIndexOut:];
      }
    }
  }

  else
  {
    a6->value = 0;
    *&a6->timescale = 0;
    a6->epoch = 0;
  }

  return result;
}

- (uint64_t)_setupDepthMediaConfigurationForInput:(uint64_t)a3 attachedMediaKey:
{
  if (result)
  {
    v5 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v5 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInputMediaConfiguration *)v5 setPassthroughMode:1];

    return [a2 setMediaConfiguration:v5 forAttachedMediaKey:a3];
  }

  return result;
}

- (uint64_t)_setupDepthMediaConfigurationForOutput:(uint64_t)a3 attachedMediaKey:
{
  if (result)
  {
    v5 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v5 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutputMediaConfiguration *)v5 setPassthroughMode:1];

    return [a2 setMediaConfiguration:v5 forAttachedMediaKey:a3];
  }

  return result;
}

- (uint64_t)_setupSmartStyleMediaConfigurationsForInput:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_1_13();
    v4 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, *(v3 + 835));
    OUTLINED_FUNCTION_43();
    result = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v6 = result;
      do
      {
        v7 = 0;
        do
        {
          OUTLINED_FUNCTION_71();
          if (!v8)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(v16 + 8 * v7);
          v10 = objc_alloc_init(BWNodeInputMediaConfiguration);
          v11 = objc_alloc_init(BWVideoFormatRequirements);
          [OUTLINED_FUNCTION_28() setFormatRequirements:?];
          [(BWNodeInputMediaConfiguration *)v10 setPassthroughMode:1];
          [a2 setMediaConfiguration:v10 forAttachedMediaKey:v9];
          ++v7;
        }

        while (v6 != v7);
        OUTLINED_FUNCTION_43();
        result = OUTLINED_FUNCTION_37(v12, v13, v14, v15);
        v6 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)_setupSmartStyleMediaConfigurationsForOutput:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_1_13();
    v4 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, *(v3 + 835));
    OUTLINED_FUNCTION_43();
    result = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v6 = result;
      do
      {
        v7 = 0;
        do
        {
          OUTLINED_FUNCTION_71();
          if (!v8)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(v16 + 8 * v7);
          v10 = objc_alloc_init(BWNodeOutputMediaConfiguration);
          v11 = objc_alloc_init(BWVideoFormatRequirements);
          [OUTLINED_FUNCTION_28() setFormatRequirements:?];
          [(BWNodeOutputMediaConfiguration *)v10 setPassthroughMode:1];
          [a2 setMediaConfiguration:v10 forAttachedMediaKey:v9];
          ++v7;
        }

        while (v6 != v7);
        OUTLINED_FUNCTION_43();
        result = OUTLINED_FUNCTION_37(v12, v13, v14, v15);
        v6 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)_serviceIrisRequestsForCurrentTime:(int)a3 emitBuffers:(int)a4 ensureStillImageTimesAreStaged:
{
  if (a1)
  {
    [*(a1 + 464) firstObject];
    v26 = **&MEMORY[0x1E6960C70];
    OUTLINED_FUNCTION_69_2();
    if ((v9 & 1) == 0)
    {
      v10 = v7;
      if (v7)
      {
        v22 = v8;
        if (a4)
        {
          OUTLINED_FUNCTION_98_2();
          if (![(BWIrisStagingNode *)a1 _haveEnoughVideoStagedToStartFirstIrisRecording:v10 currentTime:&v25 emitEndTimeOut:&v26])
          {
            OUTLINED_FUNCTION_69_2();
            if ((v12 & 1) == 0)
            {
              return;
            }

LABEL_11:
            OUTLINED_FUNCTION_37_7();
LABEL_14:
            [BWIrisStagingNode _fillInRefMovieStartAndTrimTimesForStillImageTimesBeforeTime:a1];
            OUTLINED_FUNCTION_98_2();
            [(BWIrisStagingNode *)a1 _informDelegateOfSoonToBeEmittedIrisRequestsForTime:v16, v17, v18, v19, v20, v21];
            [(BWIrisStagingNode *)a1 _tagStillImageVISKeyFrames];
            if (a3)
            {
              [(BWIrisStagingNode *)a1 _processQueuedVideoFrames];
            }

            return;
          }
        }

        [BWIrisStagingNode _fillInStartAndTrimTimesForMasterMovieWithInfo:a1];
        [v10 movieStartTime];
        if (v24)
        {
          [v10 movieTrimStartTime];
          *(a1 + 536) = v25;
          [v10 movieStartTime];
          v23 = v26;
          [(BWIrisStagingNode *)a1 _prepareToEmitFramesFromStartTime:&v23 throughEndTime:v13, v14, v15];
        }
      }
    }

    OUTLINED_FUNCTION_69_2();
    if ((v11 & 1) == 0)
    {
      return;
    }

    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }
}

- (void)_emitIrisRequest:(uint64_t)a3 withEndingVideoSampleTimingInfo:
{
  if (!a1)
  {
    return;
  }

  OUTLINED_FUNCTION_54();
  FigSimpleMutexCheckIsLockedOnThisThread();
  OUTLINED_FUNCTION_33();
  if (!v7)
  {
    return;
  }

  [v4 setFinalEnqueuedIrisRequest:{objc_msgSend(*(v3 + 464), "lastObject") == v4}];
  [v4 isFinalEnqueuedIrisRequest];
  *v139 = *(v3 + 352);
  [OUTLINED_FUNCTION_4_36() setMasterMovieStartTime:?];
  if ((*(a3 + 12) & 1) == 0)
  {
    OUTLINED_FUNCTION_88_1(rhs);
    lhs = *(v3 + 152);
    CMTimeSubtract(v139, &lhs, rhs);
    *a3 = *v139;
    *(a3 + 16) = *&v139[16];
  }

  *v139 = *(a3 + 24);
  v8 = [OUTLINED_FUNCTION_4_36() setMovieEndingVideoPTS:?];
  *v139 = *(a3 + 24);
  *&v139[16] = *(a3 + 40);
  *rhs = *a3;
  *&rhs[16] = *(a3 + 16);
  v16 = OUTLINED_FUNCTION_83_1(v8, v9, v10, v11, v12, v13, v14, v15, v129, v133, v137.value, *&v137.timescale, v137.epoch, v138, v139[0]);
  CMTimeAdd(v18, v16, v17);
  *v139 = v156;
  [OUTLINED_FUNCTION_4_36() setMovieEndTime:?];
  if (v4)
  {
    [v4 movieTrimEndTime];
    if (v155)
    {
      goto LABEL_11;
    }

    [v4 movieEndTime];
  }

  else
  {
    OUTLINED_FUNCTION_81_1();
    v154 = 0;
    v153 = 0uLL;
  }

  *v139 = v153;
  [OUTLINED_FUNCTION_4_36() setMovieTrimEndTime:?];
LABEL_11:
  [OUTLINED_FUNCTION_116_0() setMasterMovieURL:?];
  [OUTLINED_FUNCTION_116_0() setSpatialOverCaptureMasterMovieURL:?];
  if ([v4 isFinalEnqueuedIrisRequest])
  {
    v19 = *(v3 + 480) > 0;
  }

  else
  {
    v19 = 0;
  }

  [v4 setFinalReferenceMovie:v19];
  OUTLINED_FUNCTION_33();
  if (v7 && ([v4 isMomentCaptureMovieRecording] & 1) == 0)
  {
    v140 = 0u;
    memset(v139, 0, sizeof(v139));
    if (v4)
    {
      [OUTLINED_FUNCTION_24_2() movieTrimStartTime];
      v32 = [v4 movieTrimEndTime];
      v40 = OUTLINED_FUNCTION_73_0(v32, v33, v34, v35, v36, v37, v38, v39, v130, v134, v137.value, *&v137.timescale, v137.epoch, v138, *v139, *&v139[8], *&v139[16], *&v139[24], v140, *(&v140 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, rhs[0]);
      CMTimeRangeFromTimeToTime(v42, v40, v41);
      v31 = *(v3 + 528);
      [v4 stillImageCaptureTime];
    }

    else
    {
      memset(rhs, 0, 24);
      OUTLINED_FUNCTION_115_1();
      v28 = OUTLINED_FUNCTION_73_0(v20, v21, v22, v23, v24, v25, v26, v27, v130, v134, v137.value, *&v137.timescale, v137.epoch, v138, *v139, *&v139[8], *&v139[16], *&v139[24], v140, *(&v140 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, rhs[0]);
      CMTimeRangeFromTimeToTime(v30, v28, v29);
      v31 = *(v3 + 528);
      OUTLINED_FUNCTION_115_1();
    }

    *rhs = *v139;
    *&rhs[16] = *&v139[16];
    v152 = v140;
    [v31 computeVitalityScoreForStillImageHostPTS:&lhs movieRange:rhs];
    [v4 setVitalityScore:?];
    [v4 setVitalityScoringVersion:{objc_msgSend(*(v3 + 528), "vitalityScoringVersion")}];
    [v4 setVitalityScoreValid:{objc_msgSend(v4, "vitalityScoringVersion") != 0}];
  }

  if ([v4 isFinalEnqueuedIrisRequest])
  {
    if (v4)
    {
      [OUTLINED_FUNCTION_58_6() movieEndingVideoPTS];
      v43 = [OUTLINED_FUNCTION_24_2() stillImageCaptureTime];
    }

    else
    {
      OUTLINED_FUNCTION_21_11();
    }

    v51 = OUTLINED_FUNCTION_83_1(v43, v44, v45, v46, v47, v48, v49, v50, v130, v134, v137.value, *&v137.timescale, v137.epoch, v138, v139[0]);
    if (CMTimeCompare(v51, v52) <= 0)
    {
      if (dword_1ED844290)
      {
        v53 = OUTLINED_FUNCTION_12_23();
        OUTLINED_FUNCTION_32_6(v53, v54, v55, v56, v57, v58, v59, v60, v130, v134, v137.value);
        OUTLINED_FUNCTION_46();
        if (v5)
        {
          v61 = [v4 description];
          *rhs = 136315394;
          OUTLINED_FUNCTION_10_20(v61, "[BWIrisStagingNode _emitIrisRequest:withEndingVideoSampleTimingInfo:]");
          OUTLINED_FUNCTION_11_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_13_0();
      }

      [*(v3 + 600) reset];
      *(v3 + 600) = 0;
    }
  }

  if (*(v3 + 600))
  {
    if (v4)
    {
      [OUTLINED_FUNCTION_58_6() movieEndTime];
      v70 = [OUTLINED_FUNCTION_24_2() stillImageCaptureTime];
    }

    else
    {
      OUTLINED_FUNCTION_21_11();
    }

    v88 = OUTLINED_FUNCTION_83_1(v70, v71, v72, v73, v74, v75, v76, v77, v130, v134, v137.value, *&v137.timescale, v137.epoch, v138, v139[0]);
    if (CMTimeCompare(v88, v89) < 0 && dword_1ED844290)
    {
      v90 = OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_32_6(v90, v91, v92, v93, v94, v95, v96, v97, v132, v136, v137.value);
      OUTLINED_FUNCTION_46();
      if (v5)
      {
        v98 = [v4 description];
        *rhs = 136315394;
        *&rhs[4] = "[BWIrisStagingNode _emitIrisRequest:withEndingVideoSampleTimingInfo:]";
        *&rhs[12] = 2112;
        *&rhs[14] = v98;
        LODWORD(v136) = 22;
        v132 = rhs;
        OUTLINED_FUNCTION_11_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }

    [OUTLINED_FUNCTION_123(600) adjustMovieInfoTimes:?];
    if (v4)
    {
      [OUTLINED_FUNCTION_58_6() movieEndTime];
      v99 = [OUTLINED_FUNCTION_24_2() stillImageCaptureTime];
    }

    else
    {
      OUTLINED_FUNCTION_21_11();
    }

    v107 = OUTLINED_FUNCTION_83_1(v99, v100, v101, v102, v103, v104, v105, v106, v132, v136, v137.value, *&v137.timescale, v137.epoch, v138, v139[0]);
    if ((CMTimeCompare(v107, v108) & 0x80000000) == 0 || !dword_1ED844290)
    {
      goto LABEL_56;
    }

    v109 = OUTLINED_FUNCTION_12_23();
    OUTLINED_FUNCTION_32_6(v109, v110, v111, v112, v113, v114, v115, v116, v131, v135, v137.value);
    OUTLINED_FUNCTION_46();
    if (!v5)
    {
      goto LABEL_55;
    }

LABEL_54:
    v117 = [v4 description];
    *rhs = 136315394;
    OUTLINED_FUNCTION_10_20(v117, "[BWIrisStagingNode _emitIrisRequest:withEndingVideoSampleTimingInfo:]");
    OUTLINED_FUNCTION_11_0();
    _os_log_send_and_compose_impl();
LABEL_55:
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_13_0();
    goto LABEL_56;
  }

  if (v4)
  {
    [OUTLINED_FUNCTION_58_6() movieEndTime];
    v62 = [OUTLINED_FUNCTION_24_2() stillImageCaptureTime];
  }

  else
  {
    OUTLINED_FUNCTION_21_11();
  }

  v78 = OUTLINED_FUNCTION_83_1(v62, v63, v64, v65, v66, v67, v68, v69, v130, v134, v137.value, *&v137.timescale, v137.epoch, v138, v139[0]);
  if (CMTimeCompare(v78, v79) < 0 && dword_1ED844290)
  {
    v80 = OUTLINED_FUNCTION_12_23();
    OUTLINED_FUNCTION_32_6(v80, v81, v82, v83, v84, v85, v86, v87, v131, v135, v137.value);
    OUTLINED_FUNCTION_46();
    if (!v5)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_56:
  [OUTLINED_FUNCTION_116_0() setStagingNodeOverallVideoFrameReceptionStats:?];
  [OUTLINED_FUNCTION_116_0() setStagingNodeValveActiveVideoFrameReceptionStats:?];
  if ([OUTLINED_FUNCTION_123(472) containsObject:?])
  {
    [OUTLINED_FUNCTION_123(472) removeObject:?];
  }

  else
  {
    [*(v3 + 624) stagingNode:v3 willEmitIrisRequest:v4];
  }

  [BWIrisStagingNode _emitIrisMovieRequestWithInfo:v3];
  ++*(v3 + 480);
  if ([v4 isFinalEnqueuedIrisRequest])
  {
    OUTLINED_FUNCTION_21_4(426);
    OUTLINED_FUNCTION_19_1((v3 + 432));
    if (v4)
    {
      [OUTLINED_FUNCTION_24_2() movieEndingVideoPTS];
    }

    else
    {
      memset(rhs, 0, 24);
    }

    OUTLINED_FUNCTION_88_1(v139);
    OUTLINED_FUNCTION_38_6();
    v118 = CMTimeSubtract(&lhs, &v137, v139);
    v126 = OUTLINED_FUNCTION_73_0(v118, v119, v120, v121, v122, v123, v124, v125, v131, v135, v137.value, *&v137.timescale, v137.epoch, v138, *v139, *&v139[8], *&v139[16], *&v139[24], v140, *(&v140 + 1), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, rhs[0]);
    CMTimeSubtract(v128, v126, v127);
    [(BWIrisStagingNode *)v3 _emitBuffersThroughPTS:v139];
    [(BWIrisStagingNode *)v3 _emitBuffersThroughPTS:?];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v7 = [a4 index];
  v8 = *&self->_trimLivePhotoMovieAtWideAndSuperWideAutoSwitching;
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSURL *)self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:v7];
  }

  v311 = 0;
  sampleBufferOut = 0;
  v310 = 0;
  v308 = *MEMORY[0x1E6960C70];
  v309 = *(MEMORY[0x1E6960C70] + 8);
  memset(&v307, 0, sizeof(v307));
  CMSampleBufferGetPresentationTimeStamp(&v307, a3);
  v278 = 488;
  FigSimpleMutexLock();
  v276 = v9;
  if ([a4 mediaType] == 1936684398)
  {
    if ((self->_emissionMap & 1) == 0)
    {
      if (dword_1ED844290)
      {
        LODWORD(rhs[0].value) = 0;
        LOBYTE(v313.origin.x) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = rhs[0].value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, LOBYTE(v313.origin.x)))
        {
          v12 = value;
        }

        else
        {
          v12 = value & 0xFFFFFFFE;
        }

        if (v12)
        {
          OUTLINED_FUNCTION_1_52();
          CMTimeGetSeconds(time);
          *lhs = 136315650;
          OUTLINED_FUNCTION_33_9();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v9 = v276;
      }

      LOBYTE(self->_emissionMap) = 1;
    }
  }

  else if (!v7)
  {
    OUTLINED_FUNCTION_33();
    if (_ZF && (BYTE2(self->_emissionMap) & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      HostTimeClock = CMClockGetHostTimeClock();
      v236 = CMClockGetTime(time, HostTimeClock);
      OUTLINED_FUNCTION_52_6(v236, v237, v238, v239, v240, v241, v242, v243, v244, v246, v248, v250, key[0], key[1], v256, v258, v260, v262, v264, *&v267, v270, v273, v9, 488, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v281, *(&v281 + 1), v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, *(&v300 + 1), v301, *(&v301 + 1), v302.value, *&v302.timescale, v302.epoch, v303, v304.value, *&v304.timescale, v304.epoch, v305.value, *&v305.timescale);
      [BWIrisStagingNode _signalReadyToReceiveRequestsWithEarliestAllowedStillHostPTS:?];
    }

    OUTLINED_FUNCTION_33();
    if (_ZF)
    {
      if (!*&self->_numberOfVideoFramesReceived)
      {
        v14 = (SLODWORD(self->_limitedGMErrorLogger) + 1);
        LODWORD(self->_limitedGMErrorLogger) = v14;
        if (self->_readyToReceiveRequestsGroup < v14)
        {
          OUTLINED_FUNCTION_33();
          if (_ZF)
          {
            *&self->_numberOfVideoFramesReceived = [[BWSubjectRelightingCalculator alloc] initWithInferenceScheduler:self->_inferencesInputIndex];
            [a4 videoFormat];
            [OUTLINED_FUNCTION_28() prepareForVideoFormatAsync:?];
          }
        }
      }
    }
  }

  if (self->_stagingSuspended)
  {
    goto LABEL_99;
  }

  if (v7)
  {
    if (v7 != v8)
    {
      v121 = 0;
LABEL_130:
      [v9 addObject:a3];
      if ((BYTE2(self->_emissionMap) & 1) == 0)
      {
        OUTLINED_FUNCTION_95_3();
        v167 = [(BWIrisStagingNode *)self _earliestAllowedStillHostPTS];
        if (time[0].flags)
        {
          OUTLINED_FUNCTION_52_6(v167, v168, v169, v170, v171, v172, v173, v174, v244, v246, v248, v250, key[0], key[1], v256, v258, v260, v262, v264, *&v267, v270, v273, v276, v278, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v281, *(&v281 + 1), v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, *(&v300 + 1), v301, *(&v301 + 1), v302.value, *&v302.timescale, v302.epoch, v303, v304.value, *&v304.timescale, v304.epoch, v305.value, *&v305.timescale);
          OUTLINED_FUNCTION_14_6(MEMORY[0x1E6960C88]);
          v175 = CMTimeCompare(lhs, rhs);
          if ((v175 & 0x80000000) != 0)
          {
            OUTLINED_FUNCTION_52_6(v175, v176, v177, v178, v179, v180, v181, v182, v245, v247, v249, v251, keya, key_8, v257, v259, v261, v263, v266, v269, v272, v275, v277, v279, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v281, *(&v281 + 1), v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, *(&v300 + 1), v301, *(&v301 + 1), v302.value, *&v302.timescale, v302.epoch, v303, v304.value, *&v304.timescale, v304.epoch, v305.value, *&v305.timescale);
            [BWIrisStagingNode _signalReadyToReceiveRequestsWithEarliestAllowedStillHostPTS:?];
          }
        }
      }

      v183 = OUTLINED_FUNCTION_112_3();
      [(BWIrisStagingNode *)v183 _trimQueueForInputIndex:v184];
      OUTLINED_FUNCTION_33();
      if (_ZF)
      {
        OUTLINED_FUNCTION_33();
        if (_ZF)
        {
          v185 = OUTLINED_FUNCTION_70();
          [(BWIrisStagingNode *)v185 _emitSampleBuffer:v186 forInputIndex:v7];
        }

        else if (!v7)
        {
          OUTLINED_FUNCTION_1_52();
          [(BWIrisStagingNode *)self _serviceIrisRequestsForCurrentTime:1 emitBuffers:1 ensureStillImageTimesAreStaged:?];
        }
      }

      goto LABEL_141;
    }

    v79 = OUTLINED_FUNCTION_70();
    [(BWIrisStagingNode *)v79 _feedTrimmerWithInferencesSampleBuffer:v80];
LABEL_99:
    v121 = 0;
    goto LABEL_141;
  }

  memset(&v305, 0, sizeof(v305));
  v15 = CMClockGetHostTimeClock();
  CMClockGetTime(&v305, v15);
  v16 = 784;
  if (self->_lastReceivedVideoTime.epoch)
  {
    *lhs = v305;
    OUTLINED_FUNCTION_14_6((&self->_recommendedMasterPortType + 4));
    CMTimeSubtract(time, lhs, rhs);
    Seconds = CMTimeGetSeconds(time);
    [self->_lastReceivedVideoTime.epoch addDataPoint:?];
    overallVideoFrameReceptionStats = self->_overallVideoFrameReceptionStats;
    if (overallVideoFrameReceptionStats)
    {
      [(BWStats *)overallVideoFrameReceptionStats addDataPoint:Seconds];
    }
  }

  else
  {
    v19 = objc_alloc_init(BWStats);
    self->_lastReceivedVideoTime.epoch = v19;
    [(BWStats *)v19 setMultiplier:1000.0];
    [self->_lastReceivedVideoTime.epoch setUnitDesignator:@"ms"];
  }

  *(&self->_recommendedMasterPortType + 4) = v305;
  memset(&v304, 0, sizeof(v304));
  v20 = MEMORY[0x1E6960CC0];
  if ((self->_frameGovernorReferenceTime.value & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_1_52();
    *lhs = *&self->_frameGovernorNextFrameThreshold.epoch;
    *&lhs[16] = *&self->_frameGovernorReferenceTime.timescale;
    CMTimeSubtract(&v304, time, lhs);
  }

  else
  {
    v304 = **&MEMORY[0x1E6960CC0];
  }

  memset(&v302, 0, sizeof(v302));
  v271 = 0;
  p_epoch = &self->_frameGovernorNextFrameThreshold.epoch;
  if ([v9 count])
  {
    CMSampleBufferGetPresentationTimeStamp(time, [v9 lastObject]);
    OUTLINED_FUNCTION_94();
    CMTimeSubtract(&v302, lhs, time);
  }

  else
  {
    v302 = *v20;
  }

  v21 = CMGetAttachment(a3, @"LastRecommendedMasterSelectionReason", 0);
  v22 = v21;
  if (v21)
  {
    LODWORD(self->_recommendedMasterPortType) = [v21 intValue];
  }

  v265 = 732;
  if (BYTE4(self->_minimumPrerollFrames) == 1)
  {
    LODWORD(v20) = 736;
    videoStabilizationOverscanOverride = self->_videoStabilizationOverscanOverride;
    v24 = *&self->_minimumPrerollFrames;
    v260 = @"SynchronizedSlaveFrame";
    v262 = 728;
    AttachedMedia = BWSampleBufferGetAttachedMedia(a3, @"SynchronizedSlaveFrame");
    v16 = off_1E798B540;
    if (AttachedMedia)
    {
      v198 = AttachedMedia;
      v258 = 736;
      v199 = 1.0;
      v200 = ((v24 + 1.0) + 0.2) * (videoStabilizationOverscanOverride + 1.0);
      v201 = CMGetAttachment(AttachedMedia, @"TotalZoomFactor", 0);
      v202 = 1.0;
      if (v201)
      {
        [v201 floatValue];
        v202 = v203;
      }

      v204 = OUTLINED_FUNCTION_70();
      v206 = [(BWIrisStagingNode *)v204 _appliedZoomFromSampleBuffer:v205];
      if ((v202 / v200) >= 1.0)
      {
        v199 = v202 / v200;
      }

      v250 = *off_1E798A3C8;
      keyb = [CMGetAttachment(v198 *off_1E798A3C8];
      v207 = OUTLINED_FUNCTION_84_1();
      v209 = CMGetAttachment(v207, v208, 0);
      if (!v209)
      {
        v209 = CMGetAttachment(v198, @"RecommendedMasterPortType", 0);
        if (!v209)
        {
          v209 = *&self->_spatialOverCapturePercentageToApply;
        }
      }

      v16 = off_1E798B540;
      v210 = *&self->_spatialOverCapturePercentageToApply;
      v211 = v209;
      if (v209 != v210)
      {

        *&self->_spatialOverCapturePercentageToApply = v211;
        LODWORD(v20) = 736;
      }

      v248 = v211;
      if (v22 || (v22 = CMGetAttachment(v198, @"LastRecommendedMasterSelectionReason", 0)) != 0)
      {
        LODWORD(self->_recommendedMasterPortType) = [v22 intValue];
      }

      if (v202 < v206 || [keyb isEqualToString:*off_1E798A0C0] && (objc_msgSend(v211, "isEqualToString:", keyb) & 1) != 0 || objc_msgSend(keyb, "isEqualToString:", *off_1E798A0D0) && objc_msgSend(v211, "isEqualToString:", keyb) && (LODWORD(self->_recommendedMasterPortType) - 1) <= 1)
      {
        BWCMSampleBufferCreateCopyIncludingMetadata(v198, &sampleBufferOut);
        if (!sampleBufferOut)
        {
          goto LABEL_207;
        }

        v212 = [CMGetAttachment(a3 @"AttachedMedia"];
        OUTLINED_FUNCTION_33();
        if (_ZF)
        {
          v300 = 0u;
          v301 = 0u;
          v298 = 0u;
          v299 = 0u;
          v213 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, 1);
          v214 = [v213 countByEnumeratingWithState:&v298 objects:&v282 count:16];
          if (v214)
          {
            v215 = v214;
            v216 = *v299;
            do
            {
              for (i = 0; i != v215; ++i)
              {
                if (*v299 != v216)
                {
                  objc_enumerationMutation(v213);
                }

                [v212 setObject:BWSampleBufferGetAttachedMedia(v198 forKeyedSubscript:{*(*(&v298 + 1) + 8 * i)), *(*(&v298 + 1) + 8 * i)}];
              }

              v215 = [v213 countByEnumeratingWithState:&v298 objects:&v282 count:16];
            }

            while (v215);
          }
        }

        if ([v212 count])
        {
          v218 = [v212 copy];
          CMSetAttachment(sampleBufferOut, @"AttachedMedia", v218, 1u);
        }

        time[0].value = 0;
        BWCMSampleBufferCreateCopyIncludingMetadata(v198, time);
        v26 = &unk_1ED844000;
        LODWORD(v20) = 736;
        if (!time[0].value)
        {
          goto LABEL_207;
        }

        BWSampleBufferRemoveAllAttachedMedia(time[0].value);
        BWSampleBufferSetAttachedMedia(sampleBufferOut, @"SynchronizedSlaveFrame", time[0].value);
        CFRelease(time[0].value);
        BWSampleBufferRemoveAllAttachedMedia(a3);
        a3 = sampleBufferOut;
        CMSampleBufferGetPresentationTimeStamp(time, sampleBufferOut);
        v307 = time[0];
        v16 = off_1E798B540;
      }

      else if (v199 >= v206)
      {
        BWCMSampleBufferCreateCopyIncludingMetadata(a3, &v311);
        if (!v311)
        {
          goto LABEL_207;
        }

        BWSampleBufferRemoveAllAttachedMedia(v311);
        BWSampleBufferPropagateAttachedMedia(v198, v311);
        BWSampleBufferSetAttachedMedia(a3, @"SynchronizedSlaveFrame", v311);
        v26 = &unk_1ED844000;
      }

      else
      {
        LODWORD(v26) = -310099968;
      }

      __asm { FMOV            V0.2D, #1.0 }

      *key = _Q0;
      if (!(_NF ^ _VF | _ZF))
      {
        v223 = BWSampleBufferGetAttachedMedia(a3, @"SynchronizedSlaveFrame");
        if (!v223)
        {
          goto LABEL_207;
        }

        v224 = v223;
        v225 = CMGetAttachment(v223, @"FinalCropRectScaleFactorAtBaseZoom", 0);
        if (v225)
        {
          [v225 floatValue];
        }

        CMGetAttachment(v224, v250, 0);
        *&time[0].value = 0uLL;
        *&time[0].epoch = *key;
        FigCFDictionaryGetCGRectIfPresent();
        v317.origin.x = OUTLINED_FUNCTION_1();
        CGRectGetWidth(v317);
        v318.origin.x = OUTLINED_FUNCTION_1();
        CGRectGetHeight(v318);
        v319.origin.x = OUTLINED_FUNCTION_1();
        CGRectGetMidX(v319);
        v320.origin.x = OUTLINED_FUNCTION_1();
        CGRectGetMidY(v320);
        FigCFDictionarySetCGRect();
        v226 = *&self->_minimumPrerollFrames;
        LODWORD(v20) = 736;
        if (v226 > 0.0)
        {
          FigCaptureMetadataUtilitiesScaleFinalCropRectForPadding(v224, v226);
        }
      }

      OUTLINED_FUNCTION_33();
      if (_ZF)
      {
        v227 = OUTLINED_FUNCTION_47_1();
        v230 = CMGetAttachment(v227, v228, v229);
        if (v230)
        {
          *lhs = *MEMORY[0x1E695EFF8];
          CGPointMakeWithDictionaryRepresentation(v230, lhs);
          CMGetAttachment(a3, v250, 0);
          v231 = *(MEMORY[0x1E695F058] + 16);
          *&time[0].value = *MEMORY[0x1E695F058];
          *&time[0].epoch = v231;
          if (!FigCFDictionaryGetCGRectIfPresent())
          {
            goto LABEL_207;
          }

          v232 = vsubq_f64(*key, *&time[0].epoch);
          v233 = vaddq_f64(*&time[0].value, *lhs);
          v234 = vbslq_s8(vcgtq_f64(v233, v232), v232, v233);
          *&time[0].value = vbicq_s8(v234, vcltzq_f64(v234));
          FigCFDictionarySetCGRect();
          LODWORD(v20) = 736;
        }
      }
    }

    else
    {
      v26 = &unk_1ED844000;
    }

    v27 = *&self->_minimumPrerollFrames;
    if (v27 > 0.0)
    {
      FigCaptureMetadataUtilitiesScaleFinalCropRectForPadding(a3, v27);
      if (self->_videoStabilizationOverscanOverride > 0.0)
      {
        v28 = v16;
        LODWORD(v20) = v26;
        v29 = BWSampleBufferGetAttachedMedia(a3, @"SynchronizedSlaveFrame");
        if (v29)
        {
          v30 = v29;
          v31 = CMGetAttachment(v29, *off_1E798A3C8, 0);
          v32 = OUTLINED_FUNCTION_84_1();
          v34 = CMGetAttachment(v32, v33, 0);
          v16 = *v16;
          if ([objc_msgSend(v31 objectForKeyedSubscript:{*v28), "isEqualToString:", objc_msgSend(v34, "objectForKeyedSubscript:", *v28)}])
          {
            memset(time, 0, 32);
            if (FigCFDictionaryGetCGRectIfPresent() && (memset(lhs, 0, sizeof(lhs)), FigCFDictionaryGetCGRectIfPresent()))
            {
              ImageBuffer = CMSampleBufferGetImageBuffer(v30);
              Width = CVPixelBufferGetWidth(ImageBuffer);
              Height = CVPixelBufferGetHeight(ImageBuffer);
              memset(rhs, 0, 32);
              if (FigCFDictionaryGetCGRectIfPresent())
              {
                v38 = *&rhs[1].value;
                v39 = *&rhs[0].epoch;
              }

              else
              {
                *&rhs[0].value = 0uLL;
                v38 = Height;
                v39 = Width;
                *&rhs[0].epoch = Width;
                *&rhs[1].value = Height;
              }

              v187 = v39 / Width;
              v188 = v38 / Height;
              v16 = CMSampleBufferGetImageBuffer(a3);
              v189 = CVPixelBufferGetWidth(v16);
              v190 = CVPixelBufferGetHeight(v16);
              memset(&v313, 0, sizeof(v313));
              if (!FigCFDictionaryGetCGRectIfPresent())
              {
                v313.origin = 0uLL;
                v313.size.width = v189;
                v313.size.height = v190;
              }

              v191 = *&lhs[16] * (fmin(v187 / *&time[0].epoch + -1.0, INFINITY) + 1.0);
              v192 = *&lhs[24] * (fmin(v188 / *&time[1].value + -1.0, INFINITY) + 1.0);
              v193 = v189 * v191;
              v194 = FigCaptureFloorFloatToMultipleOf(4, v193);
              v195 = v190 * v192;
              v196 = FigCaptureFloorFloatToMultipleOf(4, v195);
              v197 = OUTLINED_FUNCTION_129_2(v313.origin.x, v194 - v313.size.width);
              v315.origin.y = OUTLINED_FUNCTION_129_2(v313.origin.y, v196 - v313.size.height);
              v315.origin.x = v197;
              v315.size.width = v194;
              v315.size.height = v196;
              v316 = CGRectIntersection(v315, v313);
              if (!CGRectEqualToRect(v316, v313))
              {
                FigCFDictionarySetCGRect();
              }
            }

            else
            {
              OUTLINED_FUNCTION_2_47();
              FigDebugAssert3();
            }
          }
        }
      }
    }
  }

  else
  {
    v40 = *&self->_minimumPrerollFrames;
    if (v40 > 0.0)
    {
      FigCaptureMetadataUtilitiesScaleFinalCropRectForPadding(a3, v40);
    }
  }

  v41 = *(MEMORY[0x1E6960C70] + 16);
  v42 = OUTLINED_FUNCTION_47_1();
  if ([CMGetAttachment(v42 v43])
  {
    v45 = CMTimeMake(time, 16, 1000);
    OUTLINED_FUNCTION_63_3(v45, v46, v47, v48, v49, v50, v51, v52, v244, v246, v248, v250, key[0], key[1], v256, v258, v260, v262, 732, *&v267, 0, p_epoch, v276, v278, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v281, *(&v281 + 1), v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, *(&v300 + 1), v301, *(&v301 + 1), v302.value, *&v302.timescale, v302.epoch, v303, v304.value, *&v304.timescale, v304.epoch, v305.value, *&v305.timescale);
    v53 = OUTLINED_FUNCTION_47_1();
    v56 = [objc_msgSend(CMGetAttachment(v53 v54];
    if (v56 >= 1)
    {
      v57 = CMTimeMake(time, v56, 1000000);
      OUTLINED_FUNCTION_63_3(v57, v58, v59, v60, v61, v62, v63, v64, v244, v246, v248, v250, key[0], key[1], v256, v258, v260, v262, v265, *&v267, v271, p_epoch, v276, v278, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v281, *(&v281 + 1), v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, *(&v300 + 1), v301, *(&v301 + 1), v302.value, *&v302.timescale, v302.epoch, v303, v304.value, *&v304.timescale, v304.epoch, v305.value, *&v305.timescale);
    }

    memset(rhs, 0, 24);
    OUTLINED_FUNCTION_1_52();
    *lhs = v308;
    *&lhs[8] = v309;
    *&lhs[12] = v20;
    *&lhs[16] = v16;
    CMTimeAdd(rhs, time, lhs);
    if (dword_1ED844290)
    {
      LODWORD(v313.origin.x) = 0;
      HIBYTE(v281) = 0;
      v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      x_low = LODWORD(v313.origin.x);
      if (os_log_type_enabled(v65, HIBYTE(v281)))
      {
        v67 = x_low;
      }

      else
      {
        v67 = x_low & 0xFFFFFFFE;
      }

      if (v67)
      {
        OUTLINED_FUNCTION_1_52();
        v68 = CMTimeGetSeconds(time);
        OUTLINED_FUNCTION_100_2();
        v69 = CMTimeGetSeconds(time);
        *&time[0].value = v308;
        *&time[0].timescale = __PAIR64__(v20, v309);
        time[0].epoch = v16;
        v70 = CMTimeGetSeconds(time);
        *lhs = 136315906;
        *&lhs[4] = "[BWIrisStagingNode renderSampleBuffer:forInput:]";
        *&lhs[12] = 2048;
        *&lhs[14] = v68;
        *&lhs[22] = 2048;
        *&lhs[24] = v69;
        LOWORD(v281) = 2048;
        *(&v281 + 2) = v70;
        LODWORD(v246) = 42;
        v244 = lhs;
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    OUTLINED_FUNCTION_100_2();
    *lhs = *MEMORY[0x1E6960C70];
    *&lhs[16] = v41;
    BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(a3, time, lhs, &v310);
    v71 = v310;
    if (v310)
    {
      v41 = v16;
LABEL_65:
      BWSynchronizeSmartStyleAttachedMediaPTS(v71);
      a3 = v71;
      goto LABEL_66;
    }

LABEL_207:
    OUTLINED_FUNCTION_2_47();
    FigDebugAssert3();
    goto LABEL_99;
  }

  LODWORD(v20) = *(MEMORY[0x1E6960C70] + 12);
  v71 = v310;
  if (v310)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (*&self->_vitalityScoringSmartCameraPipelineVersion.minor)
  {
    v72 = OUTLINED_FUNCTION_70();
    [BWIrisStagingNode _feedTrimmerWithVideoSampleBuffer:v72];
  }

  v73 = OUTLINED_FUNCTION_70();
  [(BWIrisStagingNode *)v73 _findAndMarkCuttingBufferForVideoSbuf:v74];
  OUTLINED_FUNCTION_33();
  if (!_ZF)
  {
    goto LABEL_99;
  }

  if ((BYTE1(self->_emissionMap) & 1) == 0)
  {
    if (dword_1ED844290)
    {
      LODWORD(rhs[0].value) = 0;
      LOBYTE(v313.origin.x) = 0;
      v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v76 = rhs[0].value;
      os_log_type_enabled(v75, LOBYTE(v313.origin.x));
      OUTLINED_FUNCTION_97_0();
      if (_ZF)
      {
        v78 = v77;
      }

      else
      {
        v78 = v76;
      }

      if (v78)
      {
        OUTLINED_FUNCTION_1_52();
        CMTimeGetSeconds(time);
        *lhs = 136315650;
        OUTLINED_FUNCTION_33_9();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    BYTE1(self->_emissionMap) = 1;
  }

  if ((self->_frameGovernorNextFrameThreshold.value & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_88_1(lhs);
    OUTLINED_FUNCTION_77_2();
    v82 = CMTimeSubtract(v81, rhs, lhs);
    OUTLINED_FUNCTION_35_7(v82, v83, v84, v85, v86, v87, v88, v89, v244, v246, v248, v250, key[0], key[1], v256, v258, v260, v262, v265, *&v267, v271, p_epoch, v276, v278, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v281, *(&v281 + 1), v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, *(&v300 + 1), v301, *(&v301 + 1), v302.value, *&v302.timescale, v302.epoch, v303, *&v304.value);
    if (CMTimeCompare(lhs, time) < 0)
    {
      [(BWInferenceScheduler *)self->_inferenceScheduler preserveMotionDataForSoonToBeDroppedSampleBuffer:a3];
      goto LABEL_99;
    }
  }

  v268 = v41;
  v90 = p_epoch;
  if ((*(p_epoch + 12) & 1) == 0 || (OUTLINED_FUNCTION_42_6(&self->_targetFrameDuration), CMTimeMultiply(time, lhs, 2), *lhs = v302, v91 = CMTimeCompare(lhs, time), v91 > 0) || (OUTLINED_FUNCTION_35_7(v91, v92, v93, v94, v95, v96, v97, v98, v244, v246, v248, v250, key[0], key[1], v256, v258, v260, v262, v265, v41, v271, p_epoch, v276, v278, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v281, *(&v281 + 1), v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, *(&v300 + 1), v301, *(&v301 + 1), v302.value, *&v302.timescale, v302.epoch, v303, *&v304.value), OUTLINED_FUNCTION_77_2(), CMTimeSubtract(v122, lhs, rhs), OUTLINED_FUNCTION_88_1(lhs), CMTimeCompare(time, lhs) < 0))
  {
    *v90 = v307;
    v304 = **&MEMORY[0x1E6960CC0];
  }

  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_35_7(v99, self->_targetFrameDuration.timescale, LODWORD(self->_targetFrameDuration.value), v100, v101, v102, v103, v104, v244, v246, v248, v250, key[0], key[1], v256, v258, v260, v262, v265, v268, v271, p_epoch, v276, v278, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v281, *(&v281 + 1), v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, *(&v300 + 1), v301, *(&v301 + 1), v302.value, *&v302.timescale, v302.epoch, v303, *&v304.value);
  CMTimeMultiplyByRatio(time, lhs, v105, v106);
  rhs[0] = self->_targetFrameDuration;
  CMTimeMultiply(lhs, rhs, time[0].value / time[0].timescale + 1);
  *&self->_frameGovernorNextFrameThreshold.timescale = *&lhs[16];
  *&self->_compressSynchronizedSlaveAttachedMedia = *lhs;
  v107 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_1_52();
    CMTimeGetSeconds(time);
    kdebug_trace();
  }

  [(BWInferenceScheduler *)self->_inferenceScheduler prependPreservedMotionDataToSampleBuffer:a3];
  OUTLINED_FUNCTION_33();
  if (!_ZF)
  {
    v121 = 0;
    goto LABEL_116;
  }

  LODWORD(v273) = LODWORD(self->_intermediateJPEGCompressionQuality) + LODWORD(self->_intermediateJPEGCompressionRate);
  v108 = OUTLINED_FUNCTION_84_1();
  v110 = BWSampleBufferGetAttachedMedia(v108, v109);
  if (v110)
  {
    if (self->_videoStabilizationOverscanOverride <= 0.0)
    {
      if ((*(&self->super.super.isa + v264) & 1) == 0)
      {
        -[BWStats logErrorNumber:errorString:](self->_valveActiveVideoFrameReceptionStats, "logErrorNumber:errorString:", 0xFFFFFFFFLL, [MEMORY[0x1E696AEC0] stringWithFormat:@"Primary media contains unexpected SynchronizedSlaveFrame."]);
      }

      v116 = 0;
    }

    else
    {
      v111 = v110;
      intermediateJPEGCompressor = self->_intermediateJPEGCompressor;
      if (!intermediateJPEGCompressor)
      {
        v113 = [BWIntermediateJPEGCompressor alloc];
        LODWORD(v114) = self->_compressedBufferPoolAllocationTimeoutMS;
        LODWORD(v115) = HIDWORD(self->_compressedBufferPoolAllocationTimeoutMS);
        intermediateJPEGCompressor = [(BWIntermediateJPEGCompressor *)v113 initWithCompressionQuality:(self->_intermediateJPEGDownstreamRetainedBufferCount + LODWORD(self->_intermediateJPEGCompressionRate)) compressionRate:(self->_intermediateJPEGDownstreamRetainedBufferCount + v273) jpegSurfacePoolLowWaterBufferCount:self->_delegate jpegSurfacePoolHighWaterBufferCount:@"synchronizedSlaveJPEGCompressor" compressedBufferPoolAllocationTimeoutMS:v114 name:v115];
        self->_intermediateJPEGCompressor = intermediateJPEGCompressor;
      }

      v116 = [(BWIntermediateJPEGCompressor *)intermediateJPEGCompressor newJPEGSampleBufferFromUncompressedSampleBuffer:v111];
      if (!v116)
      {
        valveActiveVideoFrameReceptionStats = self->_valveActiveVideoFrameReceptionStats;
        v118 = MEMORY[0x1E696AEC0];
        CMSampleBufferGetPresentationTimeStamp(time, v111);
        v244 = CMTimeGetSeconds(time);
        -[BWStats logErrorNumber:errorString:](valveActiveVideoFrameReceptionStats, "logErrorNumber:errorString:", 0xFFFFFFFFLL, [v118 stringWithFormat:@"Could not create intermediate JPEG for synchronized slave frame at %.4f"]);
        v119 = OUTLINED_FUNCTION_84_1();
        BWSampleBufferRemoveAttachedMedia(v119, v120);
        v121 = 0;
        a3 = 0;
        v107 = MEMORY[0x1E695FF58];
        goto LABEL_116;
      }
    }

    v123 = OUTLINED_FUNCTION_84_1();
    BWSampleBufferRemoveAttachedMedia(v123, v124);
  }

  else
  {
    v116 = 0;
  }

  v125 = *&self->_additionalCompressedBufferCount;
  if (!v125)
  {
    v126 = [BWIntermediateJPEGCompressor alloc];
    LODWORD(v127) = self->_compressedBufferPoolAllocationTimeoutMS;
    LODWORD(v128) = HIDWORD(self->_compressedBufferPoolAllocationTimeoutMS);
    v125 = [(BWIntermediateJPEGCompressor *)v126 initWithCompressionQuality:(self->_intermediateJPEGDownstreamRetainedBufferCount + LODWORD(self->_intermediateJPEGCompressionRate)) compressionRate:(self->_intermediateJPEGDownstreamRetainedBufferCount + v273) jpegSurfacePoolLowWaterBufferCount:self->_delegate jpegSurfacePoolHighWaterBufferCount:@"intermediateJPEGCompressor" compressedBufferPoolAllocationTimeoutMS:v127 name:v128];
    *&self->_additionalCompressedBufferCount = v125;
  }

  v129 = [(BWIntermediateJPEGCompressor *)v125 newJPEGSampleBufferFromUncompressedSampleBuffer:a3];
  v121 = v129;
  if (v129)
  {
    v107 = MEMORY[0x1E695FF58];
    if (!v116)
    {
LABEL_115:
      a3 = v121;
      goto LABEL_116;
    }

    BWSampleBufferSetAttachedMedia(v129, 0x1F21AAA50, v116);
LABEL_114:
    CFRelease(v116);
    goto LABEL_115;
  }

  v130 = self->_valveActiveVideoFrameReceptionStats;
  v131 = MEMORY[0x1E696AEC0];
  CMSampleBufferGetPresentationTimeStamp(time, a3);
  v244 = CMTimeGetSeconds(time);
  -[BWStats logErrorNumber:errorString:](v130, "logErrorNumber:errorString:", 0xFFFFFFFFLL, [v131 stringWithFormat:@"Could not create intermediate JPEG for primary frame at %.4f"]);
  v107 = MEMORY[0x1E695FF58];
  if (v116)
  {
    goto LABEL_114;
  }

  v121 = 0;
  a3 = 0;
LABEL_116:
  if (*v107 == 1)
  {
    kdebug_trace();
  }

  if (a3)
  {
    sequenceAdjuster = self->_sequenceAdjuster;
    if (sequenceAdjuster)
    {
      v133 = [(BWIrisSequenceAdjuster *)sequenceAdjuster addMotionDataToCacheForSampleBuffer:a3];
      v134 = *off_1E798A3C8;
      v135 = CMGetAttachment(a3, *off_1E798A3C8, 0);
      v136 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v133];
      v137 = *off_1E798CE70;
      [v135 setObject:v136 forKeyedSubscript:*off_1E798CE70];
      v138 = BWSampleBufferGetAttachedMedia(a3, @"SynchronizedSlaveFrame");
      if (v138)
      {
        if (self->_sequenceAdjuster)
        {
          [CMGetAttachment(v138 v134];
        }
      }
    }

    v9 = v276;
    if (self->_motionDataPreserver)
    {
      OUTLINED_FUNCTION_95_3();
      v139 = OUTLINED_FUNCTION_47_1();
      v142 = CMGetAttachment(v139, v140, v141);
      CMTimeMakeFromDictionary(time, v142);
      v7 = v270;
      if ((time[0].flags & 1) == 0)
      {
        OUTLINED_FUNCTION_1_52();
      }

      v143 = OUTLINED_FUNCTION_47_1();
      [CMGetAttachment(v143 v144];
      v146 = OUTLINED_FUNCTION_47_1();
      v149 = [CMGetAttachment(v146 v147];
      if (v20)
      {
        OUTLINED_FUNCTION_114_1(v149, v150, v151, v152, v153, v154, v155, v156, v244, v246, v248, v250, key[0], key[1], v256, v258, v260, v262, v264, *&v267, v270, v273, v276, v278, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v281, *(&v281 + 1), v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, *(&v300 + 1), v301, *(&v301 + 1), v302.value, *&v302.timescale, v302.epoch, v303, v304.value, *&v304.timescale, v304.epoch, v305.value, *&v305.timescale);
        v313.origin.x = v308;
        *&v313.origin.y = __PAIR64__(v20, v309);
        v313.size.width = v267;
        CMTimeAdd(lhs, rhs, &v313);
        time[0] = *lhs;
      }

      OUTLINED_FUNCTION_94();
      *&v165 = OUTLINED_FUNCTION_114_1(v157, v158, v159, v160, v161, v162, v163, v164, v244, v246, v248, v250, key[0], key[1], v256, v258, v260, v262, v264, *&v267, v270, v273, v276, v278, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v281, *(&v281 + 1), v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, *(&v300 + 1), v301, *(&v301 + 1), v302.value, *&v302.timescale, v302.epoch, v303, v304.value, *&v304.timescale, v304.epoch, v305.value, *&v305.timescale).n128_u64[0];
      [v166 enqueueVideoBufferTime:lhs nativeTime:rhs isBracketFrame:v165 isSISFrame:?];
    }

    else
    {
      v7 = v270;
    }

    goto LABEL_130;
  }

LABEL_141:
  FigSimpleMutexUnlock();
  if (v310)
  {
    CFRelease(v310);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v311)
  {
    CFRelease(v311);
  }
}

- (void)_signalReadyToReceiveRequestsWithEarliestAllowedStillHostPTS:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_54();
    *(v3 + 706) = 1;
    if (dword_1ED844290)
    {
      v10 = 0;
      v9 = 0;
      OUTLINED_FUNCTION_111_1();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_4_0();
      if (v2)
      {
        OUTLINED_FUNCTION_39_5();
        CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_48_5();
        OUTLINED_FUNCTION_105_1();
        OUTLINED_FUNCTION_5_0();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
    }

    *&v5 = OUTLINED_FUNCTION_39_5().n128_u64[0];
    [v6 stagingNode:v1 readyToReceiveRequestsWithEarliestAllowedStillImageCaptureHostPTS:{&time, v5}];
    v7 = *(v1 + 712);
    if (v7)
    {
      dispatch_group_leave(v7);

      *(v1 + 712) = 0;
    }
  }
}

- (float)_appliedZoomFromSampleBuffer:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = CMGetAttachment(target, *off_1E798A3C8, 0);
  [objc_msgSend(objc_msgSend(*(a1 + 688) objectForKeyedSubscript:{objc_msgSend(v3, "objectForKeyedSubscript:", *off_1E798B540)), "objectForKeyedSubscript:", *off_1E7989E50), "floatValue"}];
  v5 = v4;
  if (v4 <= 0.0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_115_0();
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      OUTLINED_FUNCTION_105_1();
      OUTLINED_FUNCTION_5_0();
    }

    OUTLINED_FUNCTION_13_0();
    v14 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v14, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWIrisStagingNode.m", 3846, @"LastShownDate:BWIrisStagingNode.m:3846", @"LastShownBuild:BWIrisStagingNode.m:3846", 0);
    free(v14);
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:*off_1E798B7B0];
    if (v6)
    {
      [v6 floatValue];
      return v5 * v7;
    }
  }

  return v5;
}

- (void)_feedTrimmerWithVideoSampleBuffer:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_60();
    v2 = v1;
    v4 = v3;
    v5 = CMGetAttachment(v1, *off_1E798A3C8, 0);
    v6 = [v5 objectForKeyedSubscript:*off_1E798B3D0];
    v7 = *(v4 + 528);
    [(BWIrisStagingNode *)v2 _hostPTSForSampleBuffer:v4, &v92];
    [v7 processISPMotionData:v6 forHostTime:&v92];
    if (*(v4 + 516) == 1)
    {
      v92.origin.x = 0.0;
      v92.origin.y = 0.0;
      __asm { FMOV            V0.2D, #1.0 }

      v92.size = _Q0;
      if (FigCFDictionaryGetCGRectIfPresent())
      {
        v94.origin.x = 0.0;
        v94.origin.y = 0.0;
        v94.size.width = 1.0;
        v94.size.height = 1.0;
        HIDWORD(v58) = !CGRectEqualToRect(v92, v94);
      }

      else
      {
        HIDWORD(v58) = 0;
      }

      v60 = [v5 objectForKeyedSubscript:*off_1E798B220];
      if ([v60 count])
      {
        v13 = *off_1E798AC90;
        v91[0] = *off_1E798ACB8;
        v91[1] = v13;
        v91[2] = *off_1E798ACA0;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:3];
        v14 = [obj countByEnumeratingWithState:&v87 objects:v86 count:16];
        if (v14)
        {
          v15 = v14;
          v54 = v4;
          v16 = 0;
          v17 = *v88;
          v57 = *off_1E798ACE8;
          v55 = *off_1E798B780;
          v59 = -1;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v88 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v19 = [v60 objectForKeyedSubscript:*(*(&v87 + 1) + 8 * i)];
              if (v19)
              {
                v20 = v19;
                v21 = [v19 objectForKeyedSubscript:v57];
                v29 = v21;
                if (HIDWORD(v58))
                {
                  v84 = 0u;
                  v85 = 0u;
                  v82 = 0u;
                  v83 = 0u;
                  v30 = OUTLINED_FUNCTION_125_0(v21, v22, v23, v24, v25, v26, v27, v28, v53, v54, v55, obj, v57, v58, v59, v60, v61, v62, v63, v64, *&v65.origin.x, *&v65.origin.y, *&v65.size.width, *&v65.size.height, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, 0);
                  if (v30)
                  {
                    v31 = v30;
                    v32 = *v83;
                    do
                    {
                      for (j = 0; j != v31; ++j)
                      {
                        if (*v83 != v32)
                        {
                          objc_enumerationMutation(v29);
                        }

                        memset(&v65, 0, sizeof(v65));
                        CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
                        if (CGRectIfPresent)
                        {
                          v93 = CGRectIntersection(v65, v92);
                          if (v93.size.width * v93.size.height <= v65.size.width * v65.size.height * 0.5)
                          {
                            v16 = v16;
                          }

                          else
                          {
                            v16 = (v16 + 1);
                          }
                        }
                      }

                      v31 = OUTLINED_FUNCTION_125_0(CGRectIfPresent, v35, v36, v37, v38, v39, v40, v41, v53, v54, v55, obj, v57, v58, v59, v60, v61, v62, v63, v64, *&v65.origin.x, *&v65.origin.y, *&v65.size.width, *&v65.size.height, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
                    }

                    while (v31);
                  }
                }

                else
                {
                  v16 = v16 + [v21 count];
                }

                if (v59 < 0)
                {
                  v59 = [objc_msgSend(v20 objectForKeyedSubscript:{v55), "longLongValue"}];
                }
              }
            }

            v15 = [obj countByEnumeratingWithState:&v87 objects:v86 count:16];
          }

          while (v15);
          if (v16 >= 1 && (v59 & 0x8000000000000000) == 0)
          {
            memset(&v65, 0, 24);
            v42 = FigHostTimeToNanoseconds();
            CMTimeMake(&v65, v42, 1000000000);
            v43 = OUTLINED_FUNCTION_65_2();
            *&v51 = OUTLINED_FUNCTION_36_8(v43, v44, v45, v46, v47, v48, v49, v50, v53, v54, v55, obj, v57, v58, v59, v60, v61, v62, v63, v64, *&v65.origin).n128_u64[0];
            [v52 processCountOfVisibleVitalityObjects:v16 forHostTime:{&v61, v51}];
          }
        }
      }
    }

    OUTLINED_FUNCTION_128_0();
  }
}

- (void)_findAndMarkCuttingBufferForVideoSbuf:(uint64_t)a1
{
  if (a1)
  {
    v4 = [objc_msgSend(*(a1 + 400) objectAtIndexedSubscript:{0), "lastObject"}];
    if (v4)
    {
      v5 = v4;
      v6 = *off_1E798A3C8;
      v7 = CMGetAttachment(v4, *off_1E798A3C8, 0);
      v8 = CMGetAttachment(a2, v6, 0);
      if (*(a1 + 560) == 1 && (*(a1 + 752) - 1) <= 1 && ((v9 = *off_1E798B540, v10 = [v7 objectForKeyedSubscript:*off_1E798B540], v11 = objc_msgSend(v8, "objectForKeyedSubscript:", v9), v12 = *off_1E798A0C0, v13 = objc_msgSend(v10, "isEqualToString:", *off_1E798A0C0), v14 = *off_1E798A0D0, v13) && (objc_msgSend(v11, "isEqualToString:", *off_1E798A0D0) & 1) != 0 || objc_msgSend(v10, "isEqualToString:", v14) && objc_msgSend(v11, "isEqualToString:", v12)))
      {
        if (dword_1ED844290)
        {
          v15 = OUTLINED_FUNCTION_27_5();
          OUTLINED_FUNCTION_136_0(v15);
          OUTLINED_FUNCTION_97_0();
          if (v17)
          {
            v18 = v16;
          }

          else
          {
            v18 = v12;
          }

          if (v18)
          {
            v19 = OUTLINED_FUNCTION_82_2();
            CMSampleBufferGetPresentationTimeStamp(v20, v19);
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_75();
            OUTLINED_FUNCTION_5_38();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_47_7();
          v21 = 1;
          OUTLINED_FUNCTION_31_0();
        }

        else
        {
          v21 = 1;
        }
      }

      else
      {
        v21 = 0;
      }

      OUTLINED_FUNCTION_38_0();
      if (v17)
      {
        v22 = *off_1E798A8F8;
        v23 = [+[FigCaptureSmartStyle createFromDictionary:](FigCaptureSmartStyle createFromDictionary:{objc_msgSend(v7, "objectForKeyedSubscript:", *off_1E798A8F8)), "cast"}];
        v24 = [+[FigCaptureSmartStyle createFromDictionary:](FigCaptureSmartStyle createFromDictionary:{objc_msgSend(v8, "objectForKeyedSubscript:", v22)), "cast"}];
        if (v23 != v24 && ([v23 isEqual:v24] & 1) == 0)
        {
          if (dword_1ED844290)
          {
            v25 = OUTLINED_FUNCTION_27_5();
            OUTLINED_FUNCTION_136_0(v25);
            OUTLINED_FUNCTION_97_0();
            if (v17)
            {
              v27 = v26;
            }

            else
            {
              v27 = FigCaptureSmartStyle;
            }

            if (v27)
            {
              v28 = OUTLINED_FUNCTION_82_2();
              CMSampleBufferGetPresentationTimeStamp(v29, v28);
              CMTimeGetSeconds(&time);
              OUTLINED_FUNCTION_75();
              OUTLINED_FUNCTION_5_38();
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_47_7();
            v21 = 1;
            OUTLINED_FUNCTION_31_0();
          }

          else
          {
            v21 = 1;
          }
        }
      }

      OUTLINED_FUNCTION_38_0();
      if (v17 && (v30 = *off_1E798A8A8, v31 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798A8A8), "intValue"}], v31 != objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", v30), "intValue")))
      {
        if (dword_1ED844290)
        {
          v32 = OUTLINED_FUNCTION_27_5();
          v33 = v41;
          os_log_type_enabled(v32, v40);
          OUTLINED_FUNCTION_97_0();
          if (v17)
          {
            v35 = v34;
          }

          else
          {
            v35 = v33;
          }

          if (v35)
          {
            v36 = OUTLINED_FUNCTION_82_2();
            CMSampleBufferGetPresentationTimeStamp(v37, v36);
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_75();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else if (!v21)
      {
        return;
      }

      v38 = *MEMORY[0x1E695E4D0];
      CMSetAttachment(a2, @"BufferRequiresCuttingInLivePhotoMovie", *MEMORY[0x1E695E4D0], 1u);
      CMSetAttachment(v5, *MEMORY[0x1E69604E0], v38, 1u);
    }
  }
}

- (uint64_t)_feedTrimmerWithInferencesSampleBuffer:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  AttachedInferenceResult = BWInferenceGetAttachedInferenceResult(a2, 101);
  result = [AttachedInferenceResult isValid];
  if (!result)
  {
    return result;
  }

  memset(&v22, 0, sizeof(v22));
  v5 = OUTLINED_FUNCTION_47_1();
  v8 = CMGetAttachment(v5, v6, v7);
  if (!v8)
  {
    CMSampleBufferGetPresentationTimeStamp(&v22, a2);
    if (AttachedInferenceResult)
    {
      goto LABEL_5;
    }

LABEL_7:
    OUTLINED_FUNCTION_66();
    goto LABEL_8;
  }

  CMTimeMakeFromDictionary(&v22, v8);
  if (!AttachedInferenceResult)
  {
    goto LABEL_7;
  }

LABEL_5:
  v9 = [AttachedInferenceResult timestamp];
LABEL_8:
  OUTLINED_FUNCTION_110_1(v9, v10, v11, v12, v13, v14, v15, v16, v19.value, *&v19.timescale, v19.epoch, v20, time2.value, *&time2.timescale, time2.epoch, *&v22.value);
  CMTimeCompare(&v19, &time2);
  v17 = [AttachedInferenceResult inferences];
  v18 = *(v3 + 528);
  if (AttachedInferenceResult)
  {
    [AttachedInferenceResult timestamp];
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  return [v18 processInferences:v17 forHostTime:&time2];
}

- (unint64_t)_trimQueueForInputIndex:(unint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E6960C70];
    value = *MEMORY[0x1E6960C70];
    timescale = *(MEMORY[0x1E6960C70] + 8);
    v5 = [*(result + 400) objectAtIndexedSubscript:a2];
    v6 = [v5 count];
    v7 = [objc_msgSend(v3 "inputs")];
    v8 = OUTLINED_FUNCTION_138(400);
    v9 = [v8 count];
    result = FigSimpleMutexCheckIsLockedOnThisThread();
    if (a2)
    {
      if (v9)
      {
        result = CMSampleBufferGetPresentationTimeStamp(&v21, [v8 objectAtIndexedSubscript:0]);
        value = v21.value;
        flags = v21.flags;
        timescale = v21.timescale;
        epoch = v21.epoch;
        if ((v21.flags & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        flags = *(v4 + 12);
        epoch = *(v4 + 16);
        if ((flags & 1) == 0)
        {
          return result;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_115_1();
      CMSampleBufferGetPresentationTimeStamp(&v21, [v5 lastObject]);
      lhs = v21;
      OUTLINED_FUNCTION_42_6(v3 + 152);
      CMTimeAdd(&v20, &lhs, &rhs);
      v21 = v20;
      memset(&v20, 0, sizeof(v20));
      OUTLINED_FUNCTION_42_6(v3 + 152);
      CMTimeMultiply(&lhs, &rhs, 3);
      rhs = *(v3 + 128);
      CMTimeAdd(&v20, &rhs, &lhs);
      rhs = v21;
      v17 = v20;
      result = CMTimeSubtract(&lhs, &rhs, &v17);
      value = lhs.value;
      flags = lhs.flags;
      timescale = lhs.timescale;
      epoch = lhs.epoch;
      if ((lhs.flags & 1) == 0)
      {
        return result;
      }
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__BWIrisStagingNode__trimQueueForInputIndex___block_invoke;
    v13[3] = &unk_1E7991AF8;
    v13[4] = v7;
    v13[5] = v5;
    v14 = timescale;
    v15 = flags;
    v16 = epoch;
    v13[6] = v3;
    v13[7] = v6;
    v13[8] = a2;
    v13[9] = value;
    result = [v5 removeObjectsAtIndexes:{objc_msgSend(v5, "indexesOfObjectsPassingTest:", v13)}];
    if (!a2)
    {
      if (*(v3 + 680) == 1)
      {
        v12 = *(v3 + 652);
      }

      else
      {
        v12 = [v7 delayedBufferCount];
      }

      result = [v5 count];
      if (result > v12)
      {
        [v5 count];
        return [OUTLINED_FUNCTION_4_3() removeObjectsInRange:?];
      }
    }
  }

  return result;
}

- (uint64_t)_emittingInputsCount
{
  if (result)
  {
    v1 = result;
    FigSimpleMutexCheckIsLockedOnThisThread();
    result = [objc_msgSend(v1 "inputs")];
    if (v1[71] == result - 1)
    {
      --result;
    }
  }

  return result;
}

- (void)_enqueueIrisRequest:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_54();
    FigSimpleMutexCheckIsLockedOnThisThread();
    OUTLINED_FUNCTION_33();
    if (v3)
    {
      if (*(v1 + 376))
      {
        v4 = [objc_msgSend(v2 "settings")];
        v5 = [v2 isOriginalPhotoRecording];
        v6 = &stru_1F216A3D0;
        if (v5)
        {
          v6 = @"_original";
        }

        [v2 setTemporaryMovieURL:{OUTLINED_FUNCTION_137_0(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"output%lld%@.mov", v4, v6))}];
        if ([v2 numberOfRequestedVariants] >= 2)
        {
          v75 = [objc_msgSend(v2 "settings")];
          v81 = @"_original";
          [v2 setTemporaryURLForSDOFOriginalMovie:{OUTLINED_FUNCTION_137_0(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"output%lld%@.mov"}];
        }

        if ([objc_msgSend(v2 "settings")])
        {
          [v2 setSpatialOverCaptureTemporaryMovieURL:{isn_addVariantToURL(objc_msgSend(v2, "temporaryMovieURL"))}];
        }
      }

      [OUTLINED_FUNCTION_123(464) addObject:?];
      if ([*(v1 + 464) count] >= 2)
      {
        [v2 setIsOverlappingRequest:1];
      }

      v8 = *(v1 + 152);
      v9 = *(v1 + 160);
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v10 = *(v1 + 592);
      if (v10)
      {
        [v10 previewFrameDuration];
        v11 = (v104 & 0x100000000) == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v8)
      {
        if (v11)
        {
          v12 = v9;
        }

        else
        {
          v12 = v104;
        }

        *&v7 = v12 / v8;
        [v2 setTargetFrameRate:v7];
      }

      OUTLINED_FUNCTION_115_1();
      v13 = [objc_msgSend(OUTLINED_FUNCTION_34_0(400) "objectAtIndexedSubscript:"firstObject"")];
      CMSampleBufferGetPresentationTimeStamp(&v102, v13);
      memset(&v101, 0, sizeof(v101));
      v14 = [objc_msgSend(OUTLINED_FUNCTION_34_0(400) "objectAtIndexedSubscript:"lastObject"")];
      CMSampleBufferGetPresentationTimeStamp(&v101, v14);
      OUTLINED_FUNCTION_81_1();
      if ([(BWIrisStagingNode *)v1 _emittingInputsCount]== 1)
      {
        OUTLINED_FUNCTION_122_2();
      }

      else
      {
        CMSampleBufferGetPresentationTimeStamp(&v100, [objc_msgSend(*(v1 + 400) objectAtIndexedSubscript:{1), "firstObject"}]);
      }

      memset(&v99, 0, sizeof(v99));
      if ([(BWIrisStagingNode *)v1 _emittingInputsCount]== 1)
      {
        OUTLINED_FUNCTION_123_1();
      }

      else
      {
        CMSampleBufferGetPresentationTimeStamp(&v99, [objc_msgSend(*(v1 + 400) objectAtIndexedSubscript:{1), "lastObject"}]);
      }

      if (v2)
      {
        v15 = [OUTLINED_FUNCTION_58_6() stillImageCaptureTime];
      }

      else
      {
        OUTLINED_FUNCTION_28_5();
      }

      v23 = OUTLINED_FUNCTION_56_4(v15, v16, v17, v18, v19, v20, v21, v22, v75, v81, v102.value, *&v102.timescale, v102.epoch, v88, time2.value);
      CMTimeSubtract(v25, v23, v24);
      *&time2.value = v98;
      [OUTLINED_FUNCTION_4_36() setStillTimeOffsetToVideoPrerollStartTime:?];
      if (v2)
      {
        v26 = [OUTLINED_FUNCTION_58_6() stillImageCaptureTime];
      }

      else
      {
        OUTLINED_FUNCTION_28_5();
      }

      v34 = OUTLINED_FUNCTION_56_4(v26, v27, v28, v29, v30, v31, v32, v33, v76, v82, v101.value, *&v101.timescale, v101.epoch, v88, time2.value);
      CMTimeSubtract(v36, v34, v35);
      *&time2.value = v97;
      [OUTLINED_FUNCTION_4_36() setStillTimeOffsetToVideoPrerollStopTime:?];
      if (v2)
      {
        v37 = [OUTLINED_FUNCTION_58_6() stillImageCaptureTime];
      }

      else
      {
        OUTLINED_FUNCTION_28_5();
      }

      v45 = OUTLINED_FUNCTION_56_4(v37, v38, v39, v40, v41, v42, v43, v44, v77, v83, v100.value, *&v100.timescale, v100.epoch, v88, time2.value);
      CMTimeSubtract(v47, v45, v46);
      *&time2.value = v96;
      [OUTLINED_FUNCTION_4_36() setStillTimeOffsetToAudioPrerollStartTime:?];
      if (v2)
      {
        v48 = [OUTLINED_FUNCTION_58_6() stillImageCaptureTime];
      }

      else
      {
        OUTLINED_FUNCTION_28_5();
      }

      v56 = OUTLINED_FUNCTION_56_4(v48, v49, v50, v51, v52, v53, v54, v55, v78, v84, v99.value, *&v99.timescale, v99.epoch, v88, time2.value);
      CMTimeSubtract(v58, v56, v57);
      *&time2.value = v95;
      [OUTLINED_FUNCTION_4_36() setStillTimeOffsetToAudioPrerollStopTime:?];
      if (*(v1 + 816) && !*(v1 + 824) && (*(v1 + 813) & 1) == 0)
      {
        v59 = [OUTLINED_FUNCTION_34_0(400) objectAtIndexedSubscript:?];
        memset(&v94, 0, sizeof(v94));
        -[BWIrisStagingNode _hostPTSForSampleBuffer:]([v59 lastObject], v1, &v94);
        OUTLINED_FUNCTION_67_1();
        if (v2)
        {
          v60 = [v2 stillImageCaptureHostTime];
          timescale = v93.timescale;
        }

        else
        {
          timescale = 0;
        }

        memset(&v92, 0, sizeof(v92));
        v62 = OUTLINED_FUNCTION_70_1(v60, timescale);
        CMTimeMake(&v92, v62, v63);
        lhs = v93;
        rhs = v92;
        CMTimeSubtract(&time2, &lhs, &rhs);
        lhs = v94;
        if (CMTimeCompare(&lhs, &time2) < 1 || (time2 = v93, lhs = v92, v68 = OUTLINED_FUNCTION_4_3(), -[BWIrisStagingNode _indexOfBufferBeforeOrEqualToHostPTS:inputIndex:tolerance:](v68, v69, v70, v71), OUTLINED_FUNCTION_79(), v3) || (v73 = [v59 objectAtIndexedSubscript:v72]) == 0)
        {
          if (dword_1ED844290)
          {
            LODWORD(rhs.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = rhs.value;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v66 = value;
            }

            else
            {
              v66 = value & 0xFFFFFFFE;
            }

            if (v66)
            {
              v67 = OUTLINED_FUNCTION_89_2(v94.epoch, v79, v85, lhs.value, *&lhs.timescale, lhs.epoch, v88, v94.value, *&v94.timescale, time2.epoch);
              OUTLINED_FUNCTION_89_2(v93.epoch, v80, v86, lhs.value, *&lhs.timescale, lhs.epoch, v88, v93.value, *&v93.timescale, time2.epoch);
              LODWORD(lhs.value) = 136315650;
              OUTLINED_FUNCTION_48_5();
              *(&lhs.flags + 2) = v67;
              OUTLINED_FUNCTION_15_11();
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
          v74 = v73;
          OUTLINED_FUNCTION_21_4(813);
          [(BWIrisStagingNode *)v1 _updateIrisInfoRequiresSRLCalculation:v2 withStillReferenceSampleBuffer:v74];
          if ([v2 requiresGlobalSubjectRelightingCalculation])
          {
            *(v1 + 824) = [*(v1 + 816) startCalculationWithJPEGSampleBuffer:v74 stillImageRequestSettings:objc_msgSend(v2 stillImageCaptureSettings:{"stillImageRequestSettings"), objc_msgSend(v2, "stillImageCaptureSettings")}];
          }
        }
      }
    }
  }
}

- (uint64_t)_flushAndSuspendStaging
{
  if (result)
  {
    v1 = result;
    v2 = FigSimpleMutexCheckIsLockedOnThisThread();
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = *(v1 + 400);
    v5 = OUTLINED_FUNCTION_37(v2, v4, &v13, v12);
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v13 + 1) + 8 * v8++) removeAllObjects];
        }

        while (v6 != v8);
        v6 = OUTLINED_FUNCTION_37(v9, v10, &v13, v12);
      }

      while (v6);
    }

    [*(v1 + 664) flush];
    [*(v1 + 672) flush];
    OUTLINED_FUNCTION_21_4(224);
    *&v11 = OUTLINED_FUNCTION_19_1((v1 + 228)).n128_u64[0];
    *(v1 + 225) = 0;
    return [*(v1 + 16) suspendResources];
  }

  return result;
}

- (uint64_t)_momentCaptureMovieRecordingInProgress
{
  if (result)
  {
    v1 = result;
    v2 = FigSimpleMutexCheckIsLockedOnThisThread();
    v3 = *(v1 + 464);
    result = OUTLINED_FUNCTION_57(v2, v4, v5, v6, v7, v8, v9, v10, v22);
    if (result)
    {
      v11 = result;
      v12 = MEMORY[0];
      while (2)
      {
        v13 = 0;
        do
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(v3);
          }

          v14 = [*(8 * v13) isMomentCaptureMovieRecording];
          if (v14)
          {
            return 1;
          }

          ++v13;
        }

        while (v11 != v13);
        result = OUTLINED_FUNCTION_57(v14, v15, v16, v17, v18, v19, v20, v21, v23);
        v11 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (void)setBeginIrisMovieCaptureTime:(id *)a3
{
  FigSimpleMutexLock();
  var3 = a3->var3;
  *&self->_beginIrisMovieCaptureTime.value = *&a3->var0;
  self->_beginIrisMovieCaptureTime.epoch = var3;
  self->_endIrisMovieCaptureTime = **&MEMORY[0x1E6960C70];
  [(BWIrisStagingNode *)self _resumeStaging];

  FigSimpleMutexUnlock();
}

- (void)_suspendStaging
{
  if (a1)
  {
    FigSimpleMutexCheckIsLockedOnThisThread();
    if ((*(a1 + 224) & 1) == 0)
    {
      OUTLINED_FUNCTION_33();
      if (v2)
      {
        OUTLINED_FUNCTION_21_4(225);
      }

      else
      {

        [(BWIrisStagingNode *)a1 _flushAndSuspendStaging];
      }
    }
  }
}

- (void)setBufferingTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_bufferingTime.value = *&a3->var0;
  self->_bufferingTime.epoch = var3;
  [(BWIrisStagingNode *)self _updateRetainedBufferCount];
}

- (uint64_t)_updateIrisInfoRequiresSRLCalculation:(CMAttachmentBearerRef)target withStillReferenceSampleBuffer:
{
  if (result)
  {
    v4 = [objc_msgSend(CMGetAttachment(target *off_1E798A3C8];

    return [a2 setStillImageRequiresSmartStyleRenderingForSRL:v4];
  }

  return result;
}

- (uint64_t)_indexOfBufferBeforeOrEqualToHostPTS:(uint64_t)a3 inputIndex:(CMTime *)a4 tolerance:
{
  if (!a1)
  {
    return 0;
  }

  v6 = [*(a1 + 400) objectAtIndexedSubscript:?];
  v7 = [v6 count];
  if (!v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    memset(v17, 0, sizeof(v17));
    -[BWIrisStagingNode _hostPTSForSampleBuffer:]([v6 objectAtIndexedSubscript:v9], a1, v17);
    memset(&v16, 0, sizeof(v16));
    OUTLINED_FUNCTION_59_4();
    CMTimeSubtract(&v16, &lhs, &v14);
    v14 = v16;
    CMTimeAbsoluteValue(&lhs, &v14);
    v14 = *a4;
    if ((CMTimeCompare(&v14, &lhs) & 0x80000000) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_59_4();
    v10 = CMTimeCompare(&lhs, &v14);
    if (v10 < 1)
    {
      ++v9;
    }

    if (v9 >= v8 || v10 >= 1)
    {
      v12 = v9 - 1;
      if (!v9)
      {
        v12 = 0;
      }

      if (v10 <= 0)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        return v12;
      }
    }
  }

  return v9;
}

- (void)_emitIrisMovieRequestWithInfo:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_54();
    v10 = 0;
    memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
    __dst.presentationTimeStamp = **&MEMORY[0x1E6960C80];
    if (!CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &__dst, 0, 0, &v10))
    {
      if (dword_1ED844290)
      {
        v8 = 0;
        v7 = 0;
        OUTLINED_FUNCTION_111_1();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_4_0();
        if (v3)
        {
          time = __dst.presentationTimeStamp;
          CMTimeGetSeconds(&time);
          OUTLINED_FUNCTION_75();
          OUTLINED_FUNCTION_5_38();
          OUTLINED_FUNCTION_5_0();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
      }

      CMSetAttachment(v10, @"IrisMovieRequest", v2, 1u);
      v5 = [v1 output];
      [v5 emitSampleBuffer:v10];
      if (v10)
      {
        CFRelease(v10);
      }
    }
  }
}

- (char)_emitBuffersThroughPTS:(char *)result
{
  if (result)
  {
    v3 = result;
    FigSimpleMutexCheckIsLockedOnThisThread();
    FigSimpleMutexCheckIsLockedOnThisThread();
    result = [objc_msgSend(v3 "inputs")];
    v4 = (*(v3 + 568) == result - 1 ? result - 1 : result);
    if (v4)
    {
      v27 = a2;
      v25 = &v25;
      v31 = (&v25 - ((8 * v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v30 = v31;
      v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      for (i = 0; i != v4; ++i)
      {
        v7 = [*(v3 + 400) objectAtIndexedSubscript:{i, v25}];
        v8 = [*(v3 + 408) objectAtIndexedSubscript:i];
        if (v8 == [MEMORY[0x1E695DFB0] null])
        {
          v10 = 0;
        }

        else
        {
          v9 = [v7 indexOfObjectIdenticalTo:{objc_msgSend(*(v3 + 408), "objectAtIndexedSubscript:", i)}];
          if (v9 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = 0;
          }

          else
          {
            v10 = v9 + 1;
          }
        }

        v11 = [v7 count];
        v12 = v30;
        v31[i] = v11;
        v12[i] = v10;
        v5[i] = v10 >= v11;
      }

      v26 = OUTLINED_FUNCTION_138(400);
      v13 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
      v14 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
      do
      {
        v35 = *v27;
        if ((*v5 & 1) == 0 && (*v30 + 1) < *v31)
        {
          memset(&v34, 0, sizeof(v34));
          CMSampleBufferGetPresentationTimeStamp(&v34, [v26 objectAtIndexedSubscript:?]);
          OUTLINED_FUNCTION_103_2();
          OUTLINED_FUNCTION_123_1();
          v15 = CMTimeCompare(&time1, &time2);
          if (v15 <= 0)
          {
            v16 = OUTLINED_FUNCTION_70_1(v15, v34.timescale);
            CMTimeMake(&time1, v16, v17);
            time2 = v34;
            CMTimeSubtract(&v35, &time2, &time1);
          }
        }

        OUTLINED_FUNCTION_101_1();
        OUTLINED_FUNCTION_122_2();
        v28 = CMTimeCompare(&v34, &time1);
        v29 = 0;
        for (j = 0; j != v4; ++j)
        {
          v19 = *(*(v3 + v13[764]) + 8 * j);
          result = [objc_msgSend(objc_msgSend(v3 "inputs")];
          if (result == 1936684398 && (*(v3 + 427) & 1) == 0)
          {
            result = *(v3 + v14[808]);
            if (result)
            {
              result = [result readyToReleaseAudio];
              v20 = result;
            }

            else
            {
              v20 = 1;
            }
          }

          else
          {
            v20 = 0;
          }

          if ((v5[v19] & 1) == 0)
          {
            v21 = &v30[v19];
            v22 = v31[v19];
            OUTLINED_FUNCTION_101_1();
            result = [(BWIrisStagingNode *)v3 _emitBuffersThroughPTS:v19 forInputIndex:v21 inOutBufferIndex:v22 bufferCount:?];
            if (*(v3 + 427))
            {
              v23 = 1;
            }

            else if (result > 0)
            {
              v23 = v20;
            }

            else
            {
              v23 = 0;
            }

            *(v3 + 427) = v23;
            if (v28 && result)
            {
              v24 = *v21 == v22;
              v5[v19] = v24;
              v13 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
              v14 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
              if (!v24)
              {
                ++v29;
              }
            }

            else
            {
              v5[v19] = 1;
              v13 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
              v14 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
            }
          }
        }
      }

      while (v29 > 0);
    }
  }

  return result;
}

- (uint64_t)_emitBuffersThroughPTS:(uint64_t)a3 forInputIndex:(unint64_t *)a4 inOutBufferIndex:(unint64_t)a5 bufferCount:
{
  if (!a1)
  {
    return 0;
  }

  v37 = [*(a1 + 400) objectAtIndexedSubscript:?];
  v10 = *a4;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (v10 >= a5)
  {
    v11 = 0;
  }

  else
  {
    v36 = a4;
    v11 = 0;
    v38 = 0x1F219BEF0;
    HIDWORD(v35) = a5 - v10;
    while (1)
    {
      v12 = [v37 objectAtIndexedSubscript:v10];
      memset(&v44, 0, sizeof(v44));
      CMSampleBufferGetPresentationTimeStamp(&v44, v12);
      time1 = *a2;
      time2 = v44;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        break;
      }

      if (!a3 && [OUTLINED_FUNCTION_96_1() count])
      {
        while ([OUTLINED_FUNCTION_96_1() count])
        {
          v13 = [OUTLINED_FUNCTION_96_1() objectAtIndexedSubscript:0];
          memset(&time1, 0, sizeof(time1));
          CMTimeMakeFromDictionary(&time1, v13);
          v14 = *(a1 + 496);
          time2 = time1;
          v15 = *v14;
          v39.epoch = *(v14 + 2);
          *&v39.value = v15;
          v16 = CMTimeCompare(&time2, &v39);
          if (v16 >= 1)
          {
            OUTLINED_FUNCTION_36_8(v16, v17, v18, v19, v20, v21, v22, v23, v35, v36, v37, v38, v39.value, *&v39.timescale, v39.epoch, v40, time2.value, *&time2.timescale, time2.epoch, v42, *&time1.value);
            v39 = v44;
            if (CMTimeCompare(&time2, &v39) >= 1)
            {
              break;
            }

            *&v31 = OUTLINED_FUNCTION_36_8(BWDroppedSample, v24, v25, v26, v27, v28, v29, v30, v35, v36, v37, v38, v39.value, *&v39.timescale, v39.epoch, v40, time2.value, *&time2.timescale, time2.epoch, v42, *&time1.value).n128_u64[0];
            v33 = [v32 newDroppedSampleWithReason:v38 pts:{&time2, v31}];
            [*(a1 + 16) emitDroppedSample:v33];
          }

          [OUTLINED_FUNCTION_96_1() removeObject:v13];
        }
      }

      [(BWIrisStagingNode *)a1 _emitSampleBuffer:v12 forInputIndex:a3];
      v11 = (v11 + 1);
      if (++v10 == a5)
      {
        v10 = a5;
        v11 = HIDWORD(v35);
        break;
      }
    }

    a4 = v36;
  }

  *a4 = v10;
  return v11;
}

- (void)_processQueuedVideoFrames
{
  if (a1)
  {
    OUTLINED_FUNCTION_60();
    v2 = v1;
    v3 = [*(v1 + 400) objectAtIndexedSubscript:0];
    v4 = [v3 count];
    v5 = v4;
    if (*(v2 + 600) && (*(v2 + 444) & 1) != 0 && v4 >= 2)
    {
      memset(&v298, 0, sizeof(v298));
      v6 = v4;
      CMSampleBufferGetPresentationTimeStamp(&v298, [v3 objectAtIndexedSubscript:v4 - 1]);
      OUTLINED_FUNCTION_81_1();
      CMSampleBufferGetPresentationTimeStamp(&v297, [v3 objectAtIndexedSubscript:v5 - 2]);
      OUTLINED_FUNCTION_8_24();
      *&v7 = OUTLINED_FUNCTION_119_0().n128_u64[0];
      v9 = [v8 discontinuityExistsBetweenCurrentPTS:time previousPTS:{&time2, v7}];
      v10 = (v2 + 432);
      if (v9)
      {
        OUTLINED_FUNCTION_19_1(v10);
        if (dword_1ED844290)
        {
          v11 = OUTLINED_FUNCTION_74_1();
          OUTLINED_FUNCTION_132_1(v11, v12, v13, v14, v15, v16, v17, v18, v203, v210, v217, v224, v231, v238, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), time2.value, *&time2.timescale, time2.epoch, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275.value);
          OUTLINED_FUNCTION_30();
          time[0] = v297;
          CMTimeGetSeconds(time);
          OUTLINED_FUNCTION_8_24();
          Seconds = CMTimeGetSeconds(time);
          OUTLINED_FUNCTION_26_6(Seconds);
          OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_141();
          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_56_0();
        }
      }

      else
      {
        time[0] = v298;
        *&time2.value = *v10;
        time2.epoch = *(v2 + 448);
        if ((CMTimeCompare(time, &time2) & 0x80000000) == 0)
        {
          if (dword_1ED844290)
          {
            v20 = OUTLINED_FUNCTION_74_1();
            OUTLINED_FUNCTION_132_1(v20, v21, v22, v23, v24, v25, v26, v27, v203, v210, v217, v224, v231, v238, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), time2.value, *&time2.timescale, time2.epoch, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275.value);
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_8_24();
            CMTimeGetSeconds(time);
            time[0] = *(v2 + 432);
            v28 = CMTimeGetSeconds(time);
            OUTLINED_FUNCTION_26_6(v28);
            OUTLINED_FUNCTION_11_0();
            OUTLINED_FUNCTION_141();
            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_56_0();
          }

          OUTLINED_FUNCTION_19_1((v2 + 432));
        }
      }

      v5 = v6;
    }

    *v294 = 0u;
    v295 = 0u;
    *v292 = 0u;
    v293 = 0u;
    v29 = [v3 reverseObjectEnumerator];
    v30 = [v29 countByEnumeratingWithState:v292 objects:v291 count:16];
    v31 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    if (v30)
    {
      v32 = v30;
      v33 = *v293;
      v34 = v5;
      while (2)
      {
        v35 = 0;
        v36 = v34 - v32;
        do
        {
          if (*v293 != v33)
          {
            objc_enumerationMutation(v29);
          }

          v37 = *(v292[1] + 8 * v35);
          memset(time, 0, 24);
          CMSampleBufferGetPresentationTimeStamp(time, v37);
          time2 = time[0];
          v298 = *(v2 + 328);
          if (CMTimeCompare(&time2, &v298) < 1)
          {
            v38 = v34 - v35;
            goto LABEL_23;
          }

          ++v35;
        }

        while (v32 != v35);
        v32 = [v29 countByEnumeratingWithState:v292 objects:v291 count:16];
        v34 = v36;
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v38 = 0;
LABEL_23:
    if (v38 < v5)
    {
      v39 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
      v231 = v5;
      while (1)
      {
        v40 = [v3 objectAtIndexedSubscript:v38];
        memset(&v298, 0, sizeof(v298));
        CMSampleBufferGetPresentationTimeStamp(&v298, v40);
        v41 = [BWIrisStagingNode _emissionStatusForSampleBuffer:v2];
        switch(v41)
        {
          case 1:
          case 2:
            v42 = v41;
            v43 = (v2 + 304);
            if ((*(v2 + 316) & 1) == 0)
            {
              *v43 = *&v298.value;
              *(v2 + 320) = v298.epoch;
            }

            memcpy(time, MEMORY[0x1E6960CF0], 0x48uLL);
            *&time[1].value = *v43;
            time[1].epoch = *(v2 + 320);
            OUTLINED_FUNCTION_88_1(&time2);
            v297 = *(v2 + 152);
            CMTimeSubtract(time, &v297, &time2);
            OUTLINED_FUNCTION_81_1();
            time2 = time[1];
            rhs = time[0];
            v44 = CMTimeAdd(&v297, &time2, &rhs);
            if (*(v2 + 512) == 2)
            {
              *v288 = 0u;
              v289 = 0u;
              *v286 = 0u;
              v287 = 0u;
              v117 = *(v2 + v39[737]);
              v118 = OUTLINED_FUNCTION_134_1(v44, v45, v46, v47, v48, v49, v50, v51, v203, v210, v217, v3, v231, v238, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), time2.value, *&time2.timescale, time2.epoch, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275.value, *&v275.timescale, v275.epoch, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285);
              if (!v118)
              {
LABEL_81:
                rhs = v298;
                OUTLINED_FUNCTION_92_2(v118, v119, v120, v121, v122, v123, v124, v125, v207, v214, v221, v228, v235, v242, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), time2.value);
                [(BWIrisStagingNode *)v2 _emitIrisRequestsOlderThanTime:&time2 withEndingVideoSampleTimingInfo:v172, v173, v174, v175, v176];
                v3 = v224;
                v31 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                v39 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                goto LABEL_53;
              }

              v126 = v118;
              v127 = *v287;
              while (2)
              {
                v128 = 0;
LABEL_62:
                if (*v287 != v127)
                {
                  objc_enumerationMutation(v117);
                }

                v129 = *(v286[1] + 8 * v128);
                if (v129)
                {
                  v130 = [*(v286[1] + 8 * v128) stillImageCaptureTime];
                }

                else
                {
                  OUTLINED_FUNCTION_67_1();
                }

                if ((OUTLINED_FUNCTION_13_17(v130, v131, v132, v133, v134, v135, v136, v137, v207, v214, v221, v228, v235, v242, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), time2.value) & 0x80000000) == 0)
                {
                  if (v129)
                  {
                    v139 = [v129 movieStartTime];
                  }

                  else
                  {
                    OUTLINED_FUNCTION_67_1();
                  }

                  v147 = OUTLINED_FUNCTION_13_17(v139, v140, v141, v142, v143, v144, v145, v146, v207, v214, v221, v228, v235, v242, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), time2.value);
                  if (v42 == 2 && (v147 & 0x80000000) != 0)
                  {
                    OUTLINED_FUNCTION_30_4(v147, v148, v149, v150, v151, v152, v153, v154, v207, v214, v221, v228, v235, v242, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), *&time2.value, time2.epoch, v266, v267, v268, v269, v270, v271, v272, v273, v274, *&v275.value, v275.epoch);
                    OUTLINED_FUNCTION_88_1(&v275);
                    v155 = CMTimeSubtract(&time2, &rhs, &v275);
                    v163 = OUTLINED_FUNCTION_29_3(v155, v156, v157, v158, v159, v160, v161, v162, v208, v215, v222, v229, v236, v243, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), *&time2.value, time2.epoch, v266, v267, v268, v269, v270, v271, v272, v273, v274, *&v275.value, v275.epoch);
                    *&v138 = OUTLINED_FUNCTION_51_5(v163, v164, v165, v166, v167, v168, v169, v170, v209, v216, v223, v230, v237, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), v171, time2.value).n128_u64[0];
                    break;
                  }

LABEL_79:
                  if (v126 == ++v128)
                  {
                    v118 = OUTLINED_FUNCTION_134_1(v147, v148, v149, v150, v151, v152, v153, v154, v207, v214, v221, v228, v235, v242, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), time2.value, *&time2.timescale, time2.epoch, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275.value, *&v275.timescale, v275.epoch, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285);
                    v126 = v118;
                    if (!v118)
                    {
                      goto LABEL_81;
                    }

                    continue;
                  }

                  goto LABEL_62;
                }

                break;
              }

              if (v129)
              {
                v147 = [v129 movieTrimEndTime];
                if ((v273 & 0x100000000) != 0)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v272 = 0;
                v273 = 0;
                v274 = 0;
              }

              v147 = [v129 setMovieTrimEndTime:{&time2, OUTLINED_FUNCTION_119_0().n128_f64[0]}];
              goto LABEL_79;
            }

            *v263 = 0u;
            v264 = 0u;
            *v261 = 0u;
            v262 = 0u;
            v52 = *(v2 + v39[737]);
            v53 = [v52 countByEnumeratingWithState:v261 objects:&v245 count:16];
            if (v53)
            {
              v54 = v53;
              v224 = v3;
              v238 = *v262;
              v55 = 0;
              do
              {
                v56 = 0;
                v57 = v55;
                v217 = v55 + v54;
                do
                {
                  if (*v262 != v238)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v58 = *(v261[1] + 8 * v56);
                  if (v58)
                  {
                    v59 = [*(v261[1] + 8 * v56) stillImageCaptureTime];
                  }

                  else
                  {
                    OUTLINED_FUNCTION_67_1();
                  }

                  if ((OUTLINED_FUNCTION_13_17(v59, v60, v61, v62, v63, v64, v65, v66, v203, v210, v217, v224, v231, v238, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), time2.value) & 0x80000000) != 0)
                  {
                    v102 = v42 == 2;
                    v101 = v58;
                  }

                  else
                  {
                    if (v58)
                    {
                      v68 = [v58 movieStartTime];
                    }

                    else
                    {
                      OUTLINED_FUNCTION_67_1();
                    }

                    v76 = OUTLINED_FUNCTION_13_17(v68, v69, v70, v71, v72, v73, v74, v75, v204, v211, v218, v225, v232, v239, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), time2.value);
                    if (v42 != 2 || (v76 & 0x80000000) == 0)
                    {
                      v55 = v57;
                      v31 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                      goto LABEL_50;
                    }

                    OUTLINED_FUNCTION_30_4(v76, v77, v78, v79, v80, v81, v82, v83, v203, v210, v217, v224, v231, v238, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), *&time2.value, time2.epoch, v266, v267, v268, v269, v270, v271, v272, v273, v274, *&v275.value, v275.epoch);
                    OUTLINED_FUNCTION_88_1(&v275);
                    v84 = CMTimeSubtract(&time2, &rhs, &v275);
                    v92 = OUTLINED_FUNCTION_29_3(v84, v85, v86, v87, v88, v89, v90, v91, v205, v212, v219, v226, v233, v240, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), *&time2.value, time2.epoch, v266, v267, v268, v269, v270, v271, v272, v273, v274, *&v275.value, v275.epoch);
                    *&v67 = OUTLINED_FUNCTION_51_5(v92, v93, v94, v95, v96, v97, v98, v99, v206, v213, v220, v227, v234, v241, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), v100, time2.value).n128_u64[0];
                    v101 = v58;
                    v102 = 1;
                  }

                  v103 = [v101 setIsHardCut:{v102, v67}];
                  OUTLINED_FUNCTION_92_2(v103, v104, v105, v106, v107, v108, v109, v110, v204, v211, v218, v225, v232, v239, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), time2.value);
                  v111 = OUTLINED_FUNCTION_112_3();
                  [(BWIrisStagingNode *)v111 _emitIrisRequest:v112 withEndingVideoSampleTimingInfo:v113];
                  ++v57;
                  ++v56;
                  v31 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                }

                while (v54 != v56);
                v114 = [v52 countByEnumeratingWithState:v261 objects:&v245 count:16];
                v54 = v114;
                v55 = v217;
              }

              while (v114);
LABEL_50:
              v3 = v224;
              v39 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
              if (v55)
              {
                [OUTLINED_FUNCTION_34_0(464) removeObjectsInRange:?];
              }
            }

            if (![*(v2 + v39[737]) count])
            {
              goto LABEL_54;
            }

LABEL_53:
            OUTLINED_FUNCTION_24_7(304);
LABEL_54:
            v5 = v231;
LABEL_56:
            if (![*(v2 + v39[737]) count])
            {
              goto LABEL_97;
            }

            if (++v38 == v5)
            {
              goto LABEL_84;
            }

            break;
          case 3:
            *&v115 = OUTLINED_FUNCTION_8_24().n128_u64[0];
            [v116 stagingNode:v2 waitingToEmitFrameWithPTS:{time, v115}];
            goto LABEL_56;
          case 4:
            memcpy(time, MEMORY[0x1E6960CF0], 0x48uLL);
            time[1] = *(v2 + 304);
            OUTLINED_FUNCTION_103_2();
            OUTLINED_FUNCTION_92_2(v177, v178, v179, v180, v181, v182, v183, v184, v203, v210, v217, v224, v231, v238, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), time2.value);
            [(BWIrisStagingNode *)v2 _emitIrisRequestsOlderThanTime:&time2 withEndingVideoSampleTimingInfo:v185, v186, v187, v188, v189];
            OUTLINED_FUNCTION_24_7(304);
            goto LABEL_56;
          case 5:
            *&v190 = OUTLINED_FUNCTION_8_24().n128_u64[0];
            [v191 stagingNode:v2 waitingToEmitFrameWithPTS:{time, v190}];
            goto LABEL_84;
          default:
            goto LABEL_56;
        }
      }
    }

LABEL_84:
    v192 = (v2 + 304);
    if ((*(v2 + 316) & 1) == 0)
    {
      goto LABEL_97;
    }

    memset(time, 0, 24);
    if (*(v2 + 528) && (*(v2 + 428) & 1) == 0)
    {
      *&time[0].value = *v192;
      time[0].epoch = *(v2 + 320);
    }

    else
    {
      CMTimeMake(&time2, 150, 1000);
      *&v298.value = *v192;
      v298.epoch = *(v2 + 320);
      CMTimeSubtract(time, &v298, &time2);
    }

    if (*(v2 + 444))
    {
      v193 = [v3 count];
      if (v193 + ~[*(v2 + 600) maximumNumberOfPreDiscontinuityFramesNeededToSatisfyAllDropFrameRecipes] < 0)
      {
        *&time[0].value = *MEMORY[0x1E6960C70];
        epoch = *(MEMORY[0x1E6960C70] + 16);
      }

      else
      {
        OUTLINED_FUNCTION_67_1();
        PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&time2, [v3 objectAtIndexedSubscript:?]);
        v298 = time[0];
        OUTLINED_FUNCTION_51_5(PresentationTimeStamp, v195, v196, v197, v198, v199, v200, v201, v203, v210, v217, v224, v231, v238, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261[0], v261[1], v262, *(&v262 + 1), v263[0], v263[1], v264, *(&v264 + 1), *&time[0].value, time2.value);
        if (CMTimeCompare(&v298, &v297) < 0)
        {
          goto LABEL_95;
        }

        *&time[0].value = *&time2.value;
        epoch = time2.epoch;
      }

      time[0].epoch = epoch;
    }

LABEL_95:
    if (time[0].flags)
    {
      time2 = time[0];
      [(BWIrisStagingNode *)v2 _emitBuffersThroughPTS:?];
    }

LABEL_97:
    OUTLINED_FUNCTION_128_0();
  }
}

- (uint64_t)_emissionStatusForSampleBuffer:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_54();
    memset(&v53, 0, sizeof(v53));
    CMSampleBufferGetPresentationTimeStamp(&v53, v3);
    v51 = 0uLL;
    v52 = 0;
    LOBYTE(v49) = v53.value;
    OUTLINED_FUNCTION_43_6(v1 + 152);
    v12 = OUTLINED_FUNCTION_56_4(v4, v5, v6, v7, v8, v9, v10, v11, v41, v44, *v47, *&v47[8], *&v47[16], v48, v49);
    CMTimeAdd(v14, v12, v13);
    v49 = 0uLL;
    v50 = 0;
    OUTLINED_FUNCTION_43_6(v1 + 200);
    v23 = OUTLINED_FUNCTION_56_4(v15, v16, v17, v18, v19, v20, v21, v22, v42, v45, *v47, *&v47[8], *&v47[16], v48, 0);
    if (CMTimeCompare(v23, v24) >= 1)
    {
      v25 = [*(v1 + 464) lastObject];
      if (!v25)
      {
        return 1;
      }

      [v25 stillImageCaptureTime];
      OUTLINED_FUNCTION_43_6(v1 + 200);
      v34 = OUTLINED_FUNCTION_56_4(v26, v27, v28, v29, v30, v31, v32, v33, v43, v46, *v47, *&v47[8], *&v47[16], v48, v49);
      if (CMTimeCompare(v34, v35) < 0)
      {
        return 1;
      }
    }

    if (([(BWIrisStagingNode *)v1 _momentCaptureMovieRecordingInProgress]& 1) != 0)
    {
      return 4;
    }

    if (![CMGetAttachment(v2 @"BufferRequiresCuttingInLivePhotoMovie"])
    {
      if (*(v1 + 512))
      {
        OUTLINED_FUNCTION_28_5();
        [(BWIrisStagingNode *)v2 _hostPTSForSampleBuffer:v1, &v49];
        v40 = *(v1 + 528);
        *v47 = v49;
        *&v47[16] = v50;
        return [v40 emissionStatusForHostPTS:v47];
      }

      return 4;
    }

    if (dword_1ED844290)
    {
      OUTLINED_FUNCTION_111_1();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_115_0();
      if (v38)
      {
        v39 = v37;
      }

      else
      {
        v39 = 0;
      }

      if (v39)
      {
        OUTLINED_FUNCTION_89_2(v53.epoch, v43, v46, *v47, *&v47[8], *&v47[16], v48, v53.value, *&v53.timescale, v50);
        *v47 = 136315650;
        OUTLINED_FUNCTION_48_5();
        *&v47[14] = v1;
        OUTLINED_FUNCTION_15_11();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }

    return 2;
  }

  return result;
}

- (uint64_t)_emitIrisRequestsOlderThanTime:(uint64_t)a3 withEndingVideoSampleTimingInfo:(uint64_t)a4
{
  if (result)
  {
    v8 = a3;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v9 = *(result + 464);
    result = OUTLINED_FUNCTION_124_2(result, a2, a3, a4, a5, a6, a7, a8, v36, v38, v40, v42, v45, v47, v48, v50, v52, v54, *v56, *&v56[8], *&v56[16], v57, *v58, *&v58[8], *&v58[16], *&v58[24], time1[0].value, *&time1[0].timescale, time1[0].epoch, time1[1].value, *&time1[1].timescale, time1[1].epoch, time1[2].value, *&time1[2].timescale, time1[2].epoch, v60, v61, v62, v63, v64, v65, v66, v67, v68, time2[0].value, *&time2[0].timescale, time2[0].epoch, time2[1].value, *&time2[1].timescale, time2[1].epoch, time2[2].value, *&time2[2].timescale, time2[2].epoch, time2[3].value, *&time2[3].timescale, time2[3].epoch, v70);
    if (result)
    {
      v11 = result;
      v12 = 0;
      v55 = *v72;
      *&v10 = 136316418;
      v46 = v10;
LABEL_4:
      v13 = 0;
      v43 = v12 + v11;
      while (1)
      {
        if (*v72 != v55)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v71 + 1) + 8 * v13);
        memset(&time2[3], 0, sizeof(CMTime));
        v15 = OUTLINED_FUNCTION_112_3();
        [(BWIrisStagingNode *)v15 _maxPTSForIrisRequest:v16, v17];
        OUTLINED_FUNCTION_99_1();
        time2[0] = time2[3];
        result = CMTimeCompare(time1, time2);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        memcpy(time2, MEMORY[0x1E6960CF0], 0x48uLL);
        if ([v14 isMomentCaptureMovieRecording])
        {
          v51 = v9;
          v53 = v8;
          time2[1] = time2[3];
          HIDWORD(v68) = 0;
          BYTE3(v68) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v19 = HIDWORD(v68);
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v68)))
          {
            v20 = v19;
          }

          else
          {
            v20 = v19 & 0xFFFFFFFE;
          }

          if (v20)
          {
            v41 = [objc_msgSend(v14 "settings")];
            OUTLINED_FUNCTION_99_1();
            Seconds = CMTimeGetSeconds(time1);
            time1[0] = *(v53 + 24);
            v22 = CMTimeGetSeconds(time1);
            time1[0] = *v53;
            v23 = CMTimeGetSeconds(time1);
            time1[0] = time2[3];
            v24 = CMTimeGetSeconds(time1);
            *v56 = v46;
            *&v56[4] = "[BWIrisStagingNode _emitIrisRequestsOlderThanTime:withEndingVideoSampleTimingInfo:]";
            *&v56[12] = 2048;
            *&v56[14] = v41;
            *&v56[22] = 2048;
            v57 = *&Seconds;
            *v58 = 2048;
            *&v58[2] = v22;
            *&v58[10] = 2048;
            *&v58[12] = v23;
            *&v58[20] = 2048;
            *&v58[22] = v24;
            LODWORD(v39) = 62;
            v37 = v56;
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v8 = v53;
        }

        else
        {
          memcpy(time2, v8, 0x48uLL);
        }

        memcpy(time1, time2, sizeof(time1));
        v25 = OUTLINED_FUNCTION_112_3();
        [(BWIrisStagingNode *)v25 _emitIrisRequest:v26 withEndingVideoSampleTimingInfo:v27];
        ++v12;
        if (v11 == ++v13)
        {
          result = OUTLINED_FUNCTION_124_2(v28, v29, v30, v31, v32, v33, v34, v35, v37, v39, v41, v43, v46, *(&v46 + 1), v49, v51, v53, v55, *v56, *&v56[8], *&v56[16], v57, *v58, *&v58[8], *&v58[16], *&v58[24], time1[0].value, *&time1[0].timescale, time1[0].epoch, time1[1].value, *&time1[1].timescale, time1[1].epoch, time1[2].value, *&time1[2].timescale, time1[2].epoch, v60, v61, v62, v63, v64, v65, v66, v67, v68, time2[0].value, *&time2[0].timescale, time2[0].epoch, time2[1].value, *&time2[1].timescale, time2[1].epoch, time2[2].value, *&time2[2].timescale, time2[2].epoch, time2[3].value, *&time2[3].timescale, time2[3].epoch, v70);
          v11 = result;
          v12 = v44;
          if (result)
          {
            goto LABEL_4;
          }

          break;
        }
      }

      if (v12 >= 1)
      {
        return [OUTLINED_FUNCTION_34_0(464) removeObjectsInRange:?];
      }
    }
  }

  return result;
}

- (void)_fillInStartAndTrimTimesForMasterMovieWithInfo:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_60();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    memset(v201, 0, 24);
    if (v3)
    {
      [OUTLINED_FUNCTION_82_2() stillImageCaptureTime];
    }

    else
    {
      memset(&v173, 0, sizeof(v173));
    }

    OUTLINED_FUNCTION_6_3(v6 + 128);
    v15 = OUTLINED_FUNCTION_117_1(v7, v8, v9, v10, v11, v12, v13, v14, v154, v159, v164, v167, lhs.value, *&lhs.timescale, lhs.epoch, v171, v172, *(&v172 + 1), v173.value);
    CMTimeSubtract(v17, v15, v16);
    v18 = *MEMORY[0x1E6960C70];
    value = *MEMORY[0x1E6960C70];
    v19 = *(MEMORY[0x1E6960C70] + 8);
    v20 = *(MEMORY[0x1E6960C70] + 12);
    timescale = v19;
    v21 = *(MEMORY[0x1E6960C70] + 16);
    v198 = v201[0];
    v22 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    v23 = *(v6 + 512);
    if ((v23 - 1) >= 2)
    {
      if (!v23)
      {
        OUTLINED_FUNCTION_76_1();
      }
    }

    else
    {
      memset(&v173, 0, sizeof(v173));
      if (v4)
      {
        [OUTLINED_FUNCTION_109_1() stillImageCaptureHostTime];
      }

      else
      {
        OUTLINED_FUNCTION_66();
      }

      v197 = *(v6 + 128);
      CMTimeSubtract(&v173, &lhs, &v197);
      OUTLINED_FUNCTION_66();
      if (v4)
      {
        [OUTLINED_FUNCTION_109_1() stillImageCaptureHostTime];
      }

      memset(&v197, 0, sizeof(v197));
      v24 = *(v6 + 528);
      if (v24 && (v196 = lhs, time = v173, [v24 beginTrimmingForStillImageHostPTS:&v196 minimumPTS:&time], (v197.flags & 1) != 0))
      {
        HostTimeClock = CMClockGetHostTimeClock();
        v56 = *(v6 + 504);
        time = v197;
        CMSyncConvertTime(&v196, &time, HostTimeClock, v56);
        value = v196.value;
        flags = v196.flags;
        timescale = v196.timescale;
        epoch = v196.epoch;
        if (v4)
        {
          [v4 stillImageCaptureTime];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        *(&v193 + 1) = __PAIR64__(flags, timescale);
        v194 = epoch;
        v192 = v201[0];
        *&v193 = value;
        [(BWIrisStagingNode *)v6 _adjustedStartTimeForTrimmedStartTime:&time.value ensuringAtLeast3FramesBeforeStillTime:0 ensuringFrameIsAfterTrimmedStartTime:&v192.value butNotEarlierThanOriginalStartTime:0 adjustedStartBufferIndexOut:&v196];
        value = v196.value;
        v20 = v196.flags;
        timescale = v196.timescale;
        v21 = v196.epoch;
        if (*(v6 + 512) == 1)
        {
          v201[0].value = value;
          *&v201[0].timescale = __PAIR64__(v196.flags, timescale);
          v201[0].epoch = v196.epoch;
        }
      }

      else
      {
        value = v18;
        timescale = v19;
      }
    }

    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_0();
      if (!v25)
      {
        goto LABEL_50;
      }
    }

    *&v26 = OUTLINED_FUNCTION_9_21().n128_u64[0];
    v191 = OUTLINED_FUNCTION_135_1(v27, v28, v29, v30, v31, v32, v33, v34, v155, v160, v26);
    OUTLINED_FUNCTION_79();
    if (v25)
    {
      goto LABEL_50;
    }

    v35 = [*(v6 + 400) objectAtIndexedSubscript:0];
    PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&v173, [v35 objectAtIndexedSubscript:v191]);
    OUTLINED_FUNCTION_50_5(PresentationTimeStamp, v37, v38, v39, v40, v41, v42, v43, v156, v161, v165, v168, lhs.value, *&lhs.timescale, lhs.epoch, v171, v172, *(&v172 + 1), v44, v173.value);
    if (*(v6 + 188))
    {
      v173 = v201[0];
      OUTLINED_FUNCTION_6_3(v6 + 176);
      v53 = OUTLINED_FUNCTION_117_1(v45, v46, v47, v48, v49, v50, v51, v52, v157, v162, v166, v169, lhs.value, *&lhs.timescale, lhs.epoch, v171, v172, *(&v172 + 1), v173.value);
      if (CMTimeCompare(v53, v54) < 0)
      {
        if (v4)
        {
          [OUTLINED_FUNCTION_109_1() stillImageCaptureTime];
        }

        else
        {
          OUTLINED_FUNCTION_66();
        }

        v197 = *(v6 + 176);
        v196 = v198;
        v59 = [(BWIrisStagingNode *)v6 _adjustedStartTimeForTrimmedStartTime:&lhs.value ensuringAtLeast3FramesBeforeStillTime:1 ensuringFrameIsAfterTrimmedStartTime:&v196.value butNotEarlierThanOriginalStartTime:&v191 adjustedStartBufferIndexOut:&v173];
        [v4 setMovieStartTimeRequiresCutting:{1, OUTLINED_FUNCTION_50_5(v59, v60, v61, v62, v63, v64, v65, v66, v157, v162, v166, v169, lhs.value, *&lhs.timescale, lhs.epoch, v171, v172, *(&v172 + 1), v67, v173.value).n128_f64[0]}];
      }
    }

    v189 = 0;
    v190 = 0x7FFFFFFFFFFFFFFFLL;
    v188 = 0uLL;
    if (v4)
    {
      [OUTLINED_FUNCTION_82_2() stillImageCaptureTime];
    }

    else
    {
      memset(&v173, 0, sizeof(v173));
    }

    [(BWIrisStagingNode *)v6 _mostRecentCuttingBufferPTSBeforePTS:&v190 cuttingBufferIndexOut:&v188];
    if (BYTE12(v188))
    {
      OUTLINED_FUNCTION_9_21();
      v76 = OUTLINED_FUNCTION_117_1(v68, v69, v70, v71, v72, v73, v74, v75, v157, v162, v166, v169, v188, *(&v188 + 1), v189, v171, v172, *(&v172 + 1), v173.value);
      if (CMTimeCompare(v76, v77) < 0)
      {
        OUTLINED_FUNCTION_102_1();
        *&v201[0].value = v188;
        v201[0].epoch = v189;
        v191 = v190;
        [v4 setMovieStartTimeRequiresCutting:1];
        if (dword_1ED844290)
        {
          v78 = OUTLINED_FUNCTION_75_1();
          OUTLINED_FUNCTION_133_2(v78, v79, v80, v81, v82, v83, v84, v85, v157, v162, v166, v2, lhs.value, *&lhs.timescale, lhs.epoch, v171, v172, *(&v172 + 1), v173.value, *&v173.timescale, v173.epoch, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192.value, *&v192.timescale, v192.epoch, v193, *(&v193 + 1), v194, time.value);
          OUTLINED_FUNCTION_30();
          if (v2)
          {
            v94 = OUTLINED_FUNCTION_93_0(v86, v87, v88, v89, v90, v91, v92, v93, v157, v162, v166, v169, lhs.value, *&lhs.timescale, lhs.epoch, v171, v172, *(&v172 + 1), *&v173.value, v173.epoch);
            OUTLINED_FUNCTION_9_21();
            Seconds = CMTimeGetSeconds(&v173);
            [objc_msgSend(v4 "settings")];
            LODWORD(lhs.value) = 136315906;
            OUTLINED_FUNCTION_75();
            *(&lhs.flags + 2) = v94;
            HIWORD(lhs.epoch) = v96;
            v171 = *&Seconds;
            LOWORD(v172) = v96;
            *(&v172 + 2) = v97;
            OUTLINED_FUNCTION_5_38();
            OUTLINED_FUNCTION_11_0();
            OUTLINED_FUNCTION_141();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_56_0();
          LODWORD(v2) = v169;
          v22 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
        }
      }
    }

    OUTLINED_FUNCTION_38_0();
    if (v25 && [objc_msgSend(v4 "settings")])
    {
      *&v122 = OUTLINED_FUNCTION_102_1().n128_u64[0];
      v123 = v191;
      v124 = [v4 movieStartTimeRequiresCutting];
      if (v4)
      {
        [OUTLINED_FUNCTION_109_1() stillImageCaptureTime];
      }

      else
      {
        OUTLINED_FUNCTION_66();
      }

      v125 = [(BWIrisStagingNode *)v6 _adjustedStartTimeForSmartStyle:v123 allowSearchBackward:v124 ^ 1u searchEndPTS:&lhs adjustedStartBufferIndexOut:&v191, &v173];
      OUTLINED_FUNCTION_50_5(v125, v126, v127, v128, v129, v130, v131, v132, v157, v162, v166, v169, lhs.value, *&lhs.timescale, lhs.epoch, v171, v172, *(&v172 + 1), v133, v173.value);
      if (dword_1ED844290)
      {
        v134 = OUTLINED_FUNCTION_75_1();
        OUTLINED_FUNCTION_133_2(v134, v135, v136, v137, v138, v139, v140, v141, v157, v162, v166, v169, lhs.value, *&lhs.timescale, lhs.epoch, v171, v172, *(&v172 + 1), v173.value, *&v173.timescale, v173.epoch, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192.value, *&v192.timescale, v192.epoch, v193, *(&v193 + 1), v194, time.value);
        OUTLINED_FUNCTION_30();
        if (v2)
        {
          v150 = OUTLINED_FUNCTION_93_0(v142, v143, v144, v145, v146, v147, v148, v149, v157, v162, v166, v169, lhs.value, *&lhs.timescale, lhs.epoch, v171, v172, *(&v172 + 1), *&v173.value, v173.epoch);
          OUTLINED_FUNCTION_9_21();
          v151 = CMTimeGetSeconds(&v173);
          [objc_msgSend(v4 "settings")];
          LODWORD(lhs.value) = 136315906;
          OUTLINED_FUNCTION_75();
          *(&lhs.flags + 2) = v150;
          HIWORD(lhs.epoch) = v152;
          v171 = *&v151;
          LOWORD(v172) = v152;
          *(&v172 + 2) = v153;
          OUTLINED_FUNCTION_5_38();
          OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_141();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0();
        v22 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
      }

      [(BWIrisStagingNode *)v6 _updateSmartStyleRenderingBypassedForIrisMovieInfo:v4 startBufferIndex:v191];
    }

    OUTLINED_FUNCTION_72_1();
    v173.timescale = v98;
    v173.flags = v20;
    v173.epoch = v21;
    v107 = OUTLINED_FUNCTION_117_1(v99, v100, v101, v102, v103, v104, v105, v106, v157, v162, v166, v169, v201[0].value, *&v201[0].timescale, v201[0].epoch, v171, v172, *(&v172 + 1), v173.value);
    if (CMTimeCompare(v107, v108) < 0)
    {
      OUTLINED_FUNCTION_76_1();
    }

    if (*(v6 + v22[744]) == 2)
    {
      OUTLINED_FUNCTION_72_1();
      v173.timescale = v109;
      v173.flags = v20;
      v173.epoch = v21;
      v191 = OUTLINED_FUNCTION_135_1(v110, v111, v112, v113, v114, v115, v116, v117, v158, v163);
      OUTLINED_FUNCTION_79();
      if (v25)
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        goto LABEL_50;
      }

      v118 = [*(v6 + 400) objectAtIndexedSubscript:0];
      CMSampleBufferGetPresentationTimeStamp(&v173, [v118 objectAtIndexedSubscript:v191]);
      value = v173.value;
      v119 = v173.flags;
      timescale = v173.timescale;
      v120 = v173.epoch;
    }

    else
    {
      value = v201[0].value;
      v119 = v201[0].flags;
      timescale = v201[0].timescale;
      v120 = v201[0].epoch;
    }

    [v4 setMovieStartTime:{&v173, OUTLINED_FUNCTION_9_21().n128_f64[0]}];
    OUTLINED_FUNCTION_72_1();
    v173.timescale = v121;
    v173.flags = v119;
    v173.epoch = v120;
    [v4 setMovieTrimStartTime:&v173];
LABEL_50:
    OUTLINED_FUNCTION_128_0();
  }
}

- (uint64_t)_updateSmartStyleRenderingBypassedForIrisMovieInfo:(uint64_t)a3 startBufferIndex:
{
  if (result)
  {
    if (!a2 || a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      OUTLINED_FUNCTION_0();
      return FigDebugAssert3();
    }

    else
    {
      ShouldBeBypassed = BWSmartStyleRenderingShouldBeBypassed([objc_msgSend(*(result + 400) objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", a3}]);
      v5 = [a2 settings];

      return [v5 setSmartStyleRenderingBypassed:ShouldBeBypassed];
    }
  }

  return result;
}

- (void)_fillInRefMovieStartAndTrimTimesForStillImageTimesBeforeTime:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_60();
    v4 = v3;
    v6 = v5;
    v465 = 0u;
    v466 = 0u;
    v463 = 0u;
    v464 = 0u;
    v7 = *(v5 + 464);
    v14 = OUTLINED_FUNCTION_131_1(v5, v3, v8, v9, v10, v11, v12, v13, v219, v230, v241, v252, v262, v273, v283, v294, v305, v316, v327, v338, v348, v359, v370, v380, v391, v402, v412, v423, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value, *&time.timescale, time.epoch, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, v445, v446, v447, v448, v449, v450, v451, v452, *(&v452 + 1), v453, v454, v455[0], v455[1], v456, v457, v458, *(&v458 + 1), v459);
    if (!v14)
    {
      goto LABEL_63;
    }

    v15 = v14;
    OUTLINED_FUNCTION_106_1();
    v24 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    v306 = *v25;
    v317 = *v464;
    v295 = *v26;
    *&v27 = 136315906;
    *v242 = v27;
    *&v27 = 136315650;
    *v263 = v27;
    v284 = v4;
    while (1)
    {
      v28 = 0;
      do
      {
        if (*v464 != v317)
        {
          objc_enumerationMutation(v7);
        }

        v29 = *(*(&v463 + 1) + 8 * v28);
        if (v29)
        {
          v16 = [v29 movieStartTime];
          if ((v461 & 0x100000000) != 0)
          {
            goto LABEL_49;
          }

          v16 = [v29 stillImageCaptureTime];
        }

        else
        {
          v460 = 0;
          v461 = 0;
          v462 = 0;
          memset(&time, 0, sizeof(time));
        }

        v30 = OUTLINED_FUNCTION_62_2(v16, v17, v18, v19, v20, v21, v22, v23, v220, v231, v242[0], v242[1], v263[0], v263[1], v284, v295, v306, v317, v328, *(&v328 + 1), v349, v360, *(&v360 + 1), v381, v392, *(&v392 + 1), v413, v424, *v4, v4[1], v4[2], *&v435, v436, *(&v436 + 1), time.value);
        v32 = CMTimeCompare(v30, v31);
        if (v32 > 0)
        {
          goto LABEL_63;
        }

        v458 = 0uLL;
        v459 = 0;
        if (v29)
        {
          v32 = [v29 stillImageCaptureTime];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v40 = OUTLINED_FUNCTION_62_2(v32, v33, v34, v35, v36, v37, v38, v39, v221, v232, v243, v253, v264, v274, v285, v296, v307, v318, v329, v339, v350, v361, v371, v382, v393, v403, v414, v425, *(v6 + *(v1 + 3252)), *(v6 + *(v1 + 3252) + 8), *(v6 + *(v1 + 3252) + 16), *&v435, v436, *(&v436 + 1), time.value);
        v43 = CMTimeSubtract(v42, v40, v41);
        v457 = [v6 _indexOfBufferBeforeOrEqualToPTS:&time inputIndex:0 applyFrameDropsMitigation:{1, OUTLINED_FUNCTION_7_27(v43, v44, v45, v46, v47, v48, v49, v50, v222, v233, v244, v254, v265, v275, v286, v297, v308, v319, v330, v340, v351, v362, v372, v383, v394, v404, v415, v426, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value, *&time.timescale, time.epoch, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, v445, v446, v447, v448, v449, v450, v451, v452, *(&v452 + 1), v453, v454, v455[0], v455[1], v456, v457, v458).n128_f64[0]}];
        if (v457 == v2)
        {
          goto LABEL_63;
        }

        v51 = [OUTLINED_FUNCTION_138(v24[734]) objectAtIndexedSubscript:v457];
        PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&time, v51);
        *&v60 = OUTLINED_FUNCTION_40_5(PresentationTimeStamp, v53, v54, v55, v56, v57, v58, v59, v223, v234, v245, v255, v266, v276, v287, v298, v309, v320, v331, v341, v352, v363, v373, v384, v395, v405, v416, v427, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), *&time.value).n128_u64[0];
        if (*(v6 + 188))
        {
          OUTLINED_FUNCTION_6_33(v6 + 176);
          v69 = OUTLINED_FUNCTION_62_2(v61, v62, v63, v64, v65, v66, v67, v68, v220, v231, v242[0], v242[1], v263[0], v263[1], v284, v295, v306, v317, v328, *(&v328 + 1), v349, v360, *(&v360 + 1), v381, v392, *(&v392 + 1), v413, v424, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value);
          v71 = CMTimeCompare(v69, v70);
          if ((v71 & 0x80000000) != 0)
          {
            if (v29)
            {
              v71 = [v29 stillImageCaptureTime];
            }

            else
            {
              memset(&v434, 0, sizeof(v434));
            }

            OUTLINED_FUNCTION_41_6(v71, v72, v73, v74, v75, v76, v77, v78, v220, v231, v242[0], v242[1], v263[0], v263[1], v284, v295, v306, v317, v328, *(&v328 + 1), v349, v360, *(&v360 + 1), v381, v392, *(&v392 + 1), v413, v424, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value, *&time.timescale, time.epoch, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, v445, v446, v447, v448, v449, v450, v451, v452, *(&v452 + 1), v453, v454, *(v6 + 176), *(v6 + 184), *(v6 + 192), v457, v458);
            v79 = [(BWIrisStagingNode *)v6 _adjustedStartTimeForTrimmedStartTime:v455 ensuringAtLeast3FramesBeforeStillTime:&v434.value ensuringFrameIsAfterTrimmedStartTime:1 butNotEarlierThanOriginalStartTime:&v452 adjustedStartBufferIndexOut:&v457, &time];
            [v29 setMovieStartTimeRequiresCutting:{1, OUTLINED_FUNCTION_40_5(v79, v80, v81, v82, v83, v84, v85, v86, v224, v235, v246, v256, v267, v277, v288, v299, v310, v321, v332, v342, v353, v364, v374, v385, v396, v406, v417, v428, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), *&time.value).n128_f64[0]}];
            v24 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
          }
        }

        v451 = v2;
        v455[0] = 0;
        v455[1] = 0;
        v456 = 0;
        if (v29)
        {
          [v29 stillImageCaptureTime];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v87 = [(BWIrisStagingNode *)v6 _mostRecentCuttingBufferPTSBeforePTS:&v451 cuttingBufferIndexOut:v455];
        if ((v455[1] & 0x100000000) != 0)
        {
          OUTLINED_FUNCTION_7_27(v87, v88, v89, v90, v91, v92, v93, v94, v220, v231, v242[0], v242[1], v263[0], v263[1], v284, v295, v306, v317, v328, *(&v328 + 1), v349, v360, *(&v360 + 1), v381, v392, *(&v392 + 1), v413, v424, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value, *&time.timescale, time.epoch, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, v445, v446, v447, v448, v449, v450, v451, v452, *(&v452 + 1), v453, v454, v455[0], v455[1], v456, v457, v458);
          v103 = OUTLINED_FUNCTION_62_2(v95, v96, v97, v98, v99, v100, v101, v102, v225, v236, v247, v257, v268, v278, v289, v300, v311, v322, v333, v343, v354, v365, v375, v386, v397, v407, v418, v429, v455[0], v455[1], v456, *&v435, v436, *(&v436 + 1), time.value);
          v105 = CMTimeCompare(v103, v104);
          if ((v105 & 0x80000000) != 0)
          {
            OUTLINED_FUNCTION_41_6(v105, v106, v107, v108, v109, v110, v111, v112, v220, v231, v242[0], v242[1], v263[0], v263[1], v284, v295, v306, v317, v328, *(&v328 + 1), v349, v360, *(&v360 + 1), v381, v392, *(&v392 + 1), v413, v424, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value, *&time.timescale, time.epoch, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, v445, v446, v447, v448, v449, v450, v451, v452, *(&v452 + 1), v453, v454, v455[0], v455[1], v456, v457, v458);
            v458 = *v455;
            v459 = v456;
            v457 = v451;
            [v29 setMovieStartTimeRequiresCutting:1];
            if (dword_1ED844290)
            {
              HIDWORD(v450) = 0;
              BYTE3(v450) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_126_1(os_log_and_send_and_compose_flags_and_os_log_type, v114, v115, v116, v117, v118, v119, v120, v220, v231, v242[0], v242[1], v263[0], v263[1], v284, v295, v306, v317, v328, *(&v328 + 1), v349, v360, *(&v360 + 1), v381, v392, *(&v392 + 1), v413, v424, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value, *&time.timescale, time.epoch, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, v445, v446, v447, v448, v449, v450, SBYTE2(v450), BYTE3(v450), SHIDWORD(v450));
              OUTLINED_FUNCTION_115_0();
              if (v130)
              {
                v131 = v129;
              }

              else
              {
                v131 = v24;
              }

              if (v131)
              {
                OUTLINED_FUNCTION_90_1(v121, v122, v123, v124, v125, v126, v127, v128, v220, v231, v242[0], v242[1], v263[0], v263[1], v284, v295, v306, v317, v328, *(&v328 + 1), v349, v360, *(&v360 + 1), v381, v392, *(&v392 + 1), v413, v424, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), *&time.value, time.epoch, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453);
                OUTLINED_FUNCTION_7_27(v132, v133, v134, v135, v136, v137, v138, v139, v226, v237, v248, v258, v269, v279, v290, v301, v312, v323, v334, v344, v355, v366, v376, v387, v398, v408, v419, v430, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value, *&time.timescale, time.epoch, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, v445, v446, v447, v448, v449, v450, v451, v452, *(&v452 + 1), v453, v454, v455[0], v455[1], v456, v457, v458);
                Seconds = CMTimeGetSeconds(&time);
                [objc_msgSend(v29 "settings")];
                LODWORD(v434.value) = v242[0];
                OUTLINED_FUNCTION_22_8();
                v435 = Seconds;
                LOWORD(v436) = v141;
                *(&v436 + 2) = v142;
                OUTLINED_FUNCTION_45_6();
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_13_0();
              OUTLINED_FUNCTION_106_1();
              v24 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
            }
          }
        }

        if (*(v6 + 835) == 1)
        {
          v143 = [objc_msgSend(v29 "settings")];
          if (v143)
          {
            v176 = v4;
            v177 = v15;
            v178 = v7;
            *&v179 = OUTLINED_FUNCTION_41_6(v143, v144, v145, v146, v147, v148, v149, v150, v220, v231, v242[0], v242[1], v263[0], v263[1], v284, v295, v306, v317, v328, *(&v328 + 1), v349, v360, *(&v360 + 1), v381, v392, *(&v392 + 1), v413, v424, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value, *&time.timescale, time.epoch, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, v445, v446, v447, v448, v449, v450, v451, v452, *(&v452 + 1), v453, v454, v455[0], v455[1], v456, v457, v458).n128_u64[0];
            v180 = v457;
            v181 = [v29 movieStartTimeRequiresCutting];
            if (v29)
            {
              [v29 stillImageCaptureTime];
            }

            else
            {
              memset(&v434, 0, sizeof(v434));
            }

            v182 = [(BWIrisStagingNode *)v6 _adjustedStartTimeForSmartStyle:v180 allowSearchBackward:v181 ^ 1u searchEndPTS:&v434 adjustedStartBufferIndexOut:&v457, &time];
            OUTLINED_FUNCTION_40_5(v182, v183, v184, v185, v186, v187, v188, v189, v228, v239, v250, v260, v271, v281, v292, v303, v314, v325, v336, v346, v357, v368, v378, v389, v400, v410, v421, v432, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), *&time.value);
            v7 = v178;
            v15 = v177;
            v4 = v176;
            if (dword_1ED844290)
            {
              HIDWORD(v450) = 0;
              BYTE3(v450) = 0;
              v190 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_126_1(v190, v191, v192, v193, v194, v195, v196, v197, v220, v231, v242[0], v242[1], v263[0], v263[1], v284, v295, v306, v317, v328, *(&v328 + 1), v349, v360, *(&v360 + 1), v381, v392, *(&v392 + 1), v413, v424, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value, *&time.timescale, time.epoch, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, v445, v446, v447, v448, v449, v450, SBYTE2(v450), BYTE3(v450), SHIDWORD(v450));
              OUTLINED_FUNCTION_115_0();
              if (v130)
              {
                v207 = v206;
              }

              else
              {
                v207 = v180;
              }

              if (v207)
              {
                OUTLINED_FUNCTION_90_1(v198, v199, v200, v201, v202, v203, v204, v205, v220, v231, v242[0], v242[1], v263[0], v263[1], v284, v295, v306, v317, v328, *(&v328 + 1), v349, v360, *(&v360 + 1), v381, v392, *(&v392 + 1), v413, v424, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), *&time.value, time.epoch, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453);
                OUTLINED_FUNCTION_7_27(v208, v209, v210, v211, v212, v213, v214, v215, v229, v240, v251, v261, v272, v282, v293, v304, v315, v326, v337, v347, v358, v369, v379, v390, v401, v411, v422, v433, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value, *&time.timescale, time.epoch, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, v445, v446, v447, v448, v449, v450, v451, v452, *(&v452 + 1), v453, v454, v455[0], v455[1], v456, v457, v458);
                v216 = CMTimeGetSeconds(&time);
                [objc_msgSend(v29 "settings")];
                LODWORD(v434.value) = v242[0];
                OUTLINED_FUNCTION_22_8();
                v435 = v216;
                LOWORD(v436) = v217;
                *(&v436 + 2) = v218;
                OUTLINED_FUNCTION_45_6();
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_13_0();
              OUTLINED_FUNCTION_106_1();
            }

            [(BWIrisStagingNode *)v6 _updateSmartStyleRenderingBypassedForIrisMovieInfo:v29 startBufferIndex:v457];
            v24 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
          }
        }

        v16 = [v29 movieStartTimeRequiresCutting];
        if (v16)
        {
          if (v457 != v2)
          {
            v151 = [OUTLINED_FUNCTION_138(v24[734]) objectAtIndexedSubscript:v457];
            CMSetAttachment(v151, v306, v295, 1u);
            if (dword_1ED844290)
            {
              LODWORD(v452) = 0;
              BYTE4(v450) = 0;
              v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v2 = BYTE4(v450);
              os_log_type_enabled(v1, BYTE4(v450));
              OUTLINED_FUNCTION_4_0();
              if (v24)
              {
                CMSampleBufferGetPresentationTimeStamp(&time, v151);
                CMTimeGetSeconds(&time);
                [objc_msgSend(v29 "settings")];
                LODWORD(v434.value) = v263[0];
                OUTLINED_FUNCTION_22_8();
                v435 = *&v152;
                OUTLINED_FUNCTION_45_6();
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_39_0();
              v4 = v284;
              OUTLINED_FUNCTION_106_1();
              v24 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
            }
          }
        }

        v153 = *(v6 + 512);
        if (v153 == 2)
        {
          [v29 setMovieStartTime:{&time, OUTLINED_FUNCTION_7_27(v16, v17, v18, v19, v20, v21, v22, v23, v220, v231, v242[0], v242[1], v263[0], v263[1], v284, v295, v306, v317, v328, *(&v328 + 1), v349, v360, *(&v360 + 1), v381, v392, *(&v392 + 1), v413, v424, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value, *&time.timescale, time.epoch, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, v445, v446, v447, v448, v449, v450, v451, v452, *(&v452 + 1), v453, v454, v455[0], v455[1], v456, v457, v458).n128_f64[0]}];
          OUTLINED_FUNCTION_6_33(v6 + 536);
          v173 = OUTLINED_FUNCTION_62_2(v165, v166, v167, v168, v169, v170, v171, v172, v227, v238, v249, v259, v270, v280, v291, v302, v313, v324, v335, v345, v356, v367, v377, v388, v399, v409, v420, v431, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value);
          CMTimeMaximum(v175, v173, v174);
          *&time.value = v328;
          v16 = [OUTLINED_FUNCTION_23_6() setMovieTrimStartTime:?];
        }

        else
        {
          if (v153 == 1)
          {
            OUTLINED_FUNCTION_6_33(v6 + 536);
            v162 = OUTLINED_FUNCTION_62_2(v154, v155, v156, v157, v158, v159, v160, v161, v220, v231, v242[0], v242[1], v263[0], v263[1], v284, v295, v306, v317, v328, *(&v328 + 1), v349, v360, *(&v360 + 1), v381, v392, *(&v392 + 1), v413, v424, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value);
            CMTimeMaximum(v164, v162, v163);
            *&time.value = v360;
            [OUTLINED_FUNCTION_23_6() setMovieTrimStartTime:?];
            *&time.value = v360;
          }

          else
          {
            if (v153)
            {
              goto LABEL_49;
            }

            v392 = v458;
            v413 = v459;
            *&time.value = v458;
            [OUTLINED_FUNCTION_23_6() setMovieTrimStartTime:?];
            *&time.value = v392;
          }

          v16 = [OUTLINED_FUNCTION_23_6() setMovieStartTime:?];
        }

LABEL_49:
        ++v28;
      }

      while (v15 != v28);
      v16 = OUTLINED_FUNCTION_131_1(v16, v17, v18, v19, v20, v21, v22, v23, v220, v231, v242[0], v242[1], v263[0], v263[1], v284, v295, v306, v317, v328, *(&v328 + 1), v349, v360, *(&v360 + 1), v381, v392, *(&v392 + 1), v413, v424, v434.value, *&v434.timescale, v434.epoch, *&v435, v436, *(&v436 + 1), time.value, *&time.timescale, time.epoch, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, v445, v446, v447, v448, v449, v450, v451, v452, *(&v452 + 1), v453, v454, v455[0], v455[1], v456, v457, v458, *(&v458 + 1), v459);
      v15 = v16;
      if (!v16)
      {
LABEL_63:
        OUTLINED_FUNCTION_128_0();
        return;
      }
    }
  }
}

- (void)_tagStillImageVISKeyFrames
{
  if (a1)
  {
    OUTLINED_FUNCTION_60();
    v2 = v1;
    v3 = MEMORY[0x1E6960C70];
    v66 = *(MEMORY[0x1E6960C70] + 12);
    epoch_high = *(MEMORY[0x1E6960C70] + 20);
    v4 = *MEMORY[0x1E6960C70];
    v65.epoch = *(MEMORY[0x1E6960C70] + 16);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    *&v65.value = v4;
    v5 = *(v1 + 464);
    v7 = OUTLINED_FUNCTION_37(v1, v6, &v61, v60);
    if (v7)
    {
      v8 = v7;
      v50 = 0;
      v9 = 0;
      value = *v3;
      v52 = *(v3 + 8);
      v10 = *v62;
      key = *off_1E798A3C8;
      v49 = *off_1E798D4B0;
      v48 = *off_1E798A0A0;
      v46 = *off_1E798B4B8;
      v45 = *off_1E798B540;
      v44 = *off_1E798A0C0;
      v43 = *off_1E7989E50;
      v42 = *off_1E798A0D0;
      v41 = *off_1E798A910;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v62 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v61 + 1) + 8 * i);
          AttachedMedia = [v12 isMomentCaptureMovieRecording];
          if ((AttachedMedia & 1) == 0)
          {
            AttachedMedia = [v12 stillImageVISKeyFrameTagged];
            if ((AttachedMedia & 1) == 0)
            {
              if (!v50)
              {
                v9 = [OUTLINED_FUNCTION_34_0(400) objectAtIndexedSubscript:?];
                v50 = [v9 objectAtIndexedSubscript:{objc_msgSend(v9, "count") - 1}];
                v15 = [(BWIrisStagingNode *)v50 _hostPTSForSampleBuffer:v2, &time2];
                value = time2.value;
                v66 = *&time2.flags;
                epoch_high = HIDWORD(time2.epoch);
                v16 = OUTLINED_FUNCTION_70_1(v15, time2.timescale);
                v52 = v17;
                CMTimeMake(&v65, v16, v17);
              }

              memset(&v59, 0, sizeof(v59));
              if (v12)
              {
                [v12 stillImageCaptureHostTime];
              }

              lhs = v59;
              rhs = v65;
              CMTimeSubtract(&time2, &lhs, &rhs);
              lhs.value = value;
              lhs.timescale = v52;
              *&lhs.flags = v66;
              HIDWORD(lhs.epoch) = epoch_high;
              if (CMTimeCompare(&lhs, &time2) < 0)
              {
                goto LABEL_44;
              }

              OUTLINED_FUNCTION_118_1();
              lhs = v65;
              v18 = OUTLINED_FUNCTION_4_3();
              [(BWIrisStagingNode *)v18 _indexOfBufferBeforeOrEqualToHostPTS:v19 inputIndex:v20 tolerance:v21];
              OUTLINED_FUNCTION_79();
              if (v23)
              {
                goto LABEL_44;
              }

              v47 = v9;
              v24 = [v9 objectAtIndexedSubscript:v22];
              v25 = CMGetAttachment(v24, key, 0);
              [v25 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v49];
              [v12 livePhotoMetadataStillImageKeyFrameSettingsID];
              [OUTLINED_FUNCTION_28() setObject:? forKeyedSubscript:?];
              [v12 setStillImageVISKeyFrameTagged:1];
              [v12 setStillImageCaptureLuxLevel:{objc_msgSend(objc_msgSend(v25, "objectForKeyedSubscript:", v46), "intValue")}];
              if ((*(v2 + 832) & 1) == 0)
              {
                v26 = CMGetAttachment(v24, @"TotalZoomFactor", 0);
                if (v26)
                {
                  [v26 floatValue];
                  v28 = v27;
                }

                else
                {
                  v28 = 1.0;
                }

                v29 = [v25 objectForKeyedSubscript:v45];
                [objc_msgSend(objc_msgSend(*(v2 + 688) objectForKeyedSubscript:{v44), "objectForKeyedSubscript:", v43), "floatValue"}];
                v31 = v30;
                if ([v29 isEqualToString:v42])
                {
                  if (v31 > 0.0 && v28 >= v31)
                  {
                    [v12 setLimitStillImageTransformDuringVitalityPlayback:1];
                  }
                }
              }

              if (*(v2 + 816))
              {
                if ((*(v2 + 813) & 1) == 0)
                {
                  OUTLINED_FUNCTION_21_4(813);
                  [v12 setStillImageRequiresSmartStyleRenderingForSRL:{objc_msgSend(objc_msgSend(CMGetAttachment(v24, key, 0), "objectForKeyedSubscript:", v41), "BOOLValue")}];
                  if ([v12 requiresGlobalSubjectRelightingCalculation])
                  {
                    *(v2 + 824) = [*(v2 + 816) startCalculationWithJPEGSampleBuffer:v24 stillImageRequestSettings:objc_msgSend(v12 stillImageCaptureSettings:{"stillImageRequestSettings"), objc_msgSend(v12, "stillImageCaptureSettings")}];
                    if (dword_1ED844290)
                    {
                      LODWORD(rhs.value) = 0;
                      type = OS_LOG_TYPE_DEFAULT;
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v34 = rhs.value;
                      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                      {
                        v35 = v34;
                      }

                      else
                      {
                        v35 = v34 & 0xFFFFFFFE;
                      }

                      if (v35)
                      {
                        time2.value = value;
                        time2.timescale = v52;
                        *&time2.flags = v66;
                        HIDWORD(time2.epoch) = epoch_high;
                        Seconds = CMTimeGetSeconds(&time2);
                        OUTLINED_FUNCTION_118_1();
                        v37 = CMTimeGetSeconds(&time2);
                        LODWORD(lhs.value) = 136315650;
                        *(&lhs.value + 4) = "[BWIrisStagingNode _tagStillImageVISKeyFrames]";
                        LOWORD(lhs.flags) = 2048;
                        *(&lhs.flags + 2) = Seconds;
                        HIWORD(lhs.epoch) = 2048;
                        v55 = v37;
                        LODWORD(v40) = 32;
                        p_lhs = &lhs;
                        OUTLINED_FUNCTION_13();
                        _os_log_send_and_compose_impl();
                      }

                      OUTLINED_FUNCTION_2_4();
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }
                  }
                }

                if ([v12 requiresGlobalSubjectRelightingCalculation])
                {
                  [v12 setSubjectRelightingResult:*(v2 + 824)];
                  if (*(v2 + 824))
                  {
                    [objc_msgSend(v12 "settings")];
                  }
                }
              }

              AttachedMedia = BWSampleBufferGetAttachedMedia(v24, 0x1F21AAA50);
              if (AttachedMedia || (AttachedMedia = BWSampleBufferGetAttachedMedia(v24, @"SynchronizedSlaveFrame")) != 0)
              {
                v38 = CMGetAttachment(AttachedMedia, key, 0);
                [v38 setObject:objc_msgSend(v25 forKeyedSubscript:{"objectForKeyedSubscript:", v49), v49}];
                AttachedMedia = [v38 setObject:objc_msgSend(v25 forKeyedSubscript:{"objectForKeyedSubscript:", v48), v48}];
              }

              v9 = v47;
            }
          }
        }

        v8 = OUTLINED_FUNCTION_37(AttachedMedia, v14, &v61, v60);
      }

      while (v8);
    }

LABEL_44:
    OUTLINED_FUNCTION_128_0();
  }
}

- (double)_prepareToEmitFramesFromStartTime:(uint64_t)a3 throughEndTime:(uint64_t)a4
{
  if (!a1)
  {
    return result;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = *(a1 + 400);
  v9 = OUTLINED_FUNCTION_127_1(a1, a2, a3, a4, a5, a6);
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = *v31;
  v12 = -1;
  v13 = MEMORY[0x1E6960C70];
  do
  {
    v14 = 0;
    v15 = 24 * v12 + 24;
    do
    {
      if (*v31 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v30 + 1) + 8 * v14);
      v17 = [a1 _indexOfBufferBeforeOrEqualToPTS:v29 inputIndex:++v12 applyFrameDropsMitigation:{0, OUTLINED_FUNCTION_37_7().n128_f64[0]}];
      if (v17)
      {
        OUTLINED_FUNCTION_79();
        if (v23)
        {
          goto LABEL_11;
        }

        v17 = [*(a1 + 408) setObject:objc_msgSend(v16 atIndexedSubscript:{"objectAtIndexedSubscript:", v17 - 1), v12}];
      }

      v24 = *(a1 + 496) + v15;
      *v24 = *v13;
      *(v24 + 16) = *(v13 + 16);
LABEL_11:
      ++v14;
      v15 += 24;
    }

    while (v10 != v14);
    v10 = OUTLINED_FUNCTION_127_1(v17, v18, v19, v20, v21, v22);
  }

  while (v10);
LABEL_13:
  v25 = *(a2 + 16);
  *(a1 + 352) = *a2;
  *(a1 + 368) = v25;
  if (*(a1 + 600))
  {
    *&v26 = OUTLINED_FUNCTION_37_7().n128_u64[0];
    [v27 setMasterMovieOriginalStartTime:{v29, v26}];
  }

  OUTLINED_FUNCTION_107_1((a1 + 328));
  *&result = OUTLINED_FUNCTION_107_1((a1 + 304)).n128_u64[0];
  return result;
}

- (BOOL)_haveEnoughVideoStagedToStartFirstIrisRecording:(CMTime *)a3 currentTime:(CMTime *)a4 emitEndTimeOut:
{
  if (result)
  {
    v6 = result;
    v44 = *a3;
    memset(&v43, 0, sizeof(v43));
    if (a2)
    {
      [a2 stillImageCaptureHostTime];
      [a2 stillImageCaptureHostTime];
      CMTimeMake(&v43, v42 / 1000, v40);
      [a2 stillImageCaptureHostTime];
    }

    else
    {
      OUTLINED_FUNCTION_81_1();
      v40 = 0;
      v41 = 0;
      v39 = 0;
      CMTimeMake(&v43, 0, 0);
      OUTLINED_FUNCTION_28_5();
    }

    time1 = v43;
    v7 = OUTLINED_FUNCTION_47_1();
    v11 = [(BWIrisStagingNode *)v7 _indexOfBufferBeforeOrEqualToHostPTS:v8 inputIndex:v9 tolerance:v10];
    v12 = OUTLINED_FUNCTION_91_2();
    v13 = *(v6 + 600);
    if (v13 && *(v6 + 528) && (*(v6 + 833) & 1) == 0)
    {
      v14 = [v13 audioOffsetForOriginalStillImageTimeMaximumFrameLatency];
    }

    else
    {
      v14 = 1;
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a2)
      {
        [a2 stillImageCaptureTime];
      }

      else
      {
        OUTLINED_FUNCTION_28_5();
      }

      OUTLINED_FUNCTION_38_6();
      result = CMTimeCompare(&time1, &time2) > 0;
      if (a4)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ([v12 count] <= (v14 + v11))
      {
        result = 0;
        if (!a4)
        {
          return result;
        }

        goto LABEL_23;
      }

      if (v11 + 1 < [v12 count])
      {
        do
        {
          v15 = [OUTLINED_FUNCTION_91_2() objectAtIndexedSubscript:v11];
          memset(&v38, 0, sizeof(v38));
          CMSampleBufferGetPresentationTimeStamp(&v38, v15);
          time2 = v38;
          OUTLINED_FUNCTION_38_6();
          v24 = OUTLINED_FUNCTION_56_4(v16, v17, v18, v19, v20, v21, v22, v23, v31, v32, time1.value, *&time1.timescale, time1.epoch, v34, time2.value);
          if ((CMTimeCompare(v24, v25) & 0x80000000) == 0)
          {
            break;
          }

          v26 = [OUTLINED_FUNCTION_91_2() objectAtIndexedSubscript:v11 + 1];
          if ([CMGetAttachment(v26 @"BufferRequiresCuttingInLivePhotoMovie"])
          {
            v44 = v38;
            if (dword_1ED844290)
            {
              v37 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              OUTLINED_FUNCTION_111_1();
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_4_0();
              if (v12)
              {
                OUTLINED_FUNCTION_39_5();
                Seconds = CMTimeGetSeconds(&time2);
                OUTLINED_FUNCTION_89_2(v44.epoch, v31, v32, time1.value, *&time1.timescale, time1.epoch, v34, v44.value, *&v44.timescale, time2.epoch);
                LODWORD(time1.value) = 136315650;
                OUTLINED_FUNCTION_48_5();
                *(&time1.flags + 2) = Seconds;
                OUTLINED_FUNCTION_15_11();
                OUTLINED_FUNCTION_5_0();
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_39_0();
            }

            break;
          }

          v27 = [v12 count];
          v28 = v11 + 2;
          ++v11;
        }

        while (v28 < v27);
      }

      result = 1;
      if (a4)
      {
LABEL_23:
        *a4 = v44;
      }
    }
  }

  return result;
}

- (uint64_t)_informDelegateOfSoonToBeEmittedIrisRequestsForTime:(uint64_t)a3
{
  if (result)
  {
    v9 = result;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = *(result + 464);
    result = OUTLINED_FUNCTION_128_2(result, a2, a3, a4, a5, a6, a7, a8, v31.value, *&v31.timescale);
    if (result)
    {
      v11 = result;
      v12 = *v37;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v36 + 1) + 8 * v13);
        v34 = 0uLL;
        v35 = 0;
        v15 = [(BWIrisStagingNode *)v9 _maxPTSForIrisRequest:v14, &v34];
        OUTLINED_FUNCTION_110_1(v15, v16, v17, v18, v19, v20, v21, v22, v31.value, *&v31.timescale, v31.epoch, v32, *a2, a2[1], a2[2], v34);
        result = CMTimeCompare(&time1, &v31);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v23 = [*(v9 + 472) containsObject:v14];
        if ((v23 & 1) == 0)
        {
          [*(v9 + 472) addObject:v14];
          v23 = [*(v9 + 624) stagingNode:v9 willEmitIrisRequest:v14];
        }

        if (v11 == ++v13)
        {
          result = OUTLINED_FUNCTION_128_2(v23, v24, v25, v26, v27, v28, v29, v30, v31.value, *&v31.timescale);
          v11 = result;
          if (result)
          {
            goto LABEL_4;
          }

          return result;
        }
      }
    }
  }

  return result;
}

- (uint64_t)_sbufHasSmartStyleReversibilityAttachedMedia:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_13();
  v3 = 1;
  v4 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, 1);
  OUTLINED_FUNCTION_43();
  v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
LABEL_4:
    v8 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_71();
      if (!v9)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(v16 + 8 * v8);
      if ((!BWSmartStyleRenderingShouldBeBypassed(a2) || ([v10 isEqualToString:0x1F21AB070] & 1) == 0) && !BWSampleBufferGetAttachedMedia(a2, v10))
      {
        return 0;
      }

      if (v7 == ++v8)
      {
        OUTLINED_FUNCTION_43();
        v7 = OUTLINED_FUNCTION_37(v11, v12, v13, v14);
        if (v7)
        {
          goto LABEL_4;
        }

        return 1;
      }
    }
  }

  return v3;
}

@end