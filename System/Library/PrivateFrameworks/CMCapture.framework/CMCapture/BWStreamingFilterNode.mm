@interface BWStreamingFilterNode
+ (void)initialize;
- (BOOL)hasNonLiveConfigurationChanges;
- (BOOL)isRenderingSemanticStyle;
- (BOOL)isSemanticStyleRenderingSuspended;
- (BWStreamingFilterNode)initWithCaptureDevice:(id)device maxLossyCompressionLevel:(int)level semanticStyleRenderingEnabled:(BOOL)enabled cinematicVideoEnabled:(BOOL)videoEnabled smartStyleRenderingEnabled:(BOOL)renderingEnabled portraitPreviewForegroundBlurEnabled:(BOOL)blurEnabled depthFilterRenderingIsAfterPreviewStitcher:(BOOL)stitcher metalCommandQueue:(id)self0 priority:(unsigned int)self1 mirroredForMetadataAdjustment:(BOOL)self2 rotationDegreesForMetadataAdjustment:(int)self3 sourceStillImageOutputPortTypes:(id)self4 squareAspectRatioConfigEnabled:(BOOL)self5 cropDepthToPrimaryCaptureAspectRatio:(BOOL)self6 disableDepthAndSegmentationRotationInLandscape:(BOOL)self7;
- (CGRect)_hasOverCaptureRegionsWithSampleBuffer:(CGRect *)result;
- (FigCaptureSemanticStyle)semanticStyle;
- (NSArray)filters;
- (const)_buildAndChangeToFiltersWithAnimation:(const os_unfair_lock *)result;
- (const)_changeToFilters:(uint64_t)filters animation:;
- (const)_shouldRenderSemanticStyle;
- (float)_cubeStrengthForOffset:(uint64_t)offset;
- (id)provideCoreImageFilterRenderer;
- (id)provideMetalFilterRenderer;
- (id)provideStreamingSDOFFilterRenderer;
- (int)semanticStyleSceneType;
- (os_unfair_lock_s)_isDepthRenderingEnabled;
- (uint64_t)_adjustRectanglesFromFiltersAndRegionArray:(CMAttachmentBearerRef)target withSampleBuffer:;
- (uint64_t)_hasDepthEffect:(uint64_t)result;
- (uint64_t)_hasMonochromeEffect:(uint64_t)result;
- (uint64_t)_skipMonochromeDepthAnimation:(uint64_t)result;
- (uint64_t)_updateOutputRequirements;
- (void)_applyQueuedSemanticStyle:(uint64_t)style;
- (void)_createMatchingPixelBufferFromSavedVideoBuffersWithTargetPts:(uint64_t)pts input:;
- (void)_newStillImageOutputPixelBufferFromVideoPixelBuffer:(uint64_t)buffer input:;
- (void)_rebuildSemanticStyleFiltersWithSceneType:(uint64_t)type;
- (void)_savePixelBufferForStillImageCaptureRequests:(__int128 *)requests withPts:;
- (void)_supportedInputPixelFormats;
- (void)_supportedOutputPixelFormats;
- (void)_updateSemanticStyleFiltersAndRegionArrayWithSampleBuffer:(const os_unfair_lock *)buffer;
- (void)changeToFilters:(id)filters animated:(BOOL)animated;
- (void)changeToFilters:(id)filters semanticStyle:(id)style animated:(BOOL)animated;
- (void)changeToSemanticStyle:(id)style animated:(BOOL)animated;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)filterDetectedFacesInSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)prepareForRenderingWithPreparedPixelBufferPool;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)semanticStyleSceneTypeDidChange:(int)change;
- (void)setDepthDataDeliveryEnabled:(BOOL)enabled;
- (void)setPreviewFilterBackpressureSemaphore:(id)semaphore;
- (void)setSemanticStyleRenderingSuspended:(BOOL)suspended animated:(BOOL)animated;
- (void)setSemanticStyleSet:(id)set fencePortSendRight:(id)right;
- (void)setStreamingSegmentationFromInferenceEngine:(BOOL)engine;
@end

@implementation BWStreamingFilterNode

- (const)_shouldRenderSemanticStyle
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner(result + 48);
    if (v1[58]._os_unfair_lock_opaque)
    {
      return 0;
    }

    else if (v1[75]._os_unfair_lock_opaque)
    {
      return 1;
    }

    else
    {
      return ([*&v1[56]._os_unfair_lock_opaque isIdentity] ^ 1);
    }
  }

  return result;
}

- (uint64_t)_updateOutputRequirements
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(*(result + 512) "videoFormat")];
    if (v2)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInt:v2];
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    }

    else
    {
      v3 = 0;
    }

    [objc_msgSend(objc_msgSend(objc_msgSend(v1[65] "allValues")];
    _supportedOutputPixelFormats = [(BWStreamingFilterNode *)v1 _supportedOutputPixelFormats];
    v5 = [objc_msgSend(objc_msgSend(v1 "outputs")];
    [v5 setWidth:{objc_msgSend(OUTLINED_FUNCTION_12_17(), "width")}];
    [v5 setHeight:{objc_msgSend(OUTLINED_FUNCTION_12_17(), "height")}];
    [v5 setSupportedColorSpaceProperties:v3];
    [v5 setSupportedPixelFormats:_supportedOutputPixelFormats];
    allValues = [v1[66] allValues];
    OUTLINED_FUNCTION_43();
    result = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v8 = result;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          OUTLINED_FUNCTION_4_10();
          if (v11 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          formatRequirements = [*(v13 + 8 * v10) formatRequirements];
          [formatRequirements setWidth:{objc_msgSend(OUTLINED_FUNCTION_12_17(), "width")}];
          [formatRequirements setHeight:{objc_msgSend(OUTLINED_FUNCTION_12_17(), "height")}];
          [formatRequirements setSupportedColorSpaceProperties:v3];
          [formatRequirements setSupportedPixelFormats:_supportedOutputPixelFormats];
          ++v10;
        }

        while (v8 != v10);
        OUTLINED_FUNCTION_43();
        result = [allValues countByEnumeratingWithState:? objects:? count:?];
        v8 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)_supportedOutputPixelFormats
{
  if (!self)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695DF70] arrayWithArray:-[BWStreamingFilterNode _supportedInputPixelFormats](self)];
  v3 = [objc_msgSend(*(self + 512) "videoFormat")];
  if (v3)
  {
    IsFullRange = FigCapturePixelFormatIsFullRange(v3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__BWStreamingFilterNode__supportedOutputPixelFormats__block_invoke;
    v6[3] = &__block_descriptor_33_e35_B24__0__NSNumber_8__NSDictionary_16l;
    v7 = IsFullRange;
    [v2 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v6)}];
  }

  return v2;
}

- (void)_supportedInputPixelFormats
{
  if (!self)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695DF70] arrayWithObjects:{&unk_1F2243168, &unk_1F2243180, &unk_1F2243198, &unk_1F22431B0, &unk_1F22431E0, &unk_1F22431F8, 0}];
  [v2 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 0, *(self + 612))}];
  return v2;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  self->_preparedToBecomeLive = 1;
  os_unfair_lock_lock(&self->_renderListLock);
  v3 = self->_nextRenderList;
  os_unfair_lock_unlock(&self->_renderListLock);
  if (v3)
  {
    v4 = [-[BWNodeInput mediaPropertiesForAttachedMediaKey:](self->super._input mediaPropertiesForAttachedMediaKey:{@"PrimaryFormat", "resolvedVideoFormat"}];
    mediaPropertiesByAttachedMediaKey = [(BWNodeInput *)self->super._input mediaPropertiesByAttachedMediaKey];
    processorPreparationQueue = self->_processorPreparationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__BWStreamingFilterNode_prepareForCurrentConfigurationToBecomeLive__block_invoke;
    block[3] = &unk_1E798FD58;
    block[4] = v3;
    block[5] = v4;
    block[6] = mediaPropertiesByAttachedMediaKey;
    dispatch_sync(processorPreparationQueue, block);
    os_unfair_lock_lock(&self->_renderListLock);
    if ([(BWRenderList *)self->_nextRenderList isPrepared])
    {

      self->_currentRenderList = v3;
    }

    os_unfair_lock_unlock(&self->_renderListLock);
  }

  self->_receivedInitialFixedPointDisparityBuffer = 0;
  self->_receivedOccludedFixedPointDisparityBuffer = 0;
  v7 = MEMORY[0x1E6960CC0];
  *&self->_lastRenderedPTS.value = *MEMORY[0x1E6960CC0];
  self->_lastRenderedPTS.epoch = *(v7 + 16);
  if (!self->_stillImageCaptureEnabled || (VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &self->_stillImagePixelTransferSession), self->_stillImagePixelTransferSession))
  {
    v8.receiver = self;
    v8.super_class = BWStreamingFilterNode;
    [(BWNode *)&v8 prepareForCurrentConfigurationToBecomeLive];
  }
}

- (void)prepareForRenderingWithPreparedPixelBufferPool
{
  if (!self->_renderListProcessor)
  {
    self->_renderListProcessor = [[BWRenderListProcessor alloc] initWithRenderingPool:[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)self->super._output primaryMediaProperties] preparedPixelBufferPool]];
  }
}

- (NSArray)filters
{
  os_unfair_lock_lock(&self->_filterChangeLock);
  filters = self->_filters;
  os_unfair_lock_unlock(&self->_filterChangeLock);
  return filters;
}

- (FigCaptureSemanticStyle)semanticStyle
{
  os_unfair_lock_lock(&self->_semanticStyleSetLock);
  v3 = self->_currentSemanticStyleSet;
  os_unfair_lock_unlock(&self->_semanticStyleSetLock);
  os_unfair_lock_lock(&self->_filterChangeLock);
  if (self->_semanticStyleFiltersAndRegionArray)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    semanticStyle = self->_semanticStyle;
  }

  else
  {
    semanticStyle = [(FigCaptureSemanticStyleSet *)v3 largestRegionSemanticStyle];
  }

  v6 = semanticStyle;
  os_unfair_lock_unlock(&self->_filterChangeLock);

  return v6;
}

- (int)semanticStyleSceneType
{
  os_unfair_lock_lock(&self->_semanticStyleSceneLock);
  semanticStyleSceneType = self->_semanticStyleSceneType;
  os_unfair_lock_unlock(&self->_semanticStyleSceneLock);
  return semanticStyleSceneType;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStreamingFilterNode)initWithCaptureDevice:(id)device maxLossyCompressionLevel:(int)level semanticStyleRenderingEnabled:(BOOL)enabled cinematicVideoEnabled:(BOOL)videoEnabled smartStyleRenderingEnabled:(BOOL)renderingEnabled portraitPreviewForegroundBlurEnabled:(BOOL)blurEnabled depthFilterRenderingIsAfterPreviewStitcher:(BOOL)stitcher metalCommandQueue:(id)self0 priority:(unsigned int)self1 mirroredForMetadataAdjustment:(BOOL)self2 rotationDegreesForMetadataAdjustment:(int)self3 sourceStillImageOutputPortTypes:(id)self4 squareAspectRatioConfigEnabled:(BOOL)self5 cropDepthToPrimaryCaptureAspectRatio:(BOOL)self6 disableDepthAndSegmentationRotationInLandscape:(BOOL)self7
{
  videoEnabledCopy = videoEnabled;
  enabledCopy = enabled;
  v70.receiver = self;
  v70.super_class = BWStreamingFilterNode;
  v23 = [(BWNode *)&v70 init];
  v24 = v23;
  if (v23)
  {
    deviceCopy = device;
    v23->_smartStyleRenderingEnabled = renderingEnabled;
    v23->_squareAspectRatioConfigEnabled = configEnabled;
    v23->_videoInput = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v23 index:0];
    *(v24 + 138) = videoEnabledCopy;
    *(v24 + 480) = queue;
    *(v24 + 488) = priority;
    *(v24 + 612) = level;
    *(v24 + 143) = stitcher;
    v25 = objc_alloc_init(BWVideoFormatRequirements);
    v26 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F22483E8];
    v27 = v26;
    if (videoEnabledCopy)
    {
      [v26 addObjectsFromArray:{&unk_1F2248400, device}];
    }

    [v27 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, videoEnabledCopy, videoEnabledCopy, level)}];
    [(BWVideoFormatRequirements *)v25 setSupportedPixelFormats:v27];
    [objc_msgSend(*(v24 + 512) "primaryMediaConfiguration")];
    [objc_msgSend(*(v24 + 512) "primaryMediaConfiguration")];
    [objc_msgSend(*(v24 + 512) "primaryMediaConfiguration")];
    [v24 addInput:*(v24 + 512)];

    v28 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v24];
    v29 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v29 setSupportedPixelFormats:v27];
    [(BWNodeOutput *)v28 setFormatRequirements:v29];
    [(BWNodeOutput *)v28 setPassthroughMode:2];
    [(BWNodeOutput *)v28 setIndexOfInputWhichDrivesThisOutput:0];
    [v24 addOutput:v28];

    *(v24 + 448) = objc_alloc_init(BWColorLookupCache);
    *(v24 + 192) = 0;
    *(v24 + 216) = enabledCopy;
    *(v24 + 236) = 0;
    *(v24 + 320) = 0;
    *(v24 + 328) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v24 + 336) = _Q0;
    *(v24 + 352) = 0;
    *(v24 + 360) = 0;
    *(v24 + 368) = _Q0;
    if (enabledCopy)
    {
      *(v24 + 248) = [[BWFencedAnimationQueue alloc] initWithQueueSize:1];
      *(v24 + 256) = 1;
    }

    ratioCopy2 = ratio;
    landscapeCopy2 = landscape;
    *(v24 + 296) = 0;
    *(v24 + 384) = 0;
    *(v24 + 392) = [[BWSemanticStyleColorCubeCache alloc] initWithColorLookupCache:*(v24 + 448)];
    *(v24 + 400) = 1067450368;
    *(v24 + 420) = 2143289344;
    *(v24 + 144) = 0;
    *(v24 + 456) = FigDispatchQueueCreateWithPriority();
    *(v24 + 464) = deviceCopy;
    *(v24 + 474) = 1;
    *(v24 + 475) = blurEnabled;
    *(v24 + 496) = 30;
    *(v24 + 424) = adjustment;
    *(v24 + 428) = metadataAdjustment;
    v37 = [types count];
    *(v24 + 536) = v37 != 0;
    if (v37)
    {
      *(v24 + 540) = 0;
      [*(v24 + 512) setRetainedBufferCount:{objc_msgSend(*(v24 + 512), "retainedBufferCount") + 1}];
      [*(v24 + 512) setIndefinitelyHeldBufferCount:{objc_msgSend(*(v24 + 512), "indefinitelyHeldBufferCount") + 1}];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v39 = [types countByEnumeratingWithState:&v66 objects:v65 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v67;
        LODWORD(v42) = 1;
        do
        {
          v43 = 0;
          v44 = v42;
          do
          {
            if (*v67 != v41)
            {
              objc_enumerationMutation(types);
            }

            v45 = *(*(&v66 + 1) + 8 * v43);
            v42 = v44 + 1;
            v46 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v24 index:v44];
            v47 = objc_alloc_init(BWVideoFormatRequirements);
            [(BWVideoFormatRequirements *)v47 setSupportedPixelFormats:[(BWStreamingFilterNode *)v24 _supportedInputPixelFormats]];
            [(BWNodeInput *)v46 setFormatRequirements:v47];
            [(BWNodeInput *)v46 setPassthroughMode:0];
            [dictionary setObject:v46 forKeyedSubscript:v45];
            [v24 addInput:v46];
            ++v43;
            v44 = v42;
          }

          while (v40 != v43);
          v40 = [types countByEnumeratingWithState:&v66 objects:v65 count:16];
        }

        while (v40);
      }

      *(v24 + 520) = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:dictionary];
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v49 = [types countByEnumeratingWithState:&v61 objects:v60 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v62;
        v52 = 1;
        do
        {
          v53 = 0;
          v54 = v52;
          do
          {
            if (*v62 != v51)
            {
              objc_enumerationMutation(types);
            }

            v55 = *(*(&v61 + 1) + 8 * v53);
            v56 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v24];
            v57 = objc_alloc_init(BWVideoFormatRequirements);
            [(BWVideoFormatRequirements *)v57 setSupportedPixelFormats:[(BWStreamingFilterNode *)v24 _supportedOutputPixelFormats]];
            [(BWNodeOutput *)v56 setFormatRequirements:v57];
            [(BWNodeOutput *)v56 setPassthroughMode:0];
            [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v56 primaryMediaConfiguration] setProvidesPixelBufferPool:1];
            v52 = (v54 + 1);
            [(BWNodeOutput *)v56 setIndexOfInputWhichDrivesThisOutput:v54];
            [dictionary2 setObject:v56 forKeyedSubscript:v55];
            [v24 addOutput:v56];
            ++v53;
            v54 = v52;
          }

          while (v50 != v53);
          v50 = [types countByEnumeratingWithState:&v61 objects:v60 count:16];
        }

        while (v50);
      }

      *(v24 + 528) = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:dictionary2];
      *(v24 + 544) = 0u;
      *(v24 + 560) = 0u;
      *(v24 + 576) = 0u;
      *(v24 + 592) = 0u;
      *(v24 + 608) = 0;
      landscapeCopy2 = landscape;
      ratioCopy2 = ratio;
    }

    *(v24 + 624) = FigDispatchQueueCreateWithPriority();
    [v24 setSupportsLiveReconfiguration:1];
    *(v24 + 632) = ratioCopy2;
    *(v24 + 633) = landscapeCopy2;
  }

  return v24;
}

- (void)dealloc
{
  lastSampleBuffer = self->_lastSampleBuffer;
  if (lastSampleBuffer)
  {
    CFRelease(lastSampleBuffer);
  }

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  if (self->_stillImageCaptureEnabled)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      pixelBuffer = self->_stillCaptureQueue[v5].pixelBuffer;
      if (pixelBuffer)
      {
        CFRelease(pixelBuffer);
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
  }

  stillImagePixelTransferSession = self->_stillImagePixelTransferSession;
  if (stillImagePixelTransferSession)
  {
    CFRelease(stillImagePixelTransferSession);
  }

  if (self->_previewFilterBackpressureSemaphore && self->_previewFilterBackpressureSemaphoreInitialCount >= 1)
  {
    v10 = 0;
    while (!dispatch_semaphore_wait(self->_previewFilterBackpressureSemaphore, 0))
    {
      ++v10;
      previewFilterBackpressureSemaphoreInitialCount = self->_previewFilterBackpressureSemaphoreInitialCount;
      if (v10 >= previewFilterBackpressureSemaphoreInitialCount)
      {
        goto LABEL_19;
      }
    }

    v18 = 0;
    v17 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = 0;
    v13 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(5, v13, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStreamingFilterNode.m", 500, @"LastShownDate:BWStreamingFilterNode.m:500", @"LastShownBuild:BWStreamingFilterNode.m:500", 0);
    free(v13);
    previewFilterBackpressureSemaphoreInitialCount = self->_previewFilterBackpressureSemaphoreInitialCount;
LABEL_19:
    if (previewFilterBackpressureSemaphoreInitialCount >= 1)
    {
      v14 = 0;
      do
      {
        dispatch_semaphore_signal(self->_previewFilterBackpressureSemaphore);
        ++v14;
      }

      while (v14 < self->_previewFilterBackpressureSemaphoreInitialCount);
    }
  }

  self->_previewFilterBackpressureSemaphore = 0;
  v15.receiver = self;
  v15.super_class = BWStreamingFilterNode;
  [(BWNode *)&v15 dealloc];
}

- (BOOL)hasNonLiveConfigurationChanges
{
  v4.receiver = self;
  v4.super_class = BWStreamingFilterNode;
  hasNonLiveConfigurationChanges = [(BWNode *)&v4 hasNonLiveConfigurationChanges];
  if (hasNonLiveConfigurationChanges)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Live reconfiguring BWStreamingFilterNode with changing formats is not supported", 0}]);
  }

  return hasNonLiveConfigurationChanges;
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if ([key isEqualToString:@"PrimaryFormat"])
  {
    if (self->_videoInput == input)
    {
      [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self "outputs")];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      allValues = [(NSDictionary *)self->_stillImageOutputsByPortType allValues];
      v10 = [(NSArray *)allValues countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(allValues);
            }

            [*(*(&v16 + 1) + 8 * v13++) setFormat:format];
          }

          while (v11 != v13);
          v11 = [(NSArray *)allValues countByEnumeratingWithState:&v16 objects:v15 count:16];
        }

        while (v11);
      }
    }

    [(BWStreamingFilterNode *)self _updateOutputRequirements];
  }

  else if (([key isEqualToString:@"Depth"] & 1) == 0 && (objc_msgSend(key, "isEqualToString:", 0x1F21AAC30) & 1) == 0 && (objc_msgSend(key, "isEqualToString:", 0x1F21AAC50) & 1) == 0 && (objc_msgSend(key, "isEqualToString:", 0x1F21AABF0) & 1) == 0 && (objc_msgSend(key, "isEqualToString:", 0x1F21AAC10) & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = BWStreamingFilterNode;
    [(BWNode *)&v14 didSelectFormat:format forInput:input forAttachedMediaKey:key];
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (self->_videoInput == input)
  {
    videoOutputEventMessagesEmitQueue = self->_videoOutputEventMessagesEmitQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__BWStreamingFilterNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_async(videoOutputEventMessagesEmitQueue, block);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(NSDictionary *)self->_stillImageInputsByPortType allKeys:d];
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([(NSDictionary *)self->_stillImageInputsByPortType objectForKeyedSubscript:v12]== input)
          {
            [-[NSDictionary objectForKeyedSubscript:](self->_stillImageOutputsByPortType objectForKeyedSubscript:{v12), "makeConfiguredFormatLive"}];
            return;
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (self->_videoInput == input)
  {
    if (!d)
    {
      [(BWRenderListProcessor *)self->_renderListProcessor waitForAllProcessingToComplete];
      [(BWFencedAnimationQueue *)self->_fencedAnimationQueue flush];
      os_unfair_lock_lock(&self->_lastSampleBufferLock);
      lastSampleBuffer = self->_lastSampleBuffer;
      if (lastSampleBuffer)
      {
        CFRelease(lastSampleBuffer);
        self->_lastSampleBuffer = 0;
      }

      os_unfair_lock_unlock(&self->_lastSampleBufferLock);
      self->_preparedToBecomeLive = 0;
    }

    v14 = [(NSArray *)[(BWNode *)self outputs] objectAtIndexedSubscript:0];
    videoOutputEventMessagesEmitQueue = self->_videoOutputEventMessagesEmitQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__BWStreamingFilterNode_didReachEndOfDataForConfigurationID_input___block_invoke;
    block[3] = &unk_1E798F898;
    block[4] = v14;
    block[5] = d;
    dispatch_async(videoOutputEventMessagesEmitQueue, block);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allKeys = [(NSDictionary *)self->_stillImageInputsByPortType allKeys];
    v8 = [(NSArray *)allKeys countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if ([(NSDictionary *)self->_stillImageInputsByPortType objectForKeyedSubscript:v12]== input)
          {
            [-[NSDictionary objectForKeyedSubscript:](self->_stillImageOutputsByPortType objectForKeyedSubscript:{v12), "markEndOfLiveOutputForConfigurationID:", d}];
          }
        }

        v9 = [(NSArray *)allKeys countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  bufferCopy = buffer;
  v59 = 0;
  videoInput = self->_videoInput;
  memset(&v58, 0, sizeof(v58));
  v7 = CMGetAttachment(buffer, *off_1E798A420, 0);
  CMTimeMakeFromDictionary(&v58, v7);
  if ((v58.flags & 1) == 0)
  {
    CMSampleBufferGetPresentationTimeStamp(&time, bufferCopy);
    v58 = time;
  }

  v8 = MEMORY[0x1E695FF58];
  if (videoInput == input)
  {
    if (bufferCopy)
    {
      ImageBuffer = CMSampleBufferGetImageBuffer(bufferCopy);
      if (ImageBuffer)
      {
        v44 = videoInput;
        v10 = self->_receivedFrameCounter + 1;
        self->_receivedFrameCounter = v10;
        self->_shouldLogPerFrameLogging = v10 % self->_perFrameLoggingRatio == 0;
        if (*v8 == 1)
        {
          time = v58;
          CMTimeGetSeconds(&time);
          kdebug_trace();
        }

        time = v58;
        time2 = self->_lastRenderedPTS;
        if (CMTimeCompare(&time, &time2) < 0)
        {
          goto LABEL_65;
        }

        self->_lastRenderedPTS = v58;
        if (!self->_depthDataDeliveryEnabled)
        {
          goto LABEL_53;
        }

        AttachedMedia = BWSampleBufferGetAttachedMedia(bufferCopy, @"Depth");
        if (AttachedMedia)
        {
          v12 = AttachedMedia;
          v13 = CMSampleBufferGetImageBuffer(AttachedMedia);
          v14 = [objc_msgSend(CMGetAttachment(v12 *off_1E798A3C8];
          self->_receivedOccludedFixedPointDisparityBuffer = v14;
          if (v14 && self->_shouldLogPerFrameLogging && dword_1ED8444D0)
          {
            v56 = 0;
            v55 = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v16 = v56;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v55))
            {
              v17 = v16;
            }

            else
            {
              v17 = v16 & 0xFFFFFFFE;
            }

            if (v17)
            {
              v18 = BWFigCaptureColorSpaceToString();
              LODWORD(time2.value) = 136315395;
              *(&time2.value + 4) = "[BWStreamingFilterNode renderSampleBuffer:forInput:]";
              LOWORD(time2.flags) = 2113;
              *(&time2.flags + 2) = v18;
              LODWORD(v43) = 22;
              p_time2 = &time2;
              _os_log_send_and_compose_impl();
            }

            v8 = MEMORY[0x1E695FF58];
            v19 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            if (v13)
            {
LABEL_47:
              if (!self->_receivedInitialFixedPointDisparityBuffer && v19)
              {
                self->_receivedInitialFixedPointDisparityBuffer = 1;
                goto LABEL_53;
              }

              if (self->_receivedInitialFixedPointDisparityBuffer)
              {
                goto LABEL_51;
              }

LABEL_53:
              if (!self->_semanticStyleRenderingEnabled)
              {
                v32 = 0;
LABEL_55:
                CMSetAttachment(bufferCopy, @"StructuredLightRecentlyOccluded", [MEMORY[0x1E696AD98] numberWithBool:{self->_receivedOccludedFixedPointDisparityBuffer, p_time2, v43}], 1u);
                os_unfair_lock_lock(&self->_renderListLock);
                if ([(BWRenderList *)self->_nextRenderList isPrepared])
                {

                  self->_currentAnimator = self->_nextAnimator;
                  self->_currentRenderList = self->_nextRenderList;
                  self->_nextAnimator = 0;
                  self->_nextRenderList = 0;
                }

                v33 = self->_currentAnimator;
                v34 = self->_currentRenderList;
                os_unfair_lock_unlock(&self->_renderListLock);
                if (v33)
                {
                  interpolateParameters = [(BWRenderListAnimator *)v33 interpolateParameters];
                  if ([(BWRenderListAnimator *)v33 isCompleted])
                  {
                    os_unfair_lock_lock(&self->_renderListLock);
                    if (!self->_nextAnimator && !self->_nextRenderList)
                    {
                      self->_nextAnimator = 0;
                      self->_nextRenderList = [(BWRenderListAnimator *)v33 finalRenderList];
                    }

                    os_unfair_lock_unlock(&self->_renderListLock);
                  }
                }

                else
                {
                  interpolateParameters = 0;
                }

                v36 = [(NSArray *)[(BWNode *)self outputs] objectAtIndexedSubscript:0];
                renderListProcessor = self->_renderListProcessor;
                v51[0] = MEMORY[0x1E69E9820];
                v51[1] = 3221225472;
                v51[2] = __53__BWStreamingFilterNode_renderSampleBuffer_forInput___block_invoke;
                v51[3] = &unk_1E79911C0;
                v51[4] = self;
                v51[5] = v36;
                v52 = v58;
                v51[7] = v34;
                v51[8] = bufferCopy;
                v53 = v32;
                v51[6] = v33;
                [(BWRenderListProcessor *)renderListProcessor processRenderList:v34 withParameters:interpolateParameters inputPixelBuffer:ImageBuffer inputSampleBuffer:bufferCopy resultHandler:v51];
LABEL_65:
                ImageBuffer = 0;
LABEL_66:
                videoInput = v44;
                goto LABEL_67;
              }

              if (*v8 == 1)
              {
                CMSampleBufferGetPresentationTimeStamp(&time2, bufferCopy);
                time = time2;
                CMTimeGetSeconds(&time);
                kdebug_trace();
              }

              os_unfair_lock_lock(&self->_lastSampleBufferLock);
              time.value = 0;
              BWCMSampleBufferCreateCopyIncludingMetadata(bufferCopy, &time);
              lastSampleBuffer = self->_lastSampleBuffer;
              value = time.value;
              v32 = lastSampleBuffer == bufferCopy;
              if (lastSampleBuffer == bufferCopy)
              {
                if (!time.value)
                {
                  bufferCopy = 0;
                  goto LABEL_92;
                }

                bufferCopy = CFRetain(time.value);
              }

              else
              {
                self->_lastSampleBuffer = time.value;
                if (value)
                {
                  CFRetain(value);
                }

                if (lastSampleBuffer)
                {
                  CFRelease(lastSampleBuffer);
                }
              }

              if (time.value)
              {
                CFRelease(time.value);
              }

LABEL_92:
              os_unfair_lock_unlock(&self->_lastSampleBufferLock);
              if (self->_streamingSegmentationFromInferenceEngine && !self->_maskVisualizationEnabled)
              {
                if (self->_haveSeenFirstSampleBuffer)
                {
                  if (self->_applyStyleBackgroundToEntireFrame && BWSampleBufferGetAttachedMedia(bufferCopy, 0x1F21AABF0))
                  {
                    self->_applyStyleBackgroundToEntireFrame = 0;
LABEL_106:
                    self->_haveSeenFirstSampleBuffer = 1;
                    [(BWStreamingFilterNode *)self semanticStyleSceneType:p_time2];
                    [BWStreamingFilterNode _rebuildSemanticStyleFiltersWithSceneType:?];
LABEL_99:
                    [(BWStreamingFilterNode *)self _applyQueuedSemanticStyle:bufferCopy];
                    os_unfair_lock_lock(&self->_filterChangeLock);
                    if (self->_renderingSemanticStyleSet && BWSampleBufferGetAttachedMedia(bufferCopy, 0x1F21AAEB0))
                    {
                      BWSampleBufferRemoveAttachedMedia(bufferCopy, 0x1F21AAEB0);
                    }

                    os_unfair_lock_unlock(&self->_filterChangeLock);
                    if (*v8 == 1)
                    {
                      kdebug_trace();
                    }

                    goto LABEL_55;
                  }
                }

                else if (!BWSampleBufferGetAttachedMedia(bufferCopy, 0x1F21AABF0))
                {
                  self->_applyStyleBackgroundToEntireFrame = 1;
                  goto LABEL_106;
                }
              }

              self->_haveSeenFirstSampleBuffer = 1;
              goto LABEL_99;
            }
          }

          else if (v13)
          {
            v19 = 1;
            goto LABEL_47;
          }
        }

        if ([(BWFigVideoCaptureDevice *)self->_captureDevice shallowDepthOfFieldEffectEnabled:p_time2])
        {
          os_unfair_lock_lock(&self->_lastSampleBufferLock);
          v28 = self->_lastSampleBuffer;
          if (v28)
          {
            v29 = CFRetain(v28);
            os_unfair_lock_unlock(&self->_lastSampleBufferLock);
            if (v29)
            {
              v30 = BWSampleBufferGetAttachedMedia(v29, @"Depth");
              v31 = v30;
              if (v30)
              {
                v19 = CMSampleBufferGetImageBuffer(v30) != 0;
              }

              else
              {
                v19 = 0;
              }

              BWSampleBufferSetAttachedMedia(bufferCopy, @"Depth", v31);
              CFRelease(v29);
              goto LABEL_47;
            }
          }

          else
          {
            os_unfair_lock_unlock(&self->_lastSampleBufferLock);
          }
        }

        if (!self->_receivedInitialFixedPointDisparityBuffer)
        {
          goto LABEL_53;
        }

        LOBYTE(v19) = 0;
LABEL_51:
        if (!self->_receivedOccludedFixedPointDisparityBuffer && !self->_portraitAutoSuggestEnabled && !(v19 | (([(BWStreamingFilterNode *)self _isDepthRenderingEnabled]& 1) == 0)))
        {
          [BWStreamingFilterNode renderSampleBuffer:forInput:];
          ImageBuffer = 0;
          goto LABEL_66;
        }

        goto LABEL_53;
      }

      [BWStreamingFilterNode renderSampleBuffer:forInput:];
    }

    else
    {
      [BWStreamingFilterNode renderSampleBuffer:forInput:];
      ImageBuffer = 0;
    }
  }

  else
  {
    time = v58;
    ImageBuffer = [(BWStreamingFilterNode *)self _createMatchingPixelBufferFromSavedVideoBuffersWithTargetPts:input input:?];
    if (ImageBuffer)
    {
      if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(bufferCopy, ImageBuffer, &self->_outputFormatDescription, &v59))
      {
        [BWStreamingFilterNode renderSampleBuffer:forInput:];
      }

      else
      {
        if (!v59)
        {
LABEL_70:
          CFRelease(ImageBuffer);
          goto LABEL_71;
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        allKeys = [(NSDictionary *)self->_stillImageInputsByPortType allKeys];
        v21 = [(NSArray *)allKeys countByEnumeratingWithState:&v47 objects:v46 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = videoInput;
          v24 = *v48;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v48 != v24)
              {
                objc_enumerationMutation(allKeys);
              }

              v26 = *(*(&v47 + 1) + 8 * i);
              if ([(NSDictionary *)self->_stillImageInputsByPortType objectForKeyedSubscript:v26]== input)
              {
                v27 = [(NSDictionary *)self->_stillImageOutputsByPortType objectForKeyedSubscript:v26];
                [v27 emitSampleBuffer:v59];
                goto LABEL_34;
              }
            }

            v22 = [(NSArray *)allKeys countByEnumeratingWithState:&v47 objects:v46 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }

LABEL_34:
          videoInput = v23;
        }
      }
    }

    else
    {
      [BWStreamingFilterNode renderSampleBuffer:forInput:];
    }
  }

LABEL_67:
  if (v59)
  {
    CFRelease(v59);
  }

  if (ImageBuffer)
  {
    goto LABEL_70;
  }

LABEL_71:
  previewFilterBackpressureSemaphore = self->_previewFilterBackpressureSemaphore;
  if (previewFilterBackpressureSemaphore)
  {
    v39 = videoInput == input;
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {
    dispatch_semaphore_signal(previewFilterBackpressureSemaphore);
  }

  if (*v8 == 1)
  {
    kdebug_trace();
  }
}

void __53__BWStreamingFilterNode_renderSampleBuffer_forInput___block_invoke(uint64_t a1, char a2, void *target, uint64_t a4)
{
  if ((a2 & 2) != 0 && !a4)
  {
    CMSetAttachment(target, @"FiltersApplied", MEMORY[0x1E695E118], 1u);
    v7 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58])
    {
      memset(&v14, 0, sizeof(v14));
      v8 = CMGetAttachment(*(a1 + 64), *off_1E798A420, 0);
      CMTimeMakeFromDictionary(&v14, v8);
      if ((v14.flags & 1) == 0)
      {
        CMSampleBufferGetPresentationTimeStamp(&time, *(a1 + 64));
        v14 = time;
      }

      if (*v7 == 1)
      {
        time = v14;
        CMTimeGetSeconds(&time);
        kdebug_trace();
      }
    }

    if ([*(a1 + 32) attachesInputPixelBufferAfterRendering])
    {
      ImageBuffer = CMSampleBufferGetImageBuffer(*(a1 + 64));
      if (!ImageBuffer)
      {
        __53__BWStreamingFilterNode_renderSampleBuffer_forInput___block_invoke_cold_2();
        goto LABEL_23;
      }

      CMSetAttachment(target, @"UnfilteredPixelBuffer", ImageBuffer, 1u);
    }
  }

  if (!target)
  {
    __53__BWStreamingFilterNode_renderSampleBuffer_forInput___block_invoke_cold_1();
LABEL_23:
    v10 = 0;
    goto LABEL_13;
  }

  v10 = 1;
LABEL_13:
  BWSampleBufferRemoveAttachedMedia(target, @"Depth");
  BWSampleBufferRemoveAttachedMedia(target, 0x1F21AABF0);
  BWSampleBufferRemoveAttachedMedia(target, 0x1F21AAC30);
  BWSampleBufferRemoveAttachedMedia(target, 0x1F21AAC10);
  BWSampleBufferRemoveAttachedMedia(target, 0x1F21AAC50);
  if (!a4)
  {
    if (v10)
    {
      [*(a1 + 40) emitSampleBuffer:target];
      if (*(*(a1 + 32) + 536) == 1)
      {
        v12 = CMSampleBufferGetImageBuffer(target);
        v13 = *(a1 + 32);
        time = *(a1 + 72);
        [(BWStreamingFilterNode *)v13 _savePixelBufferForStillImageCaptureRequests:v12 withPts:&time.value];
      }
    }
  }

  if (*(a1 + 96) == 1)
  {
    v11 = *(a1 + 64);
    if (v11)
    {
      CFRelease(v11);
    }
  }
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if (self->_previewFilterBackpressureSemaphore && self->_videoInput == input)
  {
    if (([objc_msgSend(sample "backPressureSemaphoresToIgnore")] & 1) == 0)
    {
      dispatch_semaphore_signal(self->_previewFilterBackpressureSemaphore);
    }

    v6 = [(NSArray *)[(BWNode *)self outputs] objectAtIndexedSubscript:0];

    [v6 emitDroppedSample:sample];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BWStreamingFilterNode;
    [(BWNode *)&v7 handleDroppedSample:sample forInput:input];
  }
}

- (void)changeToFilters:(id)filters animated:(BOOL)animated
{
  animatedCopy = animated;
  os_unfair_lock_lock(&self->_filterChangeLock);
  if (animatedCopy)
  {
    v7 = [BWStreamingFilterNode _skipMonochromeDepthAnimation:?]^ 1;
  }

  else
  {
    v7 = 0;
  }

  self->_filters = filters;
  [(BWStreamingFilterNode *)self _buildAndChangeToFiltersWithAnimation:v7];

  os_unfair_lock_unlock(&self->_filterChangeLock);
}

- (BOOL)isRenderingSemanticStyle
{
  os_unfair_lock_lock(&self->_filterChangeLock);
  _shouldRenderSemanticStyle = [(BWStreamingFilterNode *)self _shouldRenderSemanticStyle];
  os_unfair_lock_unlock(&self->_filterChangeLock);
  return _shouldRenderSemanticStyle;
}

- (void)changeToSemanticStyle:(id)style animated:(BOOL)animated
{
  os_unfair_lock_lock(&self->_filterChangeLock);
  if (!self->_semanticStyleRenderingEnabled)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ is not configured for semantic style rendering", self), 0}]);
  }

  [(BWStreamingFilterNode *)self changeToSemanticStyle:style animated:animated, &self->_filterChangeLock];
}

- (void)setSemanticStyleRenderingSuspended:(BOOL)suspended animated:(BOOL)animated
{
  animatedCopy = animated;
  suspendedCopy = suspended;
  os_unfair_lock_lock(&self->_filterChangeLock);
  if (!self->_semanticStyleRenderingEnabled)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ is not configured for semantic style rendering", self), 0}]);
  }

  if (self->_semanticStyleRenderingSuspended != suspendedCopy)
  {
    self->_semanticStyleRenderingSuspended = suspendedCopy;
    if (animatedCopy)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    [(BWStreamingFilterNode *)self _buildAndChangeToFiltersWithAnimation:v7];
  }

  os_unfair_lock_unlock(&self->_filterChangeLock);
}

- (BOOL)isSemanticStyleRenderingSuspended
{
  os_unfair_lock_lock(&self->_filterChangeLock);
  semanticStyleRenderingSuspended = self->_semanticStyleRenderingSuspended;
  os_unfair_lock_unlock(&self->_filterChangeLock);
  return semanticStyleRenderingSuspended;
}

- (void)changeToFilters:(id)filters semanticStyle:(id)style animated:(BOOL)animated
{
  animatedCopy = animated;
  os_unfair_lock_lock(&self->_filterChangeLock);
  semanticStyle = self->_semanticStyle;
  if (semanticStyle != style && ![(FigCaptureSemanticStyle *)semanticStyle isEqual:style]&& !self->_semanticStyleRenderingEnabled)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ is not configured for semantic style rendering", self), 0}]);
  }

  self->_filters = filters;
  self->_semanticStyle = style;
  [(BWStreamingFilterNode *)self _buildAndChangeToFiltersWithAnimation:animatedCopy];

  os_unfair_lock_unlock(&self->_filterChangeLock);
}

void __52__BWStreamingFilterNode__changeToFilters_animation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 prepareWithInputVideoFormat:*(a1 + 40) inputMediaPropertiesByAttachedMediaKey:*(a1 + 48)];
  }

  else
  {
    [*(a1 + 56) prepareWithParameters:0 forInputVideoFormat:*(a1 + 40) inputMediaPropertiesByAttachedMediaKey:*(a1 + 48)];
  }

  os_unfair_lock_lock((*(a1 + 64) + 144));
  v3 = *(a1 + 64);
  if (v3[21] == *(a1 + 72))
  {
    v6 = v3[23];
  }

  else
  {
    v4 = v3[22];
    if (v4 == [*(a1 + 32) finalRenderList])
    {
      v7 = *(a1 + 64);
    }

    else
    {
      v5 = *(a1 + 32);
      if (v5 || (v7 = *(a1 + 64), v7[21] == v7[22]))
      {

        goto LABEL_13;
      }
    }

    v6 = v7[23];
  }

  *(*(a1 + 64) + 184) = *(a1 + 32);
  *(*(a1 + 64) + 168) = *(a1 + 56);
LABEL_13:
  v8 = (*(a1 + 64) + 144);

  os_unfair_lock_unlock(v8);
}

- (void)setSemanticStyleSet:(id)set fencePortSendRight:(id)right
{
  if (self->_multipleSemanticStylesEnabled)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [(BWFencedAnimationQueue *)self->_fencedAnimationQueue count];
      [set leftmostRegionStartXOffset];
      [right port];
      kdebug_trace();
    }

    [(BWFencedAnimationQueue *)self->_fencedAnimationQueue enqueueFencedAnimation:[BWSemanticStyleSetFencedAnimationInfo fencedAnimationInfoWithSemanticStyleSet:set fencePortSendRight:right]];
    os_unfair_lock_lock(&self->_lastSampleBufferLock);
    lastSampleBuffer = self->_lastSampleBuffer;
    if (lastSampleBuffer)
    {
      v8 = CFRetain(lastSampleBuffer);
      os_unfair_lock_unlock(&self->_lastSampleBufferLock);
      if (v8)
      {
        v9 = [BWNodeSampleBufferMessage newMessageWithSampleBuffer:v8];
        [(BWNodeConnection *)[(BWNodeInput *)self->super._input connection] consumeMessage:v9 fromOutput:[(BWNodeConnection *)[(BWNodeInput *)self->super._input connection] output]];

        CFRelease(v8);
      }
    }

    else
    {

      os_unfair_lock_unlock(&self->_lastSampleBufferLock);
    }
  }

  else
  {
    largestRegionSemanticStyle = [set largestRegionSemanticStyle];

    [(BWStreamingFilterNode *)self changeToSemanticStyle:largestRegionSemanticStyle animated:0];
  }
}

- (void)filterDetectedFacesInSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  os_unfair_lock_lock(&self->_renderListLock);
  v5 = self->_currentRenderList;
  os_unfair_lock_unlock(&self->_renderListLock);
  [(BWRenderListProcessor *)self->_renderListProcessor adjustMetadataOfSampleBuffer:buffer usingRenderList:v5];
}

- (id)provideStreamingSDOFFilterRenderer
{
  if (self->_cinematicVideoEnabled)
  {
    streamingRaytracingSDOFRenderer = self->_streamingRaytracingSDOFRenderer;
    if (!streamingRaytracingSDOFRenderer)
    {
      streamingRaytracingSDOFRenderer = [[BWStreamingRaytracingSDOFRenderer alloc] initWithCaptureDevice:self->_captureDevice commandQueue:self->_metalCommandQueue smartStyleRenderingEnabled:self->_smartStyleRenderingEnabled squareAspectRatioConfigEnabled:self->_squareAspectRatioConfigEnabled];
      self->_streamingRaytracingSDOFRenderer = streamingRaytracingSDOFRenderer;
    }
  }

  else
  {
    streamingRaytracingSDOFRenderer = self->_streamingCVAFilterRenderer;
    if (!streamingRaytracingSDOFRenderer)
    {
      if (self->_focusBlurMapDeliveryEnabled)
      {
        v4 = 1;
      }

      else if (self->_depthFromMonocularNetworkEnabled)
      {
        v4 = 2 * ([+[FigCaptureCameraParameters monocularStreamingDepthType]!= 2 sharedInstance];
      }

      else
      {
        v4 = 0;
      }

      v5 = [BWStreamingCVAFilterRenderer alloc];
      BYTE6(v9) = self->_disableDepthAndSegmentationRotationInLandscape;
      BYTE5(v9) = self->_cropDepthToPrimaryCaptureAspectRatio;
      BYTE4(v9) = self->_secondaryStreamingPersonSegmentationEnabled;
      LODWORD(v9) = self->_rotationDegreesForMetadataAdjustment;
      BYTE4(v8) = self->_mirroredForMetadataAdjustment;
      LODWORD(v8) = self->_priority;
      streamingRaytracingSDOFRenderer = [BWStreamingCVAFilterRenderer initWithCaptureDevice:v5 studioAndContourRenderingEnabled:"initWithCaptureDevice:studioAndContourRenderingEnabled:stageRenderingEnabled:depthDataSource:foregroundBlurEnabled:depthFilterRenderingIsAfterPreviewStitcher:commandQueue:priority:mirroredForMetadataAdjustment:rotationDegreesForMetadataAdjustment:secondaryStreamingPersonSegmentationEnabled:cropDepthToPrimaryCaptureAspectRatio:disableDepthAndSegmentationRotationInLandscape:" stageRenderingEnabled:self->_captureDevice depthDataSource:self->_studioAndContourRenderingEnabled foregroundBlurEnabled:self->_stageRenderingEnabled depthFilterRenderingIsAfterPreviewStitcher:v4 commandQueue:self->_portraitPreviewForegroundBlurEnabled priority:self->_depthFilterRenderingIsAfterPreviewStitcher mirroredForMetadataAdjustment:self->_metalCommandQueue rotationDegreesForMetadataAdjustment:v8 secondaryStreamingPersonSegmentationEnabled:v9 cropDepthToPrimaryCaptureAspectRatio:? disableDepthAndSegmentationRotationInLandscape:?];
      self->_streamingCVAFilterRenderer = streamingRaytracingSDOFRenderer;
    }
  }

  v6 = streamingRaytracingSDOFRenderer;

  return v6;
}

- (id)provideCoreImageFilterRenderer
{
  v2 = [[BWCoreImageFilterRenderer alloc] initForRenderingWithDepth:0 context:0 portraitRenderQuality:0 hairnetEnabled:0 metalCommandQueue:0 figThreadPriority:14];

  return v2;
}

- (id)provideMetalFilterRenderer
{
  metalFilterRenderer = self->_metalFilterRenderer;
  if (!metalFilterRenderer || (v4 = [(BWMetalColorCubeRenderer *)metalFilterRenderer mixingColorCubesInGammaDomain], metalFilterRenderer = self->_metalFilterRenderer, self->_mixColorCubesInGammaDomain != v4))
  {

    metalFilterRenderer = [[BWMetalColorCubeRenderer alloc] initWithMetalCommandQueue:self->_metalCommandQueue mixInGammaDomain:self->_mixColorCubesInGammaDomain];
    self->_metalFilterRenderer = metalFilterRenderer;
  }

  v5 = metalFilterRenderer;

  return v5;
}

- (void)semanticStyleSceneTypeDidChange:(int)change
{
  os_unfair_lock_lock(&self->_semanticStyleSceneLock);
  semanticStyleSceneType = self->_semanticStyleSceneType;
  self->_semanticStyleSceneType = change;
  os_unfair_lock_unlock(&self->_semanticStyleSceneLock);
  if (semanticStyleSceneType != change)
  {

    [BWStreamingFilterNode _rebuildSemanticStyleFiltersWithSceneType:?];
  }
}

- (void)setStreamingSegmentationFromInferenceEngine:(BOOL)engine
{
  if (engine)
  {
    if (self->_primaryStreamingPersonSegmentationEnabled)
    {
      v5 = 1;
      if (self->_semanticStyleRenderingEnabled)
      {
        if ([(BWFigVideoCaptureDevice *)self->_captureDevice shallowDepthOfFieldEffectEnabled])
        {
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }
      }

      [(BWNodeInput *)self->super._input setMediaConfiguration:simpleInputMediaConfigurationWithDelayedBufferCount(v5) forAttachedMediaKey:0x1F21AABF0];
      [(BWNodeInput *)self->super._input setMediaConfiguration:simpleInputMediaConfigurationWithDelayedBufferCount(v5) forAttachedMediaKey:0x1F21AAC30];
    }

    if (self->_secondaryStreamingPersonSegmentationEnabled)
    {
      [(BWNodeInput *)self->super._input setMediaConfiguration:simpleInputMediaConfigurationWithDelayedBufferCount(1) forAttachedMediaKey:0x1F21AAC10];
      input = self->super._input;
      v7 = simpleInputMediaConfigurationWithDelayedBufferCount(1);
      v8 = input;
LABEL_14:
      [(BWNodeInput *)v8 setMediaConfiguration:v7 forAttachedMediaKey:0x1F21AAC50];
    }
  }

  else
  {
    if (self->_primaryStreamingPersonSegmentationEnabled)
    {
      [(BWNodeInput *)self->super._input setMediaConfiguration:0 forAttachedMediaKey:0x1F21AABF0];
      [(BWNodeInput *)self->super._input setMediaConfiguration:0 forAttachedMediaKey:0x1F21AAC10];
    }

    if (self->_secondaryStreamingPersonSegmentationEnabled)
    {
      [(BWNodeInput *)self->super._input setMediaConfiguration:0 forAttachedMediaKey:0x1F21AAC30];
      v8 = self->super._input;
      v7 = 0;
      goto LABEL_14;
    }
  }

  self->_streamingSegmentationFromInferenceEngine = engine;
}

- (void)setDepthDataDeliveryEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v5 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v5 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInputMediaConfiguration *)v5 setPassthroughMode:0];
    [(BWNodeInputMediaConfiguration *)v5 setDelayedBufferCount:1];
  }

  else
  {
    v5 = 0;
  }

  [(BWNodeInput *)self->super._input setMediaConfiguration:v5 forAttachedMediaKey:@"Depth"];
  self->_depthDataDeliveryEnabled = enabled;
}

- (void)setPreviewFilterBackpressureSemaphore:(id)semaphore
{
  previewFilterBackpressureSemaphore = self->_previewFilterBackpressureSemaphore;
  if (previewFilterBackpressureSemaphore != semaphore)
  {

    self->_previewFilterBackpressureSemaphore = semaphore;
  }
}

uint64_t __81__BWStreamingFilterNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = [objc_msgSend(v2 "outputs")];
    v1 = vars8;
  }

  return [v2 makeConfiguredFormatLive];
}

- (os_unfair_lock_s)_isDepthRenderingEnabled
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 48);
    v2 = [(BWStreamingFilterNode *)v1 _hasDepthEffect:?];
    os_unfair_lock_unlock((v1 + 192));
    return v2;
  }

  return result;
}

- (void)_rebuildSemanticStyleFiltersWithSceneType:(uint64_t)type
{
  if (type)
  {
    if (*(type + 304))
    {
      v2 = &OBJC_IVAR___BWStreamingFilterNode__semanticStyleSetLock;
      os_unfair_lock_lock((type + 384));
      [(BWStreamingFilterNode *)type _updateSemanticStyleFiltersAndRegionArrayWithSampleBuffer:?];
    }

    else
    {
      v2 = &OBJC_IVAR___BWStreamingFilterNode__filterChangeLock;
      os_unfair_lock_lock((type + 192));
      [(BWStreamingFilterNode *)type _buildAndChangeToFiltersWithAnimation:?];
    }

    v3 = (type + *v2);

    os_unfair_lock_unlock(v3);
  }
}

- (void)_applyQueuedSemanticStyle:(uint64_t)style
{
  if (style)
  {
    v4 = objc_autoreleasePoolPush();
    dequeueFencedAnimation = [*(style + 248) dequeueFencedAnimation];
    if (dequeueFencedAnimation)
    {
      os_unfair_lock_lock((style + 384));

      *(style + 312) = [dequeueFencedAnimation semanticStyleSet];
      fencePortSendRight = [dequeueFencedAnimation fencePortSendRight];
      dequeueFencedAnimation = [dequeueFencedAnimation fencePortGenerationCount];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        [*(style + 248) count];
        [*(style + 312) leftmostRegionStartXOffset];
        [fencePortSendRight port];
        kdebug_trace();
      }

      v11 = OUTLINED_FUNCTION_44();
      [(BWStreamingFilterNode *)v11 _updateSemanticStyleFiltersAndRegionArrayWithSampleBuffer:v12];
      os_unfair_lock_unlock((style + 384));
    }

    else
    {
      fencePortSendRight = 0;
    }

    objc_autoreleasePoolPop(v4);
    os_unfair_lock_lock((style + 192));
    if (*(style + 304))
    {
      v7 = CMGetAttachment(a2, *off_1E798A430, 0);
      if (v7)
      {
        memset(&v14, 0, sizeof(v14));
        CGRectMakeWithDictionaryRepresentation(v7, &v14);
        if (!CGRectEqualToRect(*(style + 320), v14))
        {
          size = v14.size;
          *(style + 320) = v14.origin;
          *(style + 336) = size;
          [(BWStreamingFilterNode *)style _adjustRectanglesFromFiltersAndRegionArray:a2 withSampleBuffer:?];
        }
      }

      CMSetAttachment(a2, @"FiltersAndRegionArray", *(style + 304), 0);
    }

    os_unfair_lock_unlock((style + 192));
    if (fencePortSendRight)
    {
      v8 = OUTLINED_FUNCTION_118_0();
      CMSetAttachment(v8, v9, v10, 1u);
    }

    if (dequeueFencedAnimation >= 1)
    {
      CMSetAttachment(a2, @"CAContextFencePortGenerationID", [MEMORY[0x1E696AD98] numberWithLongLong:dequeueFencedAnimation], 1u);
    }
  }
}

- (void)_savePixelBufferForStillImageCaptureRequests:(__int128 *)requests withPts:
{
  if (self)
  {
    OUTLINED_FUNCTION_11_19(self);
    v7 = *(v3 + 544 + 32 * *(v3 + 608));
    if (v7)
    {
      CVPixelBufferRelease(v7);
    }

    v13 = *requests;
    v14 = *(requests + 2);
    v8 = CVPixelBufferRetain(a2);
    v9 = v3 + 544 + 32 * *(v3 + 608);
    *v9 = v8;
    *(v9 + 24) = v14;
    *(v9 + 8) = v13;
    v10 = *(v3 + 608);
    if (v10 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10 + 1;
    }

    *(v3 + 608) = v11;
    v12 = (v3 + *(v4 + 96));

    os_unfair_lock_unlock(v12);
  }
}

- (void)_createMatchingPixelBufferFromSavedVideoBuffersWithTargetPts:(uint64_t)pts input:
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_19(self);
  v7 = 0;
  v8 = 0;
  v9 = *a2;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = (v3 + 544 + 32 * v7);
    v15 = *v13;
    v14 = v13[1];
    v16 = v9 - v14;
    if (v9 == v14)
    {
      v8 = v15;
      if (!v15)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }

    v11 = 0;
    if (v16 < 0)
    {
      v16 = -v16;
    }

    if (v10 > v16)
    {
      v8 = v15;
    }

    if (v10 >= v16)
    {
      v10 = v16;
    }

    v7 = 1;
  }

  while ((v12 & 1) != 0);
  if (!v8)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

LABEL_16:
  v17 = [(BWStreamingFilterNode *)v3 _newStillImageOutputPixelBufferFromVideoPixelBuffer:v8 input:pts];
LABEL_13:
  os_unfair_lock_unlock((v3 + *(v4 + 96)));
  return v17;
}

- (void)_newStillImageOutputPixelBufferFromVideoPixelBuffer:(uint64_t)buffer input:
{
  if (!self)
  {
    return 0;
  }

  v4 = 0;
  if (!a2 || !*(self + 616))
  {
    return v4;
  }

  allKeys = [*(self + 520) allKeys];
  OUTLINED_FUNCTION_43();
  v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *v17;
LABEL_6:
  v12 = 0;
  while (1)
  {
    OUTLINED_FUNCTION_4_10();
    if (v13 != v11)
    {
      objc_enumerationMutation(allKeys);
    }

    v14 = *(v16 + 8 * v12);
    if ([*(self + 520) objectForKeyedSubscript:v14] == buffer)
    {
      break;
    }

    if (v10 == ++v12)
    {
      OUTLINED_FUNCTION_43();
      v10 = [allKeys countByEnumeratingWithState:? objects:? count:?];
      if (v10)
      {
        goto LABEL_6;
      }

      return 0;
    }
  }

  v4 = [objc_msgSend(objc_msgSend(objc_msgSend(*(self + 528) objectForKeyedSubscript:{v14), "primaryMediaProperties"), "livePixelBufferPool"), "newPixelBuffer"}];
  if (v4 && VTPixelTransferSessionTransferImage(*(self + 616), a2, v4))
  {
    CFRelease(v4);
    return 0;
  }

  return v4;
}

- (uint64_t)_hasMonochromeEffect:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_43();
    result = [v3 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v4 = result;
      v5 = *v8;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          OUTLINED_FUNCTION_4_10();
          if (v7 != v5)
          {
            objc_enumerationMutation(a2);
          }

          NSClassFromString(&cfstr_Ciphotoeffectm.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            NSClassFromString(&cfstr_Ciphotoeffect3.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              NSClassFromString(&cfstr_Ciphotoeffect3_0.isa);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }
            }
          }

          return 1;
        }

        OUTLINED_FUNCTION_43();
        v4 = [a2 countByEnumeratingWithState:? objects:? count:?];
        result = 0;
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (uint64_t)_hasDepthEffect:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_43();
    result = [v3 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v4 = result;
      v5 = *v8;
      while (2)
      {
        v6 = 0;
        do
        {
          OUTLINED_FUNCTION_4_10();
          if (v7 != v5)
          {
            objc_enumerationMutation(a2);
          }

          NSClassFromString(&cfstr_Cideptheffect.isa);
          if (objc_opt_isKindOfClass())
          {
            return 1;
          }

          ++v6;
        }

        while (v4 != v6);
        OUTLINED_FUNCTION_43();
        result = [a2 countByEnumeratingWithState:? objects:? count:?];
        v4 = result;
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

- (uint64_t)_skipMonochromeDepthAnimation:(uint64_t)result
{
  if (result)
  {
    v1 = result;
    result = [(BWStreamingFilterNode *)result _hasMonochromeEffect:?];
    if (result)
    {
      v2 = OUTLINED_FUNCTION_44();
      result = [(BWStreamingFilterNode *)v2 _hasMonochromeEffect:v3];
      if (result)
      {
        v4 = [(BWStreamingFilterNode *)v1 _hasDepthEffect:?];
        v5 = OUTLINED_FUNCTION_44();
        return v4 ^ [(BWStreamingFilterNode *)v5 _hasDepthEffect:v6];
      }
    }
  }

  return result;
}

- (const)_buildAndChangeToFiltersWithAnimation:(const os_unfair_lock *)result
{
  v32 = a2;
  if (result)
  {
    v2 = result;
    os_unfair_lock_assert_owner(result + 48);
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v11 = array2;
    if ((v2[75]._os_unfair_lock_opaque & 1) == 0)
    {
      v12 = *&v2[50]._os_unfair_lock_opaque;
      v13 = OUTLINED_FUNCTION_10_0(array2, v4, v5, v6, v7, v8, v9, v10, array, v32, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, 0);
      if (v13)
      {
        v14 = v13;
        v15 = MEMORY[0];
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (MEMORY[0] != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(8 * i);
            NSClassFromString(&cfstr_Cideptheffect.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              NSClassFromString(&cfstr_Ciportraiteffe_8.isa);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                NSClassFromString(&cfstr_Ciportraiteffe_9.isa);
                isKindOfClass = objc_opt_isKindOfClass();
                if ((isKindOfClass & 1) == 0)
                {
                  continue;
                }
              }
            }

            isKindOfClass = [v11 addObject:v17];
          }

          v14 = OUTLINED_FUNCTION_10_0(isKindOfClass, v19, v20, v21, v22, v23, v24, v25, array, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v65);
        }

        while (v14);
      }
    }

    [*&v2[116]._os_unfair_lock_opaque setShallowDepthOfFieldEffectEnabled:{objc_msgSend(v11, "count") != 0}];
    if ([(BWStreamingFilterNode *)v2 _shouldRenderSemanticStyle]&& (v26 = *&v2[56]._os_unfair_lock_opaque) != 0)
    {
      v28 = [MEMORY[0x1E695DF70] arrayWithArray:*&v2[50]._os_unfair_lock_opaque];
      [v28 removeObjectsInArray:v11];
      [array addObjectsFromArray:{objc_msgSend(*&v2[98]._os_unfair_lock_opaque, "filtersForSemanticStyle:sceneType:personSegmentationEnabled:maskVisualizationEnabled:applyStyleBackgroundToEntireFrame:filtersToCombine:", v26, v2[60]._os_unfair_lock_opaque, BYTE1(v2[32]._os_unfair_lock_opaque), LOBYTE(v2[101]._os_unfair_lock_opaque), HIBYTE(v2[34]._os_unfair_lock_opaque), v28)}];
      v27 = OUTLINED_FUNCTION_118_0();
    }

    else
    {
      if (!*&v2[50]._os_unfair_lock_opaque)
      {
LABEL_20:
        v29 = OUTLINED_FUNCTION_44();
        return [(BWStreamingFilterNode *)v29 _changeToFilters:v30 animation:v32];
      }

      v27 = array;
    }

    [v27 addObjectsFromArray:?];
    goto LABEL_20;
  }

  return result;
}

- (const)_changeToFilters:(uint64_t)filters animation:
{
  if (result)
  {
    v5 = result;
    os_unfair_lock_assert_owner(result + 48);
    os_unfair_lock_opaque_low = LOBYTE(v5[54]._os_unfair_lock_opaque);
    v7 = [BWRenderList alloc];
    if (os_unfair_lock_opaque_low)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(BWRenderList *)v7 initWithResourceProvider:v5 originalFilters:0 processedFilters:a2 optimizationStrategy:v8 stillImageSettings:0];
    renderList2 = v9;
    *&v5[44]._os_unfair_lock_opaque = v9;
    if (filters)
    {
      if ([(BWRenderList *)v9 supportsAnimation])
      {
        v11 = OUTLINED_FUNCTION_5_31();
        os_unfair_lock_lock(v11);
        v12 = *&v5[40]._os_unfair_lock_opaque;
        v13 = *&v5[38]._os_unfair_lock_opaque;
        v14 = OUTLINED_FUNCTION_5_31();
        os_unfair_lock_unlock(v14);
        if (v12)
        {
          renderList = [v12 renderList];
          parameters = [v12 parameters];
        }

        else
        {
          parameters = 0;
          renderList = v13;
        }

        if (([v13 supportsAnimation] & 1) != 0 || !v13)
        {
          v17 = [[BWRenderListAnimator alloc] initWithInitialParameters:parameters initialRenderList:renderList finalParameters:0 finalRenderList:renderList2 animation:filters];
          if (v17)
          {

            renderList2 = [(BWRenderListAnimator *)v17 renderList];
          }
        }

        else
        {
          v17 = 0;
        }

        if ((v5[32]._os_unfair_lock_opaque & 1) == 0 || [(BWRenderList *)renderList2 isPrepared]&& [(BWRenderListAnimator *)v17 isPrepared])
        {
          goto LABEL_23;
        }

LABEL_24:
        v21 = OUTLINED_FUNCTION_5_31();
        os_unfair_lock_lock(v21);
        v22 = *&v5[42]._os_unfair_lock_opaque;
        v23 = OUTLINED_FUNCTION_5_31();
        os_unfair_lock_unlock(v23);
        v24 = [objc_msgSend(*&v5[2]._os_unfair_lock_opaque mediaPropertiesForAttachedMediaKey:{@"PrimaryFormat", "resolvedVideoFormat"}];
        mediaPropertiesByAttachedMediaKey = [*&v5[2]._os_unfair_lock_opaque mediaPropertiesByAttachedMediaKey];
        v26 = *&v5[114]._os_unfair_lock_opaque;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __52__BWStreamingFilterNode__changeToFilters_animation___block_invoke;
        v28[3] = &unk_1E79911E8;
        v28[4] = v17;
        v28[5] = v24;
        v28[6] = mediaPropertiesByAttachedMediaKey;
        v28[7] = renderList2;
        v28[8] = v5;
        v28[9] = v22;
        dispatch_async(v26, v28);

        goto LABEL_25;
      }

      if ((v5[32]._os_unfair_lock_opaque & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (LOBYTE(v5[32]._os_unfair_lock_opaque) != 1)
    {
LABEL_13:
      v17 = 0;
      goto LABEL_23;
    }

    v17 = 0;
    if (![(BWRenderList *)renderList2 isPrepared])
    {
      goto LABEL_24;
    }

LABEL_23:
    v18 = OUTLINED_FUNCTION_5_31();
    os_unfair_lock_lock(v18);

    *&v5[46]._os_unfair_lock_opaque = v17;
    *&v5[42]._os_unfair_lock_opaque = renderList2;
    v19 = OUTLINED_FUNCTION_5_31();
    os_unfair_lock_unlock(v19);
LABEL_25:
    LODWORD(v20) = v5[104];
    [*&v5[102]._os_unfair_lock_opaque setSimulatedAperture:v20];
    LODWORD(v27) = v5[105];
    return [*&v5[102]._os_unfair_lock_opaque setPortraitLightingEffectStrength:v27];
  }

  return result;
}

- (float)_cubeStrengthForOffset:(uint64_t)offset
{
  if (!offset)
  {
    return 0.0;
  }

  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  v3 = 0.0;
  if (a2 >= 0.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  if ([*(offset + 200) count])
  {
    return 1.0;
  }

  if (v4 >= 0.05)
  {
    if (v4 >= 0.1)
    {
      if (v4 >= 0.35)
      {
        if (v4 <= 0.65)
        {
          return *(offset + 400);
        }

        else
        {
          v3 = 1.0;
          if (v4 < 0.9)
          {
            return ((((1.0 - v4) + -0.1) * (*(offset + 400) + -1.0)) * 4.0) + 1.0;
          }
        }
      }

      else
      {
        return (((v4 + -0.1) * (*(offset + 400) + -1.0)) * 4.0) + 1.0;
      }
    }

    else
    {
      return (v4 + -0.05) / 0.05;
    }
  }

  return v3;
}

- (void)_updateSemanticStyleFiltersAndRegionArrayWithSampleBuffer:(const os_unfair_lock *)buffer
{
  if (buffer)
  {
    bufferCopy = buffer;
    os_unfair_lock_assert_owner(buffer + 96);
    if (a2)
    {
      v4 = CMGetAttachment(a2, *off_1E798A430, 0);
      if (v4)
      {
        CGRectMakeWithDictionaryRepresentation(v4, (bufferCopy + 320));
      }
    }

    v5 = [objc_msgSend(OUTLINED_FUNCTION_2_37() "semanticStyles")];
    [OUTLINED_FUNCTION_2_37() regionAtIndex:0];
    v7 = v6;
    v9 = v8;
    v10 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    v11 = OUTLINED_FUNCTION_4_30();
    os_unfair_lock_lock(v11);
    *(bufferCopy + 300) = 1;
    if (v9 == 1.0 && v7 == 0.0 || !*(bufferCopy + 152))
    {

      *(bufferCopy + 224) = v5;
      [(BWStreamingFilterNode *)bufferCopy _buildAndChangeToFiltersWithAnimation:?];
    }

    v12 = OUTLINED_FUNCTION_4_30();
    os_unfair_lock_unlock(v12);
    v13 = OUTLINED_FUNCTION_2_37();
    if (v13 && [objc_msgSend(v13 "semanticStyles")])
    {
      target = a2;
      array = [MEMORY[0x1E695DF70] array];
      [OUTLINED_FUNCTION_2_37() largestEdgeOffset];
      v16 = [(BWStreamingFilterNode *)bufferCopy _cubeStrengthForOffset:v15];
      v17 = 0x1EB580000;
      v18 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
      v19 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
      v20 = 0x1E695D000;
      if ([objc_msgSend(OUTLINED_FUNCTION_2_37() "semanticStyles")])
      {
        v21 = 0;
        do
        {
          v57 = [objc_msgSend(OUTLINED_FUNCTION_2_37() "regions")];
          v22 = array;
          v23 = [objc_msgSend(OUTLINED_FUNCTION_2_37() "semanticStyles")];
          [OUTLINED_FUNCTION_2_37() regionAtIndex:v21];
          if (v16 >= 1.0 || v24 < 0.5)
          {
            v26 = v16;
          }

          else
          {
            v26 = 1.0;
          }

          v27 = OUTLINED_FUNCTION_4_30();
          os_unfair_lock_lock(v27);
          OUTLINED_FUNCTION_6_23();
          v29 = [v28 filtersForSemanticStyle:v23 sceneType:? personSegmentationEnabled:? maskVisualizationEnabled:? applyStyleBackgroundToEntireFrame:? filtersToCombine:?];
          v30 = [MEMORY[0x1E695E0F0] arrayByAddingObjectsFromArray:v29];
          v31 = OUTLINED_FUNCTION_4_30();
          os_unfair_lock_unlock(v31);
          v32 = bufferCopy;
          v33 = v17;
          v34 = v18;
          v35 = v19;
          v36 = v10;
          v37 = MEMORY[0x1E695DF90];
          v67[0] = 0x1F21AA490;
          v67[1] = 0x1F21AA4B0;
          v68[0] = v30;
          array = v22;
          v68[1] = v57;
          v20 = 0x1E695D000uLL;
          v67[2] = 0x1F21AA4D0;
          *&v38 = v26;
          v68[2] = [MEMORY[0x1E696AD98] numberWithFloat:v38];
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:3];
          v40 = v37;
          v10 = v36;
          v19 = v35;
          v18 = v34;
          v17 = v33;
          bufferCopy = v32;
          [array addObject:{objc_msgSend(v40, "dictionaryWithDictionary:", v39)}];
          ++v21;
        }

        while ([objc_msgSend(OUTLINED_FUNCTION_2_37() "semanticStyles")] > v21);
      }

      v41 = target;
      if (([(BWStreamingFilterNode *)bufferCopy _hasOverCaptureRegionsWithSampleBuffer:?]& 1) != 0)
      {
        v58 = +[FigCaptureSemanticStyle identityStyle];
        v42 = OUTLINED_FUNCTION_4_30();
        os_unfair_lock_lock(v42);
        OUTLINED_FUNCTION_6_23();
        v44 = [v43 filtersForSemanticStyle:v58 sceneType:? personSegmentationEnabled:? maskVisualizationEnabled:? applyStyleBackgroundToEntireFrame:? filtersToCombine:?];
        v45 = v20;
        v46 = [MEMORY[0x1E695E0F0] arrayByAddingObjectsFromArray:v44];
        v63 = 0;
        v64 = 0.0;
        v65 = 0x3FF0000000000000;
        v66 = *(bufferCopy + 328);
        v47 = [MEMORY[0x1E696B098] valueWithBytes:&v63 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        v48 = array;
        v49 = MEMORY[0x1E695DF90];
        v61[0] = 0x1F21AA490;
        v61[1] = 0x1F21AA4B0;
        v62[0] = v46;
        v62[1] = v47;
        v50 = [*(v45 + 3872) dictionaryWithObjects:v62 forKeys:v61 count:2];
        v51 = v49;
        array = v48;
        [v48 addObject:{objc_msgSend(v51, "dictionaryWithDictionary:", v50)}];
        OUTLINED_FUNCTION_6_23();
        v53 = [v46 arrayByAddingObjectsFromArray:{objc_msgSend(v52, "filtersForSemanticStyle:sceneType:personSegmentationEnabled:maskVisualizationEnabled:applyStyleBackgroundToEntireFrame:filtersToCombine:", v58)}];
        os_unfair_lock_unlock((bufferCopy + v10[3]));
        v63 = 0;
        v64 = *(bufferCopy + 328) + *(bufferCopy + 344);
        v65 = 0x3FF0000000000000;
        v66 = 1.0 - v64;
        v59[0] = 0x1F21AA490;
        v59[1] = 0x1F21AA4B0;
        v60[0] = v53;
        v60[1] = [MEMORY[0x1E696B098] valueWithBytes:&v63 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        v41 = target;
        [v48 addObject:{objc_msgSend(MEMORY[0x1E695DF90], "dictionaryWithDictionary:", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v60, v59, 2))}];
      }

      [(BWStreamingFilterNode *)bufferCopy _adjustRectanglesFromFiltersAndRegionArray:array withSampleBuffer:v41];
      v54 = OUTLINED_FUNCTION_4_30();
      os_unfair_lock_lock(v54);

      *(bufferCopy + 304) = [MEMORY[0x1E695DEC8] arrayWithArray:array];
      v55 = OUTLINED_FUNCTION_4_30();
      os_unfair_lock_unlock(v55);
    }
  }
}

- (CGRect)_hasOverCaptureRegionsWithSampleBuffer:(CGRect *)result
{
  if (result)
  {
    if (target)
    {
      return (CMGetAttachment(target, *off_1E798A430, 0) != 0);
    }

    else
    {
      return !CGRectEqualToRect(result[10], result[11]);
    }
  }

  return result;
}

- (uint64_t)_adjustRectanglesFromFiltersAndRegionArray:(CMAttachmentBearerRef)target withSampleBuffer:
{
  if (!self)
  {
    return 0;
  }

  v5 = [(BWStreamingFilterNode *)self _hasOverCaptureRegionsWithSampleBuffer:?];
  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = [a2 count];
  v8 = v7;
  v9 = v7 - v6;
  if (v7 > v6)
  {
    v16 = v5;
    v10 = 0;
    v11 = v6 | 1;
    v17 = ~(v6 | 1) + v7;
    do
    {
      v20 = 0u;
      v21 = 0u;
      [objc_msgSend(objc_msgSend(a2 objectAtIndexedSubscript:{v10), "objectForKeyedSubscript:", 0x1F21AA4B0), "getValue:", &v20}];
      v12 = *(self + 344);
      *(&v20 + 1) = *(self + 328);
      *(&v21 + 1) = v12;
      if (v8 == v11)
      {
        *&v20 = 0;
        *&v21 = 0x3FF0000000000000;
      }

      if (v10)
      {
        if (v9 - 1 == v10)
        {
          if (*&v20 + *&v21 < 1.0)
          {
            *&v21 = 1.0 - *&v20;
          }

          v13 = [objc_msgSend(a2 objectAtIndexedSubscript:{v17), "objectForKeyedSubscript:", 0x1F21AA4B0}];
          if (v13)
          {
            v18 = 0u;
            v19 = 0u;
            [v13 getValue:&v18];
            *&v20 = *&v18 + *&v19;
            *&v21 = 1.0 - (*&v18 + *&v19);
          }
        }
      }

      else
      {
        if (*&v20 > 0.0)
        {
          *&v21 = *&v20 + *&v21;
          *&v20 = 0;
        }

        if (v8 != v11)
        {
          v14 = [objc_msgSend(a2 objectAtIndexedSubscript:{1), "objectForKeyedSubscript:", 0x1F21AA4B0}];
          if (v14)
          {
            v18 = 0u;
            v19 = 0u;
            [v14 getValue:&v18];
            *&v21 = v18;
          }
        }
      }

      [objc_msgSend(a2 objectAtIndexedSubscript:{v10++), "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", &v20, "{CGRect={CGPoint=dd}{CGSize=dd}}"), 0x1F21AA4B0}];
    }

    while (v9 != v10);
    if (v16)
    {
      v20 = 0u;
      v21 = 0u;
      [objc_msgSend(objc_msgSend(a2 objectAtIndexedSubscript:{v8 - 2), "objectForKeyedSubscript:", 0x1F21AA4B0), "getValue:", &v20}];
      *(&v21 + 1) = *(self + 328);
      [objc_msgSend(a2 objectAtIndexedSubscript:{v8 - 2), "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", &v20, "{CGRect={CGPoint=dd}{CGSize=dd}}"), 0x1F21AA4B0}];
      [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_118_0() "objectAtIndexedSubscript:{"objectForKeyedSubscript:", 0x1F21AA4B0), "getValue:", &v20}")];
      *(&v20 + 1) = *(self + 328) + *(self + 344);
      *(&v21 + 1) = 1.0 - *(&v20 + 1);
      [objc_msgSend(OUTLINED_FUNCTION_118_0() "objectAtIndexedSubscript:{"setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", &v20, "{CGRect={CGPoint=dd}{CGSize=dd}}"), 0x1F21AA4B0}")];
    }

    return 0;
  }

  return FigSignalErrorAtGM();
}

- (void)changeToSemanticStyle:(char)a3 animated:(os_unfair_lock_s *)a4 .cold.1(uint64_t a1, void *a2, char a3, os_unfair_lock_s *a4)
{
  *(a1 + 224) = a2;

  *(a1 + 304) = 0;
  *(a1 + 300) = 0;
  [(BWStreamingFilterNode *)a1 _buildAndChangeToFiltersWithAnimation:?];

  os_unfair_lock_unlock(a4);
}

@end