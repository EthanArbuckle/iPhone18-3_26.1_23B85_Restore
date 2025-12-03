@interface BWSmartStyleLearningNode
+ (id)newISPSMGProcessingSession:(id)session;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getSampleBufferPresentationTimeStamp:(SEL)stamp;
- (BOOL)hasNonLiveConfigurationChanges;
- (BWSmartStyleLearningNode)initWithOutputs:(unint64_t)outputs masksRefinerEnabled:(BOOL)enabled propagateMasks:(BOOL)masks ispSMGProcessingSession:(id)session squareAspectRatioConfigEnabled:(BOOL)configEnabled subjectRelightingPreviewVersion:(int)version;
- (id)_blitMasksToOutputPools:(id)pools unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer currentPTS:(id *)s;
- (id)_cropAndScaleMasks:(id)masks unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer currentPTS:(id *)s applyGDC:(BOOL)c useIntermediatePool:(BOOL)pool;
- (id)_deepCopyMasks:(id)masks;
- (id)_runInferences:(opaqueCMSampleBuffer *)inferences unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer withMasks:(id)masks currentPTS:(id *)s;
- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format;
- (int)_createCoefficientsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer to:(opaqueCMSampleBuffer *)to;
- (int)_createIdentityCoefficientsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer to:(opaqueCMSampleBuffer *)to;
- (int)_createSmartStyleContainerFromSampleBuffer:(opaqueCMSampleBuffer *)buffer unstyledThumbnailSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer linearThumbnailSampleBuffer:(opaqueCMSampleBuffer *)thumbnailSampleBuffer to:(opaqueCMSampleBuffer *)to;
- (int)_cropAndUndistortWeightSegmentMap:(__CVBuffer *)map unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer doGDC:(BOOL)c toPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)_extractANSTMasks:(opaqueCMSampleBuffer *)masks forPTS:(id *)s;
- (int)_findCorrespondingSmartStyleContainerWithMasks:(id)masks outputSmartStyleContainer:(opaqueCMSampleBuffer *)container;
- (int)_getContainerAssetsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer outputUnstyledThumbnailSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer outputLinearThumbnailSampleBuffer:(opaqueCMSampleBuffer *)thumbnailSampleBuffer;
- (int)_initVMRefinerInference:(BOOL)inference;
- (int)_loadAndConfigureSmartStyleBundle:(BOOL)bundle;
- (int)_runFalsePositiveRejectionOnPixelBuffer:(__CVBuffer *)buffer unrefinedPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)processMaskSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (int)processVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer frameEmitted:(BOOL *)emitted;
- (opaqueCMSampleBuffer)_unpackSbufFromPrimaryCameraStream:(opaqueCMSampleBuffer *)stream;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)_asynchronouslyDecrementLearnCount;
- (void)_asynchronouslyDecrementRenderCount;
- (void)_asynchronouslyLearnWithContainer:(opaqueCMSampleBuffer *)container inputUnstyledSampleBuffer:(opaqueCMSampleBuffer *)ImageBuffer withUnrefinedMasks:(id)masks withStats:(id)stats withStatsExtended:(id)extended styleToLearn:(id)learn shouldBypass:(BOOL)bypass;
- (void)_asynchronouslyRenderSampleBuffer:(opaqueCMSampleBuffer *)buffer outputLinearThumbnailSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer outputUnstyledThumbnailSampleBuffer:(opaqueCMSampleBuffer *)thumbnailSampleBuffer synchronizingEvent:(id)event;
- (void)_asynchronouslySignalEvent:(id)event;
- (void)_releaseResources;
- (void)_updateCurrentSmartStyleMetadata:(id)metadata onSbuf:(opaqueCMSampleBuffer *)sbuf;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)loadInferenceNetwork;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)semanticStyleSceneTypeDidChange:(int)change;
- (void)setCameraInfoByPortType:(id)type;
- (void)setSmartStyle:(id)style;
@end

@implementation BWSmartStyleLearningNode

- (BWSmartStyleLearningNode)initWithOutputs:(unint64_t)outputs masksRefinerEnabled:(BOOL)enabled propagateMasks:(BOOL)masks ispSMGProcessingSession:(id)session squareAspectRatioConfigEnabled:(BOOL)configEnabled subjectRelightingPreviewVersion:(int)version
{
  configEnabledCopy = configEnabled;
  outputsCopy = outputs;
  v62.receiver = self;
  v62.super_class = BWSmartStyleLearningNode;
  v14 = [(BWNode *)&v62 init];
  if (v14)
  {
    v15 = [MEMORY[0x1E6991708] configurationForVariant:0];
    v16 = [MEMORY[0x1E6991708] tuningParametersForVariant:0];
    learningRate = [v16 learningRate];
    if (learningRate <= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = learningRate;
    }

    LODWORD(v14->_lastLearnedPortType) = v18;
    HIDWORD(v14->_lastLearnedPortType) = [v15 learningRateFramesPerSecond];
    v14->_learningRate = [v15 learningRateMaxFramesPerSecond];
    [v16 statsUpdateDeltaTimeThreshold];
    v14->_learningFramesPerSecondUnit = v19;
    [v16 anstMasksMatchingTimeInSecondsThreshold];
    v14->_learningMaxFramesPerSecond = v20;
    BYTE4(v14->_previousPTS.epoch) = outputsCopy & 1;
    BYTE5(v14->_previousPTS.epoch) = (outputsCopy & 2) != 0;
    BYTE6(v14->_previousPTS.epoch) = enabled;
    HIBYTE(v14->_previousPTS.epoch) = enabled;
    v14->_generateCoefficients = 1;
    v14->_propagateMasks = masks;
    v21 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v14];
    [(BWNodeInput *)v21 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v21 setPassthroughMode:1];
    [(BWNodeInput *)v21 setIndefinitelyHeldBufferCount:3];
    if (FigCapturePlatformIdentifier() == 11 && FigCapturePlatformIdentifier() <= 11)
    {
      v22 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v22 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v22 setPassthroughMode:1];
      [(BWNodeInputMediaConfiguration *)v22 setIndefinitelyHeldBufferCount:3];
      [(BWNodeInput *)v21 setMediaConfiguration:v22 forAttachedMediaKey:@"PreLTMThumbnail"];
    }

    if (FigCapturePlatformIdentifier() >= 12)
    {
      v23 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v23 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v23 setPassthroughMode:1];
      [(BWNodeInputMediaConfiguration *)v23 setIndefinitelyHeldBufferCount:3];
      [(BWNodeInput *)v21 setMediaConfiguration:v23 forAttachedMediaKey:@"LTMThumbnail"];
    }

    v55 = configEnabledCopy;
    if (FigCapturePlatformIdentifier() >= 12)
    {
      v24 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v24 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v24 setPassthroughMode:0];
      [(BWNodeInputMediaConfiguration *)v24 setIndefinitelyHeldBufferCount:3];
      [(BWNodeInput *)v21 setMediaConfiguration:v24 forAttachedMediaKey:0x1F21AB1F0];
    }

    if (FigCapturePlatformIdentifier() == 11)
    {
      v25 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v25 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v25 setPassthroughMode:0];
      [(BWNodeInputMediaConfiguration *)v25 setIndefinitelyHeldBufferCount:3];
      [(BWNodeInput *)v21 setMediaConfiguration:v25 forAttachedMediaKey:0x1F21AB1D0];
    }

    [(BWNode *)v14 addInput:v21];
    v26 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v14];
    [(BWNodeInput *)v26 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v26 setPassthroughMode:0];
    v61[0] = 0x1F21AAED0;
    v61[1] = 0x1F21AAEF0;
    v61[2] = 0x1F21AAF10;
    v61[3] = 0x1F21AAF30;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:4];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v57 objects:v56 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v58;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v58 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v57 + 1) + 8 * i);
          v33 = objc_alloc_init(BWNodeInputMediaConfiguration);
          [(BWNodeInputMediaConfiguration *)v33 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
          [(BWNodeInputMediaConfiguration *)v33 setPassthroughMode:0];
          [(BWNodeInput *)v26 setIndefinitelyHeldBufferCount:3];
          [(BWNodeInput *)v26 setMediaConfiguration:v33 forAttachedMediaKey:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v57 objects:v56 count:16];
      }

      while (v29);
    }

    [(BWNode *)v14 addInput:v26];
    v34 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v14];
    [(BWNodeOutput *)v34 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v34 setPassthroughMode:1];
    [(BWNode *)v14 addOutput:v34];
    v14->_ispSMGProcessingSession = session;
    if ([(BWSmartStyleLearningNode *)v14 _loadAndConfigureSmartStyleBundle:v55])
    {
      [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
    }

    else
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14->_inputStyleContainerSampleBufferQueue = v35;
      if (v35)
      {
        v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v14->_inputMasksSampleBufferQueue = v36;
        if (v36)
        {
          v14->_styleUpdateLock._os_unfair_lock_opaque = 0;
          v14->_inputMasksSampleBufferQueueLock._os_unfair_lock_opaque = 0;
          v14->_inputStyleContainerSampleBufferQueueLock._os_unfair_lock_opaque = 0;
          LODWORD(v14->_workQueue) = 0;
          LODWORD(v14->_lastLearnedROI.size.height) = 0;
          v14->_statsUpdateDeltaTimeThreshold = 0.0;
          v37 = FigDispatchQueueCreateWithPriority();
          *&v14->_timeInSecondsUntilNextStatsUpdate = v37;
          if (v37)
          {
            HIDWORD(v14->_workQueue) = 0;
            v14->_workQueueLock._os_unfair_lock_opaque = 0;
            if (BYTE6(v14->_previousPTS.epoch) == 1 && [(BWSmartStyleLearningNode *)v14 _initVMRefinerInference:v55])
            {
              [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
            }

            else
            {
              v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v14->_refinedVideoFormatByAttachedMediaKey = v38;
              if (v38)
              {
                v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
                v14->_processorVideoFormatsByAttachedMediaKeys = v39;
                if (v39)
                {
                  v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  v14->_processorPixelBufferPoolsByAttachedMediaKeys = v40;
                  if (v40)
                  {
                    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    v14->_intermediateVideoFormatsByAttachedMediaKeys = v41;
                    if (v41)
                    {
                      v14->_generateImageStats = 0;
                      v42 = +[FigCaptureSmartStyle identityStyle];
                      if (v42)
                      {
                        v43 = v42;
                        cast = [v42 cast];
                        [v43 intensity];
                        v46 = v45;
                        [v43 toneBias];
                        v48 = v47;
                        [v43 colorBias];
                        LODWORD(v50) = v49;
                        LODWORD(v51) = v46;
                        LODWORD(v52) = v48;
                        v53 = [FigCaptureSmartStyle styleWithCast:cast intensity:v51 toneBias:v52 colorBias:v50];
                        *&v14->_disableWaitForCoefficientsOnFirstFrame = v53;
                        if (v53)
                        {
                          v14->_semanticStyleSceneLock._os_unfair_lock_opaque = 0;
                          v14->_semanticStyleSceneType = 0;
                          LOBYTE(v14->_mostRecentLearnedSkyMaskSampleBuffer) = 1;
                          HIDWORD(v14->_mostRecentLearnedSkyMaskSampleBuffer) = version;
                          BYTE1(v14->_mostRecentLearnedSkyMaskSampleBuffer) = version != 0;
                          [(BWNode *)v14 setSupportsLiveReconfiguration:1];
                          return v14;
                        }

                        [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
                      }

                      else
                      {
                        [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
                      }
                    }

                    else
                    {
                      [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
                    }
                  }

                  else
                  {
                    [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
                  }
                }

                else
                {
                  [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
                }
              }

              else
              {
                [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
              }
            }
          }

          else
          {
            [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
          }
        }

        else
        {
          [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
        }
      }

      else
      {
        [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
      }
    }

    return 0;
  }

  return v14;
}

- (void)setCameraInfoByPortType:(id)type
{
  intermediatePixelBufferPoolsByAttachedMediaKeys = self->_intermediatePixelBufferPoolsByAttachedMediaKeys;
  if (intermediatePixelBufferPoolsByAttachedMediaKeys)
  {
  }

  self->_intermediatePixelBufferPoolsByAttachedMediaKeys = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:type];
}

- (void)_releaseResources
{
  self->_smartStyleProcessor = 0;

  self->_inferenceScheduler = 0;
  self->_metalContext = 0;
}

- (void)dealloc
{
  dispatch_sync(*&self->_timeInSecondsUntilNextStatsUpdate, &__block_literal_global_55);
  [(BWSmartStyleLearningNode *)self _releaseResources];

  initialCoefficientsPixelBuffer = self->_initialCoefficientsPixelBuffer;
  if (initialCoefficientsPixelBuffer)
  {
    CFRelease(initialCoefficientsPixelBuffer);
  }

  identityCoefficientsPixelBuffer = self->_identityCoefficientsPixelBuffer;
  if (identityCoefficientsPixelBuffer)
  {
    CFRelease(identityCoefficientsPixelBuffer);
  }

  learnedCoefficientsSampleBuffer = self->_learnedCoefficientsSampleBuffer;
  if (learnedCoefficientsSampleBuffer)
  {
    CFRelease(learnedCoefficientsSampleBuffer);
  }

  v6 = *&self->_mostRecentMasksLock._os_unfair_lock_opaque;
  if (v6)
  {
    CFRelease(v6);
  }

  mostRecentLearnedPersonMaskSampleBuffer = self->_mostRecentLearnedPersonMaskSampleBuffer;
  if (mostRecentLearnedPersonMaskSampleBuffer)
  {
    CFRelease(mostRecentLearnedPersonMaskSampleBuffer);
  }

  mostRecentLearnedSkinMaskSampleBuffer = self->_mostRecentLearnedSkinMaskSampleBuffer;
  if (mostRecentLearnedSkinMaskSampleBuffer)
  {
    CFRelease(mostRecentLearnedSkinMaskSampleBuffer);
  }

  v9 = *&self->_timeInSecondsUntilNextStatsUpdate;
  if (v9)
  {
    dispatch_release(v9);
    *&self->_timeInSecondsUntilNextStatsUpdate = 0;
  }

  v10.receiver = self;
  v10.super_class = BWSmartStyleLearningNode;
  [(BWNode *)&v10 dealloc];
}

- (BOOL)hasNonLiveConfigurationChanges
{
  v4.receiver = self;
  v4.super_class = BWSmartStyleLearningNode;
  hasNonLiveConfigurationChanges = [(BWNode *)&v4 hasNonLiveConfigurationChanges];
  if (hasNonLiveConfigurationChanges)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Live reconfiguring BWSmartStyleLearningNode with changing formats is not supported", 0}]);
  }

  return hasNonLiveConfigurationChanges;
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if (!format)
  {
    [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
    return;
  }

  if (!input)
  {
    [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
    return;
  }

  v9 = LODWORD(self->_lastLearnedPortType) * (self->_learningRate / HIDWORD(self->_lastLearnedPortType));
  [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v11 = v10;
  v13 = v12;
  if (-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](self, "inputs"), "objectAtIndexedSubscript:", 0) == input && [key isEqualToString:@"PrimaryFormat"])
  {
    v65 = v9 + 2;
    [(BWNodeOutput *)self->super._output setFormat:format];
    v14 = objc_alloc_init(BWVideoFormatRequirements);
    if (!v14)
    {
      [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
      return;
    }

    v15 = v14;
    v16 = MEMORY[0x1E696AD98];
    v17 = FigCaptureUncompressedPixelFormatForPixelFormat([format pixelFormat]);
    v18 = FigCaptureUnPackedPixelFormatForPixelFormat(v17);
    if ((v18 & 0xFFFFFFEF) == 0x34323066 || v18 == 2019963440 || v18 == 2016686640)
    {
      v21 = 1111970369;
    }

    else
    {
      v21 = v18;
    }

    v82 = [v16 numberWithInt:v21];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v15, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1]);
    [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
    [(BWVideoFormatRequirements *)v15 setWidth:v22];
    [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
    [(BWVideoFormatRequirements *)v15 setHeight:v23];
    [(BWVideoFormatRequirements *)v15 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v15 setHeightAlignment:16];
    v81 = v15;
    v24 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1]);
    [(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey setObject:v24 forKeyedSubscript:0x1F21AB0B0];
    [(NSMutableDictionary *)self->_processorPixelBufferPoolsByAttachedMediaKeys setObject:v24 forKeyedSubscript:0x1F21AB0B0];
    v25 = objc_alloc_init(BWVideoFormatRequirements);
    if (!v25)
    {
      [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
      return;
    }

    v26 = v25;
    v27 = MEMORY[0x1E696AD98];
    v28 = FigCaptureUncompressedPixelFormatForPixelFormat([format pixelFormat]);
    v29 = FigCaptureUnPackedPixelFormatForPixelFormat(v28);
    if ((v29 & 0xFFFFFFEF) == 0x34323066 || v29 == 2019963440 || v29 == 2016686640)
    {
      v32 = 1111970369;
    }

    else
    {
      v32 = v29;
    }

    v80 = [v27 numberWithInt:v32];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v26, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1]);
    [(BWVideoFormatRequirements *)v26 setWidth:v11];
    [(BWVideoFormatRequirements *)v26 setHeight:v13];
    [(BWVideoFormatRequirements *)v26 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v26 setHeightAlignment:16];
    v79 = v26;
    v33 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1]);
    [(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey setObject:v33 forKeyedSubscript:0x1F21AB0D0];
    [(NSMutableDictionary *)self->_processorPixelBufferPoolsByAttachedMediaKeys setObject:v33 forKeyedSubscript:0x1F21AB0D0];
    v34 = objc_alloc_init(BWVideoFormatRequirements);
    if (!v34)
    {
      [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
      return;
    }

    v35 = v34;
    [(BWVideoFormatRequirements *)v34 setSupportedPixelFormats:&unk_1F2248838];
    [(BWVideoFormatRequirements *)v35 setWidth:v11];
    [(BWVideoFormatRequirements *)v35 setHeight:v13];
    [(BWVideoFormatRequirements *)v35 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v35 setHeightAlignment:16];
    v78 = v35;
    v36 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1]);
    [(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey setObject:v36 forKeyedSubscript:0x1F21AB110];
    [(NSMutableDictionary *)self->_processorPixelBufferPoolsByAttachedMediaKeys setObject:v36 forKeyedSubscript:0x1F21AB110];
    if (self->_generateImageStats)
    {
      v37 = objc_alloc_init(BWVideoFormatRequirements);
      if (!v37)
      {
        [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      v38 = v37;
      v39 = MEMORY[0x1E696AD98];
      v40 = [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")] - 1;
      if (v40 > 8)
      {
        v41 = 0;
      }

      else
      {
        v41 = *&a610l61c261c361[4 * v40];
      }

      v77 = [v39 numberWithUnsignedInt:v41];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v38, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1]);
      [(BWVideoFormatRequirements *)v38 setWidth:v11];
      [(BWVideoFormatRequirements *)v38 setHeight:v13];
      [(BWVideoFormatRequirements *)v38 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v38 setHeightAlignment:16];
      v76 = v38;
      v52 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1]);
      [(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey setObject:v52 forKeyedSubscript:0x1F21AB150];
      [(NSMutableDictionary *)self->_processorPixelBufferPoolsByAttachedMediaKeys setObject:v52 forKeyedSubscript:0x1F21AB150];
    }

    if (BYTE4(self->_previousPTS.epoch) == 1)
    {
      v53 = objc_alloc_init(BWVideoFormatRequirements);
      if (!v53)
      {
        [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      v54 = v53;
      v55 = [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
      v75 = [v55 objectForKeyedSubscript:*MEMORY[0x1E6966130]];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v54, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1]);
      v56 = [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
      -[BWVideoFormatRequirements setWidth:](v54, "setWidth:", [objc_msgSend(v56 objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "unsignedIntValue"}]);
      v57 = [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
      -[BWVideoFormatRequirements setHeight:](v54, "setHeight:", [objc_msgSend(v57 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "unsignedIntValue"}]);
      [(BWVideoFormatRequirements *)v54 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v54 setHeightAlignment:16];
      v58 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      if (!v58)
      {
        [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      v59 = v58;
      [(BWNodeOutputMediaConfiguration *)v58 setFormatRequirements:v54];
      [(BWNodeOutputMediaConfiguration *)v59 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v59 setProvidesPixelBufferPool:1];
      [(BWNodeOutputMediaConfiguration *)v59 setOwningNodeRetainedBufferCount:v9 + 3];
      [(BWNodeOutputMediaConfiguration *)v59 setOwningNodeIndefinitelyHeldBufferCount:1];
      [(BWNodeOutput *)self->super._output setMediaConfiguration:v59 forAttachedMediaKey:0x1F21AB070];
      v60 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      if (!v60)
      {
        [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      v61 = v60;
      [(BWNodeOutputMediaConfiguration *)v60 setFormatRequirements:v26];
      [(BWNodeOutputMediaConfiguration *)v61 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v61 setProvidesPixelBufferPool:1];
      [(BWNodeOutputMediaConfiguration *)v61 setOwningNodeRetainedBufferCount:v65];
      [(BWNodeOutputMediaConfiguration *)v61 setOwningNodeIndefinitelyHeldBufferCount:3];
      [(BWNodeOutput *)self->super._output setMediaConfiguration:v61 forAttachedMediaKey:0x1F21AB0D0];
      v62 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      if (!v62)
      {
        [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      v63 = v62;
      [(BWNodeOutputMediaConfiguration *)v62 setFormatRequirements:v35];
      [(BWNodeOutputMediaConfiguration *)v63 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v63 setProvidesPixelBufferPool:1];
      [(BWNodeOutputMediaConfiguration *)v63 setOwningNodeRetainedBufferCount:v65];
      [(BWNodeOutputMediaConfiguration *)v63 setOwningNodeIndefinitelyHeldBufferCount:3];
      [(BWNodeOutput *)self->super._output setMediaConfiguration:v63 forAttachedMediaKey:0x1F21AB110];
    }

    if (BYTE6(self->_previousPTS.epoch) == 1)
    {
      [(BWVideoFormat *)self->_anstMaskVideoFormat setObject:[(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey objectForKeyedSubscript:0x1F21AB0B0] forKeyedSubscript:@"PrimaryFormat"];
      v64 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWInferenceVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [-[BWVideoFormat objectForKeyedSubscript:](self->_anstMaskVideoFormat objectForKeyedSubscript:{@"PrimaryFormat", "pixelBufferAttributes"}]);
      [(BWInferenceVideoFormatRequirements *)v64 setIncludesInvalidContent:1];
      v74 = v64;
      if (-[BWInferenceScheduler prepareForInputInferenceVideoFormat:attachedMediaKey:](self->_inferenceScheduler, "prepareForInputInferenceVideoFormat:attachedMediaKey:", +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1]), @"PrimaryFormat"))
      {
        [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
      }
    }
  }

  else
  {
    if (([key isEqualToString:0x1F21AAED0] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", 0x1F21AAEF0) & 1) != 0 || (objc_msgSend(key, "isEqualToString:", 0x1F21AAF10) & 1) != 0 || objc_msgSend(key, "isEqualToString:", 0x1F21AAF30))
    {
      if (!self->_inferenceEngine)
      {
        v42 = objc_alloc_init(BWVideoFormatRequirements);
        if (!v42)
        {
          [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
          return;
        }

        v43 = v42;
        -[BWVideoFormatRequirements setWidth:](v42, "setWidth:", [format width]);
        -[BWVideoFormatRequirements setHeight:](v43, "setHeight:", [format height]);
        [(BWVideoFormatRequirements *)v43 setBytesPerRowAlignment:64];
        [(BWVideoFormatRequirements *)v43 setSupportedPixelFormats:&unk_1F2248850];
        v73 = v43;
        self->_inferenceEngine = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1]);
      }

      if (BYTE6(self->_previousPTS.epoch) == 1)
      {
        v70[0] = 0x1F219EE10;
        v70[1] = 0x1F219EE70;
        v71[0] = 0x1F21AAED0;
        v72[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
        v71[1] = 0x1F21AAEF0;
        v69[0] = 0x1F219EE30;
        v69[1] = 0x1F219EE90;
        v72[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
        v71[2] = 0x1F21AAF10;
        v68[0] = 0x1F219EE50;
        v68[1] = 0x1F219EEB0;
        v72[2] = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:3];
        if ([v44 objectForKeyedSubscript:key])
        {
          v45 = [objc_msgSend(v44 objectForKeyedSubscript:{key), "objectAtIndexedSubscript:", 0}];
          v46 = [objc_msgSend(v44 objectForKeyedSubscript:{key), "objectAtIndexedSubscript:", 1}];
          [(BWVideoFormat *)self->_anstMaskVideoFormat setObject:self->_inferenceEngine forKeyedSubscript:v45];
          [(BWVideoFormat *)self->_anstMaskVideoFormat setObject:self->_inferenceEngine forKeyedSubscript:v46];
        }

        [(NSMutableDictionary *)self->_processorPixelBufferPoolsByAttachedMediaKeys setObject:self->_inferenceEngine forKeyedSubscript:key];
      }

      if (self->_propagateMasks)
      {
        v47 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [format pixelBufferAttributes]);
        v48 = objc_alloc_init(BWNodeOutputMediaConfiguration);
        if (!v48)
        {
          [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
          return;
        }

        v49 = v48;
        [(BWNodeOutputMediaConfiguration *)v48 setFormatRequirements:v47];
        [(BWNodeOutputMediaConfiguration *)v49 setPassthroughMode:0];
        [(BWNodeOutputMediaConfiguration *)v49 setProvidesPixelBufferPool:1];
        [(BWNodeOutputMediaConfiguration *)v49 setOwningNodeRetainedBufferCount:v9 + 2 + self->_propagateMasks];
        [(BWNodeOutputMediaConfiguration *)v49 setOwningNodeIndefinitelyHeldBufferCount:1];
        [(BWNodeOutput *)self->super._output setMediaConfiguration:v49 forAttachedMediaKey:key];
        v67 = v47;
        inferenceEngine = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1]);
        v51 = 328;
      }

      else
      {
        if (!self->_generateCoefficients && BYTE6(self->_previousPTS.epoch) != 1)
        {
          return;
        }

        [(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey setObject:self->_inferenceEngine forKeyedSubscript:key];
        inferenceEngine = self->_inferenceEngine;
        v51 = 344;
      }

      [*(&self->super.super.isa + v51) setObject:inferenceEngine forKeyedSubscript:key];
      return;
    }

    if (([key isEqualToString:0x1F21AB1D0] & 1) == 0)
    {
      v66.receiver = self;
      v66.super_class = BWSmartStyleLearningNode;
      [(BWNode *)&v66 didSelectFormat:format forInput:input forAttachedMediaKey:key];
    }
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if ([(NSArray *)[(BWNode *)self inputs:d] objectAtIndexedSubscript:0]== input)
  {
    output = self->super._output;

    [(BWNodeOutput *)output makeConfiguredFormatLive];
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if ([(NSArray *)[(BWNode *)self inputs] objectAtIndexedSubscript:0]== input)
  {
    dispatch_sync(*&self->_timeInSecondsUntilNextStatsUpdate, &__block_literal_global_65);
    [(BWNodeOutput *)self->super._output markEndOfLiveOutputForConfigurationID:d];
    if (!d)
    {
      os_unfair_lock_lock(&self->_inputMasksSampleBufferQueueLock);
      [(NSMutableArray *)self->_inputMasksSampleBufferQueue removeAllObjects];
      os_unfair_lock_unlock(&self->_inputMasksSampleBufferQueueLock);
      os_unfair_lock_lock(&self->_inputStyleContainerSampleBufferQueueLock);
      [(NSMutableArray *)self->_inputStyleContainerSampleBufferQueue removeAllObjects];
      os_unfair_lock_unlock(&self->_inputStyleContainerSampleBufferQueueLock);
      learnedCoefficientsSampleBuffer = self->_learnedCoefficientsSampleBuffer;
      if (learnedCoefficientsSampleBuffer)
      {
        CFRelease(learnedCoefficientsSampleBuffer);
        self->_learnedCoefficientsSampleBuffer = 0;
      }

      identityCoefficientsPixelBuffer = self->_identityCoefficientsPixelBuffer;
      if (identityCoefficientsPixelBuffer)
      {
        CFRelease(identityCoefficientsPixelBuffer);
        self->_identityCoefficientsPixelBuffer = 0;
      }

      initialCoefficientsPixelBuffer = self->_initialCoefficientsPixelBuffer;
      if (initialCoefficientsPixelBuffer)
      {
        CFRelease(initialCoefficientsPixelBuffer);
        self->_initialCoefficientsPixelBuffer = 0;
      }

      [(BWSmartStyleLearningNode *)self _releaseResources];
    }
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3 = MEMORY[0x1E6960C70];
  *(&self->_preLTMThumbnailFound + 3) = *MEMORY[0x1E6960C70];
  *&self->_previousPTS.flags = *(v3 + 16);
  v84.receiver = self;
  v84.super_class = BWSmartStyleLearningNode;
  [(BWNode *)&v84 prepareForCurrentConfigurationToBecomeLive];
  LOBYTE(self->_cameraInfoByPortType) = !self->_bypassStyleEngineForStandardStyle;
  os_unfair_lock_lock(&self->_statsUpdateDeltaTimeThreshold);
  self->_timingLock._os_unfair_lock_opaque = 0;
  self->_anstMasksMatchingTimeInSecondsThreshold = 0.0;
  os_unfair_lock_unlock(&self->_statsUpdateDeltaTimeThreshold);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(*&self->_timeInSecondsUntilNextStatsUpdate, block);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  refinedVideoFormatByAttachedMediaKey = self->_refinedVideoFormatByAttachedMediaKey;
  v5 = [(NSMutableDictionary *)refinedVideoFormatByAttachedMediaKey countByEnumeratingWithState:&v79 objects:v78 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v80;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v80 != v7)
        {
          objc_enumerationMutation(refinedVideoFormatByAttachedMediaKey);
        }

        v9 = *(*(&v79 + 1) + 8 * i);
        if ([(BWNodeOutput *)self->super._output mediaConfigurationForAttachedMediaKey:v9])
        {
          v10 = [-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->super._output mediaPropertiesForAttachedMediaKey:{v9), "preparedPixelBufferPool"}];
          if (!v10)
          {
            [BWSmartStyleLearningNode prepareForCurrentConfigurationToBecomeLive];
LABEL_53:
            v22 = 0;
            goto LABEL_54;
          }

          v11 = v10;
          [(NSMutableDictionary *)self->_processorVideoFormatsByAttachedMediaKeys setObject:v10 forKeyedSubscript:v9];
        }
      }

      v6 = [(NSMutableDictionary *)refinedVideoFormatByAttachedMediaKey countByEnumeratingWithState:&v79 objects:v78 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = self->_processorPixelBufferPoolsByAttachedMediaKeys;
  v12 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v74 objects:v73 count:16];
  if (v12)
  {
    v13 = v12;
    v69 = *v75;
    while (2)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v75 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v74 + 1) + 8 * j);
        v16 = [MEMORY[0x1E695DFD8] setWithObjects:{0x1F21AAED0, 0x1F21AAEF0, 0x1F21AAF10, 0x1F21AAF30, 0}];
        if (BYTE6(self->_previousPTS.epoch) == 1)
        {
          if ([v16 containsObject:v15])
          {
            v17 = 5;
          }

          else
          {
            v17 = 3;
          }
        }

        else
        {
          v17 = 3;
        }

        v18 = [(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey objectForKeyedSubscript:v15];
        v19 = [BWPixelBufferPool alloc];
        v20 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:](v19, "initWithVideoFormat:capacity:name:memoryPool:", v18, v17, [MEMORY[0x1E696AEC0] stringWithFormat:@"SmartStyleLearningNode_%@_Pool", v15], -[BWNodeOutput memoryPool](self->super._output, "memoryPool"));
        if (!v20)
        {
          [BWSmartStyleLearningNode prepareForCurrentConfigurationToBecomeLive];
          goto LABEL_53;
        }

        v21 = v20;
        [(NSMutableDictionary *)self->_intermediateVideoFormatsByAttachedMediaKeys setObject:v20 forKeyedSubscript:v15];
      }

      v13 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v74 objects:v73 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  os_unfair_lock_lock(&self->_styleUpdateLock);
  v22 = [*&self->_disableWaitForCoefficientsOnFirstFrame copy];
  os_unfair_lock_unlock(&self->_styleUpdateLock);
  if (!v22)
  {
    LODWORD(v23) = 1.0;
    v22 = [FigCaptureSmartStyle styleWithCast:FigSmartStyleCastTypeStandard intensity:v23 toneBias:0.0 colorBias:0.0];
    if (!v22)
    {
      [BWSmartStyleLearningNode prepareForCurrentConfigurationToBecomeLive];
      goto LABEL_54;
    }
  }

  v24 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:0x1F21AB070];
  if (!v24)
  {
    [BWSmartStyleLearningNode prepareForCurrentConfigurationToBecomeLive];
    goto LABEL_54;
  }

  v25 = [objc_msgSend(v24 "preparedPixelBufferPool")];
  if (!v25)
  {
    [BWSmartStyleLearningNode prepareForCurrentConfigurationToBecomeLive];
    goto LABEL_54;
  }

  v26 = v25;
  v27 = MEMORY[0x1E6991700];
  cast = [(FigCaptureSmartStyle *)v22 cast];
  [(FigCaptureSmartStyle *)v22 toneBias];
  v30 = v29;
  [(FigCaptureSmartStyle *)v22 colorBias];
  v32 = v31;
  [(FigCaptureSmartStyle *)v22 intensity];
  LODWORD(v34) = v33;
  LODWORD(v35) = 1.0;
  LODWORD(v36) = v30;
  LODWORD(v37) = v32;
  [v27 calculateStartupPriorCCMforCast:cast tone:v36 color:v37 intensity:v34 priorStrength:v35];
  v70 = v39;
  v71 = v38;
  v68 = v40;
  v41 = [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v85[0] = v71;
  v85[1] = v70;
  v85[2] = v68;
  if (!v41)
  {
    [(BWSmartStyleLearningNode *)v86 prepareForCurrentConfigurationToBecomeLive];
    goto LABEL_61;
  }

  v42 = v41;
  PixelFormatType = CVPixelBufferGetPixelFormatType(v26);
  v44 = PixelFormatType;
  if (PixelFormatType == 1278226534 || PixelFormatType == 1278226536)
  {
    [v42 spotlightCount];
    v46 = v45;
    [v42 spotlightCount];
    v72 = v47;
    weightPlaneCount = [v42 weightPlaneCount];
    createAndSolveGlobalLinearSystem = [v42 createAndSolveGlobalLinearSystem];
    v50 = CVPixelBufferLockBaseAddress(v26, 0);
    if (v50)
    {
      [(BWSmartStyleLearningNode *)v50 prepareForCurrentConfigurationToBecomeLive];
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(v26);
      v52 = (vmul_lane_s32(v46, v72, 1).u32[0] + createAndSolveGlobalLinearSystem) * weightPlaneCount;
      if (v44 == 1278226536)
      {
        if (v52 >= 1)
        {
          for (k = 0; k != v52; ++k)
          {
            v54 = 0;
            v55 = BaseAddress;
            do
            {
              for (m = 0; m != 3; ++m)
              {
                _S0 = *(&v85[m] & 0xFFFFFFFFFFFFFFF3 | (4 * (v54 & 3)));
                __asm { FCVT            H0, S0 }

                *&v55[2 * m] = _S0;
              }

              ++v54;
              v55 += 6;
            }

            while (v54 != 4);
            BaseAddress += 24;
          }
        }
      }

      else if (v52 >= 1)
      {
        for (n = 0; n != v52; ++n)
        {
          v63 = 0;
          v64 = BaseAddress;
          do
          {
            for (ii = 0; ii != 3; ++ii)
            {
              *&v64[4 * ii] = *(&v85[ii] & 0xFFFFFFFFFFFFFFF3 | (4 * (v63 & 3)));
            }

            ++v63;
            v64 += 12;
          }

          while (v63 != 4);
          BaseAddress += 48;
        }
      }

      v66 = CVPixelBufferUnlockBaseAddress(v26, 0);
      if (!v66)
      {
        goto LABEL_50;
      }

      [(BWSmartStyleLearningNode *)v66 prepareForCurrentConfigurationToBecomeLive];
    }

LABEL_61:
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_54;
  }

  fig_log_get_emitter();
  FigDebugAssert3();
LABEL_50:
  self->_initialStyle = v22;
  self->_initialCoefficientsPixelBuffer = v26;
LABEL_54:
}

uint64_t __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 144) setup])
  {
    return __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  if (*(v2 + 284))
  {
    v3 = 9;
  }

  else
  {
    v3 = 8;
  }

  v4 = *(v2 + 144);
  v5 = objc_alloc(MEMORY[0x1E69916C8]);
  v17 = @"ProcessingType";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v6 = [v5 initWithMaxInputDimensions:0 inputPixelFormat:0 maxOutputDimensions:0 cmiResourceEnabled:0 processorSpecificOptions:objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)];
  if (v6)
  {
    v7 = [v4 externalMemoryDescriptorForConfiguration:v6];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E6991758]) initWithDevice:objc_msgSend(objc_msgSend(v4 allocatorType:{"metalCommandQueue"), "device"), objc_msgSend(v7, "allocatorType")}];
      if (v8)
      {
        v9 = objc_opt_new();
        if (v9)
        {
          [v9 setMemSize:{objc_msgSend(v7, "memSize")}];
          [v9 setWireMemory:1];
          [v9 setLabel:@"BWSmartStyleLearningNode-FigMetalAllocatorBackend"];
          [v9 setMemoryPoolId:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
          v10 = [v8 setupWithDescriptor:v9];
          if (v10)
          {
            v13 = v10;
            v12 = 0;
          }

          else
          {
            v11 = objc_opt_new();
            v12 = v11;
            if (v11)
            {
              [v11 setAllocatorBackend:v8];
              [v4 setExternalMemoryResource:v12];
              v15 = @"MemoryPoolId";
              v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
              [v4 setTuningParameters:{objc_msgSend(objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v16, &v15, 1), "cmi_dictionaryMergedWithDefaultDict:", objc_msgSend(v4, "tuningParameters"))}];
              v13 = 0;
            }

            else
            {
              v13 = -12786;
            }
          }

          goto LABEL_12;
        }
      }

      else
      {
        v9 = 0;
      }

      v12 = 0;
    }

    else
    {
      v9 = 0;
      v12 = 0;
      v8 = 0;
    }
  }

  else
  {
    v9 = 0;
    v12 = 0;
    v8 = 0;
    v7 = 0;
  }

  v13 = -12786;
LABEL_12:

  if (v13)
  {
    return __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke_cold_2();
  }

  result = [*(*(a1 + 32) + 144) prepareToProcess:v3];
  if (result)
  {
    return __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke_cold_3();
  }

  return result;
}

void __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 304) prepareForInferenceWithFormatProvider:*(a1 + 32) pixelBufferPoolProvider:*(a1 + 32)];
  os_unfair_lock_lock((*(a1 + 32) + 292));
  *(*(a1 + 32) + 290) = v2 == 0;
  v3 = (*(a1 + 32) + 292);

  os_unfair_lock_unlock(v3);
}

- (int)processMaskSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (self && ([(BWSmartStyleLearningNode *)self _getSampleBufferPresentationTimeStamp:?], epoch = time.epoch, value = time.value, flags = time.flags, timescale = time.timescale, (time.flags & 1) != 0))
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      time.value = value;
      time.timescale = timescale;
      CMTimeGetSeconds(&time);
      kdebug_trace();
    }

    time.value = value;
    time.timescale = timescale;
    time.flags = flags;
    time.epoch = epoch;
    v7 = [(BWSmartStyleLearningNode *)self _extractANSTMasks:buffer forPTS:&time];
    if (v7)
    {
      [BWSmartStyleLearningNode processMaskSampleBuffer:];
    }
  }

  else
  {
    [BWSmartStyleLearningNode processMaskSampleBuffer:];
    return 0;
  }

  return v7;
}

- (int)processVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer frameEmitted:(BOOL *)emitted
{
  v96 = 0;
  v97 = 0;
  v94 = 0;
  sampleBufferOut = 0;
  v92 = 0;
  v93 = 0;
  v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  v91 = 0;
  if (!self)
  {
    timescale = 0;
    value = 0;
    goto LABEL_65;
  }

  [(BWSmartStyleLearningNode *)self _getSampleBufferPresentationTimeStamp:?];
  epoch = time.duration.epoch;
  value = time.duration.value;
  flags = time.duration.flags;
  timescale = time.duration.timescale;
  if ((time.duration.flags & 1) == 0)
  {
LABEL_65:
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
LABEL_66:
    v50 = 0;
    lastObject = 0;
    v49 = 0;
    goto LABEL_125;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    time.duration.value = value;
    time.duration.timescale = timescale;
    CMTimeGetSeconds(&time.duration);
    kdebug_trace();
  }

  v10 = &self->_preLTMThumbnailFound + 3;
  if (self->_previousPTS.timescale)
  {
    time.duration.value = value;
    time.duration.timescale = timescale;
    time.duration.flags = flags;
    time.duration.epoch = epoch;
    Seconds = CMTimeGetSeconds(&time.duration);
    *&time.duration.value = *v10;
    time.duration.epoch = *&self->_previousPTS.flags;
    v11 = Seconds - CMTimeGetSeconds(&time.duration);
  }

  else
  {
    v11 = 1.0 / HIDWORD(self->_lastLearnedPortType);
  }

  *v10 = value;
  HIDWORD(self->_previousPTS.value) = timescale;
  self->_previousPTS.timescale = flags;
  *&self->_previousPTS.flags = epoch;
  v13 = [(BWSmartStyleLearningNode *)self _unpackSbufFromPrimaryCameraStream:buffer];
  v14 = CMGetAttachment(v13, *off_1E798A3C8, 0);
  if (!v14)
  {
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    goto LABEL_66;
  }

  v15 = v14;
  os_unfair_lock_lock(&self->_styleUpdateLock);
  v77 = epoch;
  if (LOBYTE(self->_mostRecentLearnedSkyMaskSampleBuffer) == 1 && (v16 = [*&self->_disableWaitForCoefficientsOnFirstFrame cast], objc_msgSend(v16, "isEqual:", FigSmartStyleCastTypeStandard)) && (objc_msgSend(*&self->_disableWaitForCoefficientsOnFirstFrame, "toneBias"), v17 == 0.0))
  {
    [*&self->_disableWaitForCoefficientsOnFirstFrame colorBias];
    v19 = v18 == 0.0;
  }

  else
  {
    v19 = 0;
  }

  dictionaryRepresentation = [*&self->_disableWaitForCoefficientsOnFirstFrame dictionaryRepresentation];
  os_unfair_lock_unlock(&self->_styleUpdateLock);
  [(BWSmartStyleLearningNode *)self _updateCurrentSmartStyleMetadata:dictionaryRepresentation onSbuf:buffer];
  os_unfair_lock_lock(&self->_statsUpdateDeltaTimeThreshold);
  v21 = *&self->_timingLock._os_unfair_lock_opaque;
  anstMasksMatchingTimeInSecondsThreshold = self->_anstMasksMatchingTimeInSecondsThreshold;
  os_unfair_lock_unlock(&self->_statsUpdateDeltaTimeThreshold);
  v23 = [v15 objectForKeyedSubscript:*off_1E798B540];
  v24 = v23;
  if (*&self->_firstFrame)
  {
    if ([v23 isEqualToString:?])
    {
      goto LABEL_19;
    }

    v25 = *&self->_firstFrame;
  }

  else
  {
    v25 = 0;
  }

  *&self->_firstFrame = v24;
  LOBYTE(self->_cameraInfoByPortType) = 1;
  anstMasksMatchingTimeInSecondsThreshold = 0.0;
  v21 = 0.0;
LABEL_19:
  v26 = [(BWSmartStyleLearningNode *)self _getContainerAssetsFromSampleBuffer:v13 outputUnstyledThumbnailSampleBuffer:&v94 outputLinearThumbnailSampleBuffer:&v93];
  if (v26)
  {
    v49 = v26;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
LABEL_150:
    v50 = 0;
    lastObject = 0;
    goto LABEL_151;
  }

  BWSampleBufferSetAttachedMedia(v13, 0x1F21AB0D0, v94);
  BWSampleBufferSetAttachedMedia(v13, 0x1F21AB110, v93);
  os_unfair_lock_lock(&self->_workQueue);
  learnedCoefficientsSampleBuffer = self->_learnedCoefficientsSampleBuffer;
  if (learnedCoefficientsSampleBuffer)
  {
    BWSampleBufferSetAttachedMedia(v13, 0x1F21AB070, learnedCoefficientsSampleBuffer);
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*&self->_srlStats);
    [v15 setObject:DictionaryRepresentation forKeyedSubscript:*off_1E798A8F0];
    [v15 setObject:self->_smartStyleLearned forKeyedSubscript:*off_1E798A920];
    v29 = *&self->_smartStyleRenderingRequiredForSRL;
    if (!v29)
    {
      v29 = objc_opt_new();
    }

    [v15 setObject:v29 forKeyedSubscript:*off_1E798A928];
    [v15 setObject:objc_msgSend(*&self->_workQueueLearnCount forKeyedSubscript:{"dictionaryRepresentation"), *off_1E798A8F8}];
    [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", LOBYTE(self->_srlCurveParameter)), *off_1E798A910}];
    goto LABEL_30;
  }

  v89 = 0;
  v90 = 0;
  memset(&time, 0, sizeof(time));
  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v13, 1, &time, 0);
  if (SampleTimingInfoArray)
  {
    v49 = SampleTimingInfoArray;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    goto LABEL_150;
  }

  initialCoefficientsPixelBuffer = self->_initialCoefficientsPixelBuffer;
  sampleTiming = time;
  v32 = BWSampleBufferCreateFromPixelBufferWithTimingInfo(initialCoefficientsPixelBuffer, &sampleTiming, &v90, &v89);
  if (v32)
  {
    v49 = v32;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    goto LABEL_150;
  }

  v100.origin.x = 0.0;
  v100.origin.y = 0.0;
  v100.size.width = 1.0;
  v100.size.height = 1.0;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v100);
  BWSampleBufferSetAttachedMedia(v13, 0x1F21AB070, v89);
  [v15 setObject:DictionaryRepresentation forKeyedSubscript:*off_1E798A8F0];
  [v15 setObject:-[FigCaptureSmartStyle dictionaryRepresentation](self->_initialStyle forKeyedSubscript:{"dictionaryRepresentation"), *off_1E798A8F8}];
  [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", LOBYTE(self->_srlCurveParameter)), *off_1E798A910}];
  if (v89)
  {
    CFRelease(v89);
  }

  if (v90)
  {
    CFRelease(v90);
  }

LABEL_30:

  os_unfair_lock_unlock(&self->_workQueue);
  v33 = [-[FigMetalContext device](self->_metalContext "device")];
  if (!v33)
  {
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    v50 = 0;
    lastObject = 0;
    v49 = -12786;
LABEL_151:
    v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
    goto LABEL_125;
  }

  v75 = v19;
  v78 = v33;
  CMSetAttachment(v13, *off_1E798A4C0, v33, 1u);
  if (BYTE5(self->_previousPTS.epoch) == 1 && self->_currentImageStats && self->_currentImageStatsExtended)
  {
    [v15 setObject:? forKeyedSubscript:?];
    [v15 setObject:self->_currentImageStatsExtended forKeyedSubscript:*off_1E798A8D8];
  }

  os_unfair_lock_lock(&self->_semanticStyleSceneLock);
  [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_semanticStyleSceneType), *off_1E798A898}];
  os_unfair_lock_unlock(&self->_semanticStyleSceneLock);
  os_unfair_lock_lock(&self->_lastLearnedROI.size.height);
  v34 = BYTE4(self->_lastLearnedROI.size.height);
  if (self->_propagateMasks && BYTE4(self->_lastLearnedROI.size.height))
  {
    BWSampleBufferSetAttachedMedia(v13, 0x1F21AAED0, *&self->_mostRecentMasksLock._os_unfair_lock_opaque);
    BWSampleBufferSetAttachedMedia(v13, 0x1F21AAEF0, self->_mostRecentLearnedPersonMaskSampleBuffer);
    BWSampleBufferSetAttachedMedia(v13, 0x1F21AAF30, self->_mostRecentLearnedSkinMaskSampleBuffer);
    BYTE4(self->_lastLearnedROI.size.height) = 0;
  }

  os_unfair_lock_unlock(&self->_lastLearnedROI.size.height);
  [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v34), *off_1E798A8E8}];
  if (self->_propagateMasks && v34)
  {
    BWSynchronizeSmartStyleAttachedMediaPTS(v13);
  }

  v35 = BWCMSampleBufferCreateCopyIncludingMetadata(v13, &sampleBufferOut);
  if (v35)
  {
    v49 = v35;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
LABEL_145:
    lastObject = 0;
    goto LABEL_104;
  }

  BWSampleBufferRemoveAttachedMedia(v13, 0x1F21AB1D0);
  BWSampleBufferRemoveAttachedMedia(v13, 0x1F21AB1F0);
  os_unfair_lock_lock(&self->_workQueue);
  workQueue_high = HIDWORD(self->_workQueue);
  os_unfair_lock_unlock(&self->_workQueue);
  if (workQueue_high > 1)
  {
    time.duration.value = value;
    time.duration.timescale = timescale;
    time.duration.flags = flags;
    time.duration.epoch = v77;
    v39 = [BWDroppedSample newDroppedSampleWithReason:0x1F219C190 pts:&time];
    LODWORD(v90) = 0;
    LOBYTE(v89) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v41 = v90;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v89))
    {
      v42 = v41;
    }

    else
    {
      v42 = v41 & 0xFFFFFFFE;
    }

    if (v42)
    {
      if (v39)
      {
        [v39 pts];
      }

      else
      {
        memset(&time, 0, 24);
      }

      v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
      *&v48 = CMTimeGetSeconds(&time.duration);
      LODWORD(sampleTiming.duration.value) = 136315906;
      *(&sampleTiming.duration.value + 4) = "[BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:]";
      LOWORD(sampleTiming.duration.flags) = 2112;
      *(&sampleTiming.duration.flags + 2) = self;
      HIWORD(sampleTiming.duration.epoch) = 2048;
      sampleTiming.presentationTimeStamp.value = v48;
      LOWORD(sampleTiming.presentationTimeStamp.timescale) = 2048;
      *(&sampleTiming.presentationTimeStamp.timescale + 2) = v11;
      _os_log_send_and_compose_impl();
    }

    else
    {
      v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [(BWNodeOutput *)self->super._output emitDroppedSample:v39];

    lastObject = 0;
    v49 = 0;
    *emitted = 1;
    goto LABEL_124;
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
  *emitted = 1;
  v37 = [(BWSmartStyleLearningNode *)self _createSmartStyleContainerFromSampleBuffer:sampleBufferOut unstyledThumbnailSampleBuffer:v94 linearThumbnailSampleBuffer:v93 to:&v97];
  if (v37)
  {
    v49 = v37;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    goto LABEL_145;
  }

  os_unfair_lock_lock(&self->_inputStyleContainerSampleBufferQueueLock);
  [(NSMutableArray *)self->_inputStyleContainerSampleBufferQueue addObject:v97];
  os_unfair_lock_unlock(&self->_inputStyleContainerSampleBufferQueueLock);
  if (BWSampleBufferGetAttachedMedia(sampleBufferOut, @"LTMThumbnail"))
  {
    v38 = 1;
  }

  else
  {
    v38 = BWSampleBufferGetAttachedMedia(sampleBufferOut, @"PreLTMThumbnail") != 0;
  }

  v43 = (LODWORD(self->_lastLearnedPortType) / HIDWORD(self->_lastLearnedPortType)) * 0.05;
  if (v21 > v43)
  {
    v46 = 0;
    currentImageStats = 0;
    lastObject = 0;
    goto LABEL_87;
  }

  if ((self->_previousPTS.epoch & 0x1000000000000) != 0)
  {
    os_unfair_lock_lock(&self->_gdcAttachmentsEnabled);
    runVMRefiner = self->_runVMRefiner;
    os_unfair_lock_unlock(&self->_gdcAttachmentsEnabled);
    lock = &self->_inputMasksSampleBufferQueueLock;
    os_unfair_lock_lock(&self->_inputMasksSampleBufferQueueLock);
    if (runVMRefiner)
    {
      lastObject = [(NSMutableArray *)self->_inputMasksSampleBufferQueue lastObject];
      if (lastObject)
      {
        [(BWSmartStyleLearningNode *)self _findCorrespondingSmartStyleContainerWithMasks:lastObject outputSmartStyleContainer:&v96];
      }

      goto LABEL_78;
    }
  }

  else
  {
    lock = &self->_inputMasksSampleBufferQueueLock;
    os_unfair_lock_lock(&self->_inputMasksSampleBufferQueueLock);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  inputMasksSampleBufferQueue = self->_inputMasksSampleBufferQueue;
  v52 = [(NSMutableArray *)inputMasksSampleBufferQueue countByEnumeratingWithState:&v83 objects:v82 count:16];
  if (v52)
  {
    v53 = v52;
    v74 = v38;
    v54 = *v84;
LABEL_69:
    v55 = 0;
    while (1)
    {
      if (*v84 != v54)
      {
        objc_enumerationMutation(inputMasksSampleBufferQueue);
      }

      lastObject = *(*(&v83 + 1) + 8 * v55);
      if (![(BWSmartStyleLearningNode *)self _findCorrespondingSmartStyleContainerWithMasks:lastObject outputSmartStyleContainer:&v96])
      {
        break;
      }

      if (v53 == ++v55)
      {
        v53 = [(NSMutableArray *)inputMasksSampleBufferQueue countByEnumeratingWithState:&v83 objects:v82 count:16];
        if (v53)
        {
          goto LABEL_69;
        }

        lastObject = 0;
        break;
      }
    }

    v38 = v74;
  }

  else
  {
    lastObject = 0;
  }

LABEL_78:
  v56 = lastObject;
  os_unfair_lock_unlock(lock);
  os_unfair_lock_lock(&self->_statsUpdateDeltaTimeThreshold);
  *&self->_timingLock._os_unfair_lock_opaque = LODWORD(self->_lastLearnedPortType) / HIDWORD(self->_lastLearnedPortType);
  os_unfair_lock_unlock(&self->_statsUpdateDeltaTimeThreshold);
  if (LODWORD(self->_lastLearnedPortType) >= 4 && !v38 && ![v15 objectForKeyedSubscript:*off_1E798B458])
  {
    os_unfair_lock_lock(&self->_statsUpdateDeltaTimeThreshold);
    *&self->_timingLock._os_unfair_lock_opaque = *&self->_timingLock._os_unfair_lock_opaque * 0.5;
    os_unfair_lock_unlock(&self->_statsUpdateDeltaTimeThreshold);
  }

  v46 = 0;
  if (BYTE5(self->_previousPTS.epoch) == 1 && anstMasksMatchingTimeInSecondsThreshold <= 0.0)
  {

    v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_currentImageStats = v57;
    if (!v57)
    {
      [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
      goto LABEL_154;
    }

    v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_currentImageStatsExtended = v58;
    if (!v58)
    {
      [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
      goto LABEL_154;
    }

    v46 = v58;
    currentImageStats = self->_currentImageStats;
    os_unfair_lock_lock(&self->_statsUpdateDeltaTimeThreshold);
    LODWORD(self->_anstMasksMatchingTimeInSecondsThreshold) = self->_learningFramesPerSecondUnit;
    os_unfair_lock_unlock(&self->_statsUpdateDeltaTimeThreshold);
  }

  else
  {
    currentImageStats = 0;
  }

LABEL_87:
  os_unfair_lock_lock(&self->_statsUpdateDeltaTimeThreshold);
  *&self->_timingLock._os_unfair_lock_opaque = *&self->_timingLock._os_unfair_lock_opaque - v11;
  self->_anstMasksMatchingTimeInSecondsThreshold = self->_anstMasksMatchingTimeInSecondsThreshold - v11;
  os_unfair_lock_unlock(&self->_statsUpdateDeltaTimeThreshold);
  v59 = BWCMSampleBufferCreateCopyIncludingMetadata(v93, &v92);
  if (v59)
  {
    v49 = v59;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    goto LABEL_104;
  }

  v60 = BWCMSampleBufferCreateCopyIncludingMetadata(v94, &v91);
  if (v60)
  {
    v49 = v60;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    goto LABEL_104;
  }

  os_unfair_lock_lock(&self->_workQueue);
  ++HIDWORD(self->_workQueue);
  os_unfair_lock_unlock(&self->_workQueue);
  if (sampleBufferOut)
  {
    CFRetain(sampleBufferOut);
  }

  if (v92)
  {
    CFRetain(v92);
  }

  if (v91)
  {
    CFRetain(v91);
    v61 = v91;
  }

  else
  {
    v61 = 0;
  }

  v62 = *&self->_timeInSecondsUntilNextStatsUpdate;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__BWSmartStyleLearningNode_processVideoSampleBuffer_frameEmitted___block_invoke;
  block[3] = &unk_1E7997200;
  block[6] = sampleBufferOut;
  block[7] = v92;
  block[8] = v61;
  block[4] = self;
  block[5] = v78;
  dispatch_async(v62, block);
  os_unfair_lock_lock(&self->_workQueue);
  os_unfair_lock_opaque = self->_workQueueLock._os_unfair_lock_opaque;
  os_unfair_lock_unlock(&self->_workQueue);
  if (v21 > v43)
  {
    v49 = 0;
LABEL_104:
    v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
LABEL_124:
    v50 = v78;
    goto LABEL_125;
  }

  if (!os_unfair_lock_opaque)
  {
    if (v96)
    {
      v67 = v96;
    }

    else
    {
      v67 = v97;
    }

    time.duration.value = 0;
    CopyIncludingMetadata = BWCMSampleBufferCreateCopyIncludingMetadata(v67, &time);
    if (CopyIncludingMetadata)
    {
      v49 = CopyIncludingMetadata;
      [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
      goto LABEL_104;
    }

    if (v96)
    {
      v69 = [(BWSmartStyleLearningNode *)self _deepCopyMasks:lastObject];
      if (!v69)
      {
        [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
LABEL_154:
        v49 = -12780;
        goto LABEL_104;
      }
    }

    else
    {
      v69 = 0;
    }

    os_unfair_lock_lock(&self->_styleUpdateLock);
    v70 = [*&self->_disableWaitForCoefficientsOnFirstFrame copy];
    os_unfair_lock_unlock(&self->_styleUpdateLock);
    os_unfair_lock_lock(&self->_workQueue);
    ++self->_workQueueLock._os_unfair_lock_opaque;
    os_unfair_lock_unlock(&self->_workQueue);
    if (time.duration.value)
    {
      CFRetain(time.duration.value);
    }

    v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
    if (sampleBufferOut)
    {
      CFRetain(sampleBufferOut);
      v71 = sampleBufferOut;
    }

    else
    {
      v71 = 0;
    }

    v72 = *&self->_timeInSecondsUntilNextStatsUpdate;
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __66__BWSmartStyleLearningNode_processVideoSampleBuffer_frameEmitted___block_invoke_89;
    v79[3] = &unk_1E7997228;
    v79[9] = time.duration.value;
    v79[10] = v71;
    v79[4] = self;
    v79[5] = v69;
    v79[6] = currentImageStats;
    v79[7] = v46;
    v79[8] = v70;
    v80 = v75;
    dispatch_async(v72, v79);
    os_unfair_lock_lock(&self->_inputStyleContainerSampleBufferQueueLock);
    [(NSMutableArray *)self->_inputStyleContainerSampleBufferQueue removeObject:v67];
    os_unfair_lock_unlock(&self->_inputStyleContainerSampleBufferQueueLock);
    if (v96)
    {
      os_unfair_lock_lock(&self->_inputMasksSampleBufferQueueLock);
      [(NSMutableArray *)self->_inputMasksSampleBufferQueue removeObject:lastObject];
      os_unfair_lock_unlock(&self->_inputMasksSampleBufferQueueLock);
    }

    if (time.duration.value)
    {
      CFRelease(time.duration.value);
    }

    v49 = 0;
    goto LABEL_124;
  }

  LODWORD(v90) = 0;
  LOBYTE(v89) = 0;
  v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v65 = v90;
  if (os_log_type_enabled(v64, v89))
  {
    v66 = v65;
  }

  else
  {
    v66 = v65 & 0xFFFFFFFE;
  }

  if (v66)
  {
    LODWORD(sampleTiming.duration.value) = 136315394;
    *(&sampleTiming.duration.value + 4) = "[BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:]";
    LOWORD(sampleTiming.duration.flags) = 2048;
    *(&sampleTiming.duration.flags + 2) = v11;
    _os_log_send_and_compose_impl();
  }

  v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  v50 = v78;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v49 = 0;
  *&self->_timingLock._os_unfair_lock_opaque = v11;
LABEL_125:
  if (v97)
  {
    CFRelease(v97);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  os_unfair_lock_lock(&self->_inputStyleContainerSampleBufferQueueLock);
  if ([(NSMutableArray *)self->_inputStyleContainerSampleBufferQueue count]>= (LODWORD(self->_lastLearnedPortType) * (self->_learningRate / *(&self->super.super.isa + v5[586]))))
  {
    [(NSMutableArray *)self->_inputStyleContainerSampleBufferQueue removeObjectAtIndex:0];
  }

  os_unfair_lock_unlock(&self->_inputStyleContainerSampleBufferQueueLock);
  return v49;
}

uint64_t __66__BWSmartStyleLearningNode_processVideoSampleBuffer_frameEmitted___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _asynchronouslyRenderSampleBuffer:*(a1 + 48) outputLinearThumbnailSampleBuffer:*(a1 + 56) outputUnstyledThumbnailSampleBuffer:*(a1 + 64) synchronizingEvent:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);

  return [v5 _asynchronouslyDecrementRenderCount];
}

uint64_t __66__BWSmartStyleLearningNode_processVideoSampleBuffer_frameEmitted___block_invoke_89(uint64_t a1)
{
  LOBYTE(v6) = *(a1 + 88);
  [*(a1 + 32) _asynchronouslyLearnWithContainer:*(a1 + 72) inputUnstyledSampleBuffer:*(a1 + 80) withUnrefinedMasks:*(a1 + 40) withStats:*(a1 + 48) withStatsExtended:*(a1 + 56) styleToLearn:*(a1 + 64) shouldBypass:v6];
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);

  return [v4 _asynchronouslyDecrementLearnCount];
}

- (void)loadInferenceNetwork
{
  if (BYTE6(self->_previousPTS.epoch) == 1)
  {
    v4 = [(BWInferenceScheduler *)self->_inferenceScheduler prepareForInferenceWithFormatProvider:self pixelBufferPoolProvider:self];
    os_unfair_lock_lock(&self->_gdcAttachmentsEnabled);
    self->_runVMRefiner = v4 == 0;

    os_unfair_lock_unlock(&self->_gdcAttachmentsEnabled);
  }
}

- (id)_runInferences:(opaqueCMSampleBuffer *)inferences unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer withMasks:(id)masks currentPTS:(id *)s
{
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  formatDescriptionOut = 0;
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  v11 = &unk_1E799A000;
  v12 = &unk_1E799A000;
  if (!CMGetAttachment(buffer, *off_1E798A3C8, 0))
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
LABEL_43:
    v22 = 0;
    AttachedMedia = 0;
LABEL_54:
    v19 = 0;
    goto LABEL_28;
  }

  v13 = *off_1E798D298;
  v14 = [masks objectForKeyedSubscript:*off_1E798D298];
  if (!v14)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_43;
  }

  v15 = v14;
  AttachedMedia = BWSampleBufferGetAttachedMedia(inferences, 0x1F21AB0B0);
  if (!AttachedMedia)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
LABEL_53:
    v22 = 0;
    goto LABEL_54;
  }

  v39 = [v15 objectForKeyedSubscript:0x1F21AAED0];
  if (!v39)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_53;
  }

  v17 = [v15 objectForKeyedSubscript:?];
  if (!v17)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_53;
  }

  v18 = v17;
  v19 = [v15 objectForKeyedSubscript:?];
  if (!v19)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    v22 = 0;
    goto LABEL_28;
  }

  v20 = [v15 objectForKeyedSubscript:?];
  if (!v20)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_53;
  }

  v21 = v20;
  if (CMSampleBufferGetSampleTimingInfoArray(buffer, 1, &timingArrayOut, 0))
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_53;
  }

  v37 = v13;
  sCopy = s;
  BWSampleBufferSetAttachedMedia(AttachedMedia, 0x1F219EE10, v39);
  BWSampleBufferSetAttachedMedia(AttachedMedia, 0x1F219EE50, v18);
  BWSampleBufferSetAttachedMedia(AttachedMedia, 0x1F219EE30, v19);
  if ([(BWInferenceScheduler *)self->_inferenceScheduler performInferencesOnSampleBuffer:AttachedMedia attachingResultsToSampleBuffer:AttachedMedia])
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_53;
  }

  BWSampleBufferRemoveAttachedMedia(AttachedMedia, 0x1F219EE10);
  BWSampleBufferRemoveAttachedMedia(AttachedMedia, 0x1F219EE50);
  BWSampleBufferRemoveAttachedMedia(AttachedMedia, 0x1F219EE30);
  v22 = BWSampleBufferGetAttachedMedia(AttachedMedia, 0x1F219EE70);
  if (!v22)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_54;
  }

  v23 = BWSampleBufferGetAttachedMedia(AttachedMedia, 0x1F219EEB0);
  if (!v23)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_53;
  }

  v24 = v23;
  v25 = BWSampleBufferGetAttachedMedia(AttachedMedia, 0x1F219EE90);
  ImageBuffer = CMSampleBufferGetImageBuffer(v22);
  if (!ImageBuffer)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    v22 = 0;
    v19 = 0;
LABEL_63:
    v11 = &unk_1E799A000;
    goto LABEL_28;
  }

  v27 = ImageBuffer;
  v28 = CMSampleBufferGetImageBuffer(v24);
  if (!v28)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
LABEL_59:
    v22 = 0;
LABEL_62:
    v19 = 0;
    v12 = &unk_1E799A000;
    goto LABEL_63;
  }

  v29 = v28;
  v30 = CMSampleBufferGetImageBuffer(v25);
  if (!v30)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_59;
  }

  v31 = v30;
  v32 = CMSampleBufferGetImageBuffer(v21);
  if (!v32)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_59;
  }

  v33 = v32;
  v22 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_intermediateVideoFormatsByAttachedMediaKeys objectForKeyedSubscript:{0x1F21AAF30), "newPixelBuffer"}];
  if (!v22)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_62;
  }

  utilities = [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
  if ([utilities blitPixelBuffer:v33 inputValidBufferRect:v22 toPixelBuffer:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}])
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_62;
  }

  v35 = *MEMORY[0x1E695E480];
  v11 = &unk_1E799A000;
  if (CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x1E695E480], v27, &formatDescriptionOut))
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
  }

  else
  {
    time = timingArrayOut;
    if (!BWSampleBufferCreateFromPixelBufferWithTimingInfo(v27, &time, &formatDescriptionOut, &v50))
    {
      time = timingArrayOut;
      v12 = &unk_1E799A000;
      if (BWSampleBufferCreateFromPixelBufferWithTimingInfo(v29, &time, &formatDescriptionOut, &v49))
      {
        [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
      }

      else
      {
        time = timingArrayOut;
        if (BWSampleBufferCreateFromPixelBufferWithTimingInfo(v31, &time, &formatDescriptionOut, &v48))
        {
          [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
        }

        else
        {
          time = timingArrayOut;
          if (BWSampleBufferCreateFromPixelBufferWithTimingInfo(v22, &time, &formatDescriptionOut, &v47))
          {
            [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
          }

          else if (BWCMSampleBufferCopyMetadataToSampleBuffer(v39, v50))
          {
            [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
          }

          else if (BWCMSampleBufferCopyMetadataToSampleBuffer(v18, v49))
          {
            [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
          }

          else if (BWCMSampleBufferCopyMetadataToSampleBuffer(v19, v48))
          {
            [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
          }

          else
          {
            if (!BWCMSampleBufferCopyMetadataToSampleBuffer(v21, v47))
            {
              v42[0] = *off_1E798A420;
              *&time.duration.value = *&sCopy->var0;
              time.duration.epoch = sCopy->var3;
              v42[1] = v37;
              v43[0] = CMTimeCopyAsDictionary(&time.duration, v35);
              v40[0] = 0x1F21AAED0;
              v40[1] = 0x1F21AAEF0;
              v41[0] = v50;
              v41[1] = v49;
              v40[2] = 0x1F21AAF10;
              v40[3] = 0x1F21AAF30;
              v41[2] = v48;
              v41[3] = v47;
              v43[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:4];
              v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
              goto LABEL_28;
            }

            [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
          }
        }
      }

      goto LABEL_54;
    }

    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
  }

  v19 = 0;
  v12 = &unk_1E799A000;
LABEL_28:
  BWSampleBufferRemoveAttachedMedia(AttachedMedia, 0x1F219EE70);
  BWSampleBufferRemoveAttachedMedia(AttachedMedia, v11[188]);
  BWSampleBufferRemoveAttachedMedia(AttachedMedia, v12[187]);
  if (v22)
  {
    CFRelease(v22);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  return v19;
}

- (int)_loadAndConfigureSmartStyleBundle:(BOOL)bundle
{
  bundleCopy = bundle;
  v5 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleV%d", 1]);
  self->_smartStyleClass = v5;
  if (v5)
  {
    v6 = BWLoadProcessorBundle(@"SmartStyle", 1);
    if (v6 && (v7 = [objc_alloc(MEMORY[0x1E6991778]) initWithoutLibraryUsingOptionalCommandQueue:0], (self->_metalContext = v7) != 0))
    {
      v8 = FigDispatchQueueCreateWithPriority();
      if (v8)
      {
        commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
        if (commandQueue)
        {
          v10 = commandQueue;
          [commandQueue setSubmissionQueue:v8];
          [v10 setCompletionQueue:v8];
          [v10 setGPUPriority:4];
          v11 = [v6 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorV%d", 1)}];
          v12 = [[v11 alloc] initWithOptionalMetalCommandQueue:-[FigMetalContext commandQueue](self->_metalContext ispSMGProcessingSession:{"commandQueue"), -[BWFigCaptureISPProcessingSession figCaptureISPProcessingSession](self->_ispSMGProcessingSession, "figCaptureISPProcessingSession")}];
          self->_smartStyleProcessor = v12;
          if (v12)
          {
            [(CMISmartStyleProcessor *)v12 setInstanceLabel:@"LearningNode"];
            [(CMISmartStyleProcessor *)self->_smartStyleProcessor setUseLiveMetalAllocations:1];
            [(CMISmartStyleProcessor *)self->_smartStyleProcessor setUseSemanticSRLByDefault:HIDWORD(self->_mostRecentLearnedSkyMaskSampleBuffer) != 0];
            ispSMGProcessingSession = self->_ispSMGProcessingSession;
            if (bundleCopy)
            {
              v14 = ispSMGProcessingSession ? [(objc_class *)v11 getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatio]: [(objc_class *)v11 getDefaultProcessorConfigurationForStreamingSquareAspectRatio];
            }

            else
            {
              v14 = ispSMGProcessingSession ? [(objc_class *)v11 getDefaultProcessorConfigurationForStreamingAccelerated]: [(objc_class *)v11 getDefaultProcessorConfigurationForStreaming];
            }

            [(CMISmartStyleProcessor *)self->_smartStyleProcessor setConfiguration:v14];
            if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor configuration])
            {
              v15 = [v6 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorInputOutputV%d", 1)}];
              self->_smartStyleProcessorInputOutputClass = v15;
              if (v15)
              {

                return 0;
              }
            }
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  [(BWSmartStyleLearningNode *)v8 _loadAndConfigureSmartStyleBundle:v6, self];
  return -12786;
}

- (int)_extractANSTMasks:(opaqueCMSampleBuffer *)masks forPTS:(id *)s
{
  if (!masks)
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
LABEL_21:
    os_unfair_lock_lock(&self->_inputMasksSampleBufferQueueLock);
    [(NSMutableArray *)self->_inputMasksSampleBufferQueue removeAllObjects];
    os_unfair_lock_unlock(&self->_inputMasksSampleBufferQueueLock);
    return -12780;
  }

  AttachedMedia = BWSampleBufferGetAttachedMedia(masks, 0x1F21AAED0);
  if (!AttachedMedia)
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v8 = AttachedMedia;
  if (!CMSampleBufferGetImageBuffer(AttachedMedia))
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v9 = BWSampleBufferGetAttachedMedia(masks, 0x1F21AAF10);
  if (!v9)
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v10 = v9;
  if (!CMSampleBufferGetImageBuffer(v9))
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v11 = BWSampleBufferGetAttachedMedia(masks, 0x1F21AAEF0);
  if (!v11)
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v12 = v11;
  if (!CMSampleBufferGetImageBuffer(v11))
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v13 = BWSampleBufferGetAttachedMedia(masks, 0x1F21AAF30);
  if (!v13)
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v14 = v13;
  if (!CMSampleBufferGetImageBuffer(v13))
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  os_unfair_lock_lock(&self->_inputMasksSampleBufferQueueLock);
  inputMasksSampleBufferQueue = self->_inputMasksSampleBufferQueue;
  v21[0] = *off_1E798A420;
  v15 = *MEMORY[0x1E695E480];
  time = *s;
  v22[0] = CMTimeCopyAsDictionary(&time, v15);
  v21[1] = *off_1E798D298;
  v18[0] = 0x1F21AAED0;
  v18[1] = 0x1F21AAF10;
  v19[0] = v8;
  v19[1] = v10;
  v18[2] = 0x1F21AAEF0;
  v18[3] = 0x1F21AAF30;
  v19[2] = v12;
  v19[3] = v14;
  v22[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  -[NSMutableArray addObject:](inputMasksSampleBufferQueue, "addObject:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2]);
  os_unfair_lock_unlock(&self->_inputMasksSampleBufferQueueLock);
  return 0;
}

- (id)_deepCopyMasks:(id)masks
{
  sampleBufferOut = 0;
  v27 = **&MEMORY[0x1E6960C70];
  if (masks)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = *off_1E798D298;
    v6 = [masks objectForKeyedSubscript:*off_1E798D298];
    if (v6)
    {
      v7 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v23 + 1) + 8 * i);
            v13 = [v7 objectForKeyedSubscript:v12];
            if (!v13)
            {
              [BWSmartStyleLearningNode _deepCopyMasks:];
              goto LABEL_17;
            }

            if (BWCMSampleBufferCreateCopyIncludingMetadata(v13, &sampleBufferOut))
            {
              [BWSmartStyleLearningNode _deepCopyMasks:];
              goto LABEL_17;
            }

            [v4 setObject:sampleBufferOut forKeyedSubscript:v12];
            if (sampleBufferOut)
            {
              CFRelease(sampleBufferOut);
            }

            sampleBufferOut = 0;
          }

          v9 = [v7 countByEnumeratingWithState:&v23 objects:v22 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v14 = *off_1E798A420;
      CMTimeMakeFromDictionary(&v27, [masks objectForKeyedSubscript:*off_1E798A420]);
      v20[0] = v14;
      v15 = *MEMORY[0x1E695E480];
      v19 = v27;
      v16 = CMTimeCopyAsDictionary(&v19, v15);
      v20[1] = v5;
      v21[0] = v16;
      v21[1] = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    }

    else
    {
      [BWSmartStyleLearningNode _deepCopyMasks:];
LABEL_17:
      v17 = 0;
    }
  }

  else
  {
    [BWSmartStyleLearningNode _deepCopyMasks:];
    v17 = 0;
    v4 = 0;
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  [v4 removeAllObjects];

  return v17;
}

- (id)_blitMasksToOutputPools:(id)pools unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer currentPTS:(id *)s
{
  v43 = 0;
  formatDescriptionOut[0] = 0;
  v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = *off_1E798D298;
  v10 = [pools objectForKeyedSubscript:*off_1E798D298];
  if (!v10)
  {
    [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
LABEL_35:
    v28 = 0;
    goto LABEL_22;
  }

  v11 = v10;
  v32 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v32)
  {
    [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
    goto LABEL_35;
  }

  v30 = v9;
  sCopy = s;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v38 count:16];
  v13 = *MEMORY[0x1E695E480];
  if (!v12)
  {
    goto LABEL_21;
  }

  v14 = v12;
  v15 = *v40;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v40 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v39 + 1) + 8 * i);
      memset(&timingArrayOut, 0, sizeof(timingArrayOut));
      v18 = [v11 objectForKeyedSubscript:v17];
      if (!v18)
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
        goto LABEL_35;
      }

      v19 = v18;
      ImageBuffer = CMSampleBufferGetImageBuffer(v18);
      if (!ImageBuffer)
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
        goto LABEL_35;
      }

      v21 = ImageBuffer;
      if (CMSampleBufferGetSampleTimingInfoArray(v19, 1, &timingArrayOut, 0))
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
        goto LABEL_35;
      }

      v22 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_processorVideoFormatsByAttachedMediaKeys objectForKeyedSubscript:{v17), "newPixelBuffer"}];
      if (!v22)
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
        goto LABEL_35;
      }

      v23 = v22;
      MaskValidBufferRectFromMetadata = ssln_getMaskValidBufferRectFromMetadata(v32, v19);
      if ([-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")])
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
LABEL_34:
        CFRelease(v23);
        goto LABEL_35;
      }

      if (CMVideoFormatDescriptionCreateForImageBuffer(v13, v23, formatDescriptionOut))
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
        goto LABEL_34;
      }

      sampleTiming = timingArrayOut;
      if (BWSampleBufferCreateFromPixelBufferWithTimingInfo(v23, &sampleTiming, formatDescriptionOut, &v43))
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
        goto LABEL_34;
      }

      [v33 setObject:v43 forKeyedSubscript:v17];
      CFRelease(v23);
      if (formatDescriptionOut[0])
      {
        CFRelease(formatDescriptionOut[0]);
      }

      if (v43)
      {
        CFRelease(v43);
      }

      v43 = 0;
      formatDescriptionOut[0] = 0;
    }

    v14 = [v11 countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_21:
  v34[0] = *off_1E798A420;
  *&timingArrayOut.duration.value = *&sCopy->var0;
  timingArrayOut.duration.epoch = sCopy->var3;
  v34[1] = v30;
  v35[0] = CMTimeCopyAsDictionary(&timingArrayOut.duration, v13);
  v35[1] = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v33];
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
LABEL_22:
  if (formatDescriptionOut[0])
  {
    CFRelease(formatDescriptionOut[0]);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  [v33 removeAllObjects];

  return v28;
}

- (int)_cropAndUndistortWeightSegmentMap:(__CVBuffer *)map unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer doGDC:(BOOL)c toPixelBuffer:(__CVBuffer *)pixelBuffer
{
  cCopy = c;
  v10 = *off_1E798A3C8;
  v11 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v11)
  {
    [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
    return -12780;
  }

  v12 = v11;
  v13 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
  if (!v13)
  {
    [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
    return -12780;
  }

  v14 = v13;
  if (!CMGetAttachment(map, v10, 0))
  {
    [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
LABEL_23:
    CFRelease(v14);
    return -12780;
  }

  v15 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
  if (!v15)
  {
    [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
    goto LABEL_23;
  }

  v16 = v15;
  v23 = 0u;
  v24 = 0u;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    Width = 0.0;
  }

  else
  {
    Width = CVPixelBufferGetWidth(pixelBuffer);
    v23 = 0uLL;
    *&v24 = Width;
    *(&v24 + 1) = CVPixelBufferGetHeight(pixelBuffer);
  }

  if (Width == CVPixelBufferGetWidth(pixelBuffer) && *(&v24 + 1) == CVPixelBufferGetHeight(pixelBuffer))
  {
    v18 = CVPixelBufferGetWidth(v14);
    v19 = (v18 / CVPixelBufferGetWidth(map));
    *&v23 = *&v23 * v19;
    *&v24 = *&v24 * v19;
    if (cCopy)
    {
      v20 = -[NSMutableDictionary objectForKeyedSubscript:](self->_intermediatePixelBufferPoolsByAttachedMediaKeys, "objectForKeyedSubscript:", [v12 objectForKeyedSubscript:*off_1E798B540]);
      if (v20)
      {
        v21 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
        if (v21)
        {
          [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
        }
      }

      else
      {
        [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
        v21 = 0;
      }
    }

    else
    {
      v21 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
      if (v21)
      {
        [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
      }
    }
  }

  else
  {
    [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
    v21 = -12780;
  }

  CFRelease(v14);
  CFRelease(v16);
  return v21;
}

- (int)_runFalsePositiveRejectionOnPixelBuffer:(__CVBuffer *)buffer unrefinedPixelBuffer:(__CVBuffer *)pixelBuffer
{
  if (buffer)
  {
    pixelBufferCopy = pixelBuffer;
    if (pixelBuffer)
    {
      pixelBufferCopy = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
      if (pixelBufferCopy)
      {
        [BWSmartStyleLearningNode _runFalsePositiveRejectionOnPixelBuffer:unrefinedPixelBuffer:];
      }
    }

    else
    {
      [BWSmartStyleLearningNode _runFalsePositiveRejectionOnPixelBuffer:unrefinedPixelBuffer:];
    }
  }

  else
  {
    [BWSmartStyleLearningNode _runFalsePositiveRejectionOnPixelBuffer:unrefinedPixelBuffer:];
    return 0;
  }

  return pixelBufferCopy;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getSampleBufferPresentationTimeStamp:(SEL)stamp
{
  *retstr = **&MEMORY[0x1E6960C70];
  if (!a4)
  {
    return [BWSmartStyleLearningNode _getSampleBufferPresentationTimeStamp:];
  }

  v6 = CMGetAttachment(a4, *off_1E798A3C8, 0);
  if (v6 && (v7 = v6, v8 = *off_1E798A420, [v6 objectForKeyedSubscript:*off_1E798A420]))
  {
    v9 = [v7 objectForKeyedSubscript:v8];

    return CMTimeMakeFromDictionary(retstr, v9);
  }

  else
  {

    return CMSampleBufferGetPresentationTimeStamp(retstr, a4);
  }
}

- (void)_updateCurrentSmartStyleMetadata:(id)metadata onSbuf:(opaqueCMSampleBuffer *)sbuf
{
  v6 = *off_1E798A3C8;
  v7 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  v8 = *off_1E798A8C0;
  [v7 setObject:metadata forKeyedSubscript:*off_1E798A8C0];
  AttachedMedia = BWSampleBufferGetAttachedMedia(sbuf, @"SynchronizedSlaveFrame");
  if (AttachedMedia)
  {
    v10 = CMGetAttachment(AttachedMedia, v6, 0);

    [v10 setObject:metadata forKeyedSubscript:v8];
  }
}

- (int)_initVMRefinerInference:(BOOL)inference
{
  inferenceCopy = inference;
  *&self->_gdcAttachmentsEnabled = 0;
  v5 = objc_alloc_init(BWInferenceScheduler);
  *&self->_inferenceLock._os_unfair_lock_opaque = v5;
  if (!v5)
  {
    [BWSmartStyleLearningNode _initVMRefinerInference:];
    return -12786;
  }

  v6 = [[BWInferenceEngine alloc] initWithScheduler:*&self->_inferenceLock._os_unfair_lock_opaque priority:6];
  self->_inferenceScheduler = v6;
  if (!v6)
  {
    [BWSmartStyleLearningNode _initVMRefinerInference:];
    return -12786;
  }

  v7 = [(BWInferenceConfiguration *)[BWVMRefinerInferenceConfiguration alloc] initWithInferenceType:118];
  [(BWInferenceConfiguration *)v7 setPriority:6];
  if (inferenceCopy)
  {
    v8 = 0x10000000100;
  }

  else
  {
    v8 = 0xC000000100;
  }

  [(BWVMRefinerInferenceConfiguration *)v7 setMasksDimensions:v8];
  if (!v7)
  {
    [BWSmartStyleLearningNode _initVMRefinerInference:];
    return -12786;
  }

  if (FigCapturePlatformIdentifier() <= 11)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if ([(BWInferenceScheduler *)self->_inferenceScheduler addInferenceOfType:118 version:BWInferenceVersionMakeMajor(v9) & 0xFFFFFFFFFFFFLL configuration:v7])
  {
    [BWSmartStyleLearningNode _initVMRefinerInference:];
    return -12780;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_anstMaskVideoFormat = v10;
    if (!v10)
    {
      [BWSmartStyleLearningNode _initVMRefinerInference:];
    }

    return 0;
  }
}

- (void)_asynchronouslySignalEvent:(id)event
{
  commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
  if (commandBuffer)
  {
    v6 = commandBuffer;
    [commandBuffer setLabel:@"asynchronouslySignalEvent"];
    [v6 encodeSignalEvent:event value:1];
    metalContext = self->_metalContext;

    [(FigMetalContext *)metalContext forceCommit];
  }

  else
  {
    [BWSmartStyleLearningNode _asynchronouslySignalEvent:];
  }
}

- (void)_asynchronouslyDecrementRenderCount
{
  objc_initWeak(&location, self);
  commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
  v4 = commandBuffer;
  if (commandBuffer)
  {
    [commandBuffer setLabel:@"asynchronouslyDecrementRenderCount"];
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __63__BWSmartStyleLearningNode__asynchronouslyDecrementRenderCount__block_invoke;
    v8 = &unk_1E7997250;
    objc_copyWeak(&v9, &location);
    [v4 addCompletedHandler:&v5];
    [(FigMetalContext *)self->_metalContext forceCommit:v5];
    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

void __63__BWSmartStyleLearningNode__asynchronouslyDecrementRenderCount__block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    os_unfair_lock_lock(Weak + 106);
    --v2[107]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v2 + 106);
  }
}

- (void)_asynchronouslyDecrementLearnCount
{
  objc_initWeak(&location, self);
  commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
  v4 = commandBuffer;
  if (commandBuffer)
  {
    [commandBuffer setLabel:@"asynchronouslyDecrementLearnCount"];
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __62__BWSmartStyleLearningNode__asynchronouslyDecrementLearnCount__block_invoke;
    v8 = &unk_1E7997250;
    objc_copyWeak(&v9, &location);
    [v4 addCompletedHandler:&v5];
    [(FigMetalContext *)self->_metalContext forceCommit:v5];
    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

void __62__BWSmartStyleLearningNode__asynchronouslyDecrementLearnCount__block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    os_unfair_lock_lock(Weak + 106);
    --v2[108]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v2 + 106);
  }
}

- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format
{
  v6[0] = 0x1F219EE70;
  v6[1] = 0x1F219EEB0;
  v7[0] = 0x1F21AAED0;
  v7[1] = 0x1F21AAEF0;
  v6[2] = 0x1F219EE90;
  v7[2] = 0x1F21AAF10;
  result = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:{3), "objectForKeyedSubscript:", key}];
  if (result)
  {
    return [(NSMutableDictionary *)self->_intermediateVideoFormatsByAttachedMediaKeys objectForKeyedSubscript:result];
  }

  return result;
}

- (void)semanticStyleSceneTypeDidChange:(int)change
{
  os_unfair_lock_lock(&self->_semanticStyleSceneLock);
  self->_semanticStyleSceneType = change;

  os_unfair_lock_unlock(&self->_semanticStyleSceneLock);
}

- (void)setSmartStyle:(id)style
{
  if (style && ([style isEqual:*&self->_disableWaitForCoefficientsOnFirstFrame] & 1) == 0)
  {
    [style cast];
    [style intensity];
    [style toneBias];
    [style colorBias];
    v8 = OUTLINED_FUNCTION_27_8(v5, v6, v7);
    if (v8 && (v9 = v8, os_unfair_lock_lock(&self->_styleUpdateLock), *&self->_disableWaitForCoefficientsOnFirstFrame, [v9 cast], objc_msgSend(v9, "intensity"), objc_msgSend(v9, "toneBias"), objc_msgSend(v9, "colorBias"), *&self->_disableWaitForCoefficientsOnFirstFrame = OUTLINED_FUNCTION_27_8(v10, v11, v12), os_unfair_lock_unlock(&self->_styleUpdateLock), *&self->_disableWaitForCoefficientsOnFirstFrame))
    {
      os_unfair_lock_lock(&self->_statsUpdateDeltaTimeThreshold);
      LODWORD(self->_anstMasksMatchingTimeInSecondsThreshold) = self->_timingLock._os_unfair_lock_opaque;

      os_unfair_lock_unlock(&self->_statsUpdateDeltaTimeThreshold);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigDebugAssert3();
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v7 = 0;
  if (!buffer || !input)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    goto LABEL_19;
  }

  if (*&self->_disableWaitForCoefficientsOnFirstFrame)
  {
    if ([(NSArray *)[(BWNode *)self inputs] objectAtIndexedSubscript:1]== input)
    {
      if ([(BWSmartStyleLearningNode *)self processMaskSampleBuffer:buffer])
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_12_1();
        goto LABEL_19;
      }
    }

    else if ([(BWSmartStyleLearningNode *)self processVideoSampleBuffer:buffer frameEmitted:&v7])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_12_1();
LABEL_19:
      FigDebugAssert3();
    }
  }

  if ((v7 & 1) == 0 && [(NSArray *)[(BWNode *)self inputs] objectAtIndexedSubscript:0]== input)
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
    os_unfair_lock_lock(&self->_inputStyleContainerSampleBufferQueueLock);
    if ([(NSMutableArray *)self->_inputStyleContainerSampleBufferQueue count]>= (LODWORD(self->_lastLearnedPortType) * (self->_learningRate / HIDWORD(self->_lastLearnedPortType))))
    {
      [(NSMutableArray *)self->_inputStyleContainerSampleBufferQueue removeObjectAtIndex:0];
    }

    os_unfair_lock_unlock(&self->_inputStyleContainerSampleBufferQueueLock);
  }

  os_unfair_lock_lock(&self->_inputMasksSampleBufferQueueLock);
  if ([(NSMutableArray *)self->_inputMasksSampleBufferQueue count]>= 3)
  {
    [(NSMutableArray *)self->_inputMasksSampleBufferQueue removeObjectAtIndex:0];
  }

  os_unfair_lock_unlock(&self->_inputMasksSampleBufferQueueLock);
}

- (int)_findCorrespondingSmartStyleContainerWithMasks:(id)masks outputSmartStyleContainer:(opaqueCMSampleBuffer *)container
{
  result = -12784;
  if (!masks || !container)
  {
    return result;
  }

  *container = 0;
  memset(&v57, 0, sizeof(v57));
  CMTimeMakeFromDictionary(&v57, [masks objectForKeyedSubscript:*off_1E798A420]);
  if ((v57.flags & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    FigDebugAssert3();
    return -12784;
  }

  v7 = BYTE6(self->_previousPTS.epoch);
  os_unfair_lock_lock(&self->_inputStyleContainerSampleBufferQueueLock);
  if (v7 != 1)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    inputStyleContainerSampleBufferQueue = self->_inputStyleContainerSampleBufferQueue;
    v17 = OUTLINED_FUNCTION_36_10(v8, v9, v10, v11, v12, v13, v14, v15, v31, v33, time.value, *&time.timescale, time.epoch, v36.value, *&v36.timescale, v36.epoch, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, 0);
    if (v17)
    {
      v18 = v17;
      v19 = *v54;
      while (2)
      {
        v20 = 0;
        do
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(inputStyleContainerSampleBufferQueue);
          }

          v21 = *(*(&v53 + 1) + 8 * v20);
          memset(&v36, 0, sizeof(v36));
          [(BWSmartStyleLearningNode *)self _getSampleBufferPresentationTimeStamp:v21];
          time = v57;
          Seconds = CMTimeGetSeconds(&time);
          time = v36;
          if (vabdd_f64(Seconds, CMTimeGetSeconds(&time)) <= *&self->_learningMaxFramesPerSecond)
          {
            *container = v21;
            goto LABEL_17;
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = OUTLINED_FUNCTION_36_10(v23, v24, v25, v26, v27, v28, v29, v30, v32, v34, time.value, *&time.timescale, time.epoch, v36.value, *&v36.timescale, v36.epoch, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    os_unfair_lock_unlock(&self->_inputStyleContainerSampleBufferQueueLock);
    return -12784;
  }

  *container = [(NSMutableArray *)self->_inputStyleContainerSampleBufferQueue lastObject];
LABEL_17:
  os_unfair_lock_unlock(&self->_inputStyleContainerSampleBufferQueueLock);
  return 0;
}

- (id)_cropAndScaleMasks:(id)masks unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer currentPTS:(id *)s applyGDC:(BOOL)c useIntermediatePool:(BOOL)pool
{
  poolCopy = pool;
  cCopy = c;
  v71 = 0;
  v72 = 0;
  memset(&__src, 0, sizeof(__src));
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = *off_1E798A3C8;
  v13 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v13 || (v14 = v13, v15 = *off_1E798D298, (v16 = [masks objectForKeyedSubscript:*off_1E798D298]) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
LABEL_29:
    FigDebugAssert3();
LABEL_34:
    v52 = 0;
    goto LABEL_35;
  }

  v17 = v16;
  v54 = v15;
  sCopy = s;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v61 = [v16 countByEnumeratingWithState:&v66 objects:v65 count:16];
  if (!v61)
  {
    goto LABEL_27;
  }

  v58 = *v67;
  v56 = *off_1E798B540;
  v18 = *MEMORY[0x1E695F050];
  v19 = *(MEMORY[0x1E695F050] + 8);
  v20 = *(MEMORY[0x1E695F050] + 16);
  v21 = *(MEMORY[0x1E695F050] + 24);
  v22 = &OBJC_IVAR___BWSmartStyleLearningNode__processorPixelBufferPoolsByAttachedMediaKeys;
  if (poolCopy)
  {
    v22 = &OBJC_IVAR___BWSmartStyleLearningNode__intermediatePixelBufferPoolsByAttachedMediaKeys;
  }

  v57 = v22;
  while (2)
  {
    for (i = 0; i != v61; ++i)
    {
      if (*v67 != v58)
      {
        objc_enumerationMutation(v17);
      }

      v24 = *(*(&v66 + 1) + 8 * i);
      v25 = [*(&self->super.super.isa + *v57) objectForKeyedSubscript:v24];
      if (!v25)
      {
        goto LABEL_28;
      }

      v26 = v25;
      v27 = [v17 objectForKeyedSubscript:v24];
      if (!v27)
      {
        goto LABEL_28;
      }

      v29 = v27;
      if (OUTLINED_FUNCTION_26_9(v27, v28, &__src))
      {
        goto LABEL_34;
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(v29);
      if (!ImageBuffer || (v31 = ImageBuffer, v32 = CMGetAttachment(v29, v12, 0), (v33 = [v26 newPixelBuffer]) == 0))
      {
LABEL_28:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        goto LABEL_29;
      }

      v34 = v33;
      MaskValidBufferRectFromMetadata = ssln_getMaskValidBufferRectFromMetadata(v14, v29);
      if (cCopy)
      {
        if (!-[NSMutableDictionary objectForKeyedSubscript:](self->_intermediatePixelBufferPoolsByAttachedMediaKeys, "objectForKeyedSubscript:", [v14 objectForKeyedSubscript:{v56, MaskValidBufferRectFromMetadata}]))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0();
          goto LABEL_33;
        }

        [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
        v36 = OUTLINED_FUNCTION_3_0();
        v38 = [v37 undistortPixelBuffer:v36 inputValidBufferRect:? inputMetadata:? cameraInfo:? toPixelBuffer:?];
      }

      else
      {
        [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
        v39 = OUTLINED_FUNCTION_3_0();
        v38 = [v40 cropAndScalePixelBuffer:v39 inputValidBufferRect:? toPixelBuffer:?];
      }

      if (v38 || (memcpy(&__dst, &__src, sizeof(__dst)), BWSampleBufferCreateFromPixelBufferWithTimingInfo(v34, &__dst, &v71, &v72)))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_7_6();
LABEL_33:
        FigDebugAssert3();
        CFRelease(v34);
        goto LABEL_34;
      }

      CVPixelBufferGetWidth(v31);
      CVPixelBufferGetHeight(v31);
      Width = CVPixelBufferGetWidth(v34);
      v42 = Width | (CVPixelBufferGetHeight(v34) << 32);
      v43 = [v32 mutableCopy];
      v44 = OUTLINED_FUNCTION_3_0();
      FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v45, v46, v42, v44, v47, v48, v49, v18, v19, v20, v21);
      FigCaptureMetadataUtilitiesPreventFurtherCropping(v43, v50);
      CMSetAttachment(v72, v12, v43, 1u);
      [dictionary setObject:v72 forKeyedSubscript:v24];
      CFRelease(v34);
      if (v71)
      {
        CFRelease(v71);
      }

      if (v72)
      {
        CFRelease(v72);
      }

      v71 = 0;
      v72 = 0;
    }

    v61 = [v17 countByEnumeratingWithState:&v66 objects:v65 count:16];
    if (v61)
    {
      continue;
    }

    break;
  }

LABEL_27:
  v62[0] = *off_1E798A420;
  v51 = *MEMORY[0x1E695E480];
  *&__dst.duration.value = *&sCopy->var0;
  __dst.duration.epoch = sCopy->var3;
  v62[1] = v54;
  v63[0] = CMTimeCopyAsDictionary(&__dst.duration, v51);
  v63[1] = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
  v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
LABEL_35:
  if (v71)
  {
    CFRelease(v71);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  return v52;
}

- (int)_createCoefficientsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer to:(opaqueCMSampleBuffer *)to
{
  v37 = 0;
  v38 = 0;
  v12 = OUTLINED_FUNCTION_31_8();
  value = *MEMORY[0x1E6960CC0];
  LODWORD(v35) = *(MEMORY[0x1E6960CC0] + 8);
  v13 = MEMORY[0x1E695FF58];
  if (!v6)
  {
    goto LABEL_25;
  }

  p_value = &v7->value;
  if (!v7)
  {
    goto LABEL_25;
  }

  v15 = v4;
  v7->value = 0;
  if (!v4)
  {
    LODWORD(v35) = 0;
    value = 0;
LABEL_15:
    v28 = -12780;
    goto LABEL_16;
  }

  v16 = v6;
  v4 = [(opaqueCMSampleBuffer *)v4 _getSampleBufferPresentationTimeStamp:v12];
  value = sampleTiming.duration.value;
  LODWORD(v35) = sampleTiming.duration.timescale;
  if ((sampleTiming.duration.flags & 1) == 0)
  {
LABEL_26:
    v15 = 0;
    goto LABEL_15;
  }

  if (*v13 == 1)
  {
    OUTLINED_FUNCTION_20_10(v4, v5, v6, v7, v8, v9, v10, v11, v30, v31, v32, sampleTiming.duration.value, sampleTiming.duration.timescale, sampleTiming.duration.flags, sampleTiming.duration.epoch, sampleTiming.presentationTimeStamp.value, *&sampleTiming.presentationTimeStamp.timescale, sampleTiming.presentationTimeStamp.epoch, sampleTiming.decodeTimeStamp.value, *&sampleTiming.decodeTimeStamp.timescale, sampleTiming.decodeTimeStamp.epoch, value, v35);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v17 = [v15[2] mediaPropertiesForAttachedMediaKey:0x1F21AB070];
  if (!v17)
  {
LABEL_25:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    v4 = FigDebugAssert3();
    goto LABEL_26;
  }

  v15 = [objc_msgSend(v17 "livePixelBufferPool")];
  if (v15)
  {
    v19 = OUTLINED_FUNCTION_26_9(v16, v18, &v36);
    if (v19)
    {
      v28 = v19;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_45();
      LODWORD(v30) = v28;
      v4 = FigDebugAssert3();
    }

    else
    {
      OUTLINED_FUNCTION_23_9(0, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, sampleTiming.duration.value, *&sampleTiming.duration.timescale, sampleTiming.duration.epoch, sampleTiming.presentationTimeStamp.value, *&sampleTiming.presentationTimeStamp.timescale, sampleTiming.presentationTimeStamp.epoch, sampleTiming.decodeTimeStamp.value, *&sampleTiming.decodeTimeStamp.timescale, sampleTiming.decodeTimeStamp.epoch, value, v35, v36.duration.value);
      v4 = BWSampleBufferCreateFromPixelBufferWithTimingInfo(v15, &sampleTiming, &v37, &v38);
      if (v4)
      {
        v28 = v4;
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF20] dictionary];
        CMSetAttachment(v38, *off_1E798A3C8, dictionary, 1u);
        v4 = v38;
        if (v38)
        {
          v4 = CFRetain(v38);
        }

        v28 = 0;
        *p_value = v4;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    v4 = FigDebugAssert3();
    v28 = -12786;
  }

LABEL_16:
  if (*v13 == 1)
  {
    OUTLINED_FUNCTION_20_10(v4, v5, v6, v7, v8, v9, v10, v11, v30, v31, v32, sampleTiming.duration.value, sampleTiming.duration.timescale, sampleTiming.duration.flags, sampleTiming.duration.epoch, sampleTiming.presentationTimeStamp.value, *&sampleTiming.presentationTimeStamp.timescale, sampleTiming.presentationTimeStamp.epoch, sampleTiming.decodeTimeStamp.value, *&sampleTiming.decodeTimeStamp.timescale, sampleTiming.decodeTimeStamp.epoch, value, v35);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v28;
}

- (int)_createIdentityCoefficientsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer to:(opaqueCMSampleBuffer *)to
{
  v20 = 0;
  v21 = 0;
  memset(&__src, 0, sizeof(__src));
  if (!buffer || !to)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
LABEL_25:
    FigDebugAssert3();
LABEL_26:
    v14 = 0;
    v16 = -12780;
    goto LABEL_14;
  }

  *to = 0;
  if (!self)
  {
    goto LABEL_26;
  }

  [(BWSmartStyleLearningNode *)self _getSampleBufferPresentationTimeStamp:?];
  if ((__dst.duration.flags & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = OUTLINED_FUNCTION_26_9(buffer, v7, &__src);
  if (v8)
  {
    v16 = v8;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_45();
LABEL_28:
    FigDebugAssert3();
    goto LABEL_29;
  }

  identityCoefficientsPixelBuffer = self->_identityCoefficientsPixelBuffer;
  if (identityCoefficientsPixelBuffer)
  {
    goto LABEL_9;
  }

  v10 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:0x1F21AB070];
  if (!v10)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    goto LABEL_25;
  }

  self->_identityCoefficientsPixelBuffer = [objc_msgSend(v10 "livePixelBufferPool")];
  v11 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
  identityCoefficientsPixelBuffer = self->_identityCoefficientsPixelBuffer;
  if (!identityCoefficientsPixelBuffer)
  {
    v16 = v11;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    goto LABEL_28;
  }

LABEL_9:
  memcpy(&__dst, &__src, sizeof(__dst));
  v12 = BWSampleBufferCreateFromPixelBufferWithTimingInfo(identityCoefficientsPixelBuffer, &__dst, &v20, &v21);
  if (v12)
  {
    v16 = v12;
LABEL_29:
    v14 = 0;
    goto LABEL_14;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = v13;
  if (v13)
  {
    [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798A8E0];
    CMSetAttachment(v21, *off_1E798A3C8, v14, 1u);
    v15 = v21;
    if (v21)
    {
      v15 = CFRetain(v21);
    }

    v16 = 0;
    *to = v15;
  }

  else
  {
    v16 = -12786;
  }

LABEL_14:
  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v16;
}

- (int)_createSmartStyleContainerFromSampleBuffer:(opaqueCMSampleBuffer *)buffer unstyledThumbnailSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer linearThumbnailSampleBuffer:(opaqueCMSampleBuffer *)thumbnailSampleBuffer to:(opaqueCMSampleBuffer *)to
{
  target = 0;
  v6 = -12780;
  if (buffer && sampleBuffer && thumbnailSampleBuffer && to)
  {
    *to = 0;
    v11 = *off_1E798A3C8;
    v12 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    if (!v12)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return 0;
    }

    v14 = v12;
    memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
    v15 = OUTLINED_FUNCTION_26_9(buffer, v13, &sampleTimingArray);
    if (v15)
    {
      v6 = v15;
      fig_log_get_emitter();
      FigDebugAssert3();
      return v6;
    }

    OUTLINED_FUNCTION_17_14();
    v21 = CMSampleBufferCreate(v16, v17, v18, v19, v20, 0, 0, 1, &sampleTimingArray, 0, 0, &target);
    v22 = target;
    if (v21)
    {
      v6 = -12786;
      if (!target)
      {
        return v6;
      }

      goto LABEL_12;
    }

    CMSetAttachment(target, v11, v14, 1u);
    BWSampleBufferSetAttachedMedia(target, 0x1F21AB0D0, sampleBuffer);
    BWSampleBufferSetAttachedMedia(target, 0x1F21AB110, thumbnailSampleBuffer);
    v22 = target;
    if (target)
    {
      v23 = CFRetain(target);
      v22 = target;
    }

    else
    {
      v23 = 0;
    }

    v6 = 0;
    *to = v23;
    if (v22)
    {
LABEL_12:
      CFRelease(v22);
    }
  }

  return v6;
}

- (opaqueCMSampleBuffer)_unpackSbufFromPrimaryCameraStream:(opaqueCMSampleBuffer *)stream
{
  streamCopy = stream;
  AttachedMedia = BWSampleBufferGetAttachedMedia(stream, @"SynchronizedSlaveFrame");
  if (AttachedMedia)
  {
    v5 = AttachedMedia;
    v6 = *off_1E798A3C8;
    v7 = CMGetAttachment(streamCopy, *off_1E798A3C8, 0);
    CMGetAttachment(v5, v6, 0);
    if (([objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B710), "BOOLValue"}] & 1) == 0)
    {
      if ([OUTLINED_FUNCTION_37_8() BOOLValue])
      {
        return v5;
      }
    }
  }

  return streamCopy;
}

+ (id)newISPSMGProcessingSession:(id)session
{
  v6 = 0;
  if (!session)
  {
    return 0;
  }

  v4 = [session supportsISPProcessingSessionType:8 error:&v6];
  result = 0;
  if (!v6)
  {
    if (v4)
    {
      v7 = 0;
      result = [session copyISPProcessingSessionWithType:8 error:&v7];
      if (v7 || !result)
      {

        return 0;
      }
    }
  }

  return result;
}

- (int)_getContainerAssetsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer outputUnstyledThumbnailSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer outputLinearThumbnailSampleBuffer:(opaqueCMSampleBuffer *)thumbnailSampleBuffer
{
  v9 = OUTLINED_FUNCTION_31_8();
  cf = 0;
  v111 = 0;
  if (!v6 || (v10 = v7) == 0 || (v11 = v8) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
LABEL_34:
    FigDebugAssert3();
LABEL_35:
    v52 = -12780;
    goto LABEL_25;
  }

  v12 = v5;
  *v7 = 0;
  *v8 = 0;
  if (!v5)
  {
    goto LABEL_35;
  }

  v13 = v6;
  [v5 _getSampleBufferPresentationTimeStamp:v9];
  if ((v70 & 0x100000000) == 0)
  {
    goto LABEL_35;
  }

  v15 = OUTLINED_FUNCTION_26_9(v13, v14, &v114);
  if (v15)
  {
    v52 = v15;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_14();
    FigDebugAssert3();
    goto LABEL_25;
  }

  if (!CMSampleBufferGetImageBuffer(v13))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    goto LABEL_34;
  }

  v16 = [objc_msgSend(v12[42] objectForKeyedSubscript:{0x1F21AB0D0), "newPixelBuffer"}];
  if (!v16)
  {
    goto LABEL_36;
  }

  v24 = v16;
  v25 = OUTLINED_FUNCTION_23_9(v16, v17, v18, v19, v20, v21, v22, v23, v54, v58, v62, v66, v70, v76, v84, v88, v92, v96, v100, v104, 0, 0, v114.duration.value);
  v33 = OUTLINED_FUNCTION_35_9(v25, v26, v27, v28, v29, v30, v31, v32, v55, v59, v63, v67, v71, v74, v77, v80, v82, v85, v89, v93, v97, v101, v105, cfa, v112);
  if (v33)
  {
LABEL_30:
    v52 = v33;
    CFRelease(v24);
    goto LABEL_25;
  }

  v34 = cf;
  if (cf)
  {
    v34 = CFRetain(cf);
  }

  *v10 = v34;
  CFRelease(v24);
  if (v111)
  {
    CFRelease(v111);
    v111 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v35 = [objc_msgSend(v12[42] objectForKeyedSubscript:{0x1F21AB110), "newPixelBuffer"}];
  if (!v35)
  {
LABEL_36:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3();
    v52 = -12786;
    goto LABEL_25;
  }

  v24 = v35;
  v43 = OUTLINED_FUNCTION_23_9(v35, v36, v37, v38, v39, v40, v41, v42, v56, v60, v64, v68, v72, v78, v86, v90, v94, v98, v102, v106, cf, v111, v114.duration.value);
  v33 = OUTLINED_FUNCTION_35_9(v43, v44, v45, v46, v47, v48, v49, v50, v57, v61, v65, v69, v73, v75, v79, v81, v83, v87, v91, v95, v99, v103, v107, cfb, v113);
  if (v33)
  {
    goto LABEL_30;
  }

  CMSetAttachment(cf, *off_1E798A3C8, [MEMORY[0x1E695DF20] dictionary], 1u);
  v51 = cf;
  if (cf)
  {
    v51 = CFRetain(cf);
  }

  *v11 = v51;
  CFRelease(v24);
  if (v111)
  {
    CFRelease(v111);
    v111 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    v52 = 0;
    cf = 0;
  }

  else
  {
    v52 = 0;
  }

LABEL_25:
  if (v111)
  {
    CFRelease(v111);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v52;
}

- (void)_asynchronouslyRenderSampleBuffer:(opaqueCMSampleBuffer *)buffer outputLinearThumbnailSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer outputUnstyledThumbnailSampleBuffer:(opaqueCMSampleBuffer *)thumbnailSampleBuffer synchronizingEvent:(id)event
{
  eventCopy = event;
  v58 = *MEMORY[0x1E6960CC0];
  v59 = *(MEMORY[0x1E6960CC0] + 16);
  if (!buffer || !sampleBuffer || !thumbnailSampleBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
LABEL_60:
    v25 = FigDebugAssert3();
    goto LABEL_47;
  }

  selfCopy = self;
  if (self)
  {
    self = [(BWSmartStyleLearningNode *)self _getSampleBufferPresentationTimeStamp:buffer];
  }

  else
  {
    memset(__dst, 0, 24);
  }

  v58 = __dst[0];
  v59 = *&__dst[1];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_25_8(self, a2, buffer, sampleBuffer, thumbnailSampleBuffer, event, v6, v7, v48, v49, v50, v51, eventCopy, v53, __dst[0], *&__dst[1]);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, @"LTMThumbnail");
  if (!AttachedMedia)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, @"PreLTMThumbnail");
  }

  v14 = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AB1D0);
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer || (v16 = ImageBuffer, (v17 = CMGetAttachment(buffer, *off_1E798A3C8, 0)) == 0) || (v18 = v17, (v19 = CMSampleBufferGetImageBuffer(thumbnailSampleBuffer)) == 0))
  {
LABEL_52:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    goto LABEL_60;
  }

  v20 = v19;
  v57 = 0;
  if (AttachedMedia)
  {
    v21 = [-[CMISmartStyleProcessor utilities](selfCopy->_smartStyleProcessor "utilities")];
    if (v21)
    {
      v46 = v21;
      fig_log_get_emitter();
      v49 = v8;
      LODWORD(v48) = v46;
      goto LABEL_60;
    }
  }

  v22 = *off_1E798A0F8;
  v56[0] = *off_1E798A0D0;
  v56[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  if (selfCopy->_generateCoefficients)
  {
    HIDWORD(v53) = [v23 containsObject:{objc_msgSend(v18, "objectForKeyedSubscript:", *off_1E798B540)}];
  }

  else
  {
    HIDWORD(v53) = 0;
  }

  memset(__src, 0, sizeof(__src));
  v51 = v8;
  if (v57 != 2)
  {
    if (v14)
    {
      v34 = CMSampleBufferGetImageBuffer(v14);
      if (!v34)
      {
        goto LABEL_52;
      }

      v33 = v34;
      if (HIDWORD(v53))
      {
        v35 = [MEMORY[0x1E69916C0] getGDCParams:__src cameraInfo:-[NSMutableDictionary objectForKeyedSubscript:](selfCopy->_intermediatePixelBufferPoolsByAttachedMediaKeys metadata:{"objectForKeyedSubscript:", objc_msgSend(v18, "objectForKeyedSubscript:", *off_1E798B540)), v18}];
        if (v35)
        {
          goto LABEL_59;
        }
      }

      v25 = [-[CMISmartStyleProcessor utilities](selfCopy->_smartStyleProcessor "utilities")];
      if (v25)
      {
        goto LABEL_47;
      }

      v14 = HIDWORD(v53);
    }

    else
    {
      v33 = v16;
    }

    utilities = [(CMISmartStyleProcessor *)selfCopy->_smartStyleProcessor utilities];
    memcpy(__dst, __src, sizeof(__dst));
    v35 = [utilities downScalePixelBuffer:v33 toPixelBuffer:v20 propagateAttachments:1 gdcParams:__dst applyGDC:v14];
    if (!v35)
    {
      goto LABEL_32;
    }

LABEL_59:
    v47 = v35;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_6();
    LODWORD(v48) = v47;
    goto LABEL_60;
  }

  v24 = CMSampleBufferGetImageBuffer(AttachedMedia);
  if (!v24)
  {
    goto LABEL_52;
  }

  v25 = [-[CMISmartStyleProcessor utilities](selfCopy->_smartStyleProcessor "utilities")];
  if (v25)
  {
    goto LABEL_47;
  }

  v25 = [-[CMISmartStyleProcessor utilities](selfCopy->_smartStyleProcessor "utilities")];
  if (v25)
  {
    goto LABEL_47;
  }

  v33 = 0;
  v14 = 0;
LABEL_32:
  v37 = CMSampleBufferGetImageBuffer(sampleBuffer);
  if (!v37)
  {
    goto LABEL_52;
  }

  v38 = v37;
  v25 = [-[CMISmartStyleProcessor utilities](selfCopy->_smartStyleProcessor "utilities")];
  if (v25)
  {
    goto LABEL_47;
  }

  if (AttachedMedia)
  {
    v39 = CMSampleBufferGetImageBuffer(AttachedMedia);
    if (v39)
    {
      v40 = v39;
      v41 = v57;
      utilities2 = [(CMISmartStyleProcessor *)selfCopy->_smartStyleProcessor utilities];
      v43 = -[NSMutableDictionary objectForKeyedSubscript:](selfCopy->_intermediatePixelBufferPoolsByAttachedMediaKeys, "objectForKeyedSubscript:", [v18 objectForKeyedSubscript:*off_1E798B540]);
      if (v41)
      {
        v25 = [utilities2 createLinearThumbnailFromMetadata:v18 ltmThumbnailPixelBuffer:v40 cameraInfo:v43 applyGDC:HIDWORD(v53) toPixelBuffer:v38];
        if (v25)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v48 = v38;
        v25 = [utilities2 createLinearThumbnailFromMetadata:v18 preLTMThumbnailPixelBuffer:v40 postLTMThumbnailPixelBuffer:v20 cameraInfo:v43 applyGDC:HIDWORD(v53) cropToPreLTMBounds:0 toPixelBuffer:?];
        if (v25)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_43;
    }

    goto LABEL_52;
  }

  v44 = [v18 objectForKeyedSubscript:*off_1E798B458];
  utilities3 = [(CMISmartStyleProcessor *)selfCopy->_smartStyleProcessor utilities];
  if (!v44)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v25 = [utilities3 downScalePixelBuffer:v33 toPixelBuffer:v38 propagateAttachments:1 gdcParams:__dst applyGDC:v14];
    goto LABEL_44;
  }

  v25 = [utilities3 createLinearThumbnailFromMetadata:v18 postLTMThumbnailPixelBuffer:v20 cameraInfo:-[NSMutableDictionary objectForKeyedSubscript:](selfCopy->_intermediatePixelBufferPoolsByAttachedMediaKeys applyGDC:"objectForKeyedSubscript:" cropToPreLTMBounds:objc_msgSend(v18 toPixelBuffer:{"objectForKeyedSubscript:", *off_1E798B540)), HIDWORD(v53), 0, v38}];
  if (v25)
  {
    goto LABEL_47;
  }

LABEL_43:
  v25 = [-[CMISmartStyleProcessor utilities](selfCopy->_smartStyleProcessor "utilities")];
LABEL_44:
  if (eventCopy && !v25)
  {
    v25 = [(BWSmartStyleLearningNode *)selfCopy _asynchronouslySignalEvent:eventCopy];
  }

LABEL_47:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_25_8(v25, v26, v27, v28, v29, v30, v31, v32, v48, v49, v50, v51, eventCopy, v53, __dst[0], *&__dst[1]);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }
}

- (void)_asynchronouslyLearnWithContainer:(opaqueCMSampleBuffer *)container inputUnstyledSampleBuffer:(opaqueCMSampleBuffer *)ImageBuffer withUnrefinedMasks:(id)masks withStats:(id)stats withStatsExtended:(id)extended styleToLearn:(id)learn shouldBypass:(BOOL)bypass
{
  masksCopy = masks;
  HIDWORD(v324) = bypass;
  v348 = 0;
  v349[0] = 0;
  v347 = 0;
  v16 = MEMORY[0x1E6960CC0];
  value = *MEMORY[0x1E6960CC0];
  timescale = *(MEMORY[0x1E6960CC0] + 8);
  v17 = *(MEMORY[0x1E695F050] + 16);
  v343 = *MEMORY[0x1E695F050];
  v344 = v17;
  masksCopy2 = masks;
  v19 = MEMORY[0x1E695FF58];
  if (!container)
  {
    HIDWORD(v315) = *(v16 + 12);
    epoch = *(v16 + 16);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3();
    OUTLINED_FUNCTION_9_27();
LABEL_201:
    v16 = 0;
    ImageBuffer = 0;
LABEL_236:
    LOBYTE(v30) = 0;
    goto LABEL_173;
  }

  if (!self)
  {
    learn = 0;
    extended = 0;
    epoch = 0;
    HIDWORD(v315) = 0;
    stats = 0;
    cf = 0;
    OUTLINED_FUNCTION_19_12();
    LOBYTE(v30) = 0;
    timescale = 0;
    value = 0;
    goto LABEL_173;
  }

  [(BWSmartStyleLearningNode *)self _getSampleBufferPresentationTimeStamp:container];
  epoch = time.duration.epoch;
  value = time.duration.value;
  timescale = time.duration.timescale;
  HIDWORD(v315) = time.duration.flags;
  if ((time.duration.flags & 1) == 0)
  {
    goto LABEL_198;
  }

  if (*v19 == 1)
  {
    OUTLINED_FUNCTION_10_25();
    time.duration.epoch = epoch;
    CMTimeGetSeconds(&time.duration);
    OUTLINED_FUNCTION_29_5(v21, v22, v23, v24, v25, v26, v27, v28, v264, v267, v270, v273, extendedCopy, statsCopy, v282, containerCopy, sbuf, v291, learnCopy, v297, v300, v303, v306, cf, v312, v315, v318, v321, v324, bypass);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v300 = CMGetAttachment(container, *off_1E798A3C8, 0);
  if (!v300)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3();
LABEL_198:
    learn = 0;
LABEL_200:
    OUTLINED_FUNCTION_11_24();
    goto LABEL_201;
  }

  if (!learn)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3();
    goto LABEL_200;
  }

  containerCopy = container;
  sbuf = BWSampleBufferGetAttachedMedia(ImageBuffer, 0x1F21AB1D0);
  AttachedMedia = BWSampleBufferGetAttachedMedia(ImageBuffer, @"LTMThumbnail");
  container = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  v291 = masksCopy;
  statsCopy = stats;
  v282 = ImageBuffer;
  if (AttachedMedia)
  {
    v16 = AttachedMedia;
  }

  else
  {
    v16 = BWSampleBufferGetAttachedMedia(ImageBuffer, @"PreLTMThumbnail");
    if (!v16)
    {
      v343 = 0uLL;
      __asm { FMOV            V0.2D, #1.0 }

      v344 = _Q0;
      ImageBuffer = CMSampleBufferGetImageBuffer(ImageBuffer);
      v342 = 0;
      v31 = 1;
      stats = v300;
      goto LABEL_14;
    }
  }

  v30 = CMSampleBufferGetImageBuffer(v16);
  if (!v30)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3();
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_19_12();
    goto LABEL_173;
  }

  stats = v300;
  [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
  ImageBuffer = CMSampleBufferGetImageBuffer(ImageBuffer);
  v342 = 0;
  v31 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
  if (v31)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v264) = v31;
    goto LABEL_206;
  }

LABEL_14:
  v297 = 352;
  v325 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_intermediateVideoFormatsByAttachedMediaKeys objectForKeyedSubscript:{0x1F21AB0D0), "newPixelBuffer"}];
  if (!v325)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
LABEL_206:
    FigDebugAssert3();
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_19_12();
    LOBYTE(v30) = 0;
    goto LABEL_173;
  }

  LODWORD(cf) = v31;
  [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v33 = v32;
  v35 = v34;
  v321 = 144;
  v36 = [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v46 = v35 == v45 && v33 == v44;
  if (v46)
  {
    v318 = 0;
  }

  else
  {
    v47 = OUTLINED_FUNCTION_33_11(v36, v37, v38, v39, v40, v41, v42, v43, v264, v267, v270, v273, extendedCopy, statsCopy, v282, containerCopy, sbuf, v291, learnCopy, 352);
    v318 = [objc_msgSend(v47 objectForKeyedSubscript:{*(v48 + 1040)), "newPixelBuffer"}];
    if (!v318)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_9();
      FigDebugAssert3();
      OUTLINED_FUNCTION_9_27();
      container = 0;
      ImageBuffer = 0;
      LOBYTE(v30) = 0;
      masksCopy = v291;
      v16 = v325;
      goto LABEL_173;
    }
  }

  extendedCopy = extended;
  learnCopy = learn;
  v49 = *off_1E798A0F8;
  v341[0] = *off_1E798A0D0;
  v341[1] = v49;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v341 count:2];
  learn = off_1E798B540;
  if (self->_generateCoefficients)
  {
    LODWORD(v306) = [v50 containsObject:{objc_msgSend(stats, "objectForKeyedSubscript:", *off_1E798B540)}];
  }

  else
  {
    LODWORD(v306) = 0;
  }

  extended = ImageBuffer;
  v339 = 0u;
  v340 = 0u;
  v337 = 0u;
  v338 = 0u;
  v335 = 0u;
  v336 = 0u;
  *v334 = 0u;
  v303 = epoch;
  if (v342 == 2)
  {
    OUTLINED_FUNCTION_18_14();
    if (_ZF)
    {
      v61 = v58;
    }

    else
    {
      v61 = v59;
    }

    container = CMSampleBufferGetImageBuffer(v16);
    if (!container)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_9();
      FigDebugAssert3();
      OUTLINED_FUNCTION_9_27();
LABEL_246:
      LOBYTE(v30) = 0;
      goto LABEL_247;
    }

    extended = 144;
    learn = [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
    if ([learn createUnstyledThumbnailFromMetadata:stats ltmThumbnailPixelBuffer:container cameraInfo:-[NSMutableDictionary objectForKeyedSubscript:](self->_intermediatePixelBufferPoolsByAttachedMediaKeys applyGDC:"objectForKeyedSubscript:" toPixelBuffer:{objc_msgSend(stats, "objectForKeyedSubscript:", *off_1E798B540)), v306, v61}])
    {
      OUTLINED_FUNCTION_9_27();
      container = 0;
      LOBYTE(v30) = 0;
      masksCopy = v291;
LABEL_172:
      OUTLINED_FUNCTION_22_10();
      goto LABEL_173;
    }

    extended = ImageBuffer;
    v62 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
    learn = 0;
    v30 = 0;
    stats = v300;
    ImageBuffer = v282;
    if (v62)
    {
      extended = 0;
      stats = 0;
      cf = 0;
      container = 0;
LABEL_247:
      masksCopy = v291;
      goto LABEL_172;
    }
  }

  else
  {
    v62 = sbuf;
    if (sbuf)
    {
      v63 = CMSampleBufferGetImageBuffer(sbuf);
      learn = v63;
      ImageBuffer = v282;
      if (!v63)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_9();
        FigDebugAssert3();
        OUTLINED_FUNCTION_11_24();
        LOBYTE(v30) = 1;
        goto LABEL_247;
      }

      if (v306)
      {
        v63 = [MEMORY[0x1E69916C0] getGDCParams:v334 cameraInfo:-[NSMutableDictionary objectForKeyedSubscript:](self->_intermediatePixelBufferPoolsByAttachedMediaKeys metadata:{"objectForKeyedSubscript:", objc_msgSend(stats, "objectForKeyedSubscript:", *off_1E798B540)), stats}];
        if (v63)
        {
          v263 = v63;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_47();
          LODWORD(v264) = v263;
          goto LABEL_244;
        }
      }

      v62 = [OUTLINED_FUNCTION_28_7(v63 v64];
      v30 = v306;
      if (v62)
      {
        goto LABEL_245;
      }
    }

    else
    {
      v30 = 0;
      learn = ImageBuffer;
      ImageBuffer = v282;
    }
  }

  if (v46)
  {
    masksCopy = v291;
    if (v342 != 2)
    {
      CVPixelBufferGetWidth(learn);
      v71 = OUTLINED_FUNCTION_21_13();
      CVPixelBufferGetHeight(v71);
      OUTLINED_FUNCTION_13_20();
      OUTLINED_FUNCTION_2_3();
      v80 = OUTLINED_FUNCTION_28_7(v72, v73, v74, v75, v76, v77, v78, v79, v264, v267, v270, v273, extendedCopy, statsCopy, v282, containerCopy, sbuf, v291, learnCopy, v297, v300, v303, v306, cf, v312, v315, v318, v321);
      OUTLINED_FUNCTION_16_17(v80, v81, v82, v83, v84, v85, v86, v87, v265, v268, v271, v274, v277, v280, v283, v286, sbufb, v292, v295, v298, v301, v304, v307, cfb, v313, v316, v319, v322, v324, v325, __src.duration.value, *&__src.duration.timescale, __src.duration.epoch, __src.presentationTimeStamp.value, *&__src.presentationTimeStamp.timescale, __src.presentationTimeStamp.epoch, __src.decodeTimeStamp.value, *&__src.decodeTimeStamp.timescale, __src.decodeTimeStamp.epoch, v327, time.duration.value, *&time.duration.timescale, time.duration.epoch, time.presentationTimeStamp.value, *&time.presentationTimeStamp.timescale, time.presentationTimeStamp.epoch, time.decodeTimeStamp.value, *&time.decodeTimeStamp.timescale, time.decodeTimeStamp.epoch, v329, v330, v331, v332, v333, v334[0]);
      v62 = OUTLINED_FUNCTION_24_11(v80, v88, learn, v325, &time);
      if (v62)
      {
        goto LABEL_216;
      }
    }

    goto LABEL_46;
  }

  v89 = v321;
  if (v342 != 2)
  {
    CVPixelBufferGetWidth(learn);
    v90 = OUTLINED_FUNCTION_21_13();
    CVPixelBufferGetHeight(v90);
    OUTLINED_FUNCTION_13_20();
    OUTLINED_FUNCTION_2_3();
    utilities = [*(&self->super.super.isa + v321) utilities];
    OUTLINED_FUNCTION_16_17(utilities, v92, v93, v94, v95, v96, v97, v98, v264, v267, v270, v273, extendedCopy, statsCopy, v282, containerCopy, sbuf, v291, learnCopy, v297, v300, v303, v306, cf, v312, v315, v318, v321, v324, v325, __src.duration.value, *&__src.duration.timescale, __src.duration.epoch, __src.presentationTimeStamp.value, *&__src.presentationTimeStamp.timescale, __src.presentationTimeStamp.epoch, __src.decodeTimeStamp.value, *&__src.decodeTimeStamp.timescale, __src.decodeTimeStamp.epoch, v327, time.duration.value, *&time.duration.timescale, time.duration.epoch, time.presentationTimeStamp.value, *&time.presentationTimeStamp.timescale, time.presentationTimeStamp.epoch, time.decodeTimeStamp.value, *&time.decodeTimeStamp.timescale, time.decodeTimeStamp.epoch, v329, v330, v331, v332, v333, v334[0]);
    v100 = OUTLINED_FUNCTION_24_11(utilities, v99, learn, v318, &time);
    if (v100)
    {
      v258 = v100;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_47();
      LODWORD(v264) = v258;
LABEL_244:
      FigDebugAssert3();
LABEL_245:
      OUTLINED_FUNCTION_9_27();
      container = 0;
      goto LABEL_246;
    }
  }

  utilities2 = [*(&self->super.super.isa + v89) utilities];
  OUTLINED_FUNCTION_16_17(utilities2, v102, v103, v104, v105, v106, v107, v108, v264, v267, v270, v273, extendedCopy, statsCopy, v282, containerCopy, sbuf, v291, learnCopy, v297, v300, v303, v306, cf, v312, v315, v318, v321, v324, v325, __src.duration.value, *&__src.duration.timescale, __src.duration.epoch, __src.presentationTimeStamp.value, *&__src.presentationTimeStamp.timescale, __src.presentationTimeStamp.epoch, __src.decodeTimeStamp.value, *&__src.decodeTimeStamp.timescale, __src.decodeTimeStamp.epoch, v327, time.duration.value, *&time.duration.timescale, time.duration.epoch, time.presentationTimeStamp.value, *&time.presentationTimeStamp.timescale, time.presentationTimeStamp.epoch, time.decodeTimeStamp.value, *&time.decodeTimeStamp.timescale, time.decodeTimeStamp.epoch, v329, v330, v331, v332, v333, v334[0]);
  v62 = [utilities2 downScalePixelBuffer:v318 toPixelBuffer:v325 propagateAttachments:1 gdcParams:&time applyGDC:0];
  masksCopy = v291;
  if (v62)
  {
LABEL_216:
    v257 = v62;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v264) = v257;
    FigDebugAssert3();
    OUTLINED_FUNCTION_9_27();
    container = 0;
    goto LABEL_226;
  }

LABEL_46:
  v109 = [objc_msgSend(OUTLINED_FUNCTION_33_11(v62 v51];
  container = v109;
  if (!v109)
  {
    goto LABEL_224;
  }

  v312 = v109;
  if ((cf & 1) == 0)
  {
    v126 = CMSampleBufferGetImageBuffer(v16);
    if (v126)
    {
      v16 = v126;
      v134 = v342;
      v135 = OUTLINED_FUNCTION_28_7(v126, v127, v128, v129, v130, v131, v132, v133, v264, v267, v270, v273, extendedCopy, statsCopy, v282, containerCopy, sbuf, v291, learnCopy, v297, v300, v303, v306, cf, v312, v315, v318, v321);
      v136 = -[NSMutableDictionary objectForKeyedSubscript:](self->_intermediatePixelBufferPoolsByAttachedMediaKeys, "objectForKeyedSubscript:", [stats objectForKeyedSubscript:*off_1E798B540]);
      if (v134)
      {
        v137 = v135;
        container = v312;
        v138 = [v137 createLinearThumbnailFromMetadata:stats ltmThumbnailPixelBuffer:v16 cameraInfo:v136 applyGDC:v306 toPixelBuffer:v312];
      }

      else
      {
        v264 = v312;
        v140 = v135;
        container = v312;
        v138 = [v140 createLinearThumbnailFromMetadata:stats preLTMThumbnailPixelBuffer:v16 postLTMThumbnailPixelBuffer:v325 cameraInfo:v136 applyGDC:v306 cropToPreLTMBounds:1 toPixelBuffer:?];
      }

      masksCopy = v291;
      epoch = v303;
      if (v138)
      {
        goto LABEL_225;
      }

      goto LABEL_58;
    }

LABEL_224:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3();
    goto LABEL_225;
  }

  v110 = [stats objectForKeyedSubscript:*off_1E798B458];
  v118 = OUTLINED_FUNCTION_28_7(v110, v111, v112, v113, v114, v115, v116, v117, v264, v267, v270, v273, extendedCopy, statsCopy, v282, containerCopy, sbuf, v291, learnCopy, v297, v300, v303, v306, cf, v312, v315, v318, v321);
  v16 = v118;
  if (!v110)
  {
    OUTLINED_FUNCTION_16_17(v118, v119, v120, v121, v122, v123, v124, v125, v264, v267, v270, v273, extendedCopy, statsCopy, v282, containerCopy, sbuf, v291, learnCopy, v297, v300, v303, v306, cf, v312, v315, v318, v321, v324, v325, __src.duration.value, *&__src.duration.timescale, __src.duration.epoch, __src.presentationTimeStamp.value, *&__src.presentationTimeStamp.timescale, __src.presentationTimeStamp.epoch, __src.decodeTimeStamp.value, *&__src.decodeTimeStamp.timescale, __src.decodeTimeStamp.epoch, v327, time.duration.value, *&time.duration.timescale, time.duration.epoch, time.presentationTimeStamp.value, *&time.presentationTimeStamp.timescale, time.presentationTimeStamp.epoch, time.decodeTimeStamp.value, *&time.decodeTimeStamp.timescale, time.decodeTimeStamp.epoch, v329, v330, v331, v332, v333, v334[0]);
    container = v312;
    v139 = [v16 downScalePixelBuffer:learn toPixelBuffer:v312 propagateAttachments:1 gdcParams:&time applyGDC:v30];
    v16 = v321;
    if (v139)
    {
      goto LABEL_225;
    }

    goto LABEL_59;
  }

  container = v312;
  if ([v118 createLinearThumbnailFromMetadata:stats postLTMThumbnailPixelBuffer:v325 cameraInfo:-[NSMutableDictionary objectForKeyedSubscript:](self->_intermediatePixelBufferPoolsByAttachedMediaKeys applyGDC:"objectForKeyedSubscript:" cropToPreLTMBounds:objc_msgSend(stats toPixelBuffer:{"objectForKeyedSubscript:", *off_1E798B540)), v306, 0, v312}])
  {
    goto LABEL_225;
  }

LABEL_58:
  v16 = v321;
  if ([objc_msgSend(*(&self->super.super.isa + v321) "utilities")])
  {
LABEL_225:
    OUTLINED_FUNCTION_9_27();
    goto LABEL_226;
  }

LABEL_59:
  if ([objc_msgSend(*(&self->super.super.isa + v16) "utilities")])
  {
    goto LABEL_225;
  }

  v141 = BWSampleBufferGetAttachedMedia(ImageBuffer, 0x1F21AB1F0);
  stats = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  if (!v141)
  {
LABEL_67:
    cf = 0;
    goto LABEL_68;
  }

  if (!CMSampleBufferGetImageBuffer(v141))
  {
    goto LABEL_224;
  }

  OUTLINED_FUNCTION_33();
  if (!_ZF)
  {
    goto LABEL_67;
  }

  v16 = v142;
  v143 = [objc_msgSend(OUTLINED_FUNCTION_33_11(v142 v143];
  if (!v143)
  {
    goto LABEL_224;
  }

  cf = v143;
  if ([(BWSmartStyleLearningNode *)self _cropAndUndistortWeightSegmentMap:v16 unstyledSampleBuffer:ImageBuffer doGDC:0 toPixelBuffer:?])
  {
    learn = 0;
    extended = 0;
    stats = 0;
LABEL_226:
    LOBYTE(v30) = 0;
    goto LABEL_172;
  }

LABEL_68:
  if (masksCopy)
  {
    OUTLINED_FUNCTION_10_25();
    time.duration.epoch = epoch;
    v151 = [(BWSmartStyleLearningNode *)self _cropAndScaleMasks:masksCopy unstyledSampleBuffer:ImageBuffer currentPTS:&time applyGDC:v306 useIntermediatePool:?];
    if (v151)
    {
      v152 = v151;

      masksCopy = v152;
    }
  }

  v16 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  stats = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  if (BYTE6(self->_previousPTS.epoch) != 1 || (OUTLINED_FUNCTION_33(), !_ZF) || !masksCopy)
  {
    if (!masksCopy)
    {
      v203 = 0;
      v185 = 0;
      v297 = 0;
      v291 = 0;
      v306 = 0;
      ImageBuffer = 0;
      v273 = 0;
      v282 = 0;
      v198 = 0;
      learn = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
      v16 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
      goto LABEL_110;
    }

    v185 = 0;
    OUTLINED_FUNCTION_34_9();
    v30 = *off_1E798D298;
    learn = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
    v16 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
    goto LABEL_102;
  }

  memset(&__src, 0, sizeof(__src));
  v154 = [objc_msgSend(OUTLINED_FUNCTION_33_11(v153 v154];
  stats = v154;
  if (!v154)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
LABEL_234:
    FigDebugAssert3();
    OUTLINED_FUNCTION_22_10();
    goto LABEL_235;
  }

  v169 = OUTLINED_FUNCTION_28_7(v154, v162, v163, v164, v165, v166, v167, v168, v264, v267, v270, v273, extendedCopy, statsCopy, v282, containerCopy, sbuf, v291, learnCopy, v297, v300, v303, v306, cf, v312, v315, v318, v321);
  OUTLINED_FUNCTION_18_14();
  if (!_ZF)
  {
    v178 = v179;
  }

  if (!learn)
  {
    learn = v178;
  }

  OUTLINED_FUNCTION_16_17(v170, v171, v172, v173, v174, v175, v176, v177, v266, v269, v272, v275, v278, v281, v284, v287, sbufa, v293, v296, v299, v302, v305, v308, cfa, v314, v317, v320, v323, v324, v325, __src.duration.value, *&__src.duration.timescale, __src.duration.epoch, __src.presentationTimeStamp.value, *&__src.presentationTimeStamp.timescale, __src.presentationTimeStamp.epoch, __src.decodeTimeStamp.value, *&__src.decodeTimeStamp.timescale, __src.decodeTimeStamp.epoch, v327, time.duration.value, *&time.duration.timescale, time.duration.epoch, time.presentationTimeStamp.value, *&time.presentationTimeStamp.timescale, time.presentationTimeStamp.epoch, time.decodeTimeStamp.value, *&time.decodeTimeStamp.timescale, time.decodeTimeStamp.epoch, v329, v330, v331, v332, v333, v334[0]);
  v180 = [v169 downScalePixelBuffer:learn toPixelBuffer:stats propagateAttachments:1 gdcParams:&time applyGDC:v30];
  if (v180)
  {
    v259 = v180;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v264) = v259;
LABEL_231:
    FigDebugAssert3();
    OUTLINED_FUNCTION_22_10();
    container = v312;
LABEL_235:
    epoch = v303;
    learn = 0;
    extended = 0;
    goto LABEL_236;
  }

  [(FigMetalContext *)self->_metalContext waitForSchedule];
  v182 = OUTLINED_FUNCTION_26_9(ImageBuffer, v181, &__src);
  if (v182)
  {
    v260 = v182;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v264) = v260;
    goto LABEL_231;
  }

  learn = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  memcpy(&time, &__src, sizeof(time));
  v183 = BWSampleBufferCreateFromPixelBufferWithTimingInfo(stats, &time, &v348, &v347);
  container = v312;
  if (v183)
  {
    v261 = v183;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v264) = v261;
    goto LABEL_234;
  }

  if (!v347)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    goto LABEL_234;
  }

  BWSampleBufferSetAttachedMedia(containerCopy, 0x1F21AB0B0, v347);
  OUTLINED_FUNCTION_10_25();
  epoch = v303;
  time.duration.epoch = v303;
  v184 = [(BWSmartStyleLearningNode *)self _runInferences:containerCopy unstyledSampleBuffer:ImageBuffer withMasks:masksCopy currentPTS:&time];
  v185 = v184;
  if (!v184 || (v186 = -[__CVBuffer count](v184, "count"), v186 != [masksCopy count]))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3();
  }

  v187 = v185;
  OUTLINED_FUNCTION_10_25();
  time.duration.epoch = v303;
  v188 = [(BWSmartStyleLearningNode *)self _blitMasksToOutputPools:v185 unstyledSampleBuffer:ImageBuffer currentPTS:&time];
  if (v188)
  {
    v189 = v188;

    v185 = v189;
  }

  v16 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  CFRelease(stats);
  if (v348)
  {
    CFRelease(v348);
    v348 = 0;
  }

  stats = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  if (v347)
  {
    CFRelease(v347);
    v347 = 0;
  }

  v30 = *off_1E798D298;
  if (v185)
  {
    v306 = v185;
    v190 = [-[__CVBuffer objectForKeyedSubscript:](v185 objectForKeyedSubscript:{v30), "objectForKeyedSubscript:", 0x1F21AAED0}];
    if (!v190 || (v191 = CMSampleBufferGetImageBuffer(v190)) == 0 || (v185 = v191, (v192 = [-[__CVBuffer objectForKeyedSubscript:](v306 objectForKeyedSubscript:{v30), "objectForKeyedSubscript:", 0x1F21AAEF0}]) == 0) || (v193 = CMSampleBufferGetImageBuffer(v192)) == 0 || (ImageBuffer = v193, (v194 = objc_msgSend(-[__CVBuffer objectForKeyedSubscript:](v306, "objectForKeyedSubscript:", v30), "objectForKeyedSubscript:", 0x1F21AAF30)) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_9();
      FigDebugAssert3();
      OUTLINED_FUNCTION_14_16();
      goto LABEL_208;
    }

    v297 = ImageBuffer;
    v195 = CMSampleBufferGetImageBuffer(v194);
    if (!v195)
    {
LABEL_207:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_9();
      FigDebugAssert3();
      OUTLINED_FUNCTION_14_16();
      epoch = v303;
LABEL_208:
      OUTLINED_FUNCTION_22_10();
      extended = v306;
      goto LABEL_173;
    }

    epoch = v195;
    ImageBuffer = 1;
  }

  else
  {
    OUTLINED_FUNCTION_34_9();
  }

LABEL_102:
  v196 = [objc_msgSend(masksCopy objectForKeyedSubscript:{v30), "objectForKeyedSubscript:", 0x1F21AAED0}];
  if (!v196)
  {
    goto LABEL_207;
  }

  v291 = epoch;
  v197 = CMSampleBufferGetImageBuffer(v196);
  if (!v197)
  {
    goto LABEL_207;
  }

  v198 = v197;
  v199 = [objc_msgSend(masksCopy objectForKeyedSubscript:{v30), "objectForKeyedSubscript:", 0x1F21AAEF0}];
  if (!v199)
  {
    goto LABEL_207;
  }

  v200 = CMSampleBufferGetImageBuffer(v199);
  if (!v200)
  {
    goto LABEL_207;
  }

  v282 = v200;
  v201 = [objc_msgSend(masksCopy objectForKeyedSubscript:{v30), "objectForKeyedSubscript:", 0x1F21AAF30}];
  if (!v201)
  {
    goto LABEL_207;
  }

  v202 = CMSampleBufferGetImageBuffer(v201);
  if (!v202)
  {
    goto LABEL_207;
  }

  v273 = v202;
  v203 = 1;
LABEL_110:
  OUTLINED_FUNCTION_33();
  if (_ZF)
  {
    if (v185)
    {
      if (v198)
      {
        v204 = [(BWSmartStyleLearningNode *)self _runFalsePositiveRejectionOnPixelBuffer:v185 unrefinedPixelBuffer:v198];
        if (v204)
        {
          v262 = v204;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_47();
          LODWORD(v264) = v262;
          goto LABEL_238;
        }
      }
    }
  }

  if ((v203 | ImageBuffer) != 1)
  {
    goto LABEL_126;
  }

  ImageBuffer = *off_1E798D298;
  v205 = [OUTLINED_FUNCTION_37_8() objectForKeyedSubscript:0x1F21AAED0];
  if (!v205)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
LABEL_238:
    FigDebugAssert3();
    learn = 0;
    goto LABEL_239;
  }

  v206 = v205;
  learn = [OUTLINED_FUNCTION_37_8() objectForKeyedSubscript:0x1F21AAEF0];
  if (!learn)
  {
    goto LABEL_220;
  }

  v30 = [OUTLINED_FUNCTION_37_8() objectForKeyedSubscript:0x1F21AAF30];
  if (!v30)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3();
    learn = 0;
    stats = 0;
    goto LABEL_240;
  }

  stats = masksCopy;
  os_unfair_lock_lock(&self->_lastLearnedROI.size.height);
  BYTE4(self->_lastLearnedROI.size.height) = 1;
  v207 = *&self->_mostRecentMasksLock._os_unfair_lock_opaque;
  if (v207)
  {
    CFRelease(v207);
  }

  *&self->_mostRecentMasksLock._os_unfair_lock_opaque = CFRetain(v206);
  mostRecentLearnedPersonMaskSampleBuffer = self->_mostRecentLearnedPersonMaskSampleBuffer;
  if (mostRecentLearnedPersonMaskSampleBuffer)
  {
    CFRelease(mostRecentLearnedPersonMaskSampleBuffer);
  }

  self->_mostRecentLearnedPersonMaskSampleBuffer = CFRetain(learn);
  mostRecentLearnedSkinMaskSampleBuffer = self->_mostRecentLearnedSkinMaskSampleBuffer;
  if (mostRecentLearnedSkinMaskSampleBuffer)
  {
    CFRelease(mostRecentLearnedSkinMaskSampleBuffer);
  }

  self->_mostRecentLearnedSkinMaskSampleBuffer = CFRetain(v30);
  os_unfair_lock_unlock(&self->_lastLearnedROI.size.height);
LABEL_126:
  LOBYTE(self->_srlCurveParameter) = 0;
  ImageBuffer = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  if (BYTE1(self->_mostRecentLearnedSkyMaskSampleBuffer) != 1 || !HIDWORD(v324))
  {
    if (HIDWORD(v324))
    {
      goto LABEL_131;
    }

LABEL_135:
    OUTLINED_FUNCTION_33();
    if (!_ZF)
    {
      v30 = 0;
LABEL_140:
      HIDWORD(v324) = 0;
      goto LABEL_141;
    }

    v213 = [(BWSmartStyleLearningNode *)self _createCoefficientsFromSampleBuffer:containerCopy to:v349];
    if (v213)
    {
      LODWORD(v30) = v213;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_47();
      LODWORD(v264) = v30;
      FigDebugAssert3();
      OUTLINED_FUNCTION_14_16();
    }

    else
    {
      v30 = CMSampleBufferGetImageBuffer(v349[0]);
      if (v30)
      {
        goto LABEL_140;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_9();
      FigDebugAssert3();
      learn = 0;
      stats = 0;
    }

    HIDWORD(v324) = 0;
    goto LABEL_240;
  }

  stats = masksCopy;
  [(FigCaptureSmartStyle *)self->_smartStyleLearned floatValue];
  if (v210 >= 0.25)
  {
    [(FigCaptureSmartStyle *)self->_smartStyleLearned floatValue];
    LOBYTE(self->_srlCurveParameter) = v212 < 0.5;
    if (v212 >= 0.5)
    {
      goto LABEL_131;
    }

    goto LABEL_135;
  }

  LOBYTE(self->_srlCurveParameter) = 0;
LABEL_131:
  v211 = [(BWSmartStyleLearningNode *)self _createIdentityCoefficientsFromSampleBuffer:containerCopy to:v349];
  if (!v211)
  {
    v30 = 0;
    learn = 0;
    HIDWORD(v324) = 1;
    if (BYTE1(self->_mostRecentLearnedSkyMaskSampleBuffer) != 1)
    {
      goto LABEL_166;
    }

LABEL_141:
    if (sbuf)
    {
      v214 = CMSampleBufferGetImageBuffer(sbuf);
    }

    else
    {
      OUTLINED_FUNCTION_18_14();
      if (_ZF)
      {
        v214 = v215;
      }

      else
      {
        v214 = v216;
      }
    }

    v217 = objc_alloc_init(self->_smartStyleProcessorInputOutputClass);
    learn = v217;
    if (v217)
    {
      if (v318)
      {
        v218 = v318;
      }

      else
      {
        v218 = v325;
      }

      [v217 setInputUnstyledPixelBuffer:v218];
      [learn setInputUnstyledThumbnailPixelBuffer:v325];
      [learn setInputLinearPixelBuffer:v312];
      [learn setInputMetadataDict:v300];
      [learn setInputLinearMetadataDict:v300];
      if (v185)
      {
        v219 = v185;
      }

      else
      {
        v219 = v198;
      }

      [learn setInputPersonMaskPixelBuffer:v219];
      CVPixelBufferGetWidth([learn inputPersonMaskPixelBuffer]);
      inputPersonMaskPixelBuffer = [OUTLINED_FUNCTION_21_13() inputPersonMaskPixelBuffer];
      CVPixelBufferGetHeight(inputPersonMaskPixelBuffer);
      OUTLINED_FUNCTION_13_20();
      [learn setInputPersonMaskCropRect:?];
      if (v291)
      {
        v221 = v291;
      }

      else
      {
        v221 = v273;
      }

      [learn setInputSkyMaskPixelBuffer:v221];
      CVPixelBufferGetWidth([learn inputSkyMaskPixelBuffer]);
      inputSkyMaskPixelBuffer = [OUTLINED_FUNCTION_21_13() inputSkyMaskPixelBuffer];
      CVPixelBufferGetHeight(inputSkyMaskPixelBuffer);
      OUTLINED_FUNCTION_13_20();
      [learn setInputSkyMaskCropRect:?];
      if (v297)
      {
        v223 = v297;
      }

      else
      {
        v223 = v282;
      }

      [learn setInputSkinMaskPixelBuffer:v223];
      CVPixelBufferGetWidth([learn inputSkinMaskPixelBuffer]);
      inputSkinMaskPixelBuffer = [OUTLINED_FUNCTION_21_13() inputSkinMaskPixelBuffer];
      CVPixelBufferGetHeight(inputSkinMaskPixelBuffer);
      OUTLINED_FUNCTION_13_20();
      [learn setInputSkinMaskCropRect:?];
      [learn setOutputLearnedStyleCoefficientsPixelBuffer:v30];
      [learn setInputSmartStyle:objc_alloc_init(self->_smartStyleClass)];
      [objc_msgSend(learn "inputSmartStyle")];
      [learnCopy intensity];
      v226 = v225;
      inputSmartStyle = [learn inputSmartStyle];
      LODWORD(v228) = v226;
      [inputSmartStyle setCastIntensity:v228];
      [learnCopy toneBias];
      v230 = v229;
      inputSmartStyle2 = [learn inputSmartStyle];
      LODWORD(v232) = v230;
      [inputSmartStyle2 setToneBias:v232];
      [learnCopy colorBias];
      v234 = v233;
      inputSmartStyle3 = [learn inputSmartStyle];
      LODWORD(v236) = v234;
      [inputSmartStyle3 setColorBias:v236];
      [learn setInputTuningType:*MEMORY[0x1E69916A8]];
      [learn setInputSRLPixelBuffer:v214];
      if (self->_generateImageStats)
      {
        v237 = cf;
      }

      else
      {
        v237 = 0;
      }

      [learn setInputWeightPlanePixelBufferScaledForISPSMG:v237];
      os_unfair_lock_lock(&self->_semanticStyleSceneLock);
      [learn setSemanticStyleSceneType:self->_semanticStyleSceneType];
      os_unfair_lock_unlock(&self->_semanticStyleSceneLock);
      [learn setOutputImageStatistics:statsCopy];
      [learn setOutputImageStatisticsExtended:extendedCopy];
      [learn setSubjectRelightingEnabled:self->_runSrlStatsAndEnableStylesIfNeeded];
      if (HIDWORD(v324))
      {
        [learn setSubjectRelightingEnabled:1];
        [learn setComputeOnlySubjectRelighting:1];
      }

      [*(&self->super.super.isa + v321) setInputOutput:learn];
      process = [*(&self->super.super.isa + v321) process];
      if (!process)
      {
        [(FigMetalContext *)self->_metalContext waitForSchedule];
LABEL_166:
        os_unfair_lock_lock(&self->_workQueue);
        learnedCoefficientsSampleBuffer = self->_learnedCoefficientsSampleBuffer;
        if (learnedCoefficientsSampleBuffer)
        {
          CFRelease(learnedCoefficientsSampleBuffer);
        }

        self->_learnedCoefficientsSampleBuffer = v349[0];

        *&self->_workQueueLearnCount = learnCopy;
        ImageBuffer = 448;

        epoch = v303;
        extended = v306;
        container = v312;
        if (learn)
        {
          v240 = objc_alloc(MEMORY[0x1E696AD98]);
          [learn outputSRLCurveParameter];
          v241 = [v240 initWithFloat:?];
        }

        else
        {
          v241 = 0;
        }

        self->_smartStyleLearned = v241;
        v16 = 464;

        *&self->_smartStyleRenderingRequiredForSRL = [learn outputSRLStats];
        v242 = v344;
        *&self->_srlStats = v343;
        *&self->_lastLearnedROI.origin.y = v242;
        os_unfair_lock_unlock(&self->_workQueue);
        stats = 0;
        LOBYTE(v30) = 1;
        goto LABEL_172;
      }

      v16 = process;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_47();
      LODWORD(v264) = v16;
      goto LABEL_221;
    }

LABEL_220:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
LABEL_221:
    FigDebugAssert3();
LABEL_239:
    stats = 0;
    LOBYTE(v30) = 0;
    goto LABEL_240;
  }

  LODWORD(v30) = v211;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_47();
  LODWORD(v264) = v30;
  FigDebugAssert3();
  OUTLINED_FUNCTION_14_16();
  HIDWORD(v324) = 1;
LABEL_240:
  epoch = v303;
  extended = v306;
  OUTLINED_FUNCTION_22_10();
  container = v312;
LABEL_173:
  if (v348)
  {
    CFRelease(v348);
  }

  if (v347)
  {
    CFRelease(v347);
  }

  if (stats)
  {
    CFRelease(stats);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (ImageBuffer)
  {
    CFRelease(ImageBuffer);
  }

  if (container)
  {
    CFRelease(container);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v243 = MEMORY[0x1E695FF58];
  if ((v30 & 1) == 0)
  {
    os_unfair_lock_lock(&self->_workQueue);
    v244 = self->_learnedCoefficientsSampleBuffer;
    if (v244)
    {
      CFRelease(v244);
      self->_learnedCoefficientsSampleBuffer = 0;
    }

    os_unfair_lock_unlock(&self->_workQueue);
  }

  if (*v243 == 1)
  {
    OUTLINED_FUNCTION_10_25();
    time.duration.epoch = epoch;
    CMTimeGetSeconds(&time.duration);
    OUTLINED_FUNCTION_29_5(v245, v246, v247, v248, v249, v250, v251, v252, v264, v267, v270, v273, extendedCopy, statsCopy, v282, containerCopy, sbuf, v291, learnCopy, v297, v300, v303, v306, cf, v312, v315, v318, v321, v324, HIDWORD(v324));
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }
}

- (uint64_t)initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForCurrentConfigurationToBecomeLive
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)processMaskSampleBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)processMaskSampleBuffer:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)processVideoSampleBuffer:frameEmitted:.cold.14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.16()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.17()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.18()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.19()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.20()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.21()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.22()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.23()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.24()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.25()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runInferences:unstyledSampleBuffer:withMasks:currentPTS:.cold.26()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_extractANSTMasks:forPTS:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_extractANSTMasks:forPTS:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_extractANSTMasks:forPTS:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_extractANSTMasks:forPTS:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_extractANSTMasks:forPTS:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_extractANSTMasks:forPTS:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_extractANSTMasks:forPTS:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_extractANSTMasks:forPTS:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_extractANSTMasks:forPTS:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_deepCopyMasks:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_deepCopyMasks:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_deepCopyMasks:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_deepCopyMasks:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runFalsePositiveRejectionOnPixelBuffer:unrefinedPixelBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_runFalsePositiveRejectionOnPixelBuffer:unrefinedPixelBuffer:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_runFalsePositiveRejectionOnPixelBuffer:unrefinedPixelBuffer:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_getSampleBufferPresentationTimeStamp:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_initVMRefinerInference:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_initVMRefinerInference:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_initVMRefinerInference:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_initVMRefinerInference:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_initVMRefinerInference:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_asynchronouslySignalEvent:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end