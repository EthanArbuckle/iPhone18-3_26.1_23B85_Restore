@interface BWQuickTimeMovieFileSinkNode
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastFileDuration;
- (BWQuickTimeMovieFileSinkNode)initWithNumberOfVideoInputs:(unint64_t)inputs numberOfAuxiliaryPictureInputs:(unint64_t)pictureInputs numberOfAudioInputs:(unint64_t)audioInputs numberOfMetadataInputs:(unint64_t)metadataInputs cameraInfoByPortType:(id)type pipelineIndex:(unint64_t)index sinkID:(id)d;
- (CMTime)_finalizeAudioVideoDurationsAndFindWrittenEndingPTSFromEndingPTS:(uint64_t)s@<X8>;
- (CMTime)_printBufferEvent:(CMTime *)result forNodeInputIndex:eventName:;
- (NSArray)movieLevelMetadata;
- (NSArray)structuralDependentTrackReferenceListForMetadataInputs;
- (NSArray)taggedMediaCharacteristicsForInputs;
- (NSArray)trackReferenceListForAudioInputs;
- (NSArray)trackReferenceListForMetadataInputs;
- (NSArray)trackReferenceListForRenderMetadataInputs;
- (NSArray)trackReferenceListForVideoInputs;
- (__CFString)_computeMovieRecordingVideoSTFStatistics;
- (uint64_t)_addMovieSegmentMetadataTrackUsingMovieSettings:(unsigned int *)settings withVideoTimeScales:;
- (uint64_t)_adjustMaxFileDurationForMovieTimeScale:(__n128 *)scale;
- (uint64_t)_adjustedMinFreeDiskSpaceLimitForEstimatedMovieSizeOverhead:(uint64_t)result;
- (uint64_t)_checkFreeSpaceForEstimatedMovieSizeOverhead:(uint64_t)result;
- (uint64_t)_driveStateMachineWithBuffer:(uint64_t)buffer forInputIndex:(int)index sampleBufferAlreadyAtHeadOfQueue:;
- (uint64_t)_driveStateMachineWithPauseMarkerBuffer:(uint64_t)buffer forInputIndex:(void *)index inputStagingQueue:(int)queue sampleBufferAlreadyAtHeadOfQueue:;
- (uint64_t)_driveStateMachineWithResumeMarkerBuffer:(uint64_t)buffer forInputIndex:(void *)index inputStagingQueue:(int)queue sampleBufferAlreadyAtHeadOfQueue:;
- (uint64_t)_driveStateMachineWithStartMarkerBuffer:(uint64_t)buffer forInputIndex:(void *)index inputStagingQueue:(int)queue sampleBufferAlreadyAtHeadOfQueue:;
- (uint64_t)_driveStateMachineWithStopOrFlushMarkerBuffer:(uint64_t)buffer requiredAction:(uint64_t)action forInputIndex:(void *)index inputStagingQueue:(int)queue sampleBufferAlreadyAtHeadOfQueue:;
- (uint64_t)_endingPTSForTrack:(uint64_t)track@<X2> endingPTS:(uint64_t)s@<X3> writtenEndingPTS:(uint64_t)tS@<X4> validatedEndingPTS:(int)pTS@<W5> isIrisMasterMovie:(uint64_t)movie@<X8>;
- (uint64_t)_findMarkers:(uint64_t)markers@<X8>;
- (uint64_t)_findWrittenStartingPTS;
- (uint64_t)_getCurrentFileSize:(CMTime *)size currentHostTime:;
- (uint64_t)_handleFormatWriterErrorOccurredCallback:(void *)callback userInfo:;
- (uint64_t)_handleSpatialAggressorsSeenMarkerBuffer:(uint64_t)result;
- (uint64_t)_handleStreamForcedOffMarkerBuffer:(uint64_t)result;
- (uint64_t)_initAnalyticsDataInIrisMovieInfo:(uint64_t)result;
- (uint64_t)_initCapturePipelineLatencyStats;
- (uint64_t)_isLastFallbackAudioTrack:(void *)track;
- (uint64_t)_moveOrDeleteTemporaryIrisMovie:(char)movie recordingSucceeded:;
- (uint64_t)_preAllocateIfNeededForURL:(void *)l settings:;
- (uint64_t)_preprocessingForFirstAudioBuffer:(uint64_t)buffer forInputIndex:;
- (uint64_t)_preprocessingForFirstAuxiliaryBuffer:(uint64_t)result forInputIndex:;
- (uint64_t)_setTrackMatrixProperty:(uint64_t)property forInputIndex:(void *)index fileSettings:(void *)settings metadata:;
- (uint64_t)_setTrackReferenceListForMetadataInputs:(uint64_t)result inOutTrackReferenceListForMetadataInputs:;
- (uint64_t)_validateTrackReferenceListForInputs:(uint64_t)inputs ofType:;
- (uint64_t)_validatedEndingPTSFromEndingPTS:(uint64_t)s@<X8>;
- (uint64_t)_verifyMovieTiming:(uint64_t)result;
- (uint64_t)_writeStillImageTimeMetadataSampleForCaptureTime:(void *)time stillImageTransformData:(uint64_t)data referenceDimensions:(uint64_t)dimensions toTrackWithID:(int32_t)d usingTrackTimeScale:;
- (uint64_t)dealloc;
- (unint64_t)_computeMotionAnalysisStatisticFromRange:(uint64_t)range calculation:;
- (unint64_t)_computeTransitionVitalityScore:(unint64_t)score;
- (unint64_t)lastFileSize;
- (unsigned)_updateMovieFileMemoryAnalytics;
- (void)_addStereoMovieLevelMetadataToSettingsMovieLevelMetadata:(uint64_t)metadata;
- (void)_buildIrisRefMovieGeneratorAndWriteFirstIrisAsRefMovie;
- (void)_clearProvidedTrackFormatDescriptions;
- (void)_collectCoreAnalyticsData:(uint64_t)data;
- (void)_collectVideoDeghostingStatisticsFromDictionary:(uint64_t)dictionary;
- (void)_collectVideoSTFAnalyticsFromSbuf:(_DWORD *)sbuf;
- (void)_collectVideoStabilizationAnalyticsFromDictionary:(uint64_t)dictionary;
- (void)_debugAudioUsingSampleBuffer:(uint64_t)buffer;
- (void)_determineWhichInputsWeExpectToSeeSamplesFor;
- (void)_doEndRecordingAtTime:(uint64_t)time earlyTerminationErrCode:;
- (void)_doStartRecordingAtTime:withSettings:sensorVideoPort:captureDeviceType:;
- (void)_driveStateMachineWithMediaBuffer:(uint64_t)buffer forInputIndex:(uint64_t)index inputStagingQueue:(uint64_t)queue sampleBufferAlreadyAtHeadOfQueue:(void *)ofQueue;
- (void)_findStartMarkersWithMatchedStagedSetting:(uint64_t)setting@<X2> sensorVideoPort:(uint64_t)port@<X3> captureDeviceType:(void *)type@<X8>;
- (void)_finishIrisMovieGeneration;
- (void)_fixVitalityScoreWithMotionAnalysis:(unint64_t)analysis;
- (void)_forceEarlyTerminationWithErrorCode:(unint64_t)code;
- (void)_generateThumbnailSurfaceFromPixelBuffer:(char)buffer physicallyMirroredHorizontallyUpstream:;
- (void)_handleIrisMovieRequest:(uint64_t)request;
- (void)_preprocessingForFirstMetadataBuffer:(uint64_t)buffer forInputIndex:;
- (void)_preprocessingForFirstVideoBuffer:(uint64_t)buffer forInputIndex:;
- (void)_processIrisRequest:(uint64_t)request;
- (void)_startUpFormatWriterAtTime:withSettings:;
- (void)_submitMovieFileCoreAnalyticsEvent;
- (void)_updateTrackFormatDescriptionsAtURL:(void *)l;
- (void)_validTrackReferencesForReferenceInputIndexes:;
- (void)_validateTaggedMediaCharacteristicsForInputIndexes:;
- (void)_writeBuffer:(uint64_t)buffer forInputIndex:;
- (void)_writeIrisRefMovieWithInfo:(void *)info;
- (void)_writeMovieSegmentMetadataForSegmentStartPTS:(uint64_t)s segmentDuration:;
- (void)_writeVideoTrackLevelMetadataForSampleBuffer:(uint64_t)buffer inputIndex:;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setClientApplicationID:(id)d;
- (void)setIrisMovieProcessingSuspended:(BOOL)suspended;
- (void)setIrisStillImageMovieMetadataCache:(id)cache;
- (void)setMovieLevelMetadata:(id)metadata;
- (void)setStructuralDependentTrackReferenceListForMetadataInputs:(id)inputs;
- (void)setTaggedMediaCharacteristicsForInputs:(id)inputs;
- (void)setTrackReferenceListForAudioInputs:(id)inputs;
- (void)setTrackReferenceListForAudioRemixInputs:(id)inputs;
- (void)setTrackReferenceListForVideoInputs:(id)inputs;
- (void)setVideoOrientationTimeMachine:(id)machine;
- (void)setupRingBufferForStabilizedTrajectoryHomographies:(int)homographies;
@end

@implementation BWQuickTimeMovieFileSinkNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWQuickTimeMovieFileSinkNode)initWithNumberOfVideoInputs:(unint64_t)inputs numberOfAuxiliaryPictureInputs:(unint64_t)pictureInputs numberOfAudioInputs:(unint64_t)audioInputs numberOfMetadataInputs:(unint64_t)metadataInputs cameraInfoByPortType:(id)type pipelineIndex:(unint64_t)index sinkID:(id)d
{
  v9 = pictureInputs + inputs;
  v10 = metadataInputs + audioInputs;
  v55 = metadataInputs + audioInputs + pictureInputs + inputs;
  if (!v55)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Need at least 1 input" userInfo:0]);
  }

  metadataInputsCopy = metadataInputs;
  pictureInputsCopy = pictureInputs;
  inputsCopy = inputs;
  v67.receiver = self;
  v67.super_class = BWQuickTimeMovieFileSinkNode;
  v17 = [(BWSinkNode *)&v67 initWithSinkID:d];
  if (!v17)
  {
    return v17;
  }

  v52 = v9;
  indexCopy = index;
  typeCopy = type;
  inputsCopy = [MEMORY[0x1E695DF70] arrayWithCapacity:v10 + inputsCopy];
  if (inputsCopy)
  {
    for (i = 0; i != inputsCopy; ++i)
    {
      v20 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v17 index:i];
      v21 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeInput *)v20 setFormatRequirements:v21];

      [(BWNode *)v17 addInput:v20];
      [inputsCopy addObject:{objc_msgSend(MEMORY[0x1E695DF70], "arrayWithCapacity:", 0)}];
    }
  }

  for (; pictureInputsCopy; --pictureInputsCopy)
  {
    v22 = [[BWNodeInput alloc] initWithMediaType:1635088502 node:v17 index:inputsCopy];
    v23 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v22 setFormatRequirements:v23];

    [(BWNode *)v17 addInput:v22];
    [inputsCopy addObject:{objc_msgSend(MEMORY[0x1E695DF70], "arrayWithCapacity:", 0)}];
    ++inputsCopy;
  }

  if (audioInputs)
  {
    audioInputsCopy = audioInputs;
    v25 = typeCopy;
    do
    {
      v26 = [[BWNodeInput alloc] initWithMediaType:1936684398 node:v17 index:inputsCopy];
      [(BWNode *)v17 addInput:v26];
      [inputsCopy addObject:{objc_msgSend(MEMORY[0x1E695DF70], "arrayWithCapacity:", 0)}];
      ++inputsCopy;

      --audioInputsCopy;
    }

    while (audioInputsCopy);
    if (metadataInputsCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v25 = typeCopy;
    if (metadataInputsCopy)
    {
LABEL_12:
      v27 = indexCopy;
      do
      {
        v28 = [[BWNodeInput alloc] initWithMediaType:1835365473 node:v17 index:inputsCopy];
        [(BWNode *)v17 addInput:v28];
        [inputsCopy addObject:{objc_msgSend(MEMORY[0x1E695DF70], "arrayWithCapacity:", 0)}];
        ++inputsCopy;

        --metadataInputsCopy;
      }

      while (metadataInputsCopy);
      goto LABEL_17;
    }
  }

  v27 = indexCopy;
LABEL_17:
  v17->_movieSegmentMetadataTrackIndex = inputsCopy;
  v17->_masterInputIndex = 0;
  v29 = v55 + 1;
  v17->_trackIDs = malloc_type_calloc(v55 + 1, 4uLL, 0x100004052888210uLL);
  v17->_expectingToSeeSamplesForInput = malloc_type_calloc(v55, 1uLL, 0x100004077774924uLL);
  v17->_haveSeenSamplesForTrack = malloc_type_calloc(v55, 1uLL, 0x100004077774924uLL);
  v17->_finalDurationNeedsToBeWrittenForTrack = malloc_type_calloc(v55 + 1, 1uLL, 0x100004077774924uLL);
  v17->_providedTrackFormatDescriptions = malloc_type_calloc(v55, 8uLL, 0x6004044C4A2DFuLL);
  v17->_thumbnailGenerationDispatchQueue = FigDispatchQueueCreateWithPriority();
  v17->_numVideoTracks = v52;
  v17->_numAudioTracks = audioInputs;
  if (audioInputs)
  {
    v17->_debugAudio = 0;
    v17->_haveDebugASBD = 0;
  }

  v17->_currFileSize = 0;
  v30 = MEMORY[0x1E6960CC0];
  v17->_currFileDuration.epoch = *(MEMORY[0x1E6960CC0] + 16);
  *&v17->_currFileDuration.value = *v30;
  v17->_stagingQueues = inputsCopy;
  v17->_numInputs = v55;
  v17->_numSyntheticInputs = 1;
  v17->_recordingState = 0;
  v17->_currentRecordingStateSettingsID = 0;
  v17->_didBeginWriting = 0;
  v17->_didBeginSession = 0;
  v17->_vitalInputStreamHasBeenForcedOff = 0;
  v17->_streamForcedOffErrorCode = 0;
  v17->_smallestWrittenPTSs = malloc_type_malloc(24 * v29, 0x1000040504FFAC1uLL);
  v17->_largestWrittenPTSs = malloc_type_malloc(24 * v29, 0x1000040504FFAC1uLL);
  numVideoTracks = v17->_numVideoTracks;
  if (numVideoTracks)
  {
    v17->_largestWrittenVideoDTSs = malloc_type_malloc(24 * numVideoTracks, 0x1000040504FFAC1uLL);
    numVideoTracks = v17->_numVideoTracks;
  }

  v32 = v17->_numAudioTracks + numVideoTracks;
  if (v32)
  {
    v17->_secondLargestWrittenAudioVideoPTSs = malloc_type_malloc(24 * v32, 0x1000040504FFAC1uLL);
    v17->_lastWrittenAudioVideoDurations = malloc_type_malloc(24 * (v17->_numAudioTracks + v17->_numVideoTracks), 0x1000040504FFAC1uLL);
  }

  CMTimeMake(&v66, 0, 1);
  v33 = *&v66.value;
  v17->_debugDurationForFailOfDiskSpaceTest.epoch = v66.epoch;
  *&v17->_debugDurationForFailOfDiskSpaceTest.value = v33;
  if (!v17->_debugDurationForFailOfDiskSpaceTest.value)
  {
    v34 = MEMORY[0x1E6960C70];
    *&v17->_debugDurationForFailOfDiskSpaceTest.value = *MEMORY[0x1E6960C70];
    v17->_debugDurationForFailOfDiskSpaceTest.epoch = *(v34 + 16);
  }

  v17->_propertyMutex = FigSimpleMutexCreate();
  v17->_pendingIrisRefMovieRequests = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17->_flushingIrisMovieGenerators = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17->_irisMovieGenerationQueue = FigDispatchQueueCreateWithPriority();
  v17->_pipelineIndex = v27;
  v17->_pipelineTraceID = 81;
  v17->_numberOfTimesRecordingWasPaused = 0;
  v17->_numVideoFramesPortTypeFront = 0;
  v17->_numVideoFramesPortTypeFrontSuperWide = 0;
  v17->_numVideoFramesPortTypeBack = 0;
  v17->_numVideoFramesPortTypeTelephoto = 0;
  v17->_numVideoFramesPortTypeSuperWide = 0;
  v17->_analyticsPayload = objc_alloc_init(BWMovieFileOutputAnalyticsPayload);
  v17->_videoStabilizationAnalyticsPayLoad = objc_alloc_init(BWVideoStabilizationAnalyticsPayload);
  v17->_sphereModeByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17->_APSModeByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17->_vfrStatistics = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17->_vfrFrameRateChangeReasonCount = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17->_movieLevelMetadataForProResRawFromFirstFrame = objc_alloc_init(BWMovieLevelMetadataForProResRaw);
  v17->_afDriverShortOccurred = 0;
  v17->_totalNumberOfFramesDropped = 0;
  v17->_numberOfFramesDroppedDueToFormatWriterQueueFull = 0;
  v17->_timeOfLastSystemPressureChange = 0;
  v17->_accumulatedSystemPressureLevel = 0;
  v17->_currentSystemPressureLevel = 0;
  v17->_recordingStartTime = 0;
  v17->_timeToCriticalSystemPressureInMS = -1;
  v17->_maxSystemPressureLevel = 0;
  v17->_factorsContributingToMaxSystemPressureLevel = 0;
  v17->_pointlessOverCaptureMaxZoomThreshold = 1.1;
  if (v25)
  {
    v17->_cameraInfoForPortType = [v25 copy];
    pointlessOverCaptureMaxZoomThreshold = v17->_pointlessOverCaptureMaxZoomThreshold;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    allValues = [v25 allValues];
    v37 = [allValues countByEnumeratingWithState:&v62 objects:v61 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v63;
      v40 = *off_1E7989E58;
      v41 = INFINITY;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v63 != v39)
          {
            objc_enumerationMutation(allValues);
          }

          [objc_msgSend(*(*(&v62 + 1) + 8 * j) objectForKeyedSubscript:{v40), "doubleValue"}];
          if (v43 > 0.0 && v43 < v41)
          {
            v17->_pointlessOverCaptureMaxZoomThreshold = pointlessOverCaptureMaxZoomThreshold * v43;
            v41 = v43;
          }
        }

        v38 = [allValues countByEnumeratingWithState:&v62 objects:v61 count:16];
      }

      while (v38);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    allKeys = [v25 allKeys];
    v46 = [allKeys countByEnumeratingWithState:&v57 objects:v56 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = 0;
      v49 = *v58;
      while (2)
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v58 != v49)
          {
            objc_enumerationMutation(allKeys);
          }

          if (BWCaptureDevicePositionFromPortType(*(*(&v57 + 1) + 8 * k)) == 1)
          {
            if (v48 > 0)
            {
              v17->_cameraSwitchStatistics = objc_alloc_init(MEMORY[0x1E695DF90]);
              goto LABEL_51;
            }

            v48 = 1;
          }
        }

        v47 = [allKeys countByEnumeratingWithState:&v57 objects:v56 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_51:
  v17->_virtualCaptureCard = 0;
  if (FigVirtualCaptureCardGetSingleton())
  {
    [BWQuickTimeMovieFileSinkNode initWithNumberOfVideoInputs:numberOfAuxiliaryPictureInputs:numberOfAudioInputs:numberOfMetadataInputs:cameraInfoByPortType:pipelineIndex:sinkID:];
  }

  else
  {
    [(BWNode *)v17 setSupportsLiveReconfiguration:1];
  }

  return v17;
}

- (void)dealloc
{
  free(self->_parentPath);

  if (self->_formatWriter)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, self, 0, self->_formatWriter);
    FigBaseObject = FigFormatWriterGetFigBaseObject();
    if (FigBaseObject)
    {
      v5 = FigBaseObject;
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v6)
      {
        v6(v5);
      }
    }

    formatWriter = self->_formatWriter;
    if (formatWriter)
    {
      CFRelease(formatWriter);
      self->_formatWriter = 0;
    }
  }

  byteStream = self->_byteStream;
  if (byteStream)
  {
    CFRelease(byteStream);
    self->_byteStream = 0;
  }

  free(self->_trackIDs);

  thumbnailSurface = self->_thumbnailSurface;
  if (thumbnailSurface)
  {
    CFRelease(thumbnailSurface);
  }

  if (self->_irisMovieProcessingSuspended)
  {
    [BWQuickTimeMovieFileSinkNode dealloc];
  }

  if ([(NSMutableArray *)self->_flushingIrisMovieGenerators count])
  {
    [BWQuickTimeMovieFileSinkNode dealloc];
  }

  if (self->_irisMovieGenerator)
  {
    [BWQuickTimeMovieFileSinkNode dealloc];
    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

  free(self->_smallestWrittenPTSs);
  free(self->_largestWrittenPTSs);
  free(self->_largestWrittenVideoDTSs);
  free(self->_secondLargestWrittenAudioVideoPTSs);
  free(self->_lastWrittenAudioVideoDurations);
  free(self->_expectingToSeeSamplesForInput);
  free(self->_haveSeenSamplesForTrack);
  free(self->_finalDurationNeedsToBeWrittenForTrack);
  [(BWQuickTimeMovieFileSinkNode *)self _clearProvidedTrackFormatDescriptions];
  free(self->_providedTrackFormatDescriptions);
  free(self->_debugABL);
  FigSimpleMutexDestroy();

  self->_virtualCaptureCard = 0;
  movieSegmentMetadataFormatDescription = self->_movieSegmentMetadataFormatDescription;
  if (movieSegmentMetadataFormatDescription)
  {
    CFRelease(movieSegmentMetadataFormatDescription);
  }

  v12.receiver = self;
  v12.super_class = BWQuickTimeMovieFileSinkNode;
  [(BWSinkNode *)&v12 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (!self->_gmLoggingPreamble)
  {
    self->_gmLoggingPreamble = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p", self];
  }

  if (!self->_limitedGMErrorLogger)
  {
    self->_limitedGMErrorLogger = [[BWLimitedGMErrorLogger alloc] initWithName:self->_gmLoggingPreamble maxLoggingCount:10];
  }

  [(BWQuickTimeMovieFileSinkNode *)self _initCapturePipelineLatencyStats];
  v3.receiver = self;
  v3.super_class = BWQuickTimeMovieFileSinkNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
}

- (void)setIrisStillImageMovieMetadataCache:(id)cache
{
  irisStillImageMovieMetadataCache = self->_irisStillImageMovieMetadataCache;
  if (irisStillImageMovieMetadataCache != cache)
  {

    self->_irisStillImageMovieMetadataCache = cache;
  }
}

- (void)setVideoOrientationTimeMachine:(id)machine
{
  videoOrientationTimeMachine = self->_videoOrientationTimeMachine;
  if (videoOrientationTimeMachine != machine)
  {

    self->_videoOrientationTimeMachine = machine;
  }
}

- (void)setupRingBufferForStabilizedTrajectoryHomographies:(int)homographies
{
  if (self->_irisStabilizedTrajectoryHomographyRingBuffer)
  {
    [BWQuickTimeMovieFileSinkNode setupRingBufferForStabilizedTrajectoryHomographies:];
  }

  if (homographies >= 1)
  {
    v4 = [[BWObjectRingBuffer alloc] initWithCapacity:*&homographies];
    self->_irisStabilizedTrajectoryHomographyRingBuffer = v4;

    [(BWObjectRingBuffer *)v4 setEnforceAscending:1];
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if ([input index] == self->_masterInputIndex)
  {
    [(BWQuickTimeMovieFileSinkNode *)self _initCapturePipelineLatencyStats];
  }

  v9.receiver = self;
  v9.super_class = BWQuickTimeMovieFileSinkNode;
  [(BWSinkNode *)&v9 configurationWithID:d updatedFormat:format didBecomeLiveForInput:input];
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if ([(BWNode *)self allInputsHaveReachedState:0])
  {
    recordingState = self->_recordingState;
    if (recordingState <= 6)
    {
      if (((1 << recordingState) & 0x76) != 0)
      {
        [(BWQuickTimeMovieFileSinkNode *)self _doEndRecordingAtTime:4294950882 earlyTerminationErrCode:?];
      }

      else if (self->_firstIrisMovieInfo)
      {
        recordingStatusDelegate = [(BWFileSinkNode *)self recordingStatusDelegate];
        if (recordingStatusDelegate)
        {
          v14 = recordingStatusDelegate;
          [(BWIrisMovieInfo *)self->_firstIrisMovieInfo setMasterMovieURL:0];
          if (dword_1ED844250)
          {
            v26 = 0;
            v25 = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [(BWNodeFileWriterStatusDelegate *)v14 fileWriter:self writerPipelineIndex:self->_pipelineIndex stoppedRecordingSampleDataForSettingsID:[(FigCaptureRecordingSettings *)[(BWIrisMovieInfo *)self->_firstIrisMovieInfo settings:v16] settingsID]];
          [BWQuickTimeMovieFileSinkNode _initAnalyticsDataInIrisMovieInfo:?];
          LOBYTE(v18) = 0;
          [(BWNodeFileWriterStatusDelegate *)v14 fileWriter:self writerPipelineIndex:self->_pipelineIndex stoppedRecordingForSettings:[(BWIrisMovieInfo *)self->_firstIrisMovieInfo settings] withError:4294950878 thumbnailSurface:0 irisMovieInfo:self->_firstIrisMovieInfo debugMetadataSidecarFileURL:0 recordingSucceeded:v18];
        }

        self->_firstIrisMovieInfo = 0;
      }
    }

    [BWQuickTimeMovieFileSinkNode _finishIrisMovieGeneration];
    self->_recordingState = 0;
    [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger resetCurrentLoggingCounter];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    stagingQueues = self->_stagingQueues;
    v9 = [(NSArray *)stagingQueues countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(stagingQueues);
          }

          [*(*(&v21 + 1) + 8 * i) removeAllObjects];
        }

        v10 = [(NSArray *)stagingQueues countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v10);
    }

    self->_settings = 0;
    self->_currentRecordingStateSettingsID = 0;
    [(BWQuickTimeMovieFileSinkNode *)self _clearProvidedTrackFormatDescriptions];

    self->_capturePipelineLatencyStats = 0;
  }

  v19.receiver = self;
  v19.super_class = BWQuickTimeMovieFileSinkNode;
  [(BWSinkNode *)&v19 didReachEndOfDataForConfigurationID:d input:input];
}

- (void)_doEndRecordingAtTime:(uint64_t)time earlyTerminationErrCode:
{
  if (!self)
  {
    return;
  }

  mach_absolute_time();
  v5 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (dword_1ED844250)
  {
    LODWORD(v235.value) = 0;
    LOBYTE(v234.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(self recordingStatusDelegate];
  isIrisRecording = [*(self + 448) isIrisRecording];
  if (isIrisRecording)
  {
    v7 = *(self + 696) != 0;
  }

  else
  {
    v7 = 0;
  }

  if (*(self + 762) == 1)
  {
    v8 = *(self + 763);
  }

  else
  {
    v8 = 0;
  }

  v190 = v8;
  v187 = v7;
  if ([*(self + 448) isIrisMovieRecording] && *(self + 992) && (v9 = *(self + 920), v9 != 0.0) && v9 < *(self + 928))
  {
    if (dword_1ED844250)
    {
      LODWORD(v235.value) = 0;
      LOBYTE(v234.value) = 0;
      v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = v235.value;
      if (os_log_type_enabled(v31, v234.value))
      {
        v33 = value;
      }

      else
      {
        v33 = value & 0xFFFFFFFE;
      }

      if (v33)
      {
        name = [self name];
        v35 = [objc_msgSend(*(self + 448) "outputURL")];
        v36 = *(self + 920);
        v37 = *(self + 928);
        LODWORD(time1.value) = 136316418;
        *(&time1.value + 4) = "[BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:]";
        LOWORD(time1.flags) = 2048;
        *(&time1.flags + 2) = self;
        HIWORD(time1.epoch) = 2112;
        v213 = name;
        v214 = 2112;
        v215 = v35;
        v216 = 2048;
        v217 = v36;
        v218 = 2048;
        v219 = v37;
        LODWORD(numSampleSizeEntriesa) = 62;
        sampleTimingArraya = &time1;
        _os_log_send_and_compose_impl();
      }

      v10 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      time = 4294951866;
    }

    else
    {
      time = 4294951866;
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (*(self + 764) == 1)
  {
    if (dword_1ED844250)
    {
      LODWORD(v235.value) = 0;
      LOBYTE(v234.value) = 0;
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v13 = v235.value;
      if (os_log_type_enabled(v12, v234.value))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        name2 = [self name];
        v16 = [objc_msgSend(*(self + 448) "outputURL")];
        settingsID = [*(self + 448) settingsID];
        v18 = *(self + 768);
        LODWORD(time1.value) = 136316418;
        *(&time1.value + 4) = "[BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:]";
        LOWORD(time1.flags) = 2048;
        *(&time1.flags + 2) = self;
        HIWORD(time1.epoch) = 2112;
        v213 = name2;
        v214 = 2112;
        v215 = v16;
        v216 = 2048;
        v217 = settingsID;
        v218 = 1024;
        LODWORD(v219) = v18;
        LODWORD(numSampleSizeEntriesa) = 58;
        sampleTimingArraya = &time1;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    time = *(self + 768);
    v10 = 1;
  }

  if (v7 && *(self + 992))
  {
    v10 |= [*(self + 696) spatialOverCaptureExpected] ^ 1;
  }

  v19 = !v7;
  v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  v21 = *(self + 640);
  v22 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if ((v10 & 1) == 0 && v21)
  {
    v184 = v10;
    v23 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if ((*(self + 761) & v7 & 1) != 0 && *(self + 736) >= 1)
    {
      v24 = *(self + 696);
      if (v24)
      {
        [v24 movieStartTime];
      }

      else
      {
        memset(time, 0, 24);
      }

      time1 = *(self + 472);
      if (CMTimeCompare(&time1, time))
      {
        [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
      }

      v25 = *(self + 936);
      if (v25)
      {
        data = [v25 copyAndClearStillImageTransformDataForSettingsID:{objc_msgSend(*(self + 696), "livePhotoMetadataStillImageKeyFrameSettingsID")}];
        if (!data)
        {
          timeCopy = time;
          LODWORD(v235.value) = 0;
          LOBYTE(v234.value) = 0;
          v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v29 = v235.value;
          if (os_log_type_enabled(v28, v234.value))
          {
            v30 = v29;
          }

          else
          {
            v30 = v29 & 0xFFFFFFFE;
          }

          if (v30)
          {
            name3 = [self name];
            v39 = *(self + 696);
            LODWORD(time1.value) = 136315906;
            *(&time1.value + 4) = "[BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:]";
            LOWORD(time1.flags) = 2048;
            *(&time1.flags + 2) = self;
            HIWORD(time1.epoch) = 2112;
            v213 = name3;
            v214 = 2112;
            v215 = v39;
            LODWORD(numSampleSizeEntriesa) = 42;
            sampleTimingArraya = &time1;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          data = [MEMORY[0x1E695DEF0] data];
          LODWORD(time) = timeCopy;
          v19 = !v7;
        }
      }

      else
      {
        data = 0;
      }

      v40 = *(self + 696);
      v23 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      if (v40)
      {
        [v40 stillImageCaptureTime];
      }

      else
      {
        memset(time, 0, 24);
      }

      v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      if ([(BWQuickTimeMovieFileSinkNode *)self _writeStillImageTimeMetadataSampleForCaptureTime:data stillImageTransformData:*(self + 944) referenceDimensions:*(self + 736) toTrackWithID:*(self + 740) usingTrackTimeScale:?])
      {
        [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
      }
    }

    v185 = v19;
    timeCopy2 = time;
    v41 = isIrisRecording & v19;
    memset(&v235, 0, sizeof(v235));
    *time = *&a2->value;
    *&time[16] = a2->epoch;
    [(BWQuickTimeMovieFileSinkNode *)self _finalizeAudioVideoDurationsAndFindWrittenEndingPTSFromEndingPTS:&v235];
    memset(&v234, 0, sizeof(v234));
    *time = *&a2->value;
    *&time[16] = a2->epoch;
    [(BWQuickTimeMovieFileSinkNode *)self _validatedEndingPTSFromEndingPTS:&v234];
    v42 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if (*(self + 761) == 1 && (v235.flags & 1) != 0)
    {
      if (*(self + 1772))
      {
        *time = *(self + 1760);
        *&time[16] = *(self + 1776);
        [(BWQuickTimeMovieFileSinkNode *)self _writeMovieSegmentMetadataForSegmentStartPTS:MEMORY[0x1E6960C70] segmentDuration:?];
        *(*(self + 680) + *(self + 1752)) = 1;
      }

      v43 = 600;
      v44 = v23[864];
      if (*(self + v44) + *(self + 600))
      {
        v48 = 0;
        v49 = *MEMORY[0x1E695E480];
        v191 = *MEMORY[0x1E69604C8];
        v189 = *MEMORY[0x1E695E4D0];
        v50 = 12;
        v51 = MEMORY[0x1E6960CF0];
        do
        {
          if (*(*(self + 504) + v50))
          {
            target.value = 0;
            v52 = *(v51 + 48);
            *&time[32] = *(v51 + 32);
            *v197 = v52;
            *&v197[16] = *(v51 + 64);
            v53 = *(v51 + 16);
            *time = *v51;
            *&time[16] = v53;
            v233 = *a2;
            rhs = v235;
            v231 = v234;
            [(BWQuickTimeMovieFileSinkNode *)self _endingPTSForTrack:v48 endingPTS:&v233 writtenEndingPTS:&rhs validatedEndingPTS:&v231 isIrisMasterMovie:v41, &time1];
            *&time[24] = time1;
            *v197 = time1;
            if (CMSampleBufferCreate(v49, 0, 1u, 0, 0, 0, 0, 1, time, 0, 0, &target))
            {
              [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
            }

            if (target.value)
            {
              CMSetAttachment(target.value, v191, v189, 1u);
              if (*(*(self + 680) + v48) == 1)
              {
                v54 = *(self + v20[920]);
                v55 = *(*(self + 656) + 4 * v48);
                v56 = target.value;
                v57 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (!v57 || (v58 = v57(v54, v55, v56), v23 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled, v42 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled, v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled, v58))
                {
                  [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
                  v23 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                  v42 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                  v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                }
              }

              CFRelease(target.value);
            }

            v43 = v42[863];
            LODWORD(v44) = v23[864];
          }

          ++v48;
          v50 += 24;
        }

        while (v48 < *(self + v44) + *(self + v43));
      }
    }

    v22 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if (*(self + 761) == 1 && !(((v234.flags & 1) == 0) | v41 & 1))
    {
      memset(&time1, 0, sizeof(time1));
      v45 = *(self + 416);
      *time = v234;
      CMTimeConvertScale(&time1, time, v45, kCMTimeRoundingMethod_RoundTowardZero);
      v46 = *(self + v20[920]);
      v233 = time1;
      v47 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v47 || (*time = v233, v47(v46, time)))
      {
        [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
      }
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, self, 0, *(self + v20[920]));
    v60 = *(self + v20[920]);
    v61 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v61)
    {
      v62 = v187;
      v5 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      time = timeCopy2;
      if (!v61(v60, 0))
      {
LABEL_87:
        if (v62 && [*(self + 696) containsTrims])
        {
          v63 = BWTrackEditListArrayForRegularTrackInIrisTrimmedMovie(*(self + 696));
          v64 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          v65 = MEMORY[0x1E6971CE0];
          if (*(self + 600))
          {
            v70 = v63;
            v71 = 0;
            v72 = *MEMORY[0x1E6971CE0];
            do
            {
              if (*(*(self + 664) + v71) == 1)
              {
                v73 = *(self + 640);
                v74 = *(*(self + 656) + 4 * v71);
                v75 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                if (!v75 || (v76 = v75(v73, v74, v72, v70), v64 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled, v76))
                {
                  [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
                  v64 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                }
              }

              ++v71;
            }

            while (v71 < *(self + v64[863]));
          }

          time = timeCopy2;
          v22 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          if (*(self + 736))
          {
            v66 = BWTrackEditListArrayForStillImageDisplayTimeTrackInIrisTrimmedMovie(*(self + 696), *(self + 740));
            v67 = *(self + 640);
            v68 = *(self + 736);
            v69 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (!v69 || v69(v67, v68, *v65, v66))
            {
              [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
            }
          }
        }

        v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        v77 = *(self + 640);
        v78 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v78 || v78(v77, 0))
        {
          [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
        }

        v79 = MEMORY[0x1E6960C70];
        v80 = [(BWQuickTimeMovieFileSinkNode *)self _getCurrentFileSize:MEMORY[0x1E6960C70] currentHostTime:?];
        v233 = *(self + 272);
        if (*(self + 484) & 1) != 0 && (v234.flags)
        {
          *time = v234;
          time1 = *(self + 472);
          if (CMTimeCompare(time, &time1) >= 1)
          {
            time1 = v234;
            rhs = *(self + 472);
            CMTimeSubtract(time, &time1, &rhs);
            CMTimeConvertScale(&v233, time, *(self + 416), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          }
        }

        FigSimpleMutexLock();
        *(self + 216) = v80;
        *(self + 272) = v233;
        FigSimpleMutexUnlock();
        v81 = *(self + 776);
        if (v81)
        {
          rhs = **(self + 496);
          v231 = **(self + 504);
          target = **(self + 528);
          v83 = *(self + 512);
          v228 = *v83;
          v82 = *(v83 + 2);
        }

        else
        {
          *&rhs.value = *v79;
          v82 = *(v79 + 2);
          rhs.epoch = v82;
          *&v231.value = *&rhs.value;
          v231.epoch = v82;
          *&target.value = *&rhs.value;
          target.epoch = v82;
          v228 = *&rhs.value;
        }

        v229 = v82;
        v7 = v187;
        if (*(self + 792))
        {
          v85 = 3 * v81;
          v86 = *(self + 496) + 8 * v85;
          v226 = *v86;
          v227 = *(v86 + 16);
          v87 = *(self + 504) + 8 * v85;
          *&v225.value = *v87;
          v88 = *(self + 528);
          v225.epoch = *(v87 + 16);
          v89 = v88 + 8 * v85;
          *&v224.value = *v89;
          v84 = *(v89 + 16);
        }

        else
        {
          v226 = *v79;
          v84 = *(v79 + 2);
          v227 = v84;
          *&v225.value = v226;
          v225.epoch = v84;
          *&v224.value = v226;
        }

        v224.epoch = v84;
        v11 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        v222 = 0uLL;
        v223 = 0;
        [(BWQuickTimeMovieFileSinkNode *)self _findWrittenStartingPTS];
        if (!dword_1ED844250)
        {
          goto LABEL_151;
        }

        *v221 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v90 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v91 = *v221;
        if (os_log_type_enabled(v90, type))
        {
          v92 = v91;
        }

        else
        {
          v92 = v91 & 0xFFFFFFFE;
        }

        if (v92)
        {
          v93 = *(self + 1040);
          settingsID2 = [*(self + v5[909]) settingsID];
          *time = *&a2->value;
          *&time[16] = a2->epoch;
          Seconds = CMTimeGetSeconds(time);
          *time = v222;
          *&time[16] = v223;
          v192 = CMTimeGetSeconds(time);
          *time = v235;
          v95 = CMTimeGetSeconds(time);
          *time = rhs;
          v96 = CMTimeGetSeconds(time);
          *time = v231;
          v97 = CMTimeGetSeconds(time);
          time1 = v231;
          v195 = target;
          CMTimeAdd(time, &time1, &v195);
          v98 = CMTimeGetSeconds(time);
          *time = v228;
          *&time[16] = v229;
          v99 = CMTimeGetSeconds(time);
          *time = v226;
          *&time[16] = v227;
          v100 = CMTimeGetSeconds(time);
          *time = v225;
          v101 = CMTimeGetSeconds(time);
          time1 = v225;
          v195 = v224;
          CMTimeAdd(time, &time1, &v195);
          v102 = CMTimeGetSeconds(time);
          mach_absolute_time();
          v103 = FigHostTimeToNanoseconds();
          *time = 136318722;
          *&time[4] = "[BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:]";
          *&time[12] = 2112;
          *&time[14] = v93;
          *&time[22] = 2048;
          *&time[24] = settingsID2;
          *&time[32] = 2048;
          *&time[34] = Seconds;
          *&time[42] = 1024;
          *&time[44] = timeCopy2;
          *v197 = 2048;
          *&v197[2] = v192;
          *&v197[10] = 2048;
          *&v197[12] = v95;
          *&v197[20] = 2048;
          *&v197[22] = v96;
          v198 = 2048;
          v199 = v97;
          v200 = 2048;
          v201 = v98;
          v202 = 2048;
          v203 = v99;
          v204 = 2048;
          v205 = v100;
          v206 = 2048;
          v207 = v101;
          v208 = 2048;
          v209 = v102;
          v210 = 2048;
          v211 = (v103 / 1000) / 1000.0;
          LODWORD(numSampleSizeEntriesa) = 148;
          sampleTimingArraya = time;
          v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        time = timeCopy2;
        v7 = v187;
        v11 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        v22 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        if (*(self + 1016))
        {
          if (!dword_1ED844250)
          {
            goto LABEL_151;
          }

          LODWORD(v195.value) = 0;
          v221[0] = OS_LOG_TYPE_DEFAULT;
          v107 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v108 = v195.value;
          if (os_log_type_enabled(v107, v221[0]))
          {
            v109 = v108;
          }

          else
          {
            v109 = v108 & 0xFFFFFFFE;
          }

          if (v109)
          {
            v115 = *(self + 1040);
            v116 = *(self + 1016);
            LODWORD(time1.value) = 136315650;
            *(&time1.value + 4) = "[BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:]";
            LOWORD(time1.flags) = 2112;
            *(&time1.flags + 2) = v115;
            HIWORD(time1.epoch) = 2112;
            v213 = v116;
            LODWORD(numSampleSizeEntriesa) = 32;
            sampleTimingArraya = &time1;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v11 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          v19 = v185;
          if (!dword_1ED844250)
          {
            goto LABEL_151;
          }

          LODWORD(v195.value) = 0;
          v221[0] = OS_LOG_TYPE_DEFAULT;
          v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v118 = v195.value;
          if (os_log_type_enabled(v117, v221[0]))
          {
            v119 = v118;
          }

          else
          {
            v119 = v118 & 0xFFFFFFFE;
          }

          if (v119)
          {
            v122 = *(self + 1040);
            v123 = *(self + 1024);
            LODWORD(time1.value) = 136315650;
            *(&time1.value + 4) = "[BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:]";
            LOWORD(time1.flags) = 2112;
            *(&time1.flags + 2) = v122;
            HIWORD(time1.epoch) = 2112;
            v213 = v123;
            LODWORD(numSampleSizeEntriesa) = 32;
            sampleTimingArraya = &time1;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v11 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          v19 = v185;
          if (!dword_1ED844250)
          {
            goto LABEL_151;
          }
        }

        else if (!dword_1ED844250)
        {
LABEL_151:
          v21 = *(self + v20[920]);
          v190 = 1;
          v10 = v184;
          goto LABEL_152;
        }

        LODWORD(v195.value) = 0;
        v221[0] = OS_LOG_TYPE_DEFAULT;
        v104 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v105 = v195.value;
        if (os_log_type_enabled(v104, v221[0]))
        {
          v106 = v105;
        }

        else
        {
          v106 = v105 & 0xFFFFFFFE;
        }

        if (v106)
        {
          v110 = *(self + 1040);
          v111 = *(self + 1032);
          LODWORD(time1.value) = 136315650;
          *(&time1.value + 4) = "[BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:]";
          LOWORD(time1.flags) = 2112;
          *(&time1.flags + 2) = v110;
          HIWORD(time1.epoch) = 2112;
          v213 = v111;
          LODWORD(numSampleSizeEntriesa) = 32;
          sampleTimingArraya = &time1;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v11 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        v19 = v185;
        if (dword_1ED844250)
        {
          LODWORD(v195.value) = 0;
          v221[0] = OS_LOG_TYPE_DEFAULT;
          v112 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v113 = v195.value;
          if (os_log_type_enabled(v112, v221[0]))
          {
            v114 = v113;
          }

          else
          {
            v114 = v113 & 0xFFFFFFFE;
          }

          if (v114)
          {
            v120 = *(self + 1040);
            v121 = *(self + 1008);
            LODWORD(time1.value) = 136315650;
            *(&time1.value + 4) = "[BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:]";
            LOWORD(time1.flags) = 2112;
            *(&time1.flags + 2) = v120;
            HIWORD(time1.epoch) = 2112;
            v213 = v121;
            LODWORD(numSampleSizeEntriesa) = 32;
            sampleTimingArraya = &time1;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v11 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          v19 = v185;
        }

        goto LABEL_151;
      }
    }

    else
    {
      v5 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      time = timeCopy2;
      v62 = v187;
    }

    [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
    goto LABEL_87;
  }

LABEL_152:
  if (v21)
  {
    if (v10)
    {
      v124 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterRemoveObserver(v124, self, 0, *(self + v20[920]));
    }

    FigBaseObject = FigFormatWriterGetFigBaseObject();
    if (!FigBaseObject || (v126 = FigBaseObject, (v127 = *(*(CMBaseObjectGetVTable() + 8) + 24)) == 0) || v127(v126))
    {
      [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
    }
  }

  if (*(self + 1704))
  {
    if ([*(self + v5[909]) usesVirtualCaptureCard])
    {
      v128 = *(self + 1704);
      v129 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v129 || v129(v128))
      {
        [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
      }
    }
  }

  [(BWQuickTimeMovieFileSinkNode *)self _updateMovieFileMemoryAnalytics];
  if (v10)
  {
    [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:self earlyTerminationErrCode:?];
    v190 = 0;
LABEL_210:
    if (!isIrisRecording)
    {
LABEL_240:
      v150 = 0;
      goto LABEL_241;
    }

    if (!v7)
    {
      goto LABEL_219;
    }

LABEL_212:
    v150 = *(self + 696);

    *(self + 696) = 0;
    goto LABEL_241;
  }

  if (!*(self + v20[920]))
  {
    goto LABEL_210;
  }

  if (((isIrisRecording ^ 1 | v7) & 1) == 0)
  {
    goto LABEL_199;
  }

  movieLevelMetadata = [self movieLevelMetadata];
  MovieLevelMetadataWithSpatialAggressorsSeenMetadata = movieLevelMetadata;
  if (*(self + 1652) == 1)
  {
    MovieLevelMetadataWithSpatialAggressorsSeenMetadata = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSpatialAggressorsSeenMetadata(movieLevelMetadata, *(self + 1656) > 1u);
    v132 = MovieLevelMetadataWithSpatialAggressorsSeenMetadata;
  }

  if (*(self + 1512) == 1)
  {
    MovieLevelMetadataWithSpatialAggressorsSeenMetadata = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataForCinematicVideoIntent(MovieLevelMetadataWithSpatialAggressorsSeenMetadata, 1);
    v133 = MovieLevelMetadataWithSpatialAggressorsSeenMetadata;
  }

  if (*(self + 1744) == 1)
  {
    MovieLevelMetadataWithSpatialAggressorsSeenMetadata = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataForGreenGhostPresence(MovieLevelMetadataWithSpatialAggressorsSeenMetadata, *(self + 1745));
    v134 = MovieLevelMetadataWithSpatialAggressorsSeenMetadata;
  }

  if (*(self + 1680) == 1)
  {
    MovieLevelMetadataWithSpatialAggressorsSeenMetadata = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataForFrontAndBackCameraComposition(MovieLevelMetadataWithSpatialAggressorsSeenMetadata, 1);
    v135 = MovieLevelMetadataWithSpatialAggressorsSeenMetadata;
  }

  if (v7)
  {
    if ([*(self + 696) isVitalityScoreValid])
    {
      v177 = [objc_msgSend(*(self + 696) "settings")];
      if (*(self + 992) && [objc_msgSend(*(self + 696) "settings")])
      {
        v177 = [objc_msgSend(*(self + 696) "settings")];
      }

      if (([MovieLevelMetadataWithSpatialAggressorsSeenMetadata isEqual:{v177, sampleTimingArraya, numSampleSizeEntriesa}] & 1) == 0)
      {
        [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
      }

      [(BWQuickTimeMovieFileSinkNode *)self _doEndRecordingAtTime:time earlyTerminationErrCode:?];
      MovieLevelMetadataWithSpatialAggressorsSeenMetadata = *time;
    }

    if (*(self + 936))
    {
      MovieLevelMetadataWithSpatialAggressorsSeenMetadata = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithVitalityDisabledIfRequired(MovieLevelMetadataWithSpatialAggressorsSeenMetadata);
    }

    if ([*(self + 696) limitStillImageTransformDuringVitalityPlayback])
    {
      MovieLevelMetadataWithSpatialAggressorsSeenMetadata = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithLimitStillImageTransformFlagIfRequired(MovieLevelMetadataWithSpatialAggressorsSeenMetadata);
    }

    if ([objc_msgSend(*(self + 696) "subjectRelightingResult")])
    {
      [objc_msgSend(*(self + 696) "subjectRelightingResult")];
      MovieLevelMetadataWithSpatialAggressorsSeenMetadata = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSubjectRelightingAppliedCurveParameter(MovieLevelMetadataWithSpatialAggressorsSeenMetadata, v136);
    }

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (*(self + 896) && ((*(self + 888) != 0) & has_internal_diagnostics) == 1)
    {
      [(BWQuickTimeMovieFileSinkNode *)self _computeTransitionVitalityScore:?];
    }

    if ([objc_msgSend(*(self + 696) "stillImageRequestSettings")])
    {
      MovieLevelMetadataWithSpatialAggressorsSeenMetadata = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSmartStyleMetadata(MovieLevelMetadataWithSpatialAggressorsSeenMetadata, [objc_msgSend(*(self + 696) "stillImageRequestSettings")], objc_msgSend(objc_msgSend(*(self + 696), "settings"), "smartStyleRenderingBypassed"));
    }
  }

  v138 = *(self + 912);
  if (v138)
  {
    [v138 computeQualityScore];
    v140 = v139;
    MovieLevelMetadataWithSpatialAggressorsSeenMetadata = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSpatialOverCaptureQualityScore(MovieLevelMetadataWithSpatialAggressorsSeenMetadata, [*(self + 912) qualityScoringVersion], v140);
  }

  if (MovieLevelMetadataWithSpatialAggressorsSeenMetadata && ([MovieLevelMetadataWithSpatialAggressorsSeenMetadata isEqual:{objc_msgSend(*(self + v5[909]), "movieLevelMetadata")}] & 1) == 0)
  {
    v141 = FigMetadataRewriterDictionaryCreateFromFigMetadataPropertyArray();
    [*(self + v5[909]) outputURL];
    if (FigRewriteMetadata())
    {
      [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
      if (!v141)
      {
        goto LABEL_196;
      }

      goto LABEL_195;
    }

    if (v141)
    {
LABEL_195:
      CFRelease(v141);
    }
  }

LABEL_196:
  if (*(self + 762) == 1)
  {
    [*(self + v5[909]) outputURL];
    if (FigConsolidateMovieFragments())
    {
      [BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:];
    }
  }

LABEL_199:
  if (*(self + v22[866]) == 1)
  {
    v142 = *(self + 600);
    if (v142)
    {
      v143 = *(self + 688);
      while (!*v143)
      {
        ++v143;
        if (!--v142)
        {
          goto LABEL_204;
        }
      }

      -[BWQuickTimeMovieFileSinkNode _updateTrackFormatDescriptionsAtURL:](self, [*(self + v5[909]) outputURL]);
    }
  }

LABEL_204:
  if (((isIrisRecording ^ 1 | v19) & 1) == 0)
  {
    masterMovieURL = [*(self + 696) masterMovieURL];
    outputURL = [*(self + v5[909]) outputURL];
    outputMovieURL = [*(self + 696) outputMovieURL];
    if ([masterMovieURL isEqual:outputURL])
    {
      if (([outputURL isEqual:outputMovieURL] & 1) == 0)
      {
        v234.value = 0;
        MetadataSidecarFileURL = FigCaptureMetadataUtilitiesCreateMetadataSidecarFileURL(outputURL);
        v148 = FigCaptureMetadataUtilitiesCreateMetadataSidecarFileURL(outputMovieURL);
        [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];

        v234.value = 0;
        [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
        [*(self + 696) setMasterMovieURL:0];
        [*(self + 696) setTemporaryMovieURL:0];
        memset(time, 0, 24);
        v149 = *(self + 696);
        if (v149)
        {
          [v149 movieStartTime];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        v235 = *(self + 272);
        CMTimeAdd(time, &time1, &v235);
        if (([*(self + 696) containsTrims] & 1) == 0)
        {
          time1 = *time;
          [*(self + 696) setMovieTrimEndTime:&time1];
        }

        time1 = *time;
        [*(self + 696) setMovieEndTime:{&time1, sampleTimingArraya, numSampleSizeEntriesa}];
        v22 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      }
    }
  }

  if ((isIrisRecording & 1) == 0)
  {
    v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if (!*(self + 992))
    {
      [(BWQuickTimeMovieFileSinkNode *)self _submitMovieFileCoreAnalyticsEvent];
    }

    goto LABEL_240;
  }

  v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (v187)
  {
    goto LABEL_212;
  }

LABEL_219:
  v151 = *(self + 712);
  if (v151)
  {
    v152 = v151;
    FigSimpleMutexLock();
    [*(self + 720) addObject:*(self + 712)];
    if (dword_1ED844250)
    {
      timeCopy3 = time;
      LODWORD(v235.value) = 0;
      LOBYTE(v234.value) = 0;
      v154 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v155 = v235.value;
      if (os_log_type_enabled(v154, v234.value))
      {
        v156 = v155;
      }

      else
      {
        v156 = v155 & 0xFFFFFFFE;
      }

      if (v156)
      {
        v157 = *(self + 1040);
        v158 = *(self + 712);
        v159 = [*(self + 720) count];
        LODWORD(time1.value) = 136315906;
        *(&time1.value + 4) = "[BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:]";
        LOWORD(time1.flags) = 2112;
        *(&time1.flags + 2) = v157;
        HIWORD(time1.epoch) = 2048;
        v213 = v158;
        v214 = 1024;
        LODWORD(v215) = v159;
        LODWORD(numSampleSizeEntriesa) = 38;
        sampleTimingArraya = &time1;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      time = timeCopy3;
      v11 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    }

    *(self + 712) = 0;
    FigSimpleMutexUnlock();
    v22 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if ([v152 flushAsync])
    {
      FigSimpleMutexLock();
      [*(self + 720) removeObjectIdenticalTo:v152];
      if (dword_1ED844250)
      {
        timeCopy4 = time;
        LODWORD(v235.value) = 0;
        LOBYTE(v234.value) = 0;
        v161 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v162 = v235.value;
        if (os_log_type_enabled(v161, v234.value))
        {
          v163 = v162;
        }

        else
        {
          v163 = v162 & 0xFFFFFFFE;
        }

        if (v163)
        {
          v164 = *(self + 1040);
          v165 = [*(self + 720) count];
          LODWORD(time1.value) = 136315906;
          *(&time1.value + 4) = "[BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:]";
          LOWORD(time1.flags) = 2112;
          *(&time1.flags + 2) = v164;
          HIWORD(time1.epoch) = 2048;
          v213 = v152;
          v214 = 1024;
          LODWORD(v215) = v165;
          LODWORD(numSampleSizeEntriesa) = 38;
          sampleTimingArraya = &time1;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        time = timeCopy4;
        v22 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        v20 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      }

      FigSimpleMutexUnlock();
    }

    goto LABEL_240;
  }

  v150 = 0;
  v22 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
LABEL_241:
  v166 = *(self + v20[920]);
  if (v166)
  {
    CFRelease(v166);
    *(self + v20[920]) = 0;
  }

  v167 = *(self + 648);
  if (v167)
  {
    CFRelease(v167);
    *(self + 648) = 0;
  }

  bzero(*(self + 656), 4 * (*(self + 608) + *(self + 600)));
  [*(self + 1104) reset];
  *(self + 420) = 0;
  *(self + 1064) = 0;
  *(self + 1072) = 0;
  *(self + 1080) = 0;
  *(self + 1088) = 0;
  *(self + 1096) = 0;

  *(self + 1016) = 0;
  *(self + 1024) = 0;

  *(self + 1032) = 0;
  *(self + 1336) = 0;
  *(self + 1408) = 0;
  [*(self + 1672) reset];
  *(self + 760) = 0;
  *(self + v22[866]) = 0;
  *(self + 764) = 0;
  *(self + v11[869]) = 0;
  dispatch_sync(*(self + 616), &__block_literal_global_36);
  if (v150)
  {
    if (v190)
    {
      v170 = [BWQuickTimeMovieFileSinkNode _verifyMovieTiming:self];
      v171 = v170 == 0;
      if (v170)
      {
        time = v170;
      }

      else
      {
        time = time;
      }
    }

    else
    {
      v171 = 0;
    }

    v190 = v171;
    [(BWQuickTimeMovieFileSinkNode *)self _moveOrDeleteTemporaryIrisMovie:v150 recordingSucceeded:v171];
  }

  recordingStatusDelegate = [self recordingStatusDelegate];
  if (recordingStatusDelegate)
  {
    v172 = recordingStatusDelegate;
    if (qtmfsn_movieRecordingIsProRes(*(self + v5[909])) & 1) != 0 || (*(self + 1512))
    {
      v173 = *(self + 960);
      if (v173)
      {
        if (!time)
        {
          if (v173 == *(self + 968))
          {
            LODWORD(v235.value) = 0;
            LOBYTE(v234.value) = 0;
            v174 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v175 = v235.value;
            if (os_log_type_enabled(v174, v234.value))
            {
              v176 = v175;
            }

            else
            {
              v176 = v175 & 0xFFFFFFFE;
            }

            if (v176)
            {
              name4 = [self name];
              LODWORD(time1.value) = 136315906;
              *(&time1.value + 4) = "[BWQuickTimeMovieFileSinkNode _doEndRecordingAtTime:earlyTerminationErrCode:]";
              LOWORD(time1.flags) = 2048;
              *(&time1.flags + 2) = self;
              HIWORD(time1.epoch) = 2112;
              v213 = name4;
              v214 = 1024;
              LODWORD(v215) = -15437;
              LODWORD(numSampleSizeEntriesb) = 38;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            time = 4294951859;
          }

          else if (FigDebugIsInternalBuild())
          {
            time = 4294951861;
          }

          else
          {
            time = 0;
          }
        }
      }
    }

    [BWQuickTimeMovieFileSinkNode _initAnalyticsDataInIrisMovieInfo:self];
    LOBYTE(numSampleSizeEntriesb) = v190 & 1;
    [v172 fileWriter:self writerPipelineIndex:*(self + 992) stoppedRecordingForSettings:*(self + v5[909]) withError:time thumbnailSurface:*(self + 624) irisMovieInfo:v150 debugMetadataSidecarFileURL:0 recordingSucceeded:numSampleSizeEntriesb];
  }

  v169 = *(self + 624);
  if (v169)
  {
    CFRelease(v169);
    *(self + 624) = 0;
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (!buffer)
  {
    return;
  }

  bufferCopy = buffer;
  memset(&v65, 0, sizeof(v65));
  BWGetOriginalPresentationTimeStampFromBuffer(buffer, &v65);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [(BWQuickTimeMovieFileSinkNode *)self pipelineTraceID];
    time = v65;
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  index = [input index];
  v8 = &unk_1E799C000;
  v9 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (BWSampleBufferIsMarkerBuffer(bufferCopy))
  {
    if (CMGetAttachment(bufferCopy, @"IrisMovieRequest", 0) || qtmfsn_bufferSpecifiesFileWriterAction(bufferCopy, @"StreamForcedOff") || qtmfsn_bufferSpecifiesFileWriterAction(bufferCopy, @"SpatialAggressorsSeen"))
    {
      if (index != self->_masterInputIndex)
      {
        return;
      }
    }

    else if (qtmfsn_bufferSpecifiesFileWriterAction(bufferCopy, @"Prewarm"))
    {
      return;
    }

    if ([input index] == self->_masterInputIndex)
    {
      v10 = CMGetAttachment(bufferCopy, @"RecordingFrameDropsCountDueToISP", 0);
      if (v10)
      {
        v11 = v10;
        -[BWMovieFileOutputAnalyticsPayload setNumberOfISPFrames:](self->_analyticsPayload, "setNumberOfISPFrames:", -[BWMovieFileOutputAnalyticsPayload numberOfISPFrames](self->_analyticsPayload, "numberOfISPFrames") + [v10 intValue]);
        v8 = &unk_1E799C000;
        -[BWMovieFileOutputAnalyticsPayload setNumberOfISPFramesDropped:](self->_analyticsPayload, "setNumberOfISPFramesDropped:", -[BWMovieFileOutputAnalyticsPayload numberOfISPFramesDropped](self->_analyticsPayload, "numberOfISPFramesDropped") + [v11 intValue]);
        CMRemoveAttachment(bufferCopy, @"RecordingFrameDropsCountDueToISP");
      }
    }
  }

  if (self->_numVideoTracks && [input index] == self->_masterInputIndex && !BWSampleBufferIsMarkerBuffer(bufferCopy))
  {
    [(BWMovieFileOutputAnalyticsPayload *)self->_analyticsPayload setNumberOfISPFrames:[(BWMovieFileOutputAnalyticsPayload *)self->_analyticsPayload numberOfISPFrames]+ 1];
    [CMGetAttachment(bufferCopy @"UIZoomFactor"];
    v13 = v12;
    [(BWMovieFileOutputAnalyticsPayload *)self->_analyticsPayload minUIZoomDuringVideoRecording];
    if (v13 < *&v14)
    {
      *&v14 = v13;
      [(BWMovieFileOutputAnalyticsPayload *)self->_analyticsPayload setMinUIZoomDuringVideoRecording:v14];
    }

    [(BWMovieFileOutputAnalyticsPayload *)self->_analyticsPayload maxUIZoomDuringVideoRecording];
    if (v13 > *&v15)
    {
      *&v15 = v13;
      [(BWMovieFileOutputAnalyticsPayload *)self->_analyticsPayload setMaxUIZoomDuringVideoRecording:v15];
    }

    if (self->_capturePipelineLatencyStats)
    {
      v16 = CMGetAttachment(bufferCopy, @"IrisStagingNodeEmissionTimeStamp", 0);
      v17 = CMGetAttachment(bufferCopy, @"FileCoordinatorEmissionTimeStamp", 0);
      if (v16 | v17)
      {
        v18 = v17;
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&time, HostTimeClock);
        CMTimeConvertScale(&v64, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        value = v64.value;
        if (v16)
        {
          v21 = (value - [v16 longLongValue]);
          [(BWStats *)self->_irisVideoLatencyStats addDataPoint:v21];
          [(BWStats *)self->_recentIrisVideoLatencyStats addDataPoint:v21];
        }

        if (v18)
        {
          v22 = (value - [v18 longLongValue]);
          [(BWStats *)self->_capturePipelineLatencyStats addDataPoint:v22];
          [(BWStats *)self->_videoLatencyStats addDataPoint:v22];
        }
      }
    }

    v23 = CMGetAttachment(bufferCopy, *off_1E798A3C8, 0);
    v24 = v23;
    if (self->_irisVideoFrameDurationStats)
    {
      [objc_msgSend(v23 objectForKeyedSubscript:{*off_1E798B568), "doubleValue"}];
      if (v25 > 0.0)
      {
        [(BWStats *)self->_irisVideoFrameDurationStats addDataPoint:?];
      }
    }

    v26 = [v24 objectForKeyedSubscript:0x1F216ABB0];
    if ([v26 intValue] >= 1 && !self->_irisRetimingRecipeIdentifier)
    {
      self->_irisRetimingRecipeIdentifier = v26;
    }

    v8 = &unk_1E799C000;
    if (self->_cinematicVideoEnabled && self->_recordingState == 1)
    {
      v27 = CMGetAttachment(bufferCopy, @"CinematicVideoMovieFileRecordingStats", 0);
      if (v27)
      {
        v28 = v27;
        self->_cinematicVideoMovieRecordingStats.countOfSoftFocusRequests += [objc_msgSend(v27 objectForKeyedSubscript:{0x1F21A9B10), "unsignedIntValue"}];
        self->_cinematicVideoMovieRecordingStats.countOfHardFocusRequests += [objc_msgSend(v28 objectForKeyedSubscript:{0x1F21A9AF0), "unsignedIntValue"}];
        self->_cinematicVideoMovieRecordingStats.countOfFixedPlaneFocusRequests += [objc_msgSend(v28 objectForKeyedSubscript:{0x1F21A9AD0), "unsignedIntValue"}];
        self->_cinematicVideoMovieRecordingStats.countOfTapToTrackFailures += [objc_msgSend(v28 objectForKeyedSubscript:{0x1F21A9B30), "unsignedIntValue"}];
        self->_cinematicVideoMovieRecordingStats.countOfFixedTaxonomyFocusDecisions += [objc_msgSend(v28 objectForKeyedSubscript:{0x1F21A9B50), "unsignedIntValue"}];
        self->_cinematicVideoMovieRecordingStats.countOfNonTaxonomyFocusDecisions += [objc_msgSend(v28 objectForKeyedSubscript:{0x1F21A9B70), "unsignedIntValue"}];
        self->_cinematicVideoMovieRecordingStats.countOfCustomFocusDecisions += [objc_msgSend(v28 objectForKeyedSubscript:{0x1F21A9B90), "unsignedIntValue"}];
        self->_cinematicVideoMovieRecordingStats.countOfAutoFocusDecisions += [objc_msgSend(v28 objectForKeyedSubscript:{0x1F21A9BB0), "unsignedIntValue"}];
        CMRemoveAttachment(bufferCopy, @"CinematicVideoMovieFileRecordingStats");
      }
    }
  }

  if ([(FigCaptureMovieFileRecordingSettings *)self->_settings cinematicAudioSettings])
  {
    v29 = CMGetAttachment(bufferCopy, @"CinematicAudioRemixRecordingStats", 0);
    if (v29)
    {
      v30 = v29;
      [objc_msgSend(v29 objectForKeyedSubscript:{0x1F21A99D0), "floatValue"}];
      self->_cinematicAudioRemixStats.dialogueGain = v31;
      [objc_msgSend(v30 objectForKeyedSubscript:{0x1F21A99F0), "floatValue"}];
      self->_cinematicAudioRemixStats.dialogueLoudness = v32;
      [objc_msgSend(v30 objectForKeyedSubscript:{0x1F21A9990), "floatValue"}];
      self->_cinematicAudioRemixStats.ambienceGain = v33;
      [objc_msgSend(v30 objectForKeyedSubscript:{0x1F21A99B0), "floatValue"}];
      self->_cinematicAudioRemixStats.ambienceLoudness = v34;
      [objc_msgSend(v30 objectForKeyedSubscript:{0x1F21A9A10), "floatValue"}];
      self->_cinematicAudioRemixStats.recordingLoudness = v35;
      CMRemoveAttachment(bufferCopy, @"CinematicAudioRemixRecordingStats");
    }
  }

  v63 = 0;
  firstObject = bufferCopy;
  v36 = *(v8 + 479);
  do
  {
    recordingState = self->_recordingState;
    if (![(BWQuickTimeMovieFileSinkNode *)self _driveStateMachineWithBuffer:firstObject forInputIndex:index sampleBufferAlreadyAtHeadOfQueue:v63 & 1])
    {
      v37 = 0;
      continue;
    }

    if (!self->_numInputs)
    {
      v37 = 0;
LABEL_59:
      v43 = v9[849];
      v44 = [(NSArray *)self->_stagingQueues objectAtIndex:*(&self->super.super.super.super.isa + v43)];
      index = *(&self->super.super.super.super.isa + v43);
      firstObject = [v44 firstObject];
      v63 = 1;
      continue;
    }

    v60 = bufferCopy;
    v37 = 0;
    v38 = 0;
    do
    {
      v39 = [(NSArray *)self->_stagingQueues objectAtIndex:v38];
      v40 = v39;
      while ([v39 count])
      {
        firstObject2 = [v40 firstObject];
        if (BWSampleBufferIsMarkerBuffer(firstObject2))
        {
          if (CMGetAttachment(firstObject2, v36, 0))
          {
            [BWQuickTimeMovieFileSinkNode _handleIrisMovieRequest:?];
          }

          else if (qtmfsn_bufferSpecifiesFileWriterAction(firstObject2, @"StreamForcedOff"))
          {
            [BWQuickTimeMovieFileSinkNode _handleStreamForcedOffMarkerBuffer:?];
          }

          else
          {
            if (!qtmfsn_bufferSpecifiesFileWriterAction(firstObject2, @"SpatialAggressorsSeen"))
            {
              ++v37;
              break;
            }

            [(BWQuickTimeMovieFileSinkNode *)self _handleSpatialAggressorsSeenMarkerBuffer:firstObject2];
          }
        }

        else
        {
          [(BWQuickTimeMovieFileSinkNode *)self _writeBuffer:firstObject2 forInputIndex:v38];
        }

        [v40 removeObjectAtIndex:0];
        v39 = v40;
      }

      ++v38;
      numInputs = self->_numInputs;
    }

    while (v38 < numInputs);
    bufferCopy = v60;
    v9 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if (v37 == numInputs)
    {
      goto LABEL_59;
    }
  }

  while (v37 == self->_numInputs);
  if (self->_numVideoTracks && [v59 index] == *(&self->super.super.super.super.isa + v9[849]) && !BWSampleBufferIsMarkerBuffer(bufferCopy))
  {
    v45 = [CMGetAttachment(bufferCopy *off_1E798D4E0];
    v46 = v45;
    if (v45 >= self->_maxSystemPressureLevel)
    {
      self->_maxSystemPressureLevel = v45;
      self->_factorsContributingToMaxSystemPressureLevel |= [CMGetAttachment(bufferCopy *off_1E798D4E8];
    }

    if (v46 >= 3 && self->_timeToCriticalSystemPressureInMS == -1)
    {
      mach_absolute_time();
      self->_timeToCriticalSystemPressureInMS = FigHostTimeToNanoseconds() / 0xF4240uLL;
    }

    if (v46 != self->_currentSystemPressureLevel)
    {
      v47 = mach_absolute_time();
      timeOfLastSystemPressureChange = self->_timeOfLastSystemPressureChange;
      if (!timeOfLastSystemPressureChange)
      {
        timeOfLastSystemPressureChange = self->_recordingStartTime;
      }

      self->_timeOfLastSystemPressureChange = timeOfLastSystemPressureChange;
      self->_accumulatedSystemPressureLevel += FigHostTimeToNanoseconds() / 0xF4240uLL * v46;
      self->_timeOfLastSystemPressureChange = v47;
      self->_currentSystemPressureLevel = v46;
    }
  }

  v49 = self->_recordingState;
  if ((!v49 && recordingState || v49 == 2 && recordingState != 2) && self->_numInputs)
  {
    v50 = 0;
    do
    {
      v51 = [(NSArray *)self->_stagingQueues objectAtIndex:v50];
      for (i = v51; [v51 count]; v51 = i)
      {
        firstObject3 = [i firstObject];
        v54 = firstObject3;
        v55 = self->_recordingState;
        if (!v55)
        {
          if (qtmfsn_bufferSpecifiesFileWriterAction(firstObject3, @"Start"))
          {
            break;
          }

          v55 = self->_recordingState;
        }

        if (v55 == 2 && (qtmfsn_bufferSpecifiesFileWriterAction(v54, @"Resume") & 1) != 0)
        {
          break;
        }

        [BWQuickTimeMovieFileSinkNode _printBufferEvent:? forNodeInputIndex:? eventName:?];
        [i removeObjectAtIndex:0];
      }

      ++v50;
      v56 = self->_numInputs;
    }

    while (v50 < v56);
    if (v56)
    {
      v57 = 0;
      while (1)
      {
        v58 = [(NSArray *)self->_stagingQueues objectAtIndex:v57];
        if ([v58 count])
        {
          break;
        }

        if (++v57 >= self->_numInputs)
        {
          return;
        }
      }

      -[BWQuickTimeMovieFileSinkNode _driveStateMachineWithBuffer:forInputIndex:sampleBufferAlreadyAtHeadOfQueue:](self, [v58 firstObject], v57, 1);
    }
  }
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if (![input index] && self->_numVideoTracks)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    if ([sample reason] != 0x1F219BEF0 && objc_msgSend(sample, "reason") != @"VideoDeviceDiscontinuity" && objc_msgSend(sample, "reason") != @"HighFrameRateAutoFocusDiscontinuity")
    {
      [(BWMovieFileOutputAnalyticsPayload *)self->_analyticsPayload setNumberOfISPFrames:[(BWMovieFileOutputAnalyticsPayload *)self->_analyticsPayload numberOfISPFrames]+ 1];
      ++self->_totalNumberOfFramesDropped;
    }

    if (qtmfsn_movieRecordingIsProRes(self->_settings))
    {
      if ([sample reason] == 0x1F219C130)
      {
        v6 = 4294951859;
      }

      else
      {
        v6 = 4294951861;
      }

      recordingStatusDelegate = [(BWFileSinkNode *)self recordingStatusDelegate];
      if (recordingStatusDelegate)
      {
        v8 = recordingStatusDelegate;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        [(BWNodeFileWriterStatusDelegate *)v8 fileWriter:self frameDroppedForSettingsID:[(FigCaptureRecordingSettings *)self->_settings settingsID] withError:v6];
      }
    }
  }
}

- (unint64_t)lastFileSize
{
  FigSimpleMutexLock();
  currFileSize = self->_currFileSize;
  FigSimpleMutexUnlock();
  return currFileSize;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastFileDuration
{
  FigSimpleMutexLock();
  *retstr = self->_currFileDuration;

  return FigSimpleMutexUnlock();
}

- (NSArray)movieLevelMetadata
{
  FigSimpleMutexLock();
  if (self->_movieLevelMetadata)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

- (void)setMovieLevelMetadata:(id)metadata
{
  FigSimpleMutexLock();

  self->_movieLevelMetadata = [metadata copy];

  FigSimpleMutexUnlock();
}

- (NSArray)trackReferenceListForMetadataInputs
{
  FigSimpleMutexLock();
  if (self->_trackReferenceListForMetadataInputs)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

- (uint64_t)_validateTrackReferenceListForInputs:(uint64_t)inputs ofType:
{
  if (result)
  {
    v5 = result;
    if ([a2 count] && (objc_msgSend(a2, "count") & 1) == 0)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      result = [a2 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (!result)
      {
        return result;
      }

      v6 = result;
      v7 = *v14;
      while (1)
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(a2);
          }

          if (*(v5 + 600) <= [*(*(&v13 + 1) + 8 * v8) unsignedIntValue])
          {
            v9 = MEMORY[0x1E695DF30];
            v10 = *MEMORY[0x1E695D940];
            inputs = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid input index in track reference list for %@ inputs", inputs];
            goto LABEL_14;
          }

          ++v8;
        }

        while (v6 != v8);
        result = [a2 countByEnumeratingWithState:&v13 objects:v12 count:16];
        v6 = result;
        if (!result)
        {
          return result;
        }
      }
    }

    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    inputs = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid track reference list for %@ inputs", inputs];
LABEL_14:
    objc_exception_throw([v9 exceptionWithName:v10 reason:inputs userInfo:0]);
  }

  return result;
}

- (NSArray)structuralDependentTrackReferenceListForMetadataInputs
{
  FigSimpleMutexLock();
  if (self->_structuralDependentTrackReferenceListForMetadataInputs)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

- (void)setStructuralDependentTrackReferenceListForMetadataInputs:(id)inputs
{
  [(BWQuickTimeMovieFileSinkNode *)self _validateTrackReferenceListForInputs:inputs ofType:@"structural dependent metadata"];
  FigSimpleMutexLock();

  self->_structuralDependentTrackReferenceListForMetadataInputs = [inputs copy];

  FigSimpleMutexUnlock();
}

- (NSArray)trackReferenceListForRenderMetadataInputs
{
  FigSimpleMutexLock();
  if (self->_trackReferenceListForRenderMetadataInputs)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

- (NSArray)trackReferenceListForVideoInputs
{
  FigSimpleMutexLock();
  if (self->_trackReferenceListForVideoInputs)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

- (void)setTrackReferenceListForVideoInputs:(id)inputs
{
  [(BWQuickTimeMovieFileSinkNode *)self _validateTrackReferenceListForInputs:inputs ofType:@"video"];
  FigSimpleMutexLock();

  self->_trackReferenceListForVideoInputs = [inputs copy];

  FigSimpleMutexUnlock();
}

- (NSArray)trackReferenceListForAudioInputs
{
  FigSimpleMutexLock();
  if (self->_trackReferenceListForAudioInputs)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

- (void)setTrackReferenceListForAudioInputs:(id)inputs
{
  [(BWQuickTimeMovieFileSinkNode *)self _validateTrackReferenceListForInputs:inputs ofType:@"audio"];
  FigSimpleMutexLock();

  self->_trackReferenceListForAudioInputs = [inputs copy];

  FigSimpleMutexUnlock();
}

- (void)setTrackReferenceListForAudioRemixInputs:(id)inputs
{
  [(BWQuickTimeMovieFileSinkNode *)self _validateTrackReferenceListForInputs:inputs ofType:@"audio remix"];
  FigSimpleMutexLock();

  self->_trackReferenceListForAudioRemixInputs = [inputs copy];

  FigSimpleMutexUnlock();
}

- (NSArray)taggedMediaCharacteristicsForInputs
{
  FigSimpleMutexLock();
  if (self->_taggedMediaCharacteristicsForInputs)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

- (void)setTaggedMediaCharacteristicsForInputs:(id)inputs
{
  if (![inputs count] || (objc_msgSend(inputs, "count") & 1) != 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = @"invalid tagged characteristics list for inputs";
    goto LABEL_13;
  }

  if ([inputs count])
  {
    v5 = 0;
    while (self->_numInputs > [objc_msgSend(inputs objectAtIndexedSubscript:{v5), "unsignedIntValue"}])
    {
      v6 = v5 + 1;
      if (![inputs objectAtIndexedSubscript:v6])
      {
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D940];
        v9 = @"invalid value %@ in tagged characteristics list for inputs";
        goto LABEL_13;
      }

      v5 = v6 + 1;
      if (v5 >= [inputs count])
      {
        goto LABEL_8;
      }
    }

    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = @"invalid input index in tagged characteristics list for inputs";
LABEL_13:
    objc_exception_throw([v7 exceptionWithName:v8 reason:v9 userInfo:0]);
  }

LABEL_8:
  FigSimpleMutexLock();

  self->_taggedMediaCharacteristicsForInputs = [inputs copy];

  FigSimpleMutexUnlock();
}

- (void)setIrisMovieProcessingSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  FigSimpleMutexLock();
  if (self->_irisMovieProcessingSuspended == suspendedCopy)
  {

    FigSimpleMutexUnlock();
  }

  else
  {
    self->_irisMovieProcessingSuspended = suspendedCopy;
    v5 = self->_irisMovieGenerator;
    v6 = [(NSMutableArray *)self->_flushingIrisMovieGenerators copy];
    FigSimpleMutexUnlock();
    if (v6)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            [v11 setSuspended:suspendedCopy];
            if (!suspendedCopy)
            {
              [v11 flushAsync];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
        }

        while (v8);
      }

      if (dword_1ED844250)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if (v5)
    {
      [(BWIrisMovieGenerator *)v5 setSuspended:suspendedCopy];
    }
  }
}

- (void)setClientApplicationID:(id)d
{
  if (![(NSString *)self->_clientApplicationID isEqualToString:?])
  {

    self->_clientApplicationID = [d copy];
  }
}

- (void)_findStartMarkersWithMatchedStagedSetting:(uint64_t)setting@<X2> sensorVideoPort:(uint64_t)port@<X3> captureDeviceType:(void *)type@<X8>
{
  if (!self)
  {
    *type = 0;
    type[1] = 0;
    type[2] = 0;
    return;
  }

  settingCopy = setting;
  portCopy = port;
  v38 = a2;
  memset(&v41, 0, sizeof(v41));
  if (!*(self + 600))
  {
    v8 = 0;
    goto LABEL_26;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = [*(self + 440) objectAtIndex:{v7, settingCopy, portCopy, v38}];
    if ([v10 count])
    {
      v11 = [v10 objectAtIndexedSubscript:0];
      if (BWSampleBufferIsMarkerBuffer(v11) && (qtmfsn_bufferSpecifiesFileWriterAction(v11, @"Start") & 1) != 0)
      {
        v12 = CMGetAttachment(v11, @"RecordingSettings", 0);
        if (v12)
        {
          v13 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v8)
            {
              if ([v8 isEqual:v13])
              {
                ++v9;
              }

              else
              {
                [BWQuickTimeMovieFileSinkNode _findStartMarkersWithMatchedStagedSetting:sensorVideoPort:captureDeviceType:];
              }
            }

            else
            {

              *(self + 976) = 0;
              v14 = CMGetAttachment(v11, @"TemporalScalabilityProperties", 0);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                *(self + 976) = v14;
              }

              ++v9;
              CMSampleBufferGetPresentationTimeStamp(&v41, v11);
              v8 = v13;
            }
          }

          else
          {
            [BWQuickTimeMovieFileSinkNode _findStartMarkersWithMatchedStagedSetting:sensorVideoPort:captureDeviceType:];
          }
        }

        else
        {
          [BWQuickTimeMovieFileSinkNode _findStartMarkersWithMatchedStagedSetting:sensorVideoPort:captureDeviceType:];
        }
      }

      else
      {
        [BWQuickTimeMovieFileSinkNode _findStartMarkersWithMatchedStagedSetting:sensorVideoPort:captureDeviceType:];
      }
    }

    ++v7;
    v15 = *(self + 600);
  }

  while (v7 < v15);
  if (v9 == v15)
  {
LABEL_26:
    maxFrameRate = [v8 maxFrameRate];
    v20 = v19;
    if (FigCaptureFrameRateAsFloat(maxFrameRate, v19) <= 0.0)
    {
      v21 = v37;
      v22 = v39;
      v23 = v35;
      if (!*(self + 776))
      {
LABEL_31:
        v26 = CMGetAttachment([objc_msgSend(*(self + 440) objectAtIndex:{*(self + 752)), "firstObject"}], *off_1E798A3C8, 0);
        *v23 = [v26 objectForKeyedSubscript:*off_1E798B540];
        *v21 = [v26 objectForKeyedSubscript:*off_1E798B238];
        [(BWQuickTimeMovieFileSinkNode *)self _determineWhichInputsWeExpectToSeeSamplesFor];
        if (*(self + 600))
        {
          v27 = 0;
          do
          {
            v28 = [*(self + 440) objectAtIndex:v27];
            v29 = CMGetAttachment([v28 firstObject], @"TrackFormatDescription", 0);
            v30 = *(self + 688);
            v31 = *(v30 + 8 * v27);
            *(v30 + 8 * v27) = v29;
            if (v29)
            {
              CFRetain(v29);
            }

            if (v31)
            {
              CFRelease(v31);
            }

            [v28 removeObjectAtIndex:0];
            ++v27;
          }

          while (v27 < *(self + 600));
        }

        v32 = [v8 copy];
        *v22 = v32;
        if (*(self + 992))
        {
          spatialOverCaptureMovieURL = [v32 spatialOverCaptureMovieURL];
          v32 = *v22;
          if (spatialOverCaptureMovieURL)
          {
            [*v22 setOutputURL:{objc_msgSend(v32, "spatialOverCaptureMovieURL")}];
            [*v22 setMovieLevelMetadata:{objc_msgSend(*v22, "spatialOverCaptureMovieLevelMetadata")}];
            v32 = *v22;
          }
        }

        [v32 setSpatialOverCaptureMovieURL:0];
        [*v22 setSpatialOverCaptureMovieLevelMetadata:0];
        if (*(self + 1652) == 1)
        {
          [(BWQuickTimeMovieFileSinkNode *)self _addStereoMovieLevelMetadataToSettingsMovieLevelMetadata:?];
          if (!*(self + 1672))
          {
            *(self + 1672) = objc_alloc_init(BWStereoVideoCaptureAnalyticsPayload);
          }
        }

        *type = *&v41.value;
        epoch = v41.epoch;
        goto LABEL_23;
      }

      v24 = FigCaptureFrameRateFromInt(0xF0u);
      v20 = v25;
      *(self + 424) = v24;
    }

    else
    {
      *(self + 424) = maxFrameRate;
      v21 = v37;
      v22 = v39;
      v23 = v35;
    }

    *(self + 432) = v20;
    goto LABEL_31;
  }

  *(self + 976) = 0;
  v16 = MEMORY[0x1E6960C70];
  *type = *MEMORY[0x1E6960C70];
  epoch = *(v16 + 16);
LABEL_23:
  type[2] = epoch;
}

- (uint64_t)_findMarkers:(uint64_t)markers@<X8>
{
  if (!result)
  {
    *markers = 0;
    *(markers + 8) = 0;
    *(markers + 16) = 0;
    return result;
  }

  v4 = result;
  value = *MEMORY[0x1E6960C70];
  flags = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  if (!*(result + 600))
  {
    goto LABEL_19;
  }

  v8 = 0;
  v9 = 0;
  v14 = *(MEMORY[0x1E6960C70] + 16);
  do
  {
    v10 = [*(v4 + 440) objectAtIndex:v9];
    result = [v10 count];
    if (!result)
    {
      goto LABEL_11;
    }

    firstObject = [v10 firstObject];
    if (BWSampleBufferIsMarkerBuffer(firstObject) && (qtmfsn_bufferSpecifiesFileWriterAction(firstObject, a2) & 1) != 0)
    {
      memset(&v17, 0, sizeof(v17));
      result = CMSampleBufferGetPresentationTimeStamp(&v17, firstObject);
      if ((flags & 1) == 0)
      {
        value = v17.value;
        flags = v17.flags;
        timescale = v17.timescale;
        epoch = v17.epoch;
LABEL_10:
        ++v8;
        goto LABEL_11;
      }

      time1.value = value;
      time1.timescale = timescale;
      time1.flags = flags;
      time1.epoch = epoch;
      time2 = v17;
      result = CMTimeCompare(&time1, &time2);
      if (!result)
      {
        goto LABEL_10;
      }

      result = [BWQuickTimeMovieFileSinkNode _findMarkers:];
    }

    else
    {
      result = [BWQuickTimeMovieFileSinkNode _findMarkers:];
    }

LABEL_11:
    ++v9;
    v12 = *(v4 + 600);
  }

  while (v9 < v12);
  if (v8 == v12)
  {
    if (v12)
    {
      v13 = 0;
      do
      {
        result = [objc_msgSend(*(v4 + 440) objectAtIndex:{v13++), "removeObjectAtIndex:", 0}];
      }

      while (v13 < *(v4 + 600));
    }

LABEL_19:
    *markers = value;
    *(markers + 8) = timescale;
    *(markers + 12) = flags;
    *(markers + 16) = epoch;
  }

  else
  {
    *markers = *MEMORY[0x1E6960C70];
    *(markers + 16) = v14;
  }

  return result;
}

- (void)_buildIrisRefMovieGeneratorAndWriteFirstIrisAsRefMovie
{
  OUTLINED_FUNCTION_54();
  v2 = -[BWIrisMovieGenerator initWithReadableByteStream:forFrontFacingCamera:forExternalCamera:clientExpectsCameraMountedInLandscapeOrientation:sampleReferenceMoviesEnabled:movieGenerationQueue:irisStillImageMovieMetadataCache:videoOrientationTimeMachine:]([BWIrisMovieGenerator alloc], "initWithReadableByteStream:forFrontFacingCamera:forExternalCamera:clientExpectsCameraMountedInLandscapeOrientation:sampleReferenceMoviesEnabled:movieGenerationQueue:irisStillImageMovieMetadataCache:videoOrientationTimeMachine:", *(v0 + 648), *(v0 + 744), *(v0 + 745), [objc_msgSend(v0 "graph")], *(v0 + 880), *(v0 + 728), *(v0 + 936), *(v0 + 984));
  OUTLINED_FUNCTION_114_0();
  FigSimpleMutexLock();
  *(v0 + 712) = v2;
  [(BWIrisMovieGenerator *)v2 setSuspended:*(v0 + 952)];
  v3 = *(v0 + 496);
  v4 = *(v0 + 752);
  if ((~*(v3 + 24 * v4 + 12) & 5) != 0)
  {
    v5 = (v3 + 24 * v4);
    v6 = *v5;
    *(v1 + 2) = *(v5 + 2);
    *v1 = v6;
    v7 = *(v0 + 712);
    v8 = *v1;
    v9 = *(v1 + 2);
    [v7 setActualMovieStartTime:&v8];
  }

  OUTLINED_FUNCTION_114_0();
  FigSimpleMutexUnlock();
  if (!*(v0 + 992) || ([*(v0 + 696) spatialOverCaptureExpected] & 1) != 0)
  {
    [(BWQuickTimeMovieFileSinkNode *)v0 _writeIrisRefMovieWithInfo:?];
  }

  *(v0 + 696) = 0;
}

- (void)_writeIrisRefMovieWithInfo:(void *)info
{
  if (info)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = __Block_byref_object_copy__12;
    v4 = info[89];
    v12 = __Block_byref_object_dispose__12;
    v13 = v4;
    [(BWQuickTimeMovieFileSinkNode *)info _fixVitalityScoreWithMotionAnalysis:a2];
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (info[112])
    {
      if (((info[111] != 0) & has_internal_diagnostics) == 1)
      {
        [(BWQuickTimeMovieFileSinkNode *)info _computeTransitionVitalityScore:a2];
      }
    }

    [BWQuickTimeMovieFileSinkNode _initAnalyticsDataInIrisMovieInfo:info];
    v6 = v9[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__BWQuickTimeMovieFileSinkNode__writeIrisRefMovieWithInfo___block_invoke;
    v7[3] = &unk_1E7991108;
    v7[4] = info;
    v7[5] = &v8;
    [v6 writeMovieWithInfo:a2 completionHandler:v7];
    _Block_object_dispose(&v8, 8);
  }
}

void __112__BWQuickTimeMovieFileSinkNode__generateThumbnailSurfaceFromPixelBuffer_physicallyMirroredHorizontallyUpstream___block_invoke(uint64_t a1)
{
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  v5 = v2[744];
  v6 = *(a1 + 48);
  v40 = *(a1 + 60);
  v7 = v2[745];
  [objc_msgSend(v2 "graph")];
  v39 = *(a1 + 32);
  v9 = *(a1 + 52);
  v8 = *(a1 + 56);
  pixelBuffer = 0;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = FigCaptureFrontCameraRotationAngle();
  v12 = 0;
  if (v5 == 1 && (v7 & 1) == 0)
  {
    v13 = v11 % 180;
    if (FigCapturePlatformMountsCamerasInLandscapeOrientation(1, 0) || (v12 = 0, v13 == 90))
    {
      v14 = FigCaptureFrontCameraRotationAngle();
      v15 = FigCaptureNormalizeAngle(2 * v6 - v14);
      v12 = FigCaptureRotationDegreesWithMirroring(v15, v40);
      if (v13 == 90)
      {
        v16 = v8;
      }

      else
      {
        v16 = v9;
      }

      if (v13 == 90)
      {
        v8 = v9;
      }

      else
      {
        v8 = v8;
      }

      v9 = v16;
    }
  }

  Width = CVPixelBufferGetWidth(v3);
  Height = CVPixelBufferGetHeight(v3);
  v19 = MGGetSInt32Answer();
  v20 = MGGetSInt32Answer();
  if (v19 < v9 || v20 < v8)
  {
    FigCaptureMakeRectWithAspectRatioInsideDimensions(v19 | (v20 << 32), 1, v9 / v8);
    v9 = v21;
    v8 = v22;
  }

  v23 = BWCreateIOSurfaceBackedCVPixelBuffer(v9, v8, 875704422, &pixelBuffer, @"MovieFileSink: Scaled Thumbnail");
  if (v23)
  {
    v37 = v23;
    __112__BWQuickTimeMovieFileSinkNode__generateThumbnailSurfaceFromPixelBuffer_physicallyMirroredHorizontallyUpstream___block_invoke_cold_1();
    goto LABEL_45;
  }

  v24 = *MEMORY[0x1E6983DF0];
  [v10 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6983DF0]];
  if (BWPixelBufferIsHDR(v3))
  {
    v25 = [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:3];
    v26 = [v25 objectForKeyedSubscript:*MEMORY[0x1E6965F98]];
    [v10 setObject:v26 forKeyedSubscript:*MEMORY[0x1E6983DE0]];
    v27 = [v25 objectForKeyedSubscript:*MEMORY[0x1E6965D88]];
    [v10 setObject:v27 forKeyedSubscript:*MEMORY[0x1E6983DC0]];
    v28 = [v25 objectForKeyedSubscript:*MEMORY[0x1E6965F30]];
    [v10 setObject:v28 forKeyedSubscript:*MEMORY[0x1E6983DD8]];
    v29 = MEMORY[0x1E695E118];
    v30 = v10;
    v31 = v24;
LABEL_22:
    [v30 setObject:v29 forKeyedSubscript:v31];
    goto LABEL_23;
  }

  v32 = CVBufferCopyAttachments(v3, kCVAttachmentMode_ShouldPropagate);
  if (v32)
  {
    v32 = CFAutorelease(v32);
  }

  v33 = [v32 objectForKeyedSubscript:*MEMORY[0x1E6965F98]];
  if ([v33 isEqualToString:*MEMORY[0x1E6965FD0]])
  {
    v29 = *MEMORY[0x1E6965FC8];
    v31 = *MEMORY[0x1E6983DE0];
    v30 = v10;
    goto LABEL_22;
  }

LABEL_23:
  CVPixelBufferGetWidth(pixelBuffer);
  CVPixelBufferGetHeight(pixelBuffer);
  if (v12 || v40)
  {
    pixelTransferSessionOut = 0;
    v34 = VTPixelRotationSessionCreate(0, &pixelTransferSessionOut);
    if (pixelTransferSessionOut)
    {
      [v10 setObject:FigCaptureVTRotationFromDegrees(v12) forKeyedSubscript:*MEMORY[0x1E6983D98]];
      if (v40)
      {
        [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6983D78]];
      }

      if ([v10 count])
      {
        v36 = VTSessionSetProperties(pixelTransferSessionOut, v10);
        if (v36)
        {
          v37 = v36;
          __112__BWQuickTimeMovieFileSinkNode__generateThumbnailSurfaceFromPixelBuffer_physicallyMirroredHorizontallyUpstream___block_invoke_cold_3();
          goto LABEL_45;
        }
      }

      v37 = VTPixelRotationSessionRotateSubImage();
      VTPixelRotationSessionInvalidate(pixelTransferSessionOut);
      goto LABEL_40;
    }

LABEL_34:
    v37 = v34;
    goto LABEL_41;
  }

  pixelTransferSessionOut = 0;
  v34 = VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
  if (!pixelTransferSessionOut)
  {
    goto LABEL_34;
  }

  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = Width;
  v43.size.height = Height;
  if (CGRectIsNull(v43))
  {
    DictionaryRepresentation = 0;
  }

  else
  {
    v44.origin.x = 0.0;
    v44.origin.y = 0.0;
    v44.size.width = Width;
    v44.size.height = Height;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v44);
  }

  [v10 setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E6983E40]];
  v37 = VTSessionSetProperties(pixelTransferSessionOut, v10);
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v37)
  {
    __112__BWQuickTimeMovieFileSinkNode__generateThumbnailSurfaceFromPixelBuffer_physicallyMirroredHorizontallyUpstream___block_invoke_cold_2();
    goto LABEL_45;
  }

  v37 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v3, pixelBuffer);
  VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
LABEL_40:
  CFRelease(pixelTransferSessionOut);
LABEL_41:
  if (v37)
  {
    __112__BWQuickTimeMovieFileSinkNode__generateThumbnailSurfaceFromPixelBuffer_physicallyMirroredHorizontallyUpstream___block_invoke_cold_4();
  }

  else
  {
    IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
    if (IOSurface)
    {
      IOSurface = CFRetain(IOSurface);
    }

    v37 = 0;
    *(v39 + 624) = IOSurface;
  }

LABEL_45:
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  if (v37)
  {
    [*(*(a1 + 32) + 1048) logErrorNumber:v37 errorString:@"creating thumbnail"];
  }

  CFRelease(*(a1 + 40));
}

- (uint64_t)_findWrittenStartingPTS
{
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E6960C88];
    *a2 = *MEMORY[0x1E6960C88];
    *(a2 + 16) = *(v4 + 16);
    if (*(result + 600))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(v3 + 496) + v5);
        time1 = *a2;
        v8 = *v7;
        v11.epoch = *(v7 + 2);
        *&v11.value = v8;
        result = CMTimeCompare(&time1, &v11);
        if (result >= 1)
        {
          v9 = *(v3 + 496) + v5;
          *a2 = *v9;
          *(a2 + 16) = *(v9 + 16);
        }

        ++v6;
        v5 += 24;
      }

      while (v6 < *(v3 + 600));
    }

    if ((~*(a2 + 12) & 5) == 0)
    {
      v10 = MEMORY[0x1E6960C70];
      *a2 = *MEMORY[0x1E6960C70];
      *(a2 + 16) = *(v10 + 16);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (CMTime)_finalizeAudioVideoDurationsAndFindWrittenEndingPTSFromEndingPTS:(uint64_t)s@<X8>
{
  if (result)
  {
    v4 = a2;
    v5 = result;
    if ((*(a2 + 12) & 5) == 1)
    {
      *s = *a2;
      v6 = *(a2 + 16);
    }

    else
    {
      v7 = MEMORY[0x1E6960C80];
      *s = *MEMORY[0x1E6960C80];
      v6 = *(v7 + 16);
    }

    *(s + 16) = v6;
    v8 = *&result[32].timescale;
    v9 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    v10 = 792;
    if (result[33].value + v8)
    {
      v11 = 0;
      v12 = 0;
      v13 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      v14 = 528;
      v15 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      while (1)
      {
        v16 = *(&v5->value + v14);
        if (*(v16 + v11 + 12))
        {
          goto LABEL_11;
        }

        value = v5[21].value;
        if ((~*(value + v11 + 12) & 9) != 0)
        {
          v18 = (*(&v5->value + v15[873]) + v11);
          if ((~*(v18 + 3) & 9) != 0)
          {
            break;
          }
        }

LABEL_14:
        v8 = *&v5[32].timescale;
        ++v12;
        v11 += 24;
        if (v12 >= *(&v5->value + v10) + v8)
        {
          v4 = a2;
          goto LABEL_16;
        }
      }

      v19 = v13;
      v20 = v9;
      v21 = v15;
      v22 = v16 + v11;
      v23 = *(value + v11);
      lhs.epoch = *(value + v11 + 16);
      *&lhs.value = v23;
      v24 = *v18;
      rhs.epoch = *(v18 + 2);
      *&rhs.value = v24;
      CMTimeSubtract(&time1, &lhs, &rhs);
      v25 = *&time1.value;
      *(v22 + 16) = time1.epoch;
      *v22 = v25;
      v15 = v21;
      v9 = v20;
      v13 = v19;
      v16 = *(&v5->value + v19[874]);
LABEL_11:
      memset(&time1, 0, sizeof(time1));
      v26 = (v5[21].value + v11);
      v27 = *v26;
      lhs.epoch = *(v26 + 2);
      *&lhs.value = v27;
      v28 = *(v16 + v11);
      rhs.epoch = *(v16 + v11 + 16);
      *&rhs.value = v28;
      CMTimeAdd(&time1, &lhs, &rhs);
      lhs = *s;
      rhs = time1;
      result = CMTimeCompare(&lhs, &rhs);
      v14 = v13[874];
      if ((result & 0x80000000) != 0)
      {
        *s = time1;
      }

      v10 = v9[857];
      goto LABEL_14;
    }

LABEL_16:
    if (v8)
    {
      v29 = 0;
      v30 = 0;
      do
      {
        v31 = (*&v5[21].timescale + v29);
        time1 = *s;
        v32 = *v31;
        lhs.epoch = *(v31 + 2);
        *&lhs.value = v32;
        result = CMTimeCompare(&time1, &lhs);
        if ((result & 0x80000000) != 0)
        {
          v33 = *&v5[21].timescale + v29;
          v34 = *(v33 + 16);
          *s = *v33;
          *(s + 16) = v34;
        }

        ++v30;
        v35 = *&v5[32].timescale;
        v29 += 24;
      }

      while (v30 < v35);
      v10 = v9[857];
    }

    else
    {
      v35 = 0;
    }

    v36 = *(&v5->value + v10) + v35;
    if (v36 < v5[25].value)
    {
      v37 = 24 * v36;
      do
      {
        v38 = v5[21].value + v37;
        time1 = *s;
        v39 = *v38;
        lhs.epoch = *(v38 + 16);
        *&lhs.value = v39;
        result = CMTimeCompare(&time1, &lhs);
        if ((result & 0x80000000) != 0)
        {
          v40 = v5[21].value + v37;
          v41 = *(v40 + 8);
          if (v41 <= 999)
          {
            v42 = 1;
          }

          else
          {
            v42 = v41 / 0x3E8u;
          }

          CMTimeMake(&time1, v42, v41);
          v43 = *v40;
          lhs.epoch = *(v40 + 16);
          *&lhs.value = v43;
          result = CMTimeAdd(s, &lhs, &time1);
        }

        ++v36;
        v37 += 24;
      }

      while (v36 < v5[25].value);
    }

    if ((~*(s + 12) & 9) == 0)
    {
      *s = *v4;
      *(s + 16) = *(v4 + 16);
    }
  }

  else
  {
    *s = 0;
    *(s + 8) = 0;
    *(s + 16) = 0;
  }

  return result;
}

- (uint64_t)_validatedEndingPTSFromEndingPTS:(uint64_t)s@<X8>
{
  if (!result)
  {
    *s = 0;
    *(s + 8) = 0;
    *(s + 16) = 0;
    return result;
  }

  if ((*(a2 + 12) & 5) == 1)
  {
    *s = *a2;
    v4 = *(a2 + 16);
LABEL_13:
    *(s + 16) = v4;
    return result;
  }

  v5 = result;
  v6 = MEMORY[0x1E6960C88];
  *s = *MEMORY[0x1E6960C88];
  v7 = *(result + 776);
  *(s + 16) = *(v6 + 16);
  if (*(result + 792) + v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      result = [*(v5 + 1784) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v9)}];
      if ((result & 1) == 0)
      {
        v10 = (*(v5 + 528) + v8);
        if (*(v10 + 12))
        {
          memset(&v17, 0, sizeof(v17));
          v11 = (*(v5 + 504) + v8);
          v12 = *v11;
          lhs.epoch = *(v11 + 2);
          *&lhs.value = v12;
          v13 = *v10;
          v15.epoch = *(v10 + 2);
          *&v15.value = v13;
          CMTimeAdd(&v17, &lhs, &v15);
          lhs = *s;
          v15 = v17;
          result = CMTimeCompare(&lhs, &v15);
          if (result >= 1)
          {
            *s = v17;
          }
        }
      }

      ++v9;
      v8 += 24;
    }

    while (v9 < *(v5 + 792) + *(v5 + 776));
  }

  if ((~*(s + 12) & 5) == 0)
  {
    v14 = MEMORY[0x1E6960C70];
    *s = *MEMORY[0x1E6960C70];
    v4 = *(v14 + 16);
    goto LABEL_13;
  }

  return result;
}

- (uint64_t)_endingPTSForTrack:(uint64_t)track@<X2> endingPTS:(uint64_t)s@<X3> writtenEndingPTS:(uint64_t)tS@<X4> validatedEndingPTS:(int)pTS@<W5> isIrisMasterMovie:(uint64_t)movie@<X8>
{
  if (result)
  {
    v10 = result;
    *movie = *s;
    *(movie + 16) = *(s + 16);
    if ((*(track + 12) & 1) != 0 || pTS) && (*(tS + 12))
    {
      v11 = *(result + 504) + 24 * a2;
      time1 = *tS;
      v12 = *v11;
      v16.epoch = *(v11 + 16);
      *&v16.value = v12;
      result = CMTimeCompare(&time1, &v16);
      if (result >= 1)
      {
        *movie = *tS;
        *(movie + 16) = *(tS + 16);
      }
    }

    if (*(v10 + 776) > a2)
    {
      v13 = *(v10 + 512) + 24 * a2;
      if (*(v13 + 12))
      {
        time1 = *movie;
        v14 = *v13;
        v16.epoch = *(v13 + 16);
        *&v16.value = v14;
        result = CMTimeCompare(&time1, &v16);
        if ((result & 0x80000000) != 0)
        {
          v15 = *(v10 + 512) + 24 * a2;
          *movie = *v15;
          *(movie + 16) = *(v15 + 16);
        }
      }
    }
  }

  else
  {
    *movie = 0;
    *(movie + 8) = 0;
    *(movie + 16) = 0;
  }

  return result;
}

- (void)_fixVitalityScoreWithMotionAnalysis:(unint64_t)analysis
{
  if (analysis)
  {
    if (*(analysis + 888))
    {
      if ([a2 isVitalityScoreValid])
      {
        [a2 vitalityScore];
        if (v4 < 0.5)
        {
          v20 = 0uLL;
          v21 = 0;
          if (a2)
          {
            [a2 movieTrimStartTime];
          }

          memset(&v19, 0, sizeof(v19));
          CMTimeMake(&time.start, 5, 1000);
          CMTimeConvertScale(&v19, &time.start, SDWORD2(v20), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v15 = 0;
          v16 = &v15;
          v17 = 0x2020000000;
          v18 = 0;
          v11 = 0;
          v12 = &v11;
          v13 = 0x2020000000;
          v14 = 0;
          *&time.start.value = v20;
          time.start.epoch = v21;
          rhs = v19;
          CMTimeSubtract(&start, &time.start, &rhs);
          if (a2)
          {
            [a2 movieTrimEndTime];
          }

          else
          {
            memset(&rhs, 0, sizeof(rhs));
          }

          CMTimeRangeFromTimeToTime(&time, &start, &rhs);
          v7[0] = MEMORY[0x1E69E9820];
          v7[1] = 3221225472;
          v7[2] = __68__BWQuickTimeMovieFileSinkNode__fixVitalityScoreWithMotionAnalysis___block_invoke;
          v7[3] = &unk_1E7991090;
          v7[4] = &v11;
          v7[5] = &v15;
          [(BWQuickTimeMovieFileSinkNode *)analysis _computeMotionAnalysisStatisticFromRange:v7 calculation:?];
          v6 = v16[3];
          if (!v6 || (v5 = sqrtf(v12[6] / v6), v5 >= 0.23))
          {
            LODWORD(v5) = 1.0;
            [a2 setVitalityScore:v5];
          }

          _Block_object_dispose(&v11, 8);
          _Block_object_dispose(&v15, 8);
        }
      }
    }
  }
}

float __68__BWQuickTimeMovieFileSinkNode__fixVitalityScoreWithMotionAnalysis___block_invoke(uint64_t a1, float result)
{
  if (result >= 0.0)
  {
    v2 = *(*(a1 + 32) + 8);
    result = *(v2 + 24) + (result * result);
    *(v2 + 24) = result;
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

- (unint64_t)_computeTransitionVitalityScore:(unint64_t)score
{
  scoreCopy = score;
  if (score)
  {
    if (*(score + 888) && *(score + 896))
    {
      memset(&v31, 0, sizeof(v31));
      if (a2)
      {
        [a2 stillImageCaptureTime];
      }

      memset(&v30, 0, sizeof(v30));
      CMTimeMake(&time.start, 650, 1000);
      CMTimeConvertScale(&v30, &time.start, v31.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      memset(&v29, 0, sizeof(v29));
      lhs = v31;
      rhs = v30;
      CMTimeSubtract(&time.start, &lhs, &rhs);
      if (a2)
      {
        [a2 movieTrimStartTime];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      CMTimeMaximum(&v29, &time.start, &lhs);
      memset(&v28, 0, sizeof(v28));
      CMTimeMake(&time.start, 5, 1000);
      CMTimeConvertScale(&v28, &time.start, v29.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      lhs.value = 0;
      *&lhs.timescale = &lhs;
      lhs.epoch = 0x2020000000;
      v27 = 0;
      rhs.value = 0;
      *&rhs.timescale = &rhs;
      rhs.epoch = 0x2020000000;
      v25 = 0;
      time.start = v29;
      end = v28;
      CMTimeSubtract(&start, &time.start, &end);
      time.start = v31;
      v20 = v28;
      CMTimeAdd(&end, &time.start, &v20);
      CMTimeRangeFromTimeToTime(&time, &start, &end);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __64__BWQuickTimeMovieFileSinkNode__computeTransitionVitalityScore___block_invoke;
      v19[3] = &unk_1E7991090;
      v19[4] = &rhs;
      v19[5] = &lhs;
      [(BWQuickTimeMovieFileSinkNode *)scoreCopy _computeMotionAnalysisStatisticFromRange:v19 calculation:?];
      v4 = *(*&lhs.timescale + 24);
      if (v4)
      {
        v5 = sqrtf(*(*&rhs.timescale + 24) / v4);
      }

      else
      {
        v5 = 0.0;
      }

      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
      string = [MEMORY[0x1E696AD60] string];
      v8 = *(scoreCopy + 896);
      start = v29;
      end = v28;
      CMTimeSubtract(&time.start, &start, &end);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __64__BWQuickTimeMovieFileSinkNode__computeTransitionVitalityScore___block_invoke_2;
      v16[3] = &unk_1E79910B8;
      v17 = v31;
      v18 = v28;
      v16[4] = v6;
      v16[5] = string;
      [v8 enumerateObjectsStartingAt:&time usingBlock:v16];
      [v6 count];
      time.start.value = 0x7FF8000000000000;
      start.value = 0x7FF8000000000000;
      FigDisplayedVitalityClassify(v6, [*(scoreCopy + 1104) width], objc_msgSend(*(scoreCopy + 1104), "height"), &time.start.value, &start.value, v5);
      v10 = v9;
      v11 = MEMORY[0x1E695DF20];
      v12 = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(HIDWORD(start.value), LODWORD(v5)))}];
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:*&time.start.value];
      [a2 setTransitionVitalityFeatures:{objc_msgSend(v11, "dictionaryWithObjectsAndKeys:", v12, @"motionAnalysisRMS", v13, @"thetaMax", objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", *&start.value), @"deltaF", 0)}];
      scoreCopy = 1;
      *&v14 = v10;
      [a2 setTransitionVitalityScoreV1:v14];
      [a2 setTransitionVitalityScoreValid:1];

      _Block_object_dispose(&rhs, 8);
      _Block_object_dispose(&lhs, 8);
    }

    else
    {
      return 0;
    }
  }

  return scoreCopy;
}

uint64_t __64__BWQuickTimeMovieFileSinkNode__computeTransitionVitalityScore___block_invoke(uint64_t result, double a2, float a3)
{
  if (a3 >= 0.0)
  {
    *(*(*(result + 32) + 8) + 24) = *(*(*(result + 32) + 8) + 24) + (a3 * a3);
    if (a3 > 0.0)
    {
      ++*(*(*(result + 40) + 8) + 24);
    }
  }

  return result;
}

uint64_t __64__BWQuickTimeMovieFileSinkNode__computeTransitionVitalityScore___block_invoke_2(uint64_t a1, uint64_t a2, CMTime *a3)
{
  lhs = *(a1 + 48);
  v7 = *(a1 + 72);
  CMTimeAdd(&time2, &lhs, &v7);
  lhs = *a3;
  result = CMTimeCompare(&lhs, &time2);
  if (result <= 0)
  {
    return [*(a1 + 32) addObject:a2];
  }

  return result;
}

- (void)_submitMovieFileCoreAnalyticsEvent
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"DASessionRef BWDASessionCreate(CFAllocatorRef)") description:{@"BWQuickTimeMovieFileSinkNode.m", 105, @"%s", dlerror()}];
  __break(1u);
}

uint64_t __59__BWQuickTimeMovieFileSinkNode__writeIrisRefMovieWithInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = a3 == 0;
  if (a2)
  {
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v3 = [BWQuickTimeMovieFileSinkNode _verifyMovieTiming:?];
      v6 = v3 == 0;
    }

    [(BWQuickTimeMovieFileSinkNode *)*(a1 + 32) _moveOrDeleteTemporaryIrisMovie:a2 recordingSucceeded:v6];
    if ((*(*(a1 + 32) + 880) & 1) == 0)
    {
      if ([a2 isFinalReferenceMovie])
      {
        [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
      }
    }
  }

  v7 = [*(a1 + 32) recordingStatusDelegate];
  if (v7)
  {
    LOBYTE(v10) = v6;
    [v7 fileWriter:*(a1 + 32) writerPipelineIndex:*(*(a1 + 32) + 992) stoppedRecordingForSettings:objc_msgSend(a2 withError:"settings") thumbnailSurface:v3 irisMovieInfo:0 debugMetadataSidecarFileURL:a2 recordingSucceeded:{0, v10}];
  }

  result = [*(*(*(a1 + 40) + 8) + 40) numberOfPendingReferenceMovies];
  if (!result)
  {
    FigSimpleMutexLock();
    [*(*(a1 + 32) + 720) removeObjectIdenticalTo:*(*(*(a1 + 40) + 8) + 40)];
    if (dword_1ED844250)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

- (void)_clearProvidedTrackFormatDescriptions
{
  if (self && *(self + 600))
  {
    v2 = 0;
    do
    {
      v3 = *(*(self + 688) + 8 * v2);
      if (v3)
      {
        CFRelease(v3);
        *(*(self + 688) + 8 * v2) = 0;
      }

      ++v2;
    }

    while (v2 < *(self + 600));
  }
}

- (uint64_t)_initCapturePipelineLatencyStats
{
  if (result)
  {
    v1 = result;
    if (!*(result + 1008))
    {
      v2 = [[BWMovingWindowStats alloc] initWithWindowSize:128];
      *(v1 + 1008) = v2;
      [(BWStats *)v2 setMultiplier:0.000001];
      v3 = *(v1 + 1008);

      return [v3 setUnitDesignator:@"ms"];
    }
  }

  return result;
}

- (uint64_t)_initAnalyticsDataInIrisMovieInfo:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    v3 = [[BWStats alloc] initWithStats:*(v2 + 1008)];
    [OUTLINED_FUNCTION_17() setFileCoordinatorToWriterMovingWindowLatencyStats:?];
    [v1 setMaxSystemPressureLevel:*(v2 + 1388)];
    [v1 setIrisSequenceAdjusterRecipeIdentifier:*(v2 + 1400)];
    [v1 setVideoFrameDurationStats:*(v2 + 1392)];
    v4 = *(v2 + 960);

    return [v1 setNumberOfFramesDropped:v4];
  }

  return result;
}

- (void)_finishIrisMovieGeneration
{
  OUTLINED_FUNCTION_84();
  v42 = v1;
  if (v1)
  {
    FigSimpleMutexLock();
    v2 = [*(v42 + 720) copy];
    [*(v42 + 720) removeAllObjects];
    v3 = v2;
    v4 = FigSimpleMutexUnlock();
    if (v2)
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v6 = OUTLINED_FUNCTION_1_18(v4, v5, &v64, v63);
      if (v6)
      {
        v8 = v6;
        v9 = *v65;
        *&v7 = 136315650;
        *v40 = v7;
        *&v7 = 136315906;
        *v39 = v7;
        obj = v2;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v65 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v64 + 1) + 8 * i);
            if ([v11 suspended])
            {
              [v11 setSuspended:0];
            }

            if (dword_1ED844250)
            {
              v12 = OUTLINED_FUNCTION_42_5();
              OUTLINED_FUNCTION_131_0(v12, v13, v14, v15, v16, v17, v18, v19, v37, v38, v39[0], v39[1], v40[0], v40[1], obj, v42, *v43, *&v43[8], *&v43[16], v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
              OUTLINED_FUNCTION_69_1();
              if (v21)
              {
                v22 = v20;
              }

              else
              {
                v22 = v0;
              }

              if (v22)
              {
                *v43 = v39[0];
                *&v43[4] = "[BWQuickTimeMovieFileSinkNode _finishIrisMovieGeneration]";
                *&v43[12] = 2112;
                *&v43[14] = *(v42 + 1040);
                *&v43[22] = 2048;
                v44 = v11;
                LOWORD(v45) = 1024;
                *(&v45 + 2) = [v11 numberOfPendingReferenceMovies];
                OUTLINED_FUNCTION_77_0();
                OUTLINED_FUNCTION_9_14();
                OUTLINED_FUNCTION_111_0();
                _os_log_send_and_compose_impl();
                v0 = HIDWORD(type);
              }

              OUTLINED_FUNCTION_31_6();
            }

            flush = [v11 flush];
            if (dword_1ED844250)
            {
              v25 = OUTLINED_FUNCTION_42_5();
              OUTLINED_FUNCTION_131_0(v25, v26, v27, v28, v29, v30, v31, v32, v37, v38, v39[0], v39[1], v40[0], v40[1], obj, v42, *v43, *&v43[8], *&v43[16], v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
              OUTLINED_FUNCTION_69_1();
              if (v21)
              {
                v34 = v33;
              }

              else
              {
                v34 = v0;
              }

              if (v34)
              {
                *v43 = v40[0];
                OUTLINED_FUNCTION_109_0();
                *&v43[22] = 2048;
                v44 = v11;
                OUTLINED_FUNCTION_77_0();
                OUTLINED_FUNCTION_13();
                OUTLINED_FUNCTION_111_0();
                _os_log_send_and_compose_impl();
                v0 = HIDWORD(type);
              }

              flush = OUTLINED_FUNCTION_31_6();
            }
          }

          v3 = obj;
          v8 = OUTLINED_FUNCTION_1_18(flush, v24, &v64, v63);
        }

        while (v8);
      }
    }

    if (dword_1ED844250)
    {
      v35 = OUTLINED_FUNCTION_42_5();
      if (os_log_type_enabled(v35, BYTE3(type)))
      {
        v36 = HIDWORD(type);
      }

      else
      {
        v36 = HIDWORD(type) & 0xFFFFFFFE;
      }

      if (v36)
      {
        OUTLINED_FUNCTION_109_0();
        OUTLINED_FUNCTION_77_0();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  OUTLINED_FUNCTION_81();
}

- (uint64_t)_driveStateMachineWithBuffer:(uint64_t)buffer forInputIndex:(int)index sampleBufferAlreadyAtHeadOfQueue:
{
  if (result)
  {
    v8 = result;
    v9 = [*(result + 440) objectAtIndex:?];
    IsMarkerBuffer = BWSampleBufferIsMarkerBuffer(a2);
    if (!IsMarkerBuffer)
    {
      if ((*(v8 + 764) & 1) == 0)
      {
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_107_0();
        [BWQuickTimeMovieFileSinkNode _driveStateMachineWithMediaBuffer:v12 forInputIndex:v13 inputStagingQueue:v14 sampleBufferAlreadyAtHeadOfQueue:v15];
      }

      return 0;
    }

    v11 = OUTLINED_FUNCTION_16_7(IsMarkerBuffer, @"RecordingSettings");
    if (v11)
    {
      [v11 settingsID];
    }

    if (index)
    {
      if (!dword_1ED844250)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_38_5();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_130_0(os_log_and_send_and_compose_flags_and_os_log_type);
      OUTLINED_FUNCTION_69_1();
      if (v19)
      {
        v20 = v18;
      }

      else
      {
        v20 = v4;
      }

      if (!v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (!dword_1ED844250)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_38_5();
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_130_0(v21);
      OUTLINED_FUNCTION_69_1();
      if (v19)
      {
        v23 = v22;
      }

      else
      {
        v23 = v4;
      }

      if (!v23)
      {
LABEL_20:
        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_21:
        v24 = qtmfsn_bufferSpecifiesFileWriterAction(a2, @"Stop");
        if ((v24 & 1) != 0 || (v24 = qtmfsn_bufferSpecifiesFileWriterAction(a2, @"Flush"), v24))
        {
          v25 = [OUTLINED_FUNCTION_16_7(v24 @"FramesDroppedDueToFormatWriterQueueFull")];
          *(v8 + 968) = v25;
          if (v25)
          {
            OUTLINED_FUNCTION_38_5();
            v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v27 = v59;
            os_log_type_enabled(v26, v58);
            OUTLINED_FUNCTION_69_1();
            if (v19)
            {
              v29 = v28;
            }

            else
            {
              v29 = v27;
            }

            if (v29)
            {
              [v8 name];
              OUTLINED_FUNCTION_75();
              OUTLINED_FUNCTION_2_1();
              OUTLINED_FUNCTION_13();
              OUTLINED_FUNCTION_111_0();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_50_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v30 = qtmfsn_bufferSpecifiesFileWriterAction(a2, @"Stop");
        if (v30)
        {
          v30 = OUTLINED_FUNCTION_16_7(v30, @"TrackFormatDescription");
          if (v30)
          {
            v31 = *(v8 + 688);
            v32 = *(v31 + 8 * buffer);
            *(v31 + 8 * buffer) = v30;
            v30 = CFRetain(v30);
            if (v32)
            {
              CFRelease(v32);
            }
          }
        }

        if ((index & 1) == 0)
        {
          v30 = [v9 count];
          if (v30)
          {
            if (dword_1ED844250)
            {
              OUTLINED_FUNCTION_58_3();
              v33 = OUTLINED_FUNCTION_54_0();
              os_log_type_enabled(v33, v58);
              OUTLINED_FUNCTION_37_1();
              if (&unk_1E799C000)
              {
                OUTLINED_FUNCTION_16_7(v34, @"FileWriterAction");
                OUTLINED_FUNCTION_2_1();
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [OUTLINED_FUNCTION_64_0() addObject:?];
            return 0;
          }
        }

        if (OUTLINED_FUNCTION_16_7(v30, @"IrisMovieRequest"))
        {
          [BWQuickTimeMovieFileSinkNode _handleIrisMovieRequest:v8];
        }

        else
        {
          if (qtmfsn_bufferSpecifiesFileWriterAction(a2, @"Start"))
          {
            OUTLINED_FUNCTION_45_0();
            OUTLINED_FUNCTION_107_0();
            return [(BWQuickTimeMovieFileSinkNode *)v35 _driveStateMachineWithStartMarkerBuffer:v36 forInputIndex:v37 inputStagingQueue:v38 sampleBufferAlreadyAtHeadOfQueue:v39];
          }

          if (qtmfsn_bufferSpecifiesFileWriterAction(a2, @"Stop"))
          {
            v40 = OUTLINED_FUNCTION_45_0();
            v43 = 0x1F21A9C50;
            return [(BWQuickTimeMovieFileSinkNode *)v40 _driveStateMachineWithStopOrFlushMarkerBuffer:v41 requiredAction:v43 forInputIndex:v42 inputStagingQueue:v9 sampleBufferAlreadyAtHeadOfQueue:index];
          }

          if (qtmfsn_bufferSpecifiesFileWriterAction(a2, @"Flush"))
          {
            v40 = OUTLINED_FUNCTION_45_0();
            v43 = 0x1F21A9CD0;
            return [(BWQuickTimeMovieFileSinkNode *)v40 _driveStateMachineWithStopOrFlushMarkerBuffer:v41 requiredAction:v43 forInputIndex:v42 inputStagingQueue:v9 sampleBufferAlreadyAtHeadOfQueue:index];
          }

          if (qtmfsn_bufferSpecifiesFileWriterAction(a2, @"Pause"))
          {
            OUTLINED_FUNCTION_45_0();
            OUTLINED_FUNCTION_107_0();
            return [(BWQuickTimeMovieFileSinkNode *)v44 _driveStateMachineWithPauseMarkerBuffer:v45 forInputIndex:v46 inputStagingQueue:v47 sampleBufferAlreadyAtHeadOfQueue:v48];
          }

          if (qtmfsn_bufferSpecifiesFileWriterAction(a2, @"Resume"))
          {
            OUTLINED_FUNCTION_45_0();
            OUTLINED_FUNCTION_107_0();
            return [(BWQuickTimeMovieFileSinkNode *)v49 _driveStateMachineWithResumeMarkerBuffer:v50 forInputIndex:v51 inputStagingQueue:v52 sampleBufferAlreadyAtHeadOfQueue:v53];
          }

          if (!qtmfsn_bufferSpecifiesFileWriterAction(a2, @"Terminate"))
          {
            if (qtmfsn_bufferSpecifiesFileWriterAction(a2, @"StreamForcedOff"))
            {
              [BWQuickTimeMovieFileSinkNode _handleStreamForcedOffMarkerBuffer:v8];
              return 0;
            }

            if (qtmfsn_bufferSpecifiesFileWriterAction(a2, @"SpatialAggressorsSeen"))
            {
              v55 = OUTLINED_FUNCTION_45_0();
              [(BWQuickTimeMovieFileSinkNode *)v55 _handleSpatialAggressorsSeenMarkerBuffer:v56];
              return 0;
            }
          }

          v54 = OUTLINED_FUNCTION_45_0();
          [BWQuickTimeMovieFileSinkNode _printBufferEvent:v54 forNodeInputIndex:? eventName:?];
        }

        return 0;
      }
    }

    OUTLINED_FUNCTION_16_7(v17, @"FileWriterAction");
    CMSampleBufferGetPresentationTimeStamp(&time, a2);
    CMTimeGetSeconds(&time);
    qtmfsn_stringForRecordingState(*(v8 + 632));
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
    goto LABEL_20;
  }

  return result;
}

- (void)_handleIrisMovieRequest:(uint64_t)request
{
  if (!request)
  {
    return;
  }

  OUTLINED_FUNCTION_54();
  if ([v3 requestedSDOFVariants])
  {
    if ([v2 numberOfRequestedVariants] >= 2)
    {
      copyMovieInfosForRequestedSDOFVariants = [v2 copyMovieInfosForRequestedSDOFVariants];
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [copyMovieInfosForRequestedSDOFVariants countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(copyMovieInfosForRequestedSDOFVariants);
            }

            [(BWQuickTimeMovieFileSinkNode *)v1 _handleIrisMovieRequest:?];
          }

          v6 = [copyMovieInfosForRequestedSDOFVariants countByEnumeratingWithState:&v12 objects:v11 count:16];
        }

        while (v6);
      }

      return;
    }

    if ([v2 isFinalEnqueuedIrisRequest])
    {
      [v2 setFinalReferenceMovie:1];
    }
  }

  if ((*(v1 + 764) & 1) == 0 && *(v1 + 632))
  {
    v9 = OUTLINED_FUNCTION_3_19();

    [BWQuickTimeMovieFileSinkNode _processIrisRequest:v9];
  }

  else if ([v1 recordingStatusDelegate])
  {
    if (*(v1 + 992) && [objc_msgSend(v2 "settings")])
    {
      [v2 copySpatialOverCaptureVariant];
    }

    OUTLINED_FUNCTION_33();
    [BWQuickTimeMovieFileSinkNode _initAnalyticsDataInIrisMovieInfo:v1];
    [v2 settings];
    LOBYTE(v10) = 0;
    [OUTLINED_FUNCTION_8_8() fileWriter:0 writerPipelineIndex:v10 stoppedRecordingForSettings:? withError:? thumbnailSurface:? irisMovieInfo:? debugMetadataSidecarFileURL:? recordingSucceeded:?];
  }
}

- (uint64_t)_handleStreamForcedOffMarkerBuffer:(uint64_t)result
{
  if (result)
  {
    v1 = result;
    if (*(result + 632))
    {
      OUTLINED_FUNCTION_21_4(764);
      *(v1 + 768) = -15431;
      [*(v1 + 712) setStreamForcedOffErrorCode:*(v1 + 768)];
      v2 = [*(v1 + 712) setVitalInputStreamHasBeenForcedOff:1];
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v3 = *(v1 + 440);
      result = OUTLINED_FUNCTION_1_18(v2, v4, &v12, v11);
      if (result)
      {
        v5 = result;
        v6 = *v13;
        do
        {
          v7 = 0;
          do
          {
            if (*v13 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v12 + 1) + 8 * v7);
            while (1)
            {
              IsMarkerBuffer = [v8 firstObject];
              if (!IsMarkerBuffer)
              {
                break;
              }

              IsMarkerBuffer = BWSampleBufferIsMarkerBuffer(IsMarkerBuffer);
              if (IsMarkerBuffer)
              {
                break;
              }

              [OUTLINED_FUNCTION_47_1() removeObjectAtIndex:?];
            }

            ++v7;
          }

          while (v7 != v5);
          result = OUTLINED_FUNCTION_1_18(IsMarkerBuffer, v10, &v12, v11);
          v5 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (uint64_t)_handleSpatialAggressorsSeenMarkerBuffer:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (*(result + 632))
    {
      v5 = OUTLINED_FUNCTION_69();
      v3[414] |= [CMGetAttachment(v5 v6];
      v8 = OUTLINED_FUNCTION_69();
      [CMGetAttachment(v8 v9];
      v3[415] = v11;
      v12 = OUTLINED_FUNCTION_69();
      [CMGetAttachment(v12 v13];
      v3[416] = v15;
      v16 = OUTLINED_FUNCTION_69();
      result = [CMGetAttachment(v16 v17];
      v3[417] = v19;
      if (dword_1ED844250)
      {
        v23 = 0;
        v22 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_63(os_log_and_send_and_compose_flags_and_os_log_type);
        OUTLINED_FUNCTION_4_0();
        if (v2)
        {
          [v3 name];
          CMSampleBufferGetPresentationTimeStamp(&time, a2);
          CMTimeGetSeconds(&time);
          OUTLINED_FUNCTION_71_1();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_4_4();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_68_0();
        }

        OUTLINED_FUNCTION_2_4();
        return OUTLINED_FUNCTION_39_0();
      }
    }
  }

  return result;
}

- (void)_writeBuffer:(uint64_t)buffer forInputIndex:
{
  if (self)
  {
    OUTLINED_FUNCTION_80();
    v8 = OUTLINED_FUNCTION_16_7(v7, *off_1E798A3C8);
    v9 = [objc_msgSend(objc_msgSend(v4 "inputs")];
    if (*(*(v4 + 656) + 4 * buffer))
    {
      v10 = v9;
      v233 = v5;
      v11 = *(v4 + 672);
      if ((*(v11 + buffer) & 1) == 0)
      {
        if (v9 == 1986618469)
        {
          v139 = OUTLINED_FUNCTION_24_5();
          [(BWQuickTimeMovieFileSinkNode *)v139 _writeVideoTrackLevelMetadataForSampleBuffer:v140 inputIndex:v141];
          *(*(v4 + 672) + buffer) = 1;
          v142 = OUTLINED_FUNCTION_24_5();
          [(BWQuickTimeMovieFileSinkNode *)v142 _preprocessingForFirstVideoBuffer:v143 forInputIndex:v144];
        }

        else
        {
          *(v11 + buffer) = 1;
          switch(v9)
          {
            case 1936684398:
              v149 = OUTLINED_FUNCTION_24_5();
              [(BWQuickTimeMovieFileSinkNode *)v149 _preprocessingForFirstAudioBuffer:v150 forInputIndex:v151];
              break;
            case 1835365473:
              v146 = OUTLINED_FUNCTION_24_5();
              [(BWQuickTimeMovieFileSinkNode *)v146 _preprocessingForFirstMetadataBuffer:v147 forInputIndex:v148];
              break;
            case 1635088502:
              v152 = OUTLINED_FUNCTION_24_5();
              [BWQuickTimeMovieFileSinkNode _preprocessingForFirstAuxiliaryBuffer:v152 forInputIndex:?];
              break;
          }
        }

        OUTLINED_FUNCTION_117_0();
        if (v12 == buffer)
        {
          if (*(v4 + 416))
          {
            v145 = *(v4 + 416);
          }

          else
          {
            v145 = 600;
          }

          [(BWQuickTimeMovieFileSinkNode *)v4 _adjustMaxFileDurationForMovieTimeScale:v145];
        }
      }

      v13 = *off_1E798D4A0;
      *(v4 + 1744) |= [v8 objectForKeyedSubscript:*off_1E798D4A0] != 0;
      if (*(v4 + 1744) == 1 && (*(v4 + 1745) & 1) == 0 && v10 == 1986618469)
      {
        *(v4 + 1745) = [objc_msgSend(v8 objectForKeyedSubscript:{v13), "BOOLValue"}];
      }

      memset(&v254, 0, sizeof(v254));
      CMSampleBufferGetOutputPresentationTimeStamp(&v254, v3);
      memset(&v253, 0, sizeof(v253));
      OutputDuration = CMSampleBufferGetOutputDuration(&v253, v3);
      sbuf = v3;
      if (v10 == 1835365473)
      {
        v15 = *(v4 + 1712);
        if (!v15)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          *(v4 + 1712) = v15;
        }

        v16 = [objc_msgSend(v15 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", buffer)), "longLongValue"}];
        if (v254.value <= v16)
        {
          goto LABEL_120;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [*(v4 + 1712) setObject:v17 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", buffer)}];
        LOBYTE(v18) = 0;
      }

      else
      {
        v18 = v10 == 1986618469;
        if (*(v4 + 904) && v10 == 1986618469)
        {
          v69 = [BWVideoQualityMetrics filterMetadata:v8];
          [*(v4 + 912) processMetadata:v69];
          OUTLINED_FUNCTION_25_5();
          [v70 appendObject:v69 forTime:&time];
          FigSimpleMutexLock();
          if (*(v4 + 712))
          {
            OUTLINED_FUNCTION_25_5();
            [v71 updateOverCaptureQualityScoresForMoviesEndingBefore:&time fromMetadataRingBuffer:?];
          }

          OutputDuration = FigSimpleMutexUnlock();
          v18 = 1;
        }

        if (*(v4 + 992))
        {
          if (v18)
          {
            OutputDuration = OUTLINED_FUNCTION_16_7(OutputDuration, @"TotalZoomFactor");
            if (OutputDuration)
            {
              v72 = OutputDuration;
              OutputDuration = [OutputDuration doubleValue];
              if (v73 > *(v4 + 920))
              {
                OutputDuration = [v72 doubleValue];
                *(v4 + 920) = v74;
              }
            }
          }
        }

        if (*(v4 + 896) != 0 && v18 && OUTLINED_FUNCTION_16_7(OutputDuration, *off_1E798D478))
        {
          OUTLINED_FUNCTION_25_5();
          [v75 appendObject:? forTime:?];
        }
      }

      OUTLINED_FUNCTION_83_0();
      *&v252.value = *v19;
      OUTLINED_FUNCTION_117_0();
      v252.epoch = v21;
      if (v20 == buffer)
      {
        if ((*(v4 + 484) & 1) == 0)
        {
          *(v4 + 472) = v254;
        }

        time2 = v254;
        if (v253.flags)
        {
          OUTLINED_FUNCTION_25_5();
          v30 = OUTLINED_FUNCTION_46_5(v22, v23, v24, v25, v26, v27, v28, v29, v225, v229, v5, v3, v253.value, *&v253.timescale, v253.epoch, v242, *v243, *&v243[8], *&v243[16], *&v243[24], v244, *type, v246, v247, v248, v249, time.value);
          CMTimeAdd(v32, v30, v31);
        }

        time = time2;
        OUTLINED_FUNCTION_6_3(v4 + 472);
        v41 = OUTLINED_FUNCTION_46_5(v33, v34, v35, v36, v37, v38, v39, v40, v225, v229, v233, sbuf, time1.value, *&time1.timescale, time1.epoch, v242, *v243, *&v243[8], *&v243[16], *&v243[24], v244, *type, v246, v247, v248, v249, time.value);
        if (CMTimeCompare(v41, v42) >= 1)
        {
          time = time2;
          OUTLINED_FUNCTION_6_3(v4 + 472);
          v51 = OUTLINED_FUNCTION_46_5(v43, v44, v45, v46, v47, v48, v49, v50, v225, v229, v233, sbuf, time1.value, *&time1.timescale, time1.epoch, v242, *v243, *&v243[8], *&v243[16], *&v243[24], v244, *type, v246, v247, v248, v249, time.value);
          CMTimeSubtract(v53, v51, v52);
        }

        if ((*(v4 + 380) & 1) == 0 || (time = v252, OUTLINED_FUNCTION_6_3(v4 + 368), v62 = OUTLINED_FUNCTION_46_5(v54, v55, v56, v57, v58, v59, v60, v61, v225, v229, v233, sbuf, time1.value, *&time1.timescale, time1.epoch, v242, *v243, *&v243[8], *&v243[16], *&v243[24], v244, *type, v246, v247, v248, v249, time.value), CMTimeCompare(v62, v63) < 0))
        {
          v68 = 0;
        }

        else
        {
          if (dword_1ED844250)
          {
            v64 = OUTLINED_FUNCTION_7_21();
            os_log_type_enabled(v64, type[0]);
            OUTLINED_FUNCTION_69_1();
            if (v66)
            {
              v67 = v65;
            }

            else
            {
              v67 = v246;
            }

            if (v67)
            {
              name = [v4 name];
              OUTLINED_FUNCTION_17_9(v4 + 272);
              Seconds = CMTimeGetSeconds(&time);
              OUTLINED_FUNCTION_17_9(v4 + 368);
              CMTimeGetSeconds(&time);
              LODWORD(time1.value) = 136316162;
              OUTLINED_FUNCTION_75();
              *(&time1.flags + 2) = v4;
              HIWORD(time1.epoch) = 2112;
              v242 = name;
              *v243 = v78;
              *&v243[2] = Seconds;
              *&v243[10] = v78;
              *&v243[12] = v79;
              OUTLINED_FUNCTION_2_1();
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          OUTLINED_FUNCTION_83_0();
          v252 = *v80;
          v68 = 4294950883;
        }

        OUTLINED_FUNCTION_117_0();
      }

      else
      {
        v68 = 0;
      }

      if (v20 != buffer || (*(v4 + 1792) & 1) != 0 || !qtmfsn_movieRecordingIsProResRaw(*(v4 + 448)) || (*(v4 + 1792) = 1, [*(v4 + 1808) updateMetadataFromSampleBuffer:sbuf withCameraInfo:{objc_msgSend(*(v4 + 1800), "objectForKeyedSubscript:", objc_msgSend(v8, "objectForKeyedSubscript:", *off_1E798B540))}], objc_msgSend(v4, "setMovieLevelMetadata:", objc_msgSend(*(v4 + 1808), "proResRawAugmentedMovieLevelMetadataWithMovieLevelMetadata:", objc_msgSend(v4, "movieLevelMetadata"))), !objc_msgSend(v4, "movieLevelMetadata")) || (v81 = objc_msgSend(v4, "movieLevelMetadata"), v82 = FigFormatWriterGetFigBaseObject(), (v83 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && !v83(v82, *MEMORY[0x1E6971C00], v81))
      {
        if (v68)
        {
          goto LABEL_92;
        }

        [BWQuickTimeMovieFileSinkNode _printBufferEvent:v4 forNodeInputIndex:? eventName:?];
        v84 = *(v4 + 640);
        v85 = *(*(v4 + 656) + 4 * buffer);
        v86 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v86)
        {
          v87 = v86(v84, v85, sbuf);
          if (!v87)
          {
            *(*(v4 + 680) + buffer) = (v253.flags & 1) == 0;
            if ((*(v4 + 992) | buffer) == 0 && v18)
            {
              [(BWQuickTimeMovieFileSinkNode *)v4 _collectCoreAnalyticsData:?];
            }

            OUTLINED_FUNCTION_18_10();
            OUTLINED_FUNCTION_2_35(v88);
            if (CMTimeCompare(v89, v90) < 0)
            {
              OUTLINED_FUNCTION_18_10();
              OUTLINED_FUNCTION_105_0(v92, *v91);
              OUTLINED_FUNCTION_117_0();
              if (v93 == buffer)
              {
                OUTLINED_FUNCTION_104_0();
                FigSimpleMutexLock();
                if (*(v4 + 712))
                {
                  OUTLINED_FUNCTION_25_5();
                  [v94 setActualMovieStartTime:&time];
                }

                OUTLINED_FUNCTION_104_0();
                FigSimpleMutexUnlock();
              }
            }

            if (v10 != 1986618469)
            {
              if (v10 == 1936684398)
              {
                OUTLINED_FUNCTION_18_10();
                OUTLINED_FUNCTION_2_35(v102);
                if (CMTimeCompare(v103, v104) >= 1)
                {
                  v105 = *(v4 + 528) + 24 * buffer;
                  epoch = v253.epoch;
                  *v105 = *&v253.value;
                  *(v105 + 16) = epoch;
                  if ((*(*(v4 + 528) + 24 * buffer + 12) & 1) == 0)
                  {
                    v107 = *(v4 + 504) + 24 * buffer;
                    v108 = *(v107 + 16);
                    v109 = *(v4 + 520) + 24 * buffer;
                    *v109 = *v107;
                    *(v109 + 16) = v108;
                  }

                  OUTLINED_FUNCTION_18_10();
                  v111 = *v110;
                  *(v112 + 16) = v254.epoch;
                  *v112 = v111;
                }

                goto LABEL_92;
              }

              if (v10 != 1635088502)
              {
                OUTLINED_FUNCTION_18_10();
                OUTLINED_FUNCTION_2_35(v121);
                if (CMTimeCompare(v122, v123) < 1)
                {
                  goto LABEL_92;
                }

                OUTLINED_FUNCTION_18_10();
                v120 = *&v254.value;
                goto LABEL_91;
              }
            }

            OUTLINED_FUNCTION_2_35(*(v4 + 504) + 24 * buffer);
            v97 = CMTimeCompare(v95, v96);
            v98 = *(v4 + 520) + 24 * buffer;
            if (v97 < 1)
            {
              OUTLINED_FUNCTION_2_35(v98);
              if (CMTimeCompare(v113, v114) < 1)
              {
                goto LABEL_85;
              }

              v99 = (v4 + 520);
            }

            else
            {
              v99 = (v4 + 504);
              v100 = *(v4 + 504) + 24 * buffer;
              v101 = *(v100 + 16);
              *v98 = *v100;
              *(v98 + 16) = v101;
            }

            v115 = *v99 + 24 * buffer;
            v116 = *&v254.value;
            *(v115 + 16) = v254.epoch;
            *v115 = v116;
LABEL_85:
            memset(&time, 0, sizeof(time));
            CMSampleBufferGetDecodeTimeStamp(&time, sbuf);
            if ((time.flags & 1) == 0)
            {
              OUTLINED_FUNCTION_25_5();
            }

            OUTLINED_FUNCTION_18_10();
            time1 = time;
            v118 = *v117;
            time2.epoch = *(v117 + 2);
            *&time2.value = v118;
            if (CMTimeCompare(&time1, &time2) >= 1)
            {
              OUTLINED_FUNCTION_18_10();
              v120 = *&time.value;
LABEL_91:
              OUTLINED_FUNCTION_105_0(v119, v120);
            }

LABEL_92:
            memset(&time2, 0, sizeof(time2));
            HostTimeClock = CMClockGetHostTimeClock();
            CMClockGetTime(&time2, HostTimeClock);
            time = time2;
            v125 = [(BWQuickTimeMovieFileSinkNode *)v4 _getCurrentFileSize:&time currentHostTime:?];
            OUTLINED_FUNCTION_104_0();
            FigSimpleMutexLock();
            *(v4 + 216) = v125;
            OUTLINED_FUNCTION_83_0();
            *v126 = v252;
            if (!v68)
            {
              v68 = *(v4 + 772);
            }

            OUTLINED_FUNCTION_104_0();
            FigSimpleMutexUnlock();
            v127 = &off_1ACF06000;
            if (!*(v4 + 1032) || *(v4 + 752) != buffer || (OUTLINED_FUNCTION_17_9(v4 + 320), v136 = OUTLINED_FUNCTION_46_5(v128, v129, v130, v131, v132, v133, v134, v135, v225, v229, v233, sbuf, time2.value, *&time2.timescale, time2.epoch, v242, *v243, *&v243[8], *&v243[16], *&v243[24], v244, *type, v246, v247, v248, v249, time.value), CMTimeCompare(v136, v137) > 0))
            {
LABEL_113:
              if (!v68)
              {
                OUTLINED_FUNCTION_17_9(v4 + 296);
                v195 = OUTLINED_FUNCTION_46_5(v187, v188, v189, v190, v191, v192, v193, v194, v225, v229, v233, sbuf, *v186, v186[1], v186[2], v242, *v243, *&v243[8], *&v243[16], *&v243[24], v244, *type, v246, v247, v248, v249, time.value);
                if (CMTimeCompare(v195, v196) > 0)
                {
                  goto LABEL_115;
                }

                *type = 0;
                FigBaseObject = FigFormatWriterGetFigBaseObject();
                v199 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v199)
                {
                  v199(FigBaseObject, *MEMORY[0x1E6971C60], *MEMORY[0x1E695E480], type);
                  v200 = *type;
                }

                else
                {
                  v200 = 0;
                }

                *(v4 + 248) = [v200 longLongValue];

                if (!*(v4 + 248))
                {
                  *(v4 + 248) = (v125 * 0.1);
                  if (qtmfsn_movieRecordingIsProRes(*(v4 + 448)))
                  {
                    OUTLINED_FUNCTION_83_0();
                    OUTLINED_FUNCTION_17_9(v204);
                    v205 = vcvtd_n_s64_f64(CMTimeGetSeconds(&time), 0xAuLL);
                    *(v4 + 248) = v205;
                  }

                  else
                  {
                    v205 = *(v4 + 248);
                  }

                  if (v205 < 1000000)
                  {
                    *(v4 + 248) = 1000000;
                  }
                }

                if (qtmfsn_movieRecordingIsProRes(*(v4 + 448)))
                {
                  v206 = *(v4 + 248) + *(v4 + 1720);
                  *(v4 + 248) = v206;
                }

                else
                {
                  v206 = *(v4 + 248);
                }

                *(v4 + 248) = v206 + 2 * (v125 - *(v4 + 264));
                *(v4 + 264) = v125;
                v68 = [BWQuickTimeMovieFileSinkNode _checkFreeSpaceForEstimatedMovieSizeOverhead:v4];
                OUTLINED_FUNCTION_83_0();
                CMTimeMake(&time1, *(v207 + 8), *(v207 + 8));
                v208 = OUTLINED_FUNCTION_129_1(*(v4 + 312), v227, v231, v235, sbufa, time1.value, *&time1.timescale, time1.epoch, v242, *v243, *&v243[8], *&v243[16], *&v243[24], v244, *type, *(v4 + 296), *(v4 + 304), v248, v249, time.value);
                OUTLINED_FUNCTION_99_0(v208, v209, v210, v211, v212, v213, v214, v215, v228, v232, v236, sbufc, time1.value, *&time1.timescale, time1.epoch, v242, *v243, *&v243[8], *&v243[16], *&v243[24], v244, *type, v246, v247, v248, v249, v216, time.value);
                if (!v68)
                {
LABEL_115:
                  v197 = *(v4 + 224);
                  if (!v197 || *(v4 + 248) + v125 < v197)
                  {
LABEL_117:
                    if (*(v4 + 785) == 1 && *(v4 + 752) == buffer)
                    {
                      [BWQuickTimeMovieFileSinkNode _debugAudioUsingSampleBuffer:v4];
                    }

                    goto LABEL_120;
                  }

                  if (!dword_1ED844250)
                  {
                    v68 = 4294950884;
LABEL_152:
                    [(BWQuickTimeMovieFileSinkNode *)v4 _forceEarlyTerminationWithErrorCode:v68];
                    goto LABEL_76;
                  }

                  LODWORD(v246) = 0;
                  type[0] = OS_LOG_TYPE_DEFAULT;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v202 = v246;
                  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
                  {
                    v203 = v202;
                  }

                  else
                  {
                    v203 = v202 & 0xFFFFFFFE;
                  }

                  if (v203)
                  {
                    name2 = [v4 name];
                    v218 = *(v4 + 248);
                    v219 = *(v4 + 224);
                    LODWORD(time1.value) = 136316418;
                    *(&time1.value + 4) = "[BWQuickTimeMovieFileSinkNode _writeBuffer:forInputIndex:]";
                    LOWORD(time1.flags) = 2048;
                    *(&time1.flags + 2) = v4;
                    HIWORD(time1.epoch) = 2112;
                    v242 = name2;
                    *v243 = 2048;
                    *&v243[2] = v125;
                    *&v243[10] = 2048;
                    *&v243[12] = v218;
                    *&v243[20] = 2048;
                    *&v243[22] = v219;
                    OUTLINED_FUNCTION_2_1();
                    OUTLINED_FUNCTION_13();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_2_4();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v68 = 4294950884;
                  v127 = &off_1ACF06000;
                }
              }

              if (dword_1ED844250)
              {
                v220 = v127;
                v221 = OUTLINED_FUNCTION_7_21();
                v222 = v246;
                if (os_log_type_enabled(v221, type[0]))
                {
                  v223 = v222;
                }

                else
                {
                  v223 = v222 & 0xFFFFFFFE;
                }

                if (v223)
                {
                  [v4 name];
                  LODWORD(time1.value) = *(v220 + 82);
                  OUTLINED_FUNCTION_75();
                  *(&time1.flags + 2) = v4;
                  HIWORD(time1.epoch) = 2112;
                  v242 = v224;
                  *v243 = 1024;
                  *&v243[2] = v68;
                  OUTLINED_FUNCTION_2_1();
                  OUTLINED_FUNCTION_13();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_2_4();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              goto LABEL_152;
            }

            if (*(v4 + 1016))
            {
              if (!dword_1ED844250 || (v138 = OUTLINED_FUNCTION_7_21(), os_log_type_enabled(v138, type[0]), OUTLINED_FUNCTION_37_1(), [*(v4 + 448) settingsID], LODWORD(time1.value) = 136315906, OUTLINED_FUNCTION_3_29(), OUTLINED_FUNCTION_13(), _os_log_send_and_compose_impl(), OUTLINED_FUNCTION_110_0(), OUTLINED_FUNCTION_2_4(), fig_log_call_emit_and_clean_up_after_send_and_compose(), v127 = &off_1ACF06000, !dword_1ED844250))
              {
LABEL_112:
                CMTimeMake(&time1, 5 * time2.timescale, time2.timescale);
                v177 = OUTLINED_FUNCTION_129_1(time2.epoch, v225, v229, v233, sbuf, time1.value, *&time1.timescale, time1.epoch, v242, *v243, *&v243[8], *&v243[16], *&v243[24], v244, *type, time2.value, *&time2.timescale, v248, v249, time.value);
                OUTLINED_FUNCTION_99_0(v177, v178, v179, v180, v181, v182, v183, v184, v226, v230, v234, sbufb, time1.value, *&time1.timescale, time1.epoch, v242, *v243, *&v243[8], *&v243[16], *&v243[24], v244, *type, v246, v247, v248, v249, v185, time.value);
                goto LABEL_113;
              }

              v153 = OUTLINED_FUNCTION_7_21();
              OUTLINED_FUNCTION_59_3(v153, v154, v155, v156, v157, v158, v159, v160, v225, v229, v233, sbuf, time1.value, *&time1.timescale, time1.epoch, v242, *v243, *&v243[8], *&v243[16], *&v243[24], v244, type[0], *&type[4], v246);
              OUTLINED_FUNCTION_37_1();
              [*(v4 + 448) settingsID];
              LODWORD(time1.value) = 136315906;
              OUTLINED_FUNCTION_3_29();
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_110_0();
              OUTLINED_FUNCTION_2_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v127 = &off_1ACF06000;
            }

            if (dword_1ED844250)
            {
              v161 = OUTLINED_FUNCTION_7_21();
              OUTLINED_FUNCTION_59_3(v161, v162, v163, v164, v165, v166, v167, v168, v225, v229, v233, sbuf, time1.value, *&time1.timescale, time1.epoch, v242, *v243, *&v243[8], *&v243[16], *&v243[24], v244, type[0], *&type[4], v246);
              OUTLINED_FUNCTION_37_1();
              [*(v4 + 448) settingsID];
              LODWORD(time1.value) = 136315906;
              OUTLINED_FUNCTION_3_29();
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_110_0();
              OUTLINED_FUNCTION_2_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v127 = &off_1ACF06000;
              if (dword_1ED844250)
              {
                v169 = OUTLINED_FUNCTION_7_21();
                OUTLINED_FUNCTION_59_3(v169, v170, v171, v172, v173, v174, v175, v176, v225, v229, v233, sbuf, time1.value, *&time1.timescale, time1.epoch, v242, *v243, *&v243[8], *&v243[16], *&v243[24], v244, type[0], *&type[4], v246);
                OUTLINED_FUNCTION_37_1();
                [*(v4 + 448) settingsID];
                LODWORD(time1.value) = 136315906;
                OUTLINED_FUNCTION_3_29();
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_110_0();
                OUTLINED_FUNCTION_2_4();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v127 = &off_1ACF06000;
              }
            }

            goto LABEL_112;
          }

          v68 = v87;
        }

        else
        {
          v68 = 4294954514;
        }

        OUTLINED_FUNCTION_16_0();
        FigDebugAssert3();
LABEL_76:
        [*(v4 + 1048) logErrorNumber:v68 errorString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"when writing media for index %d", buffer)}];
        goto LABEL_117;
      }

      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3();
    }

LABEL_120:
    OUTLINED_FUNCTION_128_0();
  }
}

- (CMTime)_printBufferEvent:(CMTime *)result forNodeInputIndex:eventName:
{
  if (result && (byte_1ED844240 & 0x20) != 0)
  {
    OUTLINED_FUNCTION_54();
    FormatDescription = CMSampleBufferGetFormatDescription(v3);
    CMFormatDescriptionGetMediaType(FormatDescription);
    memset(&v12, 0, sizeof(v12));
    CMSampleBufferGetDecodeTimeStamp(&v12, v2);
    memset(&v11, 0, sizeof(v11));
    CMSampleBufferGetPresentationTimeStamp(&v11, v2);
    memset(&v10, 0, sizeof(v10));
    CMSampleBufferGetDuration(&v10, v2);
    sizeArrayOut = 0;
    sizeArrayEntriesNeededOut = 0;
    if (!BWSampleBufferIsMarkerBuffer(v2) && !CMSampleBufferGetSampleSizeArray(v2, 0, 0, &sizeArrayEntriesNeededOut) && sizeArrayEntriesNeededOut == 1)
    {
      CMSampleBufferGetSampleSizeArray(v2, 1, &sizeArrayOut, 0);
    }

    result = qtmfsn_stringForRecordingState(*(v1 + 632));
    if (v10.flags)
    {
      memset(&v7, 0, sizeof(v7));
      lhs = v11;
      v5 = v10;
      return CMTimeAdd(&v7, &lhs, &v5);
    }
  }

  return result;
}

- (void)_processIrisRequest:(uint64_t)request
{
  if (!request)
  {
    return;
  }

  OUTLINED_FUNCTION_54();
  v4 = &unk_1ED844000;
  if (dword_1ED844250)
  {
    OUTLINED_FUNCTION_5_30();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_63(os_log_and_send_and_compose_flags_and_os_log_type);
    OUTLINED_FUNCTION_4_0();
    if (v3)
    {
      [v1 name];
      OUTLINED_FUNCTION_41_5();
      OUTLINED_FUNCTION_124_1();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4_4();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_68_0();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0();
  }

  v6 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (!*(v1 + 992))
  {
    goto LABEL_27;
  }

  if (!*(v1 + 696))
  {
    OUTLINED_FUNCTION_122_1();
    if (!v7)
    {
      v8 = 0;
LABEL_16:
      if ([objc_msgSend(copySpatialOverCaptureVariant "settings")])
      {
        copySpatialOverCaptureVariant = [copySpatialOverCaptureVariant copySpatialOverCaptureVariant];
        if (!dword_1ED844250)
        {
LABEL_27:
          v10 = 0;
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_5_30();
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_63(v11);
        OUTLINED_FUNCTION_4_0();
        if (&OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled)
        {
          [v1 name];
          OUTLINED_FUNCTION_41_5();
          OUTLINED_FUNCTION_124_1();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_4_4();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_68_0();
        }

        v6 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        OUTLINED_FUNCTION_12_16();
      }

      else
      {
        if (v8 & 1) != 0 || ([copySpatialOverCaptureVariant spatialOverCaptureExpected])
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_5_30();
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_63(v12);
        OUTLINED_FUNCTION_4_0();
        if (&OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled)
        {
          [v1 name];
          [objc_msgSend(OUTLINED_FUNCTION_106_0() "settings")];
          OUTLINED_FUNCTION_20_6();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_4_4();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_68_0();
        }

        v6 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        OUTLINED_FUNCTION_12_16();
      }

      OUTLINED_FUNCTION_39_4();
      goto LABEL_27;
    }
  }

  if ([copySpatialOverCaptureVariant spatialOverCaptureExpected])
  {
    v8 = 1;
    goto LABEL_16;
  }

  if (dword_1ED844250)
  {
    OUTLINED_FUNCTION_5_30();
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_63(v9);
    OUTLINED_FUNCTION_4_0();
    if (&OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled)
    {
      [v1 name];
      [objc_msgSend(OUTLINED_FUNCTION_106_0() "settings")];
      [objc_msgSend(copySpatialOverCaptureVariant "settings")];
      [copySpatialOverCaptureVariant spatialOverCaptureExpected];
      [objc_msgSend(*(v1 + 696) "settings")];
      OUTLINED_FUNCTION_20_6();
      v4 = &unk_1ED844000;
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4_4();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_68_0();
    }

    OUTLINED_FUNCTION_12_16();
    v10 = 1;
    OUTLINED_FUNCTION_39_4();
    v6 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  }

  else
  {
    v10 = 1;
  }

LABEL_28:
  OUTLINED_FUNCTION_122_1();
  if (v13)
  {
    if (v10)
    {
      return;
    }

    goto LABEL_52;
  }

  if (*(v1 + v6[931]))
  {
    v14 = v10 ^ 1;
  }

  else
  {
    *(v1 + v6[931]) = copySpatialOverCaptureVariant;
    requestedSDOFVariants = [copySpatialOverCaptureVariant requestedSDOFVariants];
    if ([copySpatialOverCaptureVariant isMomentCaptureMovieRecording] && (objc_msgSend(copySpatialOverCaptureVariant, "isFinalEnqueuedIrisRequest") & 1) == 0)
    {
      if (v4[148])
      {
        OUTLINED_FUNCTION_5_30();
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_63(v16);
        OUTLINED_FUNCTION_4_0();
        if (v6)
        {
          [objc_msgSend(copySpatialOverCaptureVariant "settings")];
          OUTLINED_FUNCTION_51_4();
          OUTLINED_FUNCTION_124_1();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_4_4();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_68_0();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
      }
    }

    else if (!requestedSDOFVariants)
    {
      return;
    }

    v14 = 0;
  }

  OUTLINED_FUNCTION_122_1();
  if (!v17)
  {
    v18 = *(v1 + 632);
    v19 = v18 == 4 || v18 == 1;
    if (v19)
    {
      [(BWQuickTimeMovieFileSinkNode *)v1 _buildIrisRefMovieGeneratorAndWriteFirstIrisAsRefMovie];
    }
  }

  if (v14)
  {
    OUTLINED_FUNCTION_122_1();
    if (v20)
    {
LABEL_52:
      v21 = OUTLINED_FUNCTION_3_19();
      [(BWQuickTimeMovieFileSinkNode *)v21 _writeIrisRefMovieWithInfo:v22];
      return;
    }

    v23 = *(v1 + 632);
    if (v23 == 3 || v23 == 0)
    {
      [OUTLINED_FUNCTION_123(704) addObject:?];
      if (v4[148])
      {
        OUTLINED_FUNCTION_5_30();
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_133_0(v25);
        OUTLINED_FUNCTION_115_0();
        if (v19)
        {
          v27 = v26;
        }

        else
        {
          v27 = v6;
        }

        if (!v27)
        {
          goto LABEL_72;
        }

        [*(v1 + 704) count];
        OUTLINED_FUNCTION_51_4();
        OUTLINED_FUNCTION_5();
        goto LABEL_71;
      }
    }

    else if (v4[148])
    {
      OUTLINED_FUNCTION_5_30();
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_133_0(v28);
      OUTLINED_FUNCTION_115_0();
      if (v19)
      {
        v30 = v29;
      }

      else
      {
        v30 = v6;
      }

      if (!v30)
      {
        goto LABEL_72;
      }

      qtmfsn_stringForRecordingState(*(v1 + 632));
      OUTLINED_FUNCTION_51_4();
      OUTLINED_FUNCTION_124_1();
      OUTLINED_FUNCTION_5();
LABEL_71:
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
LABEL_72:
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (uint64_t)_setTrackReferenceListForMetadataInputs:(uint64_t)result inOutTrackReferenceListForMetadataInputs:
{
  if (result)
  {
    OUTLINED_FUNCTION_78_2();
    [(BWQuickTimeMovieFileSinkNode *)v3 _validateTrackReferenceListForInputs:v4 ofType:@"metadata"];
    OUTLINED_FUNCTION_114_0();
    FigSimpleMutexLock();

    v5 = [v2 count];
    if (v5)
    {
      v5 = [v2 copy];
    }

    *v1 = v5;
    OUTLINED_FUNCTION_114_0();

    return FigSimpleMutexUnlock();
  }

  return result;
}

- (void)_determineWhichInputsWeExpectToSeeSamplesFor
{
  if (self)
  {
    bzero(*(self + 664), *(self + 600));
    if (*(self + 600))
    {
      v2 = 0;
      v3 = *MEMORY[0x1E695E4D0];
      do
      {
        v4 = [objc_msgSend(OUTLINED_FUNCTION_123(440) "objectAtIndexedSubscript:{"objectAtIndexedSubscript:", 0}")];
        *(*(self + 664) + v2++) = CMGetAttachment(v4, @"FileWriterStartActionModifier_NoDataWillBeProvidedForThisRecording", 0) != v3;
      }

      while (v2 < *(self + 600));
    }
  }
}

- (void)_addStereoMovieLevelMetadataToSettingsMovieLevelMetadata:(uint64_t)metadata
{
  if (metadata)
  {
    MovieLevelMetadataWithSpatialVersionMetadata = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSpatialVersionMetadata([a2 movieLevelMetadata], @"1.0");
    [a2 setMovieLevelMetadata:MovieLevelMetadataWithSpatialVersionMetadata];
  }
}

- (uint64_t)_handleFormatWriterErrorOccurredCallback:(void *)callback userInfo:
{
  if (result)
  {
    v4 = result;
    FigSimpleMutexLock();
    *(v4 + 772) = [objc_msgSend(callback objectForKeyedSubscript:{*MEMORY[0x1E6971AF0]), "integerValue"}];
    if (!*(v4 + 772))
    {
      *(v4 + 772) = -1;
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

- (uint64_t)_isLastFallbackAudioTrack:(void *)track
{
  if (!track)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(a2 - 1)];
  trackReferenceListForAudioInputs = [track trackReferenceListForAudioInputs];
  if ([trackReferenceListForAudioInputs count] < 2 || (objc_msgSend(trackReferenceListForAudioInputs, "count") & 1) != 0 || !objc_msgSend(trackReferenceListForAudioInputs, "count"))
  {
    return 1;
  }

  v5 = 0;
  do
  {
    v6 = [trackReferenceListForAudioInputs objectAtIndex:v5];
    v7 = v6 != v3;
    if (v6 == v3)
    {
      break;
    }

    v5 += 2;
  }

  while ([trackReferenceListForAudioInputs count] > v5);
  return v7;
}

- (void)_startUpFormatWriterAtTime:withSettings:
{
  OUTLINED_FUNCTION_84();
  if (!v0)
  {
    goto LABEL_19;
  }

  v3 = v2;
  v4 = v1;
  v5 = v0;
  v287 = 0;
  v6 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  bzero(*(v0 + 672), *(v0 + 600));
  bzero(*(v5 + 680), *(v5 + 608) + *(v5 + 600));
  *(v5 + 762) = 0;
  *(v5 + 763) = 0;
  *(v5 + 216) = 0;
  v7 = MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  *(v5 + 288) = v8;
  v9 = *v7;
  *(v5 + 272) = *v7;
  v266 = v9;
  *(v5 + 296) = v9;
  *(v5 + 312) = v8;
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&time, HostTimeClock);
  *(v5 + 392) = time;
  *&v11 = OUTLINED_FUNCTION_34_2((v5 + 320)).n128_u64[0];
  *(v5 + 416) = 600;
  *(v5 + 736) = 0;
  *(v5 + 740) = 0;
  *(v5 + 1740) = 0;
  *(v5 + 1744) = 0;
  *(v5 + 1745) = 0;
  [v5 setMovieLevelMetadata:{0, v11}];
  *(v5 + 232) = 0;
  *(v5 + 240) = 0;
  if (qtmfsn_movieRecordingIsProRes(v3))
  {
    BWGetCurrentTotalNANDReadAndWriteBytes((v5 + 232), (v5 + 240));
  }

  CMTimeMake(&time, 0, 1);
  *(v5 + 344) = time;
  v12 = MEMORY[0x1E6960C70];
  if (!*(v5 + 344))
  {
    *(v5 + 344) = *MEMORY[0x1E6960C70];
    *(v5 + 360) = *(v12 + 16);
  }

  *(v5 + 224) = 0;
  *(v5 + 256) = 0;
  FigBaseObject = FigFormatWriterGetFigBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    v20 = 4294954514;
LABEL_13:
    OUTLINED_FUNCTION_1_39();
    goto LABEL_14;
  }

  v251 = v4;
  allocator = *MEMORY[0x1E695E480];
  v15 = v14(FigBaseObject, *MEMORY[0x1E6971C08]);
  if (v15)
  {
    v20 = v15;
    goto LABEL_13;
  }

  if (v287)
  {
    Value = CFDictionaryGetValue(v287, *MEMORY[0x1E6971EF0]);
    v17 = MEMORY[0x1E6971FA0];
    if (Value)
    {
      v18 = FigMetadataWriterGetFigBaseObject();
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v19)
      {
        v20 = v19(v18, *v17, &unk_1F2243120);
      }

      else
      {
        v20 = 4294954514;
      }
    }

    else
    {
      v20 = 0;
    }

    if (CFDictionaryGetValue(v287, *MEMORY[0x1E6971EE8]))
    {
      v22 = FigMetadataWriterGetFigBaseObject();
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v23)
      {
        v20 = v23(v22, *v17, &unk_1F2243120);
      }

      else
      {
        v20 = 4294954514;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  memset(&v286, 0, sizeof(v286));
  if (v3)
  {
    [v3 movieFragmentInterval];
    if (v286.flags)
    {
      time = v286;
      v24 = CMTimeCopyAsDictionary(&time, allocator);
      FigFormatWriterGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v25 = OUTLINED_FUNCTION_64_0();
        v20 = v26(v25);
      }

      else
      {
        v20 = 4294954514;
      }

      *(v5 + 762) = v20 == 0;
      if (v24)
      {
        CFRelease(v24);
      }
    }
  }

  v253 = v3;
  [v3 outputURL];
  IsFileOnExternalStorageDevice = FigFileIsFileOnExternalStorageDevice();
  v28 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (IsFileOnExternalStorageDevice)
  {
    memset(&time, 0, sizeof(time));
    CMTimeMakeWithSeconds(&time, 1.0, 1);
    time2 = time;
    v29 = CMTimeCopyAsDictionary(&time2, allocator);
    if (v29)
    {
      v30 = v29;
      OUTLINED_FUNCTION_57_4();
      FigFormatWriterGetFigBaseObject();
      if (!*(*(CMBaseObjectGetVTable() + 8) + 56) || (v31 = OUTLINED_FUNCTION_64_0(), v32(v31)))
      {
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      CFRelease(v30);
    }

    OUTLINED_FUNCTION_57_4();
    v33 = FigFormatWriterGetFigBaseObject();
    v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v34 || v34(v33, @"JoinWritingThreadToNewWorkgroup", *MEMORY[0x1E695E4D0]))
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v20 = 0;
  }

  v261 = v5;
  if ((*(v5 + 356) & 1) == 0)
  {
    if (v253)
    {
      [v253 maxDuration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    *(v5 + 344) = time;
    if (*(v5 + 356))
    {
      time = *(v5 + 344);
      *&time2.value = v266;
      time2.epoch = v8;
      if (CMTimeCompare(&time, &time2) < 1)
      {
        if (dword_1ED844250)
        {
          v285 = 0;
          v284 = OS_LOG_TYPE_DEFAULT;
          v35 = OUTLINED_FUNCTION_89_1();
          OUTLINED_FUNCTION_135_0(v35);
          OUTLINED_FUNCTION_4_0();
          if (v5)
          {
            name = [v5 name];
            OUTLINED_FUNCTION_66_1();
            LODWORD(time2.value) = 136315906;
            *(&time2.value + 4) = "[BWQuickTimeMovieFileSinkNode _startUpFormatWriterAtTime:withSettings:]";
            OUTLINED_FUNCTION_82_1();
            v282 = name;
            OUTLINED_FUNCTION_63_2(v37, v38);
            OUTLINED_FUNCTION_9_14();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_39_0();
          v6 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          v28 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        }

        v39 = MEMORY[0x1E6960C70];
        *(v5 + 344) = *MEMORY[0x1E6960C70];
        *(v5 + 360) = *(v39 + 16);
      }
    }

    if (*(v5 + 356))
    {
      if (dword_1ED844250)
      {
        v285 = 0;
        v284 = OS_LOG_TYPE_DEFAULT;
        v45 = OUTLINED_FUNCTION_89_1();
        OUTLINED_FUNCTION_135_0(v45);
        OUTLINED_FUNCTION_4_0();
        if (v5)
        {
          name2 = [v5 name];
          OUTLINED_FUNCTION_66_1();
          LODWORD(time2.value) = 136315906;
          *(&time2.value + 4) = "[BWQuickTimeMovieFileSinkNode _startUpFormatWriterAtTime:withSettings:]";
          OUTLINED_FUNCTION_82_1();
          v282 = name2;
          OUTLINED_FUNCTION_63_2(v47, v48);
          OUTLINED_FUNCTION_9_14();
          _os_log_send_and_compose_impl();
        }

        goto LABEL_65;
      }
    }

    else if (dword_1ED844250)
    {
      v285 = 0;
      v284 = OS_LOG_TYPE_DEFAULT;
      v40 = OUTLINED_FUNCTION_89_1();
      v41 = v285;
      os_log_type_enabled(v40, v284);
      OUTLINED_FUNCTION_115_0();
      if (v174)
      {
        v43 = v42;
      }

      else
      {
        v43 = v41;
      }

      if (v43)
      {
        name3 = [v261 name];
        LODWORD(time2.value) = 136315650;
        *(&time2.value + 4) = "[BWQuickTimeMovieFileSinkNode _startUpFormatWriterAtTime:withSettings:]";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v261;
        HIWORD(time2.epoch) = 2112;
        v282 = name3;
        LODWORD(v237) = 32;
        p_time2 = &time2;
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

LABEL_65:
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v5 = v261;
      v6 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      v28 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    }
  }

  if (!*(v5 + 224))
  {
    *(v5 + 224) = [v253 maxFileSize];
    if (IsFileOnExternalStorageDevice)
    {
      [v253 outputURL];
      v57 = *MEMORY[0x1E695DDD8];
      v280 = *MEMORY[0x1E695DDD8];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v280 count:1];
      v58 = [OUTLINED_FUNCTION_79_1() resourceValuesForKeys:? error:?];
      if (v58)
      {
        v59 = [v58 objectForKeyedSubscript:v57];
        if (v59)
        {
          v60 = v59;
          v61 = *(v5 + 224);
          longLongValue = [v59 longLongValue];
          if (v61)
          {
            if (v61 >= longLongValue)
            {
              longLongValue = [v60 longLongValue];
            }

            else
            {
              longLongValue = *(v5 + 224);
            }
          }

          *(v5 + 224) = longLongValue;
        }
      }
    }
  }

  v49 = v253;
  if (!*(v5 + 256))
  {
    *(v5 + 256) = [v253 minFreeDiskSpaceLimit];
  }

  movieLevelMetadata = [v253 movieLevelMetadata];
  [v5 setMovieLevelMetadata:movieLevelMetadata];
  if (movieLevelMetadata)
  {
    OUTLINED_FUNCTION_57_4();
    FigFormatWriterGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v51 = OUTLINED_FUNCTION_8_8();
      v20 = v52(v51);
      if (!v20)
      {
        v28 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        goto LABEL_73;
      }
    }

    else
    {
      v20 = 4294954514;
    }

    OUTLINED_FUNCTION_1_39();
LABEL_14:
    FigDebugAssert3();
    v21 = 0;
    goto LABEL_15;
  }

LABEL_73:
  *&v53 = OUTLINED_FUNCTION_34_2((v5 + 368)).n128_u64[0];
  *(v5 + 248) = 1000000;
  *(v5 + 264) = 0;
  trackReferenceListForMetadataInputs = [v5 trackReferenceListForMetadataInputs];
  v55 = trackReferenceListForMetadataInputs;
  if (*(v5 + 776))
  {
    v56 = [trackReferenceListForMetadataInputs count];
    if (v56)
    {
      v56 = malloc_type_calloc(*(v5 + 776), 4uLL, 0x100004052888210uLL);
    }
  }

  else
  {
    v56 = 0;
  }

  v252 = v56;
  v63 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (!*(v5 + v6[863]))
  {
LABEL_165:
    if ([v49 isIrisRecording])
    {
      v21 = v252;
      if (v252 && *v252 >= 1 && ([v49 isIrisMovieRecording] & 1) == 0)
      {
        v151 = OUTLINED_FUNCTION_57_4();
        v152 = FigFormatWriterAddTrack(v151, 1835365473, v5 + 736);
        if (v152 || (v153 = OUTLINED_FUNCTION_57_4(), qtmfsn_setTrackProperties(v153, *(v5 + 736), 1835365473, v49), *(v5 + 740) = *v252, OUTLINED_FUNCTION_102_0(), v154 = v28, v155 = *MEMORY[0x1E6971D78], [MEMORY[0x1E696AD98] numberWithInt:*(v5 + *(v156 + 3848))], v157 = OUTLINED_FUNCTION_3_19(), v152 = FigFormatWriterSetTrackProperty(v157, v158, v155, v159), v152) || (v152 = FigFormatWriterSetTrackProperty(*(v5 + v154[920]), *(v5 + 736), *MEMORY[0x1E6971D38], *MEMORY[0x1E695E4C0]), v152))
        {
          v20 = v152;
          OUTLINED_FUNCTION_1_5();
          goto LABEL_218;
        }

        if (*(v5 + 936))
        {
          data = [MEMORY[0x1E695DEF0] data];
        }

        else
        {
          data = 0;
        }

        v161 = *(v5 + 740);
        *&time.value = v266;
        time.epoch = v8;
        QuickTimeMovieStillImageTimeSampleBuffer = FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer(&time, data, *(v5 + 944), v161);
        if (!QuickTimeMovieStillImageTimeSampleBuffer)
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
          v20 = 4294954586;
          goto LABEL_15;
        }

        v163 = QuickTimeMovieStillImageTimeSampleBuffer;
        v164 = *(v5 + v154[920]);
        v165 = *(v5 + 736);
        v166 = *MEMORY[0x1E6971D18];
        FormatDescription = CMSampleBufferGetFormatDescription(QuickTimeMovieStillImageTimeSampleBuffer);
        v20 = FigFormatWriterSetTrackProperty(v164, v165, v166, [MEMORY[0x1E695DEC8] arrayWithObjects:&FormatDescription count:1]);
        CFRelease(v163);
        if (v20)
        {
          goto LABEL_239;
        }

        v49 = v253;
      }
    }

    else
    {
      v21 = v252;
    }

    if (([v49 isIrisRecording] & 1) == 0)
    {
      v20 = [(BWQuickTimeMovieFileSinkNode *)v5 _addMovieSegmentMetadataTrackUsingMovieSettings:v49 withVideoTimeScales:v21];
      if (v20)
      {
LABEL_239:
        OUTLINED_FUNCTION_1_39();
        goto LABEL_218;
      }
    }

    structuralDependentTrackReferenceListForMetadataInputs = [v5 structuralDependentTrackReferenceListForMetadataInputs];
    trackReferenceListForRenderMetadataInputs = [v5 trackReferenceListForRenderMetadataInputs];
    v169 = v5;
    trackReferenceListForVideoInputs = [v5 trackReferenceListForVideoInputs];
    trackReferenceListForAudioInputs = [v169 trackReferenceListForAudioInputs];
    trackReferenceListForAudioRemixInputs = [v169 trackReferenceListForAudioRemixInputs];
    v173 = trackReferenceListForAudioRemixInputs;
    if (!v55 && (*(v169 + 736) <= 0 ? (v174 = trackReferenceListForVideoInputs == 0) : (v174 = 0), v174 ? (v175 = trackReferenceListForAudioInputs == 0) : (v175 = 0), v175 ? (v176 = trackReferenceListForAudioRemixInputs == 0) : (v176 = 0), v176))
    {
      v5 = v169;
      v177 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    }

    else
    {
      [BWQuickTimeMovieFileSinkNode _validTrackReferencesForReferenceInputIndexes:];
      v208 = v207;
      if (*(v169 + 736) >= 1)
      {
        [MEMORY[0x1E696AD98] numberWithInt:?];
        [OUTLINED_FUNCTION_17() addObject:?];
        [MEMORY[0x1E696AD98] numberWithInt:**(v169 + 656)];
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      if ([v173 count])
      {
        [BWQuickTimeMovieFileSinkNode _validTrackReferencesForReferenceInputIndexes:];
        [OUTLINED_FUNCTION_17() addObjectsFromArray:?];
      }

      v209 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
      if ([v208 count])
      {
        OUTLINED_FUNCTION_92_1();
        if ([structuralDependentTrackReferenceListForMetadataInputs count])
        {
          [BWQuickTimeMovieFileSinkNode _validTrackReferencesForReferenceInputIndexes:];
          if ([v235 count])
          {
            OUTLINED_FUNCTION_92_1();
          }
        }
      }

      if ([trackReferenceListForRenderMetadataInputs count])
      {
        [BWQuickTimeMovieFileSinkNode _validTrackReferencesForReferenceInputIndexes:];
        if ([v232 count])
        {
          OUTLINED_FUNCTION_92_1();
        }
      }

      if ([trackReferenceListForVideoInputs count])
      {
        [BWQuickTimeMovieFileSinkNode _validTrackReferencesForReferenceInputIndexes:];
        if ([v233 count])
        {
          OUTLINED_FUNCTION_92_1();
        }
      }

      v5 = v261;
      v177 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      if ([trackReferenceListForAudioInputs count])
      {
        [BWQuickTimeMovieFileSinkNode _validTrackReferencesForReferenceInputIndexes:];
        if ([v234 count])
        {
          OUTLINED_FUNCTION_92_1();
        }
      }

      if ([v209 count])
      {
        FigFormatWriterGetFigBaseObject();
        if (!*(*(CMBaseObjectGetVTable() + 8) + 56) || (v210 = OUTLINED_FUNCTION_118_0(), v211(v210)))
        {
          OUTLINED_FUNCTION_1_5();
          OUTLINED_FUNCTION_2_5();
          FigDebugAssert3();
        }

        v20 = 0;
      }
    }

    if ([objc_msgSend(v5 "taggedMediaCharacteristicsForInputs")])
    {
      [BWQuickTimeMovieFileSinkNode _validateTaggedMediaCharacteristicsForInputIndexes:];
      v274 = 0u;
      v275 = 0u;
      v276 = 0u;
      v277 = 0u;
      obja = v212;
      v178 = v253;
      v265 = [v212 countByEnumeratingWithState:&v274 objects:v273 count:16];
      if (v265)
      {
        v263 = *v275;
        v255 = *MEMORY[0x1E6971D98];
        keya = *MEMORY[0x1E6971EF0];
        v213 = *MEMORY[0x1E6973B40];
        v214 = *MEMORY[0x1E6973B38];
        v215 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        do
        {
          for (i = 0; i != v265; ++i)
          {
            if (*v275 != v263)
            {
              objc_enumerationMutation(obja);
            }

            v217 = *(*(&v274 + 1) + 8 * i);
            time.value = 0;
            v218 = *(v5 + v215[920]);
            unsignedIntValue = [v217 unsignedIntValue];
            v220 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (!v220 || v220(v218, unsignedIntValue, v255, allocator, &time))
            {
              OUTLINED_FUNCTION_1_5();
              OUTLINED_FUNCTION_2_5();
              FigDebugAssert3();
            }

            if (time.value)
            {
              v267 = i;
              v221 = CFDictionaryGetValue(time.value, keya);
              if (v221)
              {
                v222 = v221;
                v271 = 0u;
                v272 = 0u;
                v269 = 0u;
                v270 = 0u;
                v223 = [obja objectForKeyedSubscript:v217];
                v224 = [v223 countByEnumeratingWithState:&v269 objects:v268 count:16];
                if (v224)
                {
                  v225 = v224;
                  v226 = *v270;
                  do
                  {
                    for (j = 0; j != v225; ++j)
                    {
                      if (*v270 != v226)
                      {
                        objc_enumerationMutation(v223);
                      }

                      v228 = *(*(&v269 + 1) + 8 * j);
                      v229 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                      if (v229)
                      {
                        v230 = v229(v222, v213, v214, v228, 0);
                        if (!v230)
                        {
                          continue;
                        }
                      }

                      OUTLINED_FUNCTION_1_5();
                      OUTLINED_FUNCTION_2_5();
                      v230 = FigDebugAssert3();
                    }

                    v225 = OUTLINED_FUNCTION_1_18(v230, v231, &v269, v268);
                  }

                  while (v225);
                }
              }

              v5 = v261;
              v215 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
              i = v267;
              if (time.value)
              {
                CFRelease(time.value);
              }
            }
          }

          v265 = [obja countByEnumeratingWithState:&v274 objects:v273 count:16];
        }

        while (v265);
        v20 = 0;
        v177 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        v21 = v252;
        v178 = v253;
      }
    }

    else
    {
      v178 = v253;
    }

    v179 = v251;
    if (v251->n128_u8[12])
    {
      v180 = *(v5 + 640);
      time2 = *v251->n128_u8;
      v181 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v181)
      {
        time = time2;
        v20 = v181(v180, &time);
        if (!v20)
        {
          *(v5 + 760) = 1;
          v179 = v251;
          goto LABEL_207;
        }
      }

      else
      {
        v20 = 4294954514;
      }

      OUTLINED_FUNCTION_1_39();
LABEL_218:
      FigDebugAssert3();
      goto LABEL_15;
    }

LABEL_207:
    OUTLINED_FUNCTION_105_0((v5 + 472), *v179);
    if (([v178 isIrisRecording] & 1) == 0)
    {
      OUTLINED_FUNCTION_34_2((v5 + 1760));
    }

    v182 = v177[863];
    v183 = MEMORY[0x1E6960C80];
    if (*(v5 + 608) + *(v5 + v182))
    {
      v184 = 0;
      v185 = 0;
      v186 = *MEMORY[0x1E6960C88];
      v187 = *(MEMORY[0x1E6960C88] + 16);
      v188 = *MEMORY[0x1E6960C80];
      v189 = *(MEMORY[0x1E6960C80] + 16);
      do
      {
        v190 = *(v5 + 496) + v184;
        *v190 = v186;
        *(v190 + 16) = v187;
        v191 = *(v5 + 504) + v184;
        *v191 = v188;
        *(v191 + 16) = v189;
        ++v185;
        v184 += 24;
      }

      while (v185 < *(v5 + 608) + *(v5 + v182));
    }

    v192 = MEMORY[0x1E6960C70];
    if (*(v5 + 776))
    {
      v193 = 0;
      v194 = 0;
      v195 = *v183;
      v196 = *(v183 + 2);
      do
      {
        v197 = *(v5 + 512) + v193;
        *v197 = v195;
        *(v197 + 16) = v196;
        ++v194;
        v198 = *(v5 + 776);
        v193 += 24;
      }

      while (v194 < v198);
    }

    else
    {
      v198 = 0;
    }

    if (*(v5 + 792) + v198)
    {
      v199 = 0;
      v200 = 0;
      v201 = *v183;
      v202 = *(v183 + 2);
      v203 = *v192;
      v204 = *(v192 + 2);
      do
      {
        v205 = *(v5 + 520) + v199;
        *v205 = v201;
        *(v205 + 16) = v202;
        v206 = *(v5 + 528) + v199;
        *v206 = v203;
        *(v206 + 16) = v204;
        ++v200;
        v199 += 24;
      }

      while (v200 < *(v5 + 792) + *(v5 + 776));
    }

    *(v5 + 761) = 1;
    *(v5 + 960) = 0;
    *(v5 + 968) = 0;
    [*(v5 + 1712) removeAllObjects];
    if (v20)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v264 = 0;
  v249 = 0;
  v64 = 0;
  v262 = *MEMORY[0x1E6971D18];
  obj = *MEMORY[0x1E6971D78];
  v246 = *MEMORY[0x1E6971D38];
  v238 = *MEMORY[0x1E6971DB0];
  v241 = *MEMORY[0x1E695E4D0];
  v243 = *MEMORY[0x1E6971CF0];
  v240 = *MEMORY[0x1E6971D68];
  v239 = *MEMORY[0x1E6971D10];
  v248 = *MEMORY[0x1E6983678];
  v247 = *MEMORY[0x1E6983680];
  v245 = *MEMORY[0x1E6971D28];
  v244 = *MEMORY[0x1E6971D30];
  key = *MEMORY[0x1E695E4C0];
  while (1)
  {
    if (*(*(v5 + 664) + v64) != 1)
    {
      goto LABEL_164;
    }

    v65 = [objc_msgSend(objc_msgSend(v5 "inputs")];
    v66 = v28;
    v67 = v65;
    v68 = *(v5 + v66[920]);
    v69 = *(v5 + v63[850]);
    v70 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v70)
    {
      v20 = 4294954514;
      goto LABEL_175;
    }

    v71 = v70(v68, v67, 0, v69 + 4 * v64);
    if (v71)
    {
      v20 = v71;
      goto LABEL_175;
    }

    v63 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    OUTLINED_FUNCTION_43_5();
    qtmfsn_setTrackProperties(v73, *(v72 + 4 * v64), v67, v49);
    v74 = *(*(v5 + 688) + 8 * v64);
    if (v74)
    {
      break;
    }

LABEL_95:
    if (v67 == 1986618469)
    {
      goto LABEL_99;
    }

    if (v67 == 1835365473)
    {
      if (v252)
      {
        v113 = v6;
        v114 = *(v5 + 776);
        v115 = [v55 count];
        if (v115 < 2)
        {
          v116 = 10000;
          v5 = v261;
          goto LABEL_147;
        }

        v137 = v115 >> 1;
        v138 = 1;
        while (1)
        {
          v139 = [v55 objectAtIndexedSubscript:v138 - 1];
          v140 = [v55 objectAtIndexedSubscript:v138];
          if (v64 == [v139 unsignedIntValue] && v114 > objc_msgSend(v140, "unsignedIntValue"))
          {
            break;
          }

          v138 += 2;
          if (!--v137)
          {
            v116 = 10000;
            goto LABEL_156;
          }
        }

        v141 = v252[[v140 unsignedIntValue]];
        if (v141 <= 0)
        {
          v116 = 10000;
        }

        else
        {
          v116 = v141;
        }

LABEL_156:
        v5 = v261;
        v136 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        v63 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      }

      else
      {
        v113 = v6;
        v116 = 10000;
LABEL_147:
        v136 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      }

      v142 = *(v5 + v136[920]);
      OUTLINED_FUNCTION_43_5();
      v144 = *(v143 + 4 * v64);
      v145 = [MEMORY[0x1E696AD98] numberWithInt:v116];
      v146 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v146)
      {
        v20 = 4294954514;
        goto LABEL_274;
      }

      v147 = v146(v142, v144, obj, v145);
      if (v147)
      {
        v20 = v147;
        goto LABEL_274;
      }

      v5 = v261;
      v148 = *(v261 + 640);
      OUTLINED_FUNCTION_34_5();
      v149 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v149)
      {
        v20 = 4294954514;
        goto LABEL_175;
      }

      v6 = v113;
      v150 = v149(v148, v63, v246, key);
      if (v150)
      {
        v20 = v150;
LABEL_175:
        OUTLINED_FUNCTION_1_39();
LABEL_176:
        FigDebugAssert3();
        goto LABEL_275;
      }

      v49 = v253;
      v28 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      v63 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      if (v64 != *(v261 + 752))
      {
        goto LABEL_163;
      }

      v20 = 0;
      *(v261 + 416) = v116;
      goto LABEL_164;
    }

    if (v67 != 1936684398)
    {
      if (v67 == 1635088502)
      {
LABEL_99:
        LODWORD(time2.value) = 0;
        v82 = OUTLINED_FUNCTION_95_2();
        v254 = v254 & 0xFFFFFFFF00000000 | v83;
        FigCaptureSimplifiedLeastCommonMultiple(v82, v83, 120000, &time2);
        v84 = OUTLINED_FUNCTION_95_2();
        v86 = v250 & 0xFFFFFFFF00000000 | v85;
        if (FigCaptureFrameRateAsFloat(v84, v85) < 120.0)
        {
          v87 = 600;
        }

        else
        {
          v87 = 2400;
        }

        v88 = time2.value;
        v250 = v86;
        if (SLODWORD(time2.value) < v87)
        {
          CMTimeMake(&time, 1, v87);
          v89 = FigCaptureFrameRateFromCMTime(&time);
          v242 = v242 & 0xFFFFFFFF00000000 | v90;
          FigCaptureSimplifiedLeastCommonMultiple(v89, v242, 120000, &time2);
          v88 = time2.value;
        }

        if (v88 <= 600)
        {
          v91 = 600;
        }

        else
        {
          v91 = v88;
        }

        LODWORD(time2.value) = v91;
        v92 = *(v5 + 640);
        OUTLINED_FUNCTION_43_5();
        v94 = *(v93 + 4 * v64);
        v95 = [MEMORY[0x1E696AD98] numberWithInt:?];
        v96 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v96)
        {
          v20 = 4294954514;
          goto LABEL_274;
        }

        v97 = v96(v92, v94, obj, v95);
        if (v97)
        {
          v20 = v97;
          goto LABEL_274;
        }

        v5 = v261;
        if (v252)
        {
          v252[v64] = time2.value;
        }

        if (v64 == *(v261 + 752))
        {
          *(v261 + 416) = time2.value;
        }

        if ([v49 isIrisRecording])
        {
          OUTLINED_FUNCTION_102_0();
          OUTLINED_FUNCTION_34_5();
          if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
          {
            v20 = 4294954514;
            goto LABEL_175;
          }

          v98 = OUTLINED_FUNCTION_3_19();
          v100 = v99(v98);
          v63 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          if (v100)
          {
            v20 = v100;
            goto LABEL_175;
          }
        }

        if ((v264 & 1) != 0 && [v49 isIrisRecording])
        {
          OUTLINED_FUNCTION_102_0();
          OUTLINED_FUNCTION_34_5();
          if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
          {
            v20 = 4294954514;
            goto LABEL_175;
          }

          v101 = OUTLINED_FUNCTION_3_19();
          v103 = v102(v101);
          v63 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          if (v103)
          {
            v20 = v103;
            goto LABEL_175;
          }
        }

        v104 = [*(v261 + 976) objectForKeyedSubscript:v248];
        v105 = [*(v261 + 976) objectForKeyedSubscript:v247];
        if (v104)
        {
          v106 = *(v261 + 640);
          v107 = *(*(v261 + v63[850]) + 4 * v64);
          v108 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v108)
          {
            v20 = 4294954514;
            goto LABEL_274;
          }

          v109 = v108(v106, v107, v245, v104);
          v5 = v261;
          v63 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          if (v109)
          {
            v20 = v109;
            goto LABEL_274;
          }
        }

        if (v105)
        {
          v110 = *(v5 + 640);
          OUTLINED_FUNCTION_34_5();
          v111 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v111)
          {
            v20 = 4294954514;
            goto LABEL_175;
          }

          v112 = v111(v110, v63, v244, v105);
          v63 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          if (v112)
          {
            v20 = v112;
            goto LABEL_175;
          }
        }

        v20 = 0;
        v264 = 1;
      }

      else
      {
        v20 = 0;
      }

      v28 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      goto LABEL_164;
    }

    if ([v49 isIrisRecording])
    {
      CMTimeMake(&time, 10, 1);
      v117 = CMTimeCopyAsDictionary(&time, allocator);
      v118 = *(v5 + 640);
      OUTLINED_FUNCTION_43_5();
      v120 = *(v119 + 4 * v64);
      v121 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v121)
      {
        CFRelease(v117);
        v20 = 4294954514;
        goto LABEL_274;
      }

      v20 = v121(v118, v120, v238, v117);
      CFRelease(v117);
      v5 = v261;
      if (v20)
      {
        goto LABEL_274;
      }
    }

    ++v249;
    v28 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if (![*(v5 + 576) count])
    {
LABEL_163:
      v20 = 0;
      goto LABEL_164;
    }

    OUTLINED_FUNCTION_102_0();
    OUTLINED_FUNCTION_34_5();
    if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v20 = 4294954514;
      goto LABEL_175;
    }

    v122 = OUTLINED_FUNCTION_3_19();
    v124 = v123(v122);
    if (v124)
    {
      v20 = v124;
      goto LABEL_175;
    }

    v125 = [(BWQuickTimeMovieFileSinkNode *)v5 _isLastFallbackAudioTrack:v249];
    v126 = *(v5 + 640);
    if (v125)
    {
      v127 = v241;
    }

    else
    {
      v127 = key;
    }

    v128 = *(*(v5 + 656) + 4 * v64);
    v129 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v129)
    {
      v20 = 4294954514;
      goto LABEL_175;
    }

    v130 = v129(v126, v128, v243, v127);
    if (v130)
    {
      v20 = v130;
      goto LABEL_175;
    }

    v28 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    OUTLINED_FUNCTION_57_4();
    v63 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    OUTLINED_FUNCTION_43_5();
    v133 = FigFormatWriterSetTrackProperty(v132, *(v131 + 4 * v64), v240, @"und");
    if (v133)
    {
      v20 = v133;
      OUTLINED_FUNCTION_1_5();
      goto LABEL_176;
    }

    OUTLINED_FUNCTION_57_4();
    OUTLINED_FUNCTION_43_5();
    v20 = FigFormatWriterSetTrackProperty(v135, *(v134 + 4 * v64), v239, @"und");
    if (v20)
    {
      goto LABEL_175;
    }

LABEL_164:
    if (++v64 >= *(v5 + v6[863]))
    {
      goto LABEL_165;
    }
  }

  v75 = v6;
  v76 = *(v5 + 640);
  v77 = *(*(v5 + 656) + 4 * v64);
  v279 = v74;
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v279 count:1];
  v79 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v79)
  {
    v20 = 4294954514;
    goto LABEL_274;
  }

  v80 = v79(v76, v77, v262, v78);
  if (!v80)
  {
    v5 = v261;
    v81 = *(*(v261 + 688) + 8 * v64);
    v6 = v75;
    v63 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if (v81)
    {
      CFRelease(v81);
      *(*(v261 + 688) + 8 * v64) = 0;
    }

    goto LABEL_95;
  }

  v20 = v80;
LABEL_274:
  OUTLINED_FUNCTION_1_39();
  FigDebugAssert3();
  v5 = v261;
LABEL_275:
  v21 = v252;
LABEL_15:
  [*(v5 + 1048) logErrorNumber:v20 errorString:@"starting format writer"];
LABEL_16:
  if (v287)
  {
    CFRelease(v287);
  }

  free(v21);
LABEL_19:
  OUTLINED_FUNCTION_81();
}

- (uint64_t)_addMovieSegmentMetadataTrackUsingMovieSettings:(unsigned int *)settings withVideoTimeScales:
{
  if (!self)
  {
    return 0;
  }

  if (!*(self + 1728))
  {
    v6 = *MEMORY[0x1E6960348];
    v7 = *MEMORY[0x1E69603B8];
    v8 = *MEMORY[0x1E6960338];
    v47[0] = *MEMORY[0x1E6960348];
    v47[1] = v8;
    v9 = *MEMORY[0x1E69602F0];
    v48[0] = v7;
    v48[1] = v9;
    v47[2] = *MEMORY[0x1E6960358];
    v10 = *MEMORY[0x1E695E4C0];
    v45 = *MEMORY[0x1E6960360];
    v46 = v10;
    v48[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
    v12 = [MEMORY[0x1E695DF70] arrayWithObjects:{v11, 0}];
    v13 = CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v12, (self + 1728));
    if (v13)
    {
      v30 = v13;
      OUTLINED_FUNCTION_1_5();
      goto LABEL_13;
    }

    [v11 objectForKeyedSubscript:v6];
    [v11 objectForKeyedSubscript:v8];
    [v11 objectForKeyedSubscript:*MEMORY[0x1E6960340]];
    *(self + 1736) = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
  }

  v14 = *(self + 640);
  v15 = *(self + 656);
  v16 = *(self + 1752);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v17)
  {
    v30 = 4294954514;
LABEL_12:
    OUTLINED_FUNCTION_16_0();
    goto LABEL_13;
  }

  v18 = v17(v14, 1835365473, 0, v15 + 4 * v16);
  if (v18)
  {
    v30 = v18;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_27_3();
  qtmfsn_setTrackProperties(v21, *(v19 + 4 * v20), 1835365473, a2);
  if (!settings)
  {
    v29 = 0;
    goto LABEL_17;
  }

  v22 = *(self + 640);
  OUTLINED_FUNCTION_27_3();
  v25 = *(v23 + 4 * v24);
  v26 = [MEMORY[0x1E696AD98] numberWithInt:*settings];
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v27)
  {
    v30 = 4294954514;
    goto LABEL_12;
  }

  v28 = v27(v22, v25, *MEMORY[0x1E6971D78], v26);
  if (v28)
  {
    v30 = v28;
    goto LABEL_12;
  }

  v29 = *settings;
LABEL_17:
  *(self + 1740) = v29;
  v32 = *(self + 640);
  OUTLINED_FUNCTION_27_3();
  v35 = *(v33 + 4 * v34);
  v36 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v36)
  {
    v30 = 4294954514;
    goto LABEL_12;
  }

  v37 = v36(v32, v35, *MEMORY[0x1E6971D38], *MEMORY[0x1E695E4C0]);
  if (v37)
  {
    v30 = v37;
    goto LABEL_12;
  }

  v38 = *(self + 640);
  OUTLINED_FUNCTION_27_3();
  v41 = *(v39 + 4 * v40);
  v44 = *(self + 1728);
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v43 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v43)
  {
    v30 = v43(v38, v41, *MEMORY[0x1E6971D18], v42);
    if (!v30)
    {
      return v30;
    }
  }

  else
  {
    v30 = 4294954514;
  }

  OUTLINED_FUNCTION_16_0();
LABEL_13:
  FigDebugAssert3();
  return v30;
}

- (void)_validTrackReferencesForReferenceInputIndexes:
{
  OUTLINED_FUNCTION_84();
  if (v2)
  {
    OUTLINED_FUNCTION_80();
    array = [MEMORY[0x1E695DF70] array];
    v4 = [v0 count];
    if (v4 >= 2)
    {
      v5 = v4 >> 1;
      v6 = 1;
      do
      {
        v7 = [objc_msgSend(v0 objectAtIndexedSubscript:{v6 - 1), "unsignedIntValue"}];
        v8 = [objc_msgSend(OUTLINED_FUNCTION_118_0() "objectAtIndexedSubscript:"unsignedIntValue"")];
        v9 = *(v1 + 664);
        if (*(v9 + v7) == 1)
        {
          v10 = v8;
          if (*(v9 + v8) == 1)
          {
            [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", *(*(v1 + 656) + 4 * v7))}];
            [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", *(*(v1 + 656) + 4 * v10))}];
          }
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  OUTLINED_FUNCTION_81();
}

- (void)_validateTaggedMediaCharacteristicsForInputIndexes:
{
  OUTLINED_FUNCTION_84();
  if (v2)
  {
    OUTLINED_FUNCTION_80();
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if ([v0 count])
    {
      v4 = 0;
      do
      {
        v5 = [objc_msgSend(OUTLINED_FUNCTION_118_0() "objectAtIndexedSubscript:"unsignedIntValue"")];
        v6 = v4 + 1;
        v7 = [OUTLINED_FUNCTION_118_0() objectAtIndexedSubscript:?];
        if (*(*(v1 + 664) + v5) == 1)
        {
          v8 = v7;
          v9 = [MEMORY[0x1E696AD98] numberWithInt:*(*(v1 + 656) + 4 * v5)];
          if (![dictionary objectForKeyedSubscript:v9])
          {
            [dictionary setObject:objc_msgSend(MEMORY[0x1E695DF70] forKeyedSubscript:{"arrayWithCapacity:", 1), v9}];
          }

          [objc_msgSend(dictionary objectForKeyedSubscript:{v9), "addObject:", v8}];
        }

        v4 = v6 + 1;
      }

      while (v4 < [v0 count]);
    }
  }

  OUTLINED_FUNCTION_81();
}

- (uint64_t)_preAllocateIfNeededForURL:(void *)l settings:
{
  selfCopy = self;
  if (self)
  {
    videoSettings = [l videoSettings];
    v7 = [objc_msgSend(videoSettings objectForKeyedSubscript:{@"AVVideoWidthKey", "intValue"}];
    v8 = [objc_msgSend(videoSettings objectForKeyedSubscript:{@"AVVideoHeightKey", "intValue"}];
    if (v7 == 3840 && v8 == 2160 || (v9 = 0, v7 == 2160) && v8 == 3840)
    {
      v9 = OUTLINED_FUNCTION_91_1(424) > 99;
    }

    v10 = OUTLINED_FUNCTION_91_1(424);
    v11 = qtmfsn_movieRecordingIsProResRaw(l);
    if (FigFileIsFileOnExternalStorageDevice() && v9 | (v10 > 49) & v11)
    {
      v21 = 0;
      v12 = [objc_msgSend(objc_msgSend(a2 "URLByDeletingLastPathComponent")];
      v13 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
      v14 = 0;
      if (v13)
      {
        if (!v21)
        {
          v14 = [v13 objectForKey:*MEMORY[0x1E696A3C0]];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            FigDebugAssert3();
            return FigSignalErrorAtGM();
          }
        }
      }

      if ([v14 longLongValue] <= 0x8000000001)
      {
        v15 = [v14 longLongValue] / 2;
      }

      else
      {
        v15 = 0x4000000000;
      }

      v20 = 0;
      v16 = *(selfCopy + 648);
      v17 = *(CMBaseObjectGetVTable() + 16);
      if (*v17 < 3uLL || (v18 = v17[6]) == 0)
      {
        selfCopy = 4294954514;
LABEL_21:
        OUTLINED_FUNCTION_1_8();
        FigDebugAssert3();
        return selfCopy;
      }

      selfCopy = v18(v16, v15, 2, &v20);
      if (selfCopy)
      {
        goto LABEL_21;
      }
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (void)_doStartRecordingAtTime:withSettings:sensorVideoPort:captureDeviceType:
{
  OUTLINED_FUNCTION_84();
  v5 = v4;
  if (!v0)
  {
    goto LABEL_75;
  }

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = v0;
  if ([v2 isEqualToString:*off_1E798A0E0])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v7 isEqualToString:*off_1E798A0F8];
  }

  *(v9 + 744) = v10;
  *(v9 + 745) = BWDeviceTypeIsExtensionDeviceType([v6 integerValue]);
  outputFileType = [v8 outputFileType];
  if (([outputFileType isEqual:*MEMORY[0x1E6971A18]] & 1) == 0)
  {
    goto LABEL_76;
  }

  isIrisRecording = [v8 isIrisRecording];
  [v8 outputURL];
  if (*(v9 + 1704) && [v8 usesVirtualCaptureCard])
  {
    v13 = *(v9 + 1704);
    [v8 outputURL];
    OUTLINED_FUNCTION_106_0();
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v14)
    {
      v15 = v14(v13, v5);
      if (v15)
      {
        v27 = v15;
      }

      else
      {
        FigVirtualCaptureCardGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v16 = OUTLINED_FUNCTION_69();
          v18 = v17(v16);
          if (!v18)
          {
            goto LABEL_12;
          }

          v27 = v18;
        }

        else
        {
          v27 = 4294954514;
        }
      }
    }

    else
    {
      v27 = 4294954514;
    }

    OUTLINED_FUNCTION_0();
LABEL_48:
    FigDebugAssert3();
    v24 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    goto LABEL_71;
  }

LABEL_12:
  v19 = *MEMORY[0x1E695E480];
  v20 = CMByteStreamCreateForFileURL();
  if (v20)
  {
    v27 = v20;
    OUTLINED_FUNCTION_1_5();
    goto LABEL_48;
  }

  v21 = OUTLINED_FUNCTION_12_0();
  v24 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if ([(BWQuickTimeMovieFileSinkNode *)v21 _preAllocateIfNeededForURL:v22 settings:v23])
  {
    OUTLINED_FUNCTION_58_3();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v105))
    {
      v26 = v106;
    }

    else
    {
      v26 = v106 & 0xFFFFFFFE;
    }

    if (v26)
    {
      [v9 name];
      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_111_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_50_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v24 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  }

  v28 = +[BWAudioFormat compressionOptionTrimSampleBufferDurationsIsRequiredForAudioSettings:](BWAudioFormat, "compressionOptionTrimSampleBufferDurationsIsRequiredForAudioSettings:", [v8 audioSettings]);
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v29 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6971BB0]];
  if (v28)
  {
    [v29 setObject:*MEMORY[0x1E6971B20] forKeyedSubscript:*MEMORY[0x1E6971B18]];
  }

  v30 = FigMovieFormatWriterCreateWithByteStream();
  if (!v30)
  {
    *(v9 + 772) = 0;
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v9, qtmfsn_formatWriterErrorOccurredCallback, *MEMORY[0x1E6971B00], *(v9 + v24[920]), CFNotificationSuspensionBehaviorDeliverImmediately);
    if (isIrisRecording)
    {
      v32 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(v32, v9, qtmfsn_formatWriterDidWriteFragment, *MEMORY[0x1E6971B10], *(v9 + v24[920]), CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    OUTLINED_FUNCTION_12_0();
    [BWQuickTimeMovieFileSinkNode _startUpFormatWriterAtTime:withSettings:];
    if (!v30)
    {
      v33 = *(v9 + 464);
      if (v33)
      {
        *v33 = 0;
        goto LABEL_30;
      }

      v34 = malloc_type_malloc(0x400uLL, 0x8F4A47FEuLL);
      *(v9 + 464) = v34;
      if (v34)
      {
LABEL_30:
        PathComponent = CFURLCreateCopyDeletingLastPathComponent(v19, [v8 outputURL]);
        v36 = CFURLGetFileSystemRepresentation(PathComponent, 1u, *(v9 + 464), 1024);
        if (!v36)
        {
          v27 = 4294966296;
          if (!PathComponent)
          {
LABEL_66:
            if (v36)
            {
              goto LABEL_75;
            }

            goto LABEL_71;
          }

LABEL_65:
          CFRelease(PathComponent);
          goto LABEL_66;
        }

        *(v9 + 448) = v8;
        if ([*(v9 + 704) count])
        {
          v37 = 1;
        }

        else
        {
          v37 = [OUTLINED_FUNCTION_126_0() requestedSDOFVariants] != 0;
        }

        if ([OUTLINED_FUNCTION_126_0() isMomentCaptureMovieRecording] && (objc_msgSend(OUTLINED_FUNCTION_126_0(), "isFinalEnqueuedIrisRequest") & 1) == 0)
        {
          if (dword_1ED844250)
          {
            OUTLINED_FUNCTION_58_3();
            v38 = OUTLINED_FUNCTION_54_0();
            if (os_log_type_enabled(v38, v105))
            {
              v39 = v106;
            }

            else
            {
              v39 = v106 & 0xFFFFFFFE;
            }

            if (v39)
            {
              [v9 name];
              [objc_msgSend(OUTLINED_FUNCTION_126_0() "settings")];
              OUTLINED_FUNCTION_76();
              OUTLINED_FUNCTION_4_4();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_125();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else if (!v37)
        {
          goto LABEL_64;
        }

        [(BWQuickTimeMovieFileSinkNode *)v9 _buildIrisRefMovieGeneratorAndWriteFirstIrisAsRefMovie];
        v40 = *(v9 + 704);
        v49 = OUTLINED_FUNCTION_134_0(v41, v42, v43, v44, v45, v46, v47, v48, v65, v67, v69, v5, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, 0);
        if (v49)
        {
          v50 = v49;
          v51 = MEMORY[0];
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (MEMORY[0] != v51)
              {
                objc_enumerationMutation(v40);
              }

              [(BWQuickTimeMovieFileSinkNode *)v9 _writeIrisRefMovieWithInfo:?];
            }

            v50 = OUTLINED_FUNCTION_134_0(v53, v54, v55, v56, v57, v58, v59, v60, v66, v68, v70, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v104);
          }

          while (v50);
        }

        [*(v9 + 704) removeAllObjects];
        if (dword_1ED844250)
        {
          OUTLINED_FUNCTION_58_3();
          v61 = OUTLINED_FUNCTION_54_0();
          if (os_log_type_enabled(v61, v105))
          {
            v62 = v106;
          }

          else
          {
            v62 = v106 & 0xFFFFFFFE;
          }

          if (v62)
          {
            OUTLINED_FUNCTION_76();
            OUTLINED_FUNCTION_4_4();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_39_0();
        }

LABEL_64:
        *(v9 + 1792) = 0;
        [*(v9 + 1808) reset];
        v27 = 0;
        v24 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        if (!PathComponent)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }

LABEL_76:
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      goto LABEL_75;
    }
  }

  v27 = v30;
  OUTLINED_FUNCTION_1_5();
  FigDebugAssert3();
LABEL_71:
  [*(v9 + 1048) logErrorNumber:v27 errorString:@"starting recording"];
  v63 = *(v9 + v24[920]);
  if (v63)
  {
    CFRelease(v63);
    *(v9 + v24[920]) = 0;
  }

  bzero(*(v9 + 656), 4 * (*(v9 + 608) + *(v9 + 600)));
  v64 = *(v9 + 648);
  if (v64)
  {
    CFRelease(v64);
    *(v9 + 648) = 0;
  }

LABEL_75:
  OUTLINED_FUNCTION_81();
}

- (void)_generateThumbnailSurfaceFromPixelBuffer:(char)buffer physicallyMirroredHorizontallyUpstream:
{
  if (self)
  {
    v6 = [objc_msgSend(self "inputs")];
    v7 = [objc_msgSend(v6 "format")];
    v8 = [objc_msgSend(v6 "format")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      videoRotationDegrees = [*(self + 448) videoRotationDegrees];
    }

    else
    {
      videoRotationDegrees = 0;
    }

    CFRetain(a2);
    v10 = *(self + 616);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __112__BWQuickTimeMovieFileSinkNode__generateThumbnailSurfaceFromPixelBuffer_physicallyMirroredHorizontallyUpstream___block_invoke;
    v11[3] = &unk_1E7991068;
    v11[4] = self;
    v11[5] = a2;
    bufferCopy = buffer;
    v12 = videoRotationDegrees;
    v13 = v7;
    v14 = v8;
    dispatch_async(v10, v11);
  }
}

- (uint64_t)_verifyMovieTiming:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_54();
  if (v4)
  {
    [v2 stillImageCaptureTime];
    [v2 movieEndTime];
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      [v2 stillImageCaptureTime];
      [v2 movieStartTime];
      goto LABEL_7;
    }
  }

  else
  {
    OUTLINED_FUNCTION_113_1();
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      OUTLINED_FUNCTION_113_1();
LABEL_7:
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        return 0;
      }
    }
  }

  if ([v2 isMomentCaptureMovieRecording])
  {
    v11 = 0;
    v10 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v10);
    OUTLINED_FUNCTION_4_0();
    if (v3)
    {
      [v1 name];
      [objc_msgSend(OUTLINED_FUNCTION_106_0() "settings")];
      LODWORD(time2.value) = 136315906;
      *(&time2.value + 4) = "[BWQuickTimeMovieFileSinkNode _verifyMovieTiming:]";
      OUTLINED_FUNCTION_20_6();
      v8 = v6;
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_39_4();
    return 0;
  }

  if ([objc_msgSend(v2 "stillImageRequestSettings")] && (objc_msgSend(v2, "isHardCut") & 1) != 0)
  {
    return 4294951862;
  }

  else
  {
    return 4294950346;
  }
}

- (uint64_t)_moveOrDeleteTemporaryIrisMovie:(char)movie recordingSucceeded:
{
  if (result)
  {
    result = [a2 temporaryMovieURL];
    if (result)
    {
      if (movie)
      {
        v6 = 0;
        return [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
      }

      else
      {
        [MEMORY[0x1E696AC08] defaultManager];
        [a2 temporaryMovieURL];
        v5 = OUTLINED_FUNCTION_79_1();

        return [v5 removeItemAtURL:? error:?];
      }
    }
  }

  return result;
}

- (unint64_t)_computeMotionAnalysisStatisticFromRange:(uint64_t)range calculation:
{
  if (result)
  {
    v4 = result;
    v18 = *a2;
    memset(&v17, 0, sizeof(v17));
    lhs = *a2;
    v15 = *(a2 + 24);
    CMTimeAdd(&v17, &lhs, &v15);
    v5 = *(v4 + 888);
    lhs = v18;
    v15 = v17;
    v6 = [v5 retrieveInferencesForType:2001 beginning:&lhs until:&v15];
    result = [v6 count];
    if (result >= 2)
    {
      for (i = 1; i < result; ++i)
      {
        v8 = [v6 objectAtIndexedSubscript:i];
        v9 = [objc_msgSend(v8 "inferences")];
        [v8 inferences];
        getVCPCaptureAnalysisMotionDivScoreKey();
        v10 = [OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?];
        v11 = -1.0;
        v12 = -1.0;
        if (v9)
        {
          [v9 floatValue];
          v12 = v13;
        }

        if (v10)
        {
          [v10 floatValue];
          v11 = v14;
        }

        if (v8)
        {
          [v8 timestamp];
        }

        else
        {
          memset(&lhs, 0, sizeof(lhs));
        }

        (*(range + 16))(range, &lhs, v12, v11);
        result = [v6 count];
      }
    }
  }

  return result;
}

- (uint64_t)_writeStillImageTimeMetadataSampleForCaptureTime:(void *)time stillImageTransformData:(uint64_t)data referenceDimensions:(uint64_t)dimensions toTrackWithID:(int32_t)d usingTrackTimeScale:
{
  if (!self)
  {
    return 0;
  }

  lhs = *a2;
  v30 = 0;
  QuickTimeMovieStillImageTimeSampleBuffer = FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer(&lhs, time, data, d);
  if (!QuickTimeMovieStillImageTimeSampleBuffer)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v23 = 4294954586;
    [*(self + 1048) logErrorNumber:4294954586 errorString:@"writing still image metadata"];
    return v23;
  }

  v9 = QuickTimeMovieStillImageTimeSampleBuffer;
  v10 = *(self + 640);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v11)
  {
    v23 = 4294954514;
LABEL_11:
    OUTLINED_FUNCTION_1_8();
LABEL_12:
    FigDebugAssert3();
    [*(self + 1048) logErrorNumber:v23 errorString:@"writing still image metadata"];
    goto LABEL_13;
  }

  v12 = v11(v10, dimensions, v9);
  if (v12)
  {
    v23 = v12;
    goto LABEL_11;
  }

  memset(&v28, 0, sizeof(v28));
  CMSampleBufferGetPresentationTimeStamp(&v28, v9);
  memset(&v27, 0, sizeof(v27));
  CMSampleBufferGetDuration(&v27, v9);
  memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  lhs = v28;
  rhs = v27;
  CMTimeAdd(&__dst.presentationTimeStamp, &lhs, &rhs);
  __dst.decodeTimeStamp = __dst.presentationTimeStamp;
  OUTLINED_FUNCTION_2_5();
  v19 = CMSampleBufferCreate(v13, v14, v15, v16, v17, v18, 0, 1, &__dst, 0, 0, &v30);
  if (v19)
  {
    v23 = v19;
    OUTLINED_FUNCTION_1_5();
    goto LABEL_12;
  }

  if (v30)
  {
    CMSetAttachment(v30, *MEMORY[0x1E69604C8], *MEMORY[0x1E695E4D0], 1u);
    v20 = *(self + 640);
    v21 = v30;
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v22)
    {
      v23 = v22(v20, dimensions, v21);
      if (!v23)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v23 = 4294954514;
    }

    OUTLINED_FUNCTION_1_8();
    goto LABEL_12;
  }

  v23 = 0;
LABEL_13:
  CFRelease(v9);
  if (v30)
  {
    CFRelease(v30);
  }

  return v23;
}

- (void)_writeMovieSegmentMetadataForSegmentStartPTS:(uint64_t)s segmentDuration:
{
  if (self)
  {
    OUTLINED_FUNCTION_80();
    v18 = 0;
    v17 = 0;
    v6 = *MEMORY[0x1E695E480];
    if (!FigBoxedMetadataCreateForConstruction())
    {
      [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
      OUTLINED_FUNCTION_37_0();
      if (FigBoxedMetadataAppendCFTypedValue())
      {
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      if (!FigBoxedMetadataEndConstruction())
      {
        BlockBuffer = FigBoxedMetadataGetBlockBuffer();
        memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
        __dst.presentationTimeStamp = *v3;
        *&__dst.duration.value = *s;
        __dst.duration.epoch = *(s + 16);
        sampleSizeArray = CMBlockBufferGetDataLength(BlockBuffer);
        if (!CMSampleBufferCreate(v6, BlockBuffer, 1u, 0, 0, *(v4 + 1728), 1, 1, &__dst, 1, &sampleSizeArray, &v17))
        {
          [BWQuickTimeMovieFileSinkNode _printBufferEvent:v4 forNodeInputIndex:? eventName:?];
          v8 = *(v4 + 640);
          v9 = *(*(v4 + 656) + 4 * *(v4 + 1752));
          v10 = v17;
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v11 || v11(v8, v9, v10))
          {
            OUTLINED_FUNCTION_1_5();
            FigDebugAssert3();
          }

          else
          {
            v12 = *(v4 + 1752);
            v13 = *(v4 + 496) + 24 * v12;
            if ((*(v13 + 12) & 1) == 0)
            {
              v14 = *&v3->value;
              *(v13 + 16) = v3->epoch;
              *v13 = v14;
              v12 = *(v4 + 1752);
            }

            OUTLINED_FUNCTION_105_0((*(v4 + 504) + 24 * v12), *&v3->value);
          }
        }
      }
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }
}

- (uint64_t)_getCurrentFileSize:(CMTime *)size currentHostTime:
{
  if (!self)
  {
    return 0;
  }

  v5 = *(self + 216);
  valuePtr = v5;
  if ((a2 & 1) != 0 || (time1 = *(self + 392), time2 = *size, CMTimeCompare(&time1, &time2) <= 0))
  {
    number = 0;
    if (*(self + 640))
    {
      FigBaseObject = FigFormatWriterGetFigBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v7 || v7(FigBaseObject, *MEMORY[0x1E6971BD8], *MEMORY[0x1E695E480], &number))
      {
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      else
      {
        CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
        CFRelease(number);
      }
    }

    CMTimeMake(&time2, size->timescale / 3, size->timescale);
    lhs = *size;
    CMTimeAdd(&time1, &lhs, &time2);
    *(self + 392) = time1;
    return valuePtr;
  }

  return v5;
}

- (unsigned)_updateMovieFileMemoryAnalytics
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(result "graph")];
    [OUTLINED_FUNCTION_98_1() isIrisMovieRecording];
    [OUTLINED_FUNCTION_17() setQuickTakeVideo:?];
    if ([OUTLINED_FUNCTION_98_1() isIrisRecording])
    {
      v3 = [OUTLINED_FUNCTION_98_1() isIrisMovieRecording] ^ 1;
    }

    else
    {
      v3 = 0;
    }

    [v2 setLivePhoto:v3];
    [v2 setCinematicVideo:v1[1512]];
    v4 = *(v1 + 236);
    v5 = *(v1 + 237);
    if (v5 >= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    [v2 setVideoMinDimension:v6];
    OUTLINED_FUNCTION_91_1(424);
    [OUTLINED_FUNCTION_17() setVideoMaxFrameRate:?];
    [*(v1 + 138) hdrVideo];
    [OUTLINED_FUNCTION_17() setHdrVideo:?];
    [*(v1 + 138) colorSpace];
    [OUTLINED_FUNCTION_17() setColorSpace:?];
    v7 = OUTLINED_FUNCTION_98_1();
    qtmfsn_movieRecordingIsProRes(v7);
    [OUTLINED_FUNCTION_17() setProResVideo:?];
    v8 = [v2 videoRecordingCount] + 1;

    return [v2 setVideoRecordingCount:v8];
  }

  return result;
}

- (void)_updateTrackFormatDescriptionsAtURL:(void *)l
{
  if (!l)
  {
    return;
  }

  cf = 0;
  v4 = [objc_msgSend(objc_msgSend(a2 "pathExtension")];
  v5 = MEMORY[0x1E6971A10];
  if (!v4)
  {
    v5 = MEMORY[0x1E6971A18];
  }

  v6 = *v5;
  v7 = *MEMORY[0x1E695E480];
  if (FigMutableMovieCreateWithURL())
  {
    OUTLINED_FUNCTION_1_5();
LABEL_25:
    FigDebugAssert3();
    goto LABEL_26;
  }

  v26 = v6;
  v27 = a2;
  if (!l[75])
  {
LABEL_22:
    v21 = cf;
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v22 && !v22(v21, v26, v27, 0, 0))
    {
      goto LABEL_26;
    }

LABEL_24:
    OUTLINED_FUNCTION_1_5();
    goto LABEL_25;
  }

  v8 = 0;
  v9 = *MEMORY[0x1E69720A0];
  while (1)
  {
    v10 = *(l[86] + 8 * v8);
    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = *(l[82] + 4 * v8);
    theArray = 0;
    v12 = cf;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v13 || v13(v12, v11, v9, v7, &theArray))
    {
      goto LABEL_24;
    }

    if (!theArray)
    {
      goto LABEL_26;
    }

    Count = CFArrayGetCount(theArray);
    if (!Count)
    {
      break;
    }

    v15 = Count;
    if (Count >= 1)
    {
      for (i = 0; i != v15; ++i)
      {
        CFArrayGetValueAtIndex(theArray, i);
      }
    }

    v17 = cf;
    v28 = v10;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v19 || v19(v17, v11, v9, v18))
    {
      goto LABEL_24;
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    v20 = *(l[86] + 8 * v8);
    if (v20)
    {
      CFRelease(v20);
      *(l[86] + 8 * v8) = 0;
    }

LABEL_21:
    if (l[75] <= ++v8)
    {
      goto LABEL_22;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_26:
  if (cf)
  {
    FigBaseObject = FigMutableMovieGetFigBaseObject();
    if (FigBaseObject)
    {
      v24 = FigBaseObject;
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v25)
      {
        v25(v24);
      }
    }

    CFRelease(cf);
  }
}

- (__CFString)_computeMovieRecordingVideoSTFStatistics
{
  if (result)
  {
    v1 = result;
    result = [result[14].isa videoSTFEnabled];
    LOBYTE(v1[45].length) = result;
    if (LOBYTE(v1[45].length) == 1)
    {
      info_high = HIDWORD(v1[45].info);
      if (info_high >= 1)
      {
        *&v1[46].info = (SLODWORD(v1[45].info) / info_high) * 100.0;
        info_high = HIDWORD(v1[45].info);
      }

      if (SLODWORD(v1[45].info) < info_high)
      {
        data_low = LODWORD(v1[45].data);
        if (data_low >= 4)
        {
          result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", LODWORD(v1[45].data)];
        }

        else
        {
          result = off_1E7991178[data_low];
        }

        v1[46].isa = result;
      }
    }
  }

  return result;
}

- (void)_debugAudioUsingSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    OUTLINED_FUNCTION_54();
    if ((*(v3 + 786) & 1) == 0)
    {
      FormatDescription = CMSampleBufferGetFormatDescription(v2);
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
      if (StreamBasicDescription)
      {
        v6 = *&StreamBasicDescription->mBitsPerChannel;
        v7 = *&StreamBasicDescription->mBytesPerPacket;
        *(v1 + 800) = *&StreamBasicDescription->mSampleRate;
        *(v1 + 816) = v7;
        *(v1 + 832) = v6;
        *(v1 + 786) = 1;
        free(*(v1 + 840));
        *(v1 + 840) = 0;
      }
    }

    if (*(v1 + 786) == 1 && *(v1 + 808) == 1819304813 && ((~*(v1 + 812) & 9) == 0 || (*(v1 + 812) & 0xC) == 12))
    {
      if (!*(v1 + 840))
      {
        v9 = malloc_type_calloc(1uLL, 16 * (*(v1 + 828) - 1) + 24, 0x10800404ACF7207uLL);
        *(v1 + 840) = v9;
        *v9 = *(v1 + 828);
        v10 = *(v1 + 840);
        if (*v10)
        {
          v11 = 0;
          v12 = 2;
          do
          {
            v10[v12] = 1;
            ++v11;
            v10 = *(v1 + 840);
            v12 += 4;
          }

          while (v11 < *v10);
        }
      }

      DataBuffer = CMSampleBufferGetDataBuffer(v2);
      v19 = 0;
      totalLengthOut = 0;
      if (!CMBlockBufferGetDataPointer(DataBuffer, 0, 0, &totalLengthOut, &v19))
      {
        v14 = *(v1 + 840);
        if (*v14)
        {
          v15 = 0;
          v16 = 0;
          v17 = v19;
          v18 = totalLengthOut / *v14;
          do
          {
            v14[v15 + 3] = v18;
            *(*(v1 + 840) + v15 * 4 + 16) = v17;
            v17 = &v19[v18];
            v19 += v18;
            ++v16;
            v14 = *(v1 + 840);
            v15 += 4;
          }

          while (v16 < *v14);
        }
      }
    }
  }
}

- (void)_preprocessingForFirstVideoBuffer:(uint64_t)buffer forInputIndex:
{
  if (!self)
  {
LABEL_19:
    OUTLINED_FUNCTION_128_0();
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = *(self + 448);
  if (!v6)
  {
LABEL_12:
    v24 = 0;
    goto LABEL_13;
  }

  v7 = OUTLINED_FUNCTION_47_1();
  v10 = CMGetAttachment(v7, v8, v9);
  v11 = [v10 objectForKeyedSubscript:*off_1E798B540];
  v12 = 1;
  if (([v11 isEqualToString:*off_1E798A0E0] & 1) == 0)
  {
    v12 = [v11 isEqualToString:*off_1E798A0F8];
  }

  IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B238), "integerValue"}]);
  bzero((self + 1112), 0xD0uLL);
  [*(self + 1320) removeAllObjects];
  [*(self + 1328) removeAllObjects];
  *(self + 1368) = mach_absolute_time();
  *(self + 1344) = 0;
  *(self + 1352) = 0;
  *(self + 1360) = 0;
  *(self + 1376) = -1;
  *(self + 1384) = 0;
  *(self + 1388) = 0;
  [*(self + 1416) removeAllObjects];
  [*(self + 1424) removeAllObjects];
  [*(self + 1416) setObject:*(self + 1424) forKeyedSubscript:0x1F21AA170];
  v14 = [v10 objectForKeyedSubscript:0x1F21AA110];
  [*(self + 1416) setObject:objc_msgSend(v14 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F21AA150), 0x1F21AA150}];
  *(self + 1432) = [objc_msgSend(v14 objectForKeyedSubscript:{0x1F21AA130), "intValue"}];
  *(self + 1452) = 0;
  *(self + 1448) = 0;
  *(self + 1456) = 3;
  *(self + 1464) = 0u;
  *(self + 1480) = 0u;
  *(self + 1496) = 0u;
  *(self + 1552) = 0u;
  *(self + 1568) = 0u;
  *(self + 1584) = 0u;
  *(self + 1600) = 0u;
  *(self + 1616) = 0u;
  *(self + 1548) = 0;
  [*(self + 1688) reset];
  *(self + 1696) = 0;
  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
  [OUTLINED_FUNCTION_48_4() setHeight:?];
  [OUTLINED_FUNCTION_48_4() setWidth:Dimensions];
  *(self + 944) = Dimensions;
  v17 = OUTLINED_FUNCTION_47_1();
  [CMGetAttachment(v17 v18];
  [OUTLINED_FUNCTION_48_4() setStartingUIZoom:?];
  [OUTLINED_FUNCTION_48_4() setDevicePosition:?];
  Dimensions.width = [v6 videoRotationDegrees];
  videoMirrored = [v6 videoMirrored];
  [objc_msgSend(self "graph")];
  FigCaptureOrientationFromRotationDegrees(Dimensions.width, v12 & 1, IsExtensionDeviceType, videoMirrored);
  [OUTLINED_FUNCTION_36_6() setVideoOrientation:?];
  [v6 videoMirrored];
  [OUTLINED_FUNCTION_36_6() setVideoMirrored:?];
  v21 = [v10 objectForKeyedSubscript:*off_1E798B1D8];
  if (v21)
  {
    [v21 intValue];
    [OUTLINED_FUNCTION_36_6() setCameraPosture:?];
  }

  [OUTLINED_FUNCTION_48_4() setClientApplicationID:?];
  v22 = OUTLINED_FUNCTION_70();
  v24 = [(BWQuickTimeMovieFileSinkNode *)v22 _setTrackMatrixProperty:v23 forInputIndex:buffer fileSettings:v6 metadata:v10];
  v25 = CMGetAttachment(a2, @"FileCompletionScaledThumbnailSourcePixelBuffer", 0);
  if (v25)
  {
    v32 = v25;
    [objc_msgSend(v10 objectForKeyedSubscript:{@"MirroredHorizontal", "BOOLValue"}];
    v33 = OUTLINED_FUNCTION_17();
    [(BWQuickTimeMovieFileSinkNode *)v33 _generateThumbnailSurfaceFromPixelBuffer:v32 physicallyMirroredHorizontallyUpstream:v34];
    BWPixelBufferIsHDR(v32);
    [OUTLINED_FUNCTION_36_6() setHdrVideo:?];
    BWPixelBufferColorSpace(v32);
    [OUTLINED_FUNCTION_36_6() setColorSpace:?];
  }

  CMSetAttachment(a2, @"FileCompletionScaledThumbnailSourcePixelBuffer", 0, 1u);
LABEL_13:

  *(self + 1392) = 0;
  *(self + 1400) = 0;
  if ([v6 isIrisRecording])
  {
    v26 = objc_alloc_init(BWStats);
    *(self + 1016) = v26;
    [(BWStats *)v26 setMultiplier:0.000001];
    [*(self + 1016) setUnitDesignator:@"ms"];
    v27 = [[BWMovingWindowStats alloc] initWithWindowSize:128];
    *(self + 1024) = v27;
    [(BWStats *)v27 setMultiplier:0.000001];
    [OUTLINED_FUNCTION_123(1024) setUnitDesignator:?];
    v28 = [[BWMedianStats alloc] initWithMaxNumberOfSamplesForMedianCalculation:0];
    *(self + 1392) = v28;
    [(BWStats *)v28 setMultiplier:1000.0];
    [OUTLINED_FUNCTION_123(1392) setUnitDesignator:?];
  }

  v29 = objc_alloc_init(BWStats);
  *(self + 1032) = v29;
  [(BWStats *)v29 setMultiplier:0.000001];
  [*(self + 1032) setUnitDesignator:@"ms"];
  if (!v24)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_128_0();

  [v30 logErrorNumber:? errorString:?];
}

- (uint64_t)_setTrackMatrixProperty:(uint64_t)property forInputIndex:(void *)index fileSettings:(void *)settings metadata:
{
  if (!self)
  {
    return 0;
  }

  v10 = [settings objectForKeyedSubscript:*off_1E798B540];
  v11 = ([v10 isEqualToString:*off_1E798A0E0] & 1) != 0 ? 1 : objc_msgSend(v10, "isEqualToString:", *off_1E798A0F8);
  IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([objc_msgSend(settings objectForKeyedSubscript:{*off_1E798B238), "integerValue"}]);
  v13 = [objc_msgSend(settings objectForKeyedSubscript:{@"MirroredHorizontal", "BOOLValue"}];
  v14 = (v13 & 1) != 0 ? 0 : [index videoMirrored];
  videoRotationDegrees = [index videoRotationDegrees];
  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
  [objc_msgSend(self "graph")];
  v18 = BWBuildVideoTrackMatrix(videoRotationDegrees, v14, v13, v11, IsExtensionDeviceType, 0, Dimensions);
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  v20 = self[80];
  v21 = *(self[82] + 4 * property);
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v22)
  {
    v23 = 4294954514;
LABEL_13:
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
    return v23;
  }

  v23 = v22(v20, v21, *MEMORY[0x1E6971E20], v19);
  if (v23)
  {
    goto LABEL_13;
  }

  return v23;
}

- (uint64_t)_preprocessingForFirstAuxiliaryBuffer:(uint64_t)result forInputIndex:
{
  if (result)
  {
    OUTLINED_FUNCTION_78_2();
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v3 = *(v1 + 448);
      if (v3)
      {
        v4 = OUTLINED_FUNCTION_47_1();
        CMGetAttachment(v4, v5, v6);
        v7 = OUTLINED_FUNCTION_70();
        result = [(BWQuickTimeMovieFileSinkNode *)v7 _setTrackMatrixProperty:v8 forInputIndex:v2 fileSettings:v3 metadata:v9];
        if (result)
        {
          v10 = result;
          v11 = *(v1 + 1048);

          return [v11 logErrorNumber:v10 errorString:@"preprocess auxiliary"];
        }
      }
    }
  }

  return result;
}

- (uint64_t)_preprocessingForFirstAudioBuffer:(uint64_t)buffer forInputIndex:
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
  if (!StreamBasicDescription || (v7 = StreamBasicDescription->mSampleRate + 0.5, v8 = v7, !v8))
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v11 = 0xFFFFFFFFLL;
LABEL_20:
    v14 = *(v4 + 1048);

    return [v14 logErrorNumber:v11 errorString:@"preprocess audio"];
  }

  [MEMORY[0x1E696AD98] numberWithInt:v7];
  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    v11 = 4294954514;
LABEL_8:
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_2_5();
    result = FigDebugAssert3();
    goto LABEL_9;
  }

  v9 = OUTLINED_FUNCTION_101_0();
  result = v10(v9);
  v11 = result;
  if (result)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (*(*(v4 + 656) + 4 * *(v4 + 1752)) && !*(v4 + 1740))
  {
    [MEMORY[0x1E696AD98] numberWithInt:v8];
    if (*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v12 = OUTLINED_FUNCTION_101_0();
      result = v13(v12);
      v11 = result;
      if (!result)
      {
LABEL_16:
        *(v4 + 1740) = v8;
        goto LABEL_17;
      }
    }

    else
    {
      v11 = 4294954514;
    }

    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_2_5();
    result = FigDebugAssert3();
    goto LABEL_16;
  }

LABEL_17:
  if (*(v4 + 752) == buffer)
  {
    *(v4 + 416) = v8;
  }

  if (v11)
  {
    goto LABEL_20;
  }

  return result;
}

- (void)_preprocessingForFirstMetadataBuffer:(uint64_t)buffer forInputIndex:
{
  if (result)
  {
    v3 = result;
    if (!*(result[86] + 8 * buffer))
    {
      v4 = result[80];
      v5 = *(result[82] + 4 * buffer);
      FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&FormatDescription count:1];
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v7)
      {
        result = v7(v4, v5, *MEMORY[0x1E6971D18], v6);
        if (!result)
        {
          return result;
        }

        v8 = result;
      }

      else
      {
        v8 = 4294954514;
      }

      OUTLINED_FUNCTION_1_8();
      LODWORD(v9) = v8;
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
      return [v3[131] logErrorNumber:v8 errorString:{@"preprocess metadata", v9}];
    }
  }

  return result;
}

- (uint64_t)_checkFreeSpaceForEstimatedMovieSizeOverhead:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    SInt64 = BWGetFreeDiskSpaceAtPath(*(v2 + 464));
    if (*(v1 + 1704) && [*(v1 + 448) usesVirtualCaptureCard])
    {
      cf = 0;
      CMBaseObject = FigVirtualCaptureCardGetCMBaseObject();
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v5 || v5(CMBaseObject, *MEMORY[0x1E6963388], 0, &cf))
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        SInt64 = 0;
      }

      else
      {
        SInt64 = FigCFNumberGetSInt64();
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v6 = OUTLINED_FUNCTION_44();
    if (SInt64 <= [BWQuickTimeMovieFileSinkNode _adjustedMinFreeDiskSpaceLimitForEstimatedMovieSizeOverhead:v6])
    {
      return 4294950885;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)_adjustedMinFreeDiskSpaceLimitForEstimatedMovieSizeOverhead:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    numberOfPendingReferenceMovies = [*(v3 + 712) numberOfPendingReferenceMovies];
    if (qword_1ED844EC0 != -1)
    {
      dispatch_once(&qword_1ED844EC0, &__block_literal_global_635);
    }

    v5 = _MergedGlobals_2 + 10485760 * numberOfPendingReferenceMovies;
    if (*(v2 + 256))
    {
      v6 = *(v2 + 256);
    }

    else
    {
      v6 = _MergedGlobals_2 + 10485760 * numberOfPendingReferenceMovies;
    }

    if (v6 > v5)
    {
      v5 = v6;
    }

    return v5 + v1;
  }

  return result;
}

- (void)_writeVideoTrackLevelMetadataForSampleBuffer:(uint64_t)buffer inputIndex:
{
  if (self)
  {
    v7 = OUTLINED_FUNCTION_47_1();
    v138 = CMGetAttachment(v7, v8, v9);
    v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
    v11 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v13 = Mutable;
      bufferCopy = buffer;
      v14 = FigCaptureMetadataUtilitiesLensModelString(a2);
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = @"Unknown";
      }

      v17 = OUTLINED_FUNCTION_136(v14, v15, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v141 = *MEMORY[0x1E6971F48];
      CFDictionarySetValue(v17, *MEMORY[0x1E6971F48], *MEMORY[0x1E6973578]);
      v18 = *MEMORY[0x1E6971F40];
      CFDictionarySetValue(v17, *MEMORY[0x1E6971F40], *MEMORY[0x1E6973518]);
      key = *MEMORY[0x1E6971F58];
      CFDictionarySetValue(v17, *MEMORY[0x1E6971F58], v10);
      v19 = *MEMORY[0x1E6971F80];
      CFDictionarySetValue(v17, *MEMORY[0x1E6971F80], v16);
      CFArrayAppendValue(v13, v17);
      if (v17)
      {
        CFRelease(v17);
      }

      v20 = [objc_msgSend(v138 objectForKeyedSubscript:{*off_1E798B2D8), "doubleValue"}];
      LODWORD(v23) = llround(v22);
      if (v23 < 1)
      {
        v24 = @"Unknown";
      }

      else
      {
        v121 = v23;
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d"];
        v24 = v20;
      }

      v25 = OUTLINED_FUNCTION_136(v20, v21, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      OUTLINED_FUNCTION_90_0(v25, v26, v27, v28, v29, v30, v31, v32, v121, v124, v3, self, bufferCopy, key, v138, v141);
      CFDictionarySetValue(v25, v18, *MEMORY[0x1E6973500]);
      CFDictionarySetValue(v25, keya, v10);
      CFDictionarySetValue(v25, v19, v24);
      CFArrayAppendValue(v13, v25);
      if (v25)
      {
        CFRelease(v25);
      }

      v33 = [objc_msgSend(v139 objectForKeyedSubscript:{*off_1E798B2D0), "doubleValue"}];
      v35 = v34;
      v37 = OUTLINED_FUNCTION_136(v33, v36, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      OUTLINED_FUNCTION_90_0(v37, v38, v39, v40, v41, v42, v43, v44, v122, v125, v127, v129, v132, keya, v139, v142);
      CFDictionarySetValue(v37, v18, *MEMORY[0x1E6973510]);
      v45 = v10;
      CFDictionarySetValue(v37, keyb, v10);
      v123 = v35;
      [MEMORY[0x1E696AEC0] stringWithFormat:@"F%.2f"];
      v46 = OUTLINED_FUNCTION_37_0();
      CFDictionarySetValue(v46, v19, v47);
      CFArrayAppendValue(v13, v37);
      if (v37)
      {
        CFRelease(v37);
      }

      if (FigCaptureMetadataUtilitiesGetCameraForSampleBuffer(a2))
      {
        v48 = OUTLINED_FUNCTION_65_1();
        v52 = CFDictionaryCreateMutable(v48, v49, v50, v51);
        OUTLINED_FUNCTION_90_0(v52, v53, v54, v55, v56, v57, v58, v59, v35, v126, v128, v130, v133, keyb, v140, v143);
        CFDictionarySetValue(v52, v18, @"com.apple.quicktime.apple-maker-note.74");
        v60 = OUTLINED_FUNCTION_65_1();
        v63 = CFNumberCreate(v60, v61, v62);
        v64 = OUTLINED_FUNCTION_45_0();
        CFDictionarySetValue(v64, v65, v63);
        CFRelease(v63);
        CFArrayAppendValue(v13, v52);
        if (v52)
        {
          CFRelease(v52);
        }
      }

      v144 = 0;
      if (FigCaptureWritePackedValueForModuleAndCalibrationValidationStatusesFromMetadata(v140, &v144))
      {
        v66 = OUTLINED_FUNCTION_65_1();
        v70 = CFDictionaryCreateMutable(v66, v67, v68, v69);
        OUTLINED_FUNCTION_90_0(v70, v71, v72, v73, v74, v75, v76, v77, v123, v126, v128, v130, v133, keyb, v140, v143);
        CFDictionarySetValue(v70, v18, @"com.apple.quicktime.apple-maker-note.91");
        v78 = OUTLINED_FUNCTION_65_1();
        v81 = CFNumberCreate(v78, v79, v80);
        v82 = OUTLINED_FUNCTION_45_0();
        CFDictionarySetValue(v82, v83, v81);
        CFRelease(v81);
        CFArrayAppendValue(v13, v70);
        if (v70)
        {
          CFRelease(v70);
        }
      }

      if (FigCaptureNominalFocalLengthIn35mmFilmForPortType([v140 objectForKeyedSubscript:*off_1E798B540]) >= 1)
      {
        v84 = OUTLINED_FUNCTION_65_1();
        v88 = CFDictionaryCreateMutable(v84, v85, v86, v87);
        OUTLINED_FUNCTION_90_0(v88, v89, v90, v91, v92, v93, v94, v95, v123, v126, v128, v130, v133, keyb, v140, v143);
        CFDictionarySetValue(v88, v18, @"com.apple.quicktime.apple-maker-note.97");
        v96 = OUTLINED_FUNCTION_65_1();
        v99 = CFNumberCreate(v96, v97, v98);
        v100 = OUTLINED_FUNCTION_24_5();
        CFDictionarySetValue(v100, v101, v102);
        CFRelease(v99);
        CFArrayAppendValue(v13, v88);
        if (v88)
        {
          CFRelease(v88);
        }
      }

      v103 = v133;
      if (FigDebugIsInternalBuild())
      {
        StringAnswer = CMCaptureGestaltGetStringAnswer(0x1F217E3B0);
        if (StringAnswer)
        {
          v106 = StringAnswer;
          v107 = OUTLINED_FUNCTION_136(StringAnswer, v105, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          OUTLINED_FUNCTION_90_0(v107, v108, v109, v110, v111, v112, v113, v114, v123, v126, v128, v130, v133, keyb, v140, v143);
          CFDictionarySetValue(v107, v18, @"com.apple.quicktime.apple-maker-note.98");
          CFDictionarySetValue(v107, keyc, v45);
          v115 = OUTLINED_FUNCTION_45_0();
          CFDictionarySetValue(v115, v116, v106);
          CFArrayAppendValue(v13, v107);
          if (v107)
          {
            CFRelease(v107);
          }
        }
      }

      v117 = CFDictionaryCreateMutable(v11, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(v117, *MEMORY[0x1E6971F90], v13);
      CFRelease(v13);
      CFDictionaryAddValue(v117, *MEMORY[0x1E6971F88], *MEMORY[0x1E6971EE8]);
      v118 = *(v130 + 640);
      v119 = *(*(v130 + 656) + 4 * v103);
      v120 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v120 || v120(v118, v119, *MEMORY[0x1E6971D90], v117))
      {
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      CFRelease(v117);
    }
  }
}

- (uint64_t)_adjustMaxFileDurationForMovieTimeScale:(__n128 *)scale
{
  if (scale)
  {
    scale[49].n128_u8[0] = 0;
    v3 = &scale[23];
    CMTimeMakeWithSeconds(&time1, (0x7FFFFFFFFFFFFFFFLL / preferredTimescale) + -60.0, preferredTimescale);
    *v3 = time1;
    if ((scale[22].n128_u32[1] & 0x1D) == 1)
    {
      OUTLINED_FUNCTION_6_3(&scale[21].n128_i64[1]);
      v6 = *v4;
      if (CMTimeCompare(&time1, &v6) < 0)
      {
        OUTLINED_FUNCTION_34_2(scale + 23);
      }
    }
  }

  return 0;
}

- (void)_collectCoreAnalyticsData:(uint64_t)data
{
  if (!data)
  {
    return;
  }

  targeta = target;
  v3 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v4 = [v3 objectForKeyedSubscript:*off_1E798B540];
  if ([v4 isEqualToString:*off_1E798A0E0])
  {
    ++*(data + 1064);
  }

  v5 = off_1E798A0D8;
  if ([v4 isEqualToString:*off_1E798A0F8])
  {
    v6 = &OBJC_IVAR___BWQuickTimeMovieFileSinkNode__numVideoFramesPortTypeFront;
  }

  else if ([v4 isEqualToString:*off_1E798A0C0])
  {
    v6 = &OBJC_IVAR___BWQuickTimeMovieFileSinkNode__numVideoFramesPortTypeBack;
  }

  else if ([v4 isEqualToString:*off_1E798A0D8])
  {
    v6 = &OBJC_IVAR___BWQuickTimeMovieFileSinkNode__numVideoFramesPortTypeTelephoto;
  }

  else
  {
    if (![v4 isEqualToString:*off_1E798A0D0])
    {
      goto LABEL_13;
    }

    v6 = &OBJC_IVAR___BWQuickTimeMovieFileSinkNode__numVideoFramesPortTypeSuperWide;
  }

  ++*(data + *v6);
LABEL_13:
  v7 = [v3 objectForKeyedSubscript:*off_1E798B230];
  if (v7)
  {
    v8 = v7;
    OUTLINED_FUNCTION_21_8();
    [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798AD18), "floatValue"}];
    OUTLINED_FUNCTION_21_8();
    v12 = OUTLINED_FUNCTION_103_1(v10, v11);
    *v13 = v12;
    OUTLINED_FUNCTION_21_8();
    [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798AD20), "floatValue"}];
    OUTLINED_FUNCTION_21_8();
    v16 = OUTLINED_FUNCTION_103_1(v14, v15);
    *(v17 + 4) = v16;
    OUTLINED_FUNCTION_21_8();
    ++*(v18 + 116);
  }

  v19 = [v3 objectForKeyedSubscript:*off_1E798B6A0];
  v20 = [v3 objectForKeyedSubscript:*off_1E798B180];
  v269 = [v3 objectForKeyedSubscript:*off_1E798B6C8];
  v274 = [v3 objectForKeyedSubscript:*off_1E798B6D0];
  v21 = *off_1E798A0C0;
  if ([v4 isEqualToString:*off_1E798A0C0])
  {
    v270 = v4;
    v22 = v20;
    if (v19 && v20)
    {
      v5 = off_1E798C3F8;
      v23 = [v19 objectForKeyedSubscript:*off_1E798C3D8];
      if (v23)
      {
        v24 = v23;
        OUTLINED_FUNCTION_21_8();
        v26 = *(v25 + 8);
        [v27 floatValue];
        if (v26 <= OUTLINED_FUNCTION_14_11(v28))
        {
          [v24 floatValue];
          v31 = OUTLINED_FUNCTION_11_18(v54);
        }

        else
        {
          OUTLINED_FUNCTION_52_5();
          v31 = *(v30 + 8);
        }

        *(data + v29 + 8) = v31;
      }

      v55 = [v19 objectForKeyedSubscript:*off_1E798C428];
      if (v55)
      {
        [v55 floatValue];
        v57 = OUTLINED_FUNCTION_11_18(v56);
        *(data + v58 + 16) = *(data + v58 + 16) + (v57 * v57);
      }

      v59 = [v19 objectForKeyedSubscript:*off_1E798C3F8];
      if (v59)
      {
        v60 = v59;
        OUTLINED_FUNCTION_21_8();
        if (*(v61 + 120) && (v62 = *(v61 + 48), [v60 floatValue], v62 < OUTLINED_FUNCTION_14_11(v63)))
        {
          OUTLINED_FUNCTION_52_5();
          v66 = *(v65 + 48);
        }

        else
        {
          [v60 floatValue];
          v66 = OUTLINED_FUNCTION_11_18(v67);
        }

        *(data + v64 + 48) = v66;
      }

      v68 = [v19 objectForKeyedSubscript:*off_1E798C418];
      if (v68)
      {
        [v68 floatValue];
        OUTLINED_FUNCTION_21_8();
        *(v69 + 56) = v70 + *(v69 + 56);
      }

      v71 = [v19 objectForKeyedSubscript:*off_1E798C408];
      if (v71)
      {
        [v71 floatValue];
        v73 = v72;
        OUTLINED_FUNCTION_21_8();
        v75 = *(v74 + 64);
        if (v75 <= v73)
        {
          v75 = v73;
        }

        *(v74 + 64) = v75;
      }

      else
      {
        v73 = 0.0;
      }

      if ([objc_msgSend(v19 objectForKeyedSubscript:{*off_1E798C420), "BOOLValue"}])
      {
        OUTLINED_FUNCTION_21_8();
        ++*(v76 + 200);
      }

      v77 = [v20 objectForKeyedSubscript:*off_1E798AAC0];
      if (v77)
      {
        v78 = v77;
        OUTLINED_FUNCTION_21_8();
        v80 = *(v79 + 24);
        [v81 floatValue];
        if (v80 <= v82)
        {
          [v78 floatValue];
          v83 = 1112;
        }

        else
        {
          OUTLINED_FUNCTION_52_5();
          v85 = *(v84 + 24);
        }

        *(data + v83 + 24) = v85;
      }

      v22 = v20;
      v86 = [v20 objectForKeyedSubscript:*off_1E798AAF8];
      if (v86)
      {
        [v86 floatValue];
        OUTLINED_FUNCTION_21_8();
        *(v87 + 36) = *(v87 + 36) + (v88 * v88);
      }

      v89 = [v20 objectForKeyedSubscript:*off_1E798AAE0];
      if (v89)
      {
        [v89 floatValue];
        OUTLINED_FUNCTION_21_8();
        *(v90 + 76) = v91 + *(v90 + 76);
      }

      v92 = [v20 objectForKeyedSubscript:*off_1E798AAD0];
      if (v92)
      {
        [v92 floatValue];
        OUTLINED_FUNCTION_21_8();
        v95 = *(v93 + 88);
        if (v95 <= v94)
        {
          v95 = v94;
        }

        *(v93 + 88) = v95;
      }

      OUTLINED_FUNCTION_21_8();
      v98 = v73 + v97;
      if (*(v96 + 104) > v98)
      {
        v98 = *(v96 + 104);
      }

      *(v96 + 104) = v98;
      OUTLINED_FUNCTION_21_8();
      ++*(v99 + 120);
    }

    if (v274)
    {
      OUTLINED_FUNCTION_21_8();
      OUTLINED_FUNCTION_87_0(v100, v101, v269, v270, v274, targeta, v276, v277);
      OUTLINED_FUNCTION_97_2();
      v44 = v272;
      if (!v102)
      {
        OUTLINED_FUNCTION_26_4();
        *(v103 + 136) += v104;
        OUTLINED_FUNCTION_26_4();
        *(v105 + 140) += v106;
        OUTLINED_FUNCTION_26_4();
        *(v107 + 144) += v108;
        OUTLINED_FUNCTION_26_4();
        *(v109 + 148) += v110;
        OUTLINED_FUNCTION_26_4();
        *(v111 + 152) += v112;
        OUTLINED_FUNCTION_26_4();
        *(v113 + 160) += v114;
        OUTLINED_FUNCTION_26_4();
        *(v115 + 164) += v116;
      }
    }

    else
    {
      OUTLINED_FUNCTION_97_2();
      v44 = v270;
      if (v269)
      {
        OUTLINED_FUNCTION_21_8();
        OUTLINED_FUNCTION_88_0(v117, v118, v269, v270, 0, targeta, v276, v277);
        OUTLINED_FUNCTION_26_4();
        *(v119 + 136) += v120;
        OUTLINED_FUNCTION_26_4();
        *(v121 + 140) += v122;
        OUTLINED_FUNCTION_26_4();
        *(v123 + 144) += v124;
        OUTLINED_FUNCTION_26_4();
        *(v125 + 148) += v126;
        OUTLINED_FUNCTION_26_4();
        *(v127 + 152) += v128;
        OUTLINED_FUNCTION_26_4();
        *(v129 + 156) += v130;
      }
    }
  }

  else
  {
    v21 = *off_1E798A0D8;
    if (![v4 isEqualToString:*off_1E798A0D8])
    {
      v41 = *off_1E798A0D0;
      v42 = [v4 isEqualToString:*off_1E798A0D0];
      v43 = v4;
      v22 = v20;
      v44 = v43;
      if (!v42)
      {
        goto LABEL_117;
      }

      if (v22)
      {
        v45 = [v22 objectForKeyedSubscript:*off_1E798AAC0];
        if (v45)
        {
          v46 = v45;
          OUTLINED_FUNCTION_21_8();
          v48 = *(v47 + 32);
          [v49 floatValue];
          if (v48 <= v50)
          {
            [v46 floatValue];
            v51 = 1112;
          }

          else
          {
            OUTLINED_FUNCTION_52_5();
            v53 = *(v52 + 32);
          }

          *(data + v51 + 32) = v53;
        }

        v253 = [v22 objectForKeyedSubscript:*off_1E798AAF8];
        if (v253)
        {
          [v253 floatValue];
          OUTLINED_FUNCTION_21_8();
          *(v254 + 44) = *(v254 + 44) + (v255 * v255);
        }

        v256 = [v22 objectForKeyedSubscript:*off_1E798AAE0];
        if (v256)
        {
          [v256 floatValue];
          OUTLINED_FUNCTION_21_8();
          *(v257 + 84) = v258 + *(v257 + 84);
        }

        v259 = [v22 objectForKeyedSubscript:*off_1E798AAD0];
        if (v259)
        {
          v260 = v259;
          OUTLINED_FUNCTION_21_8();
          v262 = *(v261 + 96);
          [v263 floatValue];
          if (v262 <= v264)
          {
            [v260 floatValue];
            v265 = 1112;
          }

          else
          {
            OUTLINED_FUNCTION_52_5();
            v267 = *(v266 + 96);
          }

          *(data + v265 + 96) = v267;
        }

        OUTLINED_FUNCTION_21_8();
        ++*(v268 + 128);
      }

      if ([*(data + 1328) objectForKeyedSubscript:v41])
      {
        goto LABEL_117;
      }

      v208 = [v3 objectForKeyedSubscript:*off_1E798B190];
      v209 = *(data + 1328);
      v210 = v41;
      goto LABEL_116;
    }

    v271 = v4;
    v22 = v20;
    if (v19 && v20)
    {
      v32 = [v19 objectForKeyedSubscript:*off_1E798C3D8];
      if (v32)
      {
        v33 = v32;
        OUTLINED_FUNCTION_21_8();
        v35 = *(v34 + 12);
        [v36 floatValue];
        if (v35 <= OUTLINED_FUNCTION_14_11(v37))
        {
          [v33 floatValue];
          v40 = OUTLINED_FUNCTION_11_18(v131);
        }

        else
        {
          OUTLINED_FUNCTION_52_5();
          v40 = *(v39 + 12);
        }

        *(data + v38 + 12) = v40;
      }

      v132 = [v19 objectForKeyedSubscript:*off_1E798C428];
      if (v132)
      {
        [v132 floatValue];
        v134 = OUTLINED_FUNCTION_11_18(v133);
        *(data + v135 + 20) = *(data + v135 + 20) + (v134 * v134);
      }

      v136 = [v19 objectForKeyedSubscript:*off_1E798C3F8];
      if (v136)
      {
        v137 = v136;
        OUTLINED_FUNCTION_21_8();
        if (*(v138 + 124) && (v139 = *(v138 + 52), [v137 floatValue], v139 < OUTLINED_FUNCTION_14_11(v140)))
        {
          OUTLINED_FUNCTION_52_5();
          v143 = *(v142 + 52);
        }

        else
        {
          [v137 floatValue];
          v143 = OUTLINED_FUNCTION_11_18(v144);
        }

        *(data + v141 + 52) = v143;
      }

      v145 = [v19 objectForKeyedSubscript:*off_1E798C418];
      if (v145)
      {
        [v145 floatValue];
        OUTLINED_FUNCTION_21_8();
        *(v146 + 60) = v147 + *(v146 + 60);
      }

      v148 = [v19 objectForKeyedSubscript:*off_1E798C408];
      if (v148)
      {
        [v148 floatValue];
        v150 = v149;
        OUTLINED_FUNCTION_21_8();
        v152 = *(v151 + 68);
        if (v152 <= v150)
        {
          v152 = v150;
        }

        *(v151 + 68) = v152;
      }

      else
      {
        v150 = 0.0;
      }

      if ([objc_msgSend(v19 objectForKeyedSubscript:{*off_1E798C420), "BOOLValue"}])
      {
        OUTLINED_FUNCTION_21_8();
        ++*(v153 + 204);
      }

      v154 = [v20 objectForKeyedSubscript:*off_1E798AAC0];
      if (v154)
      {
        v155 = v154;
        OUTLINED_FUNCTION_21_8();
        v157 = *(v156 + 28);
        [v158 floatValue];
        if (v157 <= v159)
        {
          [v155 floatValue];
          v160 = 1112;
        }

        else
        {
          OUTLINED_FUNCTION_52_5();
          v162 = *(v161 + 28);
        }

        *(data + v160 + 28) = v162;
      }

      v22 = v20;
      v163 = [v20 objectForKeyedSubscript:*off_1E798AAF8];
      if (v163)
      {
        [v163 floatValue];
        OUTLINED_FUNCTION_21_8();
        *(v164 + 40) = *(v164 + 40) + (v165 * v165);
      }

      v166 = [v20 objectForKeyedSubscript:*off_1E798AAE0];
      if (v166)
      {
        [v166 floatValue];
        OUTLINED_FUNCTION_21_8();
        *(v167 + 80) = v168 + *(v167 + 80);
      }

      v169 = [v20 objectForKeyedSubscript:*off_1E798AAD0];
      if (v169)
      {
        [v169 floatValue];
        OUTLINED_FUNCTION_21_8();
        v172 = *(v170 + 92);
        if (v172 <= v171)
        {
          v172 = v171;
        }

        *(v170 + 92) = v172;
      }

      OUTLINED_FUNCTION_21_8();
      v175 = v150 + v174;
      if (*(v173 + 108) > v175)
      {
        v175 = *(v173 + 108);
      }

      *(v173 + 108) = v175;
      OUTLINED_FUNCTION_21_8();
      ++*(v176 + 124);
    }

    if (v274)
    {
      OUTLINED_FUNCTION_21_8();
      OUTLINED_FUNCTION_87_0(v177, v178, v269, v271, v274, targeta, v276, v277);
      OUTLINED_FUNCTION_97_2();
      v44 = v273;
      if (!v179)
      {
        OUTLINED_FUNCTION_26_4();
        *(v180 + 168) += v181;
        OUTLINED_FUNCTION_26_4();
        *(v182 + 172) += v183;
        OUTLINED_FUNCTION_26_4();
        *(v184 + 176) += v185;
        OUTLINED_FUNCTION_26_4();
        *(v186 + 180) += v187;
        OUTLINED_FUNCTION_26_4();
        *(v188 + 184) += v189;
        OUTLINED_FUNCTION_26_4();
        *(v190 + 192) += v191;
        OUTLINED_FUNCTION_26_4();
        *(v192 + 196) += v193;
      }
    }

    else
    {
      OUTLINED_FUNCTION_97_2();
      v44 = v271;
      if (v269)
      {
        OUTLINED_FUNCTION_21_8();
        OUTLINED_FUNCTION_88_0(v194, v195, v269, v271, 0, targeta, v276, v277);
        OUTLINED_FUNCTION_26_4();
        *(v196 + 168) += v197;
        OUTLINED_FUNCTION_26_4();
        *(v198 + 172) += v199;
        OUTLINED_FUNCTION_26_4();
        *(v200 + 176) += v201;
        OUTLINED_FUNCTION_26_4();
        *(v202 + 180) += v203;
        OUTLINED_FUNCTION_26_4();
        *(v204 + 184) += v205;
        OUTLINED_FUNCTION_26_4();
        *(v206 + 188) += v207;
      }
    }
  }

  if (![*(data + *(off_1E798C428 + 890)) objectForKeyedSubscript:v21])
  {
    [*(data + *(off_1E798C428 + 890)) setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B6B0), v21}];
  }

  if ([*(data + v5[891]) objectForKeyedSubscript:v21])
  {
    goto LABEL_117;
  }

  v208 = [v3 objectForKeyedSubscript:*off_1E798B190];
  v209 = *(data + v5[891]);
  v210 = v21;
LABEL_116:
  [v209 setObject:v208 forKeyedSubscript:v210];
LABEL_117:
  if (v19 && v22)
  {
    v211 = [v19 objectForKeyedSubscript:*off_1E798C410];
    v212 = 0.0;
    v213 = 0.0;
    if (v211)
    {
      [v211 floatValue];
      v213 = v214;
      OUTLINED_FUNCTION_21_8();
      v216 = *(v215 + 72);
      if (v216 <= v213)
      {
        v216 = v213;
      }

      *(v215 + 72) = v216;
    }

    v217 = [v22 objectForKeyedSubscript:*off_1E798AAD8];
    if (v217)
    {
      [v217 floatValue];
      v212 = v218;
      OUTLINED_FUNCTION_21_8();
      v220 = *(v219 + 100);
      if (v220 <= v212)
      {
        v220 = v212;
      }

      *(v219 + 100) = v220;
    }

    OUTLINED_FUNCTION_21_8();
    v222 = *(v221 + 112);
    if (v222 <= (v213 + v212))
    {
      v222 = v213 + v212;
    }

    *(v221 + 112) = v222;
  }

  v223 = [v3 objectForKeyedSubscript:0x1F21AA110];
  if (v223)
  {
    v224 = [v223 objectForKeyedSubscript:0x1F21AA130];
    if (v224)
    {
      intValue = [v224 intValue];
      if (intValue != *(data + 1432))
      {
        v226 = intValue;
        v227 = v44;
        [MEMORY[0x1E696AD98] numberWithInt:intValue];
        v228 = [OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?];
        if (v228)
        {
          v229 = [v228 intValue] + 1;
        }

        else
        {
          v229 = 1;
        }

        v230 = [MEMORY[0x1E696AD98] numberWithInt:v229];
        [*(data + 1424) setObject:v230 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v226)}];
        *(data + 1432) = v226;
        v44 = v227;
      }
    }
  }

  if ((*(data + 1336) & 1) == 0)
  {
    *(data + 1336) = [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798B178), "BOOLValue"}];
  }

  if (*(data + 1440))
  {
    v231 = CMGetAttachment(targeta, @"LastPortType", 0);
    if (v231)
    {
      v232 = v231;
      if (([v231 isEqualToString:v44] & 1) == 0)
      {
        if (!OUTLINED_FUNCTION_86_2())
        {
          [*(data + 1440) setObject:objc_alloc_init(MEMORY[0x1E695DF90]) forKeyedSubscript:v232];
        }

        v233 = v44;
        v234 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_86_2(), "objectForKeyedSubscript:", v44), "intValue") + 1}];
        [OUTLINED_FUNCTION_86_2() setObject:v234 forKeyedSubscript:v233];
      }
    }
  }

  if ([*(data + 448) videoSTFEnabled])
  {
    [(BWQuickTimeMovieFileSinkNode *)data _collectVideoSTFAnalyticsFromSbuf:?];
  }

  v235 = OUTLINED_FUNCTION_112_2();
  if (CMGetAttachment(v235, v236, 0))
  {
    [BWQuickTimeMovieFileSinkNode _collectVideoStabilizationAnalyticsFromDictionary:data];
    v249 = OUTLINED_FUNCTION_112_2();
    CMRemoveAttachment(v249, v250);
  }

  v237 = OUTLINED_FUNCTION_112_2();
  v239 = CMGetAttachment(v237, v238, 0);
  if (v239)
  {
    [(BWQuickTimeMovieFileSinkNode *)data _collectVideoDeghostingStatisticsFromDictionary:v239];
    v251 = OUTLINED_FUNCTION_112_2();
    CMRemoveAttachment(v251, v252);
  }

  if ((*(data + 1408) & 1) == 0)
  {
    v240 = [v3 objectForKeyedSubscript:*off_1E798A590];
    if (v240)
    {
      v241 = v240;
      v242 = [v240 objectForKeyedSubscript:@"RearCameraAssembly"];
      if (v242)
      {
        [v242 intValue];
        [OUTLINED_FUNCTION_35_5() setCoreRepairStatusRearCameraAssembly:?];
      }

      v243 = [v241 objectForKeyedSubscript:@"FrontCameraAssembly"];
      if (v243)
      {
        [v243 intValue];
        [OUTLINED_FUNCTION_35_5() setCoreRepairStatusFrontCameraAssembly:?];
      }
    }

    v244 = [v3 objectForKeyedSubscript:*off_1E798A558];
    if (v244)
    {
      v245 = v244;
      v246 = [v244 objectForKeyedSubscript:0x1F21ADBD0];
      if (v246)
      {
        [v246 intValue];
        [OUTLINED_FUNCTION_35_5() setCalibrationValidationStatusCmCl:?];
      }

      v247 = [v245 objectForKeyedSubscript:@"CmPMValidationStatus"];
      if (v247)
      {
        [v247 intValue];
        [OUTLINED_FUNCTION_35_5() setCalibrationValidationStatusCmPM:?];
      }

      v248 = [v245 objectForKeyedSubscript:@"FCClValidationStatus"];
      if (v248)
      {
        [v248 intValue];
        [OUTLINED_FUNCTION_35_5() setCalibrationValidationStatusFCCl:?];
      }
    }

    OUTLINED_FUNCTION_21_4(1408);
  }
}

- (void)_forceEarlyTerminationWithErrorCode:(unint64_t)code
{
  if (code)
  {
    if (dword_1ED844250)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_4_0();
      if (v2)
      {
        [code name];
        OUTLINED_FUNCTION_71_1();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
    }

    *(code + 632) = 0;
    [(BWQuickTimeMovieFileSinkNode *)code _doEndRecordingAtTime:a2 earlyTerminationErrCode:?];
    [*(code + 1048) resetCurrentLoggingCounter];

    *(code + 448) = 0;
    *(code + 456) = 0;
    [(BWQuickTimeMovieFileSinkNode *)code _clearProvidedTrackFormatDescriptions];
  }
}

- (void)_collectVideoSTFAnalyticsFromSbuf:(_DWORD *)sbuf
{
  if (sbuf)
  {
    if (target)
    {
      ++sbuf[363];
      v3 = CMGetAttachment(target, *off_1E798D480, 0);
      if (v3)
      {
        v4 = v3;
        OUTLINED_FUNCTION_53_4();
        if (!*(v5 + 24))
        {
          [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798CE30), "intValue"}];
          OUTLINED_FUNCTION_53_4();
          *(v7 + 24) = v6;
        }

        if (sbuf[364] == 3)
        {
          sbuf[364] = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798CE38), "longValue"}];
        }

        if ([objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798CE50), "BOOLValue"}])
        {
          ++sbuf[362];
          switch([objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798CE48), "intValue"}])
          {
            case 0u:
              OUTLINED_FUNCTION_53_4();
              ++*(v8 + 28);
              break;
            case 1u:
              OUTLINED_FUNCTION_53_4();
              ++*(v12 + 32);
              break;
            case 2u:
              OUTLINED_FUNCTION_53_4();
              ++*(v10 + 36);
              break;
            case 3u:
              OUTLINED_FUNCTION_53_4();
              ++*(v11 + 40);
              break;
            case 4u:
              OUTLINED_FUNCTION_53_4();
              ++*(v9 + 44);
              break;
            default:
              break;
          }

          [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798CE40), "floatValue"}];
          OUTLINED_FUNCTION_53_4();
          if (*(v13 + 20) < v14)
          {
            *(v13 + 20) = v14;
          }
        }
      }
    }
  }
}

- (void)_collectVideoStabilizationAnalyticsFromDictionary:(uint64_t)dictionary
{
  if (dictionary)
  {
    OUTLINED_FUNCTION_84();
    v3 = v2;
    if (v2)
    {
      v4 = v1;
      [*(v1 + 1688) setAverageLuxValue:{objc_msgSend(objc_msgSend(v2, "objectForKeyedSubscript:", *off_1E798CE78), "intValue")}];
      [*(v4 + 1688) setVideoType:{objc_msgSend(v3, "objectForKeyedSubscript:", *off_1E798CEA8)}];
      v5 = [v3 objectForKeyedSubscript:*off_1E798CEA0];
      if (v5)
      {
        [*(v4 + 1688) setSigmaHistogram:v5];
        v6 = [v3 objectForKeyedSubscript:*off_1E798CE80];
        if (v6)
        {
          v7 = v6;
          if ([v6 count])
          {
            v8 = 0;
            v9 = *off_1E798CE90;
            v10 = *off_1E798CE98;
            v11 = *off_1E798CE88;
            while (1)
            {
              v12 = [v7 objectAtIndex:v8];
              if (!v12)
              {
                break;
              }

              v13 = v12;
              v14 = [objc_msgSend(v12 objectForKeyedSubscript:{v9), "intValue"}];
              v15 = [objc_msgSend(v13 objectForKeyedSubscript:{v10), "intValue"}];
              v16 = [v13 objectForKeyedSubscript:v11];
              if (!v16)
              {
                break;
              }

              [*(v4 + 1688) setOverscanHistogram:off_1E79910D8[v14] BinningFactor:v15 Histogram:v16];
              if ([v7 count] <= ++v8)
              {
                goto LABEL_10;
              }
            }
          }

          else
          {
LABEL_10:
            if ([v7 count])
            {
              OUTLINED_FUNCTION_21_4(1696);
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_81();
  }
}

- (void)_collectVideoDeghostingStatisticsFromDictionary:(uint64_t)dictionary
{
  if (dictionary)
  {
    if (a2)
    {
      *(dictionary + 1552) = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CDB0), "BOOLValue"}];
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CE28), "intValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v4 + 4) = v3;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CDA8), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v5 + 16) = v6;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CDA0), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v7 + 8) = v8;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CE10), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v9 + 24) = v10;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CE18), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v11 + 28) = v12;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CE20), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v13 + 32) = v14;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CE08), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v15 + 36) = v16;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CDB8), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v17 + 40) = v18;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CDC0), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v19 + 44) = v20;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CDC8), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v21 + 48) = v22;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CDD0), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v23 + 52) = v24;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CDD8), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v25 + 56) = v26;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CDE0), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v27 + 60) = v28;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CDE8), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v29 + 64) = v30;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CDF0), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v31 + 68) = v32;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CDF8), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v33 + 72) = v34;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798CE00), "floatValue"}];
      OUTLINED_FUNCTION_33_7();
      *(v35 + 76) = v36;
      OUTLINED_FUNCTION_21_4(1548);
    }
  }
}

- (uint64_t)_driveStateMachineWithStartMarkerBuffer:(uint64_t)buffer forInputIndex:(void *)index inputStagingQueue:(int)queue sampleBufferAlreadyAtHeadOfQueue:
{
  if (!self || !v6 & v5)
  {
    return 0;
  }

  switch(*(self + 632))
  {
    case 0:
      *(self + 632) = 3;
      [*(self + 1048) resetCurrentLoggingCounter];
      v14 = OUTLINED_FUNCTION_69();
      v17 = CMGetAttachment(v14, v15, v16);
      if (v17)
      {
        *(self + 456) = [v17 settingsID];
      }

      goto LABEL_16;
    case 1:
    case 2:
      v12 = OUTLINED_FUNCTION_3_19();
      [BWQuickTimeMovieFileSinkNode _printBufferEvent:v12 forNodeInputIndex:? eventName:?];
      if (queue)
      {
        goto LABEL_10;
      }

      return 0;
    case 3:
LABEL_16:
      *(self + 920) = 0;
      *(self + 1656) = *(self + 1652) ^ 1;
      *(self + 1660) = 0;
      *(self + 1664) = 0;
      *(self + 1668) = 0;
      if ((queue & 1) == 0)
      {
        OUTLINED_FUNCTION_137();
      }

      v18 = OUTLINED_FUNCTION_3_19();
      [BWQuickTimeMovieFileSinkNode _printBufferEvent:v18 forNodeInputIndex:? eventName:?];
      recordingStatusDelegate = [self recordingStatusDelegate];
      v95 = 0;
      v96 = 0;
      v93 = 0;
      v94 = 0;
      v91 = 0;
      v92 = 0;
      [(BWQuickTimeMovieFileSinkNode *)self _findStartMarkersWithMatchedStagedSetting:&v95 sensorVideoPort:&v94 captureDeviceType:&v91];
      v8 = BYTE4(v92) & 1;
      v21 = v95;
      v20 = v96;
      v22 = v94;
      if ((v92 & 0x100000000) == 0)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_116_2();
      OUTLINED_FUNCTION_12_0();
      [BWQuickTimeMovieFileSinkNode _doStartRecordingAtTime:withSettings:sensorVideoPort:captureDeviceType:];
      if (v23)
      {
        *(self + 632) = 0;
        [*(self + 1048) resetCurrentLoggingCounter];
        if (recordingStatusDelegate)
        {
          v57 = v20;
          [recordingStatusDelegate fileWriter:self writerPipelineIndex:*(self + 992) stoppedRecordingSampleDataForSettingsID:{objc_msgSend(v20, "settingsID")}];
          v24 = *(self + 696);
          if (v24)
          {
            [v24 setMasterMovieURL:0];
            [*(self + 696) settings];
            OUTLINED_FUNCTION_49_3();
            OUTLINED_FUNCTION_125();
            [v25 fileWriter:? writerPipelineIndex:? stoppedRecordingForSettings:? withError:? thumbnailSurface:? irisMovieInfo:? debugMetadataSidecarFileURL:? recordingSucceeded:?];

            *(self + 696) = 0;
          }

          else
          {
            v26 = [*(self + 704) count];
            if (!v26)
            {
              OUTLINED_FUNCTION_49_3();
              OUTLINED_FUNCTION_125();
              [v48 fileWriter:? writerPipelineIndex:? stoppedRecordingForSettings:? withError:? thumbnailSurface:? irisMovieInfo:? debugMetadataSidecarFileURL:? recordingSucceeded:?];
              goto LABEL_36;
            }

            v34 = *(self + 704);
            v35 = OUTLINED_FUNCTION_132(v26, v27, v28, v29, v30, v31, v32, v33, v49, v51, v53, v21, v22, v20, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, 0);
            if (v35)
            {
              v36 = v35;
              v37 = MEMORY[0];
              do
              {
                for (i = 0; i != v36; ++i)
                {
                  if (MEMORY[0] != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  [*(8 * i) settings];
                  OUTLINED_FUNCTION_49_3();
                  OUTLINED_FUNCTION_125();
                  v40 = [v39 fileWriter:? writerPipelineIndex:? stoppedRecordingForSettings:? withError:? thumbnailSurface:? irisMovieInfo:? debugMetadataSidecarFileURL:? recordingSucceeded:?];
                }

                v36 = OUTLINED_FUNCTION_132(v40, v41, v42, v43, v44, v45, v46, v47, v50, v52, v54, v55, v56, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v90);
              }

              while (v36);
            }

            [*(self + 704) removeAllObjects];
            v21 = v55;
            v22 = v56;
          }

          v20 = v57;
        }

LABEL_36:
        *(self + 456) = 0;
        goto LABEL_19;
      }

      *(self + 632) = 1;
      [*(self + 912) reset];
      if (recordingStatusDelegate)
      {
        [recordingStatusDelegate fileWriter:self startedRecordingForSettings:OUTLINED_FUNCTION_116_2().n128_f64[0] writerPipelineIndex:? startPTS:?];
      }

LABEL_19:

      break;
    case 4:
    case 5:
    case 6:
      if (queue)
      {
        v11 = OUTLINED_FUNCTION_3_19();
        [BWQuickTimeMovieFileSinkNode _printBufferEvent:v11 forNodeInputIndex:? eventName:?];
LABEL_10:
        [OUTLINED_FUNCTION_47_1() removeObjectAtIndex:?];
      }

      else
      {
        if ([index count])
        {
          OUTLINED_FUNCTION_137();
        }

        v13 = OUTLINED_FUNCTION_3_19();
        [BWQuickTimeMovieFileSinkNode _printBufferEvent:v13 forNodeInputIndex:? eventName:?];
      }

      return 0;
    default:
      JUMPOUT(0);
  }

  return v8;
}

- (uint64_t)_driveStateMachineWithStopOrFlushMarkerBuffer:(uint64_t)buffer requiredAction:(uint64_t)action forInputIndex:(void *)index inputStagingQueue:(int)queue sampleBufferAlreadyAtHeadOfQueue:
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_78_2();
  v11 = OUTLINED_FUNCTION_47_1();
  v16 = CMGetAttachment(v11, v12, v13);
  if (v16)
  {
    intValue = [v16 intValue];
    v14 = intValue >= 0xFFFFBFDE;
    v15 = intValue == -16418;
    if (intValue == -16418)
    {
      if (!*(v6 + 632))
      {
        *(v6 + 632) = 4;
        v18 = OUTLINED_FUNCTION_47_1();
        v21 = CMGetAttachment(v18, v19, v20);
        *(v6 + 448) = v21;
        v22 = v21;
      }

      v23 = 1;
      v24 = 4294950878;
      goto LABEL_10;
    }

    v24 = intValue;
  }

  else
  {
    v24 = 0;
  }

  v23 = 0;
LABEL_10:
  if (v15 || !v14)
  {
    switch(*(v6 + 632))
    {
      case 0:
      case 2:
        v28 = OUTLINED_FUNCTION_70();
        [BWQuickTimeMovieFileSinkNode _printBufferEvent:v28 forNodeInputIndex:? eventName:?];
        if (queue)
        {
          goto LABEL_18;
        }

        return 0;
      case 1:
        *(v6 + 632) = 4;
        goto LABEL_23;
      case 3:
      case 5:
      case 6:
        if (queue)
        {
          v27 = OUTLINED_FUNCTION_70();
          [BWQuickTimeMovieFileSinkNode _printBufferEvent:v27 forNodeInputIndex:? eventName:?];
LABEL_18:
          [index removeObjectAtIndex:0];
        }

        else
        {
          if ([index count])
          {
            [index addObject:v8];
          }

          v29 = OUTLINED_FUNCTION_70();
          [BWQuickTimeMovieFileSinkNode _printBufferEvent:v29 forNodeInputIndex:? eventName:?];
        }

        return 0;
      case 4:
LABEL_23:
        if (queue)
        {
          v30 = @"reusing already staged %@ marker";
        }

        else
        {
          [index addObject:v8];
          v30 = @"staging %@ marker";
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:v30, v7];
        v31 = OUTLINED_FUNCTION_70();
        [BWQuickTimeMovieFileSinkNode _printBufferEvent:v31 forNodeInputIndex:? eventName:?];
        memset(&v37[32], 0, 24);
        v32 = OUTLINED_FUNCTION_3_19();
        [(BWQuickTimeMovieFileSinkNode *)v32 _findMarkers:v33, v34];
        v25 = 0 >> 96;
        if (0 >> 96)
        {
          *(v6 + 632) = 0;
          [*(v6 + 1048) resetCurrentLoggingCounter];
          if (v23)
          {
            if ([v6 recordingStatusDelegate])
            {
              [*(v6 + 448) settingsID];
              [OUTLINED_FUNCTION_64_0() fileWriter:? writerPipelineIndex:? stoppedRecordingSampleDataForSettingsID:?];
              LOBYTE(v36) = 0;
              [OUTLINED_FUNCTION_64_0() fileWriter:0 writerPipelineIndex:v36 stoppedRecordingForSettings:? withError:? thumbnailSurface:? irisMovieInfo:? debugMetadataSidecarFileURL:? recordingSucceeded:?];
            }

            v35 = *(v6 + 624);
            if (v35)
            {
              CFRelease(v35);
              *(v6 + 624) = 0;
            }
          }

          else
          {
            if (CFEqual(v7, @"Flush"))
            {
              *&v37[32] = **&MEMORY[0x1E6960C70];
            }

            *v37 = *&v37[32];
            [(BWQuickTimeMovieFileSinkNode *)v6 _doEndRecordingAtTime:v37 earlyTerminationErrCode:v24];
          }

          *(v6 + 448) = 0;
          *(v6 + 456) = 0;
          [(BWQuickTimeMovieFileSinkNode *)v6 _clearProvidedTrackFormatDescriptions];
        }

        return v25;
      default:
        JUMPOUT(0);
    }
  }

  return 0;
}

- (uint64_t)_driveStateMachineWithPauseMarkerBuffer:(uint64_t)buffer forInputIndex:(void *)index inputStagingQueue:(int)queue sampleBufferAlreadyAtHeadOfQueue:
{
  if (!self || !v6 & v5)
  {
    return 0;
  }

  switch(*(self + 632))
  {
    case 0:
    case 2:
      v14 = OUTLINED_FUNCTION_3_19();
      [BWQuickTimeMovieFileSinkNode _printBufferEvent:v14 forNodeInputIndex:? eventName:?];
      if (queue)
      {
        goto LABEL_10;
      }

      return 0;
    case 1:
      *(self + 632) = 5;
      ++*(self + 420);
      goto LABEL_15;
    case 3:
    case 4:
    case 6:
      if (queue)
      {
        v13 = OUTLINED_FUNCTION_3_19();
        [BWQuickTimeMovieFileSinkNode _printBufferEvent:v13 forNodeInputIndex:? eventName:?];
LABEL_10:
        [index removeObjectAtIndex:0];
      }

      else
      {
        if ([index count])
        {
          [index addObject:a2];
        }

        v15 = OUTLINED_FUNCTION_3_19();
        [BWQuickTimeMovieFileSinkNode _printBufferEvent:v15 forNodeInputIndex:? eventName:?];
      }

      return 0;
    case 5:
LABEL_15:
      if ((queue & 1) == 0)
      {
        [index addObject:a2];
      }

      v16 = OUTLINED_FUNCTION_3_19();
      [BWQuickTimeMovieFileSinkNode _printBufferEvent:v16 forNodeInputIndex:? eventName:?];
      memset(&v38, 0, sizeof(v38));
      [(BWQuickTimeMovieFileSinkNode *)self _findMarkers:&v38];
      v8 = v38.flags & 1;
      if ((v38.flags & 1) == 0)
      {
        return v8;
      }

      *(self + 632) = 2;
      if (*(self + 1772))
      {
        memset(&v34, 0, sizeof(v34));
        lhs = v38;
        rhs = *(self + 1760);
        CMTimeSubtract(&v34, &lhs, &rhs);
        lhs = *(self + 1760);
        rhs = v34;
        [(BWQuickTimeMovieFileSinkNode *)self _writeMovieSegmentMetadataForSegmentStartPTS:&rhs segmentDuration:?];
        v31 = MEMORY[0x1E6960C70];
        *(self + 1760) = *MEMORY[0x1E6960C70];
        *(self + 1776) = *(v31 + 16);
      }

      v17 = *(self + 792);
      if (!v17)
      {
        goto LABEL_26;
      }

      v18 = *(self + 776);
      if (v18 >= v18 + v17)
      {
        goto LABEL_26;
      }

      v19 = 24 * v18 + 12;
      break;
    default:
      JUMPOUT(0);
  }

  while (*(*(self + 664) + v18) != 1 || (~*(*(self + 496) + v19) & 5) != 0)
  {
    ++v18;
    v19 += 24;
    if (!--v17)
    {
LABEL_26:
      if (dword_1ED844250)
      {
        v20 = OUTLINED_FUNCTION_67_0();
        value = rhs.value;
        if (os_log_type_enabled(v20, type))
        {
          v22 = value;
        }

        else
        {
          v22 = value & 0xFFFFFFFE;
        }

        if (v22)
        {
          LODWORD(lhs.value) = 136315138;
          *(&lhs.value + 4) = "[BWQuickTimeMovieFileSinkNode _driveStateMachineWithPauseMarkerBuffer:forInputIndex:inputStagingQueue:sampleBufferAlreadyAtHeadOfQueue:]";
          LODWORD(v33) = 12;
          p_lhs = &lhs;
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
      }

      v23 = *(self + 640);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (!v24 || v24(v23, 0) || (v25 = *(self + 640), (v26 = *(*(CMBaseObjectGetVTable() + 16) + 48)) == 0) || v26(v25, 0))
      {
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      goto LABEL_38;
    }
  }

  if (dword_1ED844250)
  {
    v27 = OUTLINED_FUNCTION_67_0();
    v28 = rhs.value;
    os_log_type_enabled(v27, type);
    OUTLINED_FUNCTION_115_0();
    if (v6)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    if (v30)
    {
      LODWORD(lhs.value) = 136315394;
      *(&lhs.value + 4) = "[BWQuickTimeMovieFileSinkNode _driveStateMachineWithPauseMarkerBuffer:forInputIndex:inputStagingQueue:sampleBufferAlreadyAtHeadOfQueue:]";
      LOWORD(lhs.flags) = 1024;
      *(&lhs.flags + 2) = v18;
      LODWORD(v33) = 18;
      p_lhs = &lhs;
      OUTLINED_FUNCTION_4_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_38:
  if ([self recordingStatusDelegate])
  {
    [*(self + 448) settingsID];
    [OUTLINED_FUNCTION_8_8() fileWriter:? pausedRecordingForSettingsID:?];
  }

  return v8;
}

- (uint64_t)_driveStateMachineWithResumeMarkerBuffer:(uint64_t)buffer forInputIndex:(void *)index inputStagingQueue:(int)queue sampleBufferAlreadyAtHeadOfQueue:
{
  if (self && !(!v6 & v5))
  {
    switch(*(self + 632))
    {
      case 0:
      case 1:
        v12 = OUTLINED_FUNCTION_3_19();
        [BWQuickTimeMovieFileSinkNode _printBufferEvent:v12 forNodeInputIndex:? eventName:?];
        if (queue)
        {
          goto LABEL_10;
        }

        return 0;
      case 2:
        *(self + 632) = 6;
        goto LABEL_15;
      case 3:
      case 4:
      case 5:
        if (queue)
        {
          v11 = OUTLINED_FUNCTION_3_19();
          [BWQuickTimeMovieFileSinkNode _printBufferEvent:v11 forNodeInputIndex:? eventName:?];
LABEL_10:
          [OUTLINED_FUNCTION_47_1() removeObjectAtIndex:?];
        }

        else
        {
          if ([index count])
          {
            OUTLINED_FUNCTION_137();
          }

          v13 = OUTLINED_FUNCTION_3_19();
          [BWQuickTimeMovieFileSinkNode _printBufferEvent:v13 forNodeInputIndex:? eventName:?];
        }

        return 0;
      case 6:
LABEL_15:
        if ((queue & 1) == 0)
        {
          OUTLINED_FUNCTION_137();
        }

        v14 = OUTLINED_FUNCTION_3_19();
        [BWQuickTimeMovieFileSinkNode _printBufferEvent:v14 forNodeInputIndex:? eventName:?];
        v19 = 0uLL;
        v20 = 0;
        [(BWQuickTimeMovieFileSinkNode *)self _findMarkers:&v19];
        v8 = BYTE12(v19) & 1;
        if (BYTE12(v19))
        {
          v15 = OUTLINED_FUNCTION_69();
          v18 = CMGetAttachment(v15, v16, v17);
          if (!v18 || ![v18 intValue])
          {
            *(self + 1760) = v19;
            *(self + 1776) = v20;
          }

          *(self + 632) = 1;
          if ([self recordingStatusDelegate])
          {
            [*(self + 448) settingsID];
            [OUTLINED_FUNCTION_64_0() fileWriter:? resumedRecordingForSettingsID:?];
          }
        }

        return v8;
      default:
        JUMPOUT(0);
    }
  }

  return 0;
}

- (void)_driveStateMachineWithMediaBuffer:(uint64_t)buffer forInputIndex:(uint64_t)index inputStagingQueue:(uint64_t)queue sampleBufferAlreadyAtHeadOfQueue:(void *)ofQueue
{
  if (buffer)
  {
    OUTLINED_FUNCTION_80();
    if (v9)
    {
      v15 = OUTLINED_FUNCTION_44();
      [BWQuickTimeMovieFileSinkNode _printBufferEvent:v15 forNodeInputIndex:? eventName:?];
      v16 = OUTLINED_FUNCTION_47_1();

      [v16 removeObjectAtIndex:?];
    }

    else if (!(!v7 & v6))
    {
      v10 = v8;
      switch(*(v4 + 632))
      {
        case 0:
        case 2:
          goto LABEL_15;
        case 1:
          goto LABEL_11;
        case 3:
        case 6:
          if (![ofQueue count])
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        case 4:
        case 5:
          if ([ofQueue count])
          {
LABEL_14:
            [OUTLINED_FUNCTION_8_8() addObject:?];
LABEL_15:
            v14 = OUTLINED_FUNCTION_44();

            [BWQuickTimeMovieFileSinkNode _printBufferEvent:v14 forNodeInputIndex:? eventName:?];
          }

          else
          {
            v11 = OUTLINED_FUNCTION_44();
            [BWQuickTimeMovieFileSinkNode _printBufferEvent:v11 forNodeInputIndex:? eventName:?];
LABEL_11:
            v12 = OUTLINED_FUNCTION_44();

            [(BWQuickTimeMovieFileSinkNode *)v12 _writeBuffer:v13 forInputIndex:v10];
          }

          break;
        default:
          JUMPOUT(0);
      }
    }
  }
}

- (uint64_t)dealloc
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_0();
  result = FigDebugAssert3();
  *v0 = *v1;
  return result;
}

- (uint64_t)_doEndRecordingAtTime:earlyTerminationErrCode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_doEndRecordingAtTime:earlyTerminationErrCode:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_doEndRecordingAtTime:earlyTerminationErrCode:.cold.3()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_doEndRecordingAtTime:earlyTerminationErrCode:.cold.4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_doEndRecordingAtTime:earlyTerminationErrCode:.cold.5()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_doEndRecordingAtTime:earlyTerminationErrCode:.cold.6()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_doEndRecordingAtTime:earlyTerminationErrCode:.cold.7()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_doEndRecordingAtTime:earlyTerminationErrCode:.cold.8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_doEndRecordingAtTime:earlyTerminationErrCode:.cold.9()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_doEndRecordingAtTime:earlyTerminationErrCode:.cold.10()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_doEndRecordingAtTime:earlyTerminationErrCode:.cold.11()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_doEndRecordingAtTime:earlyTerminationErrCode:.cold.13()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_doEndRecordingAtTime:earlyTerminationErrCode:.cold.14()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (id)_doEndRecordingAtTime:(void *)a3 earlyTerminationErrCode:.cold.15(unint64_t a1, void *a2, void *a3)
{
  [(BWQuickTimeMovieFileSinkNode *)a1 _fixVitalityScoreWithMotionAnalysis:?];
  [*(a1 + 696) vitalityScore];
  result = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithVitalityScore(a2, [*(a1 + 696) vitalityScoringVersion], v6);
  *a3 = result;
  return result;
}

- (uint64_t)_doEndRecordingAtTime:(uint64_t)a1 earlyTerminationErrCode:.cold.16(uint64_t a1)
{
  [MEMORY[0x1E696AC08] defaultManager];
  [*(a1 + 448) outputURL];
  return [OUTLINED_FUNCTION_79_1() removeItemAtURL:? error:?];
}

@end