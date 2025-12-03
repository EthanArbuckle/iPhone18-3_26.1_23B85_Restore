@interface BWCinematicFramingNode
+ (void)initialize;
- ($1981ABD3383123DE67D3222CA4FC2B97)cinematicFramingControls;
- (BOOL)cinematicFramingControlsSuspended;
- (BWCinematicFramingNode)initWithOutputDimensions:(id)dimensions cameraInfoByPortType:(id)type horizontalSensorBinningFactor:(int)factor verticalSensorBinningFactor:(int)binningFactor deviceOrientationCorrectionEnabled:(BOOL)enabled stillImageCaptureEnabled:(BOOL)captureEnabled objectMetadataIdentifiers:(id)identifiers maxLossyCompressionLevel:(int)self0 portTypes:(id)self1 cinematicFramingControls:(id *)self2 cameraHasDistortionCoefficients:(BOOL)self3 cameraHasCalibrationValidMaxRadius:(BOOL)self4 centerStageMetadataDeliveryEnabled:(BOOL)self5 pipelineType:(unint64_t)self6 downStreamRequires10BitPixelFormat:(BOOL)self7;
- (CGRect)regionOfInterestForCameraControls;
- (double)_getDeviceToCameraSpaceTransform:(uint64_t)transform;
- (double)manualFramingVideoZoomFactor;
- (id)copyCameraStatesForPTS:(id *)s;
- (uint64_t)_initVirtualCameraProcessor;
- (uint64_t)_isSampleBufferFromPrimaryStream:(void *)stream metadataDict:;
- (uint64_t)_reportCinematicFramingSessionCoreAnalyticsData;
- (uint64_t)_updateOutputRequirements;
- (uint64_t)_updateVCProcessorWithCinematicFramingControls;
- (void)_addMetadaInputsAndOutputsWithObjectMetadataIdentifiers:(uint64_t)identifiers;
- (void)_addVideoCaptureInputsAndOutput;
- (void)_saveCameraStatesForStillImageCaptureRequestsWithInputCamera:(void *)camera outputCamera:(void *)outputCamera outputROI:(double)i pts:(double)pts;
- (void)_supportedOutputPixelFormats;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didChangeCenterStageFramingMode:(int)mode;
- (void)didChangeCenterStageMetadataDeliveryEnabled:(BOOL)enabled;
- (void)didChangeCenterStageRectOfInterest:(CGRect)interest;
- (void)didReachEndOfDataForInput:(id)input;
- (void)panWithTranslation:(CGPoint)translation;
- (void)performOneShotFraming;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)resetFraming;
- (void)restrictCenterStageFieldOfViewToWide:(BOOL)wide;
- (void)setCinematicFramingControls:(id *)controls;
- (void)setCinematicFramingControlsSuspended:(BOOL)suspended;
- (void)setManualFramingVideoZoomFactor:(double)factor;
- (void)startPanningAtPoint:(CGPoint)point;
@end

@implementation BWCinematicFramingNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWCinematicFramingNode)initWithOutputDimensions:(id)dimensions cameraInfoByPortType:(id)type horizontalSensorBinningFactor:(int)factor verticalSensorBinningFactor:(int)binningFactor deviceOrientationCorrectionEnabled:(BOOL)enabled stillImageCaptureEnabled:(BOOL)captureEnabled objectMetadataIdentifiers:(id)identifiers maxLossyCompressionLevel:(int)self0 portTypes:(id)self1 cinematicFramingControls:(id *)self2 cameraHasDistortionCoefficients:(BOOL)self3 cameraHasCalibrationValidMaxRadius:(BOOL)self4 centerStageMetadataDeliveryEnabled:(BOOL)self5 pipelineType:(unint64_t)self6 downStreamRequires10BitPixelFormat:(BOOL)self7
{
  captureEnabledCopy = captureEnabled;
  v31.receiver = self;
  v31.super_class = BWCinematicFramingNode;
  v23 = [(BWNode *)&v31 init];
  v24 = v23;
  if (v23)
  {
    v23->_outputDimensions = dimensions;
    v23->_cameraInfoByPortType = type;
    typesCopy = types;
    *(v24 + 480) = typesCopy;
    [v24 setSupportsConcurrentLiveInputCallbacks:{objc_msgSend(typesCopy, "count") > 1}];
    *(v24 + 168) = 0;
    if ((factor - 3) >= 0xFFFFFFFE && (*(v24 + 172) = factor, (binningFactor - 3) >= 0xFFFFFFFE))
    {
      *(v24 + 176) = binningFactor;
      *(v24 + 476) = level;
      *(v24 + 440) = objc_alloc_init(BWDeviceOrientationMonitor);
      *(v24 + 473) = enabled;
      *(v24 + 553) = format;
      *(v24 + 128) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(types, "count")}];
      *(v24 + 544) = pipelineType;
      [(BWCinematicFramingNode *)v24 _addVideoCaptureInputsAndOutput];
      *(v24 + 472) = captureEnabledCopy;
      if (captureEnabledCopy)
      {
        *(v24 + 348) = 0;
        *(v24 + 264) = 0;
        *(v24 + 232) = 0u;
        *(v24 + 248) = 0u;
        *(v24 + 200) = 0u;
        *(v24 + 216) = 0u;
        *(v24 + 336) = 0;
        *(v24 + 320) = 0u;
        *(v24 + 304) = 0u;
        *(v24 + 288) = 0u;
        *(v24 + 272) = 0u;
        *(v24 + 344) = 0;
      }

      if (identifiers)
      {
        *(v24 + 144) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(types, "count")}];
        [(BWCinematicFramingNode *)v24 _addMetadaInputsAndOutputsWithObjectMetadataIdentifiers:identifiers];
      }

      *(v24 + 468) = 5;
      v28 = *&controls->var3.origin.y;
      v27 = *&controls->var3.size.height;
      v29 = *&controls->var9;
      *(v24 + 408) = *&controls->var6;
      *(v24 + 424) = v29;
      *(v24 + 376) = v28;
      *(v24 + 392) = v27;
      *(v24 + 360) = *&controls->var0;
      *(v24 + 498) = coefficients;
      *(v24 + 499) = radius;
      *(v24 + 552) = deliveryEnabled;
      [(BWCinematicFramingNode *)v24 _updateOutputRequirements];
      *(v24 + 501) = 0;
      v30 = *(MEMORY[0x1E695F050] + 16);
      *(v24 + 504) = *MEMORY[0x1E695F050];
      *(v24 + 520) = v30;
      *(v24 + 536) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v24;
}

- (void)dealloc
{
  [(VCProcessor *)self->_vcProcessor purgeResources];

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  if (self->_stillImageCaptureEnabled)
  {
  }

  v4.receiver = self;
  v4.super_class = BWCinematicFramingNode;
  [(BWNode *)&v4 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  BWUtilitiesWarnIfInputFormatsMismatch([(BWNode *)self inputs], self->super._input);
  v3.receiver = self;
  v3.super_class = BWCinematicFramingNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  [(BWCinematicFramingNode *)self _initVirtualCameraProcessor];
  [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor start];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  p_videoOutputFormatIsLive = &self->_videoOutputFormatIsLive;
  if (!self->_videoOutputFormatIsLive && ([-[NSMutableDictionary allValues](self->_videoCaptureInputsByPortType "allValues")] & 1) != 0)
  {
    v8 = &OBJC_IVAR___BWCinematicFramingNode__videoCaptureOutput;
LABEL_7:
    [*(&self->super.super.isa + *v8) makeConfiguredFormatLive];
    *p_videoOutputFormatIsLive = 1;
    goto LABEL_8;
  }

  p_videoOutputFormatIsLive = &self->_metadataOutputFormatIsLive;
  if (!self->_metadataOutputFormatIsLive && [-[NSMutableDictionary allValues](self->_detectionMetadataInputsByPortType "allValues")])
  {
    v8 = &OBJC_IVAR___BWCinematicFramingNode__detectionMetadataOutput;
    goto LABEL_7;
  }

LABEL_8:

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didReachEndOfDataForInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if ([-[NSMutableDictionary allValues](self->_videoCaptureInputsByPortType "allValues")])
  {
    v5 = 0;
    v6 = (atomic_fetch_add_explicit(&self->_endOfDataVideoInputsCount, 1u, memory_order_relaxed) + 1);
  }

  else
  {
    v6 = 0;
    if ([-[NSMutableDictionary allValues](self->_detectionMetadataInputsByPortType "allValues")])
    {
      v5 = (atomic_fetch_add_explicit(&self->_endOfDataMetadataInputsCount, 1u, memory_order_relaxed) + 1);
    }

    else
    {
      v5 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
  if (v6 == [(NSMutableDictionary *)self->_videoCaptureInputsByPortType count])
  {
    [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor stop];
    [(BWNodeOutput *)self->_videoCaptureOutput markEndOfLiveOutput];
    [(BWCinematicFramingNode *)self _reportCinematicFramingSessionCoreAnalyticsData];
    self->_endOfDataVideoInputsCount = 0;
  }

  if (v5 == [(NSMutableDictionary *)self->_detectionMetadataInputsByPortType count])
  {
    [(BWNodeOutput *)self->_detectionMetadataOutput markEndOfLiveOutput];
    self->_endOfDataMetadataInputsCount = 0;
  }
}

- (void)didChangeCenterStageRectOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(VCProcessor *)self->_vcProcessor setOutputROI:x, y, width, height];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didChangeCenterStageFramingMode:(int)mode
{
  v3 = *&mode;
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [-[VCProcessor framingSession](self->_vcProcessor "framingSession")];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didChangeCenterStageMetadataDeliveryEnabled:(BOOL)enabled
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  self->_centerStageMetadataDeliveryEnabled = enabled;

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)restrictCenterStageFieldOfViewToWide:(BOOL)wide
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  self->_cinematicFramingControls.fieldOfViewRestrictedToWide = wide;

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- ($1981ABD3383123DE67D3222CA4FC2B97)cinematicFramingControls
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  v5 = *&self->_cinematicFramingControls.panningAngleX;
  *&retstr->var3.size.height = *&self->_cinematicFramingControls.outputFramingRectOfInterest.size.height;
  *&retstr->var6 = v5;
  *&retstr->var9 = *&self->_cinematicFramingControls.defaultVirtualCameraRotationAngleX;
  v6 = *&self->_cinematicFramingControls.outputFramingRectOfInterest.origin.y;
  *&retstr->var0 = *&self->_cinematicFramingControls.autoFramingEnabled;
  *&retstr->var3.origin.y = v6;

  os_unfair_lock_unlock(&self->_bufferServicingLock);
  return result;
}

- (void)setCinematicFramingControls:(id *)controls
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  *&self->_cinematicFramingControls.autoFramingEnabled = *&controls->var0;
  v5 = *&controls->var9;
  v7 = *&controls->var3.origin.y;
  v6 = *&controls->var3.size.height;
  *&self->_cinematicFramingControls.panningAngleX = *&controls->var6;
  *&self->_cinematicFramingControls.defaultVirtualCameraRotationAngleX = v5;
  *&self->_cinematicFramingControls.outputFramingRectOfInterest.origin.y = v7;
  *&self->_cinematicFramingControls.outputFramingRectOfInterest.size.height = v6;
  [(BWCinematicFramingNode *)self _updateVCProcessorWithCinematicFramingControls];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (BOOL)cinematicFramingControlsSuspended
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  cinematicFramingControlsSuspended = self->_cinematicFramingControlsSuspended;
  os_unfair_lock_unlock(&self->_bufferServicingLock);
  return cinematicFramingControlsSuspended;
}

- (void)setCinematicFramingControlsSuspended:(BOOL)suspended
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  self->_cinematicFramingControlsSuspended = suspended;

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)startPanningAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(VCProcessor *)self->_vcProcessor startRotatingFromPoint:x, y];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)panWithTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(VCProcessor *)self->_vcProcessor continueRotatingToPoint:x, y];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)performOneShotFraming
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(VCProcessor *)self->_vcProcessor adjustToFrameCurrentScene];
  os_unfair_lock_unlock(&self->_bufferServicingLock);
  self->_oneShotFramingInFlight = 1;
}

- (void)resetFraming
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(VCProcessor *)self->_vcProcessor resetOutputCamera];
  os_unfair_lock_unlock(&self->_bufferServicingLock);
  self->_outputCameraResetInFlight = 1;
}

- (double)manualFramingVideoZoomFactor
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(VCProcessor *)self->_vcProcessor videoZoomFactor];
  v4 = v3;
  os_unfair_lock_unlock(&self->_bufferServicingLock);
  return v4;
}

- (void)setManualFramingVideoZoomFactor:(double)factor
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if (self->_cinematicFramingControlsSuspended)
  {
    if (dword_1EB58E5C0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    *&v5 = factor;
    [(VCProcessor *)self->_vcProcessor setVideoZoomFactor:v5];
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (CGRect)regionOfInterestForCameraControls
{
  x = self->_regionOfInterestForCameraControls.origin.x;
  y = self->_regionOfInterestForCameraControls.origin.y;
  width = self->_regionOfInterestForCameraControls.size.width;
  height = self->_regionOfInterestForCameraControls.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_addVideoCaptureInputsAndOutput
{
  if (self)
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([*(self + 480) count])
    {
      v3 = 0;
      do
      {
        v4 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:self index:v3];
        v5 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v5 setSupportedPixelFormats:FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F2248460, *(self + 476))];
        [(BWNodeInput *)v4 setFormatRequirements:v5];
        [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v4 primaryMediaConfiguration] setPassthroughMode:0];
        [(BWNodeInput *)v4 setDelayedBufferCount:[(BWNodeInput *)v4 delayedBufferCount]+ 1];
        [self addInput:v4];
        [*(self + 128) setObject:v4 forKeyedSubscript:{objc_msgSend(*(self + 480), "objectAtIndexedSubscript:", v3)}];

        [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v3++)}];
      }

      while (v3 < [*(self + 480) count]);
    }

    v7 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:self];
    v6 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v6 setSupportedPixelFormats:[(BWCinematicFramingNode *)self _supportedOutputPixelFormats]];
    [(BWNodeOutput *)v7 setFormatRequirements:v6];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v7 primaryMediaConfiguration] setPassthroughMode:0];
    *(self + 136) = v7;
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v7 primaryMediaConfiguration] setIndexesOfInputsWhichDrivesThisOutput:array];
    if (*(self + 544) == 1)
    {
      [(BWNodeOutput *)v7 setOwningNodeRetainedBufferCount:3];
    }

    [self addOutput:v7];
  }
}

- (void)_addMetadaInputsAndOutputsWithObjectMetadataIdentifiers:(uint64_t)identifiers
{
  if (identifiers)
  {
    if ([*(identifiers + 480) count])
    {
      v4 = 0;
      do
      {
        v5 = -[BWNodeInput initWithMediaType:node:index:]([BWNodeInput alloc], "initWithMediaType:node:index:", 1835365473, identifiers, [*(identifiers + 128) count] + v4);
        [identifiers addInput:v5];
        [*(identifiers + 144) setObject:v5 forKeyedSubscript:{objc_msgSend(*(identifiers + 480), "objectAtIndexedSubscript:", v4)}];

        ++v4;
      }

      while (v4 < [*(identifiers + 480) count]);
    }

    v6 = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:identifiers];
    [(BWNodeOutput *)v6 setFormat:[BWMetadataObjectFormat formatWithMetadataIdentifiers:a2]];
    [identifiers addOutput:v6];
    *(identifiers + 152) = v6;
  }
}

- (uint64_t)_updateOutputRequirements
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(objc_msgSend(objc_msgSend(*(result + 128) "allValues")];
    v3 = 0;
    if (v2)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:v2];
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
    }

    _supportedOutputPixelFormats = [(BWCinematicFramingNode *)v1 _supportedOutputPixelFormats];
    formatRequirements = [*(v1 + 136) formatRequirements];
    [formatRequirements setWidth:*(v1 + 192)];
    [formatRequirements setHeight:*(v1 + 196)];
    [formatRequirements setSupportedColorSpaceProperties:v3];
    return [formatRequirements setSupportedPixelFormats:_supportedOutputPixelFormats];
  }

  return result;
}

- (uint64_t)_initVirtualCameraProcessor
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 352);
    if (v2)
    {
    }

    v3 = objc_alloc_init(MEMORY[0x1E6994588]);
    *(v1 + 352) = v3;
    [v3 setOutputDimensions:*(v1 + 192)];
    [OUTLINED_FUNCTION_1_45() setCameraInfoByPortType:?];
    if ([OUTLINED_FUNCTION_1_45() setup] || objc_msgSend(OUTLINED_FUNCTION_1_45(), "prewarm"))
    {
      OUTLINED_FUNCTION_6_29();
      result = FigDebugAssert3();
      if (dword_1EB58E5C0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        return fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      [OUTLINED_FUNCTION_1_45() setOrientationCorrectionEnabled:?];

      return [(BWCinematicFramingNode *)v1 _updateVCProcessorWithCinematicFramingControls];
    }
  }

  return result;
}

- (uint64_t)_reportCinematicFramingSessionCoreAnalyticsData
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(BWCinematicFramingSessionAnalyticsPayload);
    [(BWCinematicFramingSessionAnalyticsPayload *)v2 setCinematicFramingMaxPeopleDetected:*(v1 + 448)];
    v3 = [objc_msgSend(*(v1 + 352) "framingSession")];
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if ([v3 count])
    {
      v5 = 0;
      do
      {
        [v4 appendString:{objc_msgSend(objc_msgSend(v3, "objectAtIndexedSubscript:", v5), "stringValue")}];
        if (v5 != [v3 count] - 1)
        {
          [v4 appendString:{@", "}];
        }

        ++v5;
      }

      while ([v3 count] > v5);
    }

    [(BWCinematicFramingSessionAnalyticsPayload *)v2 setCinematicFramingROIHeatMap:v4];
    [(BWCinematicFramingSessionAnalyticsPayload *)v2 setClientApplicationID:*(v1 + 456)];
    [(BWCinematicFramingSessionAnalyticsPayload *)v2 setCinematicFramingControlMode:*(v1 + 464)];
    v6 = +[BWCoreAnalyticsReporter sharedInstance];

    return [(BWCoreAnalyticsReporter *)v6 sendEvent:v2];
  }

  return result;
}

- (uint64_t)_updateVCProcessorWithCinematicFramingControls
{
  if (result)
  {
    [*(result + 352) setAutoFramingEnabled:*(result + 360)];
    OUTLINED_FUNCTION_3_34();
    [OUTLINED_FUNCTION_1_45() setFisheyeEffectEnabled:?];
    OUTLINED_FUNCTION_3_34();
    [OUTLINED_FUNCTION_1_45() setOutputCameraDefaultRotation:?];
    OUTLINED_FUNCTION_3_34();
    if (*v1 == 1)
    {
      [OUTLINED_FUNCTION_1_45() setOutputROI:?];
      OUTLINED_FUNCTION_3_34();
      v3 = *(v2 + 40);
      framingSession = [OUTLINED_FUNCTION_1_45() framingSession];

      return [framingSession setFramingStyle:v3];
    }

    else
    {
      OUTLINED_FUNCTION_1_45();
      v5 = OUTLINED_FUNCTION_8_22();
      [v6 setOutputROI:v5];
      OUTLINED_FUNCTION_3_34();
      v8 = *(v7 + 48);
      [objc_msgSend(OUTLINED_FUNCTION_1_45() "outputCamera")];
      OUTLINED_FUNCTION_3_34();
      [OUTLINED_FUNCTION_1_45() setVideoZoomFactor:?];
      OUTLINED_FUNCTION_3_34();
      v9 = OUTLINED_FUNCTION_1_45();

      return [v9 setManualFramingDefaultVideoZoomFactor:?];
    }
  }

  return result;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v4 = MEMORY[0x1EEE9AC00](self);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  os_unfair_lock_lock(v4 + 42);
  v108 = 0;
  v10 = [objc_msgSend(*(v9 + 128) "allValues")];
  v11 = [objc_msgSend(*(v9 + 144) "allValues")];
  v12 = v11;
  if ((v10 & 1) == 0 && !v11)
  {
    v21 = 0;
    goto LABEL_77;
  }

  v13 = OUTLINED_FUNCTION_7_24(v11, *off_1E798A3C8);
  if (v10)
  {
    v100 = *(v9 + 136);
    PortTypeForInputFromInputByPortTypes = BWUtilitiesGetPortTypeForInputFromInputByPortTypes(v6, *(v9 + 128));
    if (([(BWCinematicFramingNode *)v9 _isSampleBufferFromPrimaryStream:v88 metadataDict:v13]& 1) == 0)
    {
      goto LABEL_67;
    }

    v15 = v100;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_76;
    }

    PortTypeForInputFromInputByPortTypes = 0;
    v15 = *(v9 + 152);
  }

  v99 = PortTypeForInputFromInputByPortTypes;
  v100 = v15;
  if (v15)
  {
    Value = CFDictionaryGetValue(v13, *off_1E798A420);
    memset(&v107, 0, sizeof(v107));
    v17 = CMTimeMakeFromDictionary(&v107, Value);
    v18 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    if ((v10 & 1) == 0)
    {
      v21 = 0;
      v31 = 0;
      v6 = v100;
      goto LABEL_56;
    }

    v19 = OUTLINED_FUNCTION_7_24(v17, @"OriginalCameraIntrinsicMatrix");
    if (v19)
    {
      v20 = v19;
      v21 = OUTLINED_FUNCTION_7_24(v19, @"OriginalCameraIntrinsicMatrixReferenceDimensions");
      if (v21)
      {
        v98 = [objc_msgSend(objc_msgSend(objc_msgSend(v9 "output")];
        if (v98)
        {
          ImageBuffer = CMSampleBufferGetImageBuffer(v8);
          Width = CVPixelBufferGetWidth(ImageBuffer);
          Height = CVPixelBufferGetHeight(ImageBuffer);
          OUTLINED_FUNCTION_9_18();
          *&v102[16] = *(v25 + 32);
          v21 = FigCaptureCreateCalibrationDataDictionaryFromSampleBufferMetadataIncludeMaxRadius(v13, v102, v26, v27, v28, v20, v21, 0, 0, v29, v30);
          if (v21)
          {
            if ([objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B4B8), "intValue"}] >= *(v9 + 468))
            {
              [v13 objectForKeyedSubscript:*off_1E798B220];
            }

            v106 = 0;
            v105 = 0;
            MotionDataFromISP = [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B3E0), "unsignedIntValue"}];
            v33 = 0;
            if ((MotionDataFromISP & 1) == 0)
            {
              bzero(v102, 0x14A0uLL);
              v101 = 0;
              MotionDataFromISP = FigMotionGetMotionDataFromISP(v13, v102, 0, 110, &v101, &v105, 0, 0, 0);
              if (MotionDataFromISP)
              {
                v34 = 1;
              }

              else
              {
                v34 = v101 <= 0;
              }

              v33 = !v34;
            }

            v35 = Width / Height;
            if (*(v9 + 360) == 1)
            {
              v36 = OUTLINED_FUNCTION_7_24(MotionDataFromISP, *off_1E798A308);
              OUTLINED_FUNCTION_7_24(v36, *off_1E798A300);
            }

            FigCaptureSensorIDFromSampleBufferMetadata(v13, *(v9 + 184));
            v37 = objc_alloc(MEMORY[0x1E6994568]);
            v38 = OUTLINED_FUNCTION_9_18();
            *&v102[16] = *(v39 + 32);
            BYTE1(v97) = v40;
            LOBYTE(v97) = v41;
            v38.n128_f32[0] = v35;
            v43 = [v42 initWithDetectedObjectsInfo:v38.n128_f64[0] calibrationData:v97 timestamp:? aspectRatio:? sensorID:? filteredFaceIDs:? filteredBodyIDs:? calibrationDistortionCoefficientsSupported:? calibrationValidMaxRadiusSupported:?];
            v21 = v43;
            if (v43)
            {
              if (v33)
              {
                LODWORD(v45) = v105.i32[1];
                LODWORD(v44) = v105.i32[0];
                LODWORD(v46) = v106;
                [(__CFDictionary *)v43 setGravityX:v44 y:v45 z:v46];
              }

              [(__CFDictionary *)v21 setDeviceToCameraSpaceTransform:[(BWCinematicFramingNode *)v9 _getDeviceToCameraSpaceTransform:v13]];
              [(__CFDictionary *)v21 setPortType:v99];
              -[__CFDictionary setCameraOrientation:](v21, "setCameraOrientation:", [*(v9 + 440) mostRecentPortraitLandscapeOrientation]);
              [objc_msgSend(objc_msgSend(*(v9 + 184) objectForKeyedSubscript:{v99), "objectForKeyedSubscript:", *off_1E7989E60), "floatValue"}];
              [(__CFDictionary *)v21 setAdditionalInputCameraRotation:?];
              v47 = BWCaptureDevicePositionFromPortType(v99) == 2;
              IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B238), "integerValue"}]);
              [(__CFDictionary *)v21 setFrontCameraHas180DegreesRotation:FigCaptureCameraRequires180DegreesRotation(v47, IsExtensionDeviceType)];
              v49 = *off_1E798B7A0;
              v50 = [v13 objectForKeyedSubscript:*off_1E798B7A0];
              if (v50)
              {
                CVBufferSetAttachment(ImageBuffer, v49, v50, kCVAttachmentMode_ShouldPropagate);
              }

              [*(v9 + 352) setInputPixelBuffer:ImageBuffer];
              [*(v9 + 352) setInputMetadata:v21];
              v31 = v98;
              [*(v9 + 352) setOutputPixelBuffer:v98];
              process = [*(v9 + 352) process];
              if (!process)
              {
                process = [*(v9 + 352) finishProcessing];
                if (!process)
                {
                  if (*(v9 + 544) == 1)
                  {
                    if (*(v9 + 501) == 1 && *(v9 + 536))
                    {
                      v52 = MEMORY[0x1E6994588];
                      outputCamera = [*(v9 + 352) outputCamera];
                      [*(v9 + 352) inputCamera];
                      [v52 warpCGRect:outputCamera fromCamera:OUTLINED_FUNCTION_8_22() toCamera:?];
                      v55 = v54;
                      v57 = v56;
                      v59 = v58;
                      v61 = v60 * [objc_msgSend(v6 "videoFormat")];
                      v62 = v55 * [objc_msgSend(v6 "videoFormat")];
                      v63 = v57 * [objc_msgSend(v6 "videoFormat")];
                      v64 = [objc_msgSend(v6 "videoFormat")];
                      *(v9 + 504) = v61;
                      *(v9 + 512) = v62;
                      *(v9 + 520) = v63;
                      *(v9 + 528) = v59 * v64;
                      (*(*(v9 + 536) + 16))();
                    }

                    v65 = CVBufferCopyAttachments(ImageBuffer, kCVAttachmentMode_ShouldPropagate);
                    if (v65)
                    {
                      v66 = CFAutorelease(v65);
                      if (v66)
                      {
                        v67 = v66;
                        v68 = *MEMORY[0x1E6965CE8];
                        if (![(__CFDictionary *)v66 objectForKeyedSubscript:*MEMORY[0x1E6965CE8]])
                        {
                          v69 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v67];
                          ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v67);
                          [v69 setObject:ColorSpaceFromAttachments forKeyedSubscript:v68];

                          v67 = v69;
                        }

                        CVBufferSetAttachments(v98, v67, kCVAttachmentMode_ShouldPropagate);
                      }
                    }
                  }

                  v71 = MEMORY[0x1E696AD98];
                  [objc_msgSend(*(v9 + 352) "outputCamera")];
                  OUTLINED_FUNCTION_23_0([v71 numberWithFloat:?]);
                  if (*(v9 + 552) == 1)
                  {
                    v72 = MEMORY[0x1E696AD98];
                    [objc_msgSend(*(v9 + 352) "outputCamera")];
                    OUTLINED_FUNCTION_23_0([v72 numberWithFloat:?]);
                    v103 = 0u;
                    v104 = 0u;
                    memset(v102, 0, sizeof(v102));
                    [*(v9 + 352) getPhysicalCameraToVirtualCameraTransform];
                    OUTLINED_FUNCTION_2_44();
                    *(v73 + 40) = v74;
                    *(v73 + 56) = v75;
                    *&v103 = v76;
                    *&v104 = v77;
                    CMSetAttachment(v8, *off_1E798A2F0, [MEMORY[0x1E695DEF0] dataWithBytes:v102 length:64], 1u);
                    v78 = *MEMORY[0x1E6960470];
                    v6 = v100;
                    if (*(v9 + 552))
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    v78 = *MEMORY[0x1E6960470];
                    v6 = v100;
                  }

                  if (!CMGetAttachment(v8, v78, 0))
                  {
LABEL_47:
                    v18 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                    if ((*(v9 + 360) & 1) == 0)
                    {
                      CMRemoveAttachment(v8, *off_1E798A308);
                      CMRemoveAttachment(v8, *off_1E798A300);
                    }

                    v82 = [-[__CFDictionary faceDetections](v21 "faceDetections")];
                    v83 = [-[__CFDictionary bodyDetections](v21 "bodyDetections")];
                    if (v83 <= v82)
                    {
                      v84 = v82;
                    }

                    else
                    {
                      v84 = v83;
                    }

                    if (v84 > *(v9 + 448))
                    {
                      *(v9 + 448) = v84;
                    }

                    if (*(v9 + 472) == 1)
                    {
                      inputCamera = [*(v9 + 352) inputCamera];
                      outputCamera2 = [*(v9 + 352) outputCamera];
                      [*(v9 + 352) outputROI];
                      *v102 = v107;
                      v91 = outputCamera2;
                      v18 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                      [(BWCinematicFramingNode *)v9 _saveCameraStatesForStillImageCaptureRequestsWithInputCamera:inputCamera outputCamera:v91 outputROI:v102 pts:v92, v93, v94, v95];
                    }

LABEL_56:
                    v85 = *(v9 + 360) ^ 1;
                    if (v12)
                    {
                      FigCaptureCinematicFramingUpdateSampleBufferMetadata(*(v9 + v18[479]), v8, v85 & 1);
                      v12 = 0;
                      v86 = v8;
                    }

                    else
                    {
                      v12 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(v8, v31, (v9 + 160), &v108);
                      if (!v108)
                      {
                        goto LABEL_61;
                      }

                      v87 = CMSampleBufferGetImageBuffer(v8);
                      CVBufferPropagateAttachments(v87, v31);
                      FigCaptureCinematicFramingUpdateSampleBufferMetadata(*(v9 + v18[479]), v108, v85 & 1);
                      v86 = v108;
                    }

                    [v6 emitSampleBuffer:v86];
LABEL_61:
                    if (!v31)
                    {
                      goto LABEL_77;
                    }

                    goto LABEL_62;
                  }

LABEL_46:
                  v103 = 0u;
                  memset(v102, 0, sizeof(v102));
                  [objc_msgSend(*(v9 + 352) "outputCamera")];
                  OUTLINED_FUNCTION_2_44();
                  *(v79 + 40) = v80;
                  *&v103 = v81;
                  OUTLINED_FUNCTION_23_0([MEMORY[0x1E695DEF0] dataWithBytes:v102 length:48]);
                  goto LABEL_47;
                }
              }

              v12 = process;
              OUTLINED_FUNCTION_16_0();
              FigDebugAssert3();
              v6 = v100;
LABEL_62:
              CFRelease(v31);
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_16_0();
            FigDebugAssert3();
            v12 = -12783;
          }

          else
          {
            OUTLINED_FUNCTION_16_0();
            FigDebugAssert3();
            v12 = -12784;
          }

          v6 = v100;
          v31 = v98;
          goto LABEL_62;
        }

        v21 = 0;
        v12 = -12786;
      }

      else
      {
        OUTLINED_FUNCTION_16_0();
        FigDebugAssert3();
        v12 = 0;
      }

      goto LABEL_68;
    }

    FigDebugAssert3();
LABEL_67:
    v12 = 0;
    v21 = 0;
LABEL_68:
    v6 = v100;
    goto LABEL_77;
  }

  v12 = 0;
LABEL_76:
  v21 = 0;
  v6 = 0;
LABEL_77:
  if (v108)
  {
    CFRelease(v108);
  }

  if (v12)
  {
    CMSampleBufferGetPresentationTimeStamp(v102, v8);
    v96 = [BWDroppedSample newDroppedSampleWithReason:0x1F219C0D0 pts:v102];
    [v6 emitDroppedSample:v96];
  }

  os_unfair_lock_unlock((v9 + 168));
}

- (uint64_t)_isSampleBufferFromPrimaryStream:(void *)stream metadataDict:
{
  if (result)
  {
    if ([*(result + 128) count] >= 2 && (v4 = objc_msgSend(stream, "objectForKeyedSubscript:", *off_1E798B710)) != 0)
    {

      return [v4 BOOLValue];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (double)_getDeviceToCameraSpaceTransform:(uint64_t)transform
{
  if (transform)
  {
    v3 = *off_1E798B540;
    if ([objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B540), "isEqualToString:", *off_1E798A0E0}])
    {
      v4 = 1;
    }

    else
    {
      v4 = [objc_msgSend(a2 objectForKeyedSubscript:{v3), "isEqualToString:", *off_1E798A0F8}];
    }

    IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B238), "integerValue"}]);
    if (v4)
    {
      v6 = FigCaptureCameraRequires180DegreesRotation(1, IsExtensionDeviceType);
      v7 = &_PromotedConst;
      if (!v6)
      {
        v7 = &_PromotedConst_244;
      }
    }

    else
    {
      v7 = &_PromotedConst_245;
    }

    v8 = *v7;
  }

  else
  {
    *&v8 = 0;
  }

  return *&v8;
}

- (void)_saveCameraStatesForStillImageCaptureRequestsWithInputCamera:(void *)camera outputCamera:(void *)outputCamera outputROI:(double)i pts:(double)pts
{
  if (self)
  {
    os_unfair_lock_lock(self + 87);
    v16 = &self[18 * self[86]._os_unfair_lock_opaque + 50];
    v17 = *(v16 + 8);
    if (*v16)
    {
    }

    if (v17)
    {
    }

    v18 = [a2 copy];
    v19 = [camera copy];
    v20 = &self[18 * self[86]._os_unfair_lock_opaque + 50];
    *v20 = v18;
    *(v20 + 8) = v19;
    *(v20 + 32) = v23;
    *(v20 + 16) = v22;
    *(v20 + 40) = i;
    *(v20 + 48) = pts;
    os_unfair_lock_opaque = self[86]._os_unfair_lock_opaque;
    *(v20 + 56) = a7;
    *(v20 + 64) = a8;
    self[86]._os_unfair_lock_opaque = (os_unfair_lock_opaque & 1) == 0;
    os_unfair_lock_unlock(self + 87);
  }
}

- (id)copyCameraStatesForPTS:(id *)s
{
  os_unfair_lock_lock(&self->_stillCaptureQueueLock);
  v5 = 0;
  stillCaptureQueue = self->_stillCaptureQueue;
  var0 = s->var0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = 1;
  v10 = 72;
  while (1)
  {
    v11 = v9;
    v12 = *(&stillCaptureQueue->pts.value + v5 * v10);
    v13 = var0 - v12;
    if (var0 == v12)
    {
      break;
    }

    if (v13 < 0)
    {
      v13 = v12 - var0;
    }

    if (v8 > v13)
    {
      OUTLINED_FUNCTION_5_35();
      v8 = v14;
    }

    v9 = 0;
    v5 = 1;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_5_35();
  return 0;
}

- (void)_supportedOutputPixelFormats
{
  if (!self)
  {
    return 0;
  }

  if (*(self + 553))
  {
    return &unk_1F2248478;
  }

  v2 = [MEMORY[0x1E695DF70] arrayWithArray:{FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F2248460, *(self + 476))}];
  v3 = [objc_msgSend(objc_msgSend(objc_msgSend(*(self + 128) "allValues")];
  if (v3)
  {
    IsFullRange = FigCapturePixelFormatIsFullRange(v3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__BWCinematicFramingNode__supportedOutputPixelFormats__block_invoke;
    v6[3] = &__block_descriptor_33_e35_B24__0__NSNumber_8__NSDictionary_16l;
    v7 = IsFullRange;
    [v2 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v6)}];
  }

  return v2;
}

@end