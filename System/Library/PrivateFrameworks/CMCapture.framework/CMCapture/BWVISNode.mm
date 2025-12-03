@interface BWVISNode
- (BOOL)hasNonLiveConfigurationChanges;
- (BWVISNode)initWithSensorIDDict:(id)dict stabilizationMethod:(int)method stabilizationType:(int)type ispProcessingSession:(id)session maxSupportedFrameRate:(float)rate activeMaxFrameRate:(float)frameRate gpuPriority:(int)priority metalSubmissionAndCompletionQueuePriority:(unsigned int)self0 motionAttachmentsSource:(int)self1 fillExtendedRowsOfOutputBuffer:(BOOL)self2 overCaptureEnabled:(BOOL)self3 stereoMode:(int)self4 videoStabilizationOverscanOverride:(float)self5 videoStabilizationStrength:(int)self6 zoomSmoothingEnabled:(BOOL)self7 applyFrameCropOffset:(BOOL)self8 motionMetadataPreloadingEnabled:(BOOL)self9 visExecutionMode:(int)executionMode livePhotoCleanOutputRect:(CGRect)rect cameraInfoByPortType:(id)portType cvisExtendedLookAheadDuration:(float)duration distortionCorrectionEnabledPortTypes:(id)types distortionCompensationEnabledPortTypes:(id)portTypes minDistanceForBravoParallaxShift:(float)shift videoGreenGhostOfflineMetadataEnabled:(BOOL)metadataEnabled videoGreenGhostOfflineLightSourceMaskEnabled:(BOOL)maskEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(BOOL)dataEnabled attachStabilizedOutputCameraTrajectory:(BOOL)dict0 systemIsUnderCriticalThermalPressure:(BOOL)dict1 faceAwareVideoStabilizationEnabled:(BOOL)dict2;
- (CGRect)irisVISCleanOutputRect;
- (double)_calculateOpticalCenterFromMetadata:(uint64_t)metadata;
- (double)_droppedSamplePTSFromSampleBuffer:(uint64_t)buffer@<X8>;
- (double)_transformPointsInMetadata:(double)metadata pts:(double)pts;
- (id)_updateSupportedPixelFormats;
- (uint64_t)_attachHarvestedStabilizationMetadataToCinematographyFrame:(os_unfair_lock_s *)frame;
- (uint64_t)_checkIfGreenGhostIsPresentWithSampleBuffer:(uint64_t)buffer;
- (uint64_t)_cinematographyFrameForSampleBuffer:(uint64_t)buffer;
- (uint64_t)_collectAttachedMediaForReprocessingFrom:(uint64_t)from offlineKey:(uint64_t)key offlineKeyData:(void *)data to:;
- (uint64_t)_collectMetadataForReprocessingFrom:(void *)from to:;
- (uint64_t)_findBestMotionTensorsInRingBufferWithKey:(os_unfair_lock_s *)key pts:(uint64_t)pts;
- (uint64_t)_harvestMetadataFromSampleBuffer:(uint64_t)buffer;
- (uint64_t)_newFormatRequirementsAdjustedToOutputDimensionAspectRatio:(uint64_t)result;
- (uint64_t)_reportIOSurfaceCompressionCoreAnalyticsData;
- (uint64_t)_setupVISProcessorController;
- (uint64_t)_stabilizeCinematographyMetadataInCinematographyFrame:(uint64_t)frame;
- (uint64_t)_stabilizeMetadataForSampleBuffer:(uint64_t)buffer;
- (uint64_t)_transformRectanglesInMetadata:(__int128 *)metadata pts:;
- (uint64_t)_updateInputRequirements;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)_addMotionTensorsToRingBuffer:(uint64_t)buffer pts:;
- (void)_addVISDigitalZoomToMetadata:(uint64_t)metadata sampleBuffer:(int)buffer forReprocessing:;
- (void)_flushBuffers;
- (void)_handleIrisKeyFrameCachingForSampleBuffer:(uint64_t)buffer;
- (void)_releaseResourcesForReconfig:(uint64_t)reconfig;
- (void)_tallyAndEmitDroppedSample:(uint64_t)sample;
- (void)_tallyAndEmitSampleBuffer:(uint64_t)buffer;
- (void)_tallyCompressedIOSurfaceStatsForSBuf:(uint64_t)buf;
- (void)_updateOutputRequirements;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didCompleteProcessingOfBuffer:(opaqueCMSampleBuffer *)buffer withStatus:(int)status;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setEmitSampleBufferSemaphore:(id)semaphore;
- (void)setIspProcessingSession:(id)session;
- (void)setLowResImageUsedByVideoEncoderEnabled:(BOOL)enabled;
- (void)setMaxLossyCompressionLevel:(int)level;
- (void)setOutputColorSpaceProperties:(int)properties;
- (void)setOutputDepthDimensions:(id)dimensions;
- (void)setOutputDimensions:(id)dimensions;
- (void)setPersonSegmentationRenderingEnabled:(BOOL)enabled;
- (void)setProcessingSemaphore:(id)semaphore;
- (void)setSmartStyleConfigurationDict:(id)dict;
- (void)setSmartStyleRenderingEnabled:(BOOL)enabled;
- (void)setSmartStyleReversibilityEnabled:(BOOL)enabled;
- (void)setStabilizeDepthAttachments:(BOOL)attachments;
- (void)setVideoGreenGhostMitigationEnabled:(BOOL)enabled;
- (void)setVideoSTFEnabled:(BOOL)enabled;
- (void)willStartProcessingBuffer:(opaqueCMSampleBuffer *)buffer withStatus:(int)status;
@end

@implementation BWVISNode

- (id)_updateSupportedPixelFormats
{
  if (result)
  {
    v1 = result;
    if ((*(result + 33) - 3) > 1)
    {
      array = [MEMORY[0x1E695DF70] array];
      [array addObjectsFromArray:&unk_1F22491B0];
      if (*(v1 + 33) == 2)
      {
        FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 1, *(v1 + 44));
        [OUTLINED_FUNCTION_4() addObjectsFromArray:?];
      }

      v1[20] = [array copy];
      result = [array copy];
      goto LABEL_16;
    }

    if (FigCapturePlatformSupportsUniversalCompression())
    {
      v2 = 1;
    }

    else
    {
      v2 = FigCapturePlatformSupportsHTPC16x8Compression() != 0;
    }

    v4 = FigCapturePlatformSupportsUniversalLossyCompression() != 0;
    v5 = *(v1 + 33) == 4;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __41__BWVISNode__updateSupportedPixelFormats__block_invoke;
    v15 = &unk_1E7999D88;
    v6 = v5;
    v17 = v2;
    v18 = v6;
    v19 = v4;
    v16 = v1;
    v7 = [MEMORY[0x1E696AE18] predicateWithBlock:&v12];
    ispProcessingSession = [objc_msgSend(OUTLINED_FUNCTION_3_77() ispProcessingSession];
    v9 = MEMORY[0x1E6966130];
    if (ispProcessingSession)
    {
      v10 = ispProcessingSession;

      v1[20] = [visn_pixelFormatsArrayFromPixelFormatTypeValue(objc_msgSend(v10 objectForKeyedSubscript:{*v9)), "filteredArrayUsingPredicate:", v7}];
    }

    result = [objc_msgSend(OUTLINED_FUNCTION_3_77() "ispProcessingSession")];
    if (result)
    {
      v11 = result;

      result = [visn_pixelFormatsArrayFromPixelFormatTypeValue(objc_msgSend(objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798A080), "objectForKeyedSubscript:", *v9)), "filteredArrayUsingPredicate:", v7}];
LABEL_16:
      v1[21] = result;
    }
  }

  return result;
}

- (uint64_t)_updateInputRequirements
{
  if (result)
  {
    v1 = result;
    v2 = &OBJC_IVAR___BWNode__input;
    [objc_msgSend(*(result + 8) "formatRequirements")];
    OUTLINED_FUNCTION_33();
    if (v3)
    {
      commonVideoGreenGhostMitigationParameters = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters commonVideoGreenGhostMitigationParameters];
      v5 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](commonVideoGreenGhostMitigationParameters objectForKeyedSubscript:{@"BrightLightMitigationParameters", "objectForKeyedSubscript:", @"Version", "intValue"}];
      v6 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](commonVideoGreenGhostMitigationParameters objectForKeyedSubscript:{@"LowLightMitigationParameters", "objectForKeyedSubscript:", @"Version", "intValue"}];
      if (v5 >= 3 && v6 < 3)
      {
        v8 = 3;
      }

      else if ([objc_msgSend(-[NSDictionary objectForKeyedSubscript:](commonVideoGreenGhostMitigationParameters objectForKeyedSubscript:{@"LowLightMitigationParameters", "objectForKeyedSubscript:", @"Version", "intValue"}] <= 2)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 0;
    }

    [objc_msgSend(OUTLINED_FUNCTION_12_37() "primaryMediaConfiguration")];
    v9 = [objc_msgSend(OUTLINED_FUNCTION_12_37() "primaryMediaConfiguration")];
    v10 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, 0);
    v36 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(0, 1);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, 1);
    v12 = [v11 countByEnumeratingWithState:&v39 objects:v38 count:16];
    v13 = 0x1E7989000;
    if (v12)
    {
      v14 = v12;
      v37 = *v40;
      v34 = v1;
      v33 = v11;
      do
      {
        v15 = 0;
        v35 = v14;
        do
        {
          if (*v40 != v37)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v39 + 1) + 8 * v15);
          OUTLINED_FUNCTION_33();
          if (!v3 || ([v10 containsObject:v16] & 1) == 0)
          {
            OUTLINED_FUNCTION_33();
            if (!v3 || ![v36 containsObject:v16])
            {
              goto LABEL_31;
            }
          }

          v17 = objc_alloc_init(BWNodeInputMediaConfiguration);
          v18 = OUTLINED_FUNCTION_22_19();
          [OUTLINED_FUNCTION_4() setFormatRequirements:?];
          OUTLINED_FUNCTION_21_23();
          OUTLINED_FUNCTION_20_18();
          if ([v16 isEqual:0x1F21AB070])
          {
            v19 = v10;
            v20 = v13;
            v21 = v9;
            v22 = v2;
            delayedBufferCount = [v8 delayedBufferCount];
            if (delayedBufferCount <= [OUTLINED_FUNCTION_3_77() cinematicLookAheadFrameCount] + 1)
            {
              delayedBufferCount2 = [OUTLINED_FUNCTION_3_77() cinematicLookAheadFrameCount] + 1;
            }

            else
            {
              delayedBufferCount2 = [v8 delayedBufferCount];
            }

            [v8 setDelayedBufferCount:{delayedBufferCount2, v33}];
            v2 = v22;
            v9 = v21;
            v13 = v20;
            v10 = v19;
            v11 = v33;
            v1 = v34;
            v14 = v35;
          }

          if (([v16 isEqual:{@"PreLTMThumbnail", v33}] & 1) != 0 || objc_msgSend(v16, "isEqual:", @"LTMThumbnail"))
          {
            OUTLINED_FUNCTION_33();
            if (!v3)
            {
LABEL_31:
              v8 = 0;
            }
          }

          [OUTLINED_FUNCTION_12_37() setMediaConfiguration:v8 forAttachedMediaKey:v16];
          ++v15;
        }

        while (v14 != v15);
        v14 = [v11 countByEnumeratingWithState:&v39 objects:v38 count:16];
      }

      while (v14);
    }

    OUTLINED_FUNCTION_33();
    if (v3)
    {
      v25 = objc_alloc_init(BWNodeInputMediaConfiguration);
      v26 = OUTLINED_FUNCTION_22_19();
      [OUTLINED_FUNCTION_4() setFormatRequirements:?];
      OUTLINED_FUNCTION_21_23();
      OUTLINED_FUNCTION_20_18();
      [OUTLINED_FUNCTION_12_37() setMediaConfiguration:v8 forAttachedMediaKey:0x1F21AABF0];
      v27 = objc_alloc_init(BWNodeInputMediaConfiguration);
      v28 = OUTLINED_FUNCTION_22_19();
      [OUTLINED_FUNCTION_4() setFormatRequirements:?];
      OUTLINED_FUNCTION_21_23();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      [OUTLINED_FUNCTION_12_37() setMediaConfiguration:0 forAttachedMediaKey:0x1F21AABF0];
      v8 = 0;
    }

    [OUTLINED_FUNCTION_12_37() setMediaConfiguration:v8 forAttachedMediaKey:0x1F21AAC30];
    if ((*(v1 + 217) & 1) != 0 || (OUTLINED_FUNCTION_33(), v3) && (OUTLINED_FUNCTION_33(), v3))
    {
      v29 = objc_alloc_init(BWNodeInputMediaConfiguration);
      v30 = OUTLINED_FUNCTION_22_19();
      [OUTLINED_FUNCTION_4() setFormatRequirements:?];
      OUTLINED_FUNCTION_21_23();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      v8 = 0;
    }

    [OUTLINED_FUNCTION_12_37() setMediaConfiguration:v8 forAttachedMediaKey:0x1F219CD50];
    OUTLINED_FUNCTION_33();
    if (v3)
    {
      v31 = objc_alloc_init(BWNodeInputMediaConfiguration);
      v32 = OUTLINED_FUNCTION_22_19();
      [OUTLINED_FUNCTION_4() setFormatRequirements:?];
      OUTLINED_FUNCTION_21_23();
      OUTLINED_FUNCTION_20_18();
    }

    else
    {
      v8 = 0;
    }

    return [OUTLINED_FUNCTION_12_37() setMediaConfiguration:v8 forAttachedMediaKey:0x1F219CD70];
  }

  return result;
}

- (void)_updateOutputRequirements
{
  if (self)
  {
    v2 = objc_alloc_init(BWVideoFormatRequirements);
    +[BWVideoFormatRequirements cacheModesForOptimizedCPUAccess];
    [OUTLINED_FUNCTION_4() setSupportedCacheModes:?];
    v3 = *(self + 648);
    if (v3 || (v3 = [OUTLINED_FUNCTION_19_26() colorSpaceProperties], v3))
    {
      v33 = [MEMORY[0x1E696AD98] numberWithInt:v3];
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    }

    else
    {
      v4 = 0;
    }

    [(BWVideoFormatRequirements *)v2 setSupportedColorSpaceProperties:v4];
    if (*(self + 224) != 4)
    {
      v5 = OUTLINED_FUNCTION_19_26();
      v6 = v5;
      if (*(self + 180) && *(self + 184))
      {
        [(BWVideoFormatRequirements *)v2 setWidth:?];
        height = *(self + 184);
      }

      else
      {
        [v5 width];
        [OUTLINED_FUNCTION_4() setWidth:?];
        height = [v6 height];
      }

      [(BWVideoFormatRequirements *)v2 setHeight:height];
      if (v6)
      {
        IsFullRange = FigCapturePixelFormatIsFullRange([v6 pixelFormat]);
        IsTenBit = FigCapturePixelFormatIsTenBit([v6 pixelFormat]);
        v10 = FigCapturePixelFormatIs422([v6 pixelFormat]);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __38__BWVISNode__updateOutputRequirements__block_invoke;
        v29[3] = &__block_descriptor_35_e35_B24__0__NSNumber_8__NSDictionary_16l;
        v30 = IsTenBit;
        v31 = v10;
        v32 = IsFullRange;
        v11 = [*(self + 168) filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v29)}];
      }

      else
      {
        v11 = *(self + 168);
      }

      [(BWVideoFormatRequirements *)v2 setSupportedPixelFormats:v11];
      v12 = off_1E7989000;
      if (*(self + 713) == 1)
      {
        v13 = objc_alloc_init(BWNodeOutputMediaConfiguration);
        v14 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v14 setSupportedPixelFormats:&unk_1F22491C8];
        [(BWVideoFormatRequirements *)v14 setWidth:*(self + 716)];
        [(BWVideoFormatRequirements *)v14 setHeight:*(self + 720)];
        [OUTLINED_FUNCTION_39() setFormatRequirements:?];
        [(BWNodeOutputMediaConfiguration *)v13 setPassthroughMode:0];
        [(BWNodeOutputMediaConfiguration *)v13 setProvidesPixelBufferPool:1];
      }

      else
      {
        v13 = 0;
      }

      [OUTLINED_FUNCTION_6_59() setMediaConfiguration:v13 forAttachedMediaKey:@"Depth"];
      OUTLINED_FUNCTION_33();
      if (v15)
      {
        v28 = objc_alloc_init(BWNodeOutputMediaConfiguration);
        v16 = objc_alloc_init(BWVideoFormatRequirements);
        if (FigCapturePlatformSupportsUniversalCompression())
        {
          v17 = &unk_1F22491E0;
        }

        else
        {
          v17 = &unk_1F22491F8;
        }

        [(BWVideoFormatRequirements *)v16 setSupportedPixelFormats:v17];
        v18 = objc_opt_new();
        supportedColorSpaceProperties = [(BWVideoFormatRequirements *)v2 supportedColorSpaceProperties];
        OUTLINED_FUNCTION_17_20();
        v21 = [v20 countByEnumeratingWithState:? objects:? count:?];
        if (v21)
        {
          v22 = v21;
          v23 = MEMORY[0];
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (MEMORY[0] != v23)
              {
                objc_enumerationMutation(supportedColorSpaceProperties);
              }

              if ([*(8 * i) intValue] == 3)
              {
                v25 = &unk_1F22459E8;
              }

              else
              {
                v25 = &unk_1F2245A00;
              }

              [v18 addObject:v25];
            }

            OUTLINED_FUNCTION_17_20();
            v22 = [NSArray countByEnumeratingWithState:supportedColorSpaceProperties objects:"countByEnumeratingWithState:objects:count:" count:?];
          }

          while (v22);
        }

        [(BWVideoFormatRequirements *)v2 width];
        [OUTLINED_FUNCTION_28() setWidth:?];
        [(BWVideoFormatRequirements *)v2 height];
        [OUTLINED_FUNCTION_28() setHeight:?];
        [(BWVideoFormatRequirements *)v2 widthAlignment];
        [OUTLINED_FUNCTION_28() setWidthAlignment:?];
        [(BWVideoFormatRequirements *)v2 heightAlignment];
        [OUTLINED_FUNCTION_28() setHeightAlignment:?];
        [(BWVideoFormatRequirements *)v16 setSupportedColorSpaceProperties:v18];
        +[BWVideoFormatRequirements cacheModesForOptimizedCPUAccess];
        [OUTLINED_FUNCTION_28() setSupportedCacheModes:?];
        [(BWNodeOutputMediaConfiguration *)v28 setFormatRequirements:v16];
        [(BWNodeOutputMediaConfiguration *)v28 setPassthroughMode:0];
        [(BWNodeOutputMediaConfiguration *)v28 setProvidesPixelBufferPool:1];
        [OUTLINED_FUNCTION_6_59() setMediaConfiguration:v28 forAttachedMediaKey:0x1F21AB130];

        v12 = off_1E7989000;
      }

      else
      {
        [OUTLINED_FUNCTION_6_59() setMediaConfiguration:0 forAttachedMediaKey:0x1F21AB130];
      }

      OUTLINED_FUNCTION_33();
      if (v15)
      {
        v26 = objc_alloc_init(v12[66]);
        v27 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v27 setSupportedPixelFormats:&unk_1F2249210];
        [(BWVideoFormatRequirements *)v27 setWidth:[(BWVideoFormatRequirements *)v2 width]>> 2];
        [(BWVideoFormatRequirements *)v27 setHeight:[(BWVideoFormatRequirements *)v2 height]>> 2];
        [OUTLINED_FUNCTION_39() setFormatRequirements:?];
        [v26 setPassthroughMode:0];
        [v26 setProvidesPixelBufferPool:1];
        [OUTLINED_FUNCTION_6_59() setMediaConfiguration:v26 forAttachedMediaKey:0x1F21AB190];
      }
    }

    OUTLINED_FUNCTION_33();
    if (v15)
    {

      *(self + 248) = v2;
      v2 = objc_alloc_init(BWVideoFormatRequirements);
    }

    [OUTLINED_FUNCTION_6_59() setFormatRequirements:v2];
  }
}

- (BWVISNode)initWithSensorIDDict:(id)dict stabilizationMethod:(int)method stabilizationType:(int)type ispProcessingSession:(id)session maxSupportedFrameRate:(float)rate activeMaxFrameRate:(float)frameRate gpuPriority:(int)priority metalSubmissionAndCompletionQueuePriority:(unsigned int)self0 motionAttachmentsSource:(int)self1 fillExtendedRowsOfOutputBuffer:(BOOL)self2 overCaptureEnabled:(BOOL)self3 stereoMode:(int)self4 videoStabilizationOverscanOverride:(float)self5 videoStabilizationStrength:(int)self6 zoomSmoothingEnabled:(BOOL)self7 applyFrameCropOffset:(BOOL)self8 motionMetadataPreloadingEnabled:(BOOL)self9 visExecutionMode:(int)executionMode livePhotoCleanOutputRect:(CGRect)rect cameraInfoByPortType:(id)portType cvisExtendedLookAheadDuration:(float)duration distortionCorrectionEnabledPortTypes:(id)types distortionCompensationEnabledPortTypes:(id)portTypes minDistanceForBravoParallaxShift:(float)shift videoGreenGhostOfflineMetadataEnabled:(BOOL)metadataEnabled videoGreenGhostOfflineLightSourceMaskEnabled:(BOOL)maskEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(BOOL)dataEnabled attachStabilizedOutputCameraTrajectory:(BOOL)dict0 systemIsUnderCriticalThermalPressure:(BOOL)dict1 faceAwareVideoStabilizationEnabled:(BOOL)dict2
{
  selfCopy = self;
  if (!dict)
  {
    goto LABEL_96;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (type != 2 && ((type - 5) < 0xFFFFFFFE || !session || executionMode == 3 || self->_onlyGeneratingTransforms))
  {
    goto LABEL_96;
  }

  v99.receiver = self;
  v99.super_class = BWVISNode;
  selfCopy = [(BWNode *)&v99 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  typeCopy = type;
  dictCopy = dict;
  sessionCopy = session;
  dataEnabledCopy = dataEnabled;
  v100.origin.x = x;
  v100.origin.y = y;
  v100.size.width = width;
  v100.size.height = height;
  if (CGRectIsEmpty(v100))
  {
    v47 = 0;
    methodCopy2 = method;
  }

  else
  {
    methodCopy2 = method;
    v47 = method == 3 || method == 5;
  }

  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = width;
  v101.size.height = height;
  IsEmpty = CGRectIsEmpty(v101);
  selfCopy->_stabilizationMethod = methodCopy2;
  selfCopy->_stabilizationType = typeCopy;
  selfCopy->_fillExtendedRowsOfOutputBuffer = buffer;
  selfCopy->_visExecutionMode = executionMode;
  selfCopy->_usingExtendedCVISLivePhotoStabilization = v47;
  if (duration == 0.0)
  {
    duration = 0.5;
  }

  selfCopy->_cinematicLookAheadFrameCount = 0;
  v50 = MEMORY[0x1E6960C70];
  *&selfCopy->_lastEmittedPTS.value = *MEMORY[0x1E6960C70];
  selfCopy->_lastEmittedPTS.epoch = *(v50 + 16);
  visExecutionMode = selfCopy->_visExecutionMode;
  selfCopy->_onlyGeneratingTransforms = (visExecutionMode < 6) & (0x26u >> visExecutionMode);
  v53 = visExecutionMode == 3 || visExecutionMode == 0;
  selfCopy->_stabilizeMetadata = v53;
  selfCopy->_pipelineTraceID = 81;
  selfCopy->_videoStabilizationOverscanOverride = override;
  selfCopy->_gpuPriority = priority;
  selfCopy->_videoGreenGhostOfflineMetadataEnabled = metadataEnabled;
  selfCopy->_videoGreenGhostOfflineLightSourceMaskEnabled = maskEnabled;
  selfCopy->_lightSourceMaskAndKeypointDescriptorDataEnabled = dataEnabled;
  selfCopy->_lowLightGreenGhostMitigationEnabled = 1;
  selfCopy->_stereoMode = mode;
  selfCopy->_systemIsUnderCriticalThermalPressure = pressure;
  selfCopy->_greenGhostStatus.detectedGreenGhostFrameCount = 0;
  selfCopy->_greenGhostStatus.greenGhostSampleBufferMetadataDetected = 0;
  v54 = -[NSDictionary objectForKeyedSubscript:]([+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters commonVideoGreenGhostMitigationParameters], "objectForKeyedSubscript:", @"OfflineMitigationParameters");
  v55 = v47;
  if (v54)
  {
    v56 = v54;
    selfCopy->_greenGhostOfflineParameters.luxSuperLow = [objc_msgSend(v54 objectForKeyedSubscript:{@"LuxSuperLow", "intValue"}];
    selfCopy->_greenGhostOfflineParameters.luxLow = [objc_msgSend(v56 objectForKeyedSubscript:{@"LuxLow", "intValue"}];
    [objc_msgSend(v56 objectForKeyedSubscript:{@"ExposureHigh", "floatValue"}];
    selfCopy->_greenGhostOfflineParameters.exposureHigh = v57;
    selfCopy->_greenGhostOfflineParameters.clippedSmall = [objc_msgSend(v56 objectForKeyedSubscript:{@"ClippedSmall", "intValue"}];
    [objc_msgSend(v56 objectForKeyedSubscript:{@"MovieThresholdInSecond", "floatValue"}];
    selfCopy->_greenGhostOfflineParameters.movieThresholdInSecond = v58;
    v55 = v47;
  }

  selfCopy->_faceStabilizationEnabled = stabilizationEnabled;
  if (stabilizationEnabled)
  {
    v59 = -[NSDictionary objectForKeyedSubscript:]([+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters videoStabilizationParameters], "objectForKeyedSubscript:", @"FaceStabilizationTunings");
    if (method == 5)
    {
      v60 = @"FacePriority";
    }

    else
    {
      v60 = @"Balanced";
    }

    v61 = [v59 objectForKeyedSubscript:v60];
    if (v61)
    {
      v62 = v61;
      [objc_msgSend(v61 objectForKeyedSubscript:{@"SigmaMultiplierForFaceFiltering", "floatValue"}];
      selfCopy->_faceStabilizationSigmaMultiplierForFaceFiltering = v63;
      [objc_msgSend(v62 objectForKeyedSubscript:{@"SigmaMultiplierForBiasTracking", "floatValue"}];
    }

    else
    {
      LODWORD(selfCopy->_faceStabilizationSigmaMultiplierForFaceFiltering) = dword_1AD056408[method == 5];
      v64 = 0.975;
      if (method != 5)
      {
        v64 = 1.0;
      }
    }

    selfCopy->_faceStabilizationSigmaMultiplierForBiasTracking = v64;
    v65 = 1.75;
    if (method == 5)
    {
      v65 = 1.5;
    }

    selfCopy->_faceStabilizationSigmaModulationExponent = v65;
    LODWORD(selfCopy->_faceStabilizationSigmaModulationSmoothTransitionMultiplier) = dword_1AD056410[method == 5];
  }

  v66 = fmaxf(frameRate, 30.0);
  selfCopy->_maxFrameRate = v66;
  v67 = objc_alloc_init(MEMORY[0x1E695DF90]);
  selfCopy->_intermediatePixelBufferPools = v67;
  if (!v67)
  {
    goto LABEL_96;
  }

  LODWORD(dataEnabledCopy) = vcvtps_s32_f32(v66 * duration);
  v68 = selfCopy->_visExecutionMode;
  if (v68 != 4)
  {
    v69 = 0;
    v92 = v55 || IsEmpty;
    v70 = 1;
    if (method > 5)
    {
      stereoMode = 0;
      goto LABEL_51;
    }

    stereoMode = 0;
    if (((1 << method) & 0x2C) != 0)
    {
      v69 = 0;
      stereoMode = 4;
      if (v68 != 2 && v68 != 5)
      {
        if (v68 != 3)
        {
          if (v92)
          {
            if (preloadingEnabled)
            {
              v69 = 0;
              selfCopy->_cinematicLookAheadFrameCount = dataEnabledCopy;
              stereoMode = 2;
              goto LABEL_51;
            }

            stereoMode = selfCopy->_stereoMode;
            if (stereoMode == 1)
            {
              v69 = 3;
            }

            else
            {
              if (stereoMode == 2)
              {
                v69 = 0;
                stereoMode = 4;
                goto LABEL_51;
              }

              v69 = 0;
              stereoMode = 1;
            }
          }

          else
          {
            v69 = 0;
            stereoMode = 3;
          }

          v70 = dataEnabledCopy + 1;
          goto LABEL_51;
        }

        v69 = 0;
        stereoMode = 5;
      }
    }

LABEL_51:
    v98 = v70;
    if (typeCopy == 2 && rate >= 120.0)
    {
      dictCopy = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dict];
      [dictCopy setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", 0), *off_1E798A9F0}];
    }

    if (([types count] || objc_msgSend(portTypes, "count")) && typeCopy != 2 && typeCopy != 4)
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v90 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v90, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWVISNode.m", 433, @"LastShownDate:BWVISNode.m:433", @"LastShownBuild:BWVISNode.m:433", 0);
      free(v90);
    }

    else
    {
      v72 = objc_alloc_init(BWVISProcessorControllerConfiguration);
      selfCopy->_processorControllerConfiguration = v72;
      if (v72)
      {
        [(BWVISProcessorControllerConfiguration *)v72 setSensorIDDict:dictCopy];
        [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setSmoothingMethod:stereoMode];
        [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setMotionBlurShimmerMitigationMethod:v69];
        *&v73 = duration;
        [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setCinematicLookAheadTime:v73];
        [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setCinematicLookAheadFrameCount:dataEnabledCopy];
        [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setUseISPMotionData:(source - 1) < 2];
        [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setSphereCorrectionEnabled:source == 2];
        *&v74 = shift;
        [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setMinDistanceForBravoParallaxShift:v74];
        [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setIspProcessingSession:sessionCopy];
        [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setMetalSubmissionAndCompletionQueuePriority:queuePriority];
        if ([types count])
        {
          [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setDistortionCorrectionEnabledPortTypes:types];
        }

        if ([portTypes count])
        {
          [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setDistortionCompensationEnabledPortTypes:portTypes];
        }

        if (stereoMode == 2 || !preloadingEnabled)
        {
          if (!v55 && IsEmpty)
          {
            goto LABEL_68;
          }

          if (((stereoMode != 3) & ~v92) == 0)
          {
            [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setLivePhotoCleanOutputRect:x, y, width, height];
            [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setBlurBorderPixels:1];
LABEL_68:
            [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setAttachStabilizedOutputCameraTrajectory:trajectory];
            if (enabled)
            {
              v75 = selfCopy->_visExecutionMode;
              if ((v75 & 0xFFFFFFFE) == 2)
              {
LABEL_72:
                if (v75 == 3)
                {
                  v76 = 1;
                }

                else
                {
                  [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setAttachStabilizedTrajectoryHomography:1];
                  v76 = selfCopy->_visExecutionMode > 2u;
                }

                if ((v92 & v76 & 1) == 0)
                {
                  [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setAttachEstimatedMotionVector:1];
                }

                if (selfCopy->_onlyGeneratingTransforms)
                {
                  [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setOnlyGenerateTransformsParameters:1];
                }

                [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setEnableRollingShutterCorrectionOnly:selfCopy->_visExecutionMode == 5];
                v78 = stereoMode == 4 && selfCopy->_visExecutionMode == 5;
                selfCopy->_overrideFinalCropRect = v78;
                [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setDisableTransformLimitsForPredeterminedTrajectory:?];
                if ((stereoMode - 1) <= 4)
                {
                  -[BWVISProcessorControllerConfiguration setUseCameraGeometry:](selfCopy->_processorControllerConfiguration, "setUseCameraGeometry:", [-[NSDictionary objectForKeyedSubscript:](-[FigCaptureCameraParameters videoStabilizationParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters "sharedInstance")]);
                  processorControllerConfiguration = selfCopy->_processorControllerConfiguration;
                  v80 = selfCopy->_stereoMode;
                  useCameraGeometry = [(BWVISProcessorControllerConfiguration *)processorControllerConfiguration useCameraGeometry];
                  if (v80)
                  {
                    v82 = 1;
                  }

                  else
                  {
                    v82 = useCameraGeometry;
                  }

                  [(BWVISProcessorControllerConfiguration *)processorControllerConfiguration setUseCameraGeometry:v82];
                }

                [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setCameraInfoByPortType:portType];
                [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setVideoStabilizationStrength:strength];
                selfCopy->_zoomSmoothingEnabled = smoothingEnabled;
                [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setZoomSmoothingEnabled:smoothingEnabled];
                [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setApplyFrameCropOffset:offset];
                goto LABEL_91;
              }

              [(BWVISProcessorControllerConfiguration *)selfCopy->_processorControllerConfiguration setAttachStabilizedOutputCameraTrajectory:1];
            }

            v75 = selfCopy->_visExecutionMode;
            goto LABEL_72;
          }
        }
      }
    }

LABEL_96:

    return 0;
  }

  selfCopy->_cinematicLookAheadFrameCount = dataEnabledCopy;
  selfCopy->_offlineCameraInfoByPortType = portType;
  v98 = 1;
LABEL_91:
  v83 = selfCopy->_onlyGeneratingTransforms || selfCopy->_visExecutionMode == 4;
  [(BWVISNode *)&selfCopy->super.super.isa _updateSupportedPixelFormats];
  v84 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:selfCopy];
  v85 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWNodeInput *)v84 setFormatRequirements:v85];
  [(BWNodeInput *)v84 setDelayedBufferCount:v98];
  [(BWNodeInput *)v84 setPassthroughMode:v83];

  [(BWNode *)selfCopy addInput:v84];
  [(BWVISNode *)selfCopy _updateInputRequirements];
  v86 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:selfCopy];
  v87 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWNodeOutput *)v86 setFormatRequirements:v87];
  [(BWNodeOutput *)v86 setPassthroughMode:v83];
  [(BWNodeOutput *)v86 setOwningNodeRetainedBufferCount:1];

  [(BWNode *)selfCopy addOutput:v86];
  [(BWVISNode *)selfCopy _updateOutputRequirements];

  selfCopy->_limitedGMErrorLogger = [[BWLimitedGMErrorLogger alloc] initWithName:@"VIS" maxLoggingCount:10];
  *&selfCopy->_frameMotionTensorsRingBuffer[0].entries = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[0].framePTS.timescale = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[1].entries = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[1].framePTS.timescale = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[2].entries = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[2].framePTS.timescale = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[3].entries = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[3].framePTS.timescale = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[4].entries = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[4].framePTS.timescale = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[5].entries = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[5].framePTS.timescale = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[6].entries = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[6].framePTS.timescale = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[7].entries = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[7].framePTS.timescale = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[8].entries = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[8].framePTS.timescale = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[9].entries = 0u;
  *&selfCopy->_frameMotionTensorsRingBuffer[9].framePTS.timescale = 0u;
  selfCopy->_frameMotionTensorsRingBuffeLock._os_unfair_lock_opaque = 0;
  selfCopy->_processingSemaphore = 0;
  selfCopy->_ispProcessingSession = sessionCopy;
  [(BWNode *)selfCopy setSupportsLiveReconfiguration:1];
  [(BWNode *)selfCopy setRequiresEndOfDataForConfigurationChanges:1];
  return selfCopy;
}

- (void)dealloc
{
  [(BWVISNode *)self _releaseResourcesForReconfig:?];
  v3.receiver = self;
  v3.super_class = BWVISNode;
  [(BWNode *)&v3 dealloc];
}

- (BOOL)hasNonLiveConfigurationChanges
{
  if (!self->_onlyGeneratingTransforms || (visOutputFormatRequirements = self->_visOutputFormatRequirements, v3 = 1, -[NSDictionary isEqual:](-[BWVISProcessorControllerConfiguration outputPixelBufferAttributes](self->_processorControllerConfiguration, "outputPixelBufferAttributes"), "isEqual:", [+[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat formatByResolvingRequirements:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &visOutputFormatRequirements, 1)), "pixelBufferAttributes"}])))
  {
    v5.receiver = self;
    v5.super_class = BWVISNode;
    return [(BWNode *)&v5 hasNonLiveConfigurationChanges];
  }

  return v3;
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  v9 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, 1);
  if ([key isEqualToString:@"PrimaryFormat"])
  {
    if (self->_visExecutionMode == 4)
    {
      output = self->super._output;

      [(BWNodeOutput *)output setFormat:format];
    }

    else
    {
      [BWVISNode didSelectFormat:format forInput:? forAttachedMediaKey:?];
    }

    return;
  }

  if ((!self->_personSegmentationRenderingEnabled || ([key isEqualToString:0x1F21AABF0] & 1) == 0 && (!self->_personSegmentationRenderingEnabled || (objc_msgSend(key, "isEqualToString:", 0x1F21AAC30) & 1) == 0)) && (!self->_stabilizeDepthAttachments || (objc_msgSend(key, "isEqualToString:", @"Depth") & 1) == 0) && (!self->_lightSourceMaskAndKeypointDescriptorDataEnabled || (objc_msgSend(key, "isEqualToString:", 0x1F219CD50) & 1) == 0 && (objc_msgSend(key, "isEqualToString:", 0x1F219CD70) & 1) == 0) && (!self->_videoGreenGhostOfflineMetadataEnabled || !self->_videoGreenGhostOfflineLightSourceMaskEnabled || (objc_msgSend(key, "isEqualToString:", 0x1F219CD50) & 1) == 0))
  {
    if (!self->_smartStyleRenderingEnabled || ![v9 containsObject:key])
    {
      v39.receiver = self;
      v39.super_class = BWVISNode;
      [(BWNode *)&v39 didSelectFormat:format forInput:input forAttachedMediaKey:key];
      return;
    }

    if (!self->_intermediatePixelBufferResolvedFormats)
    {
      self->_intermediatePixelBufferResolvedFormats = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v48[0] = 0x1F21AAF30;
    v48[1] = 0x1F21AAEF0;
    v48[2] = 0x1F21AAED0;
    v48[3] = 0x1F21AB110;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
    if ([key isEqual:0x1F21AB070])
    {
      [(NSMutableDictionary *)self->_intermediatePixelBufferResolvedFormats setObject:format forKeyedSubscript:0x1F21AB070];
      if (!self->_smartStyleReversibilityEnabled)
      {
        return;
      }

      v12 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      if (!v12)
      {
        [BWVISNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      v13 = v12;
      v14 = FigCaptureAspectRatioForDimensions(*&self->_outputDimensions);
      if (FigCaptureGetAspectRatioFromFractionalAspectRatio(v14) == 2)
      {
        v15 = 8;
      }

      else
      {
        v15 = 7;
      }

      v16 = [MEMORY[0x1E6991728] configurationForUseCase:v15];
      outputCoefficientsF16 = [v16 outputCoefficientsF16];
      [MEMORY[0x1E6991738] coefficientPixelBufferSizeForConfiguration:v16 float16:outputCoefficientsF16];
      v19 = v18;
      v21 = v20;
      v22 = objc_alloc_init(BWVideoFormatRequirements);
      if (!v22)
      {
        [BWVISNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      v23 = v22;
      if (outputCoefficientsF16)
      {
        v24 = 1278226536;
      }

      else
      {
        v24 = 1278226534;
      }

      v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v24];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v23, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1]);
      [(BWVideoFormatRequirements *)v23 setWidth:v19];
      [(BWVideoFormatRequirements *)v23 setHeight:v21];
      [(BWVideoFormatRequirements *)v23 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v23 setHeightAlignment:16];
      [(BWNodeOutputMediaConfiguration *)v13 setFormatRequirements:v23];
      [(BWNodeOutputMediaConfiguration *)v13 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v13 setProvidesPixelBufferPool:1];
      v25 = self->super._output;
      keyCopy = @"SmartStyleStreamingReverseLearnedCoefficients";
      v27 = v13;
      goto LABEL_33;
    }

    if (![key isEqual:0x1F21AB0D0])
    {
      if (!self->_smartStyleReversibilityEnabled || ![v11 containsObject:key])
      {
        return;
      }

      v34 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      if (!v34)
      {
        [BWVISNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      v35 = v34;
      v36 = [key isEqual:0x1F21AB110];
      v37 = [(BWVISNode *)self _newFormatRequirementsAdjustedToOutputDimensionAspectRatio:format];
      if (v36)
      {
        v38 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v38 setSupportedPixelFormats:&unk_1F2249168];
        [(BWVideoFormatRequirements *)v38 setWidth:[(BWVideoFormatRequirements *)v37 width]];
        [(BWVideoFormatRequirements *)v38 setHeight:[(BWVideoFormatRequirements *)v37 height]];
        [(BWVideoFormatRequirements *)v38 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v38 setHeightAlignment:16];
        [(BWVideoFormatRequirements *)v38 setSupportedColorSpaceProperties:&unk_1F2249180];
        [(BWVideoFormatRequirements *)v38 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedCPUAccess]];
        v37 = v38;
      }

      if (!v37)
      {
        [BWVISNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      [(BWNodeOutputMediaConfiguration *)v35 setFormatRequirements:v37];
      [(BWNodeOutputMediaConfiguration *)v35 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v35 setProvidesPixelBufferPool:1];
      v25 = self->super._output;
      v27 = v35;
      keyCopy = key;
LABEL_33:
      [(BWNodeOutput *)v25 setMediaConfiguration:v27 forAttachedMediaKey:keyCopy];
      return;
    }

    if (self->_smartStyleReversibilityEnabled)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41[0] = 0x1F21AB0D0;
      v41[1] = 0x1F21AB0F0;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
      v29 = [v28 countByEnumeratingWithState:&v43 objects:v42 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v44;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v44 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v43 + 1) + 8 * i);
            v40 = [(BWVISNode *)self _newFormatRequirementsAdjustedToOutputDimensionAspectRatio:format];
            -[NSMutableDictionary setObject:forKeyedSubscript:](self->_intermediatePixelBufferResolvedFormats, "setObject:forKeyedSubscript:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1]), v33);
          }

          v30 = [v28 countByEnumeratingWithState:&v43 objects:v42 count:16];
        }

        while (v30);
      }
    }
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (self->_smartStyleRenderingEnabled)
  {
    obj = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
    if (self->_smartStyleRenderingEnabled)
    {
      [obj addObject:0x1F21AB070];
    }

    if (self->_smartStyleReversibilityEnabled)
    {
      [obj addObject:0x1F21AAF30];
      [obj addObject:0x1F21AAEF0];
      [obj addObject:0x1F21AAED0];
      [obj addObject:0x1F21AB090];
      [obj addObject:0x1F21AB110];
      [obj addObject:0x1F21AB130];
    }

    LODWORD(v4) = [-[BWNodeInput mediaConfigurationForAttachedMediaKey:](self->super._input mediaConfigurationForAttachedMediaKey:{@"PrimaryFormat", "delayedBufferCount"}];
    v5 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:@"PrimaryFormat"];
    v6 = [(BWNodeOutput *)self->super._output mediaConfigurationForAttachedMediaKey:@"PrimaryFormat"];
    resolvedRetainedBufferCount = [v5 resolvedRetainedBufferCount];
    if (resolvedRetainedBufferCount <= [v6 owningNodeRetainedBufferCount])
    {
      owningNodeRetainedBufferCount = [v6 owningNodeRetainedBufferCount];
    }

    else
    {
      owningNodeRetainedBufferCount = [v5 resolvedRetainedBufferCount];
    }

    v9 = owningNodeRetainedBufferCount;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v10 = [obj countByEnumeratingWithState:&v65 objects:v64 count:16];
    if (v10)
    {
      v11 = v10;
      v55 = v4;
      LODWORD(v12) = 0;
      v13 = *v66;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v66 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v65 + 1) + 8 * i);
          v16 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:v15];
          v17 = [(BWNodeOutput *)self->super._output mediaConfigurationForAttachedMediaKey:v15];
          if (v16)
          {
            v18 = v17 == 0;
          }

          else
          {
            v18 = 1;
          }

          if (!v18)
          {
            v19 = v17;
            resolvedRetainedBufferCount2 = [v16 resolvedRetainedBufferCount];
            if (resolvedRetainedBufferCount2 <= [v19 owningNodeRetainedBufferCount])
            {
              owningNodeRetainedBufferCount2 = [v19 owningNodeRetainedBufferCount];
            }

            else
            {
              owningNodeRetainedBufferCount2 = [v16 resolvedRetainedBufferCount];
            }

            v22 = owningNodeRetainedBufferCount2;
            if (owningNodeRetainedBufferCount2 < v9)
            {
              [v19 setOwningNodeRetainedBufferCount:v9];
            }

            if (v22 <= v9)
            {
              v23 = v9;
            }

            else
            {
              v23 = v22;
            }

            if (v12 <= v23)
            {
              LODWORD(v12) = v23;
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v65 objects:v64 count:16];
      }

      while (v11);
      v12 = v12;
      v3 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
      LODWORD(v4) = v55;
    }

    else
    {
      v12 = 0;
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obja = [(NSMutableDictionary *)self->_intermediatePixelBufferResolvedFormats allKeys];
    v54 = [obja countByEnumeratingWithState:&v60 objects:v59 count:16];
    if (v54)
    {
      v24 = *v61;
      v25 = v3[128];
      if (v4 <= 3)
      {
        v4 = 3;
      }

      else
      {
        v4 = v4;
      }

      v52 = v3[128];
      v53 = *v61;
      v51 = v4;
      do
      {
        v26 = 0;
        v27 = v54;
        do
        {
          if (*v61 != v24)
          {
            objc_enumerationMutation(obja);
          }

          v28 = *(*(&v60 + 1) + 8 * v26);
          v29 = [(NSMutableDictionary *)self->_intermediatePixelBufferPools objectForKeyedSubscript:v28];
          if (!v29)
          {
            v30 = v12;
            v31 = [BWPixelBufferPool alloc];
            v32 = [(NSMutableDictionary *)self->_intermediatePixelBufferResolvedFormats objectForKeyedSubscript:v28];
            retainedBufferCount = [(BWNodeOutput *)self->super._output retainedBufferCount];
            v29 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:](v31, "initWithVideoFormat:capacity:name:memoryPool:", v32, retainedBufferCount, [MEMORY[0x1E696AEC0] stringWithFormat:@"VIS %@ Intermediate Pool", v28], -[BWNodeOutput memoryPool](self->super._output, "memoryPool"));
            if (v29)
            {
              [(NSMutableDictionary *)self->_intermediatePixelBufferPools setObject:v29 forKeyedSubscript:v28];
            }

            v12 = v30;
            v25 = v52;
            v24 = v53;
            v27 = v54;
            v4 = v51;
          }

          v34 = [v28 isEqual:v25];
          v35 = v4;
          if (v34 & 1) != 0 || (v36 = [v28 isEqual:0x1F21AB0D0], v35 = v12, (v36) || (v37 = objc_msgSend(v28, "isEqual:", 0x1F21AB0F0), v35 = v12, v37))
          {
            [(BWPixelBufferPool *)v29 setCapacity:v35];
          }

          ++v26;
        }

        while (v27 != v26);
        v54 = [obja countByEnumeratingWithState:&v60 objects:v59 count:16];
      }

      while (v54);
    }

    self->_intermediatePixelBufferResolvedFormats = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    width = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] width];
    if (width == [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height])
    {
      v40 = &unk_1F2245898;
    }

    else
    {
      v40 = &unk_1F22458B0;
    }

    [dictionary setObject:v40 forKeyedSubscript:*off_1E798CEB0];
    if (FigCaptureAspectRatioForDimensions(*&self->_outputDimensions) >= 1.0)
    {
      v41 = &unk_1F22458E0;
    }

    else
    {
      v41 = &unk_1F22458C8;
    }

    [dictionary setObject:v41 forKeyedSubscript:*off_1E798CEB8];
    [(BWVISNode *)self setSmartStyleConfigurationDict:dictionary];
  }

  if (self->_lowResImageUsedByVideoEncoderEnabled && self->_stabilizationType == 4)
  {
    v42 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:@"PrimaryFormat"];
    v43 = [(BWNodeOutput *)self->super._output mediaConfigurationForAttachedMediaKey:@"PrimaryFormat"];
    resolvedRetainedBufferCount3 = [v42 resolvedRetainedBufferCount];
    v45 = resolvedRetainedBufferCount3 <= [v43 owningNodeRetainedBufferCount] ? objc_msgSend(v43, "owningNodeRetainedBufferCount") : objc_msgSend(v42, "resolvedRetainedBufferCount");
    v46 = v45;
    v47 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:0x1F21AB190];
    v48 = [(BWNodeOutput *)self->super._output mediaConfigurationForAttachedMediaKey:0x1F21AB190];
    resolvedRetainedBufferCount4 = [v47 resolvedRetainedBufferCount];
    v50 = resolvedRetainedBufferCount4 <= [v48 owningNodeRetainedBufferCount] ? objc_msgSend(v48, "owningNodeRetainedBufferCount") : objc_msgSend(v47, "resolvedRetainedBufferCount");
    if (v50 < v46)
    {
      [v48 setOwningNodeRetainedBufferCount:v46];
    }
  }

  v58.receiver = self;
  v58.super_class = BWVISNode;
  [(BWNode *)&v58 prepareForCurrentConfigurationToBecomeLive];
  if (self->_stabilizationType == 2 && self->_outputColorSpaceProperties == 6)
  {
    [(BWVISProcessorControllerConfiguration *)self->_processorControllerConfiguration setP3ToBT2020ConversionEnabled:1];
  }

  if (self->_visExecutionMode != 4)
  {
    if ([(BWVISNode *)self _setupVISProcessorController])
    {
      [BWVISNode prepareForCurrentConfigurationToBecomeLive];
    }
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  v10.receiver = self;
  v10.super_class = BWVISNode;
  [(BWNode *)&v10 configurationWithID:d updatedFormat:format didBecomeLiveForInput:input];
  MediaSubType = CMFormatDescriptionGetMediaSubType([(BWFormat *)[(BWNodeOutput *)self->super._output format] formatDescription]);
  CompressionType = FigCapturePixelFormatGetCompressionType(MediaSubType);
  if (CompressionType)
  {
    v8 = CompressionType;
    ioSurfaceCompressionRatioStats = self->_ioSurfaceCompressionRatioStats;
    if (ioSurfaceCompressionRatioStats)
    {
    }

    self->_ioSurfaceCompressionRatioStats = objc_alloc_init(BWStats);
    self->_totalCompressedDataSize = 0;
    self->_totalUncompressedDataSize = 0;
    self->_pixelBufferCompressionType = v8;
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  memset(&v39, 0, sizeof(v39));
  CMSampleBufferGetPresentationTimeStamp(&v39, buffer);
  time = v39;
  CMTimeGetSeconds(&time);
  v6 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  v37 = 0;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58])
  {
    FigCFDictionaryGetIntIfPresent();
    if (*v7 == 1)
    {
      [(BWVISNode *)self pipelineTraceID];
      kdebug_trace();
    }
  }

  if (self->_generatedTransformsOutputDimensionsOverride.height >= 1)
  {
    CMSetAttachment(buffer, @"VideoStabilizationMethod", [MEMORY[0x1E696AD98] numberWithInt:self->_stabilizationMethod], 1u);
    v40.width = self->_generatedTransformsOutputDimensionsOverride.width;
    v40.height = self->_generatedTransformsOutputDimensionsOverride.height;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v40);
    CMSetAttachment(buffer, @"VideoStabilizationGeneratedTransformsOutputDimensionsOverride", DictionaryRepresentation, 1u);
    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }
  }

  [(BWNode *)self name];
  if (BWSampleBufferIsMarkerBuffer(buffer))
  {
    v9 = CMGetAttachment(buffer, @"FileWriterAction", 0);
    v10 = CMGetAttachment(buffer, @"AttachedMediaSwapPlaceholderSampleBuffer", 0);
    v11 = CMGetAttachment(buffer, @"RecordingSettings", 0);
    if (v9 && (v12 = CFGetTypeID(v9), v12 == CFStringGetTypeID()))
    {
      if (!CFEqual(v9, @"Stop") && !CFEqual(v9, @"Pause") && !CFEqual(v9, @"Flush") && !CFEqual(v9, @"Terminate") && !CFEqual(v9, @"StreamForcedOff") && v10 != *MEMORY[0x1E695E4D0])
      {
        LOBYTE(v13) = 0;
        goto LABEL_22;
      }
    }

    else if (v10 != *MEMORY[0x1E695E4D0])
    {
      v13 = 0;
      if (v9)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    v13 = 1;
    if (v9)
    {
LABEL_22:
      if (CFEqual(v9, @"Start"))
      {
        v14 = v11;
      }

      else
      {
        v14 = 0;
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_52;
    }

LABEL_19:
    if (!v13)
    {
LABEL_45:
      [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
      if ((v39.flags & 0x1D) == 1)
      {
        self->_lastEmittedPTS = v39;
      }

      goto LABEL_47;
    }

    v14 = 0;
LABEL_52:
    [(BWVISNode *)self _flushBuffers];
LABEL_26:
    if (self->_usingExtendedCVISLivePhotoStabilization && v14)
    {
      isIrisMovieRecording = [v14 isIrisMovieRecording];
      self->_stabilizeForLongPressVideo = isIrisMovieRecording;
      [(BWVISProcessorController *)self->_processorController setLongPressModeEnabled:isIrisMovieRecording];
    }

    if (self->_flipHorizontalExcludingIris && v14)
    {
      if ([v14 isIrisRecording] && !objc_msgSend(v14, "isIrisMovieRecording"))
      {
        videoMirrored = 0;
      }

      else
      {
        videoMirrored = [v14 videoMirrored];
      }

      [(BWVISProcessorController *)self->_processorController setFlipHorizontalOrientationEnabled:videoMirrored];
      self->_liveFlipHorizontal = videoMirrored;
    }

    if (self->_personSegmentationRenderingEnabled && v14)
    {

      self->_foregroundColorCube = [v14 personSegmentationForegroundColorCube];
      self->_backgroundColorCube = [v14 personSegmentationBackgroundColorCube];
    }

    if (self->_videoSTFEnabled && v14)
    {
      [v14 setVideoSTFEnabled:1];
    }

    if (self->_smartStyleReversibilityEnabled && v14)
    {
      self->_stabilizeForSmartStyleReversibility = [v14 smartStyleReversibilitySupported];
      -[BWVISProcessorController setSmartStyleReversibilityProcessingEnabled:](self->_processorController, "setSmartStyleReversibilityProcessingEnabled:", [v14 smartStyleReversibilitySupported]);
    }

    goto LABEL_45;
  }

  if (self->_visExecutionMode == 4)
  {
    [BWVISNode _tallyAndEmitSampleBuffer:?];
    goto LABEL_47;
  }

  if (!self->_processorController)
  {
    [BWVISNode renderSampleBuffer:forInput:];
    goto LABEL_82;
  }

  [BWVISNode _handleIrisKeyFrameCachingForSampleBuffer:?];
  [(BWVISNode *)self _addVISDigitalZoomToMetadata:v6 sampleBuffer:buffer forReprocessing:0];
  if (self->_visExecutionMode == 1)
  {
    Value = CFDictionaryGetValue(v6, *off_1E798CE60);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = [Value countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v34;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(Value);
          }

          [(BWVISNode *)self _addVISDigitalZoomToMetadata:buffer sampleBuffer:0 forReprocessing:?];
        }

        v19 = [Value countByEnumeratingWithState:&v33 objects:v32 count:16];
      }

      while (v19);
    }

    v22 = CFDictionaryGetValue(v6, *off_1E798CE58);
    if (v22)
    {
      [(BWVISNode *)self _addVISDigitalZoomToMetadata:v22 sampleBuffer:buffer forReprocessing:0];
    }
  }

  if (self->_stabilizeDepthAttachments)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, @"Depth");
    if (AttachedMedia)
    {
      CMSetAttachment(buffer, *off_1E798D430, AttachedMedia, 0);
    }
  }

  if (self->_personSegmentationRenderingEnabled)
  {
    if (!self->_foregroundColorCube || !self->_backgroundColorCube)
    {
      goto LABEL_72;
    }

    v24 = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AABF0);
    if (v24)
    {
      CMSetAttachment(buffer, *off_1E798A4E0, v24, 0);
      CMSetAttachment(buffer, *off_1E798A4D8, self->_foregroundColorCube, 0);
      CMSetAttachment(buffer, *off_1E798A4D0, self->_backgroundColorCube, 0);
LABEL_72:
      BWSampleBufferRemoveAttachedMedia(buffer, 0x1F21AABF0);
      BWSampleBufferRemoveAttachedMedia(buffer, 0x1F21AAC30);
      goto LABEL_73;
    }

    [BWVISNode renderSampleBuffer:forInput:];
LABEL_82:
    v30 = 4294954516;
LABEL_84:
    [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger logErrorNumber:v30 errorString:@"when rendering"];
    time = v39;
    v31 = [BWDroppedSample newDroppedSampleWithReason:0x1F219BF30 pts:&time];
    [BWVISNode _tallyAndEmitDroppedSample:?];

    goto LABEL_47;
  }

LABEL_73:
  v25 = CMGetAttachment(buffer, @"SubjectRelightingResult", 0);
  if (v25)
  {
    v26 = v25;
    if ([v25 waitForResult])
    {
      mach_absolute_time();
    }

    if ([v26 relightingRequired])
    {
      v27 = *off_1E798A4E8;
      v28 = MEMORY[0x1E696AD98];
      [v26 curveParameter];
      CMSetAttachment(buffer, v27, [v28 numberWithFloat:?], 1u);
    }
  }

  v29 = [(BWVISProcessorController *)self->_processorController enqueueBufferForProcessing:buffer];
  if (v29)
  {
    v30 = v29;
    [BWVISNode renderSampleBuffer:forInput:];
    goto LABEL_84;
  }

  if (self->_smartStyleRenderingEnabled)
  {
    CMSetAttachment(buffer, @"FiltersApplied", MEMORY[0x1E695E118], 1u);
  }

LABEL_47:
  if (*v7 == 1)
  {
    [(BWVISNode *)self pipelineTraceID];
    kdebug_trace();
  }
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if (self->_emitSampleBufferSemaphore)
  {
    emitSampleBufferSemaphore = self->_emitSampleBufferSemaphore;
    sampleCopy = +[BWDroppedSample newDroppedSampleFromDroppedSample:backPressureSemaphoresToIgnore:](BWDroppedSample, "newDroppedSampleFromDroppedSample:backPressureSemaphoresToIgnore:", sample, [MEMORY[0x1E695DEC8] arrayWithObjects:&emitSampleBufferSemaphore count:1]);
  }

  else
  {
    sampleCopy = sample;
  }

  v6 = sampleCopy;
  [(BWNodeOutput *)self->super._output emitDroppedSample:sampleCopy];
}

- (void)setOutputDimensions:(id)dimensions
{
  if (self->_outputDimensions.width != dimensions.var0 || self->_outputDimensions.height != dimensions.var1)
  {
    [(BWVISNode *)dimensions.var0 setOutputDimensions:dimensions.var1, self];
  }
}

- (void)setEmitSampleBufferSemaphore:(id)semaphore
{
  emitSampleBufferSemaphore = self->_emitSampleBufferSemaphore;
  if (emitSampleBufferSemaphore != semaphore)
  {

    self->_emitSampleBufferSemaphore = semaphore;
  }
}

- (void)setStabilizeDepthAttachments:(BOOL)attachments
{
  if (!attachments)
  {
    v6 = 0;
    p_input = &self->super._input;
    goto LABEL_9;
  }

  visExecutionMode = self->_visExecutionMode;
  if (visExecutionMode == 3 || visExecutionMode == 0)
  {
    [(BWVISNode *)self setStabilizeDepthAttachments:attachments, &v8, &v9];
    v6 = v8;
    p_input = v9;
LABEL_9:
    [(BWNodeInput *)*p_input setMediaConfiguration:v6 forAttachedMediaKey:@"Depth"];

    [(BWVISNode *)self _updateOutputRequirements];
  }
}

- (void)setOutputDepthDimensions:(id)dimensions
{
  if (self->_outputDepthDimensions.width != dimensions.var0 || self->_outputDepthDimensions.height != dimensions.var1)
  {
    self->_outputDepthDimensions = dimensions;
    [(BWVISNode *)self _updateOutputRequirements];
  }
}

- (void)setPersonSegmentationRenderingEnabled:(BOOL)enabled
{
  if (self->_personSegmentationRenderingEnabled != enabled)
  {
    self->_personSegmentationRenderingEnabled = enabled;
    [(BWVISNode *)self _updateInputRequirements];
  }
}

- (void)setSmartStyleRenderingEnabled:(BOOL)enabled
{
  if (self->_smartStyleRenderingEnabled != enabled)
  {
    self->_smartStyleRenderingEnabled = enabled;
    [(BWVISNode *)self _updateInputRequirements];
  }
}

- (void)setSmartStyleReversibilityEnabled:(BOOL)enabled
{
  if (self->_smartStyleReversibilityEnabled != enabled)
  {
    self->_smartStyleReversibilityEnabled = enabled;
    [(BWVISNode *)self _updateInputRequirements];

    [(BWVISNode *)self _updateOutputRequirements];
  }
}

- (void)setSmartStyleConfigurationDict:(id)dict
{
  if (([dict isEqualToDictionary:self->_smartStyleConfigurationDict] & 1) == 0)
  {

    self->_smartStyleConfigurationDict = dict;
  }
}

- (void)setLowResImageUsedByVideoEncoderEnabled:(BOOL)enabled
{
  if (self->_lowResImageUsedByVideoEncoderEnabled != enabled)
  {
    self->_lowResImageUsedByVideoEncoderEnabled = enabled;
    [(BWVISNode *)self _updateOutputRequirements];
  }
}

- (void)setProcessingSemaphore:(id)semaphore
{
  processingSemaphore = self->_processingSemaphore;
  if (processingSemaphore != semaphore)
  {

    self->_processingSemaphore = semaphore;
  }
}

- (CGRect)irisVISCleanOutputRect
{
  [(BWVISProcessorControllerConfiguration *)self->_processorControllerConfiguration livePhotoCleanOutputRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setIspProcessingSession:(id)session
{
  ispProcessingSession = self->_ispProcessingSession;
  if (ispProcessingSession != session)
  {

    self->_ispProcessingSession = session;
  }
}

BOOL __41__BWVISNode__updateSupportedPixelFormats__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  CompressionType = FigCapturePixelFormatGetCompressionType(v3);
  if (!CompressionType)
  {
    goto LABEL_4;
  }

  if (*(a1 + 40) != 1)
  {
    return 0;
  }

  if (CompressionType != 4)
  {
LABEL_4:
    if (*(a1 + 41))
    {
      return 0;
    }
  }

  LossyCompressionLevel = FigCapturePixelFormatGetLossyCompressionLevel(v3);
  if (!LossyCompressionLevel || *(a1 + 42) == 1)
  {
    return LossyCompressionLevel <= *(*(a1 + 32) + 176);
  }

  return 0;
}

- (void)setOutputColorSpaceProperties:(int)properties
{
  if (self->_outputColorSpaceProperties != properties)
  {
    self->_outputColorSpaceProperties = properties;
    [(BWVISNode *)self _updateOutputRequirements];
  }
}

- (void)setMaxLossyCompressionLevel:(int)level
{
  if (self->_maxLossyCompressionLevel != level)
  {
    self->_maxLossyCompressionLevel = level;
    [(BWVISNode *)&self->super.super.isa _updateSupportedPixelFormats];
    [(BWVISNode *)self _updateInputRequirements];

    [(BWVISNode *)self _updateOutputRequirements];
  }
}

- (void)setVideoSTFEnabled:(BOOL)enabled
{
  if (!enabled || ((stabilizationType = self->_stabilizationType, stabilizationType != 2) ? (v4 = stabilizationType == 4) : (v4 = 1), v4))
  {
    self->_videoSTFEnabled = enabled;
  }

  else
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v7, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWVISNode.m", 2306, @"LastShownDate:BWVISNode.m:2306", @"LastShownBuild:BWVISNode.m:2306", 0);
    free(v7);
  }
}

- (void)setVideoGreenGhostMitigationEnabled:(BOOL)enabled
{
  if (!enabled || ((stabilizationType = self->_stabilizationType, stabilizationType != 2) ? (v5 = stabilizationType == 4) : (v5 = 1), v5))
  {
    if (self->_videoGreenGhostMitigationEnabled != enabled)
    {
      self->_videoGreenGhostMitigationEnabled = enabled;

      [(BWVISNode *)self _updateInputRequirements];
    }
  }

  else
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v8, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWVISNode.m", 2324, @"LastShownDate:BWVISNode.m:2324", @"LastShownBuild:BWVISNode.m:2324", 0);
    free(v8);
  }
}

- (void)willStartProcessingBuffer:(opaqueCMSampleBuffer *)buffer withStatus:(int)status
{
  if (status)
  {
    [BWVISNode willStartProcessingBuffer:*&status withStatus:?];
  }

  else
  {
    processingSemaphore = self->_processingSemaphore;
    if (processingSemaphore)
    {
      dispatch_semaphore_wait(processingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      v6 = self->_processingSemaphore;

      dispatch_semaphore_signal(v6);
    }
  }
}

- (void)_releaseResourcesForReconfig:(uint64_t)reconfig
{
  if (reconfig)
  {
    v4 = *(reconfig + 304);
    if (v4)
    {
      [*(reconfig + 312) logErrorNumber:0xFFFFFFFFLL errorString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"unprocessed still frame settings ID %@", v4)}];
    }

    *(reconfig + 296) = 0;
    *(reconfig + 304) = 0;

    *(reconfig + 656) = 0;
    *(reconfig + 784) = 0;

    *(reconfig + 792) = 0;
    v5 = 10;
    reconfigCopy = reconfig;
    do
    {

      *(reconfigCopy + 320) = 0;
      reconfigCopy += 32;
      --v5;
    }

    while (v5);
    bzero((reconfig + 320), 0x140uLL);

    *(reconfig + 752) = 0;
    if (a2)
    {
      allKeys = [*(reconfig + 736) allKeys];
      OUTLINED_FUNCTION_17_20();
      v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
      if (v9)
      {
        v10 = v9;
        v11 = MEMORY[0];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (MEMORY[0] != v11)
            {
              objc_enumerationMutation(allKeys);
            }

            v13 = *(8 * i);
            [objc_msgSend(*(reconfig + 736) objectForKeyedSubscript:{v13), "videoFormat"}];
            [*(reconfig + 728) objectForKeyedSubscript:v13];
            if (([OUTLINED_FUNCTION_28() isEqual:?] & 1) == 0)
            {
              [*(reconfig + 736) setObject:0 forKeyedSubscript:v13];
            }
          }

          OUTLINED_FUNCTION_17_20();
          v10 = [allKeys countByEnumeratingWithState:? objects:? count:?];
        }

        while (v10);
      }
    }

    else
    {

      *(reconfig + 872) = 0;
      *(reconfig + 144) = 0;

      *(reconfig + 136) = 0;
      *(reconfig + 160) = 0;

      *(reconfig + 168) = 0;
      *(reconfig + 256) = 0;

      *(reconfig + 232) = 0;
      *(reconfig + 248) = 0;

      *(reconfig + 288) = 0;
      *(reconfig + 312) = 0;

      *(reconfig + 728) = 0;
      *(reconfig + 736) = 0;
      v14 = *(reconfig + 768);
      if (v14)
      {
        CFRelease(v14);
        *(reconfig + 768) = 0;
      }

      *(reconfig + 800) = 0;
      v15 = *(reconfig + 864);
      if (v15)
      {
        dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_semaphore_signal(*(reconfig + 864));

        *(reconfig + 864) = 0;
      }
    }
  }
}

- (void)_flushBuffers
{
  if (self)
  {
    if (*(self + 144))
    {
      *(self + 152) = 1;
      [*(self + 144) finishPendingProcessing];
      *(self + 152) = 0;
    }

    [*(self + 312) resetCurrentLoggingCounter];
    v2 = 10;
    selfCopy = self;
    do
    {

      selfCopy += 32;
      --v2;
    }

    while (v2);

    bzero((self + 320), 0x140uLL);
  }
}

- (uint64_t)_newFormatRequirementsAdjustedToOutputDimensionAspectRatio:(uint64_t)result
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    v4 = [objc_msgSend(a2 "pixelBufferAttributes")];
    width = [v2 width];
    LODWORD(v2) = [v2 height];
    v6 = FigCaptureAspectRatioForDimensions(*(v3 + 180));
    AspectRatioFromFractionalAspectRatio = FigCaptureGetAspectRatioFromFractionalAspectRatio(v6);
    v8 = FigCaptureConvertDimensionsForAspectRatio(width | (v2 << 32), AspectRatioFromFractionalAspectRatio);
    [v4 setObject:&unk_1F2245880 forKeyedSubscript:*MEMORY[0x1E6966020]];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:v8];
    [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6966208]];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v8)];
    [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69660B8]];
    v11 = [BWVideoFormatRequirements alloc];

    return [(BWVideoFormatRequirements *)v11 initWithPixelBufferAttributes:v4];
  }

  return result;
}

- (uint64_t)_setupVISProcessorController
{
  if (!self)
  {
    return 0;
  }

  v2 = *(self + 132);
  if (v2 == 4 || v2 == 3)
  {
    pixelFormat = [OUTLINED_FUNCTION_19_26() pixelFormat];
    FigCapturePixelFormatGetCompressionType(pixelFormat);
    v4 = [objc_msgSend(OUTLINED_FUNCTION_6_59() "videoFormat")];
    FigCapturePixelFormatGetCompressionType(v4);
  }

  [OUTLINED_FUNCTION_3_77() setTransformPlatform:?];
  OUTLINED_FUNCTION_33();
  if (v5 && [objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_6_59() "videoFormat")])
  {
    [OUTLINED_FUNCTION_3_77() setExtendedOutputRowsToFill:?];
  }

  if (*(self + 201) == 1)
  {
    v41 = *(self + 248);
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    videoFormat = [OUTLINED_FUNCTION_4() formatByResolvingRequirements:?];
  }

  else
  {
    videoFormat = [OUTLINED_FUNCTION_6_59() videoFormat];
  }

  v7 = videoFormat;
  [OUTLINED_FUNCTION_3_77() setEmitSampleBufferSemaphore:?];
  [OUTLINED_FUNCTION_3_77() setGpuPriority:?];
  [OUTLINED_FUNCTION_3_77() setSphereVideoEnabled:?];
  [OUTLINED_FUNCTION_3_77() setFrameRateConversionEnabled:?];
  [OUTLINED_FUNCTION_3_77() setVideoStabilizationDisabled:0];
  [OUTLINED_FUNCTION_19_26() pixelBufferAttributes];
  [OUTLINED_FUNCTION_3_77() setInputPixelBufferAttributes:?];
  [v7 pixelBufferAttributes];
  [OUTLINED_FUNCTION_3_77() setOutputPixelBufferAttributes:?];
  v8 = *(self + 188);
  if (v8 >= 1 && SHIDWORD(v8) >= 1)
  {
    [OUTLINED_FUNCTION_3_77() setGeneratedTransformsOutputDimensionsOverride:?];
  }

  [OUTLINED_FUNCTION_6_59() preparedPixelBufferPool];
  [OUTLINED_FUNCTION_3_77() setOutputPixelBufferPool:?];
  OUTLINED_FUNCTION_33();
  if (v5)
  {
    [objc_msgSend(OUTLINED_FUNCTION_6_59() mediaPropertiesForAttachedMediaKey:{@"Depth", "preparedPixelBufferPool"}];
    [OUTLINED_FUNCTION_3_77() setOutputDepthPixelBufferPool:?];
  }

  [OUTLINED_FUNCTION_3_77() setSmartStyleRenderingEnabled:?];
  [OUTLINED_FUNCTION_3_77() setSmartStyleReversibilityEnabled:?];
  [OUTLINED_FUNCTION_3_77() setSmartStyleConfigurationDict:?];
  [+[BWMemoryPool sharedMemoryPool](BWMemoryPool poolIdentifier];
  [OUTLINED_FUNCTION_3_77() setSmartStyleMemoryPoolId:?];
  if (([OUTLINED_FUNCTION_3_77() smartStyleRenderingEnabled] & 1) != 0 || objc_msgSend(OUTLINED_FUNCTION_3_77(), "smartStyleReversibilityEnabled"))
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (!v10)
    {
      goto LABEL_62;
    }

    v11 = v10;
    if ([OUTLINED_FUNCTION_3_77() smartStyleRenderingEnabled])
    {
      v40 = 0x1F21AB070;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v36 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v37;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v37 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [objc_msgSend(OUTLINED_FUNCTION_6_59() mediaPropertiesForAttachedMediaKey:{*(*(&v36 + 1) + 8 * i)), "preparedPixelBufferPool"}];
            [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
          }

          v14 = [v12 countByEnumeratingWithState:&v36 objects:v35 count:16];
        }

        while (v14);
      }
    }

    if ([OUTLINED_FUNCTION_3_77() smartStyleReversibilityEnabled])
    {
      v34[0] = 0x1F21AAF30;
      v34[1] = 0x1F21AAEF0;
      v34[2] = 0x1F21AAED0;
      v34[3] = 0x1F21AB090;
      v34[4] = 0x1F21AB110;
      v34[5] = 0x1F21AB130;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:6];
      OUTLINED_FUNCTION_43();
      v19 = [v18 countByEnumeratingWithState:? objects:? count:?];
      if (v19)
      {
        v20 = v19;
        v21 = MEMORY[0];
        do
        {
          for (j = 0; j != v20; ++j)
          {
            OUTLINED_FUNCTION_4_10();
            if (v23 != v21)
            {
              objc_enumerationMutation(v17);
            }

            [objc_msgSend(OUTLINED_FUNCTION_6_59() mediaPropertiesForAttachedMediaKey:{*(8 * j)), "preparedPixelBufferPool"}];
            [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
          }

          OUTLINED_FUNCTION_43();
          v20 = [v17 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v20);
      }
    }

    [v11 addEntriesFromDictionary:*(self + 736)];
    [OUTLINED_FUNCTION_3_77() setOutputAttachmentsPixelBufferPools:v11];
  }

  OUTLINED_FUNCTION_33();
  if (v5)
  {
    [OUTLINED_FUNCTION_3_77() setFaceStabilizationEnabled:1];
    [OUTLINED_FUNCTION_3_77() setFaceStabilizationSigmaMultiplierForFaceFiltering:?];
    [OUTLINED_FUNCTION_3_77() setFaceStabilizationSigmaMultiplierForBiasTracking:?];
    [OUTLINED_FUNCTION_3_77() setFaceStabilizationSigmaModulationExponent:?];
    [OUTLINED_FUNCTION_3_77() setFaceStabilizationSigmaModulationSmoothTransitionMultiplier:?];
  }

  OUTLINED_FUNCTION_33();
  if (v5)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (!v24)
    {
      goto LABEL_62;
    }

    v25 = v24;
    [objc_msgSend(OUTLINED_FUNCTION_6_59() mediaPropertiesForAttachedMediaKey:{0x1F21AB190), "preparedPixelBufferPool"}];
    [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
    [OUTLINED_FUNCTION_3_77() outputAttachmentsPixelBufferPools];
    [OUTLINED_FUNCTION_4() addEntriesFromDictionary:?];
    [OUTLINED_FUNCTION_3_77() setOutputAttachmentsPixelBufferPools:v25];
  }

  if (*(self + 212) == 1)
  {
    [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters videoStabilizationSTFParameters];
    [OUTLINED_FUNCTION_3_77() setVideoSTFParameters:?];
  }

  OUTLINED_FUNCTION_33();
  if (v5)
  {
    v26 = objc_alloc(MEMORY[0x1E695DF90]);
    [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters commonVideoGreenGhostMitigationParameters];
    v27 = [OUTLINED_FUNCTION_4() initWithDictionary:?];
    if (!v27)
    {
      goto LABEL_62;
    }

    v28 = v27;
    if ((*(self + 216) & 1) == 0)
    {
      [OUTLINED_FUNCTION_69() setObject:? forKeyedSubscript:?];
    }

    [OUTLINED_FUNCTION_3_77() setVideoGreenGhostMitigationParameters:v28];
  }

  [OUTLINED_FUNCTION_3_77() setCameraExtrinsicMatrix:?];
  [OUTLINED_FUNCTION_3_77() setIspProcessingSession:?];
  v29 = *(self + 144);
  if (v29)
  {
    goto LABEL_58;
  }

  v30 = objc_alloc_init(BWVISProcessorController);
  *(self + 144) = v30;
  if (!v30)
  {
LABEL_62:
    v32 = 4294954510;
    goto LABEL_60;
  }

  [(BWVISProcessorController *)v30 setDelegate:self];
  v29 = *(self + 144);
LABEL_58:
  [v29 setConfiguration:*(self + 136)];
  prepareToProcess = [*(self + 144) prepareToProcess];
  if (!*(self + 144))
  {
    v32 = 4294954516;
    goto LABEL_60;
  }

  v32 = prepareToProcess;
  if (prepareToProcess)
  {
LABEL_60:
    [*(self + 312) logErrorNumber:v32 errorString:@"Setup VIS Processor"];

    *(self + 144) = 0;
  }

  return v32;
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  [(BWVISNode *)self _flushBuffers];
  ioSurfaceCompressionRatioStats = self->_ioSurfaceCompressionRatioStats;
  if (ioSurfaceCompressionRatioStats)
  {
    if ([(BWStats *)ioSurfaceCompressionRatioStats numberOfSamples])
    {
      [(BWVISNode *)self _reportIOSurfaceCompressionCoreAnalyticsData];
    }

    self->_ioSurfaceCompressionRatioStats = 0;
  }

  [(BWVISNode *)self _releaseResourcesForReconfig:?];
  v8.receiver = self;
  v8.super_class = BWVISNode;
  [(BWNode *)&v8 didReachEndOfDataForConfigurationID:d input:input];
}

- (uint64_t)_reportIOSurfaceCompressionCoreAnalyticsData
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(BWIOSurfaceCompressionStatisticsAnalyticsPayload);
    [OUTLINED_FUNCTION_18_23() average];
    [OUTLINED_FUNCTION_26_17() setAverageRatio:?];
    [OUTLINED_FUNCTION_18_23() min];
    [OUTLINED_FUNCTION_26_17() setMinRatio:?];
    [OUTLINED_FUNCTION_18_23() max];
    [OUTLINED_FUNCTION_26_17() setMaxRatio:?];
    [OUTLINED_FUNCTION_18_23() standardDeviation];
    [OUTLINED_FUNCTION_26_17() setStandardDeviation:?];
    [OUTLINED_FUNCTION_18_23() numberOfSamples];
    [OUTLINED_FUNCTION_17() setNumberOfSamples:?];
    [(BWIOSurfaceCompressionStatisticsAnalyticsPayload *)v2 setCompressionType:*(v1 + 664)];
    [(BWIOSurfaceCompressionStatisticsAnalyticsPayload *)v2 setBufferHeight:*(v1 + 184)];
    [(BWIOSurfaceCompressionStatisticsAnalyticsPayload *)v2 setTotalCompressedSize:*(v1 + 672)];
    [(BWIOSurfaceCompressionStatisticsAnalyticsPayload *)v2 setTotalUncompressedSize:*(v1 + 680)];
    [(BWIOSurfaceCompressionStatisticsAnalyticsPayload *)v2 setNodeType:2];
    v3 = +[BWCoreAnalyticsReporter sharedInstance];

    return [(BWCoreAnalyticsReporter *)v3 sendEvent:v2];
  }

  return result;
}

- (void)_tallyAndEmitSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    OUTLINED_FUNCTION_54();
    v3 = OUTLINED_FUNCTION_69();
    if (CMGetAttachment(v3, v4, v5) == *MEMORY[0x1E695E4D0])
    {
      v6 = *(v1 + 244) ^ 1;
    }

    else
    {
      v6 = 1;
    }

    v7 = OUTLINED_FUNCTION_69();
    v10 = CMGetAttachment(v7, v8, v9);
    OUTLINED_FUNCTION_17_27();
    if (v11)
    {
      if (v10)
      {
        v12 = OUTLINED_FUNCTION_3_19();
        [(BWVISNode *)v12 _collectMetadataForReprocessingFrom:v13 to:v10];
      }
    }

    else if (*(v1 + 656))
    {
      v43 = OUTLINED_FUNCTION_3_19();
      [(BWVISNode *)v43 _tallyCompressedIOSurfaceStatsForSBuf:v44];
    }

    OUTLINED_FUNCTION_17_27();
    if (v11)
    {
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    if ((v14 | v6))
    {
      if (*(v1 + 288))
      {
        videoFormat = [*(v1 + 16) videoFormat];
        width = [videoFormat width];
        [videoFormat height];
        if ((*(v1 + 201) & 1) != 0 || (OUTLINED_FUNCTION_17_27(), v11))
        {
          width = *(v1 + 180);
          v32 = *(v1 + 184);
        }

        else
        {
          v32 = v17;
        }

        [*(v1 + 288) cacheStillImageTransformDataFromMetadata:v10 transformReferenceDimensions:width | (v32 << 32)];
      }

      OUTLINED_FUNCTION_33();
      if (v11)
      {
        if (([objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798A060), "BOOLValue"}] & 1) == 0)
        {
          BWDetectedFacesConvertSampleBufferFacesFromSensorToBufferCoordinateSpace(v2);
        }

        if (([objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798A0B0), "BOOLValue"}] & 1) == 0)
        {
          BWDetectedObjectsConvertSampleBufferDetectedObjectsFromSensorToBufferCoordinateSpace(v2);
        }

        v45 = OUTLINED_FUNCTION_3_19();
        [(BWVISNode *)v45 _harvestMetadataFromSampleBuffer:v46];
        v47 = OUTLINED_FUNCTION_3_19();
        [(BWVISNode *)v47 _stabilizeMetadataForSampleBuffer:v48];
        v49 = OUTLINED_FUNCTION_3_19();
        [(BWVISNode *)v49 _checkIfGreenGhostIsPresentWithSampleBuffer:v50];
        v51 = OUTLINED_FUNCTION_3_19();
        v53 = [(BWVISNode *)v51 _cinematographyFrameForSampleBuffer:v52];
        [(BWVISNode *)v1 _attachHarvestedStabilizationMetadataToCinematographyFrame:v53];
        [(BWVISNode *)v1 _stabilizeCinematographyMetadataInCinematographyFrame:v53];
      }

      OUTLINED_FUNCTION_33();
      if (v11)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(v2);
        if (ImageBuffer)
        {
          CMSetAttachment(ImageBuffer, @"MirroredHorizontal", MEMORY[0x1E695E118], 1u);
        }
      }

      [*(v1 + 16) emitSampleBuffer:v2];
      PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&v55, v2);
      OUTLINED_FUNCTION_11_39(PresentationTimeStamp, v35, v36, v37, v38, v39, v40, v41, v54, v42, v55.value);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_69();
      if (CMGetAttachment(v18, v19, v20))
      {
        v21 = [BWNodeInput newSampleDataToBeDroppedMarkerBufferFromSampleBuffer:v2];
        if (v21)
        {
          v22 = v21;
          [*(v1 + 16) emitSampleBuffer:v21];
          v23 = CMSampleBufferGetPresentationTimeStamp(&v55, v22);
          OUTLINED_FUNCTION_11_39(v23, v24, v25, v26, v27, v28, v29, v30, v54, v31, v55.value);
          CFRelease(v22);
        }
      }
    }

    ++*(v1 + 268);
  }
}

- (void)_handleIrisKeyFrameCachingForSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    OUTLINED_FUNCTION_54();
    v3 = OUTLINED_FUNCTION_69();
    if (CMGetAttachment(v3, v4, v5) == *MEMORY[0x1E695E4D0])
    {
      v10 = OUTLINED_FUNCTION_69();
      v13 = CMGetAttachment(v10, v11, v12);
      v14 = *off_1E798D4B0;
      v15 = [v13 objectForKeyedSubscript:*off_1E798D4B0];
      v16 = *off_1E798A0A0;
      v17 = [v13 objectForKeyedSubscript:*off_1E798A0A0];
      if (v15 | v17)
      {
        v18 = v17;
        v19 = *(v1 + 296);
        if (v19 || *(v1 + 304))
        {

          *(v1 + 296) = 0;
          *(v1 + 304) = 0;
        }

        *(v1 + 296) = v15;
        *(v1 + 304) = v18;
        [v13 setObject:0 forKeyedSubscript:v14];
        [v13 setObject:0 forKeyedSubscript:v16];

        visn_setSynchronizedSlaveFrameLivePhotoKeyFrameMetadata(0, 0, v2);
      }
    }

    else if (*(v1 + 296) || *(v1 + 304))
    {
      v6 = OUTLINED_FUNCTION_69();
      v9 = CMGetAttachment(v6, v7, v8);
      [v9 setObject:*(v1 + 296) forKeyedSubscript:*off_1E798D4B0];
      [v9 setObject:*(v1 + 304) forKeyedSubscript:*off_1E798A0A0];
      visn_setSynchronizedSlaveFrameLivePhotoKeyFrameMetadata(*(v1 + 296), *(v1 + 304), v2);

      *(v1 + 296) = 0;
      *(v1 + 304) = 0;
    }
  }
}

- (void)_addVISDigitalZoomToMetadata:(uint64_t)metadata sampleBuffer:(int)buffer forReprocessing:
{
  if (!self)
  {
    return;
  }

  videoFormat = [*(self + 8) videoFormat];
  width = [videoFormat width];
  height = [videoFormat height];
  videoFormat2 = [*(self + 16) videoFormat];
  width2 = [videoFormat2 width];
  height2 = [videoFormat2 height];
  v14 = height2;
  v38 = 0.0;
  v39 = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  v40 = _Q0;
  if (*(self + 201) == 1)
  {
    if (*(self + 188) >= 1 && *(self + 192) > 0)
    {
      v14 = *(self + 192);
      width2 = *(self + 188);
      goto LABEL_15;
    }
  }

  else if (!buffer)
  {
    goto LABEL_15;
  }

  if (*(self + 180))
  {
    v21 = *(self + 184);
    v14 = v21 ? *(self + 184) : height2;
    if (v21)
    {
      width2 = *(self + 180);
    }
  }

LABEL_15:
  if (*(self + 809) == 1)
  {
    v40 = _Q0;
  }

  else
  {
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      if (buffer)
      {
        v22 = OUTLINED_FUNCTION_69();
        if (CMGetAttachment(v22, v23, v24))
        {
          FigCFDictionaryGetCGRectIfPresent();
        }
      }
    }

    if (*(self + 219) == 1 && (*(self + 220) & 1) == 0)
    {
      v38 = FigCaptureMetadataUtilitiesScaleRect(0.0, 0.0, *&v40, *(&v40 + 1), (*(self + 240) + 1.0));
      v39 = v25;
      *&v40 = v26;
      *(&v40 + 1) = v27;
      FigCFDictionarySetCGRect();
    }
  }

  v28 = *&v40 * width;
  v29 = *(&v40 + 1) * height;
  v30 = (width2 / v28 + v14 / v29) * 0.5;
  v31 = v30;
  if (*(self + 856) == 2 && FigCFDictionaryGetFloatIfPresent())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    if (!metadata)
    {
      goto LABEL_33;
    }

LABEL_28:
    if ((*(self + 132) - 3) <= 1 && v31 > 2.25)
    {
      v35 = *off_1E798D460;
      *&v30 = v31 / 2.25;
      [MEMORY[0x1E696AD98] numberWithFloat:v30];
      v36 = OUTLINED_FUNCTION_4();
      CMSetAttachment(v36, v35, v37, 1u);
      if (buffer)
      {
        FigCFDictionarySetCGFloat();
      }
    }

    goto LABEL_33;
  }

  if (metadata)
  {
    goto LABEL_28;
  }

LABEL_33:
  FigCFDictionarySetCGFloat();
  v41.x = v38 - (width - v28) * 0.5 / width;
  v41.y = v39 - (height - v29) * 0.5 / height;
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v41);
  CFDictionarySetValue(a2, *off_1E798D4A8, DictionaryRepresentation);
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (((*(self + 808) & 1) != 0 || buffer) && !CFDictionaryGetValue(a2, @"TotalZoomFactor"))
  {
    v34 = OUTLINED_FUNCTION_9_46();
    if (v34)
    {
      CFDictionarySetValue(a2, *off_1E798D4C8, v34);
    }
  }
}

- (void)_tallyAndEmitDroppedSample:(uint64_t)sample
{
  if (sample)
  {
    OUTLINED_FUNCTION_54();
    v5 = [*(v3 + 16) emitDroppedSample:v4];
    if (v2)
    {
      v5 = [v2 pts];
    }

    else
    {
      v15 = 0;
    }

    OUTLINED_FUNCTION_11_39(v5, v6, v7, v8, v9, v10, v11, v12, v14, v13, v15);
    ++*(v1 + 268);
  }
}

- (uint64_t)_collectMetadataForReprocessingFrom:(void *)from to:
{
  if (result)
  {
    v4 = result;
    result = 4294954516;
    if (a2)
    {
      if (from)
      {
        v6 = *off_1E798A3C8;
        if (OUTLINED_FUNCTION_9_46())
        {
          [from setObject:*(v4 + 232) forKeyedSubscript:*off_1E798A970];
          [(BWVISNode *)v4 _addVISDigitalZoomToMetadata:from sampleBuffer:a2 forReprocessing:1];
          v7 = *off_1E798CE60;
          if (OUTLINED_FUNCTION_32_11())
          {
            v8 = [MEMORY[0x1E695DEC8] arrayWithArray:OUTLINED_FUNCTION_32_11()];
            OUTLINED_FUNCTION_43();
            v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
            if (v10)
            {
              v11 = v10;
              v12 = MEMORY[0];
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  OUTLINED_FUNCTION_4_10();
                  if (v14 != v12)
                  {
                    objc_enumerationMutation(v8);
                  }

                  [(BWVISNode *)v4 _addVISDigitalZoomToMetadata:a2 sampleBuffer:1 forReprocessing:?];
                }

                OUTLINED_FUNCTION_43();
                v11 = [v8 countByEnumeratingWithState:? objects:? count:?];
              }

              while (v11);
            }

            [from setObject:v8 forKeyedSubscript:v7];
          }

          v15 = *off_1E798CE58;
          if (OUTLINED_FUNCTION_32_11())
          {
            v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:OUTLINED_FUNCTION_32_11()];
            if (v16)
            {
              v33 = v16;
              [(BWVISNode *)v4 _addVISDigitalZoomToMetadata:v16 sampleBuffer:a2 forReprocessing:1];
              [from setObject:v33 forKeyedSubscript:v15];
            }
          }

          v17 = OUTLINED_FUNCTION_69();
          v20 = CMGetAttachment(v17, v18, v19);
          if (v20)
          {
            OUTLINED_FUNCTION_23_18(v20, v20, *off_1E798A408, *off_1E798A410);
          }

          AttachedMedia = BWSampleBufferGetAttachedMedia(a2, @"Depth");
          if (AttachedMedia)
          {
            OUTLINED_FUNCTION_23_18(AttachedMedia, AttachedMedia, *off_1E798A3D8, *off_1E798A3E0);
          }

          v22 = BWSampleBufferGetAttachedMedia(a2, 0x1F21AB1D0);
          if (v22)
          {
            OUTLINED_FUNCTION_23_18(v22, v22, *off_1E798A3E8, *off_1E798A3F0);
          }

          v23 = BWSampleBufferGetAttachedMedia(a2, @"PreLTMThumbnail");
          if (v23)
          {
            OUTLINED_FUNCTION_23_18(v23, v23, *off_1E798A3F8, *off_1E798A400);
          }

          v24 = BWSampleBufferGetAttachedMedia(a2, 0x1F219CD50);
          if (v24)
          {
            OUTLINED_FUNCTION_23_18(v24, v24, *off_1E798CD88, *off_1E798CD90);
          }

          v25 = BWSampleBufferGetAttachedMedia(a2, 0x1F219CD70);
          if (v25)
          {
            v26 = v25;
            v27 = CMGetAttachment(v25, v6, 0);
            if (BWSampleBufferGetCVDataBuffer(v26))
            {
              IOSurface = CVDataBufferGetIOSurface();
              if (v27)
              {
                v29 = IOSurface;
                if (IOSurface)
                {
                  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  [v30 setObject:v27 forKeyedSubscript:v6];
                  IOSurfaceLock(v29, 1u, 0);
                  BaseAddress = IOSurfaceGetBaseAddress(v29);
                  v32 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:BaseAddress length:CVDataBufferGetDataSize() freeWhenDone:0];
                  [v30 setObject:objc_msgSend(v32 forKeyedSubscript:{"compressedDataUsingAlgorithm:error:", 1, 0), *off_1E798AFE0}];

                  IOSurfaceUnlock(v29, 1u, 0);
                  [from setObject:v30 forKeyedSubscript:*off_1E798CD80];
                }
              }
            }
          }

          if (OUTLINED_FUNCTION_9_46())
          {
            [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
          }

          if (OUTLINED_FUNCTION_9_46())
          {
            [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
          }

          if (OUTLINED_FUNCTION_9_46())
          {
            [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
          }

          result = OUTLINED_FUNCTION_9_46();
          if (result)
          {
            [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
            return 0;
          }
        }

        else
        {
          return 4294954516;
        }
      }
    }
  }

  return result;
}

- (void)_tallyCompressedIOSurfaceStatsForSBuf:(uint64_t)buf
{
  if (buf)
  {
    v5 = 0;
    v6 = 0;
    v3 = BWSampleBufferComputeIOSurfaceCompressionRatio(a2, &v6, &v5);
    if (v3 > 0.0 && v3 <= 1.0)
    {
      [*(buf + 656) addDataPoint:v3];
      *(buf + 672) += v6;
      *(buf + 680) += v5;
    }
  }
}

- (uint64_t)_harvestMetadataFromSampleBuffer:(uint64_t)buffer
{
  if (buffer && target && CMGetAttachment(target, *off_1E798A3C8, 0))
  {
    memset(&v13, 0, sizeof(v13));
    CMSampleBufferGetPresentationTimeStamp(&v13, target);
    [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    v3 = CMGetAttachment(target, *off_1E798D428, 0);
    if (v3)
    {
      v4 = [v3 copy];
      [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
    }

    v5 = CMGetAttachment(target, *off_1E798D478, 0);
    if (v5)
    {
      v6 = [v5 copy];
      [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
    }

    v7 = [OUTLINED_FUNCTION_39() objectForKeyedSubscript:?];
    if (v7)
    {
      v8 = [v7 copy];
      [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
    }

    v9 = OUTLINED_FUNCTION_3_19();
    [(BWVISNode *)v9 _addMotionTensorsToRingBuffer:v10 pts:v11];
  }

  return 0;
}

- (uint64_t)_stabilizeMetadataForSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    if (target)
    {
      v4 = CMGetAttachment(target, *off_1E798A3C8, 0);
      if (v4)
      {
        v5 = v4;
        memset(&v79, 0, sizeof(v79));
        CMSampleBufferGetPresentationTimeStamp(&v79, target);
        v6 = OUTLINED_FUNCTION_3_19();
        v8 = [(BWVISNode *)v6 _calculateOpticalCenterFromMetadata:v7];
        v78 = v79;
        v10 = [(BWVISNode *)buffer _transformPointsInMetadata:v8 pts:v9];
        v12 = v11;
        v13 = [objc_msgSend(*(buffer + 16) "videoFormat")];
        [objc_msgSend(*(buffer + 16) "videoFormat")];
        v80.x = FigCaptureMetadataUtilitiesNormalizePoint(v10, v12, v13);
        [v5 setObject:CGPointCreateDictionaryRepresentation(v80) forKeyedSubscript:*off_1E798D4C0];
        v14 = [v5 objectForKeyedSubscript:*off_1E798B218];
        v15 = [v5 objectForKeyedSubscript:*off_1E798B220];
        if ([v14 count])
        {
          v37 = [v14 objectAtIndexedSubscript:0];
          memset(&v78, 0, sizeof(v78));
          [objc_msgSend(v37 objectForKeyedSubscript:{*off_1E798B780), "longLongValue"}];
          v38 = FigHostTimeToNanoseconds();
          v39 = CMTimeMake(&v77, v38, 1000000000);
          OUTLINED_FUNCTION_31_15(v39, v40, v41, v42, v43, v44, v45, v46, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v67, v68, v70, v71, v73, v74, v76, v77.value);
          v47 = OUTLINED_FUNCTION_15_30();
          [(BWVISNode *)v47 _transformRectanglesInMetadata:v14 pts:v48];
          CMSetAttachment(target, @"DetectedFacesArrayHasBeenStabilized", *MEMORY[0x1E695E4D0], 1u);
        }

        v72 = 0u;
        v75 = 0u;
        v66 = 0u;
        v69 = 0u;
        OUTLINED_FUNCTION_43();
        v16 = [v15 countByEnumeratingWithState:? objects:? count:?];
        if (v16)
        {
          v17 = v16;
          v18 = MEMORY[0];
          v19 = *off_1E798ACE8;
          v20 = *off_1E798B780;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              OUTLINED_FUNCTION_4_10();
              if (v22 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v23 = *(*(&v66 + 1) + 8 * i);
              v24 = [objc_msgSend(v15 objectForKeyedSubscript:{v23), "objectForKeyedSubscript:", v19}];
              if ([v24 count])
              {
                memset(&v78, 0, sizeof(v78));
                [objc_msgSend(objc_msgSend(v15 objectForKeyedSubscript:{v23), "objectForKeyedSubscript:", v20), "longLongValue"}];
                v25 = FigHostTimeToNanoseconds();
                v26 = CMTimeMake(&v77, v25, 1000000000);
                OUTLINED_FUNCTION_31_15(v26, v27, v28, v29, v30, v31, v32, v33, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v66, *(&v66 + 1), v69, *(&v69 + 1), v72, *(&v72 + 1), v75, *(&v75 + 1), v77.value);
                v34 = OUTLINED_FUNCTION_15_30();
                [(BWVISNode *)v34 _transformRectanglesInMetadata:v24 pts:v35];
              }
            }

            OUTLINED_FUNCTION_43();
            v17 = [v15 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v17);
        }
      }
    }
  }

  return 0;
}

- (uint64_t)_checkIfGreenGhostIsPresentWithSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    if (target)
    {
      v4 = *off_1E798A3C8;
      v5 = CMGetAttachment(target, *off_1E798A3C8, 0);
      if (v5)
      {
        v6 = v5;
        [v5 objectForKeyedSubscript:*off_1E798B540];
        if (*(buffer + 214) == 1)
        {
          AttachedMedia = BWSampleBufferGetAttachedMedia(target, 0x1F219CD50);
          if (!AttachedMedia)
          {
            v14 = *off_1E798D498;
            v15 = &unk_1F2245A60;
LABEL_13:
            [v6 setObject:v15 forKeyedSubscript:v14];
            return 0;
          }

          v8 = CMGetAttachment(AttachedMedia, v4, 0);
          v9 = [v8 objectForKeyedSubscript:*off_1E798B488];
          if (v8 && v9)
          {
            v10 = [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798AE88), "intValue"}];
            [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B4B8), "intValue"}];
            [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B2A8), "floatValue"}];
            [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B210), "floatValue"}];
            v12 = v11;
            v18 = *(buffer + 828);
            LODWORD(v19) = *(buffer + 844);
            if (FigCaptureMetadataUtilitiesGreenGhostDetectedInFrame(v10))
            {
              ++*(buffer + 848);
              v13 = &unk_1F2245A30;
            }

            else
            {
              v13 = &unk_1F2245A48;
            }

            [v6 setObject:v13 forKeyedSubscript:{*off_1E798D498, v18, v19}];
            v16 = *(buffer + 848);
            v18 = *(buffer + 828);
            LODWORD(v19) = *(buffer + 844);
            *(buffer + 852) = FigCaptureMetadataUtilitiesGreenGhostDetectedInMovie(v16, &v18, v12);
            v15 = [MEMORY[0x1E696AD98] numberWithBool:*(buffer + 852)];
            v14 = *off_1E798D4A0;
            goto LABEL_13;
          }
        }
      }
    }
  }

  return 0;
}

- (uint64_t)_cinematographyFrameForSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0;
  }

  if (!target)
  {
    return 0;
  }

  v2 = CMGetAttachment(target, @"CinematicVideoCinematographyMetadata", 0);
  if (!v2)
  {
    return 0;
  }

  return [v2 objectForKeyedSubscript:0x1F21A9950];
}

- (uint64_t)_attachHarvestedStabilizationMetadataToCinematographyFrame:(os_unfair_lock_s *)frame
{
  if (frame)
  {
    if (a2)
    {
      v18 = 0uLL;
      v19 = 0;
      [a2 time];
      v16 = 0uLL;
      v17 = 0;
      v4 = [BWVISNode _findBestMotionTensorsInRingBufferWithKey:frame pts:0];
      if ((v4 & 0x80000000) == 0)
      {
        v5 = v4;
        v6 = [*&frame[8 * v4 + 80]._os_unfair_lock_opaque objectForKeyedSubscript:*off_1E798D478];
        if ([v6 length] == 36)
        {
          v7 = [*&frame[8 * v5 + 80]._os_unfair_lock_opaque objectForKeyedSubscript:*off_1E798D440];
          if ([v7 length] == 8)
          {
            bytes = [v6 bytes];
            v9 = 0;
            v13 = 0u;
            v14 = 0u;
            v15 = 0u;
            do
            {
              v10 = v9 / 3u;
              if (v10 >= 2)
              {
                v10 = 2;
              }

              *((&v13 + v9 % 3u) | (4 * v10)) = *(bytes + 4 * v9);
              ++v9;
            }

            while (v9 != 9);
            v11 = [objc_alloc(getPTTimedStabilizationMetadataVersion1Class()) initWithMinorVersion:1];
            [v11 setStabilizationHomography:{*&v13, *&v14, *&v15}];
            [v11 setEstimatedMotionBlur:{*objc_msgSend(v7, "bytes")}];
            objc_setAssociatedObject(a2, @"CinematicVideoTimedStabilizationMetadata", v11, 1);
          }
        }
      }
    }
  }

  return 0;
}

- (uint64_t)_stabilizeCinematographyMetadataInCinematographyFrame:(uint64_t)frame
{
  if (frame)
  {
    if (a2)
    {
      [a2 time];
      v4 = *off_1E798D428;
      v5 = [BWVISNode _findBestMotionTensorsInRingBufferWithKey:frame pts:*off_1E798D428];
      if ((v5 & 0x80000000) == 0)
      {
        v6 = [*(frame + 320 + 32 * v5) objectForKeyedSubscript:v4];
        if ([v6 length] == 36)
        {
          if ([v6 bytes])
          {
            videoFormat = [*(frame + 8) videoFormat];
            [videoFormat width];
            [videoFormat height];
            videoFormat2 = [*(frame + 16) videoFormat];
            width = [videoFormat2 width];
            [videoFormat2 height];
            v10 = [objc_msgSend(a2 "detections")];
            if ([v10 count])
            {
              OUTLINED_FUNCTION_43();
              v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
              if (v11)
              {
                v12 = v11;
                v13 = MEMORY[0];
                do
                {
                  for (i = 0; i != v12; ++i)
                  {
                    OUTLINED_FUNCTION_4_10();
                    if (v15 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v16 = *(8 * i);
                    [v16 rect];
                    v17 = OUTLINED_FUNCTION_3_19();
                    [v16 setRect:{visn_transformRectangle(v17, v18, width, v19, v20, v21, v22)}];
                  }

                  OUTLINED_FUNCTION_43();
                  v12 = [v10 countByEnumeratingWithState:? objects:? count:?];
                }

                while (v12);
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

- (double)_droppedSamplePTSFromSampleBuffer:(uint64_t)buffer@<X8>
{
  *buffer = 0;
  *(buffer + 8) = 0;
  *(buffer + 16) = 0;
  if (a2)
  {
    if (sbuf)
    {
      CMSampleBufferGetPresentationTimeStamp(buffer, sbuf);
    }

    else
    {
      v6 = MEMORY[0x1E6960C70];
      v5 = *MEMORY[0x1E6960C70];
      *buffer = *MEMORY[0x1E6960C70];
      *(buffer + 16) = *(v6 + 16);
    }

    if ((*(buffer + 12) & 1) == 0)
    {
      if ((*(a2 + 700) & 1) == 0)
      {
        CMTimeMake(&v12, 1, 1000);
        *(a2 + 688) = v12;
      }

      v7 = *(a2 + 696);
      if (v7 <= 999)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7 / 0x3E8u;
      }

      CMTimeMake(&rhs, v8, v7);
      OUTLINED_FUNCTION_2_10();
      CMTimeAdd(&v12, &v10, &rhs);
      *&v5 = v12.value;
      *buffer = v12;
    }
  }

  return *&v5;
}

- (uint64_t)_collectAttachedMediaForReprocessingFrom:(uint64_t)from offlineKey:(uint64_t)key offlineKeyData:(void *)data to:
{
  if (!self)
  {
    return 0;
  }

  v5 = target;
  if (!target)
  {
    goto LABEL_11;
  }

  v8 = *off_1E798A3C8;
  v9 = CMGetAttachment(target, *off_1E798A3C8, 0);
  ImageBuffer = CMSampleBufferGetImageBuffer(v5);
  if (!ImageBuffer)
  {
    v5 = 0;
LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v11 = ImageBuffer;
  Height = CVPixelBufferGetHeight(ImageBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v11);
  Attributes = CVPixelBufferGetAttributes();
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v15;
  if (!v15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v18 = 0;
LABEL_17:
    v19 = 4294954510;
    goto LABEL_13;
  }

  [(opaqueCMSampleBuffer *)v15 setObject:Attributes forKeyedSubscript:*off_1E798D4D8];
  if (v9)
  {
    [(opaqueCMSampleBuffer *)v5 setObject:v9 forKeyedSubscript:v8];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:BytesPerRow];
  [(opaqueCMSampleBuffer *)v5 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6966060]];
  CVPixelBufferLockBaseAddress(v11, 1uLL);
  v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:CVPixelBufferGetBaseAddress(v11) length:BytesPerRow * Height freeWhenDone:0];
  v18 = v17;
  if (!v17 || ![v17 compressedDataUsingAlgorithm:1 error:0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    goto LABEL_17;
  }

  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
  CVPixelBufferUnlockBaseAddress(v11, 1uLL);
  [data setObject:v5 forKeyedSubscript:from];
LABEL_12:
  v19 = 0;
LABEL_13:

  return v19;
}

- (void)didCompleteProcessingOfBuffer:(opaqueCMSampleBuffer *)buffer withStatus:(int)status
{
  v5 = *&status;
  if ([(BWVISProcessorControllerConfiguration *)self->_processorControllerConfiguration smartStyleReversibilityEnabled])
  {
    BWSynchronizeSmartStyleAttachedMediaPTS(buffer);
  }

  if (v5)
  {
    goto LABEL_58;
  }

  v8 = OUTLINED_FUNCTION_69();
  v11 = CMGetAttachment(v8, v9, v10);
  if (self->_frameRateConversionEnabled)
  {
    if (!buffer)
    {
      return;
    }

    v12 = OUTLINED_FUNCTION_69();
    v15 = CMGetAttachment(v12, v13, v14);
    if (!v15)
    {
      v22 = v11 != 0;
      goto LABEL_13;
    }

    v16 = [objc_msgSend(v15 objectForKeyedSubscript:{0x1F21AA0F0), "intValue"}];
    v76[0] = 0x1F21AA130;
    v76[1] = 0x1F21AA150;
    v77[0] = [MEMORY[0x1E696AD98] numberWithInt:v16];
    v77[1] = [MEMORY[0x1E696AD98] numberWithBool:self->_frameRateConversionEnabled];
    v17 = MEMORY[0x1E695DF20];
    v18 = v77;
    v19 = v76;
    v20 = 2;
  }

  else
  {
    v74 = 0x1F21AA150;
    v75 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v17 = MEMORY[0x1E695DF20];
    v18 = &v75;
    v19 = &v74;
    v20 = 1;
  }

  v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
  v22 = v11 != 0;
  if (v11 && v21)
  {
    CFDictionarySetValue(v11, @"VariableFrameRateStats", v21);
  }

  if (buffer)
  {
LABEL_13:
    v23 = *MEMORY[0x1E69604E0];
    v24 = OUTLINED_FUNCTION_14_32();
    v26 = CMGetAttachment(v24, v25, 0);
    v27 = *MEMORY[0x1E695E4D0];
    if (v26 == *MEMORY[0x1E695E4D0])
    {
      v28 = OUTLINED_FUNCTION_69();
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v31 = [CMGetAttachment(v28 v29];
      v32 = [v31 countByEnumeratingWithState:&v70 objects:v69 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v71;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v71 != v34)
            {
              objc_enumerationMutation(v31);
            }

            AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, *(*(&v70 + 1) + 8 * i));
            CMSetAttachment(AttachedMedia, v23, v27, 1u);
          }

          v33 = [v31 countByEnumeratingWithState:&v70 objects:v69 count:16];
        }

        while (v33);
      }
    }

    OUTLINED_FUNCTION_33();
    if (v37)
    {
      v38 = OUTLINED_FUNCTION_14_32();
      v40 = CMGetAttachment(v38, v39, 0);
      if (v40)
      {
        BWSampleBufferSetAttachedMedia(buffer, @"Depth", v40);
        v41 = OUTLINED_FUNCTION_14_32();
        CMRemoveAttachment(v41, v42);
      }
    }

    if (!v22)
    {
      goto LABEL_38;
    }

    if ((self->_stabilizationType - 3) > 1)
    {
      OUTLINED_FUNCTION_33();
      if (v37)
      {
        if (self->_generatedTransformsOutputDimensionsOverride.width < 1 || self->_generatedTransformsOutputDimensionsOverride.height < 1)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v43 = OUTLINED_FUNCTION_14_32();
      v45 = CMGetAttachment(v43, v44, 0);
      [v45 floatValue];
      v47 = v46;
      if (v45)
      {
        v48 = OUTLINED_FUNCTION_14_32();
        CMRemoveAttachment(v48, v49);
      }

      if (v47 > 1.0)
      {
        FigCFDictionarySetCGRect();
        goto LABEL_38;
      }
    }

    CFDictionaryRemoveValue(v11, *off_1E798A5C8);
LABEL_38:
    OUTLINED_FUNCTION_33();
    if (!v37)
    {
      goto LABEL_45;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    v52 = *off_1E798A3B8;
    v53 = CMGetAttachment(ImageBuffer, *off_1E798A3B8, 0);
    if (!v53)
    {
      goto LABEL_45;
    }

    v54 = v53;
    if (v22 && CFDictionaryContainsKey(v11, *off_1E798A5C8) || (v55 = BWSampleBufferSetAttachedMediaFromPixelBuffer(buffer, 0x1F21AB190, v54, &self->_lowResImageUsedByVideoEncoderFormatDescription, [MEMORY[0x1E695DF90] dictionary], 0, 0), !v55))
    {
      CMRemoveAttachment(ImageBuffer, v52);
LABEL_45:
      v56 = *off_1E798D458;
      v57 = OUTLINED_FUNCTION_9_46();
      if (v57)
      {
        v58 = v57;
        videoStabilizationStrength = [(BWVISProcessorControllerConfiguration *)self->_processorControllerConfiguration videoStabilizationStrength];
        if (videoStabilizationStrength == 3)
        {
          v60 = @"action";
        }

        else if (videoStabilizationStrength == 4)
        {
          v60 = @"actionUltra";
        }

        else if (self->_stereoMode)
        {
          v60 = @"stereo";
        }

        else
        {
          v60 = @"video";
        }

        [v58 setObject:v60 forKeyedSubscript:*off_1E798CEA8];
        CMSetAttachment(buffer, v56, v58, 1u);
      }

      v61 = OUTLINED_FUNCTION_3_19();
      [BWVISNode _tallyAndEmitSampleBuffer:v61];
      return;
    }

    v5 = v55;
    fig_log_get_emitter();
    v68 = v4;
    LODWORD(v67) = v5;
    FigDebugAssert3();
LABEL_58:
    [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger logErrorNumber:v5 errorString:@"VIS Processor ready callback, generating drop", v67, v68];
    v62 = OUTLINED_FUNCTION_3_19();
    [(BWVISNode *)v63 _droppedSamplePTSFromSampleBuffer:v62, v64];
    v65 = [OUTLINED_FUNCTION_39() newDroppedSampleWithReason:? pts:?];
    v66 = OUTLINED_FUNCTION_3_19();
    [BWVISNode _tallyAndEmitDroppedSample:v66];
  }
}

- (void)_addMotionTensorsToRingBuffer:(uint64_t)buffer pts:
{
  if (self)
  {
    OUTLINED_FUNCTION_54();
    os_unfair_lock_lock(v6 + 161);
    v7 = &v3[8 * v3[160]._os_unfair_lock_opaque + 80];
    v8 = *v7;
    v9 = *(buffer + 16);
    *(v7 + 8) = *buffer;
    *(v7 + 24) = v9;
    *&v3[8 * v3[160]._os_unfair_lock_opaque + 80]._os_unfair_lock_opaque = v4;

    v3[160]._os_unfair_lock_opaque = (v3[160]._os_unfair_lock_opaque + 1) % 0xA;

    os_unfair_lock_unlock(v3 + 161);
  }
}

- (uint64_t)_findBestMotionTensorsInRingBufferWithKey:(os_unfair_lock_s *)key pts:(uint64_t)pts
{
  if (!key)
  {
    return 0;
  }

  v13 = **&MEMORY[0x1E6960C88];
  os_unfair_lock_lock(key + 161);
  v4 = 0xFFFFFFFFLL;
  for (i = 9; i != -1; --i)
  {
    v6 = i + key[160]._os_unfair_lock_opaque - 10 * ((key[160]._os_unfair_lock_opaque + i) / 0xA);
    v7 = *&key[8 * v6 + 80]._os_unfair_lock_opaque;
    if (v7 && (!pts || [v7 objectForKeyedSubscript:pts]))
    {
      memset(&v12, 0, sizeof(v12));
      lhs = *&key[8 * v6 + 82]._os_unfair_lock_opaque;
      OUTLINED_FUNCTION_2_10();
      CMTimeSubtract(&time, &lhs, &v9);
      CMTimeAbsoluteValue(&v12, &time);
      time = v12;
      lhs = v13;
      if (CMTimeCompare(&time, &lhs) > 0)
      {
        break;
      }

      v13 = v12;
      v4 = v6;
    }
  }

  os_unfair_lock_unlock(key + 161);
  return v4;
}

- (double)_calculateOpticalCenterFromMetadata:(uint64_t)metadata
{
  if (!metadata)
  {
    return 0.0;
  }

  point = *MEMORY[0x1E695EFF8];
  videoFormat = [*(metadata + 8) videoFormat];
  width = [videoFormat width];
  height = [videoFormat height];
  v6 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B5A8), "intValue"}];
  v7 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B5A0), "intValue"}];
  v8 = *off_1E798B258;
  if ([a2 objectForKeyedSubscript:*off_1E798B258] || (v8 = *off_1E798B250, objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798B250)))
  {
    CGPointMakeWithDictionaryRepresentation([a2 objectForKeyedSubscript:v8], &point);
  }

  else
  {
    __asm { FMOV            V1.2S, #-1.0 }

    point = vcvtq_f64_f32(vmul_f32(vadd_f32(vcvt_f32_u32(__PAIR64__(v7, v6)), _D1), 0x3F0000003F000000));
  }

  [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798D1A8), "floatValue"}];
  v10 = v9;
  v11 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v21[0] = 0;
  v21[1] = 0;
  v13 = FigMotionComputeRawSensorCenterInBuffer(a2, width | (height << 32), v12, v12, v21);
  v14 = *v21;
  if (v13)
  {
    v14 = ((width + -1.0) * 0.5);
  }

  return v14 + (point.x - ((v6 + -1.0) * 0.5)) * v10 * v12;
}

- (double)_transformPointsInMetadata:(double)metadata pts:(double)pts
{
  if (!self)
  {
    return 0.0;
  }

  videoFormat = [*(self + 8) videoFormat];
  width = [videoFormat width];
  [videoFormat height];
  videoFormat2 = [*(self + 16) videoFormat];
  width2 = [videoFormat2 width];
  [videoFormat2 height];
  v12 = vcvts_n_f32_s32(width2, 1uLL);
  v13 = *off_1E798D428;
  v21 = *a2;
  v22 = *(a2 + 2);
  v14 = [BWVISNode _findBestMotionTensorsInRingBufferWithKey:self pts:v13];
  if ((v14 & 0x80000000) == 0)
  {
    v15 = [*(self + 320 + 32 * v14) objectForKeyedSubscript:{v13, v21, v22}];
    if ([v15 length] == 36)
    {
      bytes = [v15 bytes];
      *&v21 = 0;
      metadataCopy = metadata;
      ptsCopy = pts;
      ComputePerspectiveProjectedPoint(bytes, &v21, &v21 + 1, metadataCopy, ptsCopy);
      v19 = *&v21 - ((width - width2) / 2);
      return fmaxf(fminf(width2, v19), 0.0);
    }
  }

  return v12;
}

- (uint64_t)_transformRectanglesInMetadata:(__int128 *)metadata pts:
{
  if (self)
  {
    if ([a2 count])
    {
      videoFormat = [*(self + 8) videoFormat];
      width = [videoFormat width];
      height = [videoFormat height];
      videoFormat2 = [*(self + 16) videoFormat];
      width2 = [videoFormat2 width];
      height2 = [videoFormat2 height];
      v9 = *off_1E798D428;
      v86 = *metadata;
      *&v87 = *(metadata + 2);
      v10 = OUTLINED_FUNCTION_14_32();
      v12 = [BWVISNode _findBestMotionTensorsInRingBufferWithKey:v10 pts:v11];
      if ((v12 & 0x80000000) == 0)
      {
        v13 = [*(self + 320 + 32 * v12) objectForKeyedSubscript:v9];
        if ([v13 length] == 36)
        {
          bytes = [v13 bytes];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v22 = OUTLINED_FUNCTION_30_10(bytes, v15, v16, v17, v18, v19, v20, v21, a2, self, v62, v64, v65, v67, v68, v70, bytes, width2, *&v76, v77, v78, v79, v80, v81, *&v82, *&v83, *&v84, *&v85, v86, *(&v86 + 1), v87, *(&v87 + 1), v88);
          if (v22)
          {
            v23 = v22;
            v71 = *v90;
            v69 = width | (height << 32);
            v75 = v74 | (height2 << 32);
            v24 = *off_1E798B160;
            v25 = width;
            v26 = height;
            v27 = *off_1E798B168;
            v28 = (v72 + 8);
            v63 = *(MEMORY[0x1E695F050] + 16);
            v66 = *MEMORY[0x1E695F050];
            v29 = *off_1E798B158;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v90 != v71)
                {
                  objc_enumerationMutation(obja);
                }

                v31 = *(*(&v89 + 1) + 8 * i);
                v86 = v66;
                v87 = v63;
                FigCFDictionaryGetCGRectIfPresent();
                visn_transformRectangle(v72, v69, v75, *&v86, *(&v86 + 1), *&v87, *(&v87 + 1));
                FigCFDictionarySetCGRect();
                if ([v31 objectForKeyedSubscript:v24])
                {
                  v32 = [objc_msgSend(v31 objectForKeyedSubscript:{v24), "intValue"}];
                  v33 = (*&v86 + *&v87 * 0.5) * v25;
                  v34 = (*(&v86 + 1) + *(&v87 + 1) * 0.5) * v26;
                  v82 = v33;
                  v83 = v34;
                  v35 = __sincos_stret((v32 + -90.0) / 180.0 * 3.14159265);
                  v84 = v33 + v35.__cosval * 10.0;
                  v85 = v34 + v35.__sinval * 10.0;
                  v36 = &v82;
                  v37 = &v80;
                  v38 = 1;
                  do
                  {
                    v39 = 0;
                    v40 = v38;
                    v41 = *v36;
                    v42 = v36[1];
                    v43 = v28;
                    do
                    {
                      v44 = v42 * *(v43 - 1) + *(v43 - 2) * v41;
                      v45 = *v43;
                      v43 += 3;
                      *&v44 = v44 + v45;
                      v76.i32[v39++] = LODWORD(v44);
                    }

                    while (v39 != 3);
                    v38 = 0;
                    v46 = &v77;
                    v47 = vld1_dup_f32(v46);
                    *v37 = vcvtq_f64_f32(vdiv_f32(v76, v47));
                    v37 = &v78;
                    v36 = &v84;
                  }

                  while ((v40 & 1) != 0);
                  v48 = atan2(*&v79 - *&v81, *&v78 - *&v80) * 180.0 / 3.14159265;
                  [MEMORY[0x1E696AD98] numberWithInt:FigCaptureNormalizeAngle(llroundf(v48 + 90.0))];
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if ([v31 objectForKeyedSubscript:v27] && *(v61 + 204) == 1)
                {
                  [MEMORY[0x1E696AD98] numberWithInt:{FigCaptureNormalizeAngle(llroundf(-objc_msgSend(objc_msgSend(v31, "objectForKeyedSubscript:", v27), "intValue")))}];
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                v49 = [v31 objectForKeyedSubscript:v29];
                if (v49)
                {
                  [MEMORY[0x1E696AD98] numberWithInt:{FigCaptureNormalizeAngle(objc_msgSend(objc_msgSend(v31, "objectForKeyedSubscript:", v29), "intValue"))}];
                  v49 = [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }
              }

              v23 = OUTLINED_FUNCTION_30_10(v49, v50, v51, v52, v53, v54, v55, v56, obja, v61, v63, *(&v63 + 1), v66, *(&v66 + 1), v69, v71, v72, v75, *&v76, v77, v78, v79, v80, v81, *&v82, *&v83, *&v84, *&v85, v86, *(&v86 + 1), v87, *(&v87 + 1), v88);
            }

            while (v23);
          }
        }
      }
    }
  }

  return 0;
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

- (void)didSelectFormat:(uint64_t)a1 forInput:(uint64_t)a2 forAttachedMediaKey:.cold.5(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 201) == 1)
  {
    [*(a1 + 16) setFormat:a2];
  }

  [(BWVISNode *)a1 _updateOutputRequirements];
}

- (uint64_t)prepareForCurrentConfigurationToBecomeLive
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (void)setOutputDimensions:(int)a3 .cold.1(int a1, _DWORD *a2, int a3, uint64_t a4)
{
  *a2 = a1;
  a2[1] = a3;
  if (*(a4 + 810) == 1 && (a3 * a1) >= 0x7E9000)
  {
    [*(a4 + 16) setPoolPreallocationEnabled:1];
  }

  [(BWVISNode *)a4 _updateOutputRequirements];
}

- (uint64_t)setStabilizeDepthAttachments:(BWNodeInputMediaConfiguration *)a3 .cold.1(uint64_t a1, char a2, BWNodeInputMediaConfiguration **a3, void *a4)
{
  *(a1 + 713) = a2;
  v7 = objc_alloc_init(BWNodeInputMediaConfiguration);
  *a3 = v7;
  v8 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v8 setSupportedPixelFormats:&unk_1F2249198];
  [(BWNodeInputMediaConfiguration *)v7 setFormatRequirements:v8];
  [(BWNodeInputMediaConfiguration *)v7 setPassthroughMode:0];
  *a4 = a1 + 8;
  v9 = [objc_msgSend(*(a1 + 8) "primaryMediaConfiguration")];

  return [(BWNodeInputMediaConfiguration *)v7 setDelayedBufferCount:v9];
}

@end