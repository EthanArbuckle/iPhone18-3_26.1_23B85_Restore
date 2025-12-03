@interface BWPixelTransferNode
+ (void)initialize;
- (BOOL)_zeroFillBuffers;
- (BOOL)hasNonLiveConfigurationChanges;
- (BWPixelTransferNode)initWithfractionalSourceRectEnabled:(BOOL)enabled;
- (CGFloat)_getUpdatedPrimaryCaptureRectForOutputSampleBuffer:(uint64_t)buffer inputDimensions:(CMAttachmentBearerRef)target;
- (CGRect)inputCropRect;
- (int)maxLossyCompressionLevel;
- (uint64_t)_convertUsingHDRProcessing:(__CVBuffer *)processing toSDR:;
- (uint64_t)_emitIfMarkerBuffer:(uint64_t)result;
- (uint64_t)_ensureDeviceOrientationMonitor;
- (uint64_t)_ensureIntermediatePoolWithDimensions:(uint64_t)dimensions;
- (uint64_t)_ensureRotationSession;
- (uint64_t)_ensureTransferSession;
- (uint64_t)_intermediateBufferDimensionsForInputDimensions:(uint64_t)dimensions outputDimensions:;
- (uint64_t)_makeCurrentConfigurationLive;
- (uint64_t)_supportedOutputPixelFormats;
- (uint64_t)_updateInputRequirements;
- (uint64_t)_updateLiveRotationAndFlipsToApplyUprightExifOrientation:(uint64_t)result;
- (uint64_t)_updateMetadataForOutputSampleBuffer:(uint64_t)result destinationRect:;
- (uint64_t)_updateOutputRequirements;
- (uint64_t)_updatePassthroughModes;
- (unsigned)_updateLiveDeviceOrientationAffectedMetadataForOutputSampleBuffer:(double)buffer inputDims:(double)dims inputCropRect:(double)rect;
- (void)_ensureIntermediatePixelBufferForStillHDRToSDRConversionIfNeeded;
- (void)_updatePrimaryCaptureRect:(uint64_t)rect forOutputSampleBuffer:(const void *)buffer;
- (void)_updateUprightExifOrientationOnSampleBufferIfNeeded:(uint64_t)needed;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setAllows422To420Conversion:(BOOL)conversion;
- (void)setConversionMethodForStillImagesDuringHDRVideos:(int)videos;
- (void)setCropMode:(int)mode;
- (void)setEmitSampleBufferSemaphore:(id)semaphore;
- (void)setMaxInputLossyCompressionLevel:(int)level;
- (void)setMaxLossyCompressionLevel:(int)level;
- (void)setMaxOutputLossyCompressionLevel:(int)level;
- (void)setOutputColorSpaceProperties:(int)properties;
- (void)setOutputHeight:(unint64_t)height;
- (void)setOutputPixelFormat:(unsigned int)format;
- (void)setOutputWidth:(unint64_t)width;
- (void)setPassesBuffersThroughWhenPossible:(BOOL)possible;
- (void)setPreferredOutputPixelFormats:(id)formats;
@end

@implementation BWPixelTransferNode

- (uint64_t)_updateOutputRequirements
{
  if (result)
  {
    v1 = result;
    formatRequirements = [*(result + 16) formatRequirements];
    videoFormat = [*(v1 + 8) videoFormat];
    v4 = videoFormat;
    width = *(v1 + 240);
    if (!width)
    {
      width = [videoFormat width];
    }

    [formatRequirements setWidth:width];
    height = *(v1 + 248);
    if (!height)
    {
      height = [v4 height];
    }

    [formatRequirements setHeight:height];
    if (*(v1 + 256))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
      result = [OUTLINED_FUNCTION_17() setSupportedPixelFormats:?];
    }

    else
    {
      [(BWPixelTransferNode *)v1 _supportedOutputPixelFormats];
      [OUTLINED_FUNCTION_17() setSupportedPixelFormats:?];
      result = [formatRequirements setPreferredPixelFormats:*(v1 + 264)];
    }

    if (*(v1 + 272))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:?];
      v7 = &v9;
    }

    else
    {
      if (!v4)
      {
        return result;
      }

      [v4 colorSpaceProperties];
      v8 = [OUTLINED_FUNCTION_4() numberWithInt:?];
      v7 = &v8;
    }

    [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    return [OUTLINED_FUNCTION_17() setSupportedColorSpaceProperties:?];
  }

  return result;
}

- (uint64_t)_supportedOutputPixelFormats
{
  if (!self)
  {
    return 0;
  }

  v2 = ptn_supportedPixelFormats(*(self + 292));
  v3 = [objc_msgSend(*(self + 8) "videoFormat")];
  if (v3)
  {
    v4 = v3;
    if (FigCapturePixelFormatIsDepthData(v3))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
      return [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    }

    else
    {
      IsFullRange = FigCapturePixelFormatIsFullRange(v4);
      IsTenBit = FigCapturePixelFormatIsTenBit(v4);
      v7 = FigCapturePixelFormatIs422(v4);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __51__BWPixelTransferNode__supportedOutputPixelFormats__block_invoke;
      v9[3] = &unk_1E79902F0;
      v9[4] = self;
      v10 = IsTenBit & (IsFullRange ^ 1);
      v11 = IsFullRange & 1;
      v12 = IsTenBit;
      v13 = v7;
      [MEMORY[0x1E696AE18] predicateWithBlock:v9];
      [OUTLINED_FUNCTION_17() filterUsingPredicate:?];
    }
  }

  return v2;
}

- (uint64_t)_updateInputRequirements
{
  if (result)
  {
    v1 = result;
    formatRequirements = [*(result + 8) formatRequirements];
    v3 = ptn_supportedPixelFormats(*(v1 + 296));

    return [formatRequirements setSupportedPixelFormats:v3];
  }

  return result;
}

- (uint64_t)_updatePassthroughModes
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 128) == 3)
  {
    v2 = *(result + 8);
    v3 = 1;
    v4 = 1;
  }

  else
  {
    v5 = *(result + 201);
    v2 = *(result + 8);
    if (v5 != 1)
    {
      [v2 setPassthroughMode:0];
      v3 = 0;
      goto LABEL_8;
    }

    v3 = 2;
    v4 = 2;
  }

  [v2 setPassthroughMode:v4];
LABEL_8:
  [*(v1 + 16) setPassthroughMode:v3];
  v6 = [*(v1 + 8) passthroughMode] != 0;
  v7 = *(v1 + 8);

  return [v7 setConversionToPassthroughModeNeverAllowed:v6];
}

BOOL __51__BWPixelTransferNode__supportedOutputPixelFormats__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 intValue];
  v5 = *(a1 + 32);
  if (*(v5 + 388) == 2 && [objc_msgSend(*(v5 + 8) "videoFormat")] && FigCapturePixelFormatGetCompressionType(v4))
  {
    return 0;
  }

  if (FigCapturePixelFormatIsFullRange(v4))
  {
    v6 = FigCaptureVideoRangePixelFormatForPixelFormat(v4);
  }

  else
  {
    v6 = FigCaptureFullRangePixelFormatForPixelFormat(v4);
  }

  v7 = v6;
  if (([*(*(a1 + 32) + 264) containsObject:a2] & 1) != 0 || *(*(a1 + 32) + 256) == v4)
  {
    if (FigCapturePixelFormatIsTenBit(v4))
    {
      v8 = 1;
    }

    else
    {
      v8 = FigCapturePixelFormatIsFullRange(v4) ^ 1;
    }

    v9 = *(a1 + 32);
    if (*(v9 + 393) == 1)
    {
      v10 = *(a1 + 40) ^ 1 | v8;
    }

    else
    {
      v10 = 1;
    }

    if (v7 == v4 || ([*(v9 + 264) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v7)}] & v10) != 1)
    {
      return 1;
    }

    IsFullRange = FigCapturePixelFormatIsFullRange(v4);
    v12 = *(a1 + 41);
  }

  else
  {
    if (*(a1 + 41) != FigCapturePixelFormatIsFullRange(v4) || *(a1 + 42) != FigCapturePixelFormatIsTenBit(v4))
    {
      return 0;
    }

    if (*(*(a1 + 32) + 392))
    {
      return 1;
    }

    IsFullRange = FigCapturePixelFormatIs422(v4);
    v12 = *(a1 + 43);
  }

  return v12 == IsFullRange;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWPixelTransferNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  [(BWPixelTransferNode *)self _ensureIntermediatePixelBufferForStillHDRToSDRConversionIfNeeded];
}

- (void)_ensureIntermediatePixelBufferForStillHDRToSDRConversionIfNeeded
{
  v2 = *(self + 400);
  if (v2)
  {
    CFRelease(v2);
    *(self + 400) = 0;
  }
}

- (BOOL)_zeroFillBuffers
{
  if (result)
  {
    v1 = result;
    return ([objc_msgSend(*(result + 16) "videoFormat")] & 1) == 0 && FigCapturePixelFormatGetCompressionType(objc_msgSend(objc_msgSend(*(v1 + 16), "videoFormat"), "pixelFormat")) == 0;
  }

  return result;
}

- (uint64_t)_makeCurrentConfigurationLive
{
  if (result)
  {
    v1 = result;
    *(result + 132) = *(result + 128);
    *(result + 200) = !CGRectEqualToRect(*(result + 136), *MEMORY[0x1E695F058]);
    v2 = *(v1 + 152);
    *(v1 + 168) = *(v1 + 136);
    *(v1 + 184) = v2;
    *(v1 + 202) = *(v1 + 201);
    *(v1 + 239) = *(v1 + 238);
    *(v1 + 284) = *(v1 + 276);
    *(v1 + 204) = *(v1 + 203);
    *(v1 + 212) = *(v1 + 208);
    *(v1 + 217) = *(v1 + 216);
    *(v1 + 219) = *(v1 + 218);
    result = [(BWPixelTransferNode *)v1 _zeroFillBuffers];
    *(v1 + 220) = result;
    *(v1 + 222) = *(v1 + 221);
    *(v1 + 237) = *(v1 + 236);
    *(v1 + 385) = *(v1 + 384);
    if (*(v1 + 200) == 1 && *(v1 + 432) == 1)
    {
      if (dword_1ED844550)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_4();
        return fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return result;
}

- (uint64_t)_ensureRotationSession
{
  v1 = result;
  if (*(result + 316) != *(result + 217))
  {
    OUTLINED_FUNCTION_10_10();
    [MEMORY[0x1E696AD98] numberWithBool:?];
    v2 = OUTLINED_FUNCTION_1_25();
    result = VTSessionSetProperty(v2, v3, v4);
    *(v1 + 316) = *(v1 + 217);
  }

  if (*(v1 + 317) != *(v1 + 219))
  {
    OUTLINED_FUNCTION_10_10();
    [MEMORY[0x1E696AD98] numberWithBool:?];
    v5 = OUTLINED_FUNCTION_1_25();
    result = VTSessionSetProperty(v5, v6, v7);
    *(v1 + 317) = *(v1 + 219);
  }

  if (*(v1 + 318) != *(v1 + 220))
  {
    OUTLINED_FUNCTION_10_10();
    [MEMORY[0x1E696AD98] numberWithBool:?];
    v8 = OUTLINED_FUNCTION_1_25();
    result = VTSessionSetProperty(v8, v9, v10);
    *(v1 + 318) = *(v1 + 220);
  }

  if (*(v1 + 319) != *(v1 + 237))
  {
    if (*(v1 + 237))
    {
      v11 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v11 = MEMORY[0x1E695E4D0];
    }

    result = VTSessionSetProperty(*(v1 + 304), *MEMORY[0x1E6983D68], *v11);
    *(v1 + 319) = *(v1 + 237);
  }

  if (*(v1 + 324) != *(v1 + 272))
  {
    v12 = [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:?];
    [v12 objectForKeyedSubscript:*MEMORY[0x1E6965F98]];
    OUTLINED_FUNCTION_6_16();
    [v12 objectForKeyedSubscript:*MEMORY[0x1E6965D88]];
    OUTLINED_FUNCTION_6_16();
    [v12 objectForKeyedSubscript:*MEMORY[0x1E6965F30]];
    result = OUTLINED_FUNCTION_6_16();
    *(v1 + 324) = *(v1 + 272);
  }

  if (*(v1 + 320) != *(v1 + 387))
  {
    OUTLINED_FUNCTION_10_10();
    [MEMORY[0x1E696AD98] numberWithBool:?];
    v13 = OUTLINED_FUNCTION_1_25();
    result = VTSessionSetProperty(v13, v14, v15);
    *(v1 + 320) = *(v1 + 387);
  }

  if (*(v1 + 388) == 3)
  {
    videoFormat = [*(v1 + 8) videoFormat];
    videoFormat2 = [*(v1 + 16) videoFormat];
    if (([videoFormat isHLGColorSpace] & 1) != 0 && (objc_msgSend(videoFormat2, "isHLGColorSpace") & 1) == 0)
    {
      v18 = MEMORY[0x1E695E118];
      v19 = MEMORY[0x1E695E110];
    }

    else
    {
      v18 = MEMORY[0x1E695E110];
      v19 = MEMORY[0x1E695E118];
    }

    VTSessionSetProperty(*(v1 + 304), *MEMORY[0x1E6983D60], v19);
    return VTSessionSetProperty(*(v1 + 304), *MEMORY[0x1E6983D58], v18);
  }

  return result;
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

- (BWPixelTransferNode)initWithfractionalSourceRectEnabled:(BOOL)enabled
{
  v11.receiver = self;
  v11.super_class = BWPixelTransferNode;
  v4 = [(BWNode *)&v11 init];
  if (v4)
  {
    v6 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
    v7 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v6 setFormatRequirements:v7];

    [(BWNode *)v4 addInput:v6];
    [(BWFormatRequirements *)[(BWNodeInput *)v4->super._input formatRequirements] setSupportedPixelFormats:ptn_supportedPixelFormats(v4->_maxInputLossyCompressionLevel)];
    v8 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v4];
    v9 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v9 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedDisplayAccess]];
    [(BWVideoFormatRequirements *)v9 setPrewireBuffers:0];
    [(BWNodeOutput *)v8 setFormatRequirements:v9];
    [(BWNodeOutput *)v8 setIndexOfInputWhichDrivesThisOutput:0];

    [(BWNode *)v4 addOutput:v8];
    [(BWPixelTransferNode *)v4 _updateOutputRequirements];
    [(BWNode *)v4 setSupportsLiveReconfiguration:1];
    [(BWNode *)v4 setSupportsPrepareWhileRunning:1];
    v10 = [BWLimitedGMErrorLogger alloc];
    v4->_limitedGMErrorLogger = -[BWLimitedGMErrorLogger initWithName:maxLoggingCount:](v10, "initWithName:maxLoggingCount:", [MEMORY[0x1E696AEC0] stringWithFormat:@"PixelTransfer %p", v4], 10);
    v4->_fractionalSourceRectEnabled = enabled;
  }

  return v4;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  rotationSession = self->_rotationSession;
  if (rotationSession)
  {
    CFRelease(rotationSession);
  }

  transferSession = self->_transferSession;
  if (transferSession)
  {
    CFRelease(transferSession);
  }

  intermediatePixelBufferForStillHDRToSDRConversion = self->_intermediatePixelBufferForStillHDRToSDRConversion;
  if (intermediatePixelBufferForStillHDRToSDRConversion)
  {
    CFRelease(intermediatePixelBufferForStillHDRToSDRConversion);
  }

  msrScalerForHDRProcessing = self->_msrScalerForHDRProcessing;
  if (msrScalerForHDRProcessing)
  {
    CFRelease(msrScalerForHDRProcessing);
  }

  v8.receiver = self;
  v8.super_class = BWPixelTransferNode;
  [(BWNode *)&v8 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  if ([input passthroughMode])
  {
    -[BWNodeOutput setFormat:](self->super._output, "setFormat:", [input format]);
    if ([input passthroughMode] == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Passthrough %@", -[BWNode name](self, "name")];

      [(BWNode *)self setName:v6];
    }
  }

  else
  {
    self->_passesBuffersThroughWhenPossible = 0;

    [(BWPixelTransferNode *)self _updateOutputRequirements];
  }
}

- (BOOL)hasNonLiveConfigurationChanges
{
  v3 = [(BWFormat *)[(BWNodeOutput *)self->super._output liveFormat] isEqual:[(BWNodeOutput *)self->super._output format]];
  cropMode = self->_cropMode;
  liveCropMode = self->_liveCropMode;
  v6 = v3 & CGRectEqualToRect(self->_inputCropRect, self->_liveInputCropRect) ^ 1;
  if (cropMode != liveCropMode)
  {
    LOBYTE(v6) = 1;
  }

  if (self->_passesBuffersThroughWhenPossible != self->_livePassesBuffersThroughWhenPossible)
  {
    LOBYTE(v6) = 1;
  }

  v7 = self->_validOutputDimensions.width != self->_liveValidOutputDimensions.width || self->_validOutputDimensions.height != self->_liveValidOutputDimensions.height;
  v8 = v7 | v6;
  appliesUprightExifOrientationTransformToInput = self->_appliesUprightExifOrientationTransformToInput;
  if (appliesUprightExifOrientationTransformToInput == self->_liveAppliesUprightExifOrientationTransformToInput)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if (!appliesUprightExifOrientationTransformToInput)
  {
    v11 = self->_rotationDegrees == self->_liveRotationDegrees && self->_flipHorizontal == self->_liveFlipHorizontal;
    if (!v11 || self->_flipVertical != self->_liveFlipVertical)
    {
      v10 = 1;
    }
  }

  if (self->_liveZeroFillBuffers == [(BWPixelTransferNode *)self _zeroFillBuffers])
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (self->_lowSpeed == self->_liveLowSpeed)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  return self->_expectsMarkerBuffers != self->_liveExpectsMarkerBuffers || v14;
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (format)
  {
    outputFormatDescription = self->_outputFormatDescription;
    if (outputFormatDescription)
    {
      CFRelease(outputFormatDescription);
      self->_outputFormatDescription = 0;
    }
  }

  [(BWPixelTransferNode *)self _makeCurrentConfigurationLive];
  v10.receiver = self;
  v10.super_class = BWPixelTransferNode;
  [(BWNode *)&v10 configurationWithID:d updatedFormat:format didBecomeLiveForInput:input];
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (!d)
  {
    outputFormatDescription = self->_outputFormatDescription;
    if (outputFormatDescription)
    {
      CFRelease(outputFormatDescription);
      self->_outputFormatDescription = 0;
    }

    rotationSession = self->_rotationSession;
    if (rotationSession)
    {
      CFRelease(rotationSession);
      self->_rotationSession = 0;
    }

    transferSession = self->_transferSession;
    if (transferSession)
    {
      CFRelease(transferSession);
      self->_transferSession = 0;
    }

    self->_intermediateBufferPool = 0;
    [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor stop];

    self->_deviceOrientationMonitor = 0;
  }

  v10.receiver = self;
  v10.super_class = BWPixelTransferNode;
  [(BWNode *)&v10 didReachEndOfDataForConfigurationID:d input:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  bufferCopy = buffer;
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    BWGetOriginalPresentationTimeStampFromBuffer(buffer, &v387);
    time[0].origin = *&v387.value;
    *&time[0].size.width = v387.epoch;
    CMTimeGetSeconds(time);
    kdebug_trace();
  }

  if (self->_makeCurrentConfigurationLiveOnNextRenderCallback)
  {
    [BWPixelTransferNode renderSampleBuffer:&self->_makeCurrentConfigurationLiveOnNextRenderCallback forInput:?];
  }

  if (!self->_liveExpectsMarkerBuffers || ([(BWPixelTransferNode *)self _emitIfMarkerBuffer:bufferCopy]& 1) == 0)
  {
    if (self->_doGMLogging && dword_1ED844550 != 0)
    {
      LODWORD(origin.f64[0]) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = LODWORD(origin.f64[0]);
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        name = [(BWNode *)self name];
        CMSampleBufferGetPresentationTimeStamp(time, bufferCopy);
        Seconds = CMTimeGetSeconds(time);
        LODWORD(v387.value) = 136315906;
        *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
        LOWORD(v387.flags) = 2112;
        *(&v387.flags + 2) = name;
        HIWORD(v387.epoch) = 2048;
        selfCopy22 = self;
        v389 = 2048;
        *v390 = Seconds;
        LODWORD(v345) = 42;
        v341 = &v387;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    emitSampleBufferSemaphore = self->_emitSampleBufferSemaphore;
    if (emitSampleBufferSemaphore)
    {
      dispatch_semaphore_wait(emitSampleBufferSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    }

    v378 = *(MEMORY[0x1E695F058] + 16);
    v381 = *MEMORY[0x1E695F058];
    origin = *MEMORY[0x1E695F058];
    v397 = v378;
    pixelBuffer = CMSampleBufferGetImageBuffer(bufferCopy);
    fractionalSourceRectEnabled = self->_fractionalSourceRectEnabled;
    *type = 0;
    liveCropMode = self->_liveCropMode;
    if (liveCropMode == 2)
    {
      if (!CMGetAttachment(bufferCopy, *off_1E798A3C8, 0) || !FigCFDictionaryGetCGRectIfPresent())
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (liveCropMode == 1)
      {
        v28 = CMGetAttachment(bufferCopy, *off_1E798A3C8, 0);
        if (v28)
        {
          v29 = v28;
          v30 = *off_1E798A5C8;
          if (FigCFDictionaryGetCGRectIfPresent())
          {
            rect = origin;
            v31 = v397.f64[1];
            Width = CVPixelBufferGetWidth(pixelBuffer);
            Height = CVPixelBufferGetHeight(pixelBuffer);
            v34.i64[0] = Width;
            v34.i64[1] = Height;
            v35 = vcvtq_f64_u64(v34);
            v36 = vmulq_f64(origin, v35);
            if (fractionalSourceRectEnabled)
            {
              v37 = vmulq_f64(v397, v35);
            }

            else
            {
              __asm { FMOV            V2.2D, #0.5 }

              v45 = vrndaq_f64(vmulq_f64(v36, _Q2));
              v36 = vaddq_f64(v45, v45);
              v46 = vrndaq_f64(vmulq_f64(vmulq_f64(v397, v35), _Q2));
              v37 = vaddq_f64(v46, v46);
            }

            origin = v36;
            v397 = v37;
            CFDictionaryRemoveValue(v29, v30);
            if (self->_liveUpdatesSampleBufferMetadataForIrisVIS)
            {
              LODWORD(v387.value) = 0;
              v47 = *off_1E798B328;
              if (FigCFDictionaryGetInt32IfPresent())
              {
                CFDictionarySetValue(v29, v47, [MEMORY[0x1E696AD98] numberWithInt:(v31 * SLODWORD(v387.value))]);
              }

              time[0].origin = v381;
              time[0].size = v378;
              if (FigCFDictionaryGetCGRectIfPresent())
              {
                *v394 = 0;
                FigCFDictionaryGetInt32IfPresent();
                FigCFDictionaryGetInt32IfPresent();
                v48 = vmulq_f64(rect, time[0].size);
                _D4 = 2.0;
                time[0].origin = vaddq_f64(time[0].origin, vbslq_s8(vcltzq_f64(v48), vrndpq_f64(v48), vrndmq_f64(v48)));
                __asm { FMLS            D3, D4, V0.D[1] }

                time[0].size.width = *&v394[4] - 2.0 * time[0].origin.x;
                time[0].size.height = _D3;
                FigCFDictionarySetCGRect();
              }
            }

            goto LABEL_44;
          }
        }

        goto LABEL_33;
      }

      if (liveCropMode)
      {
        goto LABEL_33;
      }

      haveLiveInputCropRect = self->_haveLiveInputCropRect;
      size = self->_liveInputCropRect.size;
      origin = self->_liveInputCropRect.origin;
      v397 = size;
      if ([(BWPixelTransferNode *)self appliesPrimaryCaptureRect])
      {
        v17 = *off_1E798A430;
        v18 = CMGetAttachment(bufferCopy, *off_1E798A430, 0);
        if (v18)
        {
          v19 = v18;
          memset(time, 0, 32);
          v20 = CVPixelBufferGetWidth(pixelBuffer);
          v21 = CVPixelBufferGetHeight(pixelBuffer);
          CGRectMakeWithDictionaryRepresentation(v19, time);
          FigCaptureMetadataUtilitiesDenormalizeCropRect(time[0].origin.x, time[0].origin.y, time[0].size.width, time[0].size.height);
          time[0].origin.x = v22;
          time[0].origin.y = v23;
          time[0].size.width = v24;
          time[0].size.height = v25;
          CMSetAttachment(bufferCopy, v17, 0, 1u);
          if (haveLiveInputCropRect)
          {
            v26 = v397.f64[0];
            v27 = v397.f64[1];
          }

          else
          {
            v26 = v20;
            v27 = v21;
          }

          origin.f64[0] = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(time[0].origin.x, time[0].origin.y, time[0].size.width, time[0].size.height, v26 / v27);
          origin.f64[1] = v51;
          v397.f64[0] = v52;
          v397.f64[1] = v53;
          goto LABEL_44;
        }
      }

      if (!haveLiveInputCropRect)
      {
LABEL_33:
        v38 = CVPixelBufferGetWidth(pixelBuffer);
        v39 = 0;
        v40 = CVPixelBufferGetHeight(pixelBuffer);
        goto LABEL_45;
      }
    }

LABEL_44:
    v38 = v397.f64[0];
    v40 = v397.f64[1];
    v39 = 1;
LABEL_45:
    if (!self->_liveDeviceOrientationCorrectionEnabled)
    {
      goto LABEL_46;
    }

    [(BWPixelTransferNode *)self _ensureDeviceOrientationMonitor];
    v180 = CMGetAttachment(bufferCopy, *off_1E798A3C8, 0);
    v181 = [v180 objectForKeyedSubscript:*off_1E798B540];
    v372 = v39;
    if ([v181 isEqualToString:*off_1E798A0E0])
    {
      v182 = 1;
    }

    else
    {
      v182 = [v181 isEqualToString:*off_1E798A0F8];
    }

    IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([objc_msgSend(v180 objectForKeyedSubscript:{*off_1E798B238, v341, v345), "integerValue"}]);
    mostRecentPortraitLandscapeOrientation = [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor mostRecentPortraitLandscapeOrientation];
    liveRotationDegrees = [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor rotationDegreesFromOrientation:mostRecentPortraitLandscapeOrientation isFrontCamera:v182 isExternalCamera:IsExtensionDeviceType isMirrored:0 clientExpectsCameraMountedInLandscapeOrientation:[(BWGraph *)[(BWNode *)self graph] clientExpectsCameraMountedInLandscapeOrientation]];
    self->_liveRotationDegrees = liveRotationDegrees;
    if (self->_prevLiveDeviceOrientationCorrectionDegrees == liveRotationDegrees)
    {
      v6 = MEMORY[0x1E695FF58];
    }

    else
    {
      v6 = MEMORY[0x1E695FF58];
      if (dword_1ED844550)
      {
        v385 = bufferCopy;
        *&v394[4] = 0;
        v394[0] = OS_LOG_TYPE_DEFAULT;
        v206 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v207 = *&v394[4];
        if (os_log_type_enabled(v206, v394[0]))
        {
          v208 = v207;
        }

        else
        {
          v208 = v207 & 0xFFFFFFFE;
        }

        if (v208)
        {
          name2 = [(BWNode *)self name];
          LODWORD(v387.value) = 136315906;
          *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
          LOWORD(v387.flags) = 2112;
          *(&v387.flags + 2) = name2;
          HIWORD(v387.epoch) = 2048;
          selfCopy22 = self;
          v389 = 1024;
          *v390 = mostRecentPortraitLandscapeOrientation;
          LODWORD(v345) = 38;
          v341 = &v387;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v6 = MEMORY[0x1E695FF58];
        bufferCopy = v385;
        if (dword_1ED844550)
        {
          v237 = MEMORY[0x1E695FF58];
          *&v394[4] = 0;
          v394[0] = OS_LOG_TYPE_DEFAULT;
          v238 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v239 = *&v394[4];
          if (os_log_type_enabled(v238, v394[0]))
          {
            v240 = v239;
          }

          else
          {
            v240 = v239 & 0xFFFFFFFE;
          }

          if (v240)
          {
            name3 = [(BWNode *)self name];
            LODWORD(v387.value) = 136315906;
            *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
            LOWORD(v387.flags) = 2112;
            *(&v387.flags + 2) = name3;
            HIWORD(v387.epoch) = 2048;
            selfCopy22 = self;
            v389 = 1024;
            *v390 = liveRotationDegrees;
            LODWORD(v345) = 38;
            v341 = &v387;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          bufferCopy = v385;
          v6 = v237;
        }
      }

      self->_doGMLogging = 1;
      liveRotationDegrees = self->_liveRotationDegrees;
      self->_prevLiveDeviceOrientationCorrectionDegrees = liveRotationDegrees;
    }

    v39 = v372;
    if (liveRotationDegrees)
    {
      v298 = v40;
      v299 = v38;
      if (liveRotationDegrees != 90)
      {
        v298 = v40;
        v299 = v38;
        if (liveRotationDegrees != 270)
        {
          v298 = v38;
          v299 = v40;
        }
      }

      origin.f64[0] = FigCaptureMakeRectWithAspectRatioInsideDimensions(v38 | (v40 << 32), 0, v298 / v299);
      origin.f64[1] = v300;
      v397.f64[0] = v301;
      v397.f64[1] = v302;
      v39 = 1;
      if (!self->_doGMLogging || !dword_1ED844550)
      {
LABEL_46:
        if (self->_liveCropMode == 3 && [(BWNodeInput *)self->super._input passthroughMode]== 1 && [(BWNodeOutput *)self->super._output passthroughMode]== 1 || (v39 & 1) == 0 && self->_livePassesBuffersThroughWhenPossible)
        {
          if (self->_doGMLogging && dword_1ED844550)
          {
            *&v394[4] = 0;
            v394[0] = OS_LOG_TYPE_DEFAULT;
            v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v55 = *&v394[4];
            if (os_log_type_enabled(v54, v394[0]))
            {
              v56 = v55;
            }

            else
            {
              v56 = v55 & 0xFFFFFFFE;
            }

            if (v56)
            {
              name4 = [(BWNode *)self name];
              CMSampleBufferGetPresentationTimeStamp(time, bufferCopy);
              v58 = CMTimeGetSeconds(time);
              LODWORD(v387.value) = 136315906;
              *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
              LOWORD(v387.flags) = 2112;
              *(&v387.flags + 2) = name4;
              HIWORD(v387.epoch) = 2048;
              selfCopy22 = self;
              v389 = 2048;
              *v390 = v58;
              LODWORD(v345) = 42;
              v341 = &v387;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          self->_doGMLogging = 0;
          [(BWNodeOutput *)self->super._output emitSampleBuffer:bufferCopy, v341, v345];
          LODWORD(v179) = 0;
LABEL_296:
          if (*type)
          {
            CFRelease(*type);
          }

          if (v179)
          {
            CMSampleBufferGetPresentationTimeStamp(time, bufferCopy);
            v297 = [BWDroppedSample newDroppedSampleWithReason:0x1F219BF10 pts:time];
            [(BWNodeOutput *)self->super._output emitDroppedSample:v297];
          }

          if (*v6 == 1)
          {
            kdebug_trace();
          }

          return;
        }

        if (self->_liveAppliesUprightExifOrientationTransformToInput)
        {
          v210 = [CMGetAttachment(bufferCopy @"UprightExifOrientation"];
          [(BWPixelTransferNode *)self _updateLiveRotationAndFlipsToApplyUprightExifOrientation:v210];
        }

        newPixelBuffer = [(BWPixelBufferPool *)[(BWNodeOutput *)self->super._output livePixelBufferPool:v341] newPixelBuffer];
        if (newPixelBuffer)
        {
          BWCMSampleBufferCreateCopyWithNewPixelBuffer(bufferCopy, newPixelBuffer, &self->_outputFormatDescription, type);
        }

        if (*type)
        {
          v60 = CVPixelBufferGetWidth(newPixelBuffer);
          destinationBuffer = newPixelBuffer;
          v61 = CVPixelBufferGetHeight(newPixelBuffer);
          v62 = v38;
          v379 = [BWPixelTransferNode _getUpdatedPrimaryCaptureRectForOutputSampleBuffer:*type inputDimensions:?];
          v373 = v64;
          recta = v63;
          v66 = v65;
          if (v39)
          {
            v382 = origin.f64[1];
            v368 = origin.f64[0];
            v68 = v397.f64[1];
            v67 = v397.f64[0];
          }

          else
          {
            v67 = v38;
            v68 = v40;
            v382 = 0.0;
            v368 = 0.0;
          }

          LOBYTE(time[0].origin.x) = 0;
          v69 = ptn_rotationDegreesAndMirroringFromLiveConfiguration(self->_liveRotationDegrees, self->_liveFlipHorizontal, self->_liveFlipVertical, time);
          v399.origin.x = v379;
          v399.origin.y = v66;
          v399.size.width = recta;
          v399.size.height = v373;
          IsNull = CGRectIsNull(v399);
          v71 = 0.0;
          if (IsNull)
          {
            v72 = v61;
            v73 = v60;
            v74 = v60;
            v75 = 0.0;
            v76 = v61;
            v77 = v382;
            v78 = v368;
          }

          else
          {
            v369 = FigCaptureMetadataUtilitiesRectDenormalizedToRect(v379, v66, recta, v373, v368, v382, v67);
            v383 = v79;
            v67 = v80;
            v68 = v81;
            v73 = v60;
            v82 = FigCaptureMetadataUtilitiesRectDenormalizedToRect(v379, v66, recta, v373, 0.0, 0.0, v60);
            v78 = v369;
            v77 = v383;
            v75 = v82;
            v71 = v83;
            v74 = v84;
            v72 = v85;
            v76 = v61;
          }

          v86 = v60 | (v61 << 32);
          BWUpdateCameraIntrinsicsMatrixOnSampleBuffer(*type, *MEMORY[0x1E6960470], v69, LOBYTE(time[0].origin.x), v78, v77, v67, v68, v75, v71, v74, v72);
          v87 = *off_1E798A3C8;
          v384 = bufferCopy;
          CMGetAttachment(bufferCopy, *off_1E798A3C8, 0);
          time[0].origin.x = 1.0;
          FigCFDictionaryGetCGFloatIfPresent();
          v88 = self->_liveRotationDegrees;
          v89 = v73;
          if (v88 == 270 || (v90 = v76, v88 == 90))
          {
            v90 = v73;
          }

          time[0].origin.x = time[0].origin.x * v90 / v40;
          v91 = v373;
          if (time[0].origin.x > 1.0)
          {
            FigCFDictionarySetCGFloat();
          }

          v92 = [(BWPixelTransferNode *)self _intermediateBufferDimensionsForInputDimensions:v86 outputDimensions:?];
          cf = 0;
          v93 = HIDWORD(v92);
          if (!HIDWORD(v92) || (v94 = v92, !v92))
          {
            v118 = v39;
            goto LABEL_92;
          }

          v362 = origin;
          v370 = v397.f64[0];
          if (fractionalSourceRectEnabled)
          {
            *&v358 = v66;
            __asm { FMOV            V0.2D, #0.5 }

            v96 = vrndmq_f64(vmulq_f64(origin, _Q0));
            v97 = vaddq_f64(v96, v96);
            v98 = vrndpq_f64(vmulq_f64(vaddq_f64(v397, vsubq_f64(v97, v97)), _Q0));
            origin = v97;
            v397 = vaddq_f64(v98, v98);
            memset(time, 0, 32);
            v99 = *MEMORY[0x1E695F058];
            v100 = *(MEMORY[0x1E695F058] + 8);
            v101 = CVPixelBufferGetWidth(pixelBuffer);
            v102 = CVPixelBufferGetHeight(pixelBuffer);
            time[0].origin.x = v99;
            time[0].origin.y = v100;
            time[0].size.width = v101;
            time[0].size.height = v102;
            v103 = [CMGetAttachment(bufferCopy v87];
            CGRectMakeWithDictionaryRepresentation(v103, time);
            v104 = origin.f64[0];
            v105 = v397.f64[0];
            x = time[0].origin.x;
            y = time[0].origin.y;
            v109 = time[0].size.width;
            v108 = time[0].size.height;
            if (time[0].size.width < v397.f64[0])
            {
              v105 = time[0].size.width;
            }

            if (v105 >= 0.0)
            {
              v110 = v105;
            }

            else
            {
              v110 = 0.0;
            }

            if (time[0].size.height >= v397.f64[1])
            {
              v111 = v397.f64[1];
            }

            else
            {
              v111 = time[0].size.height;
            }

            if (v111 < 0.0)
            {
              v111 = 0.0;
            }

            v353 = origin.f64[1];
            v355 = v111;
            MinX = CGRectGetMinX(time[0]);
            v400.origin.x = x;
            v400.origin.y = y;
            v400.size.width = v109;
            v400.size.height = v108;
            cfa = v110;
            propertyKey = v104;
            if (CGRectGetMaxX(v400) - v110 < v104)
            {
              v401.origin.x = x;
              v401.origin.y = y;
              v401.size.width = v109;
              v401.size.height = v108;
              v104 = CGRectGetMaxX(v401) - v110;
            }

            v112 = x;
            if (MinX <= v104)
            {
              v242 = y;
              v243 = v109;
              v244 = v108;
              v117 = v353;
              v116 = v355;
              if (CGRectGetMaxX(*&v112) - cfa < propertyKey)
              {
                v405.origin.x = x;
                v405.origin.y = y;
                v405.size.width = v109;
                v405.size.height = v108;
                propertyKey = CGRectGetMaxX(v405) - cfa;
              }
            }

            else
            {
              v113 = y;
              v114 = v109;
              v115 = v108;
              propertyKey = CGRectGetMinX(*&v112);
              v117 = v353;
              v116 = v355;
            }

            v406.origin.x = x;
            v406.origin.y = y;
            v406.size.width = v109;
            v406.size.height = v108;
            MinY = CGRectGetMinY(v406);
            v407.origin.x = x;
            v407.origin.y = y;
            v407.size.width = v109;
            v407.size.height = v108;
            _NF = CGRectGetMaxY(v407) - v116 < v117;
            v245 = v117;
            if (_NF)
            {
              v408.origin.x = x;
              v408.origin.y = y;
              v408.size.width = v109;
              v408.size.height = v108;
              v245 = CGRectGetMaxY(v408) - v116;
            }

            if (MinY <= v245)
            {
              v410.origin.x = x;
              v410.origin.y = y;
              v410.size.width = v109;
              v410.size.height = v108;
              if (CGRectGetMaxY(v410) - v116 < v117)
              {
                v411.origin.x = x;
                v411.origin.y = y;
                v411.size.width = v109;
                v411.size.height = v108;
                v117 = CGRectGetMaxY(v411) - v116;
              }
            }

            else
            {
              v409.origin.x = x;
              v409.origin.y = y;
              v409.size.width = v109;
              v409.size.height = v108;
              v117 = CGRectGetMinY(v409);
            }

            origin.f64[0] = propertyKey;
            origin.f64[1] = v117;
            v397.f64[0] = cfa;
            v397.f64[1] = v116;
            v66 = *&v358;
            v91 = v373;
          }

          [(BWPixelTransferNode *)self _ensureIntermediatePoolWithDimensions:v94];
          [(BWPixelTransferNode *)self _ensureTransferSession];
          cf = [(BWPixelBufferPool *)self->_intermediateBufferPool newPixelBuffer];
          if (cf)
          {
            if (v39)
            {
              v246 = v397.f64[0];
              if (v397.f64[0] < 16.0)
              {
                v397.f64[0] = 16.0;
                v247 = origin.f64[0] - ((16 - v246) / 2);
                if (v247 < 0.0)
                {
                  v247 = 0.0;
                }

                origin.f64[0] = v247;
              }

              v248 = v397.f64[1];
              if (v397.f64[1] < 16.0)
              {
                v397.f64[1] = 16.0;
                v249 = origin.f64[1] - ((16 - v248) / 2);
                if (v249 < 0.0)
                {
                  v249 = 0.0;
                }

                origin.f64[1] = v249;
              }

              PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
              IsTenBitPacked = FigCapturePixelFormatIsTenBitPacked(PixelFormatType);
              v252 = origin.f64[0];
              if (IsTenBitPacked)
              {
                v253 = origin.f64[0];
                v252 = FigCaptureRoundFloatToMultipleOf(6, v253);
                origin.f64[0] = v252;
              }

              v254 = origin.f64[1];
              v255 = v397;
              DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*&v252);
              if (self->_doGMLogging && dword_1ED844550)
              {
                *&v394[4] = 0;
                v394[0] = OS_LOG_TYPE_DEFAULT;
                v257 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v258 = *&v394[4];
                if (os_log_type_enabled(v257, v394[0]))
                {
                  v259 = v258;
                }

                else
                {
                  v259 = v258 & 0xFFFFFFFE;
                }

                if (v259)
                {
                  name5 = [(BWNode *)self name];
                  v261 = BWStringFromCGRect(origin.f64[0], origin.f64[1], v397.f64[0], v397.f64[1]);
                  LODWORD(v387.value) = 136316418;
                  *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v387.flags) = 2112;
                  *(&v387.flags + 2) = name5;
                  HIWORD(v387.epoch) = 2048;
                  selfCopy22 = self;
                  v389 = 2112;
                  *v390 = v261;
                  *&v390[8] = 1024;
                  *&v390[10] = v94;
                  *&v390[14] = 1024;
                  *&v390[16] = v93;
                  LODWORD(v346) = 54;
                  v342 = &v387;
                  _os_log_send_and_compose_impl();
                }

                bufferCopy = v384;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              DictionaryRepresentation = 0;
            }

            v179 = VTSessionSetProperty(self->_transferSession, *MEMORY[0x1E6983E40], DictionaryRepresentation);
            if (v179)
            {
              limitedGMErrorLogger = self->_limitedGMErrorLogger;
              v314 = MEMORY[0x1E696AEC0];
              name6 = [(BWNode *)self name];
              v315 = v314;
              bufferCopy = v384;
              -[BWLimitedGMErrorLogger logErrorNumber:errorString:](limitedGMErrorLogger, "logErrorNumber:errorString:", v179, [v315 stringWithFormat:@"%@: %p: %p: setting source crop rect transfer property to %@", name6, self, self->_transferSession, DictionaryRepresentation]);
            }

            if (DictionaryRepresentation)
            {
              CFRelease(DictionaryRepresentation);
            }

            if (v179)
            {
              [BWPixelTransferNode renderSampleBuffer:forInput:];
              v296 = cf;
              goto LABEL_361;
            }

            v316 = VTPixelTransferSessionTransferImage(self->_transferSession, pixelBuffer, cf);
            v179 = v316;
            doGMLogging = self->_doGMLogging;
            v318 = dword_1ED844550;
            if (doGMLogging && dword_1ED844550)
            {
              v319 = v316;
              *&v394[4] = 0;
              v394[0] = OS_LOG_TYPE_DEFAULT;
              v320 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v321 = *&v394[4];
              if (os_log_type_enabled(v320, v394[0]))
              {
                v322 = v321;
              }

              else
              {
                v322 = v321 & 0xFFFFFFFE;
              }

              if (v322)
              {
                name7 = [(BWNode *)self name];
                transferSession = self->_transferSession;
                LODWORD(v387.value) = 136316162;
                *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                LOWORD(v387.flags) = 2112;
                *(&v387.flags + 2) = name7;
                HIWORD(v387.epoch) = 2048;
                selfCopy22 = self;
                v389 = 1024;
                *v390 = v319;
                *&v390[4] = 2112;
                *&v390[6] = transferSession;
                LODWORD(v346) = 48;
                v342 = &v387;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v318 = dword_1ED844550;
              LOBYTE(doGMLogging) = self->_doGMLogging;
              bufferCopy = v384;
              v179 = v319;
            }

            if (doGMLogging && v318)
            {
              v325 = v179;
              *&v394[4] = 0;
              v394[0] = OS_LOG_TYPE_DEFAULT;
              v326 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v327 = *&v394[4];
              if (os_log_type_enabled(v326, v394[0]))
              {
                v328 = v327;
              }

              else
              {
                v328 = v327 & 0xFFFFFFFE;
              }

              if (v328)
              {
                name8 = [(BWNode *)self name];
                LODWORD(v387.value) = 136315906;
                *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                LOWORD(v387.flags) = 2112;
                *(&v387.flags + 2) = name8;
                HIWORD(v387.epoch) = 2048;
                selfCopy22 = self;
                v389 = 2112;
                *v390 = pixelBuffer;
                LODWORD(v346) = 42;
                v342 = &v387;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v318 = dword_1ED844550;
              LOBYTE(doGMLogging) = self->_doGMLogging;
              bufferCopy = v384;
              v179 = v325;
            }

            if (doGMLogging && v318)
            {
              v330 = v179;
              *&v394[4] = 0;
              v394[0] = OS_LOG_TYPE_DEFAULT;
              v331 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v332 = *&v394[4];
              if (os_log_type_enabled(v331, v394[0]))
              {
                v333 = v332;
              }

              else
              {
                v333 = v332 & 0xFFFFFFFE;
              }

              if (v333)
              {
                name9 = [(BWNode *)self name];
                LODWORD(v387.value) = 136315906;
                *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                LOWORD(v387.flags) = 2112;
                *(&v387.flags + 2) = name9;
                HIWORD(v387.epoch) = 2048;
                selfCopy22 = self;
                v389 = 2112;
                *v390 = cf;
                LODWORD(v346) = 42;
                v342 = &v387;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              bufferCopy = v384;
              v179 = v330;
            }

            if (v179)
            {
              v335 = self->_limitedGMErrorLogger;
              v336 = MEMORY[0x1E696AEC0];
              name10 = [(BWNode *)self name];
              CMSampleBufferGetPresentationTimeStamp(time, bufferCopy);
              v296 = cf;
              -[BWLimitedGMErrorLogger logErrorNumber:errorString:](v335, "logErrorNumber:errorString:", v179, [v336 stringWithFormat:@"%@: %p: %.4lf: %p: transferring from %p to %p", name10, self, CMTimeGetSeconds(time), self->_transferSession, pixelBuffer, cf]);
              FigDebugAssert3();
LABEL_361:
              newPixelBuffer = destinationBuffer;
              v6 = MEMORY[0x1E695FF58];
LABEL_293:
              CFRelease(v296);
              goto LABEL_294;
            }

            if (fractionalSourceRectEnabled)
            {
              origin.f64[0] = ptn_rectBoundedByDimensions(v94, v94 / v397.f64[0] * (v362.f64[0] - origin.f64[0]), v93 / v397.f64[1] * (v362.f64[1] - origin.f64[1]), v94 / v397.f64[0] * v370);
              origin.f64[1] = v338;
              v397.f64[0] = v339;
              v397.f64[1] = v340;
              v118 = 1;
            }

            else
            {
              v118 = 0;
            }

            pixelBuffer = cf;
LABEL_92:
            [(BWPixelTransferNode *)self _ensureRotationSession];
            if (self->_generatesHistogram)
            {
              v402.origin.x = v379;
              v402.origin.y = v66;
              v402.size.width = recta;
              v402.size.height = v91;
              v119 = CGRectIsNull(v402);
              v120 = 0.0;
              v121 = v76;
              v122 = v89;
              v123 = 0.0;
              if (!v119)
              {
                FigCaptureMetadataUtilitiesDenormalizeCropRect(v379, v66, recta, v91);
                v125 = v124;
                v127 = v126;
                v129 = v128;
                *&v130 = v130;
                v123 = FigCaptureRoundFloatToMultipleOf(2, *&v130);
                v131 = v125;
                v120 = FigCaptureRoundFloatToMultipleOf(2, v131);
                v132 = v127;
                v122 = FigCaptureRoundFloatToMultipleOf(2, v132);
                v133 = v129;
                v121 = FigCaptureRoundFloatToMultipleOf(2, v133);
              }

              v134 = v123;
              v135 = v120;
              v136 = v122;
              v137 = CGRectCreateDictionaryRepresentation(*(&v121 - 3));
              VTSessionSetProperty(self->_rotationSession, *MEMORY[0x1E6983D90], v137);
              if (v137)
              {
                CFRelease(v137);
              }
            }

            v371 = v118;
            if (v118)
            {
              v138 = 0.0;
              newPixelBuffer = destinationBuffer;
              if (self->_liveCropMode == 2 && (v139 = self->_liveValidOutputDimensions.width, v139 >= 1) && (v140 = self->_liveValidOutputDimensions.height, v140 >= 1))
              {
                v403.origin.x = 0.0;
                v403.origin.y = 0.0;
                v403.size.width = v89;
                v403.size.height = v76;
                v404 = CGRectInset(v403, (v89 - v139) * 0.5, (v76 - v140) * 0.5);
                v141 = v404.origin.y;
                v89 = v404.size.width;
                v76 = v404.size.height;
                *&v404.origin.x = v404.origin.x;
                v142 = FigCaptureRoundFloatToMultipleOf(2, *&v404.origin.x);
                v143 = v141;
                v138 = FigCaptureRoundFloatToMultipleOf(2, v143);
              }

              else
              {
                v142 = 0.0;
              }

              v158 = CVPixelBufferGetPixelFormatType(pixelBuffer);
              if (FigCapturePixelFormatIsTenBitPacked(v158))
              {
                v159 = origin.f64[0];
                origin.f64[0] = FigCaptureRoundFloatToMultipleOf(6, v159);
              }

              v160 = VTPixelRotationSessionRotateSubImage();
              v161 = self->_doGMLogging;
              v162 = dword_1ED844550;
              if (v161 && dword_1ED844550)
              {
                *&v394[4] = 0;
                v394[0] = OS_LOG_TYPE_DEFAULT;
                v163 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v164 = *&v394[4];
                if (os_log_type_enabled(v163, v394[0]))
                {
                  v165 = v164;
                }

                else
                {
                  v165 = v164 & 0xFFFFFFFE;
                }

                if (v165)
                {
                  name11 = [(BWNode *)self name];
                  v167 = v160;
                  v168 = BWStringFromCGRect(origin.f64[0], origin.f64[1], v397.f64[0], v397.f64[1]);
                  v169 = BWStringFromCGRect(v142, v138, v89, v76);
                  rotationSession = self->_rotationSession;
                  LODWORD(v387.value) = 136316674;
                  *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v387.flags) = 2112;
                  *(&v387.flags + 2) = name11;
                  HIWORD(v387.epoch) = 2048;
                  selfCopy22 = self;
                  v389 = 2112;
                  *v390 = v168;
                  v160 = v167;
                  *&v390[8] = 2112;
                  *&v390[10] = v169;
                  *&v390[18] = 1024;
                  v391 = v167;
                  v392 = 2112;
                  v393 = rotationSession;
                  LODWORD(v346) = 68;
                  v342 = &v387;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v162 = dword_1ED844550;
                LOBYTE(v161) = self->_doGMLogging;
                bufferCopy = v384;
                v118 = v371;
              }

              if (v161 && v162)
              {
                *&v394[4] = 0;
                v394[0] = OS_LOG_TYPE_DEFAULT;
                v183 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v184 = *&v394[4];
                if (os_log_type_enabled(v183, v394[0]))
                {
                  v185 = v184;
                }

                else
                {
                  v185 = v184 & 0xFFFFFFFE;
                }

                if (v185)
                {
                  name12 = [(BWNode *)self name];
                  LODWORD(v387.value) = 136315906;
                  *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v387.flags) = 2112;
                  *(&v387.flags + 2) = name12;
                  HIWORD(v387.epoch) = 2048;
                  selfCopy22 = self;
                  v389 = 2112;
                  *v390 = pixelBuffer;
                  LODWORD(v346) = 42;
                  v342 = &v387;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v162 = dword_1ED844550;
                LOBYTE(v161) = self->_doGMLogging;
                bufferCopy = v384;
                v118 = v371;
              }

              if (v161 && v162)
              {
                *&v394[4] = 0;
                v394[0] = OS_LOG_TYPE_DEFAULT;
                v187 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v188 = *&v394[4];
                if (os_log_type_enabled(v187, v394[0]))
                {
                  v189 = v188;
                }

                else
                {
                  v189 = v188 & 0xFFFFFFFE;
                }

                if (v189)
                {
                  name13 = [(BWNode *)self name];
                  LODWORD(v387.value) = 136315906;
                  *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v387.flags) = 2112;
                  *(&v387.flags + 2) = name13;
                  HIWORD(v387.epoch) = 2048;
                  selfCopy22 = self;
                  v389 = 2112;
                  *v390 = destinationBuffer;
                  LODWORD(v346) = 42;
                  v342 = &v387;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                bufferCopy = v384;
                v118 = v371;
              }

              if (v160)
              {
                v191 = self->_limitedGMErrorLogger;
                v192 = MEMORY[0x1E696AEC0];
                name14 = [(BWNode *)self name];
                CMSampleBufferGetPresentationTimeStamp(time, bufferCopy);
                v194 = CMTimeGetSeconds(time);
                v195 = self->_rotationSession;
                v196 = CVPixelBufferGetPixelFormatType(pixelBuffer);
                v197 = BWStringFromCVPixelFormatType(v196);
                v198 = BWStringFromCGRect(origin.f64[0], origin.f64[1], v397.f64[0], v397.f64[1]);
                v199 = CVPixelBufferGetPixelFormatType(destinationBuffer);
                v200 = v160;
                v201 = BWStringFromCVPixelFormatType(v199);
                v202 = BWStringFromCGRect(v142, v138, v89, v76);
                v349 = v201;
                v179 = v200;
                newPixelBuffer = destinationBuffer;
                v348 = v198;
                bufferCopy = v384;
                v343 = name14;
                v6 = MEMORY[0x1E695FF58];
                -[BWLimitedGMErrorLogger logErrorNumber:errorString:](v191, "logErrorNumber:errorString:", v179, [v192 stringWithFormat:@"%@: %p: %.4lf: %p: rotating sub-image with input %@ rect %@, dest %@ rect %@", v343, self, *&v194, v195, v197, v348, v349, v202]);
                FigDebugAssert3();
                goto LABEL_292;
              }

LABEL_258:
              if (self->_generatesHistogram)
              {
                time[0].origin.x = 0.0;
                LODWORD(v179) = VTSessionCopyProperty(self->_rotationSession, *MEMORY[0x1E6983D88], *MEMORY[0x1E695E480], time);
                v270 = [*&time[0].origin.x copy];
                if (!v179)
                {
                  CMSetAttachment(*type, *off_1E798A520, v270, 1u);
                }
              }

              else
              {
                LODWORD(v179) = 0;
              }

              [BWPixelTransferNode _updateMetadataForOutputSampleBuffer:? destinationRect:?];
              [(BWPixelTransferNode *)self _updateUprightExifOrientationOnSampleBufferIfNeeded:?];
              [BWPixelTransferNode _updatePrimaryCaptureRect:*type forOutputSampleBuffer:?];
              if (self->_liveDeviceOrientationCorrectionEnabled)
              {
                if (!self->_liveRotationDegrees)
                {
                  goto LABEL_268;
                }

                FormatDescription = CMSampleBufferGetFormatDescription(bufferCopy);
                Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
                [(BWPixelTransferNode *)self _updateLiveDeviceOrientationAffectedMetadataForOutputSampleBuffer:Dimensions.width inputDims:Dimensions.height inputCropRect:origin.f64[0], origin.f64[1], v397.f64[0], v397.f64[1]];
              }

              if (self->_liveRotationDegrees)
              {
                v273 = [MEMORY[0x1E696AD98] numberWithInt:self->_rotationDegrees];
                goto LABEL_270;
              }

LABEL_268:
              if (!v118)
              {
                goto LABEL_271;
              }

              v273 = CMGetAttachment(pixelBuffer, @"RotationDegrees", 0);
LABEL_270:
              CMSetAttachment(newPixelBuffer, @"RotationDegrees", v273, 1u);
LABEL_271:
              if (self->_liveFlipHorizontal)
              {
                v274 = @"MirroredHorizontal";
              }

              else
              {
                if (!self->_liveFlipVertical)
                {
                  if (!v118)
                  {
                    goto LABEL_277;
                  }

                  v287 = CMGetAttachment(pixelBuffer, @"MirroredHorizontal", 0);
                  CMSetAttachment(newPixelBuffer, @"MirroredHorizontal", v287, 1u);
                  v275 = CMGetAttachment(pixelBuffer, @"MirroredVertical", 0);
                  v276 = newPixelBuffer;
                  v274 = @"MirroredVertical";
LABEL_276:
                  CMSetAttachment(v276, v274, v275, 1u);
LABEL_277:
                  v277 = *MEMORY[0x1E6965F18];
                  v278 = CMGetAttachment(pixelBuffer, *MEMORY[0x1E6965F18], 0);
                  CMSetAttachment(newPixelBuffer, v277, v278, 1u);
                  v279 = CMGetAttachment(pixelBuffer, @"AmbientViewingEnvironmentStrength", 0);
                  if (v279)
                  {
                    v280 = v279;
                    IOSurface = CVPixelBufferGetIOSurface(newPixelBuffer);
                    BWUtilitiesApplyAVEStrength(IOSurface, v280);
                  }

                  if (self->_doGMLogging && dword_1ED844550)
                  {
                    *&v394[4] = 0;
                    v394[0] = OS_LOG_TYPE_DEFAULT;
                    v282 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v283 = *&v394[4];
                    if (os_log_type_enabled(v282, v394[0]))
                    {
                      v284 = v283;
                    }

                    else
                    {
                      v284 = v283 & 0xFFFFFFFE;
                    }

                    if (v284)
                    {
                      name15 = [(BWNode *)self name];
                      CMSampleBufferGetPresentationTimeStamp(time, *type);
                      v286 = CMTimeGetSeconds(time);
                      LODWORD(v387.value) = 136315906;
                      *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                      LOWORD(v387.flags) = 2112;
                      *(&v387.flags + 2) = name15;
                      HIWORD(v387.epoch) = 2048;
                      selfCopy22 = self;
                      v389 = 2048;
                      *v390 = v286;
                      LODWORD(v346) = 42;
                      v342 = &v387;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    newPixelBuffer = destinationBuffer;
                  }

                  self->_doGMLogging = 0;
                  [(BWNodeOutput *)self->super._output emitSampleBuffer:*type, v342, v346];
                  v6 = MEMORY[0x1E695FF58];
LABEL_292:
                  v296 = cf;
                  if (!cf)
                  {
                    goto LABEL_294;
                  }

                  goto LABEL_293;
                }

                v274 = @"MirroredVertical";
              }

              v275 = MEMORY[0x1E695E118];
              v276 = newPixelBuffer;
              goto LABEL_276;
            }

            conversionMethodForStillImagesDuringHDRVideo = self->_conversionMethodForStillImagesDuringHDRVideo;
            if ((conversionMethodForStillImagesDuringHDRVideo == 4 || conversionMethodForStillImagesDuringHDRVideo == 2) && self->_intermediatePixelBufferForStillHDRToSDRConversion)
            {
              Attributes = CVPixelBufferGetAttributes();
              v146 = *MEMORY[0x1E6983DE0];
              v356 = *MEMORY[0x1E6965F98];
              [Attributes objectForKeyedSubscript:?];
              propertyKeya = v146;
              VTPixelRotationSessionSetProperty();
              v147 = *MEMORY[0x1E6983DC0];
              v352 = *MEMORY[0x1E6965D88];
              [Attributes objectForKeyedSubscript:?];
              v359 = v147;
              VTPixelRotationSessionSetProperty();
              v148 = *MEMORY[0x1E6983DD8];
              v350 = *MEMORY[0x1E6965F30];
              [Attributes objectForKeyedSubscript:?];
              v354 = v148;
              VTPixelRotationSessionSetProperty();
              v149 = VTPixelRotationSessionRotateImage(self->_rotationSession, pixelBuffer, self->_intermediatePixelBufferForStillHDRToSDRConversion);
              v150 = self->_doGMLogging;
              v151 = dword_1ED844550;
              v152 = v149;
              if (v150)
              {
                v118 = 0;
                if (dword_1ED844550)
                {
                  *&v394[4] = 0;
                  v394[0] = OS_LOG_TYPE_DEFAULT;
                  v153 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v154 = *&v394[4];
                  if (os_log_type_enabled(v153, v394[0]))
                  {
                    v155 = v154;
                  }

                  else
                  {
                    v155 = v154 & 0xFFFFFFFE;
                  }

                  if (v155)
                  {
                    name16 = [(BWNode *)self name];
                    v157 = self->_rotationSession;
                    LODWORD(v387.value) = 136316162;
                    *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                    LOWORD(v387.flags) = 2112;
                    *(&v387.flags + 2) = name16;
                    HIWORD(v387.epoch) = 2048;
                    selfCopy22 = self;
                    v389 = 1024;
                    *v390 = v152;
                    *&v390[4] = 2112;
                    *&v390[6] = v157;
                    LODWORD(v346) = 48;
                    v342 = &v387;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v151 = dword_1ED844550;
                  LOBYTE(v150) = self->_doGMLogging;
                  bufferCopy = v384;
                }
              }

              else
              {
                v118 = 0;
              }

              if (v150 && v151)
              {
                *&v394[4] = 0;
                v394[0] = OS_LOG_TYPE_DEFAULT;
                v219 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v220 = *&v394[4];
                if (os_log_type_enabled(v219, v394[0]))
                {
                  v221 = v220;
                }

                else
                {
                  v221 = v220 & 0xFFFFFFFE;
                }

                if (v221)
                {
                  name17 = [(BWNode *)self name];
                  LODWORD(v387.value) = 136315906;
                  *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v387.flags) = 2112;
                  *(&v387.flags + 2) = name17;
                  HIWORD(v387.epoch) = 2048;
                  selfCopy22 = self;
                  v389 = 2112;
                  *v390 = pixelBuffer;
                  LODWORD(v346) = 42;
                  v342 = &v387;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v151 = dword_1ED844550;
                LOBYTE(v150) = self->_doGMLogging;
                bufferCopy = v384;
              }

              if (v150 && v151)
              {
                *&v394[4] = 0;
                v394[0] = OS_LOG_TYPE_DEFAULT;
                v223 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v224 = *&v394[4];
                if (os_log_type_enabled(v223, v394[0]))
                {
                  v225 = v224;
                }

                else
                {
                  v225 = v224 & 0xFFFFFFFE;
                }

                if (v225)
                {
                  name18 = [(BWNode *)self name];
                  intermediatePixelBufferForStillHDRToSDRConversion = self->_intermediatePixelBufferForStillHDRToSDRConversion;
                  LODWORD(v387.value) = 136315906;
                  *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v387.flags) = 2112;
                  *(&v387.flags + 2) = name18;
                  HIWORD(v387.epoch) = 2048;
                  selfCopy22 = self;
                  v389 = 2112;
                  *v390 = intermediatePixelBufferForStillHDRToSDRConversion;
                  LODWORD(v346) = 42;
                  v342 = &v387;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                bufferCopy = v384;
                v118 = 0;
              }

              [(BWPixelTransferNode *)self _ensureTransferSession];
              v228 = [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:self->_outputColorSpaceProperties];
              VTSessionSetProperty(self->_transferSession, propertyKeya, [v228 objectForKeyedSubscript:v356]);
              VTSessionSetProperty(self->_transferSession, v359, [v228 objectForKeyedSubscript:v352]);
              VTSessionSetProperty(self->_transferSession, v354, [v228 objectForKeyedSubscript:v350]);
              VTSessionSetProperty(self->_transferSession, *MEMORY[0x1E6983D58], MEMORY[0x1E695E110]);
              if (v152)
              {
                goto LABEL_289;
              }

              v229 = self->_conversionMethodForStillImagesDuringHDRVideo;
              if (v229 != 2)
              {
                newPixelBuffer = destinationBuffer;
                if (v229 == 4)
                {
                  [(BWPixelTransferNode *)self _convertUsingHDRProcessing:destinationBuffer toSDR:?];
                }

                goto LABEL_258;
              }

              newPixelBuffer = destinationBuffer;
              v363 = VTPixelTransferSessionTransferImage(self->_transferSession, self->_intermediatePixelBufferForStillHDRToSDRConversion, destinationBuffer);
              v230 = self->_doGMLogging;
              v231 = dword_1ED844550;
              if (v230 && dword_1ED844550)
              {
                *&v394[4] = 0;
                v394[0] = OS_LOG_TYPE_DEFAULT;
                v232 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v233 = *&v394[4];
                if (os_log_type_enabled(v232, v394[0]))
                {
                  v234 = v233;
                }

                else
                {
                  v234 = v233 & 0xFFFFFFFE;
                }

                if (v234)
                {
                  name19 = [(BWNode *)self name];
                  v236 = self->_transferSession;
                  LODWORD(v387.value) = 136316162;
                  *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v387.flags) = 2112;
                  *(&v387.flags + 2) = name19;
                  HIWORD(v387.epoch) = 2048;
                  selfCopy22 = self;
                  v389 = 1024;
                  *v390 = v363;
                  *&v390[4] = 2112;
                  *&v390[6] = v236;
                  LODWORD(v346) = 48;
                  v342 = &v387;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v231 = dword_1ED844550;
                LOBYTE(v230) = self->_doGMLogging;
                bufferCopy = v384;
                v118 = 0;
              }

              if (v230)
              {
                v171 = v363;
                if (v231)
                {
                  *&v394[4] = 0;
                  v394[0] = OS_LOG_TYPE_DEFAULT;
                  v262 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v263 = *&v394[4];
                  if (os_log_type_enabled(v262, v394[0]))
                  {
                    v264 = v263;
                  }

                  else
                  {
                    v264 = v263 & 0xFFFFFFFE;
                  }

                  if (v264)
                  {
                    name20 = [(BWNode *)self name];
                    v266 = self->_intermediatePixelBufferForStillHDRToSDRConversion;
                    LODWORD(v387.value) = 136315906;
                    *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                    LOWORD(v387.flags) = 2112;
                    *(&v387.flags + 2) = name20;
                    HIWORD(v387.epoch) = 2048;
                    selfCopy22 = self;
                    v389 = 2112;
                    *v390 = v266;
                    LODWORD(v346) = 42;
                    v342 = &v387;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v231 = dword_1ED844550;
                  LOBYTE(v230) = self->_doGMLogging;
                  bufferCopy = v384;
                  v118 = 0;
                }
              }

              else
              {
                v171 = v363;
              }

              if (!v230 || !v231)
              {
LABEL_257:
                if (!v171)
                {
                  goto LABEL_258;
                }

                v152 = v171;
LABEL_289:
                v380 = self->_limitedGMErrorLogger;
                rectb = MEMORY[0x1E696AEC0];
                v374 = [(BWNode *)self name:v342];
                CMSampleBufferGetPresentationTimeStamp(time, bufferCopy);
                v288 = CMTimeGetSeconds(time);
                v289 = self->_rotationSession;
                v290 = CVPixelBufferGetPixelFormatType(pixelBuffer);
                v291 = BWStringFromCVPixelFormatType(v290);
                v179 = CVPixelBufferGetWidth(pixelBuffer);
                v292 = CVPixelBufferGetHeight(pixelBuffer);
                newPixelBuffer = destinationBuffer;
                v293 = CVPixelBufferGetPixelFormatType(destinationBuffer);
                v294 = BWStringFromCVPixelFormatType(v293);
                v295 = CVPixelBufferGetWidth(destinationBuffer);
                v347 = v291;
                bufferCopy = v384;
                -[BWLimitedGMErrorLogger logErrorNumber:errorString:](v380, "logErrorNumber:errorString:", v152, [rectb stringWithFormat:@"%@: %p: %.4lf: %p: rotating scaler rect %@ 0, 0, %lu x %lu, output %@ %lu x %lu, input %p, output %p", v374, self, *&v288, v289, v347, v179, v292, v294, v295, CVPixelBufferGetHeight(destinationBuffer), pixelBuffer, destinationBuffer]);
                FigDebugAssert3();
                v6 = MEMORY[0x1E695FF58];
                LODWORD(v179) = v152;
                goto LABEL_292;
              }

              *&v394[4] = 0;
              v394[0] = OS_LOG_TYPE_DEFAULT;
              v267 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v268 = *&v394[4];
              if (os_log_type_enabled(v267, v394[0]))
              {
                v269 = v268;
              }

              else
              {
                v269 = v268 & 0xFFFFFFFE;
              }

              if (!v269)
              {
LABEL_256:
                v118 = 0;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                bufferCopy = v384;
                goto LABEL_257;
              }
            }

            else
            {
              newPixelBuffer = destinationBuffer;
              v171 = VTPixelRotationSessionRotateImage(self->_rotationSession, pixelBuffer, destinationBuffer);
              v172 = self->_doGMLogging;
              v173 = dword_1ED844550;
              if (v172 && dword_1ED844550)
              {
                *&v394[4] = 0;
                v394[0] = OS_LOG_TYPE_DEFAULT;
                v174 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v175 = *&v394[4];
                if (os_log_type_enabled(v174, v394[0]))
                {
                  v176 = v175;
                }

                else
                {
                  v176 = v175 & 0xFFFFFFFE;
                }

                if (v176)
                {
                  name21 = [(BWNode *)self name];
                  v178 = self->_rotationSession;
                  LODWORD(v387.value) = 136316162;
                  *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v387.flags) = 2112;
                  *(&v387.flags + 2) = name21;
                  HIWORD(v387.epoch) = 2048;
                  selfCopy22 = self;
                  v389 = 1024;
                  *v390 = v171;
                  *&v390[4] = 2112;
                  *&v390[6] = v178;
                  LODWORD(v346) = 48;
                  v342 = &v387;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v173 = dword_1ED844550;
                LOBYTE(v172) = self->_doGMLogging;
                bufferCopy = v384;
                v118 = 0;
              }

              if (v172 && v173)
              {
                *&v394[4] = 0;
                v394[0] = OS_LOG_TYPE_DEFAULT;
                v211 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v212 = *&v394[4];
                if (os_log_type_enabled(v211, v394[0]))
                {
                  v213 = v212;
                }

                else
                {
                  v213 = v212 & 0xFFFFFFFE;
                }

                if (v213)
                {
                  name22 = [(BWNode *)self name];
                  LODWORD(v387.value) = 136315906;
                  *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v387.flags) = 2112;
                  *(&v387.flags + 2) = name22;
                  HIWORD(v387.epoch) = 2048;
                  selfCopy22 = self;
                  v389 = 2112;
                  *v390 = pixelBuffer;
                  LODWORD(v346) = 42;
                  v342 = &v387;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v173 = dword_1ED844550;
                LOBYTE(v172) = self->_doGMLogging;
                bufferCopy = v384;
                v118 = 0;
              }

              if (!v172 || !v173)
              {
                goto LABEL_257;
              }

              *&v394[4] = 0;
              v394[0] = OS_LOG_TYPE_DEFAULT;
              v215 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v216 = *&v394[4];
              if (os_log_type_enabled(v215, v394[0]))
              {
                v217 = v216;
              }

              else
              {
                v217 = v216 & 0xFFFFFFFE;
              }

              if (!v217)
              {
                goto LABEL_256;
              }
            }

            name23 = [(BWNode *)self name];
            LODWORD(v387.value) = 136315906;
            *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
            LOWORD(v387.flags) = 2112;
            *(&v387.flags + 2) = name23;
            HIWORD(v387.epoch) = 2048;
            selfCopy22 = self;
            v389 = 2112;
            *v390 = newPixelBuffer;
            LODWORD(v346) = 42;
            v342 = &v387;
            _os_log_send_and_compose_impl();
            goto LABEL_256;
          }

          [BWPixelTransferNode renderSampleBuffer:? forInput:?];
          LODWORD(v179) = LODWORD(time[0].origin.x);
          newPixelBuffer = destinationBuffer;
          v6 = MEMORY[0x1E695FF58];
        }

        else
        {
          LODWORD(v179) = -12780;
        }

LABEL_294:
        if (newPixelBuffer)
        {
          CFRelease(newPixelBuffer);
        }

        goto LABEL_296;
      }

      *&v394[4] = 0;
      v394[0] = OS_LOG_TYPE_DEFAULT;
      v303 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v304 = *&v394[4];
      if (os_log_type_enabled(v303, v394[0]))
      {
        v305 = v304;
      }

      else
      {
        v305 = v304 & 0xFFFFFFFE;
      }

      if (v305)
      {
        name24 = [(BWNode *)self name];
        v307 = self->_liveRotationDegrees;
        v308 = BWStringFromCGRect(origin.f64[0], origin.f64[1], v397.f64[0], v397.f64[1]);
        LODWORD(v387.value) = 136316162;
        *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
        LOWORD(v387.flags) = 2112;
        *(&v387.flags + 2) = name24;
        HIWORD(v387.epoch) = 2048;
        selfCopy22 = self;
        v389 = 1024;
        *v390 = v307;
        *&v390[4] = 2112;
        *&v390[6] = v308;
        LODWORD(v345) = 48;
        v341 = &v387;
        _os_log_send_and_compose_impl();
      }

      v39 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      if (!self->_doGMLogging || !dword_1ED844550)
      {
        goto LABEL_46;
      }

      *&v394[4] = 0;
      v394[0] = OS_LOG_TYPE_DEFAULT;
      v309 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v310 = *&v394[4];
      if (os_log_type_enabled(v309, v394[0]))
      {
        v311 = v310;
      }

      else
      {
        v311 = v310 & 0xFFFFFFFE;
      }

      if (v311)
      {
        name25 = [(BWNode *)self name];
        LODWORD(v387.value) = 136315650;
        *(&v387.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
        LOWORD(v387.flags) = 2112;
        *(&v387.flags + 2) = name25;
        HIWORD(v387.epoch) = 2048;
        selfCopy22 = self;
        LODWORD(v345) = 32;
        v341 = &v387;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = MEMORY[0x1E695FF58];
    goto LABEL_46;
  }
}

- (CGFloat)_getUpdatedPrimaryCaptureRectForOutputSampleBuffer:(uint64_t)buffer inputDimensions:(CMAttachmentBearerRef)target
{
  if (buffer)
  {
    v3 = *(MEMORY[0x1E695F050] + 16);
    rect.origin = *MEMORY[0x1E695F050];
    rect.size = v3;
    v4 = CMGetAttachment(target, *off_1E798A430, 0);
    if (v4 && (*(buffer + 208) || (*(buffer + 216) & 1) != 0 || *(buffer + 218) == 1))
    {
      CGRectMakeWithDictionaryRepresentation(v4, &rect);
      memset(&v8, 0, sizeof(v8));
      if (*(buffer + 216))
      {
        v5 = 1;
      }

      else
      {
        v5 = *(buffer + 218);
      }

      FigCaptureMakeMirrorAndRotateVideoTransform(1, 1, v5 & 1, *(buffer + 208), &v8);
      v7 = v8;
      rect = CGRectApplyAffineTransform(rect, &v7);
    }
  }

  else
  {
    memset(&rect, 0, sizeof(rect));
  }

  return rect.origin.x;
}

- (uint64_t)_ensureTransferSession
{
  if (result)
  {
    v1 = result;
    if (!*(result + 336))
    {
      VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], (result + 336));
      *(v1 + 432) = 1;
      context = objc_autoreleasePoolPush();
      v2 = malloc_type_malloc(0x2800uLL, 0x9FD05F99uLL);
      if (getCameraCaptureExcessiveLog_cameraCaptureExcessiveLogOnceToken != -1)
      {
        [BWPixelTransferNode _ensureTransferSession];
      }

      name = [v1 name];
      v4 = *(v1 + 336);
      v33 = 138412802;
      v34 = name;
      v35 = 2048;
      v29 = v1;
      v36 = v1;
      v37 = 2112;
      v38 = v4;
      LODWORD(v23) = 32;
      v27 = v2;
      v26 = _os_log_send_and_compose_impl();
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{v26, &v33, v23}];
      v6 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s: ", "<<<< BWPixelTransferNode >>>>", "-[BWPixelTransferNode _ensureTransferSession]"), "length"];
      v30 = v5;
      if (([v5 length] + v6) >= 0x400)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        obj = [v5 componentsSeparatedByString:@"\n"];
        v7 = [obj countByEnumeratingWithState:&v42 objects:v41 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = &stru_1F216A3D0;
          v10 = *v43;
          v31 = v6;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v43 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v42 + 1) + 8 * i);
              if (-[__CFString length](v9, "length") && (v13 = -[__CFString length](v9, "length"), v14 = -[__CFString length](v12, "length"), (v13 + v6 + [@"\n..." length] + v14) > 0x3FF))
              {
                if (dword_1ED844550)
                {
                  v40 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v17 = v40;
                  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                  {
                    v18 = v17;
                  }

                  else
                  {
                    v18 = v17 & 0xFFFFFFFE;
                  }

                  if (v18)
                  {
                    LODWORD(v24) = 32;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v6 = v31;
                }

                v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v12, v24, v25];
              }

              else
              {
                if (![(__CFString *)v9 length])
                {
                  v9 = v12;
                  continue;
                }

                v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v9, @"\n", v12];
              }

              v9 = v15;
            }

            v8 = [obj countByEnumeratingWithState:&v42 objects:v41 count:16];
          }

          while (v8);
        }
      }

      if (dword_1ED844550)
      {
        v40 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v20 = v40;
        if (os_log_type_enabled(v19, type))
        {
          v21 = v20;
        }

        else
        {
          v21 = v20 & 0xFFFFFFFE;
        }

        if (v21)
        {
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      free(v27);
      if (v26 != v27)
      {
        free(v26);
      }

      objc_autoreleasePoolPop(context);
      v22 = *(v29 + 424);
      if (*(v29 + 336))
      {
        result = [v22 resetCurrentLoggingCounter];
      }

      else
      {
        result = [v22 logErrorNumber:4294954516 errorString:@"failed to create transfer session"];
      }

      if (!*(v29 + 336))
      {
        [BWPixelTransferNode _ensureTransferSession];
      }
    }
  }

  return result;
}

- (uint64_t)_convertUsingHDRProcessing:(__CVBuffer *)processing toSDR:
{
  if (result)
  {
    v3 = result;
    if (*(result + 408))
    {
      if (*(result + 416))
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DEF0]);
        v7 = MEMORY[0x1E695DF90];
        v45 = 0;
        v46 = &v45;
        v47 = 0x2020000000;
        v8 = getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc_ptr;
        v48 = getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc_ptr;
        if (!getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc_ptr)
        {
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc_block_invoke;
          v43[3] = &unk_1E798FC38;
          v44 = &v45;
          v9 = HDRProcessingLibrary();
          v46[3] = dlsym(v9, "kHDRProcessingDolbyVisionRPUDataKey");
          getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc_ptr = *(v44[1] + 24);
          v8 = v46[3];
        }

        _Block_object_dispose(&v45, 8);
        if (!v8)
        {
          [BWPixelTransferNode _convertUsingHDRProcessing:toSDR:];
        }

        v10 = [v7 dictionaryWithObject:v6 forKey:*v8];
        IOSurface = CVPixelBufferGetIOSurface(a2);
        if (IOSurface)
        {
          v12 = IOSurface;
          v13 = CVPixelBufferGetIOSurface(processing);
          if (v13)
          {
            v14 = v13;
            v42 = 0;
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            WORD5(v37) = 3073;
            BYTE12(v37) = 18;
            if (IOSurfaceSetBulkAttachments2())
            {
              [BWPixelTransferNode _convertUsingHDRProcessing:v43 toSDR:?];
            }

            else
            {
              v33 = 0;
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              v25 = 0u;
              v26 = 0u;
              WORD5(v28) = 3073;
              BYTE12(v28) = 1;
              if (!IOSurfaceSetBulkAttachments2())
              {
                v24 = 0;
                if ([*(v3 + 408) generateMSRColorConfigWithOperation:4 inputSurface:v12 outputSurface:v14 metadata:v10 histogram:0 config:&v24] == -17000)
                {
                  v15 = malloc_type_malloc(0x28uLL, 0x10000407607B2BCuLL);
                  *v15 = 3;
                  v15[1] = [v24 bytes];
                  *(v15 + 4) = [v24 length];
                  *(v15 + 28) = 0;
                  *(v15 + 20) = 0;
                  v16 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v15 length:40 freeWhenDone:1];
                  v17 = *MEMORY[0x1E69A8498];
                  v21 = v16;
                  v22[0] = v17;
                  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
                  v19 = *MEMORY[0x1E69A84D8];
                  v23[0] = v18;
                  v23[1] = MEMORY[0x1E695E118];
                  v20 = *MEMORY[0x1E69A85B8];
                  v22[1] = v19;
                  v22[2] = v20;
                  v23[2] = MEMORY[0x1E695E110];
                  [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
                  result = IOSurfaceAcceleratorTransformSurface();
                  if (!result)
                  {
                    return result;
                  }

                  [BWPixelTransferNode _convertUsingHDRProcessing:toSDR:];
                }

                else
                {
                  [BWPixelTransferNode _convertUsingHDRProcessing:toSDR:];
                }

                return 4294954514;
              }

              [BWPixelTransferNode _convertUsingHDRProcessing:v43 toSDR:?];
            }
          }

          else
          {
            [BWPixelTransferNode _convertUsingHDRProcessing:v43 toSDR:?];
          }
        }

        else
        {
          [BWPixelTransferNode _convertUsingHDRProcessing:v43 toSDR:?];
        }
      }

      else
      {
        [BWPixelTransferNode _convertUsingHDRProcessing:v43 toSDR:?];
      }
    }

    else
    {
      [BWPixelTransferNode _convertUsingHDRProcessing:v43 toSDR:?];
    }

    return LODWORD(v43[0]);
  }

  return result;
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

- (void)setCropMode:(int)mode
{
  if (self->_cropMode != mode)
  {
    self->_cropMode = mode;
    [(BWPixelTransferNode *)self _updatePassthroughModes];
  }
}

- (CGRect)inputCropRect
{
  x = self->_inputCropRect.origin.x;
  y = self->_inputCropRect.origin.y;
  width = self->_inputCropRect.size.width;
  height = self->_inputCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setPassesBuffersThroughWhenPossible:(BOOL)possible
{
  if (self->_passesBuffersThroughWhenPossible != possible)
  {
    self->_passesBuffersThroughWhenPossible = possible;
    [(BWPixelTransferNode *)self _updatePassthroughModes];
  }
}

- (void)setOutputWidth:(unint64_t)width
{
  if (self->_outputWidth != width)
  {
    self->_outputWidth = width;
    [(BWPixelTransferNode *)self _updateOutputRequirements];
  }
}

- (void)setOutputHeight:(unint64_t)height
{
  if (self->_outputHeight != height)
  {
    self->_outputHeight = height;
    [(BWPixelTransferNode *)self _updateOutputRequirements];
  }
}

- (void)setOutputPixelFormat:(unsigned int)format
{
  if (self->_outputPixelFormat != format)
  {
    self->_outputPixelFormat = format;
    [(BWPixelTransferNode *)self _updateOutputRequirements];
  }
}

- (void)setPreferredOutputPixelFormats:(id)formats
{
  if (([formats isEqualToArray:self->_preferredOutputPixelFormats] & 1) == 0)
  {
    [(BWPixelTransferNode *)&self->_preferredOutputPixelFormats setPreferredOutputPixelFormats:formats, self];
  }
}

- (void)setOutputColorSpaceProperties:(int)properties
{
  if (self->_outputColorSpaceProperties != properties)
  {
    self->_outputColorSpaceProperties = properties;
    [(BWPixelTransferNode *)self _updateOutputRequirements];
  }
}

- (void)setMaxLossyCompressionLevel:(int)level
{
  v3 = *&level;
  [(BWPixelTransferNode *)self setMaxInputLossyCompressionLevel:?];

  [(BWPixelTransferNode *)self setMaxOutputLossyCompressionLevel:v3];
}

- (int)maxLossyCompressionLevel
{
  if (self->_maxInputLossyCompressionLevel <= self->_maxOutputLossyCompressionLevel)
  {
    return self->_maxOutputLossyCompressionLevel;
  }

  else
  {
    return self->_maxInputLossyCompressionLevel;
  }
}

- (void)setMaxInputLossyCompressionLevel:(int)level
{
  if (self->_maxInputLossyCompressionLevel != level)
  {
    self->_maxInputLossyCompressionLevel = level;
    [(BWPixelTransferNode *)self _updateInputRequirements];
  }
}

- (void)setMaxOutputLossyCompressionLevel:(int)level
{
  if (self->_maxOutputLossyCompressionLevel != level)
  {
    self->_maxOutputLossyCompressionLevel = level;
    [(BWPixelTransferNode *)self _updateOutputRequirements];
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

- (void)setConversionMethodForStillImagesDuringHDRVideos:(int)videos
{
  if (videos == 3 && self->_fractionalSourceRectEnabled)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Internal inconsistency, conversionMethodForStillImagesDuringHDRVideos(%d) can not be set when fractional rects is enabled", 3), 0}]);
  }

  if (self->_conversionMethodForStillImagesDuringHDRVideo != videos)
  {
    self->_conversionMethodForStillImagesDuringHDRVideo = videos;

    [(BWPixelTransferNode *)self _updateOutputRequirements];
  }
}

- (void)setAllows422To420Conversion:(BOOL)conversion
{
  if (self->_allows422To420Conversion != conversion)
  {
    self->_allows422To420Conversion = conversion;
    [(BWPixelTransferNode *)self _updateOutputRequirements];
  }
}

- (uint64_t)_emitIfMarkerBuffer:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = OUTLINED_FUNCTION_4_3();
    v7 = CMGetAttachment(v4, v5, v6);
    v8 = OUTLINED_FUNCTION_4_3();
    v11 = CMGetAttachment(v8, v9, v10);
    v12 = OUTLINED_FUNCTION_4_3();
    result = CMGetAttachment(v12, v13, v14);
    if (v7 || v11 || result)
    {
      [*(v3 + 16) emitSampleBuffer:a2];
      return 1;
    }
  }

  return result;
}

- (uint64_t)_ensureDeviceOrientationMonitor
{
  if (result)
  {
    v1 = result;
    if (*(result + 222) == 1 && !*(result + 224))
    {
      v2 = objc_alloc_init(BWDeviceOrientationMonitor);
      *(v1 + 224) = v2;
      result = [(BWDeviceOrientationMonitor *)v2 start];
      *(v1 + 232) = -1;
    }
  }

  return result;
}

- (uint64_t)_updateLiveRotationAndFlipsToApplyUprightExifOrientation:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v7 = 0;
    if (a2)
    {
      result = FigCaptureRotationDegreesAndMirroringFromExifOrientation(a2, &v7);
    }

    else
    {
      result = 0;
    }

    if (result != *(v2 + 212))
    {
      *(v2 + 212) = result;
    }

    v3 = result != 270;
    v4 = result == 270;
    if (result == 90)
    {
      v3 = 0;
      v4 = 1;
    }

    v5 = v7 && v3;
    v6 = v7 && v4;
    if (*(v2 + 217) != v5 || *(v2 + 219) != v6)
    {
      *(v2 + 217) = v5;
      *(v2 + 219) = v6;
    }
  }

  return result;
}

- (uint64_t)_intermediateBufferDimensionsForInputDimensions:(uint64_t)dimensions outputDimensions:
{
  if (result)
  {
    v3 = *(result + 212);
    v4 = COERCE_DOUBLE(vrev64_s32(__PAIR64__(a2, HIDWORD(a2))));
    if (v3 == 270)
    {
      v4 = COERCE_DOUBLE(__PAIR64__(a2, HIDWORD(a2)));
    }

    _ZF = v3 == 90;
    v6 = v3 == 90 || v3 == 270;
    if (_ZF)
    {
      v4 = COERCE_DOUBLE(__PAIR64__(a2, HIDWORD(a2)));
    }

    v7 = vcvt_f32_s32(vext_s8(__PAIR64__(dimensions, HIDWORD(dimensions)), *&v4, 4uLL));
    *&v4 = vdiv_f32(v7, vdup_lane_s32(v7, 1)).f32[0];
    v8 = SHIDWORD(dimensions) / SHIDWORD(v4);
    if (*&v4 <= 4.0)
    {
      if (*&v4 < 0.25 && v8 > 4.0)
      {
        goto LABEL_32;
      }

      if (v8 <= 4.0)
      {
        if (*&v4 >= 0.25 && v8 >= 0.25)
        {
          v20 = 0;
          v18 = 0;
          return v18 | v20;
        }

        v22.i64[0] = SHIDWORD(a2);
        v22.i64[1] = a2;
        __asm { FMOV            V3.2D, #0.25 }

        v24 = vmulq_f64(vcvtq_f64_s64(v22), _Q3);
        __asm { FMOV            V3.2D, #0.5 }

        *&v24.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vmulq_f64(v24, _Q3))));
        v16 = COERCE_DOUBLE(vadd_s32(*&v24.f64[0], *&v24.f64[0]));
        v22.i64[0] = SHIDWORD(dimensions);
        v22.i64[1] = dimensions;
        __asm { FMOV            V4.2D, #4.0 }

        v27 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmulq_f64(vmulq_f64(vcvtq_f64_s64(v22), _Q4), _Q3))));
        v28 = COERCE_DOUBLE(vadd_s32(v27, v27));
        if (!_ZF)
        {
          v28 = 0.0;
        }

        if (*(result + 132))
        {
          v16 = v28;
        }

LABEL_19:
        if (v6)
        {
          v17 = HIDWORD(v16);
        }

        else
        {
          v17 = LODWORD(v16);
        }

        if (v6)
        {
          LODWORD(v18) = LODWORD(v16);
        }

        else
        {
          LODWORD(v18) = HIDWORD(v16);
        }

        if (v18 <= 16)
        {
          v18 = 16;
        }

        else
        {
          v18 = v18;
        }

        if (v17 <= 16)
        {
          v19 = 16;
        }

        else
        {
          v19 = v17;
        }

        v20 = v19 << 32;
        return v18 | v20;
      }
    }

    else if (v8 < 0.25)
    {
LABEL_32:
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v20 = 0;
      v18 = 0;
      return v18 | v20;
    }

    v10.i64[0] = SHIDWORD(dimensions);
    v10.i64[1] = dimensions;
    __asm { FMOV            V1.2D, #0.25 }

    v14 = vmulq_f64(vcvtq_f64_s64(v10), _Q1);
    __asm { FMOV            V1.2D, #0.5 }

    *&v14.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vmulq_f64(v14, _Q1))));
    v16 = COERCE_DOUBLE(vadd_s32(*&v14.f64[0], *&v14.f64[0]));
    goto LABEL_19;
  }

  return result;
}

- (uint64_t)_ensureIntermediatePoolWithDimensions:(uint64_t)dimensions
{
  if (dimensions)
  {
    v4 = HIDWORD(a2);
    if (*(dimensions + 352) != a2)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = objc_alloc_init(BWVideoFormatRequirements);
      liveFormat = [*(dimensions + 8) liveFormat];
      name = [dimensions name];
      if (!name)
      {
        name = @"PixelTransfer";
      }

      v9 = [(__CFString *)name stringByAppendingString:@" Intermediate"];
      [(BWVideoFormatRequirements *)v6 setWidth:a2];
      [(BWVideoFormatRequirements *)v6 setHeight:a2 >> 32];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(liveFormat, "pixelFormat")}];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v6, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1]);
      v14 = v6;
      v10 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1]);
      if (v10)
      {
        v11 = v10;
        if (*(dimensions + 432) == 1 && dword_1ED844550)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *(dimensions + 344) = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v11, 1, v9, [*(dimensions + 16) memoryPool]);
        *(dimensions + 352) = a2;
        *(dimensions + 356) = v4;
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  return 0;
}

- (uint64_t)_updateMetadataForOutputSampleBuffer:(uint64_t)result destinationRect:
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_9_7();
  v2 = v1;
  result = CMGetAttachment(v3, *off_1E798A3C8, 0);
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = *(v2 + 132);
  if (v5)
  {
    if (v5 == 2)
    {
      if (*(v2 + 284) >= 1 && *(v2 + 288) >= 1)
      {
        v28.origin.x = OUTLINED_FUNCTION_3_1();
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v28);
        v8 = CFAutorelease(DictionaryRepresentation);
        v9 = *off_1E798B7A0;
        v10 = v4;
LABEL_14:

        return [v10 setObject:v8 forKeyedSubscript:v9];
      }
    }

    else if (v5 != 1)
    {
      return result;
    }

LABEL_13:
    v10 = OUTLINED_FUNCTION_4_3();
    goto LABEL_14;
  }

  if (*(v2 + 200) == 1)
  {
    goto LABEL_13;
  }

  if (!*(v2 + 212))
  {
    v11 = *(MEMORY[0x1E695F058] + 16);
    v26.origin = *MEMORY[0x1E695F058];
    v26.size = v11;
    result = CGRectMakeWithDictionaryRepresentation([result objectForKeyedSubscript:{*off_1E798B7A0, *&v26.origin, v11}], &v26);
    if (result)
    {
      liveFormat = [*(v2 + 8) liveFormat];
      liveFormat2 = [*(v2 + 16) liveFormat];
      [liveFormat2 width];
      [liveFormat width];
      [liveFormat2 height];
      [liveFormat height];
      v14 = OUTLINED_FUNCTION_11_10();
      v16 = FigCaptureCeilFloatToMultipleOf(v14, v15);
      v17 = OUTLINED_FUNCTION_11_10();
      v19 = FigCaptureCeilFloatToMultipleOf(v17, v18);
      v20 = OUTLINED_FUNCTION_11_10();
      v22 = FigCaptureFloorFloatToMultipleOf(v20, v21);
      v23 = OUTLINED_FUNCTION_11_10();
      v29.size.height = FigCaptureFloorFloatToMultipleOf(v23, v24);
      v29.origin.x = v16;
      v29.origin.y = v19;
      v29.size.width = v22;
      v25 = CGRectCreateDictionaryRepresentation(v29);
      CFAutorelease(v25);
      return [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
    }
  }

  return result;
}

- (void)_updateUprightExifOrientationOnSampleBufferIfNeeded:(uint64_t)needed
{
  if (needed)
  {
    v3 = [CMGetAttachment(target @"UprightExifOrientation"];
    v4 = v3;
    if (*(needed + 212) || (*(needed + 217) & 1) != 0)
    {
      v5 = 0;
      if (v3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = *(needed + 219) ^ 1;
      if (v3)
      {
LABEL_5:
        if ((v5 & 1) == 0)
        {
          v14 = 0;
          v6 = FigCaptureRotationDegreesAndMirroringFromExifOrientation(v3, &v14);
          v13 = 0;
          v7 = ptn_rotationDegreesAndMirroringFromLiveConfiguration(*(needed + 212), *(needed + 217), *(needed + 219), &v13);
          if (v14 != v13 && (v7 == 270 || v7 == 90))
          {
            v6 += 180;
          }

          v8 = v14 != v13;
          v9 = FigCaptureNormalizeAngle(v6 - v7);
          [MEMORY[0x1E696AD98] numberWithInt:{FigCaptureExifOrientationFromRotationDegreesAndMirroring(v9, v8)}];
          v10 = OUTLINED_FUNCTION_1_25();
          CMSetAttachment(v10, v11, v12, 1u);
        }
      }
    }

    *(needed + 328) = v4;
  }
}

- (void)_updatePrimaryCaptureRect:(uint64_t)rect forOutputSampleBuffer:(const void *)buffer
{
  if (rect)
  {
    OUTLINED_FUNCTION_9_7();
    v3 = *off_1E798A430;
    if (CMGetAttachment(v4, *off_1E798A430, 0))
    {
      v7.origin.x = OUTLINED_FUNCTION_3_1();
      if (!CGRectIsNull(v7))
      {
        v8.origin.x = OUTLINED_FUNCTION_3_1();
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v8);
        CMSetAttachment(buffer, v3, DictionaryRepresentation, 1u);
        if (DictionaryRepresentation)
        {

          CFRelease(DictionaryRepresentation);
        }
      }
    }
  }
}

- (unsigned)_updateLiveDeviceOrientationAffectedMetadataForOutputSampleBuffer:(double)buffer inputDims:(double)dims inputCropRect:(double)rect
{
  v125 = a7;
  v126 = a8;
  rectCopy = rect;
  v122 = a6;
  bufferCopy = buffer;
  dimsCopy = dims;
  if (result)
  {
    v8 = result;
    result = CMGetAttachment(target, *off_1E798A3C8, 0);
    if (result)
    {
      v9 = result;
      v10 = *off_1E798B220;
      v101 = [result objectForKeyedSubscript:*off_1E798B220];
      result = [v101 count];
      if (result)
      {
        v143[0] = 0;
        result = ptn_rotationDegreesAndMirroringFromLiveConfiguration(v8[53], *(v8 + 217), *(v8 + 219), v143);
        HIDWORD(v108) = result;
        if (result || (v143[0] & 1) != 0)
        {
          v97 = v10;
          v98 = v9;
          memset(v142, 0, sizeof(v142));
          FigCaptureMakeMirrorAndRotateVideoTransform(1, 1, (result == 0) | v143[0] & 1, result, v142);
          v141 = 0;
          v137 = 0u;
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          obj = [v101 allKeys];
          v102 = [obj countByEnumeratingWithState:&v137 objects:v136 count:16];
          dictionary = 0;
          if (v102)
          {
            v100 = *v138;
            v105 = *off_1E798ACE8;
            v12 = *MEMORY[0x1E695F058];
            v13 = *(MEMORY[0x1E695F058] + 8);
            v15 = *(MEMORY[0x1E695F058] + 16);
            v14 = *(MEMORY[0x1E695F058] + 24);
            v16 = *off_1E798B5C0;
            v110 = *off_1E798B5D0;
            v113 = v13;
            v114 = *MEMORY[0x1E695F058];
            *&v111 = v14;
            *&v112 = v15;
            v109 = *off_1E798B160;
            do
            {
              for (i = 0; i != v102; i = v91 + 1)
              {
                v107 = dictionary;
                if (*v138 != v100)
                {
                  objc_enumerationMutation(obj);
                }

                v106 = i;
                v104 = *(*(&v137 + 1) + 8 * i);
                v103 = [v101 objectForKeyedSubscript:?];
                v18 = [v103 objectForKeyedSubscript:v105];
                v132 = 0u;
                v133 = 0u;
                v134 = 0u;
                v135 = 0u;
                v116 = v18;
                v19 = [v18 countByEnumeratingWithState:&v132 objects:v131 count:16];
                if (v19)
                {
                  v20 = v19;
                  array = 0;
                  v22 = *v133;
                  do
                  {
                    v23 = 0;
                    v115 = v20;
                    do
                    {
                      if (*v133 != v22)
                      {
                        objc_enumerationMutation(v116);
                      }

                      v24 = *(*(&v132 + 1) + 8 * v23);
                      memset(&rect, 0, sizeof(rect));
                      v25 = [v24 objectForKeyedSubscript:v16];
                      v26 = v14;
                      v27 = v15;
                      v28 = v13;
                      if (v25)
                      {
                        v29 = CGRectMakeWithDictionaryRepresentation(v25, &rect);
                        OUTLINED_FUNCTION_0_23(v37, v38, v39, v40, v41, v42, v43, v44, v29, v30, v31, v32, v33, v34, v35, v36, v93, v94, v95, v96, v97, v98, obj, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, rectCopy, v122, bufferCopy, dimsCopy, v125, v126, v127, v128, v129, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
                        v27 = v45;
                        v26 = v46;
                      }

                      if (v27 > 0.0 && v26 > 0.0)
                      {
                        v120 = v28;
                        v47 = [v24 objectForKeyedSubscript:v16];
                        *&v48 = v14;
                        v49 = v15;
                        v50 = v13;
                        v51 = v12;
                        if (v47)
                        {
                          v52 = CGRectMakeWithDictionaryRepresentation(v47, &rect);
                          v51 = OUTLINED_FUNCTION_0_23(v60, v61, v62, v63, v64, v65, v66, v67, v52, v53, v54, v55, v56, v57, v58, v59, v93, v94, v95, v96, v97, v98, obj, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, rectCopy, v122, bufferCopy, dimsCopy, v125, v126, v127, v128, v129, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
                          v49 = v68;
                        }

                        v117 = *&v51;
                        v118 = v50;
                        v119 = v48;
                        v69 = [v24 objectForKeyedSubscript:v110];
                        if (v69)
                        {
                          v70 = CGRectMakeWithDictionaryRepresentation(v69, &rect);
                          OUTLINED_FUNCTION_0_23(v78, v79, v80, v81, v82, v83, v84, v85, v70, v71, v72, v73, v74, v75, v76, v77, v93, v94, v95, v96, v97, v98, obj, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, rectCopy, v122, bufferCopy, dimsCopy, v125, v126, v127, v128, v129, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
                          v15 = v86;
                          v14 = v87;
                        }

                        v88 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v24];
                        FigCFDictionarySetCGRect();
                        if (v49 > 0.0 && *&v119 > 0.0)
                        {
                          FigCFDictionarySetCGRect();
                        }

                        if (v15 > 0.0 && v14 > 0.0)
                        {
                          FigCFDictionarySetCGRect();
                        }

                        if (FigCFDictionaryGetInt32IfPresent())
                        {
                          v89 = v141;
                          if (v143[0])
                          {
                            v89 = -v141;
                          }

                          FigCaptureNormalizeAngle(v89 + HIDWORD(v108));
                          OUTLINED_FUNCTION_4();
                          FigCFDictionarySetInt32();
                        }

                        v13 = v113;
                        v12 = *&v114;
                        v14 = *&v111;
                        v15 = *&v112;
                        if (FigCFDictionaryGetInt32IfPresent())
                        {
                          if (v143[0])
                          {
                            v90 = -v141;
                          }

                          else
                          {
                            v90 = v141;
                          }

                          FigCaptureNormalizeAngle(v90);
                          OUTLINED_FUNCTION_4();
                          FigCFDictionarySetInt32();
                        }

                        if (FigCFDictionaryGetInt32IfPresent())
                        {
                          FigCaptureNormalizeAngle(v141);
                          OUTLINED_FUNCTION_4();
                          FigCFDictionarySetInt32();
                        }

                        if (!array)
                        {
                          array = [MEMORY[0x1E695DF70] array];
                        }

                        [array addObject:v88];
                        v20 = v115;
                      }

                      ++v23;
                    }

                    while (v20 != v23);
                    v20 = [v116 countByEnumeratingWithState:&v132 objects:v131 count:16];
                  }

                  while (v20);
                }

                else
                {
                  array = 0;
                }

                if ([array count])
                {
                  v91 = v106;
                  dictionary = v107;
                  if (!v107)
                  {
                    dictionary = [MEMORY[0x1E695DF90] dictionary];
                  }

                  v92 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v103];
                  [v92 setObject:array forKeyedSubscript:v105];
                  [dictionary setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithDictionary:", v92), v104}];
                }

                else
                {
                  v91 = v106;
                  dictionary = v107;
                }
              }

              v102 = [obj countByEnumeratingWithState:&v137 objects:v136 count:16];
            }

            while (v102);
          }

          [v98 setObject:dictionary forKeyedSubscript:v97];
          return [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
        }
      }
    }
  }

  return result;
}

- (uint64_t)renderSampleBuffer:(uint64_t)a1 forInput:(_BYTE *)a2 .cold.1(uint64_t a1, _BYTE *a2)
{
  [(BWPixelTransferNode *)a1 _makeCurrentConfigurationLive];
  *a2 = 0;
  return [*(a1 + 16) makeConfiguredFormatLive];
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.3(_DWORD *a1)
{
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_convertUsingHDRProcessing:(_DWORD *)a1 toSDR:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_convertUsingHDRProcessing:(_DWORD *)a1 toSDR:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_convertUsingHDRProcessing:(_DWORD *)a1 toSDR:.cold.5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_convertUsingHDRProcessing:(_DWORD *)a1 toSDR:.cold.6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (void)_convertUsingHDRProcessing:toSDR:.cold.7()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkHDRProcessingDolbyVisionRPUDataKey(void)") description:{@"BWPixelTransferNode.m", 66, @"%s", dlerror()}];
  __break(1u);
}

- (uint64_t)_convertUsingHDRProcessing:(_DWORD *)a1 toSDR:.cold.8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_convertUsingHDRProcessing:(_DWORD *)a1 toSDR:.cold.9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPreferredOutputPixelFormats:(uint64_t)a3 .cold.1(id *a1, void *a2, uint64_t a3)
{
  *a1 = [a2 copy];

  return [(BWPixelTransferNode *)a3 _updateOutputRequirements];
}

@end