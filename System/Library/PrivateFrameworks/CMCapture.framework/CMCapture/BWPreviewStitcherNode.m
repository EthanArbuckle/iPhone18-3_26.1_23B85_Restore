@interface BWPreviewStitcherNode
+ (void)prewarmCoreImageShaders;
- (BOOL)_currentlyZoomingOrSwitchingCameras;
- (BOOL)centerRegistrationValid;
- (BOOL)displaysWidestCameraOnly;
- (BOOL)hasNonLiveConfigurationChanges;
- (BWPreviewStitcherNode)initWithCameraInfoByPortType:(id)a3 sensorBinningFactor:(id)a4 inputBuffersHaveHorizontalOverscanOnly:(BOOL)a5 registrationType:(int)a6 registrationMetalCommandQueue:(id)a7 excludeStaticComponentFromAlignmentShifts:(BOOL)a8 propagateDepth:(BOOL)a9 propagateStyles:(BOOL)a10 smartFramingZoomFactorsByFieldOfView:(id)a11 sensorOrientationByPortType:(id)a12 singleCameraOverCaptureEnabled:(BOOL)a13 parallaxMitigationBasedOnZoomFactorEnabled:(BOOL)a14 zoomPIPOverlayEnabled:(BOOL)a15 zoomPIPMinimumUIZoomFactor:(float)a16 zoomPIPSingleStreamModeEnabled:(BOOL)a17 preallocateOutputBufferPool:(BOOL)a18 primaryCaptureRectCenterYPixelOffsetEnabled:(BOOL)a19 propagatePrimaryPreviewSource:(BOOL)a20;
- (BWPreviewStitcherNode)initWithStitchingDisabledAndZoomPIPOverlayEnabled:(BOOL)a3 zoomPIPMinimumUIZoomFactor:(float)a4 zoomPIPSingleStreamModeEnabled:(BOOL)a5 propagateDepth:(BOOL)a6 propagateStyles:(BOOL)a7 smartFramingZoomFactorsByFieldOfView:(id)a8 sensorOrientationByPortType:(id)a9 singleCameraOverCaptureEnabled:(BOOL)a10 parallaxMitigationBasedOnZoomFactorEnabled:(BOOL)a11 preallocateOutputBufferPool:(BOOL)a12 primaryCaptureRectCenterYPixelOffsetEnabled:(BOOL)a13 propagatePrimaryPreviewSource:(BOOL)a14;
- (CGPoint)primaryCaptureRectCenter;
- (CMSampleBufferRef)_copySampleBufferToAttachForZoomPIPFromWiderCameraSampleBuffer:(const void *)a3 narrowerCameraSampleBuffer:;
- (CMSampleBufferRef)_newStitchedSampleBufferFromWiderCamera:(opaqueCMSampleBuffer *)a3 narrowerCamera:(float64x2_t *)a4 widerCameraRegionsShifts:(double *)a5 teleShift:(double *)a6 primaryCaptureRectOut:(double *)a7 primaryCaptureRectBeforeCroppingOut:(void *)a8 centerWiderCameraShiftOut:(float64_t)a9 currentFrameRate:(float64_t)a10 inputCropRectOut:(float)a11;
- (CMSampleBufferRef)copySampleBufferToAttachForPropagatePrimaryPreviewSourceFromWiderCameraSampleBuffer:(CMSampleBufferRef)sbuf narrowerCameraSampleBuffer:;
- (_BYTE)_updateOverCaptureStatusWithWiderCameraSampleBuffer:(const void *)a3 narrowerCameraSampleBuffer:;
- (_DWORD)_setOverCaptureStatus:(_DWORD *)result;
- (__CFString)_displayStringForPortType:(__CFString *)result;
- (double)_computeBravoWiderToNarrowerCameraShiftFromWiderCameraSampleBuffer:(uint64_t)a3 narrowerCameraSampleBuffer:;
- (double)_scaleFactorAppliedForPixelBuffer:(void *)a3 usedSourceRect:(double)result primaryCaptureRectAspectRatio:(double)a5 metadata:(double)a6;
- (double)_wideBaseZoomFactorWithOverride;
- (double)_wideBaseZoomFactorWithOverrideLocked;
- (double)primaryCameraAspectRatio;
- (double)trueVideoTransitionPercentComplete;
- (id)focusingDescription;
- (id)overCaptureStatusString;
- (id)previewRegistrationType;
- (id)primaryCameraShortDisplayName;
- (id)wideFallbackDescription;
- (int32x2_t)_cameraTransitionPool;
- (opaqueCMSampleBuffer)trueVideoTransitionReferenceSampleBuffer;
- (uint64_t)_applyBrightnessCompensationToImage:(void *)a3 referenceImage:(double)a4 bounds:(double)a5 compensationLevel:(double)a6;
- (uint64_t)_cameraDisplayTransitionFrameCountForCameraFallbackChange:(float)a3 currentFrameRate:;
- (uint64_t)_compensateForMissingFOVUsingPixelBuffer:(__CVBuffer *)a3 sourceRect:(int)a4 destinationContainingRect:(int)a5 destinationInsetRect:(int)a6 outputPixelBuffer:(int)a7;
- (uint64_t)_featheredImageWithNarrowerCameraImage:(uint64_t)a3 widerCameraImage:(int)a4 narrowerCameraClipRect:(int)a5 widerCameraClipRect:(int)a6 zoomingIn:(int)a7 progress:(void *)a8 featherEdges:(double)a9 rampCameraTransition:(double)a10 renderEnhancedFeathering:(CGFloat)a11 narrowerCameraEdgeExpansionRamp:(CGFloat)a12 qsubToQsumEdgeOpacityRamp:(double)a13 qsubToQsumEdgeOpacityRampFromProgress:(double)a14;
- (uint64_t)_primaryCameraPortType;
- (uint64_t)_rectangularFeatheredImageWithNarrowerCameraImage:(uint64_t)a3 widerCameraImage:(int)a4 narrowerCameraClipRect:(int)a5 zoomingIn:(void *)a6 progress:(CGFloat)a7 rampCameraTransition:(CGFloat)a8 narrowerCameraEdgeExpansionRamp:(CGFloat)a9;
- (uint64_t)_renderCameraTransitionRampToPixelBuffer:(__CVBuffer *)a3 bounds:(__CVBuffer *)a4 withWiderCameraPixelBuffer:(int)a5 narrowerCameraPixelBuffer:(int)a6 zoomingIn:(int)a7 progress:(int)a8 narrowerCameraBounds:(double)a9 narrowerCameraShift:(double)a10 featherEdges:(double)a11 rampCameraTransition:(double)a12 renderEnhancedFeathering:(float)a13 narrowerCameraEdgeExpansionRamp:(double)a14 qsubToQsumEdgeOpacityRamp:(double)a15 qsubToQsumEdgeOpacityRampFromProgress:(double)a16 renderBrightnessCompensation:(double)a17;
- (uint64_t)_renderHDRPixelBufferToSDR:(uint64_t)a3 toOutputPixelBuffer:(float)a4 progress:;
- (uint64_t)_transferPixelBuffer:(CVPixelBufferRef)pixelBuffer rect:(int)a4 intoPixelBuffer:(_OWORD *)a5 rect:(int)a6 isFinalOutput:(int)a7 withInputShift:(int)a8 scale:(uint64_t)a9 inputSourceRectOut:(uint64_t)a10;
- (uint64_t)_updateInputRequirements;
- (uint64_t)_updateShiftCorrectionsAsyncFromComputedShift:(void *)a3 byRegisteringWiderCamera:(uint64_t)a4 narrowerCamera:(double)a5 macroTransitionType:(double)a6;
- (unint64_t)_scaleCameraTransitionFrameCount:(int)a3 forCameraFallbackFromWideToTele:(double)a4 recenteringShiftOffset:(double)a5 recenteringStrength:(float)a6 registrationShiftOffset:(double)a7;
- (void)_callDelegateWithAppliedWiderCameraShift:(CVPixelBufferRef)a3 narrowerCameraShift:(int)a4 widerCameraScaleFactor:(int)a5 narrowerCameraScaleFactor:(int)a6 widerCameraPixelBuffer:(int)a7 narrowerCameraPixelBuffer:(int)a8 widerCameraNondisruptiveSwitchingZoomFactor:(uint64_t)a9 narrowerCameraNondisruptiveSwitchingZoomFactor:(uint64_t)a10 widerCameraPortType:narrowerCameraPortType:inSuperWideMacroMode:widerCameraShiftAtBaseZoom:;
- (void)_coreImageMetalLibraryURL;
- (void)_getInputRect:(uint64_t)a3 outputRect:(uint64_t)a4 inputShiftAppliedInOutputRect:(uint64_t)a5 toTransferPixelBuffer:(uint64_t)a6 rect:(uint64_t)a7 intoPixelBufferDimensions:(uint64_t)a8 rect:(double)a9 withInputShift:(double)a10 shiftOutsideBoundingRectAllowed:(double)a11 ignoreBounds:(double)a12 scale:(double)a13 forFinalOutput:(double)a14;
- (void)_initCameraTransitionCIContextWithColorManagementEnabled:(void *)a1;
- (void)_preheatCIRenderingAsync;
- (void)_releaseResources;
- (void)_restitchAndEmitLastInputForAspectAndCenterChange;
- (void)_updateAndGetWiderCameraRegionShifts:(double *)a3 teleShift:(int)a4 widerCameraIsSuperWide:(int)a5 forComputedShift:(double)a6 registrationEnabled:(double)a7 currentFrameRate:(float)a8;
- (void)_updateUprightExifOrientationOnSampleBufferIfNeeded:(uint64_t)a1;
- (void)_updateZoomStatusFromWiderCameraSampleBuffer:narrowerCameraSampleBuffer:;
- (void)_waitForCIPreheatingToFinish;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)markDelayedEndOfData;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)rampToAdditionalZoomFactor:(double)a3 momentMovieRecordingRecenteringEnabled:(BOOL)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setDisplaysWidestCameraOnly:(BOOL)a3;
- (void)setEmitSampleBufferSemaphore:(id)a3;
- (void)setMaxLossyCompressionLevel:(int)a3;
- (void)setPrimaryCameraAspectRatio:(double)a3;
- (void)setPrimaryCaptureRectAspectRatio:(double)a3 center:(CGPoint)a4 trueVideoTransitionPercentComplete:(double)a5 trueVideoTransitionReferenceSampleBuffer:(opaqueCMSampleBuffer *)a6 smartFramingTransitionPercentComplete:(double)a7 smartFramingTransitionTargetFieldOfView:(int)a8 fencePortSendRight:(id)a9;
- (void)setStoppingForModeSwitch:(BOOL)a3 delayedEndOfDataEnabled:(BOOL)a4 ispFastSwitchEnabled:(BOOL)a5 smartStyleRenderingEnabledInTrueVideoGraph:(BOOL)a6;
@end

@implementation BWPreviewStitcherNode

- (uint64_t)_updateInputRequirements
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 8) formatRequirements];
    v3 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2248328];
    FigCaptureSupportedPixelFormatsForCompressionType(1, 1, 1, 0);
    [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
    FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 1, *(v1 + 196));
    [OUTLINED_FUNCTION_8() addObjectsFromArray:?];

    return [v2 setSupportedPixelFormats:v3];
  }

  return result;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v21.i32[0] = [(BWVideoFormat *)[(BWNodeOutput *)self->super._output videoFormat] width];
  v21.i32[1] = [(BWVideoFormat *)[(BWNodeOutput *)self->super._output videoFormat] height];
  FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v21, self->_rotationDegrees);
  v3 = *MEMORY[0x1E695E480];
  VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], &self->_intermediateRotationSession);
  v4 = *MEMORY[0x1E6983D68];
  VTSessionSetProperty(self->_intermediateRotationSession, *MEMORY[0x1E6983D68], MEMORY[0x1E695E118]);
  v5 = MEMORY[0x1E6983E28];
  if (self->_zoomPIPSingleStreamModeEnabled)
  {
    VTSessionSetProperty(self->_intermediateRotationSession, *MEMORY[0x1E6983E28], MEMORY[0x1E695E118]);
  }

  VTPixelRotationSessionCreate(v3, &self->_outputRotationSession);
  outputRotationSession = self->_outputRotationSession;
  v7 = *MEMORY[0x1E6983D98];
  v8 = FigCaptureVTRotationFromDegrees(self->_rotationDegrees);
  VTSessionSetProperty(outputRotationSession, v7, v8);
  VTSessionSetProperty(self->_outputRotationSession, v4, MEMORY[0x1E695E118]);
  if (self->_zoomPIPSingleStreamModeEnabled)
  {
    VTSessionSetProperty(self->_outputRotationSession, *v5, MEMORY[0x1E695E118]);
  }

  if (self->_flipHorizontal)
  {
    VTSessionSetProperty(self->_outputRotationSession, *MEMORY[0x1E6983D78], MEMORY[0x1E695E118]);
  }

  if (self->_flipVertical)
  {
    VTSessionSetProperty(self->_outputRotationSession, *MEMORY[0x1E6983D80], MEMORY[0x1E695E118]);
    flipVertical = self->_flipVertical;
  }

  else
  {
    flipVertical = 0;
  }

  v20 = 0;
  v10 = ptn_rotationDegreesAndMirroringFromLiveConfiguration(self->_rotationDegrees, self->_flipHorizontal, flipVertical, &v20);
  FigCaptureMakeMirrorAndRotateVideoTransform(v21.i32[0], v21.i32[1], v20, v10, v19);
  v11 = v19[1];
  *&self->_outputTransform.a = v19[0];
  *&self->_outputTransform.c = v11;
  *&self->_outputTransform.tx = v19[2];
  if (self->_generatesHistogram)
  {
    VTSessionSetProperty(self->_outputRotationSession, *MEMORY[0x1E6983D70], [MEMORY[0x1E696AD98] numberWithBool:1]);
  }

  if (self->_primaryCaptureRectYInset != 0.0)
  {
    self->_primaryCaptureRectPixelInset = (self->_primaryCaptureRectYInset * [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height]);
    if (self->_primaryCaptureRectPixelInset > ([(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height]- 2) >> 1)
    {
      [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height];
    }

    v12 = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height];
    primaryCaptureRectPixelInset = self->_primaryCaptureRectPixelInset;
    if (primaryCaptureRectPixelInset > (v12 - 2) >> 1)
    {
      primaryCaptureRectPixelInset = ([(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height]+ 0x1FFFFFFFELL) >> 1;
    }

    self->_primaryCaptureRectPixelInset = primaryCaptureRectPixelInset;
  }

  x = self->_primaryCaptureRectCenter.x;
  if (x != 0.5)
  {
    self->_primaryCaptureRectCenterXPixelOffset = ((x + -0.5) * v21.i32[0]);
  }

  y = self->_primaryCaptureRectCenter.y;
  if (y != 0.5)
  {
    self->_primaryCaptureRectCenterYPixelOffset = ((y + -0.5) * v21.i32[1]);
  }

  v16 = MEMORY[0x1E6960CC0];
  *&self->_lastSampleBuffer = *MEMORY[0x1E6960CC0];
  *&self->_lastInputPTS.timescale = *(v16 + 16);
  self->_lastFrameDroppedByBackpressure = 0;
  if (LOBYTE(self->_lastInputPTS.epoch) == 1)
  {
    self->_drawWiderCameraOnly = 1;
  }

  MGGetFloat32Answer();
  self->_screenScale = FigCaptureRoundFloatToMultipleOf(1, v17);
  BYTE1(self->_trueVideo16x9ZoomRamp) = BWColorSpacePropertiesIsHDR([(BWVideoFormat *)[(BWNodeInputMediaProperties *)[(BWNodeInput *)self->super._input primaryMediaProperties] resolvedVideoFormat] colorSpaceProperties]);
  if ((self->_trueVideo16x9ZoomRamp & 1) != 0 || ((BYTE2(self->_blackFilledBorderRectsBySurfaceID) | LOBYTE(self->_lastInputPTS.epoch)) & 1) == 0)
  {
    self->_havePreheatedCI = 1;
  }

  else
  {
    self->_cameraTransitionPoolReadyAssertion = [+[BWMemoryPool sharedMemoryPool](BWMemoryPool newFlushAssertion:"newFlushAssertion:", @"BWPreviewStitcherNode cameraTransitionPool"];
    if (BYTE2(self->_blackFilledBorderRectsBySurfaceID) == 1)
    {
      [(BWPreviewStitcherNode *)self _preheatCIRenderingAsync];
    }
  }

  self->_metalSubmissionQueue = FigDispatchQueueCreateWithPriority();
  v18.receiver = self;
  v18.super_class = BWPreviewStitcherNode;
  [(BWNode *)&v18 prepareForCurrentConfigurationToBecomeLive];
}

- (double)primaryCameraAspectRatio
{
  os_unfair_lock_lock(&self->_configurationLock);
  primaryCameraAspectRatio = self->_primaryCameraAspectRatio;
  os_unfair_lock_unlock(&self->_configurationLock);
  return primaryCameraAspectRatio;
}

- (CGPoint)primaryCaptureRectCenter
{
  x = self->_primaryCaptureRectCenter.x;
  y = self->_primaryCaptureRectCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (uint64_t)_primaryCameraPortType
{
  if (result)
  {
    if (*(result + 1224))
    {
      v1 = *off_1E798A0D0;
      v2 = *off_1E798A0C0;
      if (*(result + 944))
      {
        v1 = *off_1E798A0C0;
        v2 = *off_1E798A0D8;
      }

      if (*(result + 907))
      {
        return v1;
      }

      else
      {
        return v2;
      }
    }

    else
    {
      return *(result + 936);
    }
  }

  return result;
}

- (BOOL)_currentlyZoomingOrSwitchingCameras
{
  if (result)
  {
    v1 = result;
    return *(result + 912) != 0.0 || ([*(result + 952) isRamping] & 1) != 0 || v1[906] != objc_msgSend(v1, "displaysWidestCameraOnly");
  }

  return result;
}

- (BOOL)displaysWidestCameraOnly
{
  os_unfair_lock_lock(&self->_configurationLock);
  displaysWidestCameraOnly = self->_displaysWidestCameraOnly;
  os_unfair_lock_unlock(&self->_configurationLock);
  return (displaysWidestCameraOnly || self->_currentZoomRequiresWiderCamera) && LOBYTE(self->_lastInputPTS.epoch) == 1 && !self->_displaysPrimaryCameraOnly;
}

- (double)_wideBaseZoomFactorWithOverride
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = a1[62];
  if (v1 <= 0.0)
  {
    v1 = a1[61];
    if (v1 <= 0.0)
    {
      v1 = a1[59];
      if (v1 <= 0.0)
      {
        v1 = a1[56];
      }
    }
  }

  *&result = OUTLINED_FUNCTION_16_12(a1, 288, v1);
  return result;
}

- (void)_restitchAndEmitLastInputForAspectAndCenterChange
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 476));
    v2 = *(a1 + 1192);
    if (v2)
    {
      v3 = CFRetain(v2);
      os_unfair_lock_unlock((a1 + 476));
      if (v3)
      {
        v4 = [BWNodeSampleBufferMessage newMessageWithSampleBuffer:v3];
        [objc_msgSend(*(a1 + 8) "connection")];

        CFRelease(v3);
      }
    }

    else
    {

      os_unfair_lock_unlock((a1 + 476));
    }
  }
}

+ (void)prewarmCoreImageShaders
{
  v2 = MEMORY[0x1E695F620];
  v3 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "bundleURL"}];

  [v2 loadArchiveWithName:@"BWPreviewStitcherNodeCoreImageArchive" fromURL:v3];
}

- (BWPreviewStitcherNode)initWithStitchingDisabledAndZoomPIPOverlayEnabled:(BOOL)a3 zoomPIPMinimumUIZoomFactor:(float)a4 zoomPIPSingleStreamModeEnabled:(BOOL)a5 propagateDepth:(BOOL)a6 propagateStyles:(BOOL)a7 smartFramingZoomFactorsByFieldOfView:(id)a8 sensorOrientationByPortType:(id)a9 singleCameraOverCaptureEnabled:(BOOL)a10 parallaxMitigationBasedOnZoomFactorEnabled:(BOOL)a11 preallocateOutputBufferPool:(BOOL)a12 primaryCaptureRectCenterYPixelOffsetEnabled:(BOOL)a13 propagatePrimaryPreviewSource:(BOOL)a14
{
  *(&v16 + 5) = __PAIR16__(a14, a13);
  BYTE4(v16) = a12;
  BYTE3(v16) = a5;
  BYTE2(v16) = a3;
  LOWORD(v16) = __PAIR16__(a11, a10);
  BYTE1(v15) = a7;
  LOBYTE(v15) = a6;
  return [BWPreviewStitcherNode initWithCameraInfoByPortType:"initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:" sensorBinningFactor:0 inputBuffersHaveHorizontalOverscanOnly:0 registrationType:0 registrationMetalCommandQueue:0 excludeStaticComponentFromAlignmentShifts:0 propagateDepth:0 propagateStyles:v15 smartFramingZoomFactorsByFieldOfView:a8 sensorOrientationByPortType:a9 singleCameraOverCaptureEnabled:v16 parallaxMitigationBasedOnZoomFactorEnabled:? zoomPIPOverlayEnabled:? zoomPIPMinimumUIZoomFactor:? zoomPIPSingleStreamModeEnabled:? preallocateOutputBufferPool:? primaryCaptureRectCenterYPixelOffsetEnabled:? propagatePrimaryPreviewSource:?];
}

- (BWPreviewStitcherNode)initWithCameraInfoByPortType:(id)a3 sensorBinningFactor:(id)a4 inputBuffersHaveHorizontalOverscanOnly:(BOOL)a5 registrationType:(int)a6 registrationMetalCommandQueue:(id)a7 excludeStaticComponentFromAlignmentShifts:(BOOL)a8 propagateDepth:(BOOL)a9 propagateStyles:(BOOL)a10 smartFramingZoomFactorsByFieldOfView:(id)a11 sensorOrientationByPortType:(id)a12 singleCameraOverCaptureEnabled:(BOOL)a13 parallaxMitigationBasedOnZoomFactorEnabled:(BOOL)a14 zoomPIPOverlayEnabled:(BOOL)a15 zoomPIPMinimumUIZoomFactor:(float)a16 zoomPIPSingleStreamModeEnabled:(BOOL)a17 preallocateOutputBufferPool:(BOOL)a18 primaryCaptureRectCenterYPixelOffsetEnabled:(BOOL)a19 propagatePrimaryPreviewSource:(BOOL)a20
{
  v21 = a8;
  v74.receiver = self;
  v74.super_class = BWPreviewStitcherNode;
  v27 = [(BWNode *)&v74 init];
  v28 = v27;
  if (!v27)
  {
    return v28;
  }

  v72 = v21;
  LOBYTE(v27->_lastInputPTS.epoch) = a3 != 0;
  v27->_additionalZoomFactorSpring = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v28];
  v71 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v30 primaryMediaConfiguration] setFormatRequirements:v71];
  [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v30 primaryMediaConfiguration] setRetainedBufferCount:1];
  *(v28 + 1676) = a15;
  *(v28 + 1680) = a16;
  *(v28 + 1677) = a17;
  *(v28 + 1678) = a17;
  v31 = *(v28 + 1224);
  if (v31 & 1) != 0 || (*(v28 + 1676))
  {
    v32 = *(v28 + 1676) & 1 | ((v31 & 1) == 0) ? 2 : 0;
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v30 primaryMediaConfiguration] setIndefinitelyHeldBufferCount:v32 | v31];
    if ((*(v28 + 1224) & 1) != 0 || *(v28 + 1676) == 1 && (*(v28 + 1677) & 1) == 0)
    {
      v33 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v33 setFormatRequirements:v71];
      [(BWNodeInputMediaConfiguration *)v33 setPassthroughMode:0];
      [(BWNodeInputMediaConfiguration *)v33 setRetainedBufferCount:1];
      [(BWNodeInputMediaConfiguration *)v33 setIndefinitelyHeldBufferCount:v31];
      [(BWNodeInput *)v30 setMediaConfiguration:v33 forAttachedMediaKey:@"SynchronizedSlaveFrame"];
    }
  }

  *(v28 + 1687) = a9;
  if (a9)
  {
    v34 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v34 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInputMediaConfiguration *)v34 setPassthroughMode:1];
    [(BWNodeInputMediaConfiguration *)v34 setRetainedBufferCount:1];
    [(BWNodeInput *)v30 setMediaConfiguration:v34 forAttachedMediaKey:@"Depth"];
  }

  *(v28 + 1688) = a10;
  if (a10)
  {
    v35 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v35 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInputMediaConfiguration *)v35 setPassthroughMode:1];
    [(BWNodeInputMediaConfiguration *)v35 setRetainedBufferCount:1];
    [(BWNodeInput *)v30 setMediaConfiguration:v35 forAttachedMediaKey:0x1F21AB070];
    v36 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v36 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInputMediaConfiguration *)v36 setPassthroughMode:1];
    [(BWNodeInputMediaConfiguration *)v36 setRetainedBufferCount:1];
    [(BWNodeInput *)v30 setMediaConfiguration:v36 forAttachedMediaKey:0x1F21AB0D0];
  }

  v37 = objc_alloc_init(BWNodeInputMediaConfiguration);
  [(BWNodeInputMediaConfiguration *)v37 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeInputMediaConfiguration *)v37 setPassthroughMode:0];
  [(BWNodeInputMediaConfiguration *)v37 setRetainedBufferCount:1];
  [(BWNodeInput *)v30 setUnspecifiedAttachedMediaConfiguration:v37];
  [v28 addInput:v30];

  [(BWPreviewStitcherNode *)v28 _updateInputRequirements];
  v38 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v28];
  [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v38 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeOutput *)v38 setPoolPreallocationEnabled:a18];
  *(v28 + 1686) = a20;
  if (a20)
  {
    v39 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v39 setPassthroughMode:1];
    v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BWNodeInput index](v30, "index")}];
    -[BWNodeOutputMediaConfiguration setIndexesOfInputsWhichDrivesThisOutput:](v39, "setIndexesOfInputsWhichDrivesThisOutput:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1]);
    [(BWNodeOutputMediaConfiguration *)v39 setAttachedMediaKeyOfInputWhichDrivesThisOutput:@"PrimaryFormat"];
    [(BWNodeOutput *)v38 setMediaConfiguration:v39 forAttachedMediaKey:0x1F21AAAD0];
  }

  [v28 addOutput:v38];

  *(v28 + 144) = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(v28 + 160) = _Q0;
  *(v28 + 348) = 1065353216;
  *(v28 + 352) = 1;
  v45 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (!a3)
  {
    goto LABEL_35;
  }

  v46 = [a3 objectForKeyedSubscript:*off_1E798A0D0];
  v47 = v46;
  if (v46)
  {
    *(v28 + 217) = 1;
    [objc_msgSend(v46 objectForKeyedSubscript:{*off_1E7989E50), "floatValue"}];
    *(v28 + 220) = v48;
    [objc_msgSend(v47 objectForKeyedSubscript:{*off_1E7989E58), "floatValue"}];
    *(v28 + 232) = v49;
    *(v28 + 296) = [v47 objectForKeyedSubscript:*off_1E7989F00];
    *(v28 + 304) = 1065353216;
    v50 = *(v28 + 296) != 0;
    *(v28 + 1744) = v50;
    *(v28 + 1149) = v50;
    *(v28 + 308) = 0;
  }

  v51 = [a3 objectForKeyedSubscript:*off_1E798A0C0];
  if (v51)
  {
    v52 = v51;
    [objc_msgSend(v51 objectForKeyedSubscript:{*off_1E7989E50), "floatValue"}];
    *(v28 + 224) = v53;
    *(v28 + 280) = [v52 objectForKeyedSubscript:*off_1E7989F00];
    *(v28 + 288) = 1065353216;
    *(v28 + 292) = 1065353216;
    if (v47)
    {
      *(v28 + 236) = *(v28 + 224);
      if ([&unk_1F22482F8 containsObject:FigCaptureGetModelSpecificName()])
      {
        *(v28 + 240) = 1;
        if ((*(v28 + 1744) & 1) == 0)
        {
          v54 = *(v28 + 236) * 1.03916449;
          *(v28 + 252) = v54;
          *(v28 + 256) = 1166331904;
          *(v28 + 260) = 1167001600;
          v55 = 1.0;
          v56 = &OBJC_IVAR___BWPreviewStitcherNode__dynamicWideBaseZoomFactorSmoothingFactor;
LABEL_28:
          *(v28 + *v56) = v55;
          goto LABEL_29;
        }

LABEL_27:
        v55 = *(v28 + 236) * 1.03;
        v56 = &OBJC_IVAR___BWPreviewStitcherNode__wideBaseZoomFactorOverrideMacro;
        goto LABEL_28;
      }

      v57 = *(v28 + 1744);
      *(v28 + 240) = v57;
      if (v57)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_29:
  v58 = [a3 objectForKeyedSubscript:*off_1E798A0D8];
  v45 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (v58)
  {
    v59 = v58;
    *(v28 + 218) = 1;
    [objc_msgSend(v58 objectForKeyedSubscript:{*off_1E7989E50), "floatValue"}];
    *(v28 + 228) = v60;
    if (v60 <= 0.0)
    {
      [BWPreviewStitcherNode initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:];
      goto LABEL_62;
    }

    *(v28 + 312) = [v59 objectForKeyedSubscript:*off_1E7989F00];
    *(v28 + 320) = 1065353216;
    *(v28 + 324) = 1065353216;
    *(v28 + 336) = 0;
  }

  *(v28 + 340) = a4;
  if (a4.var0 < 1 || *&a4 <= 0)
  {
    [BWPreviewStitcherNode initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:];
    goto LABEL_62;
  }

  *(v28 + 268) = a5;
  *(v28 + 272) = 1084227584;
LABEL_35:
  *(v28 + 1872) = a11 != 0;
  if (a11)
  {
    *(v28 + 1904) = a11;
    if (a12)
    {
      *(v28 + 1912) = a12;
    }
  }

  *(v28 + 1921) = 1;
  *(v28 + 1920) = 1;
  *(v28 + 1922) = a13;
  if (a13 && (*(v28 + 1872) & 1) == 0)
  {
    [BWPreviewStitcherNode initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:];
    goto LABEL_62;
  }

  *(v28 + 476) = 0;
  if (a3 && (*(v28 + 1224) & 1) != 0)
  {
    *(v28 + 492) = a6;
    v61 = [[BWPreviewRegistration alloc] initWithCameraInfoByPortType:a3 sensorBinningFactor:a4 registrationType:*(v28 + 492) metalCommandQueue:a7 excludeStaticComponentFromAlignmentShifts:v72];
    *(v28 + 504) = v61;
    if (v61)
    {
      *(v28 + 496) = v72;
      *(v28 + 482) = 1;
      *(v28 + 516) = 0;
      *(v28 + 856) = 22;
      *(v28 + 860) = 21;
      *(v28 + 864) = 1;
      *(v28 + 514) = 0;
      *(v28 + 872) = 0;
      goto LABEL_44;
    }

    [BWPreviewStitcherNode initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:];
LABEL_62:

    return 0;
  }

LABEL_44:
  *(v28 + 880) = 0;
  *(v28 + 904) = 0;
  *(v28 + 905) = 0;
  *(v28 + 184) = 0;
  *(v28 + 188) = 0;
  *(v28 + 192) = a19;
  *(v28 + 1040) = 1;
  *(v28 + 1048) = FigDispatchQueueCreateWithPriority();
  *(v28 + 1092) = 1;
  *(v28 + 1096) = 1064514355;
  *(v28 + 1100) = 1008981770;
  *(v28 + 1104) = 1068708659;
  *(v28 + 1108) = 1057803469;
  *(v28 + 1112) = 1073322394;
  *(v28 + 1116) = 1069547520;
  *(v28 + 1120) = 1045220557;
  *(v28 + 1124) = 1070050836;
  *(v28 + 1128) = 1064682127;
  *(v28 + 1132) = 1066192077;
  *(v28 + 1136) = 1070805811;
  *(v28 + 1140) = 1068708659;
  *(v28 + 1144) = 1073322394;
  *(v28 + 1150) = FigCapturePlatformIdentifier() > 8;
  *(v28 + 1152) = 50;
  *(v28 + 1156) = 10;
  *(v28 + 1160) = 10;
  *(v28 + 1164) = 50;
  *(v28 + 1168) = 1;
  *(v28 + 1172) = 1063675494;
  *(v28 + 1176) = 5;
  *(v28 + 1180) = 7;
  *(v28 + 1184) = 1;
  *(v28 + 1185) = FigCapturePlatformIdentifier() > 8;
  *(v28 + 1188) = 1036831949;
  v62 = objc_alloc_init(BWSpringSimulation);
  *(v28 + 1272) = v62;
  [(BWSpringSimulation *)v62 resetWithInput:1.0 initialOutput:1.0 initialVelocity:0.0];
  *(v28 + 1240) = 1065353216;
  *(v28 + 1244) = 0;
  BWSmartCameraSceneInitialize(v28 + 1312, 1, 4, 1, "Wide Focus Distance Far Enough", 41.0, 6.0, 0.25);
  *(v28 + 1313) = 1;
  if (*(v28 + 1224))
  {
    v63 = 4;
  }

  else
  {
    v63 = 0;
  }

  *(v28 + 1308) = v63;
  *(v28 + 1352) = 1;
  *(v28 + 1355) = 1;
  *(v28 + 1356) = 1;
  BWSmartCameraSceneInitialize(v28 + 1360, 1, 4, 1, "Wider Camera FoV Fills Over Capture", 20.0, 16.0, 0.75);
  *(v28 + 1361) = 1;
  BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering((v28 + 1360));
  *(v28 + 1404) = 1;
  *(v28 + 1408) = 1;
  BWSmartCameraSceneInitialize(v28 + 1416, 1, 10, 7, "Wide Focus Distance Far Enough To Use Tele", 61.0, 6.0, 0.2);
  *(v28 + 1417) = 1;
  *(v28 + 1464) = [[BWRamp alloc] initWithName:@"WideFallbackShiftRamp"];
  *(v28 + 1490) = v72;
  *(v28 + 1640) = [[BWFencedAnimationQueue alloc] initWithQueueSize:1];
  BWSmartCameraSceneInitialize(v28 + 1496, 1, 3, 0, "Wide Focus Distance Far Enough To Use Wide", 16.0, 2.0, 0.8);
  *(v28 + 1497) = 1;
  *(v28 + 1536) = [[BWRamp alloc] initWithName:@"SuperWideFallbackShiftRamp"];
  *(v28 + 1568) = 1050253722;
  *(v28 + 1577) = 1;
  *(v28 + 1574) = 1;
  *(v28 + 1624) = 1;
  *(v28 + 1628) = 1028443341;
  *(v28 + 1632) = 0;
  BWSmartCameraSceneInitialize(v28 + 1584, 1, 4, 2, "Super Wide Focus Distance Far Enough For Registration", 7.5, 1.5, 0.5);
  v64 = 0;
  *(v28 + 1585) = 1;
  *(v28 + 1652) = 30;
  if (*(v28 + 1224) == 1)
  {
    v64 = *(v28 + 280) != 0;
  }

  *(v28 + 1656) = v64;
  *(v28 + 1660) = 1098907648;
  v65 = *(v28 + 280);
  v66 = 0.0;
  if (v65)
  {
    v67 = *(v28 + 228);
    [objc_msgSend(v65 lastObject];
    v66 = v67 / v68;
  }

  v70 = v66 < 2.0 && v66 > 0.0;
  *(v28 + 1664) = *(v28 + 1224) & v70;
  *(v28 + 1668) = 1067198710;
  *(v28 + 1672) = 1069547520;
  *(v28 + 328) = *(v28 + 280) != 0;
  *(v28 + 329) = *(v28 + v45[330]) != 0;
  *(v28 + 1685) = FigCapturePlatformIdentifier() > 8;
  *(v28 + 1696) = a14;
  BWSmartCameraSceneInitialize(v28 + 1704, 1, 16, 0, "Narrower Camera FoV Fills Over Capture", 0.99, 0.0, 0.9);
  *(v28 + 1705) = 1;
  *(v28 + 1776) = 1;
  [v28 setSupportsLiveReconfiguration:1];
  *(v28 + 1956) = 1;
  *(v28 + 1960) = 4;
  return v28;
}

- (void)dealloc
{
  [(BWPreviewStitcherNode *)self _releaseResources];
  intermediateRotationSession = self->_intermediateRotationSession;
  if (intermediateRotationSession)
  {
    CFRelease(intermediateRotationSession);
  }

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  outputRotationSession = self->_outputRotationSession;
  if (outputRotationSession)
  {
    CFRelease(outputRotationSession);
  }

  v6 = 3;
  v7 = self;
  do
  {

    v7 = (v7 + 56);
    --v6;
  }

  while (v6);
  v8 = *&self->_cameraTransitionBrightnessCompensationInsetPercentage;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *&self->_allowEdgeInsetDuringTrueVideoTransitions;
  if (v9)
  {
    CFRelease(v9);
  }

  transitionReferenceSampleBuffer = self->_transitionReferenceSampleBuffer;
  if (transitionReferenceSampleBuffer)
  {
    CFRelease(transitionReferenceSampleBuffer);
  }

  self->_emitSampleBufferSemaphore = 0;
  v11.receiver = self;
  v11.super_class = BWPreviewStitcherNode;
  [(BWNode *)&v11 dealloc];
}

- (void)setPrimaryCaptureRectAspectRatio:(double)a3 center:(CGPoint)a4 trueVideoTransitionPercentComplete:(double)a5 trueVideoTransitionReferenceSampleBuffer:(opaqueCMSampleBuffer *)a6 smartFramingTransitionPercentComplete:(double)a7 smartFramingTransitionTargetFieldOfView:(int)a8 fencePortSendRight:(id)a9
{
  v84.i32[0] = [(BWVideoFormat *)[(BWNodeOutput *)self->super._output videoFormat] width];
  v84.i32[1] = [(BWVideoFormat *)[(BWNodeOutput *)self->super._output videoFormat] height];
  FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v84, self->_rotationDegrees);
  v77 = v84;
  if (!BYTE2(self->_blackFilledBorderRectsBySurfaceID))
  {
    a6 = 0;
  }

  v15 = a3;
  os_unfair_lock_lock(&self->_configurationLock);
  primaryCameraAspectRatio = self->_primaryCameraAspectRatio;
  if (FigCaptureMetadataUtilitiesSizeIsInLandscapeOrientation(v84.i32[0], v84.i32[1]))
  {
    v17 = a3;
  }

  else
  {
    v17 = 1.0 / a3;
    if (v17 >= 1.0)
    {
      v15 = 1.0 / v15;
      primaryCameraAspectRatio = 1.0 / primaryCameraAspectRatio;
    }
  }

  v74 = 1749;
  if (v15 >= primaryCameraAspectRatio)
  {
    v18 = BYTE5(self->_narrowerCameraFoVFillsOverCapture.name);
  }

  else
  {
    v18 = 0;
  }

  v19 = BYTE3(self->_blackFilledBorderRectsBySurfaceID);
  v20 = v18 & (v19 ^ 1);
  if (a5 < 0.999 && (v19 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (v19)
  {
LABEL_14:
    v21 = v20;
    goto LABEL_15;
  }

  if (a5 > 0.0)
  {
LABEL_12:
    v21 = 1;
    goto LABEL_15;
  }

  v21 = BYTE1(self->_lastInputPTS.epoch);
  if (v21 != 1)
  {
    if (a6)
    {
      goto LABEL_12;
    }

    goto LABEL_157;
  }

  if (!a6 && (BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) == 0)
  {
LABEL_157:
    if (self->_primaryCameraAspectRatio == a3 || (BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_15:
  v22 = 0;
  if (!a8)
  {
    if (v21)
    {
      v22 = 1;
      if (v17 < 1.33233333 && v17 > 0.751 && (LOBYTE(self->_restitchingQueue) != 1 || (BYTE2(self->_restitchingQueue) & 1) == 0 && (BYTE1(self->_restitchingQueue) & 1) == 0 && !LODWORD(self->_smartFramingTransitionPercentComplete)))
      {
        v22 = 0;
      }
    }
  }

  v75 = v20;
  v23 = CMGetAttachment(a6, @"LandscapeAspectRatioBeforeTrueVideoTransition", 0);
  if (v23)
  {
    [v23 floatValue];
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  if (BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) == v22)
  {
    v76 = 0;
  }

  else
  {
    BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) = v22;
    v26 = v22 ^ 1;
    if (BYTE3(self->_blackFilledBorderRectsBySurfaceID) == 1)
    {
      v76 = !v22 || self->_landscapeAspectRatioBeforeTrueVideoTransition > a5;
    }

    else
    {
      LODWORD(v76) = v22;
      HIDWORD(v76) = (v26 & BYTE2(self->_blackFilledBorderRectsBySurfaceID));
    }

    v27 = fmin(fabs(v25 + -1.77777778), fabs(v25 + -0.5625)) >= 0.001;
    if (fmin(fabs(v17 + -1.77777778), fabs(v17 + -0.5625)) >= 0.001)
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0 && !v27 && self->_lastPrimaryCameraAspectRatio == 0.0)
    {

      trueVideoHDRtoSDRBlendRamp = [[BWRamp alloc] initWithName:@"TrueVideoSpecialZoomRamp"];
      self->_trueVideoHDRtoSDRBlendRamp = trueVideoHDRtoSDRBlendRamp;
      if (BYTE3(self->_blackFilledBorderRectsBySurfaceID) == 1)
      {
        self->_trueVideoTransitionEnteringAspectRatio = v25;
        trueVideoHDRtoSDRBlendRamp = self->_trueVideoHDRtoSDRBlendRamp;
        LODWORD(v31) = 1128792064;
        LODWORD(v33) = 981668463;
        LODWORD(v34) = 1114636288;
        v29 = 0.0;
        LODWORD(v30) = 1.0;
      }

      else
      {
        LODWORD(v31) = 1128005632;
        LODWORD(v33) = 981668463;
        LODWORD(v34) = 1114636288;
        LODWORD(v29) = 1.0;
        v30 = 0.0;
      }

      LODWORD(v32) = 17.0;
      [(BWRamp *)trueVideoHDRtoSDRBlendRamp startSpringRampFrom:v29 to:v30 withTension:v31 friction:v32 snapFraction:v33 frameRate:v34, 1749];
    }
  }

  v35 = [CMGetAttachment(a6 *off_1E798A3C8];
  if (a6)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a6);
    if (ImageBuffer)
    {
      v37 = !BWPixelBufferIsHDR(ImageBuffer);
    }

    else
    {
      v37 = 1;
    }

    v38 = BYTE1(self->_trueVideo16x9ZoomRamp);
    trueVideo16x9ZoomRamp = self->_trueVideo16x9ZoomRamp;
    if (!*&self->_allowEdgeInsetDuringTrueVideoTransitions && !*&self->_transitionReferenceLearnedCoefficientsSampleBufferApplyCount && (self->_trueVideo16x9ZoomRamp & 1) == 0 && ((v38 | v37) & 1) != 0)
    {
      *&self->_allowEdgeInsetDuringTrueVideoTransitions = CFRetain(a6);
      *&self->_transitionReferenceLearnedCoefficientsSampleBufferApplyCount = [[BWRamp alloc] initWithName:@"TrueVideoTransitionOpacityRamp"];
      AttachedMedia = BWSampleBufferGetAttachedMedia(a6, 0x1F21AB070);
      if (BYTE1(self->_zoomPIPMinimumUIZoomFactor) == 1 && AttachedMedia)
      {
        transitionReferenceSampleBuffer = self->_transitionReferenceSampleBuffer;
        self->_transitionReferenceSampleBuffer = AttachedMedia;
        CFRetain(AttachedMedia);
        if (transitionReferenceSampleBuffer)
        {
          CFRelease(transitionReferenceSampleBuffer);
        }

        LODWORD(self->_transitionReferenceLearnedCoefficientsSampleBuffer) = 0;
      }

      if (BYTE3(self->_blackFilledBorderRectsBySurfaceID))
      {
        v52 = 147.0;
      }

      else
      {
        v52 = 166.0;
      }

      v53 = [CMGetAttachment(a6 @"TrueVideoTransitionLargeSphereTravelDetected"];
      if (BYTE4(self->_blackFilledBorderRectsBySurfaceID) & 1) != 0 || (v58 = v53, ([v35 isEqual:*off_1E798A0E0]) || objc_msgSend(v35, "isEqual:", *off_1E798A0F8))
      {
        v59 = v52 * 0.843373494;
        *&v54 = v59;
      }

      else if (v58)
      {
        *&v54 = v52 + -4.0;
      }

      else
      {
        *&v54 = v52;
      }

      LODWORD(v56) = 981668463;
      LODWORD(v57) = 1114636288;
      LODWORD(v59) = 1.0;
      LODWORD(v55) = 24.0;
      [*&self->_transitionReferenceLearnedCoefficientsSampleBufferApplyCount startSpringRampFrom:v59 to:0.0 withTension:v54 friction:v55 snapFraction:v56 frameRate:{v57, v74}];
      goto LABEL_62;
    }
  }

  else
  {
    LOBYTE(v38) = BYTE1(self->_trueVideo16x9ZoomRamp);
    trueVideo16x9ZoomRamp = self->_trueVideo16x9ZoomRamp;
  }

  if ((v22 & BYTE3(self->_blackFilledBorderRectsBySurfaceID)) == 1 && ((self->_landscapeAspectRatioBeforeTrueVideoTransition > a5) & v38) == 1 && !self->_transitionReferenceOpacityRamp && !(trueVideo16x9ZoomRamp & 1 | (*&self->_transitionReferenceLearnedCoefficientsSampleBufferApplyCount != 0)))
  {
    if (BYTE4(self->_blackFilledBorderRectsBySurfaceID))
    {
      v40 = 7;
    }

    else
    {
      v40 = 12;
    }

    v41 = [[BWRamp alloc] initWithName:@"TrueVideoHDRtoSDRTransitionRamp"];
    self->_transitionReferenceOpacityRamp = v41;
    LODWORD(v42) = 1045220557;
    LODWORD(v43) = 1.0;
    [(BWRamp *)v41 startRampFrom:v40 to:0 iterations:v43 shape:v42];
  }

LABEL_62:
  landscapeAspectRatioBeforeTrueVideoTransition = self->_landscapeAspectRatioBeforeTrueVideoTransition;
  if (landscapeAspectRatioBeforeTrueVideoTransition > a5 && (setPrimaryCaptureRectAspectRatio_center_trueVideoTransitionPercentComplete_trueVideoTransitionReferenceSampleBuffer_smartFramingTransitionPercentComplete_smartFramingTransitionTargetFieldOfView_fencePortSendRight__trueVideoTransitionExitObservedForSignpost & 1) == 0)
  {
    if (*MEMORY[0x1E695FF58])
    {
      v46 = fig_log_handle();
      if (os_signpost_enabled(v46))
      {
        *buf = 67240448;
        v81 = 16;
        v82 = 1026;
        v83 = 0;
        _os_signpost_emit_with_name_impl(&dword_1AC90E000, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CameraCaptureTrueVideoExitAnimationDelay", " enableTelemetry=YES N1=%{public,signpost.telemetry:number1}d N2=%{public,signpost.telemetry:number2}d", buf, 0xEu);
      }
    }

    v45 = 1;
    goto LABEL_70;
  }

  if (landscapeAspectRatioBeforeTrueVideoTransition < a5)
  {
    v45 = 0;
LABEL_70:
    setPrimaryCaptureRectAspectRatio_center_trueVideoTransitionPercentComplete_trueVideoTransitionReferenceSampleBuffer_smartFramingTransitionPercentComplete_smartFramingTransitionTargetFieldOfView_fencePortSendRight__trueVideoTransitionExitObservedForSignpost = v45;
  }

  if (a6 && (BYTE3(self->_blackFilledBorderRectsBySurfaceID) & 1) != 0 && (([v35 isEqual:*off_1E798A0E0] & 1) != 0 || objc_msgSend(v35, "isEqual:", *off_1E798A0F8)))
  {
    v47 = CMGetAttachment(a6, @"TotalZoomFactor", 0);
    if (v47)
    {
      [v47 floatValue];
      v49 = v48;
    }

    else
    {
      v49 = 1.0;
    }

    *&self->_forceBlackFillBorderEnabled = *&self->_forceBlackFillBorderEnabled / v49;
  }

  v60 = self->_landscapeAspectRatioBeforeTrueVideoTransition;
  if (v60 <= 0.0)
  {
    v62 = 0;
    v61 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  }

  else
  {
    v61 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    v62 = v60 < a5 || a5 == 1.0 && v60 == 1.0;
  }

  if ((BYTE3(self->_blackFilledBorderRectsBySurfaceID) & 1) != 0 || (v62 & BYTE4(self->_narrowerCameraFoVFillsOverCapture.name)) != 1 || v15 <= primaryCameraAspectRatio)
  {
    if (*(&self->super.super.isa + v74) == 1 && *&self->_superWideSensorCenterOffsetEnabled > v15)
    {
      *(&self->super.super.isa + v74) = 0;
    }
  }

  else
  {
    *(&self->super.super.isa + v74) = 1;
    *&self->_superWideSensorCenterOffsetEnabled = v15;
  }

  v64 = v22 && (v63 = self->_landscapeAspectRatioBeforeTrueVideoTransition, v63 <= a5) && v63 != 0.0;
  if (((v64 | BYTE3(self->_blackFilledBorderRectsBySurfaceID) | v75) & 1) == 0)
  {
    self->_trueVideoTransitionEnteringAspectRatio = v17;
  }

  self->_landscapeAspectRatioBeforeTrueVideoTransition = a5;
  restitchingQueue_low = LOBYTE(self->_restitchingQueue);
  if (restitchingQueue_low == 1)
  {
    if (BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) == 1 && ((*(&self->super.super.isa + v61[461]) & 1) != 0 || LODWORD(self->_smartFramingTransitionPercentComplete)))
    {
      LOBYTE(restitchingQueue_low) = 1;
      if ((BYTE2(self->_restitchingQueue) & 1) == 0)
      {
        BYTE2(self->_restitchingQueue) = 1;
        LOBYTE(restitchingQueue_low) = self->_restitchingQueue;
      }
    }

    else
    {
      LOBYTE(restitchingQueue_low) = 1;
    }
  }

  v66 = 0;
  if (a8 && a7 > 0.0 && a7 < 0.999 && (restitchingQueue_low & 1) != 0)
  {
    if (BYTE4(self->_narrowerCameraFoVFillsOverCapture.name))
    {
      v66 = 0;
    }

    else
    {
      smartFramingTransitionPercentComplete_low = LODWORD(self->_smartFramingTransitionPercentComplete);
      if (smartFramingTransitionPercentComplete_low != a8)
      {
        if (smartFramingTransitionPercentComplete_low)
        {
          HIDWORD(self->_smartFramingTransitionPercentComplete) = smartFramingTransitionPercentComplete_low;
        }

        LODWORD(self->_smartFramingTransitionPercentComplete) = a8;
      }

      if (*&self->_smartFramingEnabled != a7)
      {
        *&self->_smartFramingEnabled = a7;
      }

      v66 = 1;
    }
  }

  if (restitchingQueue_low)
  {
    if (v66)
    {
      if (a7 != 1.0 || !a8)
      {
        goto LABEL_147;
      }
    }

    else
    {
      if (a8)
      {
        v68 = a7 == 1.0;
      }

      else
      {
        v68 = 0;
      }

      if (!v68 && (*(&self->super.super.isa + v61[461]) & 1) == 0)
      {
        goto LABEL_147;
      }
    }

    if (LODWORD(self->_smartFramingTransitionPercentComplete) != a8)
    {
      LODWORD(self->_smartFramingTransitionPercentComplete) = a8;
    }
  }

LABEL_147:
  v69 = ((a4.x + -0.5) * v77.i32[0]);
  v70 = ((a4.y + -0.5) * v77.i32[1]);
  v71 = v61[461];
  if (*(&self->super.super.isa + v71) != v66)
  {
    *(&self->super.super.isa + v71) = v66;
  }

  self->_primaryCameraAspectRatio = a3;
  self->_primaryCaptureRectCenter = a4;
  self->_primaryCaptureRectCenterXPixelOffset = v69;
  self->_primaryCaptureRectCenterYPixelOffset = v70;
  os_unfair_lock_unlock(&self->_configurationLock);
  if (a9)
  {
    [*&self->_superMacroEdgeFeatheringShowBlurMask enqueueFencedAnimation:{+[BWPreviewStitcherFencedAnimationInfo fencedAnimationInfoWithAspectRatio:center:centerXPixelOffset:centerYPixelOffset:fencePortSendRight:](BWPreviewStitcherFencedAnimationInfo, "fencedAnimationInfoWithAspectRatio:center:centerXPixelOffset:centerYPixelOffset:fencePortSendRight:", v69, v70, a9, a3, a4.x, a4.y)}];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [*&self->_superMacroEdgeFeatheringShowBlurMask count];
      [a9 port];
      kdebug_trace();
    }

    if (BYTE1(self->_trueVideoCaptureAdditionalZoomFactor) == 1)
    {
      BYTE1(self->_trueVideoCaptureAdditionalZoomFactor) = 0;
      if (!*&self->_thermalPressureIsCritical)
      {
        mach_absolute_time();
      }

      mach_absolute_time();
      FigHostTimeToNanoseconds();
    }

    [(BWPreviewStitcherNode *)self _restitchAndEmitLastInputForAspectAndCenterChange];
  }

  if (v76)
  {
    [(BWPreviewStitcherDelegate *)self->_delegate trueVideoCaptureAdditionalZoomFactorForPreviewStitcher:self];
    if (v72 > 0.0)
    {
      v73 = v72;
      os_unfair_lock_lock(&self->_configurationLock);
      *&self->_forceBlackFillBorderEnabled = v73;
      os_unfair_lock_unlock(&self->_configurationLock);
    }
  }

  if (HIDWORD(v76))
  {
    [(BWPreviewStitcherDelegate *)self->_delegate previewStitcherTrueVideoExitTransitionDidComplete:self];
  }
}

- (double)trueVideoTransitionPercentComplete
{
  os_unfair_lock_lock(&self->_configurationLock);
  landscapeAspectRatioBeforeTrueVideoTransition = self->_landscapeAspectRatioBeforeTrueVideoTransition;
  os_unfair_lock_unlock(&self->_configurationLock);
  return landscapeAspectRatioBeforeTrueVideoTransition;
}

- (opaqueCMSampleBuffer)trueVideoTransitionReferenceSampleBuffer
{
  os_unfair_lock_lock(&self->_configurationLock);
  v3 = *&self->_cameraTransitionBrightnessCompensationInsetPercentage;
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  CMSetAttachment(v4, @"LandscapeAspectRatioBeforeTrueVideoTransition", [MEMORY[0x1E696AD98] numberWithDouble:self->_trueVideoTransitionEnteringAspectRatio], 1u);
  os_unfair_lock_unlock(&self->_configurationLock);

  return v4;
}

- (void)setDisplaysWidestCameraOnly:(BOOL)a3
{
  os_unfair_lock_lock(&self->_configurationLock);
  self->_displaysWidestCameraOnly = a3;

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)rampToAdditionalZoomFactor:(double)a3 momentMovieRecordingRecenteringEnabled:(BOOL)a4
{
  os_unfair_lock_lock(&self->_configurationLock);
  epoch = self->_additionalZoomFactorSpringStartPTS.epoch;
  if (*&self->_lastRenderTime >= a3)
  {
    v8 = 22.0;
  }

  else
  {
    v8 = 24.0;
  }

  [self->_additionalZoomFactorSpringStartPTS.epoch setTension:dbl_1AD046ED0[*&self->_lastRenderTime < a3]];
  [epoch setFriction:v8];
  [epoch resetWithInput:1.0 initialOutput:0.0 initialVelocity:0.0 convergedSpeed:0.001];
  HIDWORD(self->_lastRenderTime) = self->_lastRenderTime;
  v9 = a3;
  *&self->_lastRenderTime = v9;
  v10 = MEMORY[0x1E6960C70];
  *&self->_additionalZoomFactor = *MEMORY[0x1E6960C70];
  *&self->_additionalZoomFactorSpringStartPTS.timescale = *(v10 + 16);
  LOBYTE(self->_fencedAnimationQueue) = a4;

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)setStoppingForModeSwitch:(BOOL)a3 delayedEndOfDataEnabled:(BOOL)a4 ispFastSwitchEnabled:(BOOL)a5 smartStyleRenderingEnabledInTrueVideoGraph:(BOOL)a6
{
  v6 = a4;
  self->_stoppingForModeSwitch = a3;
  BYTE1(self->_narrowerCameraFoVFillsOverCapture.name) = a4;
  BYTE3(self->_narrowerCameraFoVFillsOverCapture.name) = a5;
  BYTE1(self->_zoomPIPMinimumUIZoomFactor) = a6;
  v8 = LOBYTE(self->_lastInputPTS.epoch) != 1 || !a3;
  if (!v8 && ((BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) != 0 || a4))
  {
    [(BWPreviewStitcherNode *)self _setOverCaptureStatus:?];
  }

  if ((BYTE3(self->_blackFilledBorderRectsBySurfaceID) & 1) == 0 && ((BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) != 0 || v6))
  {
    LOBYTE(self->_fencedAnimationQueue) = 1;
  }
}

- (void)markDelayedEndOfData
{
  if (BYTE1(self->_narrowerCameraFoVFillsOverCapture.name) == 1)
  {
    if (BYTE2(self->_narrowerCameraFoVFillsOverCapture.name) == 1)
    {
      v3 = +[BWNodeEndOfDataMessage newMessage];
      [(BWNodeConnection *)[(BWNodeInput *)self->super._input connection] consumeMessage:v3 fromOutput:[(BWNodeConnection *)[(BWNodeInput *)self->super._input connection] output]];
    }

    else
    {
      BYTE2(self->_narrowerCameraFoVFillsOverCapture.name) = 1;
    }
  }
}

- (void)setPrimaryCameraAspectRatio:(double)a3
{
  os_unfair_lock_lock(&self->_configurationLock);
  self->_primaryCameraAspectRatio = a3;

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)setMaxLossyCompressionLevel:(int)a3
{
  if (self->_maxLossyCompressionLevel != a3)
  {
    self->_maxLossyCompressionLevel = a3;
    [(BWPreviewStitcherNode *)self _updateInputRequirements];
  }
}

- (void)setEmitSampleBufferSemaphore:(id)a3
{
  emitSampleBufferSemaphore = self->_emitSampleBufferSemaphore;
  if (emitSampleBufferSemaphore != a3)
  {

    self->_emitSampleBufferSemaphore = a3;
  }
}

- (id)focusingDescription
{
  if (BYTE1(self->_wideFocusDistanceFarEnoughToUseTele.name))
  {
    v3 = @" T: One Shot";
  }

  else
  {
    v3 = &stru_1F216A3D0;
  }

  v4 = MEMORY[0x1E696AEC0];
  [(BWPreviewStitcherNode *)self wideFocusDistance];
  v6 = v5;
  if (LOBYTE(self->_wideFocusDistanceFarEnoughToUseTele.name))
  {
    v7 = " One Shot";
  }

  else
  {
    v7 = "";
  }

  return [v4 stringWithFormat:@"W: \t%.1fcm%s\t%@", *&v6, v7, v3];
}

- (id)overCaptureStatusString
{
  trueVideoCaptureAdditionalZoomFactor_high = HIDWORD(self->_trueVideoCaptureAdditionalZoomFactor);
  if (trueVideoCaptureAdditionalZoomFactor_high > 6)
  {
    return 0;
  }

  else
  {
    return off_1E79909C8[trueVideoCaptureAdditionalZoomFactor_high];
  }
}

- (id)primaryCameraShortDisplayName
{
  v3 = [(BWPreviewStitcherNode *)self _primaryCameraPortType];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(BWPreviewStitcherNode *)self _displayStringForPortType:v3];
  return [v4 stringWithFormat:@"%@ (Rec %@)", v5, -[BWPreviewStitcherNode _displayStringForPortType:](self, self->_lastRecommendedMasterPortType)];
}

- (BOOL)centerRegistrationValid
{
  if (LOBYTE(self->_lastInputPTS.epoch) == 1)
  {
    os_unfair_lock_lock(&self->_shiftCorrectionsUpdateLock);
    if (self->_lastNarrowerCameraIsTele)
    {
      v3 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
    }

    else
    {
      v3 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
    }

    v4 = *(&self->_primaryCaptureRectYInset + *v3 + 1);
    os_unfair_lock_unlock(&self->_shiftCorrectionsUpdateLock);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (id)wideFallbackDescription
{
  if (BYTE1(self->_wideFallbackRecenteringShiftOffset.y))
  {
    v3 = @"Yes";
  }

  else
  {
    v3 = @"No";
  }

  v4 = MEMORY[0x1E696AEC0];
  [*&self->_wideFocusingOneShot currentValue];
  v6 = v5 * 100.0;
  v7 = 0.3;
  if (BYTE2(self->_wideFallbackRecenteringShiftOffset.y))
  {
    v7 = 0.001;
  }

  return [v4 stringWithFormat:@"%@ : %ld%%", v3, llroundf(v6 * v7)];
}

- (id)previewRegistrationType
{
  if ([(BWPreviewRegistration *)self->_registration previewRegistrationType]== 1)
  {
    return @"AdaptiveCorrection";
  }

  else
  {
    return @"Vision";
  }
}

- (BOOL)hasNonLiveConfigurationChanges
{
  v4.receiver = self;
  v4.super_class = BWPreviewStitcherNode;
  v2 = [(BWNode *)&v4 hasNonLiveConfigurationChanges];
  if (v2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Live reconfiguring BWPreviewStitcherNode with changing formats is not supported", 0}]);
  }

  return v2;
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  v7 = [(BWNodeOutput *)self->super._output formatRequirements];
  v8 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2248310];
  v9 = v8;
  if ((self->_lastInputPTS.epoch & 1) == 0)
  {
    [v8 insertObject:&unk_1F2242EC8 atIndex:0];
  }

  v10 = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] pixelFormat];
  IsFullRange = FigCapturePixelFormatIsFullRange(v10);
  IsTenBit = FigCapturePixelFormatIsTenBit(v10);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __50__BWPreviewStitcherNode_didSelectFormat_forInput___block_invoke;
  v19[3] = &__block_descriptor_34_e35_B24__0__NSNumber_8__NSDictionary_16l;
  v20 = IsFullRange;
  v21 = IsTenBit;
  [v9 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v19)}];
  [(BWFormatRequirements *)v7 setSupportedPixelFormats:v9];
  outputDimensions = self->_outputDimensions;
  if (outputDimensions.width < 1 || outputDimensions.height < 1)
  {
    -[BWFormatRequirements setWidth:](v7, "setWidth:", [objc_msgSend(a4 "videoFormat")]);
    height = [objc_msgSend(a4 "videoFormat")];
  }

  else
  {
    [(BWFormatRequirements *)v7 setWidth:*&self->_outputDimensions & 0x7FFFFFFFLL];
    height = self->_outputDimensions.height;
  }

  [(BWFormatRequirements *)v7 setHeight:height];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "colorSpaceProperties")}];
  -[BWFormatRequirements setSupportedColorSpaceProperties:](v7, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1]);
  if (self->_zoomPIPUseNarrowerCamera)
  {
    v16 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [a4 index]);
    v17 = [v16 mediaPropertiesForAttachedMediaKey:0x1F21AAAD0];
    if (!v17)
    {
      v17 = objc_alloc_init(BWNodeOutputMediaProperties);
      [v16 _setMediaProperties:v17 forAttachedMediaKey:0x1F21AAAD0];
    }

    [(BWNodeOutputMediaProperties *)v17 setResolvedFormat:a3];
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if (LOBYTE(self->_lastInputPTS.epoch) == 1)
  {
    [(BWPreviewStitcherDelegate *)self->_delegate previewStitcher:self overCaptureStatusDidChange:HIDWORD(self->_trueVideoCaptureAdditionalZoomFactor)];
  }

  v9.receiver = self;
  v9.super_class = BWPreviewStitcherNode;
  [(BWNode *)&v9 configurationWithID:a3 updatedFormat:a4 didBecomeLiveForInput:a5];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v148 = 0;
  v149 = 0;
  if (self->_superMacroEdgeFeatheringBlurEnabled)
  {
    [(BWPreviewRegistration *)self->_registration waitForRegistrationToComplete:a3];
  }

  memset(&v147, 0, sizeof(v147));
  CMSampleBufferGetPresentationTimeStamp(&v147, a3);
  v6 = CMGetAttachment(a3, @"UIZoomFactor", 0);
  if (v6)
  {
    [v6 floatValue];
  }

  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    BWGetOriginalPresentationTimeStampFromBuffer(a3, &time2);
    time = time2;
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  if (![(BWNodeOutput *)self->super._output liveFormat])
  {
    goto LABEL_71;
  }

  time = v147;
  time2 = *&self->_lastSampleBuffer;
  if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0)
  {
    if (LOBYTE(self->_lastInputPTS.epoch) == 1 && !BWSampleBufferGetAttachedMedia(a3, @"SynchronizedSlaveFrame"))
    {
      v17 = [CMGetAttachment(a3 @"OverCaptureSlaveStreamStatus"];
      if (v17 == 4 || v17 == 1 && !self->_previewsWideBeforeSlaveStreamStarts)
      {
LABEL_71:
        if (*v7 == 1)
        {
          kdebug_trace();
        }

        return;
      }
    }

    os_unfair_lock_lock(&self->_configurationLock);
    v8 = *&self->_cameraTransitionBrightnessCompensationInsetPercentage;
    time.value = 0;
    BWCMSampleBufferCreateCopyIncludingMetadata(a3, &time);
    *&v134.origin.x = v8;
    if (v8 == a3)
    {
      if (!time.value)
      {
        os_unfair_lock_unlock(&self->_configurationLock);
        v11 = 0;
        goto LABEL_38;
      }

      v11 = CFRetain(time.value);
    }

    else
    {
      v9 = *&self->_cameraTransitionBrightnessCompensationInsetPercentage;
      value = time.value;
      *&self->_cameraTransitionBrightnessCompensationInsetPercentage = time.value;
      if (value)
      {
        CFRetain(value);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      *&self->_lastSampleBuffer = v147;
      v11 = a3;
    }

    if (time.value)
    {
      CFRelease(time.value);
    }

    os_unfair_lock_unlock(&self->_configurationLock);
    if (*&v134.origin.x != a3)
    {
      if ((self->_lastInputPTS.epoch & 0x100) != 0 || self->_trueVideoHDRtoSDRBlendRamp || BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) == 1)
      {
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        v14 = UpTimeNanoseconds;
        if (BYTE1(self->_lastInputPTS.epoch) == 1 && UpTimeNanoseconds - *&self->_multiCameraStitchingEnabled <= 24000000)
        {
          goto LABEL_71;
        }

        os_unfair_lock_lock(&self->_configurationLock);
        trueVideoHDRtoSDRBlendRamp = self->_trueVideoHDRtoSDRBlendRamp;
        if (trueVideoHDRtoSDRBlendRamp)
        {
          v16 = [(BWRamp *)trueVideoHDRtoSDRBlendRamp isRamping];
        }

        else
        {
          v16 = self->_landscapeAspectRatioBeforeTrueVideoTransition > 0.002;
        }

        if (BYTE3(self->_blackFilledBorderRectsBySurfaceID) == 1)
        {
          if ((BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (!v16 && (BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) != 0 && (BYTE5(self->_narrowerCameraFoVFillsOverCapture.name) & 1) == 0)
          {
            if (v14 - *&self->_multiCameraStitchingEnabled > 110000000)
            {
              BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) = 0;

              self->_trueVideoHDRtoSDRBlendRamp = 0;
              v20 = BYTE2(self->_blackFilledBorderRectsBySurfaceID);
              os_unfair_lock_unlock(&self->_configurationLock);
              if (v20 == 1)
              {
                [(BWPreviewStitcherDelegate *)self->_delegate previewStitcherTrueVideoExitTransitionDidComplete:self];
              }

              goto LABEL_56;
            }

LABEL_55:
            os_unfair_lock_unlock(&self->_configurationLock);
LABEL_56:
            v18 = 0;
            BYTE1(self->_lastInputPTS.epoch) = 0;
LABEL_57:
            if (v147.flags)
            {
              v21 = &self->_havePreheatedCI + 4;
              if (self->_firstFramePTS.timescale)
              {
                if (!self->_havePreheatedCI)
                {
                  memset(&time, 0, sizeof(time));
                  time2 = v147;
                  *&rhs.value = *v21;
                  rhs.epoch = *&self->_firstFramePTS.flags;
                  CMTimeSubtract(&time, &time2, &rhs);
                  CMTimeMake(&time2, 750, 1000);
                  rhs = time;
                  if ((CMTimeCompare(&rhs, &time2) & 0x80000000) == 0)
                  {
                    [(BWPreviewStitcherNode *)self _preheatCIRenderingAsync];
                  }
                }
              }

              else
              {
                *v21 = *&v147.value;
                *&self->_firstFramePTS.flags = v147.epoch;
                [(BWPreviewStitcherDelegate *)self->_delegate previewStitcherReadyForPrimaryCaptureRectUpdates:self];
              }
            }

            if (BYTE1(self->_trueVideoCaptureAdditionalZoomFactor) == 1)
            {
              v22 = *&self->_thermalPressureIsCritical;
              v23 = mach_absolute_time();
              if (!v22)
              {
                *&self->_thermalPressureIsCritical = v23;
                goto LABEL_71;
              }

              if (((FigHostTimeToNanoseconds() / 1000) / 1000000.0) < 0.11)
              {
                goto LABEL_71;
              }

              BYTE1(self->_trueVideoCaptureAdditionalZoomFactor) = 0;
            }

            if (*(&self->_zoomPIPUseNarrowerCamera + 1) && (AttachedMedia = BWSampleBufferGetAttachedMedia(v11, @"Depth")) != 0)
            {
              v131 = CFRetain(AttachedMedia);
            }

            else
            {
              v131 = 0;
            }

            zoomPIPMinimumUIZoomFactor_low = LOBYTE(self->_zoomPIPMinimumUIZoomFactor);
            if ((self->_lastInputPTS.epoch & 1) != 0 || LOBYTE(self->_borderStretchScaleFactor) == 1)
            {
              BWOverCaptureSampleBufferUnpackAndRetain(v11, zoomPIPMinimumUIZoomFactor_low ^ 1, &v149, &v148, 0, 0);
              if (v148)
              {
LABEL_78:
                if (LOBYTE(self->_zoomPIPMinimumUIZoomFactor) == 1)
                {
                  v26 = v148;
                  if (psn_attachedMediaKeysToPropagateForStyles_onceToken != -1)
                  {
                    [BWPreviewStitcherNode renderSampleBuffer:forInput:];
                  }

                  BWSampleBufferFilterWithAllowedAttachedMedia(v26, psn_attachedMediaKeysToPropagateForStyles_propagatingKeysForStyles);
                  v27 = v149;
                  if (psn_attachedMediaKeysToPropagateForStyles_onceToken != -1)
                  {
                    [BWPreviewStitcherNode renderSampleBuffer:forInput:];
                  }

                  BWSampleBufferFilterWithAllowedAttachedMedia(v27, psn_attachedMediaKeysToPropagateForStyles_propagatingKeysForStyles);
                }

                if (*(&self->_zoomPIPUseNarrowerCamera + 1))
                {
                  if ([CMGetAttachment(v148 @"DepthDisabled"])
                  {
                    v122 = 1;
                  }

                  else
                  {
                    v122 = [CMGetAttachment(v149 @"DepthDisabled"];
                  }
                }

                else
                {
                  v122 = 0;
                }

                v31 = *MEMORY[0x1E695EFF8];
                v30 = *(MEMORY[0x1E695EFF8] + 8);
                v132 = [(BWPreviewStitcherNode *)self _copySampleBufferToAttachForZoomPIPFromWiderCameraSampleBuffer:v149 narrowerCameraSampleBuffer:v148];
                cf = [(BWPreviewStitcherNode *)self copySampleBufferToAttachForPropagatePrimaryPreviewSourceFromWiderCameraSampleBuffer:v32 narrowerCameraSampleBuffer:v148];
                epoch = self->_lastInputPTS.epoch;
                if (LOBYTE(self->_borderStretchScaleFactor) == 1 && (self->_lastInputPTS.epoch & 1) == 0 && v149)
                {
                  CFRelease(v149);
                  v149 = 0;
                  epoch = self->_lastInputPTS.epoch;
                }

                if ((epoch & 1) == 0)
                {
                  if (!self->_lastNarrowerCameraPortType)
                  {
                    [(BWPreviewStitcherDelegate *)self->_delegate previewStitcher:self overCaptureStatusDidChange:HIDWORD(self->_trueVideoCaptureAdditionalZoomFactor)];
                  }

                  v35 = *off_1E798A3C8;
                  v37 = CMGetAttachment(v148, *off_1E798A3C8, 0);

                  v38 = *off_1E798B540;
                  v124 = 0;
                  self->_lastNarrowerCameraPortType = [v37 objectForKeyedSubscript:*off_1E798B540];
                  v36 = v38;
                  goto LABEL_104;
                }

                [BWPreviewStitcherNode _updateZoomStatusFromWiderCameraSampleBuffer:narrowerCameraSampleBuffer:];
                v124 = v34;
                v35 = *off_1E798A3C8;
                if (!v149)
                {
                  v36 = *off_1E798B540;
LABEL_104:
                  v39 = v30;
                  v40 = v31;
                  goto LABEL_111;
                }

                v41 = CMGetAttachment(v149, *off_1E798A3C8, 0);
                v129 = CMGetAttachment(v148, v35, 0);
                v42 = *off_1E798B730;
                v43 = [v41 objectForKeyedSubscript:*off_1E798B730];
                if (!v43)
                {
                  v43 = [MEMORY[0x1E695DF90] dictionary];
                  [v41 setObject:v43 forKeyedSubscript:v42];
                }

                v125 = *off_1E798B540;
                v44 = [v129 objectForKeyedSubscript:?];
                if (v44)
                {
                  v45 = v44;
                  if (![v43 objectForKeyedSubscript:v44])
                  {
                    v46 = [MEMORY[0x1E695DF90] dictionary];
                    [v46 setObject:objc_msgSend(v129 forKeyedSubscript:{"objectForKeyedSubscript:"), *off_1E798B3C0}];
                    [v46 setObject:objc_msgSend(v129 forKeyedSubscript:{"objectForKeyedSubscript:"), *off_1E798B3C8}];
                    [v43 setObject:v46 forKeyedSubscript:v45];
                  }

                  v40 = [(BWPreviewStitcherNode *)self _computeBravoWiderToNarrowerCameraShiftFromWiderCameraSampleBuffer:v149 narrowerCameraSampleBuffer:v148];
                  v39 = v47;
                  v36 = v125;
LABEL_111:
                  v130 = [objc_msgSend(CMGetAttachment(v149 v35];
                  registrationEnabled = self->_registrationEnabled;
                  if (v149)
                  {
                    v49 = v149;
                  }

                  else
                  {
                    v49 = v148;
                  }

                  v50 = [objc_msgSend(CMGetAttachment(v49 v35];
                  if (self->_deviceIsStationary != v50)
                  {
                    if (BYTE1(self->_superWideFallbackRecenteringStrength) == 1)
                    {
                      v51 = LOBYTE(self->_superWideFallbackRecenteringStrength) ^ 1;
                    }

                    else
                    {
                      v51 = 1;
                    }

                    self->_pendingRegistrationAfterDeviceBecomesStationary = v50 & v51;
                    self->_deviceIsStationary = v50;
                  }

                  v52 = CMGetAttachment(v148, v35, 0);
                  v126 = v36;
                  v53 = [v52 objectForKeyedSubscript:v36];
                  if (LOBYTE(self->_lastInputPTS.epoch) == 1 && self->_excludeStaticComponentFromAlignmentShiftsEnabled)
                  {
                    v54 = v53;
                    time = v147;
                    time2 = *(&self->_havePreheatedCI + 4);
                    if (!CMTimeCompare(&time, &time2))
                    {
                      if ([v54 isEqualToString:*off_1E798A0C0])
                      {
                        ImageBuffer = CMSampleBufferGetImageBuffer(v148);
                        v56 = psn_pixelBufferDimensions(ImageBuffer);
                        [(BWPreviewRegistration *)self->_registration computeApproximateCorrectionForWiderCamera:v148 narrowerCameraPortType:*off_1E798A0D8 narrowerPixelBufferDimensions:v56 widerToNarrowerCameraScale:((self->_teleBaseZoomFactor * self->_teleNondisruptiveSwitchingScaleFactor) / (self->_wideBaseZoomFactor * self->_wideNondisruptiveSwitchingScaleFactor))];
                        v58 = v57;
                        v60 = v59;
                        [objc_msgSend(v52 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
                        if (v61 != 0.0)
                        {
                          v62 = v61;
                          v58 = v58 / v62;
                          v60 = v60 / v62;
                        }

                        os_unfair_lock_lock(&self->_shiftCorrectionsUpdateLock);
                        p_valueIsUpdated = &self->_wideToTeleShiftCorrections[0].valueIsUpdated;
                        v64 = 3;
                        do
                        {
                          *(p_valueIsUpdated - 2) = v58;
                          *(p_valueIsUpdated - 1) = v60;
                          *p_valueIsUpdated = 1;
                          p_valueIsUpdated += 56;
                          --v64;
                        }

                        while (v64);
                        *&self->_wideFallbackShiftRamp = self->_wideToTeleShiftCorrections[2].updatedValue;
                        os_unfair_lock_unlock(&self->_shiftCorrectionsUpdateLock);
                      }
                    }
                  }

                  key = v35;
                  v127 = v18;
                  v128 = v11;
                  if (LOBYTE(self->_lastInputPTS.epoch) == 1 && registrationEnabled)
                  {
                    if (v149)
                    {
                      v66 = v148 == 0;
                    }

                    else
                    {
                      v66 = 1;
                    }

                    registrationEnabled = !v66;
                  }

                  if (LOBYTE(self->_lastInputPTS.epoch))
                  {
                    v67 = !registrationEnabled;
                  }

                  else
                  {
                    v67 = 1;
                  }

                  if (!v67 && (!self->_lastRegistrationEnabled || *&v134.origin.x != a3))
                  {
                    if (v124 & 1 | ![(BWPreviewStitcherNode *)self _currentlyZoomingOrSwitchingCameras])
                    {
                      if (!v149)
                      {
                        goto LABEL_203;
                      }
                    }

                    else
                    {
                      if (self->_lastRegisteredFrameCaptureID)
                      {
                        v70 = 1;
                      }

                      else
                      {
                        v70 = v149 == 0;
                      }

                      if (v70)
                      {
                        goto LABEL_203;
                      }
                    }

                    v71 = [objc_msgSend(v52 objectForKeyedSubscript:{*off_1E798B708), "intValue"}];
                    v72 = v71;
                    registrationFrameSkipCount = self->_registrationFrameSkipCount;
                    lastRegisteredFrameCaptureID = self->_lastRegisteredFrameCaptureID;
                    v75 = v71 - lastRegisteredFrameCaptureID;
                    if (v75 < 0)
                    {
                      v75 = lastRegisteredFrameCaptureID - v71;
                    }

                    if (v124)
                    {
                      registrationFrameSkipCount /= 4;
                    }

                    else if (HIDWORD(self->_trueVideoCaptureAdditionalZoomFactor) == 3)
                    {
                      registrationFrameSkipCount = (registrationFrameSkipCount * 1.5);
                    }

                    if (v75 >= registrationFrameSkipCount || self->_registerFirstFrame && !lastRegisteredFrameCaptureID || self->_pendingRegistrationAfterDeviceBecomesStationary)
                    {
                      if (v130)
                      {
                        LODWORD(v134.origin.x) = 0;
                        v76 = BYTE4(self->_superWideFallbackRecenteringShiftOffset.y);
                      }

                      else
                      {
                        v76 = 0;
                        LODWORD(v134.origin.x) = LOBYTE(self->_wideFallbackRecenteringShiftOffset.y);
                      }

                      if (v149)
                      {
                        v77 = v149;
                      }

                      else
                      {
                        v77 = v148;
                      }

                      v78 = CMGetAttachment(v77, @"TotalZoomFactor", 0);
                      v79 = 1.0;
                      if (v78)
                      {
                        [v78 floatValue];
                        v79 = v80;
                      }

                      if (!(v76 & 1 | ((v130 & 1) == 0)))
                      {
                        v76 = [self->_wideFocusDistanceFarEnoughToUseWide.name isRamping] && (self->_superWideFallbackShiftRamp & 1) == 0 && self->_haveSuperWideCamera && self->_haveTeleCamera && v79 >= self->_teleBaseZoomFactor;
                      }

                      v81 = self->_deviceIsStationary && !self->_pendingRegistrationAfterDeviceBecomesStationary;
                      if (v130)
                      {
                        superMacroRangeRegistrationTuningEnabled = self->_superMacroRangeRegistrationTuningEnabled;
                        if (!superMacroRangeRegistrationTuningEnabled)
                        {
                          if (self->_lastRegisteredFrameCaptureID)
                          {
                            goto LABEL_203;
                          }

                          os_unfair_lock_lock(&self->_shiftCorrectionsUpdateLock);
                          self->_lastRegisteredFrameCaptureID = self->_superWideToWideShiftCorrections[2].registeredFrameCaptureID;
                          os_unfair_lock_unlock(&self->_shiftCorrectionsUpdateLock);
                        }

                        if (!self->_lastRegisteredFrameCaptureID)
                        {
                          if ((HIDWORD(self->_wideFallbackRecenteringShiftOffset.y) - 1) <= 1)
                          {
                            if (BYTE4(self->_superWideFallbackRecenteringShiftOffset.y))
                            {
                              v83 = 1;
                            }

                            else
                            {
                              v83 = 2;
                            }

LABEL_202:
                            self->_lastRegisteredFrameCaptureID = v72;
                            self->_pendingRegistrationAfterDeviceBecomesStationary = 0;
                            [(BWPreviewStitcherNode *)self _updateShiftCorrectionsAsyncFromComputedShift:v149 byRegisteringWiderCamera:v148 narrowerCamera:v83 macroTransitionType:v40, v39];
                            goto LABEL_203;
                          }

LABEL_198:
                          if (BYTE1(self->_superWideFallbackRecenteringStrength) == 1 && (LOBYTE(self->_superWideFallbackRecenteringStrength) & v130 & 1) != 0)
                          {
                            v83 = BYTE4(self->_superWideFallbackRecenteringShiftOffset.y) ^ 1u;
                          }

                          else
                          {
                            v83 = 0;
                          }

                          goto LABEL_202;
                        }

                        v84 = !superMacroRangeRegistrationTuningEnabled;
                      }

                      else
                      {
                        if (!self->_lastRegisteredFrameCaptureID)
                        {
                          goto LABEL_198;
                        }

                        v84 = 0;
                      }

                      if (((LODWORD(v134.origin.x) | v76 | v81) & 1) == 0 && !v84)
                      {
                        goto LABEL_198;
                      }
                    }
                  }

LABEL_203:
                  v143[0] = *MEMORY[0x1E695EFF8];
                  v143[1] = v143[0];
                  v143[2] = v143[0];
                  v134.origin = v143[0];
                  v142 = v143[0];
                  [objc_msgSend(v52 objectForKeyedSubscript:{*off_1E798B210), "floatValue"}];
                  v86 = v85;
                  [(BWPreviewStitcherNode *)self _updateAndGetWiderCameraRegionShifts:v143 teleShift:v142.f64 widerCameraIsSuperWide:v130 forComputedShift:registrationEnabled registrationEnabled:v40 currentFrameRate:v39, v85];
                  if ((self->_lastInputPTS.epoch & 1) != 0 || BYTE2(self->_sensorOrientationByPortType) == 1)
                  {
                    [(BWPreviewStitcherNode *)self _updateOverCaptureStatusWithWiderCameraSampleBuffer:v149 narrowerCameraSampleBuffer:v148];
                  }

                  v29 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                  emitSampleBufferSemaphore = self->_emitSampleBufferSemaphore;
                  v28 = emitSampleBufferSemaphore != 0;
                  v11 = v128;
                  v18 = v127;
                  if (emitSampleBufferSemaphore)
                  {
                    if ([(BWNodeConnection *)[(BWNodeOutput *)self->super._output connection] suspended]&& ![(BWNodeConnection *)[(BWNodeOutput *)self->super._output connection] bypassed])
                    {
                      goto LABEL_212;
                    }

                    v88 = 0;
                    if (v86 > 0.0 && !self->_lastFrameDroppedByBackpressure)
                    {
                      v88 = dispatch_time(0, (1000000000.0 / (v86 + v86)));
                    }

                    v89 = dispatch_semaphore_wait(self->_emitSampleBufferSemaphore, v88);
                    self->_lastFrameDroppedByBackpressure = v89 != 0;
                    if (v89)
                    {
LABEL_212:
                      v28 = 0;
                      goto LABEL_213;
                    }
                  }

                  v140 = 0u;
                  v141 = 0u;
                  v138 = 0u;
                  v139 = 0;
                  v136 = 0u;
                  v137 = 0u;
                  origin = v134.origin;
                  v95 = [(BWPreviewStitcherNode *)self _newStitchedSampleBufferFromWiderCamera:v149 narrowerCamera:v148 widerCameraRegionsShifts:v143 teleShift:&v140 primaryCaptureRectOut:&v138 primaryCaptureRectBeforeCroppingOut:&origin.x centerWiderCameraShiftOut:&v136 currentFrameRate:v142.f64[0] inputCropRectOut:v142.f64[1], v86];
                  if (!v95)
                  {
LABEL_213:
                    v90 = 0;
                    if (!v28 && *(&self->super.super.isa + v29[452]))
                    {
                      *&v134.size.height = *(&self->super.super.isa + v29[452]);
                      v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134.size.height count:1];
                    }

                    CMSampleBufferGetPresentationTimeStamp(&time, v11);
                    [(BWNodeOutput *)self->super._output emitDroppedSample:[BWDroppedSample newDroppedSampleWithReason:0x1F219BF70 pts:&time backPressureSemaphoresToIgnore:v90]];
                    v91 = 0;
                    transitionReferenceSampleBuffer = 0;
                    v93 = 1;
LABEL_217:
                    if (v11)
                    {
                      v94 = v18;
                    }

                    else
                    {
                      v94 = 0;
                    }

                    if (v94 == 1)
                    {
                      CFRelease(v11);
                    }

                    if (v149)
                    {
                      CFRelease(v149);
                    }

                    if (v148)
                    {
                      CFRelease(v148);
                    }

                    if (v132)
                    {
                      CFRelease(v132);
                    }

                    if (v131)
                    {
                      CFRelease(v131);
                    }

                    if (transitionReferenceSampleBuffer)
                    {
                      CFRelease(transitionReferenceSampleBuffer);
                    }

                    if (cf)
                    {
                      CFRelease(cf);
                    }

                    if (*v7 == 1)
                    {
                      [CMGetAttachment(v91 @"CAContextFencePortGenerationID"];
                      kdebug_trace();
                    }

                    if ((v93 & 1) == 0)
                    {
                      CFRelease(v91);
                    }

                    return;
                  }

                  v91 = v95;
                  if (LOBYTE(self->_borderStretchScaleFactor) == 1 && v132)
                  {
                    v96 = CMGetAttachment(v149, key, 0);
                    v97 = CMGetAttachment(v132, key, 0);
                    x = origin.x;
                    if (origin.x != v31 || (x = origin.y, origin.y != v30))
                    {
                      if ([objc_msgSend(v96 objectForKeyedSubscript:{v126, x), "isEqualToString:", objc_msgSend(v97, "objectForKeyedSubscript:", v126)}])
                      {
                        DictionaryRepresentation = CGPointCreateDictionaryRepresentation(origin);
                        CMSetAttachment(v132, @"NarrowerCameraPreviewAlignmentShift", DictionaryRepresentation, 1u);
                        if (DictionaryRepresentation)
                        {
                          CFRelease(DictionaryRepresentation);
                        }
                      }
                    }

                    BWSampleBufferSetAttachedMedia(v91, 0x1F21AAEB0, v132);
                  }

                  v100 = off_1E798A440;
                  if (self->_zoomPIPUseNarrowerCamera)
                  {
                    if (cf)
                    {
                      psn_attachCropRectToSampleBuffer(cf, *off_1E798A398, *&v136, *(&v136 + 1), *&v137, *(&v137 + 1));
                      psn_attachCropRectToSampleBuffer(cf, *off_1E798A360, *&v136, *(&v136 + 1), *&v137, *(&v137 + 1));
                      CMSetAttachment(cf, @"RotationDegrees", [MEMORY[0x1E696AD98] numberWithInt:self->_rotationDegrees], 1u);
                      BWSampleBufferSetAttachedMedia(v91, 0x1F21AAAD0, cf);
                      if (LOBYTE(self->_restitchingQueue) == 1)
                      {
                        v101 = CMSampleBufferGetImageBuffer(cf);
                        CVPixelBufferGetWidth(v101);
                        CVPixelBufferGetHeight(v101);
                        FigCaptureDenormalizeCropRect(*&v136, *(&v136 + 1), *&v137, *(&v137 + 1));
                        v104 = FigCaptureMetadataUtilitiesSizeIsInLandscapeOrientation(v102, v103);
                        CMSetAttachment(v91, *off_1E798A440, [MEMORY[0x1E696AD98] numberWithBool:v104], 1u);
                      }
                    }
                  }

                  if (v131)
                  {
                    BWSampleBufferSetAttachedMedia(v91, @"Depth", v131);
                  }

                  if (*(&self->_zoomPIPUseNarrowerCamera + 1) && ((v122 & 1) != 0 || BYTE4(self->_superWideFallbackRecenteringShiftOffset.y) == 1))
                  {
                    CMSetAttachment(v91, @"DepthDisabled", MEMORY[0x1E695E118], 1u);
                  }

                  if (LOBYTE(self->_zoomPIPMinimumUIZoomFactor) != 1)
                  {
                    transitionReferenceSampleBuffer = 0;
LABEL_272:
                    v107 = v140;
                    v108 = v141;
                    v109 = v138;
                    *&v134.origin.x = v138;
                    v110 = v139;
                    v111 = CMSampleBufferGetImageBuffer(v91);
                    CVPixelBufferGetWidth(v111);
                    CVPixelBufferGetHeight(v111);
                    FigCaptureMetadataUtilitiesNormalizeCropRect(*&v107, *(&v107 + 1), *&v108, *(&v108 + 1));
                    v112 = CGRectCreateDictionaryRepresentation(v151);
                    CMSetAttachment(v91, *off_1E798A430, v112, 1u);
                    if (v112)
                    {
                      CFRelease(v112);
                    }

                    v152.origin.x = v134.origin.x;
                    v152.origin.y = *(&v109 + 1);
                    v152.size = v110;
                    v113 = CGRectCreateDictionaryRepresentation(v152);
                    CMSetAttachment(v91, *off_1E798A438, v113, 1u);
                    if (v113)
                    {
                      CFRelease(v113);
                    }

                    if ((BYTE1(self->_zoomPIPMinimumUIZoomFactor) & 1) == 0)
                    {
                      if ((BYTE3(self->_blackFilledBorderRectsBySurfaceID) & 1) == 0 && BYTE2(self->_narrowerCameraFoVFillsOverCapture.name) == 1)
                      {
                        CMSetAttachment(v91, @"SmartStyleApplyWithIdentityCoefficients", MEMORY[0x1E695E118], 1u);
                      }

                      if (BYTE2(self->_blackFilledBorderRectsBySurfaceID) == 1 && (BYTE3(self->_blackFilledBorderRectsBySurfaceID) & 1) == 0)
                      {
                        if ((BYTE2(self->_zoomPIPMinimumUIZoomFactor) & 1) == 0)
                        {
                          time = v147;
                          v114 = CMTimeGetSeconds(&time) + 0.3;
                          *&self->_previewTapRegistered = v114;
                          BYTE2(self->_zoomPIPMinimumUIZoomFactor) = 1;
                        }

                        time = v147;
                        v18 = v127;
                        if (CMTimeGetSeconds(&time) < *&self->_previewTapRegistered)
                        {
                          CMSetAttachment(v91, @"SmartStyleApplyWithIdentityCoefficients", MEMORY[0x1E695E118], 1u);
                        }
                      }
                    }

                    v115 = CMGetAttachment(v91, key, 0);
                    v116 = [CMGetAttachment(v91 *v100];
                    smartFramingFieldOfViewTransitionNotifyAppliedZoomFactors = self->_smartFramingFieldOfViewTransitionNotifyAppliedZoomFactors;
                    self->_smartFramingFieldOfViewTransitionNotifyAppliedZoomFactors = v116;
                    if ((self->_lastStitchedBufferPTS.flags & 1) != 0 && (v118 = v116, time = v147, time2 = *&self->_singleCameraOverCaptureRemainingFramesUntilStopOverCaptureRendering, !CMTimeCompare(&time, &time2)) && smartFramingFieldOfViewTransitionNotifyAppliedZoomFactors == v118 && (epoch_high = HIDWORD(self->_lastStitchedBufferPTS.epoch), epoch_high <= LODWORD(self->_lastStitchedBufferPTS.epoch)))
                    {
                      v120 = 0;
                      HIDWORD(self->_lastStitchedBufferPTS.epoch) = epoch_high + 1;
                      v121 = 1;
                    }

                    else
                    {
                      v121 = 0;
                      v120 = 0;
                      HIDWORD(self->_lastStitchedBufferPTS.epoch) = 0;
                      if (BYTE1(self->_restitchingQueue) == 1)
                      {
                        v121 = 0;
                        v120 = LODWORD(self->_smartFramingTransitionPercentComplete) == 4;
                      }
                    }

                    [v115 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v121), *off_1E798A660}];
                    [v115 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v120), *off_1E798A838}];
                    *&self->_singleCameraOverCaptureRemainingFramesUntilStopOverCaptureRendering = v147;
                    [(BWNodeOutput *)self->super._output emitSampleBuffer:v91];
                    v93 = 0;
                    v7 = MEMORY[0x1E695FF58];
                    v11 = v128;
                    goto LABEL_217;
                  }

                  transitionReferenceSampleBuffer = self->_transitionReferenceSampleBuffer;
                  if (transitionReferenceSampleBuffer)
                  {
                    v105 = 8;
                  }

                  else
                  {
                    v105 = 18;
                  }

                  if (BYTE1(self->_zoomPIPMinimumUIZoomFactor) == 1 && transitionReferenceSampleBuffer)
                  {
                    CFRetain(self->_transitionReferenceSampleBuffer);
                    ++LODWORD(self->_transitionReferenceLearnedCoefficientsSampleBuffer);
                    v18 = v127;
                    if ((BYTE1(self->_zoomPIPMinimumUIZoomFactor) & 1) == 0)
                    {
                      goto LABEL_271;
                    }
                  }

                  else
                  {
                    transitionReferenceSampleBuffer = 0;
                    v18 = v127;
                    if (!BYTE1(self->_zoomPIPMinimumUIZoomFactor))
                    {
LABEL_271:
                      psn_attachCropRectToSampleBuffer(v91, *off_1E798A398, *&v136, *(&v136 + 1), *&v137, *(&v137 + 1));
                      CMSetAttachment(v91, @"PreviewStitcherPrimaryCameraTransitionInProgress", [MEMORY[0x1E696AD98] numberWithInt:self->_cameraTransitionRamp != 0], 1u);
                      v100 = off_1E798A440;
                      goto LABEL_272;
                    }
                  }

                  v106 = self->_transitionReferenceSampleBuffer;
                  if (v106 && SLODWORD(self->_transitionReferenceLearnedCoefficientsSampleBuffer) >= v105)
                  {
                    CFRelease(v106);
                    self->_transitionReferenceSampleBuffer = 0;
                  }

                  goto LABEL_271;
                }

                [BWPreviewStitcherNode renderSampleBuffer:forInput:];
                v28 = 0;
LABEL_92:
                v29 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                goto LABEL_213;
              }

              [BWPreviewStitcherNode renderSampleBuffer:forInput:];
            }

            else
            {
              if (v11)
              {
                v69 = CFRetain(v11);
                v148 = v69;
                if (v69)
                {
                  if ((zoomPIPMinimumUIZoomFactor_low & 1) == 0)
                  {
                    BWSampleBufferRemoveAllAttachedMedia(v69);
                  }

                  goto LABEL_78;
                }
              }

              else
              {
                v148 = 0;
              }

              [BWPreviewStitcherNode renderSampleBuffer:forInput:];
            }

            v28 = 0;
            v132 = 0;
            cf = 0;
            goto LABEL_92;
          }

          if ((BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) == 0 || self->_landscapeAspectRatioBeforeTrueVideoTransition > 0.99)
          {
            goto LABEL_55;
          }
        }

        os_unfair_lock_unlock(&self->_configurationLock);
        if (BYTE1(self->_lastInputPTS.epoch) == 1 && v14 - *&self->_multiCameraStitchingEnabled < 110000001)
        {
          goto LABEL_71;
        }

        goto LABEL_56;
      }

      v19 = FigGetUpTimeNanoseconds();
      v18 = 0;
LABEL_39:
      *&self->_multiCameraStitchingEnabled = v19;
      goto LABEL_57;
    }

LABEL_38:
    v18 = 1;
    BYTE1(self->_lastInputPTS.epoch) = 1;
    v19 = FigGetUpTimeNanoseconds();
    goto LABEL_39;
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  if ([*&self->_superMacroEdgeFeatheringShowBlurMask count])
  {
    metalSubmissionQueue = self->_metalSubmissionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__BWPreviewStitcherNode_renderSampleBuffer_forInput___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_async(metalSubmissionQueue, block);
  }
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  if (self->_emitSampleBufferSemaphore)
  {
    emitSampleBufferSemaphore = self->_emitSampleBufferSemaphore;
    v6 = +[BWDroppedSample newDroppedSampleFromDroppedSample:backPressureSemaphoresToIgnore:](BWDroppedSample, "newDroppedSampleFromDroppedSample:backPressureSemaphoresToIgnore:", a3, [MEMORY[0x1E695DEC8] arrayWithObjects:&emitSampleBufferSemaphore count:1]);
    [(BWNodeOutput *)self->super._output emitDroppedSample:a3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BWPreviewStitcherNode;
    [(BWNode *)&v7 handleDroppedSample:a3 forInput:a4];
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (a3)
  {
    [(BWNode *)&v6 didReachEndOfDataForConfigurationID:v5.receiver input:v5.super_class, self, BWPreviewStitcherNode];
  }

  else if (BYTE1(self->_narrowerCameraFoVFillsOverCapture.name) != 1 || (BYTE2(self->_narrowerCameraFoVFillsOverCapture.name) & 1) != 0)
  {
    if (!self->_stoppingForModeSwitch)
    {
      [(BWPreviewStitcherNode *)self _setOverCaptureStatus:?];
    }

    [(BWPreviewStitcherNode *)self _waitForCIPreheatingToFinish];

    self->_fencePortSendRight = 0;
    [*&self->_superMacroEdgeFeatheringShowBlurMask flush];
    dispatch_sync(self->_metalSubmissionQueue, &__block_literal_global_30);
    if ((BYTE4(self->_narrowerCameraFoVFillsOverCapture.name) & 1) == 0 && (BYTE3(self->_blackFilledBorderRectsBySurfaceID) & 1) == 0)
    {
      [(BWPreviewStitcherNode *)self _releaseResources];
    }

    [(BWNode *)&v5 didReachEndOfDataForConfigurationID:self input:BWPreviewStitcherNode, v6.receiver, v6.super_class];
  }

  else
  {
    dispatch_group_enter([(BWNode *)self currentConfigurationGroup]);
    BYTE2(self->_narrowerCameraFoVFillsOverCapture.name) = 1;
  }
}

void __131__BWPreviewStitcherNode__updateShiftCorrectionsAsyncFromComputedShift_byRegisteringWiderCamera_narrowerCamera_macroTransitionType___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (*(a1 + 64))
  {
    v5 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
  }

  else
  {
    v5 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
  }

  v6 = *v5;
  v7 = *(v4 + 872);
  if (v7)
  {
    v19 = *MEMORY[0x1E695EFF8];
    CGPointMakeWithDictionaryRepresentation(v7, &v19);
    v8 = (a2 + 8);
    v9 = 3;
    do
    {
      LOBYTE(v8[-1].y) = 1;
      *v8 = v19;
      v8 = (v8 + 24);
      --v9;
    }

    while (v9);
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = v4;
  }

  v11 = v4 + v6;
  os_unfair_lock_lock(v10 + 129);
  v12 = 0;
  v13 = *(*(a1 + 32) + 908);
  v14 = (a2 + 8);
  do
  {
    v15 = LOBYTE(v14[-1].f64[1]);
    if (v15 == 1)
    {
      v16 = *(a1 + 56);
      if (v16 == 0.0)
      {
        v17 = *v14;
      }

      else
      {
        v17 = vdivq_f64(*v14, vdupq_lane_s64(COERCE__INT64(v16), 0));
        *v14 = v17;
      }

      *(v11 + v12 + 16) = vsubq_f64(v17, *(a1 + 40));
      if ((v13 & 1) == 0)
      {
        *(v11 + v12 + 32) = 1;
      }
    }

    v18 = v11 + v12;
    *(v18 + 33) = v15;
    *(v18 + 36) = *(a1 + 60);
    v12 += 56;
    v14 = (v14 + 24);
  }

  while (v12 != 168);
  os_unfair_lock_unlock((*(a1 + 32) + 516));
}

- (void)_releaseResources
{
  if (a1)
  {
    [*(a1 + 504) cleanupResources];
    *(a1 + 512) = 0;
    VTPixelRotationSessionInvalidate(*(a1 + 392));
    v2 = *(a1 + 392);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 392) = 0;
    }

    VTPixelRotationSessionInvalidate(*(a1 + 400));
    v3 = *(a1 + 400);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 400) = 0;
    }

    v4 = *(a1 + 1192);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 1192) = 0;
    }

    *(a1 + 960) = 0;
    *(a1 + 984) = 0;

    *(a1 + 968) = 0;
  }
}

- (_DWORD)_setOverCaptureStatus:(_DWORD *)result
{
  if (result)
  {
    v3 = result;
    if (result[327] != a2)
    {
      [result overCaptureStatusString];
      v3[327] = a2;
      v4 = *(v3 + 58);

      return [v4 previewStitcher:v3 overCaptureStatusDidChange:a2];
    }
  }

  return result;
}

- (double)_wideBaseZoomFactorWithOverrideLocked
{
  if (!a1)
  {
    return 0.0;
  }

  os_unfair_lock_lock((a1 + 476));
  v2 = [(BWPreviewStitcherNode *)a1 _wideBaseZoomFactorWithOverride];
  v3 = LODWORD(v2);
  os_unfair_lock_unlock((a1 + 476));
  LODWORD(result) = v3;
  return result;
}

- (__CFString)_displayStringForPortType:(__CFString *)result
{
  if (result)
  {
    if ([a2 isEqualToString:*off_1E798A0D0])
    {
      return @"SuperWide";
    }

    else if ([a2 isEqualToString:*off_1E798A0C0])
    {
      return @"Wide";
    }

    else if ([a2 isEqualToString:*off_1E798A0D8])
    {
      return @"Tele";
    }

    else
    {

      return BWPortTypeToDisplayString(a2, v3);
    }
  }

  return result;
}

- (void)_preheatCIRenderingAsync
{
  if (a1 && (*(a1 + 1832) & 1) == 0 && ((*(a1 + 1290) | *(a1 + 1224)) & 1) != 0 && !*(a1 + 1056) && (*(a1 + 1064) & 1) == 0)
  {
    *(a1 + 1056) = dispatch_group_create();
    OUTLINED_FUNCTION_21_4(1064);
    v2 = *(a1 + 1056);
    v3 = *(a1 + 1048);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__BWPreviewStitcherNode__preheatCIRenderingAsync__block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = a1;
    dispatch_group_async(v2, v3, block);
  }
}

- (CMSampleBufferRef)_copySampleBufferToAttachForZoomPIPFromWiderCameraSampleBuffer:(const void *)a3 narrowerCameraSampleBuffer:
{
  if (result)
  {
    v3 = result;
    sampleBufferOut = 0;
    if (*(result + 1676) != 1)
    {
      return 0;
    }

    v6 = ((a2 == 0) | (*(result + 1678) & 1) ? a3 : a2);
    v7 = OUTLINED_FUNCTION_69();
    v10 = CMGetAttachment(v7, v8, v9);
    if (v10)
    {
      [v10 floatValue];
      v12 = v11;
    }

    else
    {
      v12 = 1.0;
    }

    v13 = OUTLINED_FUNCTION_22(a3);
    v14 = *off_1E798B540;
    v15 = [v13 objectForKeyedSubscript:*off_1E798B540];
    v16 = OUTLINED_FUNCTION_22(a2);
    v17 = [v15 isEqualToString:*off_1E798A0C0] ? v13 : v16;
    [objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
    v19 = v18;
    v20 = *(v3 + 420);
    if (v20 != 0.0 && v12 < v20)
    {
      return 0;
    }

    if ((*(v3 + 1684) | [objc_msgSend(OUTLINED_FUNCTION_22(v6) objectForKeyedSubscript:{v14), "isEqualToString:", *off_1E798A0D0}]))
    {
      v6 = 0;
    }

    v22 = OUTLINED_FUNCTION_69();
    v25 = [CMGetAttachment(v22 v23] & 0xFFFFFFFE;
    v26 = !v6 || v25 == 2;
    if (!v26 && (v27 = OUTLINED_FUNCTION_69(), [CMGetAttachment(v27 v28] <= 2) && (v19 == 2.0 ? (v30 = v19 == 0.0) : (v30 = 1), v30 ? (v31 = 0) : (v31 = 1), (*(v3 + 1678) & 1) != 0 || (v31 & 1) != 0))
    {
      BWCMSampleBufferCreateCopyIncludingMetadata(v6, &sampleBufferOut);
      BWSampleBufferRemoveAllAttachedMedia(sampleBufferOut);
      return sampleBufferOut;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (CMSampleBufferRef)copySampleBufferToAttachForPropagatePrimaryPreviewSourceFromWiderCameraSampleBuffer:(CMSampleBufferRef)sbuf narrowerCameraSampleBuffer:
{
  if (result)
  {
    sampleBufferOut = 0;
    if (*(result + 1686) == 1)
    {
      BWCMSampleBufferCreateCopyIncludingMetadata(sbuf, &sampleBufferOut);
      BWSampleBufferRemoveAllAttachedMedia(sampleBufferOut);
      return sampleBufferOut;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_updateZoomStatusFromWiderCameraSampleBuffer:narrowerCameraSampleBuffer:
{
  OUTLINED_FUNCTION_135();
  v5 = v4;
  if (!v1)
  {
    goto LABEL_289;
  }

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = OUTLINED_FUNCTION_71_0(v3);
  v10 = *off_1E798B540;
  [v9 objectForKeyedSubscript:*off_1E798B540];
  v11 = OUTLINED_FUNCTION_111();
  v139 = OUTLINED_FUNCTION_71_0(v11);
  v12 = [v139 objectForKeyedSubscript:v10];
  v135 = *off_1E798A0D8;
  v13 = [v0 isEqualToString:?];
  OUTLINED_FUNCTION_117();
  v15 = *(v8 + v14);
  v16 = 0.0;
  if ((v17 & 1) == 0)
  {
    [objc_msgSend(*(v8 + 280) "firstObject")];
    v16 = v18;
  }

  target = v7;
  if (v7)
  {
    v19 = v7;
  }

  else
  {
    v19 = v6;
  }

  v20 = CMGetAttachment(v19, @"TotalZoomFactor", 0);
  v21 = 1.0;
  if (v20)
  {
    [v20 floatValue];
    v21 = v22;
  }

  v23 = *off_1E798A0C0;
  v24 = [v0 isEqualToString:*off_1E798A0C0];
  v134 = v23;
  v132 = [v12 isEqualToString:v23];
  v136 = *off_1E798A0D0;
  v137 = v0;
  v25 = [v0 isEqualToString:?];
  *(v8 + 330) = 0;
  if (v24)
  {
    v26 = v9;
  }

  else
  {
    v26 = v139;
  }

  v27 = *off_1E798B508;
  [objc_msgSend(v26 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
  if (v28 == 0.0)
  {
    v28 = 1.0;
  }

  *(v8 + 288) = v28;
  v29 = *(v8 + 292);
  v30 = *(v8 + 288);
  if (v29 != v30)
  {
    if (v24 && (v29 == 2.0 ? (v31 = v30 == 1.0) : (v31 = 0), v31 && (*(v8 + 328) & 1) != 0 && [v9 objectForKeyedSubscript:*off_1E798B7A0]))
    {
      OUTLINED_FUNCTION_21_4(330);
    }

    else
    {
      OUTLINED_FUNCTION_21_4(332);
      *(v8 + 292) = *(v8 + 288);
    }
  }

  if (v25)
  {
    v32 = v9;
  }

  else
  {
    v32 = 0;
  }

  if (v24)
  {
    v33 = v139;
  }

  else
  {
    v33 = v32;
  }

  [objc_msgSend(v33 objectForKeyedSubscript:{v27), "floatValue"}];
  if (v34 == 0.0)
  {
    v34 = 1.0;
  }

  *(v8 + 304) = v34;
  if (v13)
  {
    v35 = v9;
  }

  else
  {
    v35 = 0;
  }

  [objc_msgSend(v35 objectForKeyedSubscript:{v27), "floatValue"}];
  if (v36 == 0.0)
  {
    v36 = 1.0;
  }

  *(v8 + 320) = v36;
  v37 = *(v8 + 324);
  v38 = *(v8 + 320);
  v39 = target;
  if (v37 != v38)
  {
    if (v13 && (v37 > 1.0 ? (v40 = v38 == 1.0) : (v40 = 0), v40 && (*(v8 + 329) & 1) != 0 && [v9 objectForKeyedSubscript:*off_1E798B7A0]))
    {
      OUTLINED_FUNCTION_21_4(330);
    }

    else
    {
      OUTLINED_FUNCTION_21_4(332);
      *(v8 + 324) = *(v8 + 320);
    }
  }

  if (*(v8 + 332) == 1 && !*(v8 + 1024))
  {
    *(v8 + 332) = 0;
    *(v8 + 484) = 0;
  }

  if (*(v8 + 240) != 1)
  {
    *(v8 + 244) = 0;
    v44 = v137;
    goto LABEL_89;
  }

  if (*(v8 + 1744) == 1)
  {
    v41 = *(v8 + 236);
    if ((v24 | v25))
    {
      v42 = *(v8 + 252);
      v43 = *(v8 + 952);
      v44 = v137;
      if (v43)
      {
        [v43 currentValue];
        OUTLINED_FUNCTION_46_3(v56);
        v41 = *(v8 + 236);
      }

      OUTLINED_FUNCTION_35_3();
      if (!(v55 ^ v59 | v31))
      {
        v57 = v58;
      }

      if (v57 < 0.0)
      {
        v57 = 0.0;
      }

      v41 = v41 + ((v42 - v41) * v57);
    }

    else
    {
      v44 = v137;
    }

    v60 = OUTLINED_FUNCTION_83();
    os_unfair_lock_lock(v60);
    goto LABEL_80;
  }

  v44 = v137;
  if ((v24 | v132))
  {
    [objc_msgSend(v26 objectForKeyedSubscript:{*off_1E798B530), "floatValue"}];
    v46 = v45;
    v47 = *(v8 + 252);
    v48 = *(v8 + 236);
    v49 = *(v8 + 256);
    v50 = *(v8 + 260);
    if (v50 <= v49)
    {
      v133 = *(v8 + 252);
      v131 = *(v8 + 256);
      fig_log_get_emitter();
      v130 = v5;
      LODWORD(v129) = 0;
      FigDebugAssert3();
      v49 = v131;
      v47 = v133;
    }

    if (v50 >= v46)
    {
      v51 = v46;
    }

    else
    {
      v51 = v50;
    }

    if (v51 < v49)
    {
      v51 = v49;
    }

    v41 = v48 + ((v47 - v48) * ((v51 - v49) / (v50 - v49)));
    v52 = *(v8 + 264);
    v53 = OUTLINED_FUNCTION_83();
    os_unfair_lock_lock(v53);
    v54 = *(v8 + 244);
    v55 = v54 > 0.0 && v52 < 1.0;
    if (v55)
    {
      *(v8 + 244) = BWModifiedMovingAverage(v41, v54, v52);
LABEL_81:
      v61 = OUTLINED_FUNCTION_83();
      os_unfair_lock_unlock(v61);
      goto LABEL_82;
    }

LABEL_80:
    *(v8 + 244) = v41;
    goto LABEL_81;
  }

LABEL_82:
  v62 = OUTLINED_FUNCTION_83();
  os_unfair_lock_lock(v62);
  v63 = 0.0;
  if (v13)
  {
    v64 = *(v8 + 952);
    if (v64)
    {
      [v64 currentValue];
    }

    else
    {
      v63 = 1.0;
      if (*(v8 + 906))
      {
        v63 = 0.0;
      }
    }
  }

  *(v8 + 248) = *(v8 + 236) + ((*(v8 + 244) - *(v8 + 236)) * (1.0 - v63));
  v65 = OUTLINED_FUNCTION_83();
  os_unfair_lock_unlock(v65);
  v39 = target;
LABEL_89:
  v66 = OUTLINED_FUNCTION_22(v6);
  if (!v66)
  {
    v66 = OUTLINED_FUNCTION_22(v39);
    if (!v66)
    {
      goto LABEL_115;
    }
  }

  v67 = v66;
  if (!v6 || (v68 = OUTLINED_FUNCTION_97_1(), v39) || v68) && (!v39 || (v69 = [v67 isEqualToString:v12], v6) || (v69))
  {
    OUTLINED_FUNCTION_33();
    if (!v31)
    {
      goto LABEL_112;
    }

    if ([v67 isEqualToString:v136])
    {
      if (!v6)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v72 = [v67 isEqualToString:v135];
      if (!v6 || (v72 & 1) == 0)
      {
        goto LABEL_112;
      }
    }

    v73 = OUTLINED_FUNCTION_97_1();
    if (v39)
    {
      if (!v73)
      {
        v74 = [v67 isEqualToString:v12];
        v71 = v134;
        if ((v74 & 1) == 0)
        {
          goto LABEL_100;
        }
      }
    }
  }

  else
  {
    v70 = [v44 isEqualToString:{v136, v129, v130}];
    v71 = v12;
    if (v6)
    {
      v71 = v44;
    }

    if ((v70 & 1) == 0)
    {
LABEL_100:
      v67 = v71;
      if (!v71)
      {
        goto LABEL_115;
      }
    }
  }

LABEL_112:
  if (([v67 isEqualToString:{*(v8 + 920), v129}] & 1) == 0)
  {

    *(v8 + 920) = v67;
    OUTLINED_FUNCTION_97_1();
  }

LABEL_115:
  v75 = OUTLINED_FUNCTION_22(v6);
  if (v75 || (v75 = OUTLINED_FUNCTION_22(v39)) != 0)
  {
    v76 = v75;
    if (([v75 isEqualToString:{*(v8 + 928), v129}] & 1) == 0)
    {

      *(v8 + 928) = v76;
    }
  }

  if (*(v8 + 200) == 1)
  {
    v77 = [*(v8 + 928) isEqual:v136] && v21 >= *(v8 + 224);
    if (*(v8 + 1576) != v77)
    {
      *(v8 + 1576) = v77;
      if (v13 & 1) == 0 && v77 && (*(v8 + 1577))
      {
        *(v8 + 484) = 0;
      }
    }
  }

  if (v13)
  {
    v78 = *off_1E798B320;
    if ((*(v8 + 1417) & 1) == 0 && [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B320), "intValue"}] == 1)
    {
      goto LABEL_134;
    }

    v79 = v139;
  }

  else
  {
    v78 = *off_1E798B320;
    v79 = v9;
  }

  psn_updateFocusDistanceBasedScene(v8 + 1416, v79);
  psn_updateFocusDistanceBasedScene(v8 + 1496, v79);
LABEL_134:
  if (v13)
  {
    v80 = v139;
  }

  else
  {
    v80 = v9;
  }

  *(v8 + 1456) = [objc_msgSend(v80 objectForKeyedSubscript:{v78, v129), "intValue"}] == 1;
  if (v13)
  {
    *(v8 + 1457) = [objc_msgSend(v9 objectForKeyedSubscript:{v78), "intValue"}] == 1;
  }

  else
  {
    OUTLINED_FUNCTION_33();
    if (v31 && [objc_msgSend(v139 objectForKeyedSubscript:{v78), "intValue"}] != 1)
    {
      psn_updateFocusDistanceBasedScene(v8 + 1584, v139);
    }
  }

  v81 = OUTLINED_FUNCTION_71_0(v6);
  if (!v81)
  {
    v81 = OUTLINED_FUNCTION_71_0(v39);
  }

  [v81 floatValue];
  v83 = v82;
  v84 = 1488;
  v85 = *(v8 + 1488);
  v86 = *(v8 + 1408);
  if (!v86)
  {
    *(v8 + 1488) = 0;
    goto LABEL_169;
  }

  v87 = *(v8 + 228);
  if (v21 < v87 && v83 != v87)
  {
    if (*(v8 + 217) == 1)
    {
      v90 = *(v8 + 218);
    }

    else
    {
      v90 = 0;
    }

    if (v86 == 1 || (v90 & 1) != 0)
    {
      v91 = 1;
      goto LABEL_164;
    }

    if (v86 != 2)
    {
      goto LABEL_169;
    }

LABEL_162:
    OUTLINED_FUNCTION_44_3();
LABEL_164:
    *(v8 + v84) = v91;
    goto LABEL_169;
  }

  if (v86 == 2)
  {
    goto LABEL_162;
  }

  if (v86 == 1)
  {
    if ([*(v8 + 920) isEqualToString:v134])
    {
      v89 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_33();
      if (v31)
      {
        v89 = [*(v8 + 920) isEqualToString:v136];
      }

      else
      {
        v89 = 0;
      }
    }

    *(v8 + 1488) = v89;
  }

LABEL_169:
  if (*(v8 + 1488) == v85)
  {
    if (v13)
    {
      v92 = v85 != *(v8 + 1489);
    }

    else
    {
      v92 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_33();
    if (v31)
    {
      *(v8 + 1491) = (*(v8 + 1492) & 0xFFFFFFFD) == 0;
    }

    v92 = 1;
  }

  [*(v8 + 1464) updateRampForNextIteration];
  v93 = OUTLINED_FUNCTION_71_0(v6);
  if (v93 || (v93 = OUTLINED_FUNCTION_71_0(v39)) != 0)
  {
    *(v8 + 1492) = [v93 intValue];
  }

  OUTLINED_FUNCTION_33();
  if (v31)
  {
    v94 = *(v8 + 1572);
    if (v86)
    {
      if (v86 == 2)
      {
        OUTLINED_FUNCTION_44_3();
        *(v8 + v99) = v100;
      }

      else if (v86 == 1)
      {
        if ((v95 = *(v8 + 224), v21 >= v95) && *(v8 + 1492) || v83 == v95)
        {
          *(v8 + 1572) = [*(v8 + 920) isEqualToString:v136];
          if ((v13 & 1) == 0)
          {
            if (v94)
            {
              OUTLINED_FUNCTION_35_3();
              if (v55 ^ v59 | v31)
              {
                v96 = 0;
              }

              else
              {
                v96 = 1;
              }

              *(v8 + 1572) |= v96;
              v97 = [CMGetAttachment(target @"NondisruptiveSwitchOverInProgress"];
              if (v83 == 0.0)
              {
                v98 = v97;
              }

              else
              {
                v98 = 0;
              }

              *(v8 + 1572) |= v98;
            }
          }
        }
      }
    }

    else
    {
      *(v8 + 1572) = 0;
    }

    if (*(v8 + 1572) == v94)
    {
      if (v13)
      {
        v140 = 0;
LABEL_208:
        [*(v8 + 1536) updateRampForNextIteration];
        goto LABEL_209;
      }

      v101 = v94 != *(v8 + 1544);
    }

    else
    {
      OUTLINED_FUNCTION_33();
      if (v31)
      {
        *(v8 + 1575) = *(v8 + 1492) == 2;
      }

      v101 = 1;
    }

    v140 = v101;
    goto LABEL_208;
  }

  v140 = 0;
LABEL_209:
  v102 = v92;
  [(BWPreviewStitcherNode *)v8 _primaryCameraPortType];
  v103 = *(v8 + 936);
  if (!v137 || ([v137 isEqualToString:*(v8 + 936)] & 1) != 0)
  {
    v104 = 0;
    v105 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    goto LABEL_222;
  }

  v105 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if ([v137 isEqualToString:v135] && (*(v8 + 906) != 1 || *(v8 + 952)))
  {
    OUTLINED_FUNCTION_21_4(906);

    *(v8 + 952) = 0;
    v106 = &OBJC_IVAR___BWPreviewStitcherNode__cameraTransitionRampForSuperMacroFallback;
  }

  else
  {
    if (![v137 isEqualToString:v134] || (*(v8 + 906) & 1) == 0 && !*(v8 + 952))
    {
      goto LABEL_221;
    }

    *(v8 + 906) = 0;

    *(v8 + 952) = 0;
    *(v8 + 1000) = 0;
    v106 = &OBJC_IVAR___BWPreviewStitcherNode__teleFocusingOneShot;
  }

  *(v8 + *v106) = 0;
LABEL_221:
  *(v8 + 912) = 0;
  *(v8 + 484) = 0;

  *(v8 + 936) = v137;
  *(v8 + 944) = v13;
  *(v8 + 1573) = *(v8 + 1572);
  v104 = 1;
LABEL_222:
  v107 = *(v8 + v105[443]);
  if (v107)
  {
    v108 = [v107 isRampingUp];
    if ((v13 & 1) == 0)
    {
      if (v108)
      {
        if (v21 < v15 && v21 > v83)
        {

          *(v8 + v105[443]) = 0;
          *(v8 + 1000) = 0;
        }
      }
    }
  }

  if ((v104 | (v83 == 0.0) & ~[(BWPreviewStitcherNode *)v8 _currentlyZoomingOrSwitchingCameras]) == 1)
  {
    if (v21 >= v15)
    {
      v111 = &OBJC_IVAR___BWPreviewStitcherNode__wantSuperWideFallback;
      if (v13)
      {
        v111 = &OBJC_IVAR___BWPreviewStitcherNode__wantWideFallbackDueToTeleAEAF;
      }

      v110 = *(v8 + *v111);
    }

    else
    {
      v110 = 1;
    }

    *(v8 + 907) = v110 & 1;
    if (!target && *(v8 + 907) == 1)
    {
      *(v8 + 907) = 0;
    }

    if (!v103)
    {
      v112 = *(v8 + 907);
      if (*(v8 + 906) != v112)
      {
        *(v8 + 906) = v112;
      }
    }
  }

  if (!v13)
  {
    if (*(v8 + 288) != 2.0)
    {
      OUTLINED_FUNCTION_35_3();
      if (!v31)
      {
        goto LABEL_255;
      }

      OUTLINED_FUNCTION_33();
      if (!v31)
      {
        goto LABEL_255;
      }
    }

    v114 = &OBJC_IVAR___BWPreviewStitcherNode__wideNondisruptiveSwitchingZoomFactors;
LABEL_247:
    [objc_msgSend(*(v8 + *v114) "firstObject")];
    v116 = v21 < v115;
    goto LABEL_256;
  }

  OUTLINED_FUNCTION_35_3();
  if (!(v55 ^ v59 | v113) || v113 && (*(v8 + 330) & 1) != 0)
  {
    v114 = &OBJC_IVAR___BWPreviewStitcherNode__teleNondisruptiveSwitchingZoomFactors;
    goto LABEL_247;
  }

LABEL_255:
  v116 = 0;
LABEL_256:
  *(v8 + 331) = v116;
  v117 = *(v8 + 912);
  v118 = v117 == 0.0;
  if (v83 == 0.0)
  {
    v118 = 0;
  }

  v119 = v21;
  if (v118 || v117 != 0.0 && (v119 = 0.0, v83 == 0.0))
  {
    *(v8 + 916) = v119;
  }

  *(v8 + 912) = v83;
  if (v83 > 0.0 && (v83 == v15 || v83 == v16))
  {
    v121 = *(v8 + 912);
    if (v121 == 0.0 || vabds_f32(1.0, *(v8 + 916) / v121) < 0.1)
    {
      if (!v102)
      {
        goto LABEL_278;
      }

      if ((*(v8 + 1490) & 1) == 0)
      {
        [(BWPreviewStitcherNode *)v8 _primaryCameraPortType];
        v124 = target;
        goto LABEL_279;
      }
    }

    if (v21 >= 1.07)
    {
      v123 = &OBJC_IVAR___BWPreviewStitcherNode__wantSuperWideFallback;
      if (v13)
      {
        v123 = &OBJC_IVAR___BWPreviewStitcherNode__wantWideFallbackDueToTeleAEAF;
      }

      v122 = *(v8 + *v123);
    }

    else
    {
      v122 = 1;
    }

    *(v8 + 907) = v122 & 1;
  }

LABEL_278:
  v124 = target;
  [(BWPreviewStitcherNode *)v8 _primaryCameraPortType];
  if (!v102 && !v140)
  {
LABEL_280:
    OUTLINED_FUNCTION_97_1();
    goto LABEL_282;
  }

LABEL_279:
  if (OUTLINED_FUNCTION_97_1())
  {
    goto LABEL_280;
  }

  *(v8 + 484) = 0;
LABEL_282:
  v125 = CMGetAttachment(v124, @"UIZoomFactor", 0);
  if (v125)
  {
    [v125 floatValue];
    v127 = v126;
  }

  else
  {
    v127 = 1.0;
  }

  v128 = *(v8 + 1400);
  if (v127 != v128)
  {
    if (v128 != 0.0)
    {
      BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering((v8 + 1360));
      BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering((v8 + 1704));
    }

    *(v8 + 1400) = v127;
  }

LABEL_289:
  OUTLINED_FUNCTION_68();
}

- (double)_computeBravoWiderToNarrowerCameraShiftFromWiderCameraSampleBuffer:(uint64_t)a3 narrowerCameraSampleBuffer:
{
  if (!a1)
  {
    return 0.0;
  }

  v6 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v7 = [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B540), "isEqualToString:", *off_1E798A0D0}];
  if (v7)
  {
    v10 = [(BWPreviewStitcherNode *)a1 _wideBaseZoomFactorWithOverrideLocked];
    v11 = &OBJC_IVAR___BWPreviewStitcherNode__superWideNondisruptiveSwitchingScaleFactor;
    v12 = &OBJC_IVAR___BWPreviewStitcherNode__superWideBaseZoomFactor;
  }

  else
  {
    v8 = *(a1 + 336);
    if (v8 <= 0.0)
    {
      v8 = *(a1 + 228);
      v9 = &OBJC_IVAR___BWPreviewStitcherNode__teleNondisruptiveSwitchingScaleFactor;
    }

    else
    {
      v9 = &OBJC_IVAR___BWPreviewStitcherNode__wideBaseZoomFactor;
    }

    *&v10 = v8 * *(a1 + *v9);
    v11 = &OBJC_IVAR___BWPreviewStitcherNode__wideNondisruptiveSwitchingScaleFactor;
    v12 = &OBJC_IVAR___BWPreviewStitcherNode__wideBaseZoomFactor;
  }

  [*(a1 + 504) computeCameraShiftForWiderCamera:target narrowerCamera:a3 widerToNarrowerCameraScale:(*&v10 / (*(a1 + *v12) * *(a1 + *v11)))];
  if (*(a1 + 352))
  {
    v15 = v14;
  }

  else
  {
    v15 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (*(a1 + 352))
  {
    v16 = v13;
  }

  else
  {
    v16 = *MEMORY[0x1E695EFF8];
  }

  [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
  if (v17 != 0.0)
  {
    v16 = v16 / v17;
    v15 = v15 / v17;
  }

  OUTLINED_FUNCTION_35_3();
  if (v20 ^ v21 | v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  if ((v7 & v18 & v22) == 1)
  {
    v16 = *(a1 + 360);
    v15 = *(a1 + 368);
  }

  v23 = *(a1 + 348);
  OUTLINED_FUNCTION_117();
  v25 = (a1 + v24);
  v26 = v16;
  v27 = *v25;
  *v25 = BWModifiedMovingAverage(v26, v27, v23);
  v28 = v15;
  v29 = v25[1];
  v25[1] = BWModifiedMovingAverage(v28, v29, v23);
  return *v25;
}

- (uint64_t)_updateShiftCorrectionsAsyncFromComputedShift:(void *)a3 byRegisteringWiderCamera:(uint64_t)a4 narrowerCamera:(double)a5 macroTransitionType:(double)a6
{
  if (result)
  {
    v11 = result;
    v12 = *off_1E798A3C8;
    v13 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v14 = [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B540), "isEqualToString:", *off_1E798A0D0}];
    v15 = v14;
    if (v14)
    {
      v25 = [(BWPreviewStitcherNode *)v11 _wideBaseZoomFactorWithOverrideLocked];
      v18 = *&v25;
    }

    else
    {
      v16 = *(v11 + 336);
      if (v16 <= 0.0)
      {
        v16 = *(v11 + 228);
        v17 = &OBJC_IVAR___BWPreviewStitcherNode__teleNondisruptiveSwitchingScaleFactor;
      }

      else
      {
        v17 = &OBJC_IVAR___BWPreviewStitcherNode__wideBaseZoomFactor;
      }

      v18 = (v16 * *(v11 + *v17)) / (*(v11 + 224) * *(v11 + 288));
    }

    [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
    v20 = v19;
    v21 = [objc_msgSend(CMGetAttachment(a3 v12];
    if (*(v11 + 1417) == 1)
    {
      v22 = *(v11 + 1313) ^ 1;
    }

    else
    {
      v22 = 1;
    }

    v23 = v18;
    if ((*(v11 + 512) & 1) == 0)
    {
      memset(&v30, 0, sizeof(v30));
      CMSampleBufferGetPresentationTimeStamp(&v30, a3);
      if (*MEMORY[0x1E695FF58] == 1)
      {
        time = v30;
        CMTimeGetSeconds(&time);
        kdebug_trace();
      }

      [*(v11 + 504) allocateResourcesAsynchronouslyWithVideoFormat:objc_msgSend(*(v11 + 8), "videoFormat")];
      *(v11 + 512) = 1;
    }

    v24 = *(v11 + 504);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __131__BWPreviewStitcherNode__updateShiftCorrectionsAsyncFromComputedShift_byRegisteringWiderCamera_narrowerCamera_macroTransitionType___block_invoke;
    v26[3] = &unk_1E79909A8;
    v29 = v15;
    v26[4] = v11;
    v27 = v20;
    *&v26[5] = a5;
    *&v26[6] = a6;
    v28 = v21;
    return [v24 registerWiderCamera:target narrowerCamera:a3 widerToNarrowerCameraScale:v22 & 1 isMacroScene:a4 macroTransitionType:v26 completionHandler:v23];
  }

  return result;
}

- (void)_updateAndGetWiderCameraRegionShifts:(double *)a3 teleShift:(int)a4 widerCameraIsSuperWide:(int)a5 forComputedShift:(double)a6 registrationEnabled:(double)a7 currentFrameRate:(float)a8
{
  *(&v185 + 1) = a8;
  HIDWORD(v182) = a4;
  if (!a1)
  {
    return;
  }

  v12 = MEMORY[0x1E695EFF8];
  v189 = *MEMORY[0x1E695EFF8];
  v190 = v189;
  v176 = v189;
  v191 = v189;
  v13 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  v14 = MEMORY[0x1E695FF58];
  v178 = a2;
  v179 = a3;
  if (a5)
  {
    v15 = *(a1 + 513);
    v16 = v15 ^ 1;
    if (*(a1 + 488))
    {
      HIDWORD(v175) = v15 ^ 1;
    }

    else if ((*(a1 + 514) & 1) != 0 || (v15 & 1) != 0 || (OUTLINED_FUNCTION_38_0(), v17))
    {
      [*(a1 + v13[345]) waitForRegistrationToComplete];
      OUTLINED_FUNCTION_115(513);
      HIDWORD(v175) = v16;
      if (*v14 == 1)
      {
        OUTLINED_FUNCTION_79_0();
      }
    }

    else
    {
      HIDWORD(v175) = 1;
    }
  }

  else
  {
    HIDWORD(v175) = 0;
  }

  v18 = [a1 displaysWidestCameraOnly];
  v19 = *(a1 + 906);
  os_unfair_lock_lock((a1 + 516));
  if (!a5)
  {
    goto LABEL_19;
  }

  if (*(a1 + 513))
  {
LABEL_14:
    v20 = 1;
    goto LABEL_20;
  }

  v20 = *(a1 + 484);
  if (v20)
  {
    v21 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
    if (HIDWORD(v182))
    {
      v21 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
    }

    if (*(a1 + *v21 + 148) < v20)
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_115(513);
    if (*v14 == 1)
    {
      OUTLINED_FUNCTION_79_0();
      goto LABEL_14;
    }
  }

LABEL_20:
  LODWORD(v181) = *(a1 + 488);
  v22 = v20;
  if (v181 != v20)
  {
    *(a1 + 488) = v20;
    v23 = a1 + 32;
    v24 = 3;
    do
    {
      *(v23 + 688) = 1;
      *(v23 + 520) = 1;
      v23 += 56;
      --v24;
    }

    while (v24);
  }

  LODWORD(v182) = v22;
  v25 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  v26 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  v27 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (!v18)
  {
    if ((*(a1 + 906) & 1) == 0)
    {
      v29 = OUTLINED_FUNCTION_86_1();
      if (v29)
      {
        v30 = v25;
        [v29 isRamping];
        OUTLINED_FUNCTION_64_2();
        if ((v31 & 1) == 0)
        {
          [OUTLINED_FUNCTION_86_1() currentValue];
          OUTLINED_FUNCTION_64_2();
          if (v32 == 0.0)
          {
            OUTLINED_FUNCTION_115(906);

            OUTLINED_FUNCTION_64_2();
            *(a1 + v30[443]) = 0;
            *(a1 + v26[538]) = 0;
          }
        }
      }
    }

    if (*(a1 + 906) != 1)
    {
      goto LABEL_41;
    }

    if (!v182)
    {
      HIDWORD(v180) = 0;
LABEL_254:
      *(a1 + 906) = 0;
      if (!*(a1 + v25[443]))
      {
        v165 = v27;
        v166 = BYTE4(v180);
        *(a1 + v26[538]) = BYTE4(v180) & BYTE4(v182);
        v167 = v25;
        *(a1 + v25[443]) = [[BWRamp alloc] initWithName:@"CameraTransitionRamp"];
        v168 = [(BWPreviewStitcherNode *)a1 _cameraDisplayTransitionFrameCountForCameraFallbackChange:*(&v185 + 1) currentFrameRate:?];
        LODWORD(v169) = 1065017672;
        LODWORD(v170) = 1.0;
        [*(a1 + v167[443]) startRampFrom:v168 to:2 iterations:0.0 shape:v170 exponentialConvergenceFraction:v169];
        if (*(a1 + 1092) == 1)
        {
          v171 = *(a1 + 912);
          v166 = BYTE4(v180);
          if (v171 != 0.0)
          {
            v166 = BYTE4(v180);
            if ((v171 / *(a1 + 916)) > 1.1)
            {
              v166 = 1;
            }
          }
        }

        *(a1 + v165[545]) = v166;
        goto LABEL_260;
      }

      goto LABEL_42;
    }

    v34 = *(a1 + 484);
    if (v34)
    {
      v71 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
      if (HIDWORD(v182))
      {
        v71 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
      }

      v34 = *(a1 + *v71 + 148) >= v34;
      if ((v182 & 0x100000000) == 0)
      {
LABEL_39:
        if ((*(a1 + 1488) & 1) == 0)
        {
          v35 = &OBJC_IVAR___BWPreviewStitcherNode__wideFallbackShiftRampTargetValueIsWide;
LABEL_248:
          HIDWORD(v180) = *(a1 + *v35);
          goto LABEL_249;
        }

        goto LABEL_114;
      }
    }

    else if ((v182 & 0x100000000) == 0)
    {
      goto LABEL_39;
    }

    if ((*(a1 + 1572) & 1) == 0)
    {
      v35 = &OBJC_IVAR___BWPreviewStitcherNode__superWideFallbackShiftRampTargetValueIsSuperWide;
      goto LABEL_248;
    }

LABEL_114:
    HIDWORD(v180) = 0;
LABEL_249:
    if ((*(a1 + 1490) & 1) != 0 || *(a1 + 912) != *(a1 + 228))
    {
      if (!v34)
      {
        goto LABEL_42;
      }
    }

    else
    {
      HIDWORD(v180) = 0;
      if ((v34 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_254;
  }

  if (*(a1 + 906))
  {
LABEL_41:
    HIDWORD(v180) = 0;
    goto LABEL_42;
  }

  if (!v22)
  {
    HIDWORD(v180) = 0;
    goto LABEL_116;
  }

  v28 = *(a1 + 484);
  if (!v28)
  {
    if ((v182 & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_104:
    if (*(a1 + 1572) == 1)
    {
      goto LABEL_105;
    }

    goto LABEL_115;
  }

  v68 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
  if (HIDWORD(v182))
  {
    v68 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
  }

  v28 = *(a1 + *v68 + 148) >= v28;
  if ((v182 & 0x100000000) != 0)
  {
    goto LABEL_104;
  }

LABEL_28:
  if ((*(a1 + 1488) & 1) == 0)
  {
LABEL_115:
    HIDWORD(v180) = 0;
    if (v28)
    {
      goto LABEL_116;
    }

LABEL_42:
    os_unfair_lock_unlock((a1 + 516));
    v36 = 0;
    v37 = v182;
    goto LABEL_43;
  }

LABEL_105:
  OUTLINED_FUNCTION_89_0();
  if (v17)
  {
    v70 = 1;
  }

  else
  {
    v70 = 0;
  }

  HIDWORD(v180) = v70;
  if (!v69)
  {
    goto LABEL_42;
  }

LABEL_116:
  OUTLINED_FUNCTION_38_0();
  if (v17)
  {
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      OUTLINED_FUNCTION_38_0();
      if (v17)
      {
        v72 = OUTLINED_FUNCTION_86_1();
        if (v72)
        {
          [v72 isRamping];
          OUTLINED_FUNCTION_64_2();
          if ((v73 & 1) == 0)
          {
            [OUTLINED_FUNCTION_86_1() currentValue];
            OUTLINED_FUNCTION_64_2();
            OUTLINED_FUNCTION_35_3();
            if (v17)
            {

              OUTLINED_FUNCTION_64_2();
              OUTLINED_FUNCTION_107();
            }
          }
        }
      }
    }
  }

  v75 = OUTLINED_FUNCTION_86_1();
  v79 = v77;
  if (v75)
  {
    if (([v75 isRamping] & 1) == 0)
    {
      OUTLINED_FUNCTION_115(906);

      OUTLINED_FUNCTION_107();
    }

    goto LABEL_42;
  }

  *(a1 + *(v78 + 2152)) = BYTE4(v180) & BYTE4(v182);
  v80 = v76;
  *(a1 + *(v77 + 1772)) = [[BWRamp alloc] initWithName:@"CameraTransitionRamp"];
  v81 = [(BWPreviewStitcherNode *)a1 _cameraDisplayTransitionFrameCountForCameraFallbackChange:*(&v185 + 1) currentFrameRate:?];
  LODWORD(v82) = 1065017672;
  LODWORD(v83) = 1.0;
  [*(a1 + *(v79 + 1772)) startRampFrom:v81 to:2 iterations:v83 shape:0.0 exponentialConvergenceFraction:v82];
  *(a1 + *(v80 + 2180)) = *(a1 + 1092);
LABEL_260:
  v37 = v182;
  os_unfair_lock_unlock((a1 + 516));
  [*(a1 + 504) waitForRegistrationToComplete];
  v36 = 1;
LABEL_43:
  os_unfair_lock_lock((a1 + 516));
  v44 = v37 ^ 1;
  v45 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
  if (HIDWORD(v182))
  {
    v45 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
  }

  v46 = a1 + *v45;
  if (v36)
  {
    *(v46 + 32) = 1;
    *(v46 + 88) = 1;
    *(v46 + 144) = 1;
  }

  v186 = v12[1];
  v187 = *v12;
  v47 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  HIDWORD(v181) = v36;
  if (v18)
  {
    if (!v37)
    {
      v188 = 1;
      v48.f64[0] = v12[1];
      v49.f64[0] = *v12;
      v183 = v48.f64[0];
      v184 = *v12;
      if ((v36 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_59:
      v50 = v19 == v18;
      v51 = *(a1 + 1489);
      v52 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      goto LABEL_77;
    }
  }

  else if (!HIDWORD(v182) || ((v44 | *(a1 + 1313)) & 1) != 0)
  {
    v48.f64[0] = v12[1];
    v49.f64[0] = *v12;
    v183 = v48.f64[0];
    v184 = *v12;
    v188 = v37 ^ 1;
    goto LABEL_57;
  }

  if ((*(v46 + 32) & 1) != 0 || (v48.f64[0] = v12[1], v49.f64[0] = *v12, v183 = v48.f64[0], v184 = *v12, v188 = v37 ^ 1, *(v46 + 88) == 1))
  {
    v49.f64[0] = *(v46 + 128);
    v48.f64[0] = *(v46 + 136);
    v183 = v48.f64[0];
    v184 = v49.f64[0];
    v188 = 1;
  }

LABEL_57:
  if (v36)
  {
    if (!v37)
    {
      goto LABEL_59;
    }

LABEL_62:
    for (i = 0; i != 168; i += 56)
    {
      if (!v18 || i == 112 || (*(a1 + 1573) & 1) != 0)
      {
        v54 = v46 + i;

        *(v54 + 40) = 0;
        *(v54 + 48) = 0;
        v55 = v188 ^ 1;
        if (i == 112)
        {
          v55 = 1;
        }

        if (v55)
        {
          v48 = *(v54 + 16);
          *v54 = v48;
        }

        else
        {
          v48.f64[0] = v183;
          v49.f64[0] = v184;
          *v54 = v184;
          *(v54 + 8) = v183;
        }

        *(v46 + i + 32) = 0;
      }
    }

    *(a1 + 1573) = 0;
    v50 = v19 == v18;
    v51 = *(a1 + 1489);
    v52 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    v47 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if ((v181 & 0x100000000) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_74;
  }

  if (!((v181 == v37) | v18 & 1 | v44 & 1))
  {
    goto LABEL_62;
  }

LABEL_61:
  v50 = v19 == v18;
  v51 = *(a1 + 1489);
  v52 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
LABEL_74:
  if (((HIDWORD(v182) | v18) & 1) == 0 || !v50)
  {
    v62 = *(a1 + v47[519]);
    v63 = HIDWORD(v182);
    goto LABEL_158;
  }

  v50 = 1;
LABEL_77:
  if (v51 != *(a1 + 1488))
  {
    if (*(a1 + 1488))
    {
      *(a1 + 1472) = *(a1 + 648);
      OUTLINED_FUNCTION_89_0();
      v58 = 0.699999988;
      if (!v17)
      {
        v58 = *(v57 + 3616);
      }

      v49 = *(a1 + v56);
      v48 = vmulq_n_f64(v49, v58);
      *(a1 + v56) = v48;
    }

    OUTLINED_FUNCTION_104(v48.f64[0], v49.f64[0], v38, v39, v40, v41, v42, v43, *&v172, *&v175, *&v176, *(&v176 + 1), *&v177, *&v178, *&v179, *&v180, *&v181, *&v182, v183, v184, *&v185, *(&v185 + 1));
    if (v59 ^ v60 | v17)
    {
      OUTLINED_FUNCTION_103_0();
      if (v17)
      {
        v64 = 90;
      }

      else
      {
        v64 = 55;
      }
    }

    else
    {
      OUTLINED_FUNCTION_38_0();
      if (v17)
      {
        v61 = OUTLINED_FUNCTION_11_15(90.0, v172, v175, v176, *(&v176 + 1), v177, v178, v179, v180, v181, v182, *&v183, *&v184, v185, *(&v185 + 1));
        FigCaptureRoundFloatToMultipleOf(1, v61);
      }

      OUTLINED_FUNCTION_103_0();
      if (v17)
      {
        v64 = v65;
      }

      else
      {
        v64 = 55;
      }

      if (v66)
      {
        OUTLINED_FUNCTION_38_0();
        if (v17)
        {
          v67 = OUTLINED_FUNCTION_11_15(55.0, v172, v175, v176, *(&v176 + 1), v177, v178, v179, v180, v181, v182, *&v183, *&v184, v185, *(&v185 + 1));
          v64 = FigCaptureRoundFloatToMultipleOf(1, v67);
        }

        else
        {
          v64 = 55;
        }
      }
    }

    v84 = 0.0;
    if ((*(a1 + 1488) & 1) == 0)
    {
      [OUTLINED_FUNCTION_99() currentValue];
      v84 = v85;
    }

    if ([OUTLINED_FUNCTION_99() isRamping])
    {
      [OUTLINED_FUNCTION_99() currentValue];
      v84 = *v86.f64;
      v89 = *(a1 + 1488);
      if ((v89 & 1) == 0 && *v86.f64 != 0.0)
      {
        OUTLINED_FUNCTION_89_0();
        v90 = 0.699999988;
        if (!v17)
        {
          v90 = 0.999;
        }

        v87 = (1.0 - v84) / v84;
        v88 = *(a1 + 1472);
        v86 = vsubq_f64(v88, vmulq_n_f64(vsubq_f64(*(a1 + 648), vdivq_f64(v88, vdupq_lane_s64(*&v90, 0))), v87));
        *(a1 + 1472) = v86;
      }
    }

    else
    {
      v89 = *(a1 + 1488);
    }

    LODWORD(v86.f64[0]) = 1.0;
    if (!v50)
    {
      *v86.f64 = v84;
    }

    if (*(a1 + 496) == 1)
    {
      OUTLINED_FUNCTION_89_0();
      LODWORD(v97) = 20.0;
      if (!v17)
      {
        *&v97 = 49.0;
      }

      LODWORD(v95) = 981668463;
      if (v91)
      {
        LODWORD(v93) = 1.0;
        LODWORD(v94) = 24.0;
      }

      else
      {
        v93 = 0.0;
        LODWORD(v94) = 24.0;
        *&v92 = v84;
      }

      LODWORD(v96) = HIDWORD(v185);
      [*(a1 + 1464) startSpringRampFrom:v92 to:v93 withTension:v97 friction:v94 snapFraction:v95 frameRate:v96];
    }

    else
    {
      LODWORD(v88.f64[0]) = 1065269330;
      if (v89)
      {
        LODWORD(v87) = 1.0;
      }

      else
      {
        v87 = 0.0;
        *v86.f64 = v84;
      }

      [*(a1 + 1464) startRampFrom:v64 to:2 iterations:v86.f64[0] shape:v87 exponentialConvergenceFraction:v88.f64[0]];
    }

    v52 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      [OUTLINED_FUNCTION_99() updateRampForNextIteration];
    }

    *(a1 + 1489) = *(a1 + 1488);
    v47 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  }

  v62 = *(a1 + v47[519]);
  v63 = HIDWORD(v182);
  if ((v181 & 0x100000000) == 0)
  {
LABEL_158:
    if ((v63 & (v18 ^ 1) & 1) != 0 || !v50)
    {
      goto LABEL_194;
    }
  }

  if (v62 != *(a1 + v52[518]))
  {
    if (*(a1 + v52[518]))
    {
      OUTLINED_FUNCTION_38_0();
      if (v17)
      {
        v48 = v176;
      }

      else
      {
        *(a1 + 1568) = 1050253722;
        if ((*(a1 + 1575) | HIDWORD(v175)))
        {
          *(a1 + 1568) = 0;
        }

        *(a1 + 1552) = *(a1 + 816);
        v49 = *(a1 + 1552);
        v48 = vmulq_n_f64(v49, 1.0 - *(a1 + 1568));
      }

      *(a1 + 1552) = v48;
    }

    OUTLINED_FUNCTION_104(v48.f64[0], v49.f64[0], v38, v39, v40, v41, v42, v43, *&v172, *&v175, *&v176, *(&v176 + 1), *&v177, *&v178, *&v179, *&v180, *&v181, *&v182, v183, v184, *&v185, *(&v185 + 1));
    if (!(v59 ^ v60 | v17))
    {
      OUTLINED_FUNCTION_38_0();
      if (v17)
      {
        v98 = OUTLINED_FUNCTION_11_15(90.0, v173, v175, v176, *(&v176 + 1), v177, v178, v179, v180, v181, v182, *&v183, *&v184, v185, *(&v185 + 1));
        FigCaptureRoundFloatToMultipleOf(1, v98);
      }
    }

    OUTLINED_FUNCTION_81_0();
    if (v99 == 1 && (*(a1 + 1648) & 1) == 0 && *(a1 + 1568) == 0.0)
    {
      v100 = 1;
      v101 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_89_0();
      if (v17)
      {
        v101 = v102;
      }

      else
      {
        v101 = 55;
      }

      OUTLINED_FUNCTION_104(v103, v104, v105, v106, v107, v108, v109, v110, *&v173, *&v175, *&v176, *(&v176 + 1), *&v177, *&v178, *&v179, *&v180, *&v181, *&v182, v183, v184, *&v185, *(&v185 + 1));
      if (!(v59 ^ v60 | v17) && v111)
      {
        if (*(a1 + 1040) == 1)
        {
          v112 = OUTLINED_FUNCTION_11_15(55.0, v174, v175, v176, *(&v176 + 1), v177, v178, v179, v180, v181, v182, *&v183, *&v184, v185, *(&v185 + 1));
          v101 = FigCaptureRoundFloatToMultipleOf(1, v112);
          OUTLINED_FUNCTION_81_0();
          if (v113)
          {
            goto LABEL_188;
          }

          goto LABEL_187;
        }

        v101 = 55;
      }
    }

    if (v100)
    {
LABEL_188:
      if ([OUTLINED_FUNCTION_80_0() isRamping])
      {
        [OUTLINED_FUNCTION_80_0() currentValue];
        OUTLINED_FUNCTION_81_0();
        if ((v115 & 1) == 0 && v114 != 0.0)
        {
          *(a1 + 1552) = vsubq_f64(*(a1 + 1552), vmulq_n_f64(vsubq_f64(*(a1 + 816), vdivq_f64(*(a1 + 1552), vdupq_lane_s64(COERCE__INT64(1.0 - *(a1 + 1568)), 0))), (1.0 - v114) / v114));
        }
      }

      else
      {
        OUTLINED_FUNCTION_81_0();
      }

      [OUTLINED_FUNCTION_80_0() startRampFrom:v101 to:2 iterations:? shape:? exponentialConvergenceFraction:?];
      OUTLINED_FUNCTION_81_0();
      *(a1 + 1544) = v116;
      goto LABEL_194;
    }

LABEL_187:
    [OUTLINED_FUNCTION_80_0() currentValue];
    goto LABEL_188;
  }

LABEL_194:
  v117 = &v189 + 1;
  v118 = -3;
  v120 = v186;
  v119 = v187;
  do
  {
    v121 = v118 + 3;
    v122 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
    if (v118 >= 0xFFFFFFFD)
    {
      v123 = v118 + 3;
    }

    else
    {
      v122 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
      v123 = v118;
    }

    v124 = a1 + *v122 + 56 * v123;
    if (*(v124 + 32) == 1)
    {
      v125 = v123 != 2;
      if ((v188 & v125) != 0)
      {
        v126 = v184;
      }

      else
      {
        v126 = *(v124 + 16);
      }

      if ((v188 & v125) != 0)
      {
        v127 = v183;
      }

      else
      {
        v127 = *(v124 + 24);
      }

      *(v124 + 32) = 0;
      v128 = *(v124 + 40);
      if (v128)
      {
        [v128 updateRampForNextIteration];
        *v124 = v129;
      }

      v130 = *(v124 + 48);
      if (v130)
      {
        [v130 updateRampForNextIteration];
        *(v124 + 8) = v131;
      }

      v132 = [BWRamp alloc];
      v133 = -[BWRamp initWithName:](v132, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"ShiftCorrectionRampX[%d]", v118 + 3]);
      v134 = [BWRamp alloc];
      v135 = -[BWRamp initWithName:](v134, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"ShiftCorrectionRampY[%d]"]);
      OUTLINED_FUNCTION_104(v136, v137, v138, v139, v140, v141, v142, v143, COERCE_DOUBLE((v118 + 3)), *&v175, *&v176, *(&v176 + 1), *&v177, *&v178, *&v179, *&v180, *&v181, *&v182, v183, v184, *&v185, *(&v185 + 1));
      if (!(v59 ^ v60 | v17))
      {
        OUTLINED_FUNCTION_38_0();
        if (v17)
        {
          v147 = OUTLINED_FUNCTION_33_5();
          v144 = FigCaptureRoundFloatToMultipleOf(v147, v148);
        }
      }

      if (*(a1 + 1308) == 3)
      {
        v144 = (v144 * 1.7);
      }

      if (HIDWORD(v181))
      {
        v144 = [(BWPreviewStitcherNode *)a1 _cameraDisplayTransitionFrameCountForCameraFallbackChange:*(&v185 + 1) currentFrameRate:?];
      }

      if (v181 == v182)
      {
        v149 = v144;
      }

      else
      {
        v149 = 6;
      }

      v150 = *v124;
      *&v150 = *v124;
      *&v145 = v126;
      LODWORD(v146) = 1065017672;
      [(BWRamp *)v133 startRampFrom:v149 to:2 iterations:v150 shape:v145 exponentialConvergenceFraction:v146];
      v151 = *(v124 + 8);
      *&v151 = v151;
      *&v152 = v127;
      LODWORD(v153) = 1065017672;
      [(BWRamp *)v135 startRampFrom:v149 to:2 iterations:v151 shape:v152 exponentialConvergenceFraction:v153];

      *(v124 + 40) = v133;
      *(v124 + 48) = v135;
      *v124 = v126;
      *(v124 + 8) = v127;
      v63 = HIDWORD(v182);
    }

    if (v121 >= 3 && v63)
    {
      a6 = *(a1 + 376);
      a7 = *(a1 + 384);
    }

    v154 = *(v124 + 40);
    if (!v154)
    {
      v158 = (v124 + 48);
      v157 = *(v124 + 48);
      v156 = *v124;
      if (!v157)
      {
        v159 = *(v124 + 8);
        goto LABEL_234;
      }

LABEL_228:
      [v157 updateRampForNextIteration];
      v159 = v160;
      goto LABEL_229;
    }

    [v154 updateRampForNextIteration];
    v156 = v155;
    v158 = (v124 + 48);
    v157 = *(v124 + 48);
    if (v157)
    {
      goto LABEL_228;
    }

    v159 = *(v124 + 8);
LABEL_229:
    if (([*(v124 + 40) isRamping] & 1) == 0)
    {

      *(v124 + 40) = 0;
    }

    if (([*v158 isRamping] & 1) == 0)
    {

      *v158 = 0;
    }

LABEL_234:
    v161 = a7 + v159;
    v162 = a6 + v156;
    if (v63)
    {
      if (v121 > 2)
      {
        if (v118 == 2)
        {
          v120 = a7 + v159;
          v119 = a6 + v156;
        }
      }

      else
      {
        *(v117 - 1) = v162;
        *v117 = v161;
      }
    }

    else
    {
      v120 = v186;
      v119 = v187;
      if (v121 >= 3)
      {
        v163 = (&v189 + v118);
        *v163 = v162;
        v163[1] = v161;
        v120 = v186;
        v119 = v187;
      }
    }

    ++v118;
    v117 += 2;
  }

  while (v118 != 3);
  *(a1 + 908) = [(BWPreviewStitcherNode *)a1 _currentlyZoomingOrSwitchingCameras];
  os_unfair_lock_unlock((a1 + 516));
  if (v178)
  {
    v164 = v190;
    *v178 = v189;
    v178[1] = v164;
    v178[2] = v191;
  }

  if (v179)
  {
    *v179 = v119;
    v179[1] = v120;
  }
}

- (_BYTE)_updateOverCaptureStatusWithWiderCameraSampleBuffer:(const void *)a3 narrowerCameraSampleBuffer:
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (result[1746] & 1) != 0 || (result[472])
  {
    return result;
  }

  if ((result[1289] & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_69();
    v10 = CMGetAttachment(v7, v8, v9);
    v11 = 1.0;
    if (v10)
    {
      [v10 floatValue];
      v11 = v12;
    }

    v13 = v11;
    OUTLINED_FUNCTION_33();
    if (!v25)
    {
      OUTLINED_FUNCTION_33();
      if (v25)
      {
        if (*(v3 + 226) || *(v3 + 227))
        {
          v4 = 4;
        }

        else if (v3[1923])
        {
          v4 = 2;
        }

        else
        {
          [objc_msgSend(*(v3 + 238) objectForKeyedSubscript:{BWSmartFramingSceneMonitorFieldOfViewKeyFromType(*(v3 + 474))), "doubleValue"}];
          v36 = v35;
          v37 = *(v3 + 474);
          v38 = v37 == 1 && (v3[1873] & 1) == 0 && *(v3 + 472) <= 1u && vabdd_f64(v13, v35) < 0.005;
          v39 = *(v3 + 472) == 1 || v13 - v35 > 0.005 && v37 == 2;
          [objc_msgSend(*(v3 + 238) objectForKeyedSubscript:{@"FieldOfViewPortrait", "doubleValue"}];
          if (vabdd_f64(v13, v41) >= 0.005)
          {
            v43 = 0;
          }

          else
          {
            v42 = *(v3 + 110);
            v43 = v42 == 1.0;
            if (v42 != *(v3 + 222))
            {
              v43 = 0;
            }
          }

          v45 = v13 - v36 > 0.005 && (v44 = *(v3 + 110), v44 == *(v3 + 222)) && v44 == 1.0;
          if (v38 || v43 || v39 || v45)
          {
            v4 = 1;
          }

          else
          {
            v4 = 2;
          }
        }
      }

      else
      {
        v4 = 1;
      }

      goto LABEL_63;
    }

    v14 = *off_1E798A3C8;
    v15 = [objc_msgSend(CMGetAttachment(a2 *off_1E798A3C8];
    if (v15)
    {
      v16 = a3;
    }

    else
    {
      v16 = a2;
    }

    v17 = CMGetAttachment(v16, v14, 0);
    psn_updateFocusDistanceBasedScene((v3 + 1312), v17);
    v18 = v3[1356];
    if (!v15)
    {
      v24 = 1;
      if ((v3[217] & 1) == 0 && v3[1356])
      {
        if (v13 >= 1.7 || *(v3 + 228) == *(v3 + 57))
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }
      }

      goto LABEL_55;
    }

    v19 = v3[1352];
    v20 = *(v3 + 56);
    v21 = *(v3 + 228);
    v22 = v21 == v20 && v21 != 0.0;
    if (v22 || v11 >= v20)
    {
      if ((v3[1353] & 1) == 0)
      {
        if (!v3[1356])
        {
          goto LABEL_49;
        }

        OUTLINED_FUNCTION_123_0();
        if (((v29 | v28) & 1) == 0)
        {
LABEL_66:
          v24 = 2;
LABEL_55:
          v31 = OUTLINED_FUNCTION_69();
          v34 = [CMGetAttachment(v31 v32];
          if (v34 == 1 || (OUTLINED_FUNCTION_33(), v25) && (v3[513] & 1) == 0)
          {
            v24 = 4;
          }

          if ((((v34 & 0xFFFFFFFE) == 2) & v3[1404]) != 0)
          {
            v4 = 5;
          }

          else
          {
            v4 = v24;
          }

          goto LABEL_63;
        }

        if (*(v3 + 37))
        {
          if (v3[*(v27 + 2072)])
          {
            v24 = 2;
          }

          else
          {
            v24 = 1;
          }

          if ((v3[*(v27 + 2072)] & 1) != 0 || !v19)
          {
            goto LABEL_55;
          }
        }

        else
        {
LABEL_49:
          if (!v19)
          {
            goto LABEL_54;
          }
        }

        OUTLINED_FUNCTION_123_0();
        if (v30 != 1 || (OUTLINED_FUNCTION_33(), v25))
        {
          v24 = 3;
          goto LABEL_55;
        }
      }
    }

    else if ((v3[1356] & 1) != 0 || v3[1352])
    {
      if (v3[1352])
      {
        OUTLINED_FUNCTION_44_3();
      }

      if ((v18 & 1) == 0 && (v19 & 1) == 0 || (OUTLINED_FUNCTION_123_0(), v23 == 1))
      {
        if (v19)
        {
          v24 = 3;
        }

        else
        {
          v24 = 1;
        }

        goto LABEL_55;
      }

      goto LABEL_66;
    }

LABEL_54:
    v24 = 1;
    goto LABEL_55;
  }

  v4 = 0;
LABEL_63:

  return [(BWPreviewStitcherNode *)v3 _setOverCaptureStatus:v4];
}

- (CMSampleBufferRef)_newStitchedSampleBufferFromWiderCamera:(opaqueCMSampleBuffer *)a3 narrowerCamera:(float64x2_t *)a4 widerCameraRegionsShifts:(double *)a5 teleShift:(double *)a6 primaryCaptureRectOut:(double *)a7 primaryCaptureRectBeforeCroppingOut:(void *)a8 centerWiderCameraShiftOut:(float64_t)a9 currentFrameRate:(float64_t)a10 inputCropRectOut:(float)a11
{
  *&v1535 = a11;
  if (!result)
  {
    return result;
  }

  v15 = a2;
  v16 = result;
  v1565 = a8;
  if (a2)
  {
    OUTLINED_FUNCTION_18_7();
    if (!_ZF || (*(v16 + 513) & 1) != 0 || (OUTLINED_FUNCTION_18_7(), _ZF))
    {
      pixelBuffer = CMSampleBufferGetImageBuffer(v15);
      v72 = 1;
    }

    else
    {
      v72 = 0;
      pixelBuffer = 0;
    }
  }

  else
  {
    v72 = 0;
    pixelBuffer = 0;
    v15 = a3;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  v18 = [objc_msgSend(*(v16 + 16) "livePixelBufferPool")];
  v1736.i32[0] = CVPixelBufferGetWidth(v18);
  v1736.i32[1] = CVPixelBufferGetHeight(v18);
  FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v1736, *(v16 + 136));
  v1735 = 0;
  v19 = CMGetAttachment(v15, @"TotalZoomFactor", 0);
  if (v19)
  {
    [v19 floatValue];
    v21 = v20;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = *off_1E798A3C8;
  v1722 = OUTLINED_FUNCTION_71_0(a3);
  v1700 = 0;
  if (v72)
  {
    v1700 = OUTLINED_FUNCTION_71_0(a2);
  }

  if (v18 && ImageBuffer)
  {
    v1572 = v22;
    v1504 = *&v11;
    v1721 = ImageBuffer;
    v1564 = a7;
    v1609 = v18;
    LODWORD(v1667) = *(v16 + 1685);
    v23 = [objc_msgSend(v1722 objectForKeyedSubscript:{*off_1E798A8A8), "intValue"}];
    os_unfair_lock_lock((v16 + 476));
    v24 = objc_autoreleasePoolPush();
    v25 = [*(v16 + 1640) dequeueFencedAnimation];
    v1687 = a3;
    if (v25)
    {
      v26 = v25;
      [v25 primaryCaptureAspectRatio];
      v1701 = v27;
      v1646 = [v26 primaryCaptureRectCenterXPixelOffset];
      v1683 = [v26 primaryCaptureRectCenterYPixelOffset];
      *(v16 + 896) = [v26 fencePortSendRight];
      v1563 = [v26 fencePortGenerationCount];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        [*(v16 + 1640) count];
        [*(v16 + 896) port];
        kdebug_trace();
      }
    }

    else
    {
      v1563 = 0;
      v1701 = *(v16 + 880);
      v1646 = *(v16 + 176);
      v1683 = *(v16 + 180);
    }

    objc_autoreleasePoolPop(v24);
    value = *(v16 + 896);
    *(v16 + 896) = 0;
    v1644 = *(v16 + 184);
    v1673 = *(v16 + 188);
    if ([OUTLINED_FUNCTION_110() isCompleted])
    {
      goto LABEL_33;
    }

    if ((*(v16 + 1260) & 1) == 0)
    {
      CMSampleBufferGetPresentationTimeStamp(propertyValueOut, a3);
      *(v16 + 1248) = *&propertyValueOut[0].a;
      *(v16 + 1264) = propertyValueOut[0].c;
    }

    memset(propertyValueOut, 0, 24);
    CMSampleBufferGetPresentationTimeStamp(propertyValueOut, a3);
    *lhs = *&propertyValueOut[0].a;
    *&lhs[16] = propertyValueOut[0].c;
    rhs = *(v16 + 1248);
    CMTimeSubtract(&time, lhs, &rhs);
    Seconds = CMTimeGetSeconds(&time);
    v29 = FigCaptureRoundFloatToMultipleOf(1, Seconds * 60.0);
    v30 = [OUTLINED_FUNCTION_110() updateCount];
    _VF = __OFSUB__(v29, v30);
    v32 = v29 - v30;
    if (!((v32 < 0) ^ _VF | (v32 == 0)))
    {
      do
      {
        [OUTLINED_FUNCTION_110() update];
        --v32;
      }

      while (v32);
    }

    if (*(v16 + 1244) <= 0.0)
    {
LABEL_33:
      v35 = *(v16 + 1240);
    }

    else
    {
      [OUTLINED_FUNCTION_110() output];
      v34 = v33;
      if (v34 > 1.0)
      {
        v34 = 1.0;
      }

      if (v34 < 0.0)
      {
        v34 = 0.0;
      }

      v35 = *(v16 + 1244) + ((*(v16 + 1240) - *(v16 + 1244)) * v34);
    }

    v1661 = v35;
    v36 = *(v16 + 1648);
    v37 = *(v16 + 1748);
    v38 = *(v16 + 1296);
    if (*(v16 + 1872) == 1)
    {
      if (v23 != *(v16 + 1896))
      {
        *(v16 + 1896) = v23;
        if ((*(v16 + 1873) & 1) == 0)
        {
          v39 = *(v16 + 1888);
          if (v39 == v23 || !v39)
          {
            *(v16 + 1892) = v39;
            *(v16 + 1888) = 0;
          }
        }
      }

      v40 = *(v16 + 1888);
      v41 = *(v16 + 1892);
      if (!v41)
      {
        v41 = *(v16 + 1896);
      }

      v42 = *(v16 + 1874);
      if (v40 && v41 && v40 != v41)
      {
        [objc_msgSend(*(v16 + 1904) objectForKeyedSubscript:{BWSmartFramingSceneMonitorFieldOfViewKeyFromType(*(v16 + 1888))), "doubleValue"}];
        v44 = v43;
        [objc_msgSend(*(v16 + 1904) objectForKeyedSubscript:{BWSmartFramingSceneMonitorFieldOfViewKeyFromType(v41)), "doubleValue"}];
        v46 = *(v16 + 1880);
        if (v45 <= v44)
        {
          v47 = v44;
        }

        else
        {
          v46 = 1.0 - v46;
          v47 = v45;
        }

        if (v45 > v44)
        {
          v45 = v44;
        }

        v48 = v46;
        v49 = v45;
        v50 = v47;
        if (v48 > 1.0)
        {
          v48 = 1.0;
        }

        if (v48 < 0.0)
        {
          v48 = 0.0;
        }

        v1661 = (v49 + ((v50 - v49) * v48)) / v21;
      }

      v51 = v42 ^ 1;
    }

    else
    {
      v41 = 0;
      v40 = 0;
      v51 = 1;
    }

    v1601 = v51;
    os_unfair_lock_unlock((v16 + 476));
    v52 = MEMORY[0x1E695EFF8];
    if (v36)
    {
      OUTLINED_FUNCTION_18_7();
      if (_ZF)
      {
        _ZF = *(v16 + 1552) == v52->x && *(v16 + 1560) == v52->y;
        if (!_ZF)
        {
          v56 = *v52;
          *(v16 + 1552) = *v52;
          v55 = *(v16 + 1652);
          LODWORD(v56.x) = v1535;
          if (*&v1535 > 0.0)
          {
            OUTLINED_FUNCTION_18_7();
            if (_ZF)
            {
              v57 = OUTLINED_FUNCTION_33_5();
              v59 = FigCaptureRoundFloatToMultipleOf(v57, v58);
              v53 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
              v55 = v59;
            }
          }

          v60 = *(v16 + 1568);
          v61 = v53;
          if ([*(v16 + v53[405]) isRamping])
          {
            [*(v16 + v61[405]) currentValue];
            v60 = v60 * *&v62;
          }

          LODWORD(v64) = 1065269330;
          LODWORD(v63) = 1.0;
          *&v62 = v60;
          [*(v16 + v61[405]) startRampFrom:v55 to:2 iterations:v62 shape:v63 exponentialConvergenceFraction:v64];
          if (*(v16 + 1291) & 1) != 0 || (v37)
          {
            v71 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
            if (*(v16 + 1291))
            {
              goto LABEL_79;
            }
          }

          else
          {
            v71 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
            if ((*(v16 + 1745) & 1) == 0)
            {
              goto LABEL_79;
            }
          }

          if (*(v16 + 1747))
          {
            *&v67 = 88.0;
          }

          else
          {
            *&v67 = 70.0;
          }

          LODWORD(v69) = 981668463;
          LODWORD(v70) = 1114636288;
          LODWORD(v66) = 1.0;
          LODWORD(v68) = 17.0;
          *&v65 = v60;
          [*(v16 + v71[405]) startSpringRampFrom:v65 to:v66 withTension:v67 friction:v68 snapFraction:v69 frameRate:v70];
        }
      }
    }

LABEL_79:
    v1620 = *off_1E798B540;
    v73 = [v1722 objectForKeyedSubscript:?];
    v1675 = [v73 isEqualToString:*off_1E798A0D8];
    v1650 = v73;
    v1623 = v38;
    if (v1675)
    {
      v74 = *(v16 + 228);
      v1694 = v74 * *(v16 + 320);
      v75 = &OBJC_IVAR___BWPreviewStitcherNode__wideBaseZoomFactor;
      if (*(v16 + 336) > 0.0)
      {
        v76 = *(v16 + 336);
      }

      else
      {
        v75 = &OBJC_IVAR___BWPreviewStitcherNode__teleNondisruptiveSwitchingScaleFactor;
        v76 = *(v16 + 228);
      }

      v77 = v76 * *(v16 + *v75);
      v78 = &OBJC_IVAR___BWPreviewStitcherNode__teleNondisruptiveSwitchingZoomFactors;
    }

    else
    {
      if (![v73 isEqualToString:*off_1E798A0C0])
      {
        v77 = 1.0;
        v80 = 0;
        LODWORD(v1528) = 1;
        v74 = 1.0;
        v1694 = 1.0;
LABEL_90:
        v82 = [v1700 objectForKeyedSubscript:v1620];
        if (a2 | v82)
        {
          v83 = v82;
          v84 = *off_1E798A0C0;
        }

        else
        {
          v85 = *off_1E798A0D0;
          v86 = [v1650 isEqualToString:*off_1E798A0D0];
          v84 = *off_1E798A0C0;
          if (v1675)
          {
            v87 = *off_1E798A0C0;
          }

          else
          {
            v87 = v85;
          }

          if (v86)
          {
            v83 = 0;
          }

          else
          {
            v83 = v87;
          }
        }

        if ([v83 isEqualToString:v84])
        {
          v88 = *(v16 + 224) * *(v16 + 288);
LABEL_108:
          LODWORD(v1532) = 1.0;
          v1604 = v88;
          goto LABEL_109;
        }

        if (![v83 isEqualToString:*off_1E798A0D0] || (OUTLINED_FUNCTION_18_7(), !_ZF))
        {
          v88 = v74 * 0.5;
          goto LABEL_108;
        }

        v89 = *(v16 + 220);
        v90 = *(v16 + 304);
        v91 = CMGetAttachment(a2, @"ZoomFactorLowerBoundAfterGDCAndFocus", 0);
        LODWORD(v92) = 1.0;
        if (v91)
        {
          [v91 floatValue];
        }

        v93 = *(v16 + 304);
        v1604 = v89 * v90;
        if ((*&v92 * v93) <= 1.0)
        {
          v518 = *(v16 + 232);
          LODWORD(v1532) = 1.0;
          if (v518 <= 0.0 || v518 == *(v16 + 220))
          {
LABEL_109:
            OUTLINED_FUNCTION_18_7();
            v1589 = v83;
            LODWORD(v1541) = v80;
            if (_ZF)
            {
              v97 = *(v16 + 905);
            }

            else
            {
              v97 = 1;
            }

            v1610 = v97;
            v1651 = *(v16 + 906);
            *v1573 = *(v16 + 800);
            if (v1675)
            {
              v98 = &OBJC_IVAR___BWPreviewStitcherNode__wideNondisruptiveSwitchingScaleFactor;
            }

            else
            {
              v98 = &OBJC_IVAR___BWPreviewStitcherNode__superWideNondisruptiveSwitchingScaleFactor;
            }

            v99 = *(v16 + *v98);
            v1653 = vmulq_n_f64(*a4, v99);
            v1657 = vmulq_n_f64(a4[1], v99);
            v100 = a4[2].f64[0] * v99;
            v101 = a4[2].f64[1] * v99;
            v1617 = *(v16 + 288);
            x = v52->x;
            y = v52->y;
            v1637 = vmulq_n_f64(*(v16 + 1552), *(v16 + 304));
            v1668 = vmulq_n_f64(*(v16 + 1472), v1617);
            HIDWORD(v1532) = v96;
            if (v95)
            {
              OUTLINED_FUNCTION_117();
              v106 = *(v16 + v105);
              v109 = v108 / v107;
              if (v74 >= v21)
              {
                v110 = v21;
              }

              else
              {
                v110 = v74;
              }

              if (v110 < v109)
              {
                v110 = v109;
              }

              v111 = (((v110 - v109) / (v74 - v109)) + 0.0) * 1.57079633;
              v112 = v104;
              if (fabs(v111) <= 1.57079633)
              {
                v113 = sin(v111);
              }

              else
              {
                _NF = v111 < 0.0;
                v113 = 1.0;
                if (_NF)
                {
                  v113 = -1.0;
                }
              }

              rect2a = v113;
              [v106 currentValue];
              v115 = OUTLINED_FUNCTION_46_3(v114);
              v117 = v116 - rect2a * v115;
              OUTLINED_FUNCTION_18_7();
              if (_ZF)
              {
                v1716 = v118;
                v119 = [v1650 isEqualToString:*off_1E798A0D0];
                v118 = v1716;
                if (v119)
                {
                  v117 = 0.0;
                }
              }

              v120 = -(v117 * v100);
              v121 = v117 == 0.0;
              if (v117 == 0.0)
              {
                v122 = y;
              }

              else
              {
                v122 = -(v117 * v101);
              }

              if (v121)
              {
                v120 = x;
              }

              v1715 = v120;
              v1653 = vmulq_n_f64(v1653, v118);
              v1657 = vmulq_n_f64(v1657, v118);
              v100 = v100 * v118;
              v101 = v101 * v118;
              if (v112)
              {
                v123 = v1668;
                v124 = v1668.f64[0] == x;
                v125 = v1668.f64[1];
              }

              else
              {
                v123 = v1637;
                v124 = v1637.f64[0] == x;
                v125 = v1637.f64[1];
              }

              if (!v124 || v125 != y)
              {
                *dictb = v123;
                [v106 currentValue];
                v1615 = v127;
                [v106 currentValue];
                v129 = vmulq_f64(*dictb, vmulq_n_f64(vcvtq_f64_f32(__PAIR64__(v128, v1615)), rect2a));
                v1653 = vaddq_f64(v1653, v129);
                v1657 = vaddq_f64(v1657, v129);
                v100 = v100 + v129.f64[0];
                v101 = v101 + v129.f64[1];
                v1715 = v1715 + v129.f64[0];
                v122 = v122 + v129.f64[1];
              }

              rect2 = v122;
            }

            else
            {
              rect2 = v52->y;
              v1715 = v52->x;
              v112 = v1675;
            }

            memset(&recta, 0, sizeof(recta));
            recta.origin.x = psn_pixelBufferRect(v1721);
            recta.origin.y = v130;
            recta.size.width = v131;
            recta.size.height = v132;
            v1516 = *off_1E798B7A0;
            CGRectMakeWithDictionaryRepresentation([v1722 objectForKeyedSubscript:?], &recta);
            r2 = *&ymmword_1AD046EE0[16];
            r2_16 = *ymmword_1AD046EE0;
            v1732 = *ymmword_1AD046EE0;
            v1616 = *off_1E798A5C8;
            CGRectMakeWithDictionaryRepresentation([v1722 objectForKeyedSubscript:?], &v1732);
            if (v1661 > 0.0)
            {
              v133 = OUTLINED_FUNCTION_124_0();
              v1732.origin.x = FigCaptureMetadataUtilitiesScaleRect2D(v133, v135, v136, v137, v134 / v1661);
              v1732.origin.y = v138;
              v1732.size.width = v139;
              v1732.size.height = v140;
            }

            v1585 = v1661;
            *v1731 = 0u;
            v1730 = 0u;
            CVPixelBufferGetWidth(v1721);
            CVPixelBufferGetHeight(v1721);
            v141 = OUTLINED_FUNCTION_124_0();
            FigCaptureMetadataUtilitiesDenormalizeCropRect(v141, v142, v143, v144);
            OUTLINED_FUNCTION_4_25(v145, v146, v147, v148);
            v149 = CMGetAttachment(v1687, *off_1E798A428, 0);
            *v1520 = *v52;
            point = *v52;
            v1671 = v21;
            v1607 = y;
            v1608 = x;
            *(&v1535 + 1) = v74;
            *&v1545 = v77;
            dict = v149;
            *&v1605 = v101;
            *&v1606 = v100;
            if (!v149 || (CGPointMakeWithDictionaryRepresentation(v149, &point), (v1651 & 1) != 0))
            {
LABEL_166:
              OUTLINED_FUNCTION_45_4();
              if (v169 != 1)
              {
                v172 = 0;
                v173 = v1715 - point.x;
                v174 = rect2 - point.y;
                v175 = 1.0;
                v1619 = v100;
                v1618 = v101;
                v176 = v1694;
                goto LABEL_203;
              }

              v170 = *(v16 + 228);
              if (v170 <= 0.0)
              {
                v171 = 1;
              }

              else
              {
                v171 = v112;
              }

              if (v171)
              {
                v170 = v74 + v74;
              }

              else
              {
                v177 = *(v16 + 280);
                if (v177)
                {
                  [objc_msgSend(v177 "firstObject")];
                  OUTLINED_FUNCTION_45_4();
                  v179 = 1.0;
                  v176 = v1694;
                  if ((v180 & 1) == 0)
                  {
                    goto LABEL_178;
                  }

                  goto LABEL_177;
                }
              }

              v178 = v74;
              v176 = v1694;
LABEL_177:
              v179 = (v1604 / v77);
LABEL_178:
              v1598 = v179;
              v181.f64[0] = a9;
              v181.f64[1] = a10;
              if (v170 >= v21)
              {
                v182 = v21;
              }

              else
              {
                v182 = v170;
              }

              if (v182 < v178)
              {
                v182 = v178;
              }

              v183 = (((v182 - v178) / (v170 - v178)) + 0.0) * 1.57079633;
              if (fabs(v183) <= 1.57079633)
              {
                v1706 = v181;
                v185 = sin(v183);
                v181 = v1706;
                v184 = v185;
              }

              else
              {
                v184 = -1.0;
                if (v183 >= 0.0)
                {
                  v184 = 1.0;
                }
              }

              v186 = vmulq_n_f64(v181, v1617);
              if (v112)
              {
                v187 = v1598;
                v188 = vmulq_n_f64(vmulq_n_f64(v186, v184), v1598);
                if (v1637.f64[0] == x && v1637.f64[1] == y)
                {
                  goto LABEL_200;
                }

                *v1631 = v188;
                v190 = [(BWPreviewStitcherNode *)v16 _wideBaseZoomFactorWithOverride];
                v1669 = (*&v190 / *(v16 + 220));
                [*(v16 + 1536) currentValue];
                v1707 = v191;
                [*(v16 + 1536) currentValue];
                v192 = *v1631;
                v193 = vsubq_f64(vmulq_n_f64(v1637, v1669), vmulq_n_f64(*v1573, v1669));
                v187 = v1598;
                v195 = vcvtq_f64_f32(__PAIR64__(v194, v1707));
              }

              else
              {
                v1708 = v184;
                *v1638 = v186;
                [*(v16 + 1464) currentValue];
                v197 = OUTLINED_FUNCTION_46_3(v196);
                v187 = v1598;
                v188 = vmulq_n_f64(vmulq_n_f64(*v1638, v198 * v197), v1598);
                if (v1668.f64[0] == x && v1668.f64[1] == y)
                {
                  goto LABEL_200;
                }

                *v1632 = v188;
                [*(v16 + 1464) currentValue];
                v1639 = v200;
                [*(v16 + 1464) currentValue];
                v192 = *v1632;
                v187 = v1598;
                v195 = vmulq_n_f64(vmulq_n_f64(vcvtq_f64_f32(__PAIR64__(v201, v1639)), v1708), v1598);
                v193 = v1668;
              }

              v188 = vaddq_f64(v192, vmulq_f64(v193, v195));
LABEL_200:
              v202 = vmlsq_lane_f64(v188, point, v187, 0);
              v1653 = vaddq_f64(v1653, v202);
              v1657 = vaddq_f64(v1657, v202);
              v1619 = v100 + v202.f64[0];
              v1618 = v101 + v202.f64[1];
              OUTLINED_FUNCTION_45_4();
              if (v205)
              {
                v175 = (v77 / v1604);
                v172 = 1;
              }

              else
              {
                v172 = 0;
                v173 = v173 - v203;
                v174 = v174 - v204;
                v175 = 1.0;
              }

LABEL_203:
              v206 = MEMORY[0x1E695F058];
              v207 = v1701;
              v1640 = v173;
              v1633 = v174;
              if (*(v16 + 1744) == 1)
              {
                if ([v1650 isEqualToString:*off_1E798A0D0])
                {
                  v175 = 1.0;
                }

                OUTLINED_FUNCTION_45_4();
              }

              *v1567 = v206[1];
              v1569 = *v206;
              v1728.origin = *v206;
              v1728.size = *v1567;
              v208 = *v1731 / *&v1731[1];
              v1600 = v208;
              if (v207 <= 0.0)
              {
                *&v209 = *v1731 / *&v1731[1];
              }

              else
              {
                *&v209 = v1701;
              }

              if (v172)
              {
                if (v176 != *&v1545)
                {
                  v210 = OUTLINED_FUNCTION_47_5();
                  v215 = FigCaptureMetadataUtilitiesScaleRect2D(v210, v211, v212, v213, v214);
                  OUTLINED_FUNCTION_4_25(v215, v216, v217, v218);
                }

                if (v112)
                {
                  [(BWPreviewStitcherNode *)v16 _wideBaseZoomFactorWithOverride];
                  v644 = OUTLINED_FUNCTION_47_5();
                  v649 = FigCaptureMetadataUtilitiesScaleRect2D(v644, v645, v646, v647, v648);
                  OUTLINED_FUNCTION_4_25(v649, v650, v651, v652);
                }
              }

              v1702 = v21;
              v219 = off_1E798A6F0;
              v220 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
              v1670 = *&v209;
              rect2b = v175;
              if ((v37 & 1) == 0)
              {
                OUTLINED_FUNCTION_18_7();
                if (!_ZF)
                {
                  OUTLINED_FUNCTION_18_7();
                  if (v229 && v40 && v41 && v40 != v41)
                  {
                    LODWORD(v231) = *(v16 + *(v230 + 1856));
                    if (v207 == 1.0 && *&v231 == v207)
                    {
                      [objc_msgSend(*(v16 + 1912) objectForKeyedSubscript:{v1650, v231), "floatValue"}];
                      IsSensorMountedInPortraitOrientation = FigCaptureSourceIsSensorMountedInPortraitOrientation(v551);
                      v553 = BWSmartFramingSceneMonitorAspectRatioFromFieldOfView(*(v16 + 1896), IsSensorMountedInPortraitOrientation);
                      v554 = BWAspectRatioValueFromAspectRatio(v553);
                      FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(recta.size.width, recta.size.height, v554);
                      v557 = FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(v555, v556, *&v209);
                      OUTLINED_FUNCTION_4_25(v557, v558, v559, v560);
                      v562 = recta.origin.x;
                      v561 = recta.origin.y;
                      width = recta.size.width;
                      height = recta.size.height;
                      FigCaptureMetadataUtilitiesScaleRect2D(v565, v566, v567, v568, 1.0 / (v1702 * v1585));
                      v222 = v1721;
                      OUTLINED_FUNCTION_85_1();
                      v224 = v1687;
                    }

                    else
                    {
                      v233 = FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(recta.size.width, recta.size.height, *&v209);
                      OUTLINED_FUNCTION_4_25(v233, v234, v235, v236);
                      [v1722 objectForKeyedSubscript:*off_1E798A6F0];
                      v222 = v1721;
                      if (*(v16 + 1921))
                      {
                        CVPixelBufferGetWidth(v1721);
                        CVPixelBufferGetHeight(v1721);
                        v237 = OUTLINED_FUNCTION_0_29();
                        v241 = OUTLINED_FUNCTION_96_0(v237, v238, v239, v240);
                        OUTLINED_FUNCTION_4_25(v241, v242, v243, v244);
                      }

                      else
                      {
                        OUTLINED_FUNCTION_0_29();
                      }

                      OUTLINED_FUNCTION_85_1();
                      v224 = v1687;
                      v562 = recta.origin.x;
                      v561 = recta.origin.y;
                      width = recta.size.width;
                      height = recta.size.height;
                      FigCaptureMetadataUtilitiesScaleRect2D(v635, v636, v637, v638, 1.0 / (v1702 * v1585));
                    }

                    v639 = OUTLINED_FUNCTION_100_0(width - v569);
                    OUTLINED_FUNCTION_4_25(v562 + v639, v561 + (height - v640) * v641, v642, v640);
                    v245 = 1.0;
                    if (*(v16 + 1920) == 1)
                    {
                      [*(v16 + 464) previewStitcherSmartFramingFieldOfViewTransitionAppliedZoomFactor:v16 zoomFactor:v1702 * v1585];
                    }

                    goto LABEL_284;
                  }

                  v245 = 1.0;
                  if (v207 > 0.0)
                  {
                    v246 = OUTLINED_FUNCTION_47_5();
                    v250 = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(v246, v247, v248, v249, v207);
                    OUTLINED_FUNCTION_4_25(v250, v251, v252, v253);
                  }

                  v222 = v1721;
                  OUTLINED_FUNCTION_85_1();
                  v254 = v1683;
                  v255 = v1673;
                  v224 = v1687;
LABEL_306:
                  v363 = v255 + v254;
                  v364 = OUTLINED_FUNCTION_0_29();
                  if (LODWORD(v1667))
                  {
                    v368 = psn_rectBoundedByRect(v364, v365, v366, v367, recta.origin.x, recta.origin.y, recta.size.width, recta.size.height);
                  }

                  else
                  {
                    v368 = psn_conformRectForMSR420vfBoundedByRect(0, v364, v365, v366, v367, recta.origin.x, recta.origin.y, recta.size.width, recta.size.height);
                  }

                  v1593 = v1644 + v1646;
                  OUTLINED_FUNCTION_4_25(v368, v369, v370, v371);
                  v1779.origin.x = OUTLINED_FUNCTION_58_4();
                  v1780 = CGRectInset(v1779, v372, v372);
                  v373 = v1780.origin.y;
                  v374 = v1780.size.width;
                  v1625 = v245;
                  if (v245 > 1.0)
                  {
                    OUTLINED_FUNCTION_18_7();
                    if (_ZF)
                    {
                      v1780.origin.x = FigCaptureMetadataUtilitiesScaleRect2D(v1780.origin.x, v373, v374, v1780.size.height, (v375 / v245));
                      v373 = v376;
                      v374 = v377;
                    }
                  }

                  v1576 = v1593;
                  if (v1593)
                  {
                    v378 = v1780.origin.x + v1593;
                  }

                  else
                  {
                    v378 = v1780.origin.x;
                  }

                  if (v363)
                  {
                    OUTLINED_FUNCTION_18_7();
                    if (_ZF)
                    {
                      v373 = v373 + v363;
                    }
                  }

                  v1711 = v1780.size.height;
                  v379 = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(v378, v373, v374, v1780.size.height, *&v209);
                  OUTLINED_FUNCTION_23_3(v379, v380, v381, v382);
                  if (v363)
                  {
                    OUTLINED_FUNCTION_18_7();
                    if (_ZF)
                    {
                      v373 = v373 - v363;
                    }
                  }

                  v1718 = v373;
                  v384 = OUTLINED_FUNCTION_41_3((v16 + 416), v383);
                  v388 = v386;
                  v389 = v387;
                  if (a5)
                  {
                    *a5 = v384;
                    a5[1] = v385;
                    a5[2] = v386;
                    a5[3] = v387;
                  }

                  v1684 = v385;
                  v1686 = v384;
                  if (a6)
                  {
                    v390 = v1600;
                    v391 = *&v209;
                    if (*&v209 <= v1600)
                    {
                      v393 = 1.0;
                      v392 = v390 / v391;
                    }

                    else
                    {
                      v392 = 1.0;
                      v393 = v391 / v390;
                    }

                    *a6 = (1.0 - v392) * 0.5;
                    a6[1] = (1.0 - v393) * 0.5;
                    a6[2] = v392;
                    a6[3] = v393;
                  }

                  LODWORD(v1507) = v363;
                  OUTLINED_FUNCTION_18_7();
                  if (_ZF)
                  {
                    v394 = OUTLINED_FUNCTION_126();
                    v1781.origin.x = psn_conformRectForMSR420vfBoundedByRect(1, v394, v395, v388, v389, v394, v395, v388, v389);
                    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v1781);
                    VTSessionSetProperty(*(v16 + 400), *MEMORY[0x1E6983D90], DictionaryRepresentation);
                    if (DictionaryRepresentation)
                    {
                      CFRelease(DictionaryRepresentation);
                    }
                  }

                  v1674 = v389;
                  v397 = 1.0;
                  if (*(v16 + 330) == 1)
                  {
                    v398 = recta.size.width;
                    v399 = v398 / CVPixelBufferGetWidth(v222);
                    v400 = recta.size.height;
                    if (v399 >= v400 / CVPixelBufferGetHeight(v222))
                    {
                      v401 = recta.size.height;
                      v402 = CVPixelBufferGetHeight(v222);
                    }

                    else
                    {
                      v401 = recta.size.width;
                      v402 = CVPixelBufferGetWidth(v222);
                    }

                    v397 = v401 / v402;
                  }

                  _NF = v21 < v176 || v21 < (v176 / v397);
                  if (_NF)
                  {
                    v404 = OUTLINED_FUNCTION_8_18();
                    acpr_conformRectForMSR420vf(v404, v405, v406, v407);
                    v409.f64[1] = v408;
                    v410 = vaddvq_f64(vdivq_f64(v409, vaddq_f64(*v1731, *v1731)));
                    if (v397 != 1.0)
                    {
                      v410 = v410 * v397;
                    }

                    v1703 = v410;
                    v1782 = v1728;
                    *&v416 = CGRectInset(v1728, (1.0 - v1782.origin.y) * v1728.size.width * 0.5, (1.0 - v1782.origin.y) * v1728.size.height * 0.5);
                  }

                  else
                  {
                    v411 = OUTLINED_FUNCTION_8_18();
                    v416 = psn_smallestBoundingRectAlignedToMultipleOf(v412, 0, v411, v413, v414, v415);
                    v1703 = 0.0;
                  }

                  v420 = v378 - v1576;
                  OUTLINED_FUNCTION_23_3(v416, v417, v418, v419);
                  v421 = [objc_msgSend(*(v16 + 16) "videoFormat")];
                  v1645 = v388;
                  if (FigCapturePixelFormatIsTenBit(v421))
                  {
                    *&propertyValueOut[0].a = 0x200000002;
                    if (FigCapturePixelFormatIsTenBitPacked(v421))
                    {
                      *&propertyValueOut[0].a = 0x200000006;
                    }

                    else if (FigCapturePixelFormatGetCompressionType(v421))
                    {
                      *&propertyValueOut[0].a = FigCapturePixelFormatTileAlignment(v421);
                    }

                    FigCaptureSwapVideoDimensionsFor90Or270Rotation(propertyValueOut, *(v16 + 136));
                    OUTLINED_FUNCTION_8_18();
                    a_high = HIDWORD(propertyValueOut[0].a);
                    a_low = LODWORD(propertyValueOut[0].a);
                    v462 = v1736.i32[0];
                    v461 = v1736.i32[1];
                    OUTLINED_FUNCTION_40_4();
                    v469 = psn_rectBoundedByRect(v463, v464, v465, v466, v467, v468, v374, v1711);
                    v471 = v470;
                    v473 = v472;
                    v1681 = v474;
                    v475 = v469 + 0.001;
                    v476 = FigCaptureFloorFloatToMultipleOf(a_low, v475);
                    v477 = v471 + 0.001;
                    v478 = FigCaptureFloorFloatToMultipleOf(a_high, v477);
                    v479 = v469 + v473 + -0.001;
                    v480 = FigCaptureCeilFloatToMultipleOf(a_low, v479);
                    v481 = v471 + *&v1681 + -0.001;
                    v482 = FigCaptureCeilFloatToMultipleOf(a_high, v481);
                    v1785.origin.x = v420;
                    v1785.origin.y = v1718;
                    v1785.size.width = v374;
                    v1785.size.height = v1711;
                    MinX = CGRectGetMinX(v1785);
                    v483 = a_low;
                    v1786.origin.x = v420;
                    v1786.origin.y = v1718;
                    v1786.size.width = v374;
                    v1786.size.height = v1711;
                    MinY = CGRectGetMinY(v1786);
                    v485 = v462;
                    if (v480 <= v462)
                    {
                      v1787.origin.x = OUTLINED_FUNCTION_116_1();
                      if (CGRectGetMaxX(v1787) >= v480)
                      {
                        v485 = v480;
                      }

                      else
                      {
                        v485 = v480 - v483;
                      }
                    }

                    v388 = a_high;
                    v512 = v461;
                    v303 = v482 <= v461;
                    v222 = v1721;
                    v444 = a2;
                    LODWORD(v220) = v1675;
                    if (v303)
                    {
                      v1792.origin.x = OUTLINED_FUNCTION_116_1();
                      if (CGRectGetMaxY(v1792) >= v482)
                      {
                        v512 = v482;
                      }

                      else
                      {
                        v512 = v482 - v388;
                      }
                    }

                    if (MinY <= v478)
                    {
                      v513 = -0.0;
                    }

                    else
                    {
                      v513 = a_high;
                    }

                    v514 = v476;
                    v443 = v513 + v478;
                    if (MinX <= v476)
                    {
                      v515 = -0.0;
                    }

                    else
                    {
                      v515 = v483;
                    }

                    v440 = v515 + v514;
                    v441 = v485 - (v515 + v514);
                    v442 = v512 - v443;
                    v1728.origin.x = v515 + v514;
                    v1728.origin.y = v443;
                    v1728.size.width = v441;
                    v1728.size.height = v512 - v443;
                    if (v1625 > 1.0)
                    {
                      v21 = v1671;
                      *&v209 = v1670;
                      v176 = v1694;
                      v445 = rect2b;
                      if ((*(v16 + 1291) & 1) != 0 && (v1736.i32[0] % SLODWORD(propertyValueOut[0].a) || v1736.i32[1] % SHIDWORD(propertyValueOut[0].a)))
                      {
                        v516 = v1736.i32[0];
                        v517 = v440 == 0.0 || v440 + v441 == v516;
                        if (!v517 && (*(v16 + 416) < 0.0 || *(v16 + 424) < 0.0))
                        {
                          v440 = v440 + (v1736.i32[0] % SLODWORD(propertyValueOut[0].a));
                          v1728.origin.x = v440;
                          if (v441 + v440 > v516)
                          {
                            v441 = v441 - SLODWORD(propertyValueOut[0].a);
                            v1728.size.width = v441;
                          }
                        }

                        if (v443 != 0.0 && v443 + v442 != v1736.i32[1] && (*(v16 + 432) < 0.0 || *(v16 + 440) < 0.0))
                        {
                          v443 = v443 + (v1736.i32[1] % SHIDWORD(propertyValueOut[0].a));
                          v1728.origin.y = v443;
                          if (v442 + v443 > v1736.i32[1])
                          {
                            v442 = v442 - SHIDWORD(propertyValueOut[0].a);
                            v1728.size.height = v442;
                          }
                        }
                      }

LABEL_353:
                      v1548 = v440;
                      v1551 = v443;
                      v447 = v1607;
                      v446 = v1608;
                      v448 = v1640 == v1608 && v1633 == v1607;
                      v1555 = v442;
                      v1562 = v441;
                      v449 = v442;
                      v450 = v441;
                      v1584 = v1633 * v445;
                      v1588 = v1640 * v445;
                      if (!v448)
                      {
                        v570 = v441 / (*v1731 + *v1731) + v442 / (*&v1731[1] + *&v1731[1]);
                        HIDWORD(v388) = HIDWORD(recta.size.width);
                        *&propertyValueOut[0].a = *v1520;
                        OUTLINED_FUNCTION_45_4();
                        v574 = v573;
                        v575 = v572;
                        if ((v571 & 1) == 0)
                        {
                          v574 = v573;
                          v575 = v572;
                          if (*(v16 + 1696) == 1)
                          {
                            CVPixelBufferGetWidth(v222);
                            CVPixelBufferGetHeight(v222);
                            v576 = OUTLINED_FUNCTION_0_29();
                            FigCaptureMetadataUtilitiesNormalizeCropRect(v576, v577, v578, v579);
                            v581 = v580;
                            v209 = (1.0 - v583) * 0.5;
                            v575 = v1588 - (v584 - (1.0 - v582) * 0.5) * CVPixelBufferGetWidth(v222);
                            v585 = v581 - v209;
                            *&v209 = v1670;
                            v574 = v1584 - v585 * CVPixelBufferGetHeight(v222);
                            v445 = rect2b;
                          }
                        }

                        v586 = v570;
                        v1436 = v586;
                        v1425 = v574;
                        v587 = OUTLINED_FUNCTION_3();
                        [(BWPreviewStitcherNode *)v16 _getInputRect:v588 outputRect:v589 inputShiftAppliedInOutputRect:v590 toTransferPixelBuffer:v222 rect:v591 intoPixelBufferDimensions:0 rect:v219 withInputShift:v587 shiftOutsideBoundingRectAllowed:v592 ignoreBounds:v593 scale:v594 forFinalOutput:v1548, v1551, v595, v596, v575, v1425, v1436, 0];
                        v446 = propertyValueOut[0].a / v445;
                        v450 = v1728.size.width;
                        v449 = v1728.size.height;
                        v447 = propertyValueOut[0].b / v445;
                        v21 = v1671;
                        v176 = v1694;
                      }

                      *&v1513 = v447;
                      *v1520 = v446;
                      v451 = v450 / *v1731;
                      v452 = v449 / *&v1731[1];
                      if (FigCapturePlatformIdentifier() <= 11)
                      {
                        v453 = 4.0;
                      }

                      else
                      {
                        v453 = 8.0;
                      }

                      OUTLINED_FUNCTION_18_7();
                      if (_ZF)
                      {
                        v453 = v453 / ((*(v16 + 272) / 100.0 + 1.0) * (v176 / v1604));
                      }

                      v1603 = *MEMORY[0x1E695F050];
                      if (v451 <= v453 && v452 <= v453)
                      {
                        v458 = 1.0;
                      }

                      else
                      {
                        v1783.origin.x = OUTLINED_FUNCTION_8_18();
                        v456 = CGRectGetWidth(v1783) / v453;
                        v1712 = v452;
                        if (LODWORD(v1667))
                        {
                          v1784.origin.x = OUTLINED_FUNCTION_8_18();
                          v457 = CGRectGetHeight(v1784) / v453;
                        }

                        else
                        {
                          v486 = v456;
                          v456 = FigCaptureCeilFloatToMultipleOf(2, v486);
                          v1788.origin.x = OUTLINED_FUNCTION_8_18();
                          v487 = CGRectGetHeight(v1788) / v453;
                          v457 = FigCaptureCeilFloatToMultipleOf(2, v487);
                        }

                        HIDWORD(v388) = HIDWORD(v1731[0]);
                        v488 = *&v1731[1];
                        OUTLINED_FUNCTION_28_3();
                        v1789.size.height = v488;
                        v489 = CGRectGetMidX(v1789) - v456 * 0.5;
                        v1790.origin.x = OUTLINED_FUNCTION_0_29();
                        MidY = CGRectGetMidY(v1790);
                        v1730.f64[0] = v489;
                        v1730.f64[1] = MidY - v457 * 0.5;
                        *v1731 = v456;
                        *&v1731[1] = v457;
                        psn_rectBoundedByRect(v489, v1730.f64[1], v456, v457, recta.origin.x, recta.origin.y, recta.size.width, recta.size.height);
                        OUTLINED_FUNCTION_26_2();
                        OUTLINED_FUNCTION_0_29();
                        OUTLINED_FUNCTION_48();
                        if (!CGRectEqualToRect(v1791, v1846))
                        {
                          OUTLINED_FUNCTION_45_4();
                          if ((v491 & 1) == 0)
                          {
                            v1730.f64[0] = v456;
                            v1730.f64[1] = v457;
                            *v1731 = v489;
                            v1731[1] = 0.5;
                            OUTLINED_FUNCTION_28_3();
                            OUTLINED_FUNCTION_48();
                            v1603 = FigCaptureMetadataUtilitiesRectNormalizedToRect(v492, v493, v494, v495, v496, v497, v498);
                          }
                        }

                        if ((LOBYTE(v1667) & 1) == 0)
                        {
                          v499 = OUTLINED_FUNCTION_0_29();
                          v503 = acpr_conformRectForMSR420vf(v499, v500, v501, v502);
                          OUTLINED_FUNCTION_4_25(v503, v504, v505, v506);
                        }

                        v458 = OUTLINED_FUNCTION_100_0(v451 + v1712) / v453;
                        OUTLINED_FUNCTION_45_4();
                        v21 = v1671;
                        *&v209 = v1670;
                        v176 = v1694;
                      }

                      v507 = 0;
                      *&v1682 = v458;
                      if ((v454 & 1) != 0 && !v219 && v21 > v176)
                      {
                        if (([*(v16 + 952) isRamping] & 1) == 0 && *(v16 + 906) == objc_msgSend(v16, "displaysWidestCameraOnly"))
                        {
                          v1719 = OUTLINED_FUNCTION_57_3();
                          v509 = v508;
                          v1713 = v510;
                          rect2c = v511;
                          OUTLINED_FUNCTION_18_7();
                          if (_ZF)
                          {
                            HIDWORD(v388) = HIDWORD(recta.origin.y);
                          }

                          else
                          {
                            psn_pixelBufferRect(v222);
                            OUTLINED_FUNCTION_21_5();
                          }

                          v520 = OUTLINED_FUNCTION_0_29();
                          v525 = FigCaptureMetadataUtilitiesScaleRect2D(v520, v522, v523, v524, v521 / v458);
                          v529 = v526;
                          if (!LODWORD(v1667))
                          {
                            v525 = acpr_conformRectForMSR420vf(v525, v526, v527, v528);
                            v529 = v530;
                          }

                          *&v1648 = v525;
                          v1641 = v529;
                          v1634 = v527;
                          if (v458 <= 1.0)
                          {
                            OUTLINED_FUNCTION_25_3();
                          }

                          OUTLINED_FUNCTION_32_2();
                          FigCaptureMetadataUtilitiesRectNormalizedToRect(v531, v532, v533, v534, v535, v536, v537);
                          OUTLINED_FUNCTION_21_5();
                          v1847.origin.x = v1719;
                          v1847.origin.y = v509;
                          v1847.size.width = v1713;
                          v1847.size.height = rect2c;
                          v538 = CGRectContainsRect(v1793, v1847);
                          if (dict)
                          {
                            OUTLINED_FUNCTION_73();
                            OUTLINED_FUNCTION_121();
                            v1795 = CGRectIntersection(v1794, v1848);
                            v539 = v1795.size.width * v1795.size.height / (v1713 * rect2c);
                            if ((v538 & 1) == 0)
                            {
                              if (v539 >= 0.99)
                              {
                                v597 = v539 * 0.95;
                                v539 = v597;
                              }

                              BWSmartCameraSceneUpdateWithConfidence(v16 + 1704, v539);
                              v507 = 0;
                              v444 = a2;
                              v21 = v1671;
                              *&v209 = v1670;
                              goto LABEL_449;
                            }

                            BWSmartCameraSceneUpdateWithConfidence(v16 + 1704, v539);
                            v538 = *(v16 + 1705);
                          }

                          if ((v538 & (*&v1541 > 0.0) & v1528) == 1)
                          {
                            v540 = psn_pixelBufferRect(v222);
                            v544 = FigCaptureMetadataUtilitiesScaleRect2D(v540, v541, v542, v543, (1.0 / (*&v1541 / *(&v1535 + 1))));
                            v548 = *&v1648;
                            v549 = v1641;
                            v550 = v1634;
                            if (v458 <= 1.0)
                            {
                              OUTLINED_FUNCTION_25_3();
                            }

                            v1796.origin.x = FigCaptureMetadataUtilitiesRectNormalizedToRect(v544, v545, v546, v547, v548, v549, v550);
                            v1849.origin.x = v1719;
                            v1849.origin.y = v509;
                            v1849.size.width = v1713;
                            v1849.size.height = rect2c;
                            if (!CGRectContainsRect(v1796, v1849))
                            {
                              goto LABEL_437;
                            }
                          }

                          else if ((v538 & 1) == 0)
                          {
LABEL_437:
                            v507 = 0;
LABEL_445:
                            v444 = a2;
                            v21 = v1671;
                            *&v209 = v1670;
LABEL_449:
                            v176 = v1694;
                            goto LABEL_450;
                          }

                          v507 = *(v16 + 1024) == 0;
                          goto LABEL_445;
                        }

                        v507 = 0;
                      }

LABEL_450:
                      v1695 = v176;
                      v598 = v21;
                      if (!v444 && (*(v16 + 1224) & 1) != 0)
                      {
                        v507 = *(v16 + 1308) != 4;
                        v599 = *(v16 + 952);
                        if (v599)
                        {

                          *(v16 + 952) = 0;
                          *(v16 + 1000) = 0;
                        }

                        goto LABEL_482;
                      }

                      if (!v444 || v220 == 1)
                      {
                        goto LABEL_482;
                      }

                      if (*(v16 + 1353) == v507)
                      {
                        if (*(v16 + 1354) == 1 && ((*(v16 + 1313) & 1) != 0 || *(v16 + 907) == 1))
                        {
                          *(v16 + 1354) = 0;
                        }

                        goto LABEL_467;
                      }

                      if (v507)
                      {
                        v600 = 0;
                      }

                      else
                      {
                        if (*(v16 + 1313))
                        {
LABEL_466:
                          *(v16 + 1353) = v507;
LABEL_467:
                          v601 = *(v16 + 912);
                          v602 = *(v16 + 1355);
                          if (*(v16 + 482) == 1 && (OUTLINED_FUNCTION_18_7(), _ZF))
                          {
                            v603 = [v1589 isEqualToString:*off_1E798A0D0];
                            v604 = *(v16 + 484);
                            if (v604)
                            {
                              v605 = &OBJC_IVAR___BWPreviewStitcherNode__wideToTeleShiftCorrections;
                              if (v603)
                              {
                                v605 = &OBJC_IVAR___BWPreviewStitcherNode__superWideToWideShiftCorrections;
                              }

                              LOBYTE(v604) = *(v16 + *v605 + 148) >= v604;
                            }
                          }

                          else
                          {
                            LOBYTE(v604) = 1;
                          }

                          if (v1728.size.height >= v1736.i32[1] && (v219 & 1) == 0 && (!(v1610 & 1 | ((*(v16 + 1354) & 1) == 0)) && v601 != *(&v1532 + 1) && v602 || !(v604 & 1 | ((*(v16 + 1573) & 1) == 0))))
                          {
                            v606 = *(v16 + 1024) == 0;
                            v507 |= v606;
                            v1610 |= v606;
                          }

LABEL_482:
                          v607 = vaddvq_f64(vdivq_f64(v1728.size, vaddq_f64(*v1731, *v1731)));
                          if (v1703 > 0.0 && v219)
                          {
                            v607 = v1703 * (v598 / v1695);
                          }

                          *&v608 = COERCE_DOUBLE(&time);
                          v609 = v206->x;
                          d = v206[1].y;
                          v610 = v206[1].x;
                          b = v206->y;
                          v611 = v206->x;
                          *&v1626 = d;
                          rect2d = d;
                          dicta = v610;
                          v1720 = v610;
                          v1649 = b;
                          v1714 = b;
                          v1704 = v206->x;
                          v18 = v1609;
                          if (!pixelBuffer)
                          {
LABEL_488:
                            if (v219)
                            {
LABEL_489:
                              OUTLINED_FUNCTION_20_4();
                              v620 = v598;
                              goto LABEL_718;
                            }

LABEL_562:
                            v1697 = v610;
                            *&v1543 = v609;
                            if (v507)
                            {

                              *(v16 + 1024) = 0;
                              v611 = recta.origin.x;
                              v609 = recta.origin.y;
                              v906 = recta.size.width;
                              v610 = recta.size.height;
                              propertyValueOut[0].a = recta.origin.x;
                              propertyValueOut[0].b = recta.origin.y;
                              *&propertyValueOut[0].c = recta.size;
                              v907 = v1588;
                              if (v1593)
                              {
                                v907 = v1588 + v1576 / v607;
                              }

                              OUTLINED_FUNCTION_18_7();
                              if (_ZF)
                              {
                                OUTLINED_FUNCTION_35_3();
                                if (!(_NF ^ _VF | _ZF))
                                {
                                  if ([v1650 isEqualToString:*off_1E798A0D0])
                                  {
                                    v1667 = FigCaptureMetadataUtilitiesNormalizedSensorCenterOffsetInValidBufferRect(v224);
                                    v909 = v908;
                                    v910 = CVPixelBufferGetWidth(v222);
                                    CVPixelBufferGetHeight(v222);
                                    v907 = v907 - FigCaptureMetadataUtilitiesDenormalizePoint(v1667, v909, v910);
                                  }
                                }
                              }

                              *&v1140 = v607;
                              v1444 = v1140;
                              OUTLINED_FUNCTION_55_2();
                              v1432 = v1141;
                              OUTLINED_FUNCTION_3();
                              OUTLINED_FUNCTION_87();
                              [(BWPreviewStitcherNode *)v1142 _transferPixelBuffer:v1143 rect:v1144 intoPixelBuffer:v1145 rect:v1146 isFinalOutput:v1147 withInputShift:v1148 scale:v1149 inputSourceRectOut:*&v907, v1432, v1444];
                              OUTLINED_FUNCTION_2_3();
                              OUTLINED_FUNCTION_82_0();
                              if (!OUTLINED_FUNCTION_17_6(v1158, v1159, v1160, v1150, v1151, v1152, v1153, v1154, v1155, v1156, v1157, v1422, v1433, v1445, v1447, v1452, v1457, v1462, v1468, v1474, v1481, v1484, v1488, v1493, v1498, v1504, v1507, v1513, v1516, v1520[0], v1520[1], v1525, v1528, *&v1532, v1535, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1540, v1543))
                              {
                                v1161 = OUTLINED_FUNCTION_3();
                                OUTLINED_FUNCTION_133_1(v1161, v1162, v1163, v1164, v1704, v1714);
                                OUTLINED_FUNCTION_2_3();
                              }

                              v620 = v1671;
                              OUTLINED_FUNCTION_20_4();
                              v1730 = *&propertyValueOut[0].a;
                              *v1731 = *&propertyValueOut[0].c;
                              rect2d = v610;
                              v1720 = v906;
                              v1714 = v609;
                              v1704 = v611;
                              OUTLINED_FUNCTION_49_2();
                              *&v209 = v1670;
LABEL_718:
                              OUTLINED_FUNCTION_18_7();
                              v1613 = *&v611;
                              if (_ZF && (OUTLINED_FUNCTION_18_7(), _ZF) && ([objc_msgSend(*(v16 + 280) "firstObject")], v620 >= v1165) && v620 < *(v16 + 228))
                              {
                                v1166 = v1649;
                                if ((v507 & 1) == 0)
                                {
                                  [(BWPreviewStitcherNode *)v16 _initCameraTransitionCIContextWithColorManagementEnabled:?];
                                  psn_blurPixelBufferBorder(*(v16 + 984), v18, v1704, v1714, v1720, rect2d, *(v16 + 1660));
                                  v1865.origin.x = v609;
                                  v1672 = v1167;
                                  v1169 = v1168;
                                  v1171 = v1170;
                                  v1829.origin.x = v1704;
                                  v1829.origin.y = v1714;
                                  v1829.size.width = v1720;
                                  v1829.size.height = rect2d;
                                  v1865.origin.y = v1649;
                                  v1172 = v1865.origin.x;
                                  v1865.size.width = dicta;
                                  *&v1865.size.height = v1626;
                                  if (CGRectEqualToRect(v1829, v1865))
                                  {
                                    rect2d = v1171;
                                    v1720 = v1169;
                                    OUTLINED_FUNCTION_72_0(*&v1672);
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_39_3();
                                    v1868.origin.x = v1704;
                                    v1868.origin.y = v1714;
                                    v1868.size.width = v1720;
                                    v1868.size.height = rect2d;
                                    v1842 = CGRectUnion(v1841, v1868);
                                    OUTLINED_FUNCTION_6_20(v1842.origin.x, v1842.origin.y, v1842.size.width, v1842.size.height);
                                  }

                                  v609 = v1172;
                                  v1166 = v1649;
                                  *&v209 = v1670;
                                }
                              }

                              else
                              {
                                v1166 = v1649;
                              }

                              v1173 = *(v16 + 1280);
                              if (v1173 && (v1174 = *(v16 + 1288), (IOSurface = CVPixelBufferGetIOSurface(v18)) != 0))
                              {
                                ID = IOSurfaceGetID(IOSurface);
                                *&propertyValueOut[0].a = v1569;
                                *&propertyValueOut[0].c = *v1567;
                                if ((v1174 & 1) == 0)
                                {
                                  [MEMORY[0x1E696AD98] numberWithUnsignedInt:ID];
                                  v1177 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
                                  CGRectMakeWithDictionaryRepresentation(v1177, propertyValueOut);
                                }

                                v1830.origin.x = OUTLINED_FUNCTION_24_4();
                                v1866.origin.x = v609;
                                v1866.origin.y = v1166;
                                v1866.size.width = dicta;
                                *&v1866.size.height = v1626;
                                if (CGRectEqualToRect(v1830, v1866) || (v1831.origin.x = OUTLINED_FUNCTION_52_3(), v1831.size.height = rect2d, !CGRectContainsRect(v1831, v1867)))
                                {
                                  OUTLINED_FUNCTION_52_3();
                                  VTFillPixelBufferBorderWithBlack();
                                }

                                v1832.origin.x = OUTLINED_FUNCTION_52_3();
                                v1832.size.height = rect2d;
                                v1178 = CGRectCreateDictionaryRepresentation(v1832);
                                [v1173 setObject:CFAutorelease(v1178) forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", ID)}];
                                v222 = v1721;
                              }

                              else
                              {
                                VTFillPixelBufferBorderWithBlack();
                              }

                              if (v219)
                              {
                                v1179 = a2;
                              }

                              else
                              {
                                v1179 = v1687;
                              }

                              if (!BWCMSampleBufferCreateCopyWithNewPixelBuffer(v1179, v18, (v16 + 408), &v1735))
                              {
                                if (v219)
                                {
                                  v1180 = pixelBuffer;
                                }

                                else
                                {
                                  v1180 = v222;
                                }

                                v1181 = OUTLINED_FUNCTION_71_0(v1180);
                                OUTLINED_FUNCTION_129_0(v1181);
                                [(BWPreviewStitcherNode *)v16 _scaleFactorAppliedForPixelBuffer:v1700 usedSourceRect:v611 primaryCaptureRectAspectRatio:b metadata:v610, d, *&v209];
                                v1182 = OUTLINED_FUNCTION_0_29();
                                [(BWPreviewStitcherNode *)v16 _scaleFactorAppliedForPixelBuffer:v222 usedSourceRect:v1722 primaryCaptureRectAspectRatio:v1182 metadata:v1183, v1184, v1185, *&v209];
                                v1186 = *off_1E798B508;
                                [objc_msgSend(v1722 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
                                [objc_msgSend(v1700 objectForKeyedSubscript:{v1186), "floatValue"}];
                                OUTLINED_FUNCTION_18_7();
                                if (_ZF)
                                {
                                  OUTLINED_FUNCTION_18_7();
                                  if (_ZF && (OUTLINED_FUNCTION_18_7(), _ZF) && ([*(v16 + 952) isRamping] & 1) == 0)
                                  {
                                    OUTLINED_FUNCTION_18_7();
                                    if (_ZF)
                                    {
                                      v1189 = [*(v16 + 1536) isRamping] ^ 1;
                                    }

                                    else
                                    {
                                      v1189 = 1;
                                    }
                                  }

                                  else
                                  {
                                    v1189 = 0;
                                  }
                                }

                                else
                                {
                                  v1189 = 0;
                                }

                                [BWPreviewStitcherNode _callDelegateWithAppliedWiderCameraShift:v16 narrowerCameraShift:pixelBuffer widerCameraScaleFactor:v222 narrowerCameraScaleFactor:v1589 widerCameraPixelBuffer:v1650 narrowerCameraPixelBuffer:v1189 widerCameraNondisruptiveSwitchingZoomFactor:v1187 narrowerCameraNondisruptiveSwitchingZoomFactor:v1188 widerCameraPortType:v1606 narrowerCameraPortType:v1605 inSuperWideMacroMode:? widerCameraShiftAtBaseZoom:?];
                                OUTLINED_FUNCTION_71_0(v1735);
                                if (*&v1682 <= 1.0 && (v1833.origin.x = OUTLINED_FUNCTION_13_11(), CGRectIsNull(v1833)))
                                {
                                  [OUTLINED_FUNCTION_69() setObject:? forKeyedSubscript:?];
                                  v1190 = v1674;
                                }

                                else
                                {
                                  v1834.origin.x = OUTLINED_FUNCTION_13_11();
                                  if (CGRectIsNull(v1834))
                                  {
                                    v1191 = OUTLINED_FUNCTION_126();
                                    v1194 = FigCaptureMetadataUtilitiesScaleRect2D(v1191, v1192, v1645, v1674, v1193);
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_77_1();
                                    OUTLINED_FUNCTION_2_29(v16 + 416);
                                    CGAffineTransformInvert(propertyValueOut, &time);
                                    OUTLINED_FUNCTION_10_13();
                                    v1835.origin.x = OUTLINED_FUNCTION_126();
                                    v1835.size.width = v1645;
                                    v1835.size.height = v1674;
                                    CGRectApplyAffineTransform(v1835, v1196);
                                    OUTLINED_FUNCTION_8_3();
                                    v1197 = OUTLINED_FUNCTION_13_11();
                                    v1836.origin.x = FigCaptureMetadataUtilitiesRectDenormalizedToRect(v1197, v1198, v1199, v1200, v1201, v1202, v1203);
                                    v1204 = *(v16 + 432);
                                    *&time.a = *(v16 + 416);
                                    *&time.c = v1204;
                                    *&time.tx = *(v16 + 448);
                                    *&v1194 = CGRectApplyAffineTransform(v1836, &time);
                                  }

                                  OUTLINED_FUNCTION_90(v1194, v1195);
                                  psn_pixelBufferRect(v18);
                                  OUTLINED_FUNCTION_26_2();
                                  v1209 = FigCaptureMetadataUtilitiesRectNormalizedToRect(v1205, v1206, v1207, v1208, v1686, v1684, v1645);
                                  FigCaptureMetadataUtilitiesRectDenormalizedToRect(v1209, v1210, v1211, v1212, *&v1722, *&v1721, *&v1603);
                                  OUTLINED_FUNCTION_48();
                                  FigCaptureMetadataUtilitiesRectNormalizedToRect(v1213, v1214, v1215, v1216, v1217, v1218, v1219);
                                  FigCFDictionarySetCGRect();
                                  *&v209 = v1670;
                                  v1190 = *&v1682;
                                }

                                v1837.origin.x = v1704;
                                v1837.origin.y = v1714;
                                v1837.size.width = v1720;
                                v1837.size.height = rect2d;
                                if (!CGRectIsEmpty(v1837))
                                {
                                  v1220 = CVPixelBufferGetWidth(v18);
                                  CVPixelBufferGetHeight(v18);
                                  OUTLINED_FUNCTION_55_2();
                                  OUTLINED_FUNCTION_37_5();
                                  v1221 = v1220;
                                  v1190 = v1674;
                                  v1838.origin.x = FigCaptureMetadataUtilitiesClampRectToBoundingRect(v1222, v1223, v1224, v1225, v1226, v1227, v1221, v1228);
                                  v1229 = CGRectCreateDictionaryRepresentation(v1838);
                                  CMSetAttachment(v1735, @"OverCaptureStitchedValidBufferRect", v1229, 1u);
                                  if (v1229)
                                  {
                                    CFRelease(v1229);
                                  }
                                }

                                if (value)
                                {
                                  CMSetAttachment(v1735, @"CAContextFencePortSendRight", value, 1u);
                                }

                                if (v1563 >= 1)
                                {
                                  [MEMORY[0x1E696AD98] numberWithLongLong:v1563];
                                  v1230 = OUTLINED_FUNCTION_4();
                                  CMSetAttachment(v1230, @"CAContextFencePortGenerationID", v1231, 1u);
                                }

                                if (*&v209 != *(v16 + 888))
                                {
                                  *(v16 + 888) = LODWORD(v209);
                                }

                                OUTLINED_FUNCTION_18_7();
                                if (_ZF)
                                {
                                  propertyValueOut[0].a = 0.0;
                                  VTSessionCopyProperty(*(v16 + 400), *MEMORY[0x1E6983D88], *MEMORY[0x1E695E480], propertyValueOut);
                                  v1232 = [*&propertyValueOut[0].a copy];
                                  CMSetAttachment(v1735, *off_1E798A520, v1232, 1u);
                                }

                                if (pixelBuffer)
                                {
                                  [MEMORY[0x1E696AD98] numberWithBool:1];
                                  v1233 = OUTLINED_FUNCTION_4();
                                  CMSetAttachment(v1233, @"IsOverCaptureFrame", v1234, 1u);
                                }

                                if (*(v16 + 136))
                                {
                                  OUTLINED_FUNCTION_129_0([MEMORY[0x1E696AD98] numberWithInt:?]);
                                }

                                if (*(v16 + 140))
                                {
                                  v1235 = kBWNodeBufferAttachmentKey_MirroredHorizontal;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_18_7();
                                  if (!_ZF)
                                  {
                                    goto LABEL_780;
                                  }

                                  v1235 = kBWNodeBufferAttachmentKey_MirroredVertical;
                                }

                                CMSetAttachment(v18, *v1235, MEMORY[0x1E695E118], 1u);
LABEL_780:
                                [(BWPreviewStitcherNode *)v16 _updateUprightExifOrientationOnSampleBufferIfNeeded:v1735];
                                OUTLINED_FUNCTION_77_1();
                                OUTLINED_FUNCTION_2_29(v16 + 416);
                                CGAffineTransformInvert(propertyValueOut, &time);
                                OUTLINED_FUNCTION_10_13();
                                v1839.origin.x = v1686;
                                v1839.origin.y = v1684;
                                v1839.size.width = v1645;
                                v1839.size.height = v1190;
                                CGRectApplyAffineTransform(v1839, v1236);
                                OUTLINED_FUNCTION_2_3();
                                OUTLINED_FUNCTION_10_13();
                                v1840.origin.x = v1704;
                                v1840.origin.y = v1714;
                                v1840.size.width = v1720;
                                v1840.size.height = rect2d;
                                CGRectApplyAffineTransform(v1840, v1237);
                                OUTLINED_FUNCTION_8_3();
                                v1238 = OUTLINED_FUNCTION_3();
                                v1245 = FigCaptureMetadataUtilitiesRectNormalizedToRect(v1238, v1239, v1240, v1241, v1242, v1243, v1244);
                                if (v219)
                                {
                                  FigCaptureMetadataUtilitiesRectDenormalizedToRect(v1245, v1246, v1247, v1248, *&v1613, b, v610);
                                  OUTLINED_FUNCTION_2_3();
                                }

                                else
                                {
                                  if (v507)
                                  {
                                    OUTLINED_FUNCTION_25_3();
                                    FigCaptureMetadataUtilitiesRectDenormalizedToRect(v1249, v1250, v1251, v1252, v1253, v1254, v1255);
                                    OUTLINED_FUNCTION_2_3();
                                  }

                                  pixelBuffer = v222;
                                }

                                if (v1565)
                                {
                                  CVPixelBufferGetWidth(pixelBuffer);
                                  CVPixelBufferGetHeight(pixelBuffer);
                                  v1256 = OUTLINED_FUNCTION_3();
                                  FigCaptureMetadataUtilitiesNormalizeCropRect(v1256, v1257, v1258, v1259);
                                  *v1565 = v1260;
                                  v1565[1] = v1261;
                                  v1565[2] = v1262;
                                  v1565[3] = v1263;
                                }

                                LOBYTE(time.a) = 0;
                                ptn_rotationDegreesAndMirroringFromLiveConfiguration(*(v16 + 136), *(v16 + 140), *(v16 + 141), &time);
                                OUTLINED_FUNCTION_3();
                                OUTLINED_FUNCTION_105();
                                BWUpdateCameraIntrinsicsMatrixOnSampleBuffer(v1264, v1265, v1266, v1267, v1268, v1269, v1270, v1271, v1272, v1273, v1274, v1674);
                                v1275 = OUTLINED_FUNCTION_3();
                                FigCaptureMetadataUtilitiesScaleRect2D(v1275, v1276, v1277, v1278, v1279);
                                OUTLINED_FUNCTION_2_3();
                                CVPixelBufferGetWidth(v222);
                                CVPixelBufferGetHeight(v222);
                                OUTLINED_FUNCTION_3();
                                OUTLINED_FUNCTION_105();
                                BWUpdateTrackedFacesMetadataOnSampleBuffer(v1280, v1284, v1285, v1286, v1287, v1288, v1289, v1290, v1674, v1281, v1282, v1283);
                                if (v1564)
                                {
                                  *v1564 = v1619;
                                  v1564[1] = v1618;
                                }

                                OUTLINED_FUNCTION_18_7();
                                v925 = v1667;
                                if (_ZF && v1735)
                                {
                                  v1291 = CVBufferCopyAttachment(v18, *MEMORY[0x1E6965D88], 0);
                                  if (v1291)
                                  {
                                    v1292 = CFAutorelease(v1291);
                                  }

                                  else
                                  {
                                    v1292 = 0;
                                  }

                                  v1293 = CVBufferCopyAttachment(v18, *MEMORY[0x1E6965F30], 0);
                                  if (v1293)
                                  {
                                    v1293 = CFAutorelease(v1293);
                                  }

                                  if (([v1293 isEqualToString:*MEMORY[0x1E6965F48]] & 1) == 0 && ((objc_msgSend(v1292, "isEqualToString:", *MEMORY[0x1E6965DD0]) & 1) != 0 || objc_msgSend(v1292, "isEqualToString:", *MEMORY[0x1E6965DB8])))
                                  {
                                    *lhs = 0;
                                    LOBYTE(rhs.value) = 0;
                                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                    v1295 = *lhs;
                                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, rhs.value))
                                    {
                                      v1296 = v1295;
                                    }

                                    else
                                    {
                                      v1296 = v1295 & 0xFFFFFFFE;
                                    }

                                    if (v1296)
                                    {
                                      LODWORD(time.a) = 136315138;
                                      *(&time.a + 4) = "[BWPreviewStitcherNode _newStitchedSampleBufferFromWiderCamera:narrowerCamera:widerCameraRegionsShifts:teleShift:primaryCaptureRectOut:primaryCaptureRectBeforeCroppingOut:centerWiderCameraShiftOut:currentFrameRate:inputCropRectOut:]";
                                      _os_log_send_and_compose_impl();
                                    }

                                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                                    if (v1735)
                                    {
                                      CFRelease(v1735);
                                      v1735 = 0;
                                    }
                                  }
                                }

                                goto LABEL_808;
                              }

                              goto LABEL_910;
                            }

                            OUTLINED_FUNCTION_18_7();
                            if (_ZF && (*(v16 + 1000) & 1) != 0)
                            {
                              v828 = 1;
                            }

                            else
                            {
                              v828 = 0;
                              v1548 = v1728.origin.x;
                              v1551 = v1728.origin.y;
                              v1555 = v1728.size.height;
                              v1562 = v1728.size.width;
                            }

                            v829 = OUTLINED_FUNCTION_0_29();
                            v834 = OUTLINED_FUNCTION_134(v829, v830, v831, v832);
                            v836 = v835;
                            v838 = v837;
                            if (!LODWORD(v1667))
                            {
                              v839 = OUTLINED_FUNCTION_22_3();
                              v834 = acpr_conformRectForMSR420vf(v839, v840, v841, v842);
                              v836 = v843;
                              v838 = v844;
                            }

                            v1658 = v833;
                            *&v1529 = v607;
                            OUTLINED_FUNCTION_18_7();
                            v845 = !_ZF || v458 <= 1.0;
                            v846 = 0;
                            if (!v845)
                            {
                              v609 = OUTLINED_FUNCTION_57_3();
                              v388 = v847;
                              v849 = v848;
                              v851 = v850;
                              v852 = OUTLINED_FUNCTION_0_29();
                              v1809.origin.x = FigCaptureMetadataUtilitiesRectNormalizedToRect(v852, v853, v854, v855, v834, v836, v838);
                              v1857.origin.x = v609;
                              v1857.origin.y = v388;
                              v1857.size.width = v849;
                              v1857.size.height = v851;
                              v856 = CGRectContainsRect(v1809, v1857);
                              if (!v856 || (OUTLINED_FUNCTION_25_3(), !CGRectContainsRect(v1810, v1858)))
                              {
                                v846 = 1;
                              }
                            }

                            OUTLINED_FUNCTION_77_1();
                            OUTLINED_FUNCTION_2_29(v16 + 416);
                            CGAffineTransformInvert(propertyValueOut, &time);
                            OUTLINED_FUNCTION_10_13();
                            v1811.origin.x = OUTLINED_FUNCTION_126();
                            v1811.size.width = v1645;
                            v1811.size.height = v1674;
                            CGRectApplyAffineTransform(v1811, v857);
                            OUTLINED_FUNCTION_118();
                            if (v846)
                            {
                              v858 = OUTLINED_FUNCTION_134(v1728.origin.x, v1728.origin.y, v1728.size.width, v1728.size.height);
                              *&r2 = acpr_conformRectForMSR420vf(v858, v859, v860, v861);
                              v1501 = v862;
                              v1656 = v863;
                              *&r2_16 = v864;
                              v865 = OUTLINED_FUNCTION_134(v1548, v1551, v1562, v1555);
                              v1548 = acpr_conformRectForMSR420vf(v865, v866, v867, v868);
                              v1551 = v869;
                              v1555 = v871;
                              v1562 = v870;
                              v872 = OUTLINED_FUNCTION_109();
                              v876 = OUTLINED_FUNCTION_134(v872, v873, v874, v875);
                              acpr_conformRectForMSR420vf(v876, v877, v878, v879);
                              OUTLINED_FUNCTION_118();
                            }

                            else
                            {
                              *&r2 = v1728.origin.x;
                              v1501 = v1728.origin.y;
                              v1656 = v1728.size.width;
                              *&r2_16 = v1728.size.height;
                              v834 = v1730.f64[0];
                              v838 = *v1731;
                              v1658 = *&v1731[1];
                            }

                            v880 = (*(v16 + 331) & 1) != 0 || *(v16 + 1024) || *(v16 + 1008) != 0;
                            if (*(v16 + 952))
                            {
                              if (pixelBuffer)
                              {
                                goto LABEL_627;
                              }
                            }

                            else
                            {
                              if (pixelBuffer)
                              {
                                v881 = v880;
                              }

                              else
                              {
                                v881 = 0;
                              }

                              if (*(v16 + 1150) && v881)
                              {
LABEL_627:
                                v911 = v880 & *(v16 + 1150);
                                if (*(v16 + 1000))
                                {
                                  v912 = v911;
                                }

                                else
                                {
                                  v912 = *(v16 + 1150);
                                }

                                v913 = OUTLINED_FUNCTION_109();
                                v1816.origin.x = psn_smallestBoundingRectAlignedToMultipleOf(1, 1, v913, v914, v915, v916);
                                *&v1860.origin.x = r2;
                                v1860.origin.y = v1501;
                                v1860.size.width = v1656;
                                *&v1860.size.height = r2_16;
                                v1817 = CGRectUnion(v1816, v1860);
                                v917 = v1817.size.width;
                                v918 = v1817.size.height;
                                v1594 = *&v1543;
                                v1577 = v1649;
                                v919 = v1562;
                                v1621 = v1555;
                                LODWORD(v1535) = v912;
                                if (v912 == 1)
                                {
                                  v1594 = *&r2 - v1817.origin.x;
                                  v1577 = v1501 - v1817.origin.y;
                                  v919 = v1817.size.width;
                                  v1621 = v1817.size.height;
                                }

                                v1518 = v1817.origin.y;
                                v1509 = v1817.origin.x;
                                [(BWPreviewStitcherNode *)v16 _waitForCIPreheatingToFinish];
                                *&v608 = COERCE_DOUBLE([(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer]);
                                v920 = [(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer];
                                v224 = v920;
                                v1667 = *&v608;
                                if (*&v608 == 0.0)
                                {
                                  fig_log_get_emitter();
                                  OUTLINED_FUNCTION_1_35();
                                  FigDebugAssert3();
                                  v925 = 0.0;
                                  v18 = v1609;
                                  goto LABEL_808;
                                }

                                if (!v920 || (*&v1491 = v918, v1496 = v917, v1698 = v919, OUTLINED_FUNCTION_101(), OUTLINED_FUNCTION_22_3(), v921 = v1656, v922 = *&r2_16, *&v608 = COERCE_DOUBLE(&OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled), VTPixelRotationSessionRotateSubImage()))
                                {
                                  fig_log_get_emitter();
                                  OUTLINED_FUNCTION_1_35();
                                  FigDebugAssert3();
                                  *&v608 = 0.0;
                                  v18 = v1609;
                                  goto LABEL_911;
                                }

                                v1818.origin.x = v1548;
                                v1818.origin.y = v1551;
                                v1818.size.height = v1555;
                                v1818.size.width = v1562;
                                *&v1861.origin.x = r2;
                                v1861.origin.y = v1501;
                                v1861.size.width = v1656;
                                *&v1861.size.height = r2_16;
                                if (CGRectEqualToRect(v1818, v1861) || (v1819.origin.x = v1548, v1819.origin.y = v1551, v1819.size.height = v1555, v1819.size.width = v1562, *&v1862.origin.x = r2, v1862.origin.y = v1501, v1862.size.width = v1656, *&v1862.size.height = r2_16, !CGRectContainsRect(v1819, v1862)))
                                {
                                  v923 = v1619 - *v1520;
                                  v924 = v1618 - *&v1513;
                                }

                                else
                                {
                                  v1607 = v1501 - v1551;
                                  v1608 = *&r2 - v1548;
                                  v923 = v1619;
                                  v924 = v1618;
                                }

                                v957 = *&v1529 * (*&v1545 / v1604);
                                psn_pixelBufferRect(pixelBuffer);
                                v958 = OUTLINED_FUNCTION_54_3();
                                v967 = psn_widerCameraBoundingRect(v958, v959, v960, v961, v962, v963, v964, v965, v966);
                                OUTLINED_FUNCTION_42_3(v967, v968, v969, v970);
                                if (v1535)
                                {
                                  v1821.origin.x = v1548;
                                  v1821.origin.y = v1551;
                                  v1663 = *&v1529 * (*&v1545 / v1604);
                                  v1821.size.width = v1562;
                                  v1821.size.height = v1555;
                                  MidX = CGRectGetMidX(v1821);
                                  v1822.origin.x = v1509;
                                  v1822.origin.y = v1518;
                                  v1822.size.width = v1496;
                                  v1822.size.height = v918;
                                  v975 = MidX - CGRectGetMidX(v1822);
                                  v976 = v957;
                                  *&r2 = v975 / v957;
                                  v921 = v1656;
                                  v922 = *&r2_16;
                                  OUTLINED_FUNCTION_92_0();
                                  v977 = CGRectGetMidY(v1823);
                                  v1824.origin.x = v1509;
                                  v1824.origin.y = v1518;
                                  v1824.size.width = v1496;
                                  v1824.size.height = v918;
                                  v978 = v977 - CGRectGetMidY(v1824);
                                  v957 = v1663;
                                  v923 = v923 + *&r2;
                                  v924 = v924 + v978 / v976;
                                }

                                v979 = v1698;
                                [(BWPreviewStitcherNode *)v16 _transferPixelBuffer:v224 rect:0 intoPixelBuffer:&time rect:v971 isFinalOutput:v972 withInputShift:v973 scale:*&v923 inputSourceRectOut:*&v924, SLODWORD(v957)];
                                if (v1535)
                                {
                                  OUTLINED_FUNCTION_76_0();
                                  v1621 = v980;
                                }

                                a = time.a;
                                if (v846)
                                {
                                  OUTLINED_FUNCTION_75_0();
                                  a = FigCaptureMetadataUtilitiesScaleRect2D(a, v982, v983, v984, *&v1682);
                                  b = v985;
                                  c = v986;
                                  d = v987;
                                }

                                else
                                {
                                  b = time.b;
                                  c = time.c;
                                  d = time.d;
                                }

                                v988 = *(v16 + 1808);
                                v222 = v1721;
                                if (v988)
                                {

                                  *(v16 + 1808) = 0;
                                  v989 = *(v16 + 1784);
                                  if (v989)
                                  {
                                    CFRelease(v989);
                                    *(v16 + 1784) = 0;
                                  }
                                }

                                if (*(v16 + 952) || (OUTLINED_FUNCTION_18_7(), _ZF))
                                {

                                  *(v16 + 1024) = 0;
                                }

                                if (!v1535)
                                {
                                  goto LABEL_839;
                                }

                                v990 = *(v16 + 1008);
                                *&v608 = COERCE_DOUBLE(&OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled);
                                if (v990)
                                {
                                  if (*(v16 + 1016) != v1675)
                                  {
LABEL_674:

                                    *(v16 + 1008) = 0;
                                    goto LABEL_833;
                                  }

                                  if (([OUTLINED_FUNCTION_70_0() isRamping] & 1) != 0 && (objc_msgSend(OUTLINED_FUNCTION_70_0(), "isRampingUp") & 1) == 0)
                                  {
                                    v990 = *(v16 + 1008);
                                    goto LABEL_674;
                                  }
                                }

LABEL_833:
                                if (!*(v16 + 1008))
                                {
                                  if ([*(v16 + 952) isRampingUp])
                                  {
                                    OUTLINED_FUNCTION_18_7();
                                    if (_ZF)
                                    {
                                      v1316 = v921 / v979;
                                      if (*(v16 + 1172) < v1316)
                                      {
                                        v1317 = [[BWRamp alloc] initWithName:@"NarrowerCameraEdgeExpansionRamp"];
                                        *(v16 + 1008) = v1317;
                                        LODWORD(v1318) = 1.0;
                                        [(BWRamp *)v1317 startRampFrom:*(v16 + 1176) to:0 iterations:0.0 shape:v1318];
                                        *(v16 + 1016) = v1675;
                                      }
                                    }
                                  }
                                }

LABEL_839:
                                *&v1614 = a;
                                [OUTLINED_FUNCTION_70_0() updateRampForNextIteration];
                                v1319 = OUTLINED_FUNCTION_70_0();
                                if (v1319)
                                {
                                  v1321 = [v1319 isRampingUp];
                                  [OUTLINED_FUNCTION_70_0() currentValue];
                                  if (v1321)
                                  {
                                    v1320 = v1322;
                                  }

                                  else
                                  {
                                    v1320 = 1.0 - v1322;
                                  }
                                }

                                else
                                {
                                  v1320 = 1.0;
                                  if (v1535 && ((*(v16 + 331) & 1) != 0 || *(v16 + 1024)))
                                  {
                                    OUTLINED_FUNCTION_117();
                                    [objc_msgSend(*(v16 + v1323) "firstObject")];
                                    v1321 = 0;
                                    v1325 = v1671;
                                    if (v1324 < v1671)
                                    {
                                      v1325 = v1324;
                                    }

                                    if (v1325 < *(&v1535 + 1))
                                    {
                                      v1325 = *(&v1535 + 1);
                                    }

                                    v1320 = 1.0 - (((v1325 - *(&v1535 + 1)) / (v1324 - *(&v1535 + 1))) + 0.0);
                                  }

                                  else
                                  {
                                    v1321 = 1;
                                  }
                                }

                                [(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer];
                                OUTLINED_FUNCTION_130();
                                *(v16 + *(v1535 + 0x6F4)) = 0;
                                v1480 = *(v16 + 1185);
                                v1478 = *(v16 + 1032);
                                v1466 = *(v16 + 1008);
                                v1472 = *(v16 + 1024);
                                v1326 = OUTLINED_FUNCTION_36_4();
                                [(BWPreviewStitcherNode *)v1327 _renderCameraTransitionRampToPixelBuffer:v1328 bounds:v224 withWiderCameraPixelBuffer:*&v1667 narrowerCameraPixelBuffer:v1321 zoomingIn:v1329 progress:v1330 narrowerCameraBounds:v1535 narrowerCameraShift:v1326 featherEdges:v1331 rampCameraTransition:v979 renderEnhancedFeathering:v1621 narrowerCameraEdgeExpansionRamp:v1320 qsubToQsumEdgeOpacityRamp:v1332 qsubToQsumEdgeOpacityRampFromProgress:v1333 renderBrightnessCompensation:v1334, v1594, v1577, v921, v922, v1608, v1607, v1466, v1472, v1478, v1480];
                                *(v16 + 1064) = 1;
                                v1335 = OUTLINED_FUNCTION_70_0();
                                if (v1335)
                                {
                                  if (([v1335 isRamping] & 1) == 0)
                                  {
                                    [*(v16 + 952) currentValue];
                                    OUTLINED_FUNCTION_35_3();
                                    if (_ZF)
                                    {
                                      if (!v828 || ![*(v16 + 1536) isRamping] || (OUTLINED_FUNCTION_18_7(), _ZF))
                                      {

                                        *(v16 + 952) = 0;
                                        *(v16 + 1000) = 0;
                                      }
                                    }
                                  }
                                }

                                v1336 = *(v16 + 1008);
                                v18 = v1609;
                                if (v1336)
                                {
                                  if ([v1336 isRamping])
                                  {
                                    [*(v16 + 1008) updateRampForNextIteration];
                                  }

                                  else if (!*(v16 + 952))
                                  {

                                    *(v16 + 1008) = 0;
                                  }
                                }

                                v1337 = *(v16 + 1024);
                                if (v1337)
                                {
                                  v1338 = [v1337 isRamping];
                                  v1339 = *(v16 + 1024);
                                  if (v1338)
                                  {
                                    [v1339 updateRampForNextIteration];
                                  }

                                  else
                                  {

                                    *(v16 + 1024) = 0;
                                  }
                                }

                                OUTLINED_FUNCTION_18_7();
                                if (_ZF)
                                {
                                  OUTLINED_FUNCTION_18_7();
                                  if (_ZF)
                                  {
                                    v1340 = [[BWRamp alloc] initWithName:@"QsubToQsumEdgeOpacityRamp"];
                                    *(v16 + 1024) = v1340;
                                    LODWORD(v1341) = 1.0;
                                    [(BWRamp *)v1340 startRampFrom:*(v16 + 1180) to:2 iterations:0.0 shape:v1341];
                                    *(v16 + 1032) = v1320;
                                    [*(v16 + 1024) updateRampForNextIteration];
                                  }
                                }

                                OUTLINED_FUNCTION_2_29(v16 + 416);
                                if (v1535)
                                {
                                  v1342 = v1509;
                                  v1343 = v1518;
                                  v1345 = *&v1491;
                                  v1344 = v1496;
                                }

                                else
                                {
                                  v1342 = v1548;
                                  v1343 = v1551;
                                  v1345 = v1555;
                                  v1344 = v1562;
                                }

                                v1843 = CGRectApplyAffineTransform(*&v1342, &time);
                                v1346 = v1843.size.width;
                                v1347 = v1843.size.height;
                                LODWORD(v219) = v1651;
                                OUTLINED_FUNCTION_36_4();
                                v1679 = v1348;
                                v1350 = v1349;
                                if (VTPixelRotationSessionRotateSubImage())
                                {
LABEL_910:
                                  fig_log_get_emitter();
                                  OUTLINED_FUNCTION_1_35();
                                  FigDebugAssert3();
LABEL_911:
                                  v925 = v1667;
                                  goto LABEL_808;
                                }

                                OUTLINED_FUNCTION_43_3();
                                OUTLINED_FUNCTION_82_0();
                                v610 = c;
                                if (OUTLINED_FUNCTION_17_6(v1359, v1360, v1361, v1351, v1352, v1353, v1354, v1355, v1356, v1357, v1358, v1423, v1434, v1446, v1451, v1456, v1461, v1467, v1473, v1479, v1481, v1484, v1491, *&v1496, *&v1501, v1504, *&v1509, v1513, *&v1518, v1520[0], v1520[1], v1525, v1529, *&v1532, v1535, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1540, v1543))
                                {
                                  rect2d = v1347;
                                  v1720 = v1346;
                                  v1714 = v1350;
                                  v1704 = *&v1679;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_40_4();
                                  v1368 = OUTLINED_FUNCTION_133_1(v1362, v1363, v1364, v1365, v1366, v1367);
                                  OUTLINED_FUNCTION_6_20(v1368, v1369, v1370, v1371);
                                }

                                v904 = &unk_1F224A7D0;
                                v620 = v1671;
                                v611 = *&v1614;
                                goto LABEL_883;
                              }
                            }

                            if (*(v16 + 1808))
                            {
                              [(BWPreviewStitcherNode *)v16 _waitForCIPreheatingToFinish];
                              v925 = COERCE_DOUBLE([(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer]);
                              v926 = [(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer];
                              v224 = v926;
                              v18 = v1609;
                              if (v925 == 0.0 || !v926 || (OUTLINED_FUNCTION_101(), OUTLINED_FUNCTION_22_3(), VTPixelRotationSessionRotateSubImage()))
                              {
                                fig_log_get_emitter();
                                OUTLINED_FUNCTION_1_35();
                                FigDebugAssert3();
                                *&v608 = 0.0;
                                goto LABEL_808;
                              }

                              v1667 = v925;
                              *lhs = 0;
                              BWCMSampleBufferCreateCopyIncludingMetadata(*(v16 + 1784), lhs);
                              rhs.value = 0;
                              cf = 0;
                              BWOverCaptureSampleBufferUnpackAndRetain(*lhs, 1, &rhs, &cf, 0, 0);
                              if (*lhs)
                              {
                                CFRelease(*lhs);
                              }

                              v927 = cf;
                              [CMGetAttachment(rhs.value v1572];
                              v928 = OUTLINED_FUNCTION_8();
                              v1622 = v929;
                              if ([v928 isEqual:?])
                              {
                                v930 = rhs.value;
                              }

                              else
                              {
                                v930 = v927;
                              }

                              v931 = CMSampleBufferGetImageBuffer(v930);
                              v932 = *off_1E798B7B0;
                              v933 = [v1722 objectForKeyedSubscript:*off_1E798B7B0];
                              if (v933)
                              {
                                [v933 floatValue];
                              }

                              v1006 = *off_1E798B508;
                              v1007 = [v1722 objectForKeyedSubscript:*off_1E798B508];
                              if (v1007)
                              {
                                [v1007 floatValue];
                              }

                              *&v608 = COERCE_DOUBLE(CMGetAttachment(v930, v1572, 0));
                              v1008 = [v608 objectForKeyedSubscript:v932];
                              if (v1008)
                              {
                                [v1008 floatValue];
                              }

                              v1009 = [v608 objectForKeyedSubscript:v1006];
                              v1010 = v1009;
                              if (v1009)
                              {
                                [v1009 floatValue];
                              }

                              psn_pixelBufferRect(v1721);
                              v1011 = OUTLINED_FUNCTION_22_3();
                              FigCaptureMetadataUtilitiesScaleRect2D(v1011, v1012, v1013, v1658, v1014);
                              OUTLINED_FUNCTION_21_5();
                              v1015 = psn_pixelBufferRect(v931);
                              v1676 = v1016;
                              v1018 = v1017;
                              v1020 = v1019;
                              OUTLINED_FUNCTION_32_2();
                              FigCaptureMetadataUtilitiesScaleRect2D(v1021, v1022, v1023, v1024, v1025);
                              v1027 = v1026;
                              v1028 = v1015 + OUTLINED_FUNCTION_100_0(v1018 - v1026);
                              v1031 = *&v1676 + (v1020 - v1029) * v1030;
                              [v1010 floatValue];
                              OUTLINED_FUNCTION_35_3();
                              if (_NF ^ _VF | _ZF)
                              {
                                v18 = v1609;
                                v1039 = *&v1543;
                                v1032 = v1649;
                                v1033 = *&r2_16;
                              }

                              else
                              {
                                v18 = v1609;
                                v1032 = v1649;
                                v1033 = *&r2_16;
                                if ([v1622 isEqualToString:*off_1E798A0D0])
                                {
                                  v1034 = FigCaptureMetadataUtilitiesNormalizedSensorCenterOffsetInValidBufferRect(v930);
                                  v1036 = v1035;
                                  v1037 = psn_pixelBufferDimensions(v931);
                                  v1028 = v1028 + FigCaptureMetadataUtilitiesDenormalizePoint(v1034, v1036, v1037);
                                  v1031 = v1031 + v1038;
                                }

                                v1039 = *&v1543;
                              }

                              v222 = v1721;
                              if (v1028 < 0.0 || v1031 < 0.0)
                              {
                                v1040 = 1.0;
                                if (v1028 < 0.0)
                                {
                                  v1040 = (v1027 + v1028 * 2.0) / v1027;
                                }

                                v1041 = OUTLINED_FUNCTION_114();
                                v1028 = FigCaptureMetadataUtilitiesScaleRect2D(v1041, v1042, v1043, v1044, v1040);
                                v1031 = v1045;
                                v1027 = v1046;
                                v1677 = FigCaptureMetadataUtilitiesScaleRect2D(*&v1543, v1032, v1656, v1033, v1040);
                                v1664 = v1047;
                                v1659 = v1048;
                              }

                              else
                              {
                                v1677 = v1039;
                                v1664 = *&v1032;
                                v1659 = v1656;
                              }

                              memset(&time, 0, 32);
                              v1049 = psn_pixelBufferRect(v931);
                              OUTLINED_FUNCTION_42_3(v1049, v1050, v1051, v1052);
                              CGRectMakeWithDictionaryRepresentation([v608 objectForKeyedSubscript:v1516], &time);
                              v1053 = OUTLINED_FUNCTION_114();
                              v1061 = psn_rectBoundedByRect(v1053, v1054, v1055, v1056, v1057, v1058, v1059, v1060);
                              v1065 = FigCaptureMetadataUtilitiesRectNormalizedToRect(v1061, v1062, v1063, v1064, v1028, v1031, v1027);
                              FigCaptureMetadataUtilitiesRectDenormalizedToRect(v1065, v1066, v1067, v1068, v1677, *&v1664, v1659);
                              OUTLINED_FUNCTION_8_3();
                              OUTLINED_FUNCTION_101();
                              v1069 = VTPixelRotationSessionRotateSubImage();
                              if (rhs.value)
                              {
                                CFRelease(rhs.value);
                              }

                              LODWORD(v219) = v1651;
                              v609 = *&v1543;
                              if (cf)
                              {
                                CFRelease(cf);
                              }

                              if (v1069)
                              {
                                fig_log_get_emitter();
                                OUTLINED_FUNCTION_1_35();
                                FigDebugAssert3();
                                *&v608 = 0.0;
                                goto LABEL_911;
                              }

                              [OUTLINED_FUNCTION_59_1() currentValue];
                              v1071 = v1070;
                              [OUTLINED_FUNCTION_59_1() updateRampForNextIteration];
                              if (llroundf(*&v1535) <= 59 && (*(v16 + 1225) & 1) == 0 && v1071 != 1.0)
                              {
                                [OUTLINED_FUNCTION_59_1() updateRampForNextIteration];
                              }

                              [OUTLINED_FUNCTION_59_1() currentValue];
                              [(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer];
                              OUTLINED_FUNCTION_130();
                              *(v16 + *(v1069 + 1780)) = 0;
                              v611 = v1649;
                              OUTLINED_FUNCTION_37_5();
                              OUTLINED_FUNCTION_112_1();
                              [(BWPreviewStitcherNode *)v1072 _renderCameraTransitionRampToPixelBuffer:v1073 bounds:v1074 withWiderCameraPixelBuffer:v1075 narrowerCameraPixelBuffer:v1076 zoomingIn:v1077 progress:v1078 narrowerCameraBounds:v1079 narrowerCameraShift:v1080 featherEdges:v1081 rampCameraTransition:v1082 renderEnhancedFeathering:v1083 narrowerCameraEdgeExpansionRamp:v1084 qsubToQsumEdgeOpacityRamp:v1085 qsubToQsumEdgeOpacityRampFromProgress:v1086 renderBrightnessCompensation:v1087, *&v1543, v1649, v1656, *&r2_16, v1608, v1607, 0, 0, 0.0, 0];
                              *(v16 + 1064) = 1;
                              *&v1088 = OUTLINED_FUNCTION_2_29(v16 + 416).n128_u64[0];
                              OUTLINED_FUNCTION_74(v1088, v1089, v1090, v1091, v1092, v1093, v1094, v1095, v1419, v1429, v1441, v1450, v1455, v1460, v1465, v1471, v1477, *&v1481, *&v1484, *&v1488, *&v1493, v1501, *&v1504, *&v1507, *&v1513, *&v1516, *v1520, *&v1520[1], *&v1525, *&v1529, v1532, *&v1535, *&r2);
                              OUTLINED_FUNCTION_37_5();
                              CGRectApplyAffineTransform(v1825, v1096);
                              OUTLINED_FUNCTION_8_3();
                              OUTLINED_FUNCTION_37_5();
                              v1678 = v1097;
                              v1665 = v1098;
                              v1660 = v1099;
                              v1101 = v1100;
                              if (VTPixelRotationSessionRotateSubImage())
                              {
                                goto LABEL_910;
                              }

                              v610 = v1704;
                              OUTLINED_FUNCTION_82_0();
                              OUTLINED_FUNCTION_40_4();
                              v1863.size.width = dicta;
                              *&v1863.size.height = v1626;
                              if (CGRectEqualToRect(v1826, v1863))
                              {
                                rect2d = v1101;
                                v1720 = v1660;
                                OUTLINED_FUNCTION_72_0(*&v1665);
                              }

                              else
                              {
                                v1102 = OUTLINED_FUNCTION_133_1(*&v1678, *&v1665, v1660, v1101, v1704, v1714);
                                OUTLINED_FUNCTION_6_20(v1102, v1103, v1104, v1105);
                              }

                              *&v209 = v1670;
                              v620 = v1671;
                              v1106 = OUTLINED_FUNCTION_108_0();
                              BWPropagatePixelBufferDolbyVisionRPUData(v1106, v1107);
                              v1108 = OUTLINED_FUNCTION_108_0();
                              BWPropagatePixelBufferAmbientViewingEnvironment(v1108, v1109);
                              v1110 = MEMORY[0x1E696AD98];
                              [OUTLINED_FUNCTION_59_1() currentValue];
                              *&v1112 = 1.0 - v1111;
                              v904 = [v1110 numberWithFloat:v1112];
                              [OUTLINED_FUNCTION_59_1() isRamping];
                              OUTLINED_FUNCTION_49_2();
                              if ((v1113 & 1) == 0)
                              {
                                [OUTLINED_FUNCTION_59_1() currentValue];
                                if (v1114 == 0.0)
                                {

                                  *(v16 + 1808) = 0;
                                  v1115 = *(v16 + 1784);
                                  if (v1115)
                                  {
                                    CFRelease(v1115);
                                    *(v16 + 1784) = 0;
                                  }
                                }
                              }

                              goto LABEL_614;
                            }

                            v18 = v1609;
                            v222 = v1721;
                            v620 = v1671;
                            if (*(v16 + 1816))
                            {
                              [(BWPreviewStitcherNode *)v16 _waitForCIPreheatingToFinish];
                              [*(v16 + 1816) updateRampForNextIteration];
                              [*(v16 + 1816) currentValue];
                              LODWORD(v388) = v934;
                              *&v935 = COERCE_DOUBLE([(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer]);
                              *&v608 = COERCE_DOUBLE([(int32x2_t *)[(BWPreviewStitcherNode *)v16 _cameraTransitionPool] newPixelBuffer]);

                              *(v16 + 968) = 0;
                              OUTLINED_FUNCTION_101();
                              OUTLINED_FUNCTION_55_2();
                              OUTLINED_FUNCTION_22_3();
                              if (VTPixelRotationSessionRotateSubImage())
                              {
                                fig_log_get_emitter();
                                OUTLINED_FUNCTION_1_35();
                                FigDebugAssert3();
                                v224 = 0;
                                v925 = *&v935;
                                goto LABEL_808;
                              }

                              v1667 = *&v935;
                              [(BWPreviewStitcherNode *)v16 _renderHDRPixelBufferToSDR:v935 toOutputPixelBuffer:v608 progress:*&v388];
                              *&v936 = OUTLINED_FUNCTION_2_29(v16 + 416).n128_u64[0];
                              OUTLINED_FUNCTION_74(v936, v937, v938, v939, v940, v941, v942, v943, *&v1413, *&v1424, *&v1435, *&v1447, *&v1452, *&v1457, *&v1462, *&v1468, *&v1474, *&v1481, *&v1484, *&v1488, *&v1493, v1501, *&v1504, *&v1507, *&v1513, *&v1516, *v1520, *&v1520[1], *&v1525, *&v1529, v1532, *&v1535, *&r2);
                              OUTLINED_FUNCTION_92_0();
                              CGRectApplyAffineTransform(v1820, v944);
                              OUTLINED_FUNCTION_21_5();
                              OUTLINED_FUNCTION_58_4();
                              OUTLINED_FUNCTION_92_0();
                              v1662 = v945;
                              OUTLINED_FUNCTION_121();
                              LODWORD(v219) = v1651;
                              if (VTPixelRotationSessionRotateSubImage())
                              {
                                fig_log_get_emitter();
                                OUTLINED_FUNCTION_1_35();
                                FigDebugAssert3();
                                v224 = 0;
                                goto LABEL_911;
                              }

                              OUTLINED_FUNCTION_43_3();
                              OUTLINED_FUNCTION_82_0();
                              if (OUTLINED_FUNCTION_17_6(v954, v955, v956, v946, v947, v948, v949, v950, v951, v952, v953, v1418, v1428, v1440, v1449, v1454, v1459, v1464, v1470, v1476, v1483, v1487, v1492, v1497, v1503, v1506, v1510, v1515, v1519, v1522, v1524, v1527, v1531, v1534, v1537, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1540, v1543))
                              {
                                rect2d = *&v1682;
                                v1720 = v834;
                                v1714 = v388;
                                v1704 = *&v1662;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_32_2();
                                OUTLINED_FUNCTION_40_4();
                                v997 = OUTLINED_FUNCTION_133_1(v991, v992, v993, v994, v995, v996);
                                OUTLINED_FUNCTION_6_20(v997, v998, v999, v1000);
                              }

                              v1001 = OUTLINED_FUNCTION_108_0();
                              BWPropagatePixelBufferDolbyVisionRPUData(v1001, v1002);
                              v1003 = OUTLINED_FUNCTION_108_0();
                              BWPropagatePixelBufferAmbientViewingEnvironment(v1003, v1004);
                              LODWORD(v1005) = LODWORD(v388);
                              v904 = [MEMORY[0x1E696AD98] numberWithFloat:v1005];
                              v224 = 0;
                              v610 = v1697;
LABEL_883:
                              v609 = *&v1544;
                              *&v209 = v1670;
                              goto LABEL_614;
                            }

                            OUTLINED_FUNCTION_18_7();
                            LODWORD(v219) = v1651;
                            v611 = *&v1529;
                            if (!_ZF)
                            {
                              goto LABEL_608;
                            }

                            if ([CMGetAttachment(v224 *off_1E798D4E0] < 3)
                            {
                              if (!*(v16 + 1923))
                              {
                                goto LABEL_603;
                              }

                              v882 = 0;
                              *(v16 + 1923) = 0;
                            }

                            else
                            {
                              if (*(v16 + 1923))
                              {
                                goto LABEL_603;
                              }

                              *(v16 + 1923) = 1;
                              v882 = (BWOverCaptureRenderDurationInSecondsAfterThermalMitigationStart() * *&v1535);
                            }

                            *(v16 + 1924) = v882;
LABEL_603:
                            OUTLINED_FUNCTION_18_7();
                            if (_ZF)
                            {
                              v883 = *(v16 + 1924);
                              _VF = __OFSUB__(v883, 1);
                              v884 = v883 - 1;
                              if (v884 < 0 != _VF)
                              {
                                goto LABEL_608;
                              }

                              *(v16 + 1924) = v884;
                            }

                            if (v1671 != 1.0)
                            {
                              *&v209 = v1670;
                              *&v1116 = *&v1529;
                              v1442 = v1116;
                              OUTLINED_FUNCTION_55_2();
                              v1420 = v1117;
                              v1430 = v1118;
                              OUTLINED_FUNCTION_87();
                              [(BWPreviewStitcherNode *)v1119 _transferPixelBuffer:v1120 rect:v1121 intoPixelBuffer:v1122 rect:0 isFinalOutput:v1123 withInputShift:v1124 scale:v1125 inputSourceRectOut:v1420, v1430, v1442];
                              v1666 = v1126;
                              v1128 = v1127;
                              v610 = v1129;
                              v1130 = OUTLINED_FUNCTION_43_3();
                              if (OUTLINED_FUNCTION_17_6(v1130, v1139, v1720, v1131, v1132, v1133, v1134, v1135, v1136, v1137, v1138, v1421, v1431, v1443, v1447, v1452, v1457, v1462, v1468, v1474, v1481, v1484, v1488, v1493, *&v1501, v1504, v1507, v1513, v1516, v1520[0], v1520[1], v1525, v1529, *&v1532, v1535, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1540, v1543))
                              {
                                OUTLINED_FUNCTION_20_4();
                                rect2d = v610;
                                v1720 = v1128;
                                OUTLINED_FUNCTION_72_0(*&v1666);
                              }

                              else
                              {
                                OUTLINED_FUNCTION_40_4();
                                v1864.size.width = v1720;
                                v1864.size.height = v838;
                                v1828 = CGRectUnion(v1827, v1864);
                                OUTLINED_FUNCTION_6_20(v1828.origin.x, v1828.origin.y, v1828.size.width, v1828.size.height);
                                OUTLINED_FUNCTION_20_4();
                              }

                              v904 = &unk_1F224A7D0;
LABEL_613:
                              OUTLINED_FUNCTION_49_2();
                              v620 = v1671;
LABEL_614:
                              OUTLINED_FUNCTION_18_7();
                              if (_ZF)
                              {
                                OUTLINED_FUNCTION_18_7();
                                if (_ZF)
                                {
                                  CMSetAttachment(v18, @"AmbientViewingEnvironmentStrength", v904, 1u);
                                  v905 = CVPixelBufferGetIOSurface(v18);
                                  BWUtilitiesApplyAVEStrength(v905, v904);
                                }
                              }

                              goto LABEL_718;
                            }

LABEL_608:
                            *&v885 = OUTLINED_FUNCTION_2_29(v16 + 416).n128_u64[0];
                            v1812.origin.x = OUTLINED_FUNCTION_74(v885, v886, v887, v888, v889, v890, v891, v892, *&v1413, *&v1424, *&v1435, *&v1447, *&v1452, *&v1457, *&v1462, *&v1468, *&v1474, *&v1481, *&v1484, *&v1488, *&v1493, v1501, *&v1504, *&v1507, *&v1513, *&v1516, *v1520, *&v1520[1], *&v1525, *&v1529, v1532, *&v1535, *&r2);
                            v1812.size.width = v1656;
                            *&v1812.size.height = r2_16;
                            v1813 = CGRectApplyAffineTransform(v1812, v893);
                            v611 = v1813.origin.x;
                            v609 = v1813.origin.y;
                            v894 = v1813.size.width;
                            v895 = v1813.size.height;
                            OUTLINED_FUNCTION_22_3();
                            v896 = VTPixelRotationSessionRotateSubImage();
                            if (v896)
                            {
                              fig_log_get_emitter();
                              OUTLINED_FUNCTION_1_35();
                              FigDebugAssert3();
                              *&v608 = 0.0;
                              v224 = 0;
                              v925 = 0.0;
                              goto LABEL_808;
                            }

                            v610 = v1714;
                            if (OUTLINED_FUNCTION_19_7(v1704, v1714, v1720, rect2d, v896, v897, v898, v899, v900, v901, v902, v903, v1417, v1427, v1439, v1448, v1453, v1458, v1463, v1469, v1475, v1482, v1486, v1490, v1495, v1502, v1505, v1508, v1514, v1517, v1521, v1523, v1526, v1530, v1533, v1536, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1540, v1543))
                            {
                              OUTLINED_FUNCTION_20_4();
                              rect2d = v895;
                              v1720 = v894;
                              v1714 = v609;
                              v1704 = v611;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_28_3();
                              v1814.size.height = v895;
                              v1859.origin.x = v1704;
                              v1859.origin.y = v1714;
                              v1859.size.width = v1720;
                              v1859.size.height = rect2d;
                              v1815 = CGRectUnion(v1814, v1859);
                              OUTLINED_FUNCTION_6_20(v1815.origin.x, v1815.origin.y, v1815.size.width, v1815.size.height);
                              OUTLINED_FUNCTION_20_4();
                            }

                            v904 = &unk_1F224A7D0;
                            *&v209 = v1670;
                            goto LABEL_613;
                          }

                          *&propertyValueOut[0].a = r2_16;
                          *&propertyValueOut[0].c = r2;
                          CGRectMakeWithDictionaryRepresentation([v1700 objectForKeyedSubscript:v1616], propertyValueOut);
                          CVPixelBufferGetWidth(pixelBuffer);
                          CVPixelBufferGetHeight(pixelBuffer);
                          v612 = OUTLINED_FUNCTION_24_4();
                          FigCaptureMetadataUtilitiesDenormalizeCropRect(v612, v613, v614, v615);
                          v611 = v616;
                          b = v617;
                          v610 = v618;
                          d = v619;
                          if ((v1610 | v507))
                          {
                            rect2d = *&v1626;
                            v1720 = dicta;
                            v1714 = v1649;
                            v1704 = v609;
                            goto LABEL_488;
                          }

                          *&v1611 = v616;
                          v621 = v607 * (*&v1545 / v1604);
                          v622 = *(v16 + 228) * *(v16 + 1672);
                          OUTLINED_FUNCTION_18_7();
                          if (_ZF && (OUTLINED_FUNCTION_18_7(), _ZF) && (([objc_msgSend(*(v16 + 280) "firstObject")], v598 > v623) ? (v624 = v598 < v622) : (v624 = 0), v624))
                          {
                            v1805.origin.x = v1548;
                            v1805.origin.y = v1551;
                            v1805.size.height = v1555;
                            v1805.size.width = v1562;
                            v625 = CGRectGetMaxX(v1805) < v1736.i32[0];
                          }

                          else
                          {
                            v625 = 0;
                          }

                          *&r2 = v622;
                          *&v1528 = v607;
                          *&v626 = v621;
                          *&v1542 = v609;
                          LODWORD(r2_16) = v626;
                          if (v219)
                          {
                            v627 = v1619;
                            if (v1593)
                            {
                              v627 = v1619 + (v1593 / *&v626);
                            }

                            if (v625)
                            {
                              v627 = v627 + (v1736.i32[0] - (v1728.origin.x + v1728.size.width - v1736.i32[0] + v1736.i32[0] + 2.0)) * 0.5 / *&v626;
                            }

                            OUTLINED_FUNCTION_18_7();
                            if (_ZF && (OUTLINED_FUNCTION_35_3(), !(_NF ^ _VF | _ZF)) && [v1589 isEqualToString:*v628])
                            {
                              v629 = FigCaptureMetadataUtilitiesNormalizedSensorCenterOffsetInValidBufferRect(a2);
                              v631 = v630;
                              v632 = CVPixelBufferGetWidth(pixelBuffer);
                              *&v608 = COERCE_DOUBLE(&time);
                              CVPixelBufferGetHeight(pixelBuffer);
                              v627 = v627 - FigCaptureMetadataUtilitiesDenormalizePoint(v629, v631, v632);
                              v634 = v1618 - v633;
                            }

                            else
                            {
                              v634 = v1618;
                            }

                            v683 = psn_pixelBufferRect(pixelBuffer);
                            psn_widerCameraBoundingRect(*(v16 + 268), v683, v684, v685, v686, *(&v1532 + 1) / *(v16 + 304), v1671, v1661, *&v1532);
                            OUTLINED_FUNCTION_18_7();
                            v1654 = v688;
                            v1643 = v690;
                            v1636 = v687;
                            *&v1612 = v689;
                            if (_ZF && ((*&v687 = v1671 / v1695, *(v16 + 304) > 1.0) ? (v692 = *&v687 < 1.0) : (v692 = 0), v692))
                            {
                              v785 = *&v687;
                              *&time.a = v1569;
                              *&time.c = *v1567;
                              *lhs = v1569;
                              *&lhs[16] = *v1567;
                              OUTLINED_FUNCTION_55_2();
                              OUTLINED_FUNCTION_112_1();
                              [(BWPreviewStitcherNode *)v786 _getInputRect:v787 outputRect:v788 inputShiftAppliedInOutputRect:v789 toTransferPixelBuffer:v790 rect:v791 intoPixelBufferDimensions:v792 rect:v793 withInputShift:v794 shiftOutsideBoundingRectAllowed:v795 ignoreBounds:v796 scale:v797 forFinalOutput:v798, v799, v800, v801, v627, v634, *&v626, 1u];
                              *lhs = OUTLINED_FUNCTION_41_3((v16 + 416), *lhs);
                              *&lhs[8] = v802;
                              *&lhs[16] = v803;
                              *&lhs[24] = v804;
                              v805 = FigCaptureMetadataUtilitiesScaleRect2D(*lhs, v802, v803, v804, 1.0 / v785);
                              v807 = v806;
                              v388 = v808;
                              v209 = v809;
                              OUTLINED_FUNCTION_75_0();
                              [(BWPreviewStitcherNode *)v16 _compensateForMissingFOVUsingPixelBuffer:v1609 sourceRect:v810 destinationContainingRect:v811 destinationInsetRect:v812 outputPixelBuffer:v813, v814, v815, v816, v817, v818, v805, v807, v388, v209, *lhs, *&lhs[8], *&lhs[16], *&lhs[24]];
                              v609 = *&v1542;
                              OUTLINED_FUNCTION_27_2();
                              if (CGRectEqualToRect(v1806, v1855))
                              {
                                v1720 = v388;
                                rect2d = v209;
                                v1704 = v805;
                                v1714 = v807;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_27_2();
                                v1808 = CGRectUnion(v1807, v1856);
                                OUTLINED_FUNCTION_6_20(v1808.origin.x, v1808.origin.y, v1808.size.width, v1808.size.height);
                              }

                              v598 = v1671;
                              v611 = time.a;
                              v819 = OUTLINED_FUNCTION_56_1(time.a - v1636, time.b - v1654);
                              v1696 = v821;
                              v822 = OUTLINED_FUNCTION_56_1(v819, v820 + *&v1612 - (v611 + v821));
                              d = v824;
                              v826 = OUTLINED_FUNCTION_14_7(v822, v823 + v1643 - (v825 + v824));
                              if (_NF)
                              {
                                v774 = v827;
                              }

                              else
                              {
                                v774 = v826;
                              }
                            }

                            else
                            {
                              propertyValueOut[0].a = v691;
                              OUTLINED_FUNCTION_78_1(v687, v688, v689, v690);
                              OUTLINED_FUNCTION_55_2();
                              OUTLINED_FUNCTION_87();
                              [(BWPreviewStitcherNode *)v693 _transferPixelBuffer:v694 rect:v695 intoPixelBuffer:v696 rect:v697 isFinalOutput:v698 withInputShift:v699 scale:v700 inputSourceRectOut:*&v627, *&v634, v626];
                              v209 = v701;
                              v703 = v702;
                              v705 = v704;
                              v388 = v706;
                              v609 = *&v1542;
                              OUTLINED_FUNCTION_27_2();
                              if (CGRectEqualToRect(v1798, v1851))
                              {
                                v1720 = v705;
                                rect2d = v388;
                                v1704 = v209;
                                v1714 = v703;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_27_2();
                                v1804 = CGRectUnion(v1803, v1854);
                                OUTLINED_FUNCTION_6_20(v1804.origin.x, v1804.origin.y, v1804.size.width, v1804.size.height);
                              }

                              v598 = v1671;
                              v611 = propertyValueOut[0].a;
                              v776 = OUTLINED_FUNCTION_56_1(propertyValueOut[0].a - v1636, propertyValueOut[0].b - v1654);
                              v1696 = v778;
                              v779 = OUTLINED_FUNCTION_56_1(v776, v777 + *&v1612 - (v611 + v778));
                              d = v781;
                              v783 = OUTLINED_FUNCTION_14_7(v779, v780 + v1643 - (v782 + v781));
                              if (_NF)
                              {
                                v774 = v784;
                              }

                              else
                              {
                                v774 = v783;
                              }
                            }
                          }

                          else
                          {
                            v1696 = v610;
                            v653 = psn_pixelBufferRect(pixelBuffer);
                            v1714 = v1661;
                            propertyValueOut[0].a = psn_widerCameraBoundingRect(*(v16 + 268), v653, v654, v655, v656, *(&v1532 + 1), v598, v1661, *&v1532);
                            OUTLINED_FUNCTION_78_1(propertyValueOut[0].a, v657, v658, v659);
                            v1720 = *&v626;
                            *&v1437 = v621;
                            *&v1414 = v1653.f64[0] + (vcvtd_n_f64_s32(v1736.u32[0], 1uLL) + v1576 + 2.0) * 0.5 / *&v626 - 2.0 / *&v626;
                            OUTLINED_FUNCTION_55_2();
                            v1653.f64[0] = v660;
                            v1704 = v661;
                            v1499 = v662;
                            rect2d = v663;
                            OUTLINED_FUNCTION_87();
                            [(BWPreviewStitcherNode *)v664 _transferPixelBuffer:v665 rect:v666 intoPixelBuffer:v667 rect:v668 isFinalOutput:v669 withInputShift:v670 scale:v671 inputSourceRectOut:v1414, *&v1653.f64[1], v1437];
                            v673 = v672;
                            v675 = v674;
                            v677 = v676;
                            v679 = v678;
                            OUTLINED_FUNCTION_122_0();
                            if (CGRectEqualToRect(v1797, v1850))
                            {
                              v680 = v679;
                              v681 = v677;
                              v682 = v673;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_120();
                              OUTLINED_FUNCTION_122_0();
                              v1800 = CGRectUnion(v1799, v1852);
                              v682 = v1800.origin.x;
                              v675 = v1800.origin.y;
                              v681 = v1800.size.width;
                              v680 = v1800.size.height;
                            }

                            v707 = OUTLINED_FUNCTION_24_4();
                            v711 = v707 - v1653.f64[0];
                            if (v707 - v1653.f64[0] >= v708 - v1704)
                            {
                              v711 = v708 - v1704;
                            }

                            v712 = OUTLINED_FUNCTION_106(v707, v708, v709, v710, v711, v1653.f64[0] + *&v1499);
                            v716 = OUTLINED_FUNCTION_14_7(v712, v713 + rect2d - (v714 + v715));
                            if (_NF)
                            {
                              v716 = v717;
                            }

                            v1655 = v716;
                            psn_pixelBufferRect(pixelBuffer);
                            v718 = OUTLINED_FUNCTION_54_3();
                            propertyValueOut[0].a = psn_widerCameraBoundingRect(v718, v719, v720, v721, v722, v723, v724, v1714, v725);
                            OUTLINED_FUNCTION_78_1(propertyValueOut[0].a, v726, v727, v728);
                            v733 = v1736.i32[0] - (vcvtd_n_f64_s32(v1736.u32[0], 1uLL) + v1576);
                            v734 = v675;
                            v209 = v681;
                            v735 = v680;
                            if (v625)
                            {
                              v733 = v733 + v1728.origin.x + v1728.size.width - v1736.i32[0] + 2.0;
                            }

                            *&v1415 = v1657.f64[0] + v733 * -0.5 / v1720;
                            v1485 = v732;
                            v1489 = v729;
                            v1494 = v730;
                            v1500 = v731;
                            OUTLINED_FUNCTION_87();
                            [(BWPreviewStitcherNode *)v736 _transferPixelBuffer:v737 rect:v738 intoPixelBuffer:v739 rect:v740 isFinalOutput:v741 withInputShift:v742 scale:v743 inputSourceRectOut:v1415, *&v1657.f64[1], r2_16];
                            v388 = v744;
                            v746 = v745;
                            v748 = v747;
                            v750 = v749;
                            v751 = OUTLINED_FUNCTION_52_3();
                            if (OUTLINED_FUNCTION_19_7(v751, v760, v761, v735, v752, v753, v754, v755, v756, v757, v758, v759, v1416, v1426, v1438, v1447, v1452, v1457, v1462, v1468, v1474, v1481, v1485, v1489, v1494, v1500, v1504, v1507, v1513, v1516, v1520[0], v1520[1], v1525, v1528, *&v1532, v1535, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1540, v1542))
                            {
                              v1720 = v748;
                              rect2d = v750;
                              v1704 = v388;
                              v1714 = v746;
                            }

                            else
                            {
                              v1801.origin.x = v388;
                              v1801.origin.y = v746;
                              v1801.size.width = v748;
                              v1801.size.height = v750;
                              v1853.origin.x = v682;
                              v1853.origin.y = v734;
                              v1853.size.width = v209;
                              v1853.size.height = v735;
                              v1802 = CGRectUnion(v1801, v1853);
                              OUTLINED_FUNCTION_6_20(v1802.origin.x, v1802.origin.y, v1802.size.width, v1802.size.height);
                            }

                            v611 = *&v1611;
                            v762 = OUTLINED_FUNCTION_24_4();
                            v766 = v762 - *&v1488;
                            if (v762 - *&v1488 >= v763 - *&v1498)
                            {
                              v766 = v763 - *&v1498;
                            }

                            v767 = OUTLINED_FUNCTION_106(v762, v763, v764, v765, v766, *&v1488 + *&v1484);
                            v771 = OUTLINED_FUNCTION_14_7(v767, v768 + *&v1493 - (v769 + v770));
                            if (_NF)
                            {
                              v771 = v772;
                            }

                            if (v1655 >= v771)
                            {
                              v774 = v771;
                            }

                            else
                            {
                              v774 = v1655;
                            }

                            v598 = v1671;
                            v609 = *&v1542;
                            v775 = v773;
                          }

                          *&v209 = v1670;
                          b = v775;
                          if (!v625)
                          {
                            v610 = v1696;
                            goto LABEL_561;
                          }

                          if (v219)
                          {
                            v1297 = v1619;
                          }

                          else
                          {
                            v1297 = v1657.f64[0];
                          }

                          if (v219)
                          {
                            v1298 = v1618;
                          }

                          else
                          {
                            v1298 = v1657.f64[1];
                          }

                          v1299 = v1728.origin.x;
                          v1300 = v1728.size.width;
                          v1301 = v1736.i32[1];
                          if (*&v1682 > 1.0)
                          {
                            v1299 = FigCaptureMetadataUtilitiesScaleRect2D(v1728.origin.x, v1728.origin.y, v1728.size.width, v1728.size.height, 1.0 / *&v1682);
                          }

                          v1302 = v1299 + v1300;
                          v610 = v1736.i32[0] - (v1299 + v1300);
                          v388 = v1301;
                          psn_pixelBufferRect(pixelBuffer);
                          v1303 = OUTLINED_FUNCTION_54_3();
                          v1312 = psn_widerCameraBoundingRect(v1303, v1304, v1305, v1306, v1307, v1308, v1309, v1310, v1311);
                          OUTLINED_FUNCTION_42_3(v1312, v1313, v1314, v1315);
                          if (v1593)
                          {
                            v1297 = v1297 + (v1593 / *&r2_16);
                          }

                          OUTLINED_FUNCTION_112_1();
                          [(BWPreviewStitcherNode *)v1372 _getInputRect:v1373 outputRect:v1374 inputShiftAppliedInOutputRect:v1375 toTransferPixelBuffer:v1376 rect:v1377 intoPixelBufferDimensions:v1378 rect:v1379 withInputShift:v1380 shiftOutsideBoundingRectAllowed:v1381 ignoreBounds:v1382 scale:v1383 forFinalOutput:v1384, v1385, v1386, v1387, v1297 + v1302 * -0.5 / *&r2_16, v1298, *&r2_16, 1u];
                          v1388 = v610 / (time.c * *&r2_16);
                          v1389 = *(v16 + 228);
                          if (v1671 >= v1389)
                          {
                            if (*&r2 >= v1671)
                            {
                              v1395 = v1671;
                            }

                            else
                            {
                              v1395 = *&r2;
                            }

                            if (v1395 < v1389)
                            {
                              v1395 = *(v16 + 228);
                            }

                            v1393 = *(v16 + 1668) + ((1.0 - *(v16 + 1668)) * ((v1395 - v1389) / (*&r2 - v1389)));
                            if (v1393 <= v1388)
                            {
                              goto LABEL_900;
                            }
                          }

                          else
                          {
                            [objc_msgSend(*(v16 + 280) "firstObject")];
                            v1391 = *(v16 + 228);
                            if (v1391 >= v1671)
                            {
                              v1392 = v1671;
                            }

                            else
                            {
                              v1392 = *(v16 + 228);
                            }

                            if (v1392 < v1390)
                            {
                              v1392 = v1390;
                            }

                            v1393 = ((*(v16 + 1668) + -1.0) * ((v1392 - v1390) / (v1391 - v1390))) + 1.0;
                            if (v1393 <= v1388)
                            {
                              v1394 = time.c * *&r2_16 * v1393;
                              v610 = FigCaptureRoundFloatToMultipleOf(2, v1394);
                              goto LABEL_900;
                            }
                          }

                          v1396 = v610 / (v1393 * *&r2_16);
                          time.c = FigCaptureRoundFloatToMultipleOf(2, v1396);
LABEL_900:
                          psn_conformRectForMSR420vfBoundedByDimensions(v1302, 0.0, v610, v388, *&v1736, 1);
                          v1398 = OUTLINED_FUNCTION_41_3((v16 + 416), v1397);
                          if (v1400 <= 0.0 || (v611 = v1401, v1401 <= 0.0))
                          {
                            v598 = v1671;
                            v611 = rect2d;
                            v609 = v1720;
                          }

                          else
                          {
                            v388 = v1398;
                            v610 = v1399;
                            v609 = v1400;
                            v598 = v1671;
                            OUTLINED_FUNCTION_75_0();
                            VTPixelRotationSessionRotateSubImage();
                            OUTLINED_FUNCTION_82_0();
                            if (OUTLINED_FUNCTION_19_7(v1410, v1411, v1412, rect2d, v1402, v1403, v1404, v1405, v1406, v1407, v1408, v1409, v1413, v1424, v1435, v1447, v1452, v1457, v1462, v1468, v1474, v1481, v1484, v1488, v1493, v1498, v1504, v1507, v1513, v1516, v1520[0], v1520[1], v1525, v1528, *&v1532, v1535, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1540, v1542))
                            {
                              v1714 = v610;
                              v1704 = v388;
                            }

                            else
                            {
                              v1844.origin.x = OUTLINED_FUNCTION_36_4();
                              v1844.size.width = v609;
                              v1844.size.height = v611;
                              v1869.origin.x = v1704;
                              v1869.origin.y = v1714;
                              v1869.size.width = v209;
                              v1869.size.height = rect2d;
                              v1845 = CGRectUnion(v1844, v1869);
                              v1704 = v1845.origin.x;
                              v1714 = v1845.origin.y;
                              v609 = v1845.size.width;
                              v611 = v1845.size.height;
                            }

                            *&v209 = v1670;
                          }

                          rect2d = v611;
                          v1720 = v609;
                          OUTLINED_FUNCTION_49_2();
LABEL_561:
                          BWSmartCameraSceneUpdateWithConfidence(v16 + 1360, v774 * *&r2_16);
                          v458 = *&v1682;
                          v607 = *&v1528;
                          if (v219)
                          {
                            goto LABEL_489;
                          }

                          goto LABEL_562;
                        }

                        v600 = 1;
                      }

                      *(v16 + 1354) = v600;
                      goto LABEL_466;
                    }

                    v21 = v1671;
                    *&v209 = v1670;
                    v176 = v1694;
                  }

                  else
                  {
                    v422 = OUTLINED_FUNCTION_8_18();
                    v426 = psn_smallestBoundingRectAlignedToMultipleOf(2, 0, v422, v423, v424, v425);
                    OUTLINED_FUNCTION_23_3(v426, v427, v428, v429);
                    OUTLINED_FUNCTION_40_4();
                    v436 = psn_conformRectForMSR420vfBoundedByRect(1, v430, v431, v432, v433, v434, v435, v374, v1711);
                    OUTLINED_FUNCTION_23_3(v436, v437, v438, v439);
                    v444 = a2;
                  }

                  v445 = rect2b;
                  goto LABEL_353;
                }
              }

              v221 = [v1722 objectForKeyedSubscript:v1620];
              if (*(v16 + 1291))
              {
                v222 = v1721;
                v223 = *&v1623;
                v224 = v1687;
              }

              else
              {
                v225 = v221;
                v222 = v1721;
                v223 = *&v1623;
                v224 = v1687;
                if (([v221 isEqual:*off_1E798A0E0] & 1) != 0 || objc_msgSend(v225, "isEqual:", *off_1E798A0F8))
                {
                  v226 = CMGetAttachment(v1687, @"TotalZoomFactor", 0);
                  if (v226)
                  {
                    [v226 floatValue];
                    v228 = v227;
                  }

                  else
                  {
                    v228 = 1.0;
                  }

                  v223 = *&v1623 / v228;
                }
              }

              v256 = 1.0;
              if (*(v16 + 1291) == 1)
              {
                v256 = 1.0 / v223;
                v223 = 1.0;
              }

              v257 = *(v16 + 1760);
              if (fabs(v257 + -1.77777778) < 0.001 || fabs(v257 + -0.5625) < 0.001)
              {
                v260 = OUTLINED_FUNCTION_84_0();
                if (v260 && [v260 isRamping])
                {
                  [OUTLINED_FUNCTION_84_0() currentValue];
                  if (v261 > 1.0)
                  {
                    v261 = 1.0;
                  }

                  if (v261 < 0.0)
                  {
                    v261 = 0.0;
                  }

                  v262 = v223;
                  v1661 = v256 + ((v262 - v256) * v261);
                  v263 = [OUTLINED_FUNCTION_84_0() isRampingUp];
                  [OUTLINED_FUNCTION_84_0() updateRampForNextIteration];
                  if (v263 && ([OUTLINED_FUNCTION_84_0() isRamping] & 1) == 0)
                  {

                    *(v16 + 1824) = 0;
                  }
                }
              }

              else
              {
                if (*&v209 <= 1.0)
                {
                  v258 = 1.0 / *&v209;
                }

                else
                {
                  v258 = *&v209;
                }

                if (v258 > 1.7778)
                {
                  v258 = 1.7778;
                }

                if (v258 < 1.3333)
                {
                  v258 = 1.3333;
                }

                v259 = v223;
                v1661 = v256 + ((v259 - v256) * ((v258 + -1.3333) / 0.44444));
              }

              v264 = *(v16 + 1291);
              if (((v264 | v1601) & 1) == 0)
              {
                v291 = FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(recta.size.width, recta.size.height, *&v209);
                OUTLINED_FUNCTION_4_25(v291, v292, v293, v294);
                [v1722 objectForKeyedSubscript:*off_1E798A6F0];
                if (*(v16 + 1921))
                {
                  CVPixelBufferGetWidth(v222);
                  CVPixelBufferGetHeight(v222);
                  v295 = OUTLINED_FUNCTION_0_29();
                  v299 = OUTLINED_FUNCTION_96_0(v295, v296, v297, v298);
                  OUTLINED_FUNCTION_4_25(v299, v300, v301, v302);
                }

                else
                {
                  OUTLINED_FUNCTION_0_29();
                }

                OUTLINED_FUNCTION_85_1();
                size = recta.size;
                origin = recta.origin;
                FigCaptureMetadataUtilitiesScaleRect2D(v314, v315, v316, v317, 1.0 / (v1702 * v1661));
                *&v319.f64[0] = v318;
                *&v319.f64[1] = v320;
                __asm { FMOV            V1.2D, #0.5 }

                v1730 = vaddq_f64(origin, vmulq_f64(vsubq_f64(size, v319), _Q1));
                v1731[0] = v318;
                v1731[1] = v320;
                v245 = 1.0;
LABEL_284:
                v254 = v1683;
                v255 = v1673;
                goto LABEL_306;
              }

              v265 = OUTLINED_FUNCTION_0_29();
              v271 = recta.origin.x;
              v270 = recta.origin.y;
              v272 = recta.size.width;
              v273 = recta.size.height;
              v274 = recta.size.height / v268;
              if (recta.size.width / v267 < recta.size.height / v268)
              {
                v274 = recta.size.width / v267;
              }

              v275 = v269;
              v1511 = *&v275;
              if (v274 > v275)
              {
                v274 = v275;
              }

              v1546 = *&v268;
              v1549 = *&v267;
              FigCaptureMetadataUtilitiesScaleRect2D(v265, v266, v267, v268, v274);
              v1709 = v277;
              v279 = v278;
              v280 = v278 / v276;
              v281 = *&v209;
              v282 = v280;
              if (*&v209 <= 1.0)
              {
                v287 = v279 * v281 / v282;
                v303 = *&v209 < v280 || v287 <= v272;
                v1582 = v276;
                v219 = v1651;
                LODWORD(v220) = v1675;
                v288 = v272;
                v290 = v276;
                if (!v303)
                {
                  v287 = v288;
                  v1582 = v288 / v281;
                }
              }

              else
              {
                v283 = *&v209 <= v280;
                v284 = v276 * v282 / v281;
                v285 = v284 > v273;
                v286 = v273 * v281;
                if (v283 && v285)
                {
                  v284 = v273;
                }

                v1582 = v284;
                if (v283 && v285)
                {
                  v287 = v286;
                }

                else
                {
                  v287 = v279;
                }

                OUTLINED_FUNCTION_85_1();
                v288 = v272;
                v290 = v289;
              }

              *&v1602 = v288;
              v1761.origin.x = OUTLINED_FUNCTION_30_1();
              v1761.size.height = v273;
              v1559 = CGRectGetMinX(v1761);
              v1762.origin.x = OUTLINED_FUNCTION_30_1();
              v1762.size.height = v273;
              v304 = CGRectGetMaxX(v1762) - v287;
              v1599 = v270;
              OUTLINED_FUNCTION_102();
              *&v1586 = v271;
              v305 = v1709;
              OUTLINED_FUNCTION_37_5();
              v306 = CGRectGetMidX(v1763) - v287 * 0.5;
              v1624 = *&v273;
              if (v304 >= v306)
              {
                OUTLINED_FUNCTION_37_5();
                v313 = CGRectGetMidX(v1765) - v287 * 0.5;
                v305 = *&v1586;
                v304 = *&v1602;
              }

              else
              {
                v1764.origin.x = OUTLINED_FUNCTION_63_0(v306, 0.5, v307, v308, v309, v310, v311, v312, *&v1413, *&v1424, *&v1435, *&v1447, *&v1452, *&v1457, *&v1462, *&v1468, *&v1474, *&v1481, *&v1484, *&v1488, *&v1493, *&v1498, v11, *&v1507, *&v1511, *&v1516, *v1520, *&v1520[1], *&v1525, *&v1528, v1532, *&v1535, 1.0, 1.0, 0.0, 0.0, *&v1540, *&v1541, v1545, *&v1546, *&v1549, *&v1552, v1559, *&v1563, *&v1564, *&v1565, *v1567, *&v1567[1], v1569.x, v1569.y, *&v1570, *&v1572, *v1573, *&v1573[1], *&v1579, v1582, *&v1586);
                v1764.size.height = v273;
                v313 = CGRectGetMaxX(v1764) - v287;
              }

              *v1573 = v287;
              if (v1559 <= v313)
              {
                v1767.origin.x = v305;
                v1767.origin.y = v270;
                v1767.size.width = v304;
                v323 = v273;
                v1767.size.height = v273;
                v325 = CGRectGetMaxX(v1767) - v287;
                v1768.origin.x = OUTLINED_FUNCTION_102();
                v305 = v1709;
                v1768.origin.y = v1709;
                v1768.size.width = v279;
                v1768.size.height = v290;
                v326 = CGRectGetMidX(v1768) - v287 * 0.5;
                if (v325 >= v326)
                {
                  v1770.origin.x = OUTLINED_FUNCTION_50_2();
                  v1770.size.height = v290;
                  v1560 = CGRectGetMidX(v1770) - v287 * 0.5;
                  v305 = *&v1586;
                  goto LABEL_292;
                }

                v1769.origin.x = OUTLINED_FUNCTION_63_0(v326, v327, v328, v329, v330, v331, v332, v333, *&v1413, *&v1424, *&v1435, *&v1447, *&v1452, *&v1457, *&v1462, *&v1468, *&v1474, *&v1481, *&v1484, *&v1488, *&v1493, *&v1498, *&v1504, *&v1507, *&v1511, *&v1516, *v1520, *&v1520[1], *&v1525, *&v1528, v1532, *&v1535, *&r2, *(&r2 + 1), *&r2_16, *(&r2_16 + 1), *&v1540, *&v1541, v1545, *&v1546, *&v1549, *&v1552, v1559, *&v1563, *&v1564, *&v1565, *v1567, *&v1567[1], v1569.x, v1569.y, *&v1570, *&v1572, v287, *&v1573[1], *&v1579, v1582, *&v1586);
                v1769.size.height = v273;
                v324 = CGRectGetMaxX(v1769) - v287;
              }

              else
              {
                v1766.origin.x = OUTLINED_FUNCTION_30_1();
                v323 = v273;
                v1766.size.height = v273;
                v324 = CGRectGetMinX(v1766);
              }

              v1560 = v324;
LABEL_292:
              v1771.origin.x = OUTLINED_FUNCTION_30_1();
              v1771.size.height = v323;
              v1553 = CGRectGetMinY(v1771);
              v1772.origin.x = OUTLINED_FUNCTION_30_1();
              v1772.size.height = v323;
              v334 = v1582;
              v335 = CGRectGetMaxY(v1772) - v1582;
              v336 = OUTLINED_FUNCTION_102();
              if (v335 >= OUTLINED_FUNCTION_95_1(v336, v337, v338, v339, v340, v341, v342, v343, v344, v1413, v1424, v1435, v1447, v1452, v1457, v1462, v1468, v1474, v1481, v1484, v1488, v1493, v1498, v1504, v1507, v1511, v1516, v1520[0], v1520[1], v1525, v1528, *&v1532, v1535, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1540, v1541, *&v1545, v1546, v1549, v1553, *&v1560, v1563, v1564, v1565, v1567[0], v1567[1], *&v1569.x, *&v1569.y, v1570, v1572, v1573[0], v1573[1], v1579, *&v1582, v1586, v1589, *&v290, *&v279) - v334 * 0.5)
              {
                v1774.origin.x = OUTLINED_FUNCTION_50_2();
                v1774.size.height = v287;
                v347 = CGRectGetMidY(v1774) - v334 * 0.5;
                v345 = v270;
                v346 = *&v1602;
              }

              else
              {
                v1773.origin.x = v305;
                v345 = v270;
                v1773.origin.y = v270;
                v346 = *&v1602;
                *&v1773.size.width = v1602;
                *&v1773.size.height = v1624;
                v347 = CGRectGetMaxY(v1773) - v334;
              }

              v348 = v334;
              if (*&v1554 <= v347)
              {
                v1776.origin.x = v305;
                v351 = v334 * 0.5;
                v1776.origin.y = v345;
                v1776.size.width = v346;
                *&v1776.size.height = v1624;
                v352 = CGRectGetMaxY(v1776) - v348;
                v353 = OUTLINED_FUNCTION_102();
                if (v352 >= OUTLINED_FUNCTION_95_1(v353, v354, v355, v356, v357, v358, v359, v360, v361, v1413, v1424, v1435, v1447, v1452, v1457, v1462, v1468, v1474, v1481, v1484, v1488, v1493, v1498, v1504, v1507, v1512, v1516, v1520[0], v1520[1], v1525, v1528, *&v1532, v1535, r2, *(&r2 + 1), r2_16, *(&r2_16 + 1), v1540, v1541, *&v1545, v1547, v1550, v1554, v1561, v1563, v1564, v1565, v1567[0], v1567[1], *&v1569.x, *&v1569.y, v1571, v1572, v1574, v1578, v1580, v1583, v1587, v1589, v1592, key) - v351)
                {
                  v1778.origin.x = OUTLINED_FUNCTION_50_2();
                  v1778.size.height = v345;
                  v349 = CGRectGetMidY(v1778) - v351;
                }

                else
                {
                  v1777.origin.x = v305;
                  v1777.origin.y = v1599;
                  *&v1777.size.width = v1602;
                  *&v1777.size.height = v1624;
                  v349 = CGRectGetMaxY(v1777) - v348;
                }

                v21 = v1671;
                v176 = v1694;
                v350 = v1575;
              }

              else
              {
                v1775.origin.x = v305;
                v1775.origin.y = v345;
                v1775.size.width = v346;
                *&v1775.size.height = v1624;
                v349 = CGRectGetMinY(v1775);
                v21 = v1671;
                v176 = v1694;
                v350 = *&v1574;
              }

              v245 = 1.0;
              *&v209 = v1670;
              v254 = v1683;
              v255 = v1673;
              if (v264)
              {
                v362 = v348 / *&v1547;
                if (v1670 >= 1.0)
                {
                  v362 = v350 / *&v1550;
                }

                v245 = *&v1512 / v362;
              }

              *&v1730.f64[0] = v1561;
              v1730.f64[1] = v349;
              *v1731 = v350;
              *&v1731[1] = v348;
              goto LABEL_306;
            }

            v1596 = point.x;
            v1568 = point.y;
            v150 = v1730;
            v151 = *v1731;
            v152 = *&v1731[1];
            v153 = recta.origin.x;
            v154 = recta.size.width;
            v155 = recta.size.height;
            OUTLINED_FUNCTION_31_4();
            v1590 = CGRectGetMinX(v1737);
            v1738.origin.x = OUTLINED_FUNCTION_15_9();
            v1738.size.height = v152;
            v1556 = v1590 - CGRectGetMinX(v1738);
            v1581 = v153;
            OUTLINED_FUNCTION_31_4();
            MaxX = CGRectGetMaxX(v1739);
            v1740.origin.x = OUTLINED_FUNCTION_15_9();
            v1591 = v152;
            v1740.size.height = v152;
            _NF = MaxX - CGRectGetMaxX(v1740) < v1596;
            v157 = v1596;
            if (_NF)
            {
              OUTLINED_FUNCTION_31_4();
              v152 = CGRectGetMaxX(v1741);
              v1742.origin.x = OUTLINED_FUNCTION_15_9();
              v1742.size.height = v1591;
              v157 = v152 - CGRectGetMaxX(v1742);
            }

            v1566 = v151;
            if (v1556 <= v157)
            {
              OUTLINED_FUNCTION_31_4();
              v1557 = CGRectGetMaxX(v1745);
              OUTLINED_FUNCTION_15_9();
              OUTLINED_FUNCTION_67();
              if (v1557 - CGRectGetMaxX(v1746) >= v1596)
              {
LABEL_158:
                v1749.origin.x = OUTLINED_FUNCTION_93();
                v1749.size.width = v150.f64[0];
                v1749.size.height = v155;
                v160 = CGRectGetMinY(v1749);
                v1552 = *&MaxX;
                OUTLINED_FUNCTION_92_0();
                v1558 = v160 - CGRectGetMinY(v1750);
                v1751.origin.x = OUTLINED_FUNCTION_93();
                v1751.size.width = v150.f64[0];
                v1751.size.height = v155;
                MaxY = CGRectGetMaxY(v1751);
                OUTLINED_FUNCTION_34_3();
                OUTLINED_FUNCTION_92_0();
                _NF = MaxY - CGRectGetMaxY(v1752) < v1568;
                v162 = v1568;
                if (_NF)
                {
                  OUTLINED_FUNCTION_93();
                  OUTLINED_FUNCTION_39_3();
                  v163 = CGRectGetMaxY(v1753);
                  v1754.origin.x = OUTLINED_FUNCTION_34_3();
                  v1754.size.width = v1566;
                  v1754.size.height = v1591;
                  v162 = v163 - CGRectGetMaxY(v1754);
                }

                if (v1558 <= v162)
                {
                  OUTLINED_FUNCTION_93();
                  OUTLINED_FUNCTION_39_3();
                  v166 = CGRectGetMaxY(v1757);
                  v1758.origin.x = OUTLINED_FUNCTION_34_3();
                  v1758.size.width = v1566;
                  v1758.size.height = v1591;
                  v167 = CGRectGetMaxY(v1758);
                  v165 = v1568;
                  if (v166 - v167 < v1568)
                  {
                    OUTLINED_FUNCTION_39_3();
                    v168 = CGRectGetMaxY(v1759);
                    v1760.origin.x = OUTLINED_FUNCTION_34_3();
                    v1760.size.width = v1566;
                    v1760.size.height = v1591;
                    v165 = v168 - CGRectGetMaxY(v1760);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_93();
                  OUTLINED_FUNCTION_39_3();
                  v164 = CGRectGetMinY(v1755);
                  v1756.origin.x = OUTLINED_FUNCTION_34_3();
                  v1756.size.width = v1566;
                  v1756.size.height = v1591;
                  v165 = v164 - CGRectGetMinY(v1756);
                }

                point.x = v1596;
                point.y = v165;
                v101 = *&v1605;
                v100 = *&v1606;
                x = v1608;
                v74 = *(&v1535 + 1);
                v77 = *&v1545;
                goto LABEL_166;
              }

              v1747.origin.x = v1581;
              v1747.origin.y = MaxX;
              v1747.size.width = v150.f64[0];
              v1747.size.height = v155;
              v159 = CGRectGetMaxX(v1747);
              v1748.origin.x = v150.f64[1];
              v1748.origin.y = v152;
              v1748.size.width = v151;
              v1748.size.height = v154;
              v158 = v159 - CGRectGetMaxX(v1748);
            }

            else
            {
              OUTLINED_FUNCTION_31_4();
              v1597 = CGRectGetMinX(v1743);
              OUTLINED_FUNCTION_15_9();
              OUTLINED_FUNCTION_67();
              v158 = v1597 - CGRectGetMinX(v1744);
            }

            v1596 = v158;
            goto LABEL_158;
          }

          v94 = v1604 / (v93 * v518);
        }

        else
        {
          v94 = (v89 * v90) / (*&v92 * v93);
        }

        *&v1532 = v94;
        goto LABEL_109;
      }

      v74 = *(v16 + 224);
      v1694 = v74 * *(v16 + 288);
      v643 = [(BWPreviewStitcherNode *)v16 _wideBaseZoomFactorWithOverride];
      v77 = *&v643;
      v78 = &OBJC_IVAR___BWPreviewStitcherNode__wideNondisruptiveSwitchingZoomFactors;
    }

    [objc_msgSend(*(v16 + *v78) "firstObject")];
    v80 = v79;
    OUTLINED_FUNCTION_35_3();
    v81 = _ZF;
    LODWORD(v1528) = v81;
    goto LABEL_90;
  }

  fig_log_get_emitter();
  FigDebugAssert3();
  *&v608 = 0.0;
  v224 = 0;
  v925 = 0.0;
  value = 0;
LABEL_808:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v925 != 0.0)
  {
    CFRelease(*&v925);
  }

  if (v224)
  {
    CFRelease(v224);
  }

  if (*&v608 != 0.0)
  {
    CFRelease(v608);
  }

  return v1735;
}

- (void)_waitForCIPreheatingToFinish
{
  if (a1)
  {
    v2 = *(a1 + 1056);
    if (v2)
    {
      dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

      *(a1 + 1056) = 0;
    }
  }
}

- (void)_getInputRect:(uint64_t)a3 outputRect:(uint64_t)a4 inputShiftAppliedInOutputRect:(uint64_t)a5 toTransferPixelBuffer:(uint64_t)a6 rect:(uint64_t)a7 intoPixelBufferDimensions:(uint64_t)a8 rect:(double)a9 withInputShift:(double)a10 shiftOutsideBoundingRectAllowed:(double)a11 ignoreBounds:(double)a12 scale:(double)a13 forFinalOutput:(double)a14
{
  OUTLINED_FUNCTION_135();
  v105 = v27;
  if (!v12)
  {
LABEL_48:
    OUTLINED_FUNCTION_68();
    return;
  }

  v28 = v16;
  if (v16)
  {
    v29 = v19;
    v30 = v18;
    v31 = v17;
    v32 = v15;
    v33 = v14;
    v34 = v26;
    v35 = v25;
    v36 = v13;
    v37 = v24;
    v38 = *(v12 + 1685);
    v99 = v20;
    v100 = v21;
    v101 = v22;
    rect = v23;
    FigCaptureMetadataUtilitiesScaleRect2D(v20, v21, v22, v23, a19);
    v40 = v39;
    v42 = v41;
    v45 = v105 + OUTLINED_FUNCTION_100_0(v35 - v39) + a17 * a19;
    v98 = a19;
    v46 = v37 + (v34 - v43) * v44 + a18 * a19;
    rect_24 = v34;
    if (v29)
    {
      v47 = v42;
      v48 = v40;
      v49 = v46;
      v50 = v45;
    }

    else
    {
      OUTLINED_FUNCTION_121();
      v107 = CGRectIntersection(v106, v112);
      if (v30)
      {
        psn_conformRectForMSR420vfBoundedByDimensions(v107.origin.x, v107.origin.y, v107.size.width, v107.size.height, v31, a20);
      }

      else
      {
        OUTLINED_FUNCTION_121();
        v51 = psn_conformRectForMSR420vfBoundedByRect(1, v55, v56, v57, v58, v59, v60, v61, v62);
      }

      v50 = v51;
      v49 = v52;
      v48 = v53;
      v47 = v54;
    }

    v63 = v99 + v101 * ((v50 - v45) / v40);
    v64 = v100 + rect * ((v49 - v46) / v42);
    v65 = v101 * (v48 / v40);
    v66 = rect * (v47 / v42);
    if (v29)
    {
      if ((v38 & 1) == 0)
      {
        v67 = OUTLINED_FUNCTION_51_2();
        acpr_conformRectForMSR420vf(v67, v68, v69, v70);
        OUTLINED_FUNCTION_119();
      }

      goto LABEL_42;
    }

    v71 = v50;
    if (v30)
    {
      CVPixelBufferGetWidth(v28);
      v72 = OUTLINED_FUNCTION_111();
      Height = CVPixelBufferGetHeight(v72);
      if (v38)
      {
        if (v65 <= v30)
        {
          v74 = v65;
        }

        else
        {
          v74 = v30;
        }

        if (v74 >= 0.0)
        {
          v65 = v74;
        }

        else
        {
          v65 = 0.0;
        }

        v75 = Height;
        if (v66 <= Height)
        {
          v76 = v66;
        }

        else
        {
          v76 = Height;
        }

        if (v76 >= 0.0)
        {
          v66 = v76;
        }

        else
        {
          v66 = 0.0;
        }

        v77 = v30 - v65;
        if (v77 >= v63)
        {
          v77 = v63;
        }

        if (v77 >= 0.0)
        {
          v63 = v77;
        }

        else
        {
          v63 = 0.0;
        }

        v78 = v75 - v66;
        if (v75 - v66 >= v64)
        {
          v78 = v64;
        }

        if (v78 >= 0.0)
        {
          v64 = v78;
        }

        else
        {
          v64 = 0.0;
        }

        goto LABEL_41;
      }

      v87 = v30 | (Height << 32);
      v88 = OUTLINED_FUNCTION_51_2();
      psn_conformRectForMSR420vfBoundedByDimensions(v88, v89, v90, v91, v87, 0);
    }

    else
    {
      v79 = OUTLINED_FUNCTION_51_2();
      if (v38)
      {
        psn_rectBoundedByRect(v79, v80, v81, v82, v83, v84, v85, v86);
      }

      else
      {
        psn_conformRectForMSR420vfBoundedByRect(0, v79, v80, v81, v82, v83, v84, v85, v86);
      }
    }

    OUTLINED_FUNCTION_119();
LABEL_41:
    v50 = v71;
LABEL_42:
    if (v36)
    {
      *v36 = v63;
      v36[1] = v64;
      v36[2] = v65;
      v36[3] = v66;
    }

    if (v33)
    {
      *v33 = v50;
      v33[1] = v49;
      v33[2] = v48;
      v33[3] = v47;
    }

    if (v32)
    {
      v108.origin.x = v50;
      v108.origin.y = v49;
      v108.size.width = v48;
      v108.size.height = v47;
      recta = v50;
      MidX = CGRectGetMidX(v108);
      v109.origin.x = OUTLINED_FUNCTION_15_9();
      v109.size.height = rect_24;
      v93 = CGRectGetMidX(v109);
      v110.size.height = v47;
      v94 = MidX - v93;
      v110.origin.x = recta;
      v110.origin.y = v49;
      v110.size.width = v48;
      MidY = CGRectGetMidY(v110);
      v111.origin.x = OUTLINED_FUNCTION_15_9();
      v111.size.height = rect_24;
      v96 = CGRectGetMidY(v111);
      *v32 = v94 / v98;
      v32[1] = (MidY - v96) / v98;
    }

    goto LABEL_48;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_68();

  FigDebugAssert3();
}

- (uint64_t)_transferPixelBuffer:(CVPixelBufferRef)pixelBuffer rect:(int)a4 intoPixelBuffer:(_OWORD *)a5 rect:(int)a6 isFinalOutput:(int)a7 withInputShift:(int)a8 scale:(uint64_t)a9 inputSourceRectOut:(uint64_t)a10
{
  if (result)
  {
    v14 = result;
    v15 = *(MEMORY[0x1E695F058] + 16);
    v42 = *MEMORY[0x1E695F058];
    v43 = v15;
    v40 = v42;
    v41 = v15;
    v39.i32[0] = CVPixelBufferGetWidth(pixelBuffer);
    v39.i32[1] = CVPixelBufferGetHeight(pixelBuffer);
    if (a4)
    {
      FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v39, *(v14 + 136));
    }

    OUTLINED_FUNCTION_112_1();
    [(BWPreviewStitcherNode *)v16 _getInputRect:v17 outputRect:v18 inputShiftAppliedInOutputRect:v19 toTransferPixelBuffer:v20 rect:v21 intoPixelBufferDimensions:v22 rect:v23 withInputShift:v24 shiftOutsideBoundingRectAllowed:v25 ignoreBounds:v26 scale:v27 forFinalOutput:v28, v29, v30, v31, *&a9, *&a10, *&a11, a4];
    if (a5)
    {
      v32 = v41;
      *a5 = v40;
      a5[1] = v32;
    }

    if (a4)
    {
      v44.origin.y = *(&v42 + 1);
      v44.size = v43;
      v33 = *(v14 + 432);
      *&v38.a = *(v14 + 416);
      *&v38.c = v33;
      *&v38.tx = *(v14 + 448);
      *&v44.origin.x = v42;
      CGRectApplyAffineTransform(v44, &v38);
      OUTLINED_FUNCTION_8_3();
      *&v42 = v34;
      *(&v42 + 1) = v35;
      v43.width = v36;
      v43.height = v37;
    }

    result = VTPixelRotationSessionRotateSubImage();
    if (result)
    {
      fig_log_get_emitter();
      return FigDebugAssert3();
    }
  }

  return result;
}

- (uint64_t)_compensateForMissingFOVUsingPixelBuffer:(__CVBuffer *)a3 sourceRect:(int)a4 destinationContainingRect:(int)a5 destinationInsetRect:(int)a6 outputPixelBuffer:(int)a7
{
  if (result)
  {
    v28 = result;
    CVPixelBufferGetWidth(pixelBuffer);
    v29 = CVPixelBufferGetHeight(pixelBuffer) - (a10 + a12);
    CVPixelBufferGetWidth(a3);
    CVPixelBufferGetHeight(a3);
    v226 = *MEMORY[0x1E695F9C0];
    v227 = MEMORY[0x1E695E118];
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v227 forKeys:&v226 count:1];
    v31 = [objc_msgSend(MEMORY[0x1E695F658] imageWithCVPixelBuffer:pixelBuffer options:{v30), "imageByCroppingToRect:", a9, v29, a11, a12}];
    v166 = *(MEMORY[0x1E695EFD0] + 16);
    v176 = *MEMORY[0x1E695EFD0];
    *&v224.a = *MEMORY[0x1E695EFD0];
    *&v224.c = v166;
    v154 = *(MEMORY[0x1E695EFD0] + 32);
    *&v224.tx = v154;
    CGAffineTransformRotate(&v225, &v224, -1.57079633);
    v32 = [v31 imageByApplyingTransform:&v225];
    [v32 extent];
    v33 = [v32 imageByCroppingToRect:?];
    [v33 extent];
    v35 = *&a19 / v34;
    [v33 extent];
    v37 = *&a20 / v36;
    if (v35 <= v37)
    {
      v38 = *&a20 / v36;
    }

    else
    {
      v38 = v35;
    }

    *&v225.a = v176;
    *&v225.c = v166;
    *&v225.tx = v154;
    [v33 extent];
    v39 = -CGRectGetMidX(v228);
    [v33 extent];
    MidY = CGRectGetMidY(v229);
    Translation = CGAffineTransformMakeTranslation(&v224, v39, -MidY);
    OUTLINED_FUNCTION_128_1(Translation, v42, v43, v44, v45, v46, v47, v48, v154, v126, v133, *&a15, *&a13, v154.n128_i64[0], v154.n128_i64[1], v166, *(&v166 + 1), v176, *(&v176 + 1), v186, v193, v198, v205, v210, v217, *&t1.a, *&t1.b, *&t1.c, *&t1.d, *&t1.tx, *&t1.ty, v176, *(&v176 + 1), v166, *(&v166 + 1), v49, *&t2.tx);
    Scale = CGAffineTransformMakeScale(&t2, v38, v38);
    v58 = OUTLINED_FUNCTION_12_11(Scale, v51, v52, v53, v54, v55, v56, v57, v127, v134, v141, v148, v155, v161, v167, v171, v177, v181, v187, v194, v199, v206, v211, v218, *&t1.a, *&t1.c, *&t1.tx, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&v224.a);
    [v33 extent];
    MidX = CGRectGetMidX(v230);
    [v33 extent];
    v68 = CGRectGetMidY(v231);
    v69 = CGAffineTransformMakeTranslation(&t2, MidX, v68);
    v77 = OUTLINED_FUNCTION_12_11(v69, v70, v71, v72, v73, v74, v75, v76, v129, v136, v143, v150, v157, v163, v169, v173, v179, v183, v189, v196, v201, v208, v213, v220, *&t1.a, *&t1.c, *&t1.tx, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&v224.a);
    v86 = [v33 imageByApplyingTransform:{OUTLINED_FUNCTION_60_3(v77, v78, v79, v80, v81, v82, v83, v84, v130, v137, v144, v151, v158, v164, v170, v174, v180, v184, v190, v197, v202, v209, v214, v221, *&t1.a, *&t1.b, *&t1.c, *&t1.d, *&t1.tx, *&t1.ty, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&v224.a, *&v224.c, v85).n128_f64[0]}];
    [v33 extent];
    v88 = *&v145 / v87;
    [v33 extent];
    v90 = a16 / v89;
    if (v88 <= v90)
    {
      v88 = a16 / v89;
    }

    *&v224.a = *&v159[32];
    *&v224.c = *&v159[16];
    *&v224.tx = *v159;
    [v33 extent];
    v91 = -CGRectGetMidX(v232);
    [v33 extent];
    v92 = CGRectGetMidY(v233);
    CGAffineTransformMakeTranslation(&t2, v91, -v92);
    *&t1.a = *&v159[32];
    *&t1.c = *&v159[16];
    *&t1.tx = *v159;
    CGAffineTransformConcat(&v224, &t1, &t2);
    v93 = CGAffineTransformMakeScale(&t1, v88, v88);
    OUTLINED_FUNCTION_65(v93, v94, v95, v96, v97, v98, v99, v100, v131, v138, v145, v152, *v159, *&v159[8], *&v159[24], *&v159[40], v191, v203, v215, *&t1.a, *&t1.b, *&t1.c, *&t1.d, *&t1.tx, *&t1.ty, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&v224.a, *&v224.c, *&v224.tx);
    v224 = t2;
    [v33 extent];
    v101 = CGRectGetMidX(v234);
    [v33 extent];
    v102 = CGRectGetMidY(v235);
    v103 = CGAffineTransformMakeTranslation(&t1, v101, v102);
    OUTLINED_FUNCTION_65(v103, v104, v105, v106, v107, v108, v109, v110, v132, v139, v146, v153, v160, v165, v175, v185, v192, v204, v216, *&t1.a, *&t1.b, *&t1.c, *&t1.d, *&t1.tx, *&t1.ty, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&v224.a, *&v224.c, *&v224.tx);
    v224 = t2;
    v111 = [v33 imageByApplyingTransform:&t2];
    [v86 imageByCompositingOverImage:v111];
    [OUTLINED_FUNCTION_111() extent];
    OUTLINED_FUNCTION_76_0();
    [v111 extent];
    OUTLINED_FUNCTION_8_3();
    v112 = OUTLINED_FUNCTION_13_11();
    v121 = psn_imageWithBlurredEdges(v113, 0, v112, v114, v115, v116, v117, v118, v119, v120, 0.0, 0.5);
    v122 = [v33 colorSpace];
    v123 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:a3];
    [v123 setColorSpace:v122];
    v124 = *(v28 + 984);
    [v20 extent];
    v125 = [v124 startTaskToRender:v121 fromRect:v123 toDestination:0 atPoint:? error:?];
    t2.a = 0.0;
    return [v125 waitUntilCompletedAndReturnError:&t2];
  }

  return result;
}

- (int32x2_t)_cameraTransitionPool
{
  if (result)
  {
    v1 = result;
    result = result[120];
    if (!result)
    {
      v8.i32[0] = [OUTLINED_FUNCTION_131() width];
      v8.i32[1] = [OUTLINED_FUNCTION_131() height];
      FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v8, v1[17].i32[0]);
      v2 = [OUTLINED_FUNCTION_131() pixelFormat];
      if (v2 == 1882468912)
      {
        v3 = 2016686640;
      }

      else
      {
        v3 = v2;
      }

      v4 = [OUTLINED_FUNCTION_131() colorSpaceProperties];
      v5 = +[BWMemoryPool sharedMemoryPool];
      v6 = v8;
      v7 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v7 setWidth:FigCaptureRoundFloatToMultipleOf(2, v6.i32[0])];
      [(BWVideoFormatRequirements *)v7 setHeight:FigCaptureRoundFloatToMultipleOf(2, v6.i32[1])];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
      [OUTLINED_FUNCTION_8() setSupportedPixelFormats:?];
      v10 = [MEMORY[0x1E696AD98] numberWithInt:v4];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
      [OUTLINED_FUNCTION_8() setSupportedColorSpaceProperties:?];
      v9 = v7;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
      v1[120] = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?], 3, @"BWPreviewStitcherNode camera transition pool", v5);
      v1[122] = v8;
      return v1[120];
    }
  }

  return result;
}

- (uint64_t)_renderCameraTransitionRampToPixelBuffer:(__CVBuffer *)a3 bounds:(__CVBuffer *)a4 withWiderCameraPixelBuffer:(int)a5 narrowerCameraPixelBuffer:(int)a6 zoomingIn:(int)a7 progress:(int)a8 narrowerCameraBounds:(double)a9 narrowerCameraShift:(double)a10 featherEdges:(double)a11 rampCameraTransition:(double)a12 renderEnhancedFeathering:(float)a13 narrowerCameraEdgeExpansionRamp:(double)a14 qsubToQsumEdgeOpacityRamp:(double)a15 qsubToQsumEdgeOpacityRampFromProgress:(double)a16 renderBrightnessCompensation:(double)a17
{
  if (result)
  {
    v29 = result;
    [(BWPreviewStitcherNode *)result _initCameraTransitionCIContextWithColorManagementEnabled:?];
    v71 = *MEMORY[0x1E695F9C0];
    v72 = MEMORY[0x1E695E118];
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v31 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a3 options:v30];
    v32 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a4 options:v30];
    v33 = [v32 colorSpace];
    v63 = a12;
    v34 = CVPixelBufferGetHeight(a3) - a12;
    Height = CVPixelBufferGetHeight(a4);
    v36 = v34 - a10;
    if (a8)
    {
      v37 = Height - a20 - a18;
    }

    else
    {
      v37 = Height - a20;
    }

    if (a8)
    {
      v38 = v36;
    }

    else
    {
      v38 = v34;
    }

    v39 = [v32 imageByCroppingToRect:{a17, v37, a19, a20}];
    CGAffineTransformMakeTranslation(&v70, a21, -a22);
    v40 = [v39 imageByApplyingTransform:&v70];
    if (a26)
    {
      LODWORD(v41) = 1.0;
      *&v42 = a13;
      if (a7)
      {
        v45 = a13;
      }

      else
      {
        v45 = 1.0;
      }

      if ((a5 & 1) != 0 || (*(v29 + 331) & 1) != 0 || *(v29 + 1024))
      {
        v31 = [(BWPreviewStitcherNode *)v29 _applyBrightnessCompensationToImage:v31 referenceImage:v40 bounds:v41 compensationLevel:v42, v43, v44, v45];
      }

      else
      {
        [(BWPreviewStitcherNode *)v29 _applyBrightnessCompensationToImage:v40 referenceImage:v31 bounds:v41 compensationLevel:v42, v43, v44, v45];
      }
    }

    OUTLINED_FUNCTION_33();
    if (v46)
    {
      [MEMORY[0x1E695F610] redColor];
      [OUTLINED_FUNCTION_4() imageWithColor:?];
    }

    if (a8)
    {
      v47 = a6;
      v48 = a19;
      if ((a7 & ~a6 & 1) == 0)
      {
        v49 = v63;
        if (v63 > a20)
        {
          OUTLINED_FUNCTION_33();
          if (v46)
          {
            v50 = OUTLINED_FUNCTION_36_4();
            [(BWPreviewStitcherNode *)v51 _rectangularFeatheredImageWithNarrowerCameraImage:v52 widerCameraImage:v53 narrowerCameraClipRect:a5 zoomingIn:0 progress:a23 rampCameraTransition:v50 narrowerCameraEdgeExpansionRamp:v54, a19, a20, a13];
            v55 = OUTLINED_FUNCTION_36_4();
            [v56 imageByCroppingToRect:v55];
          }
        }

        goto LABEL_28;
      }
    }

    else
    {
      v47 = a6;
      v48 = a19;
    }

    v49 = v63;
LABEL_28:
    v57 = OUTLINED_FUNCTION_36_4();
    v61 = [(BWPreviewStitcherNode *)v58 _featheredImageWithNarrowerCameraImage:v59 widerCameraImage:v31 narrowerCameraClipRect:a5 widerCameraClipRect:v47 zoomingIn:a7 progress:a8 featherEdges:a23 rampCameraTransition:v57 renderEnhancedFeathering:v60 narrowerCameraEdgeExpansionRamp:v48 qsubToQsumEdgeOpacityRamp:a20 qsubToQsumEdgeOpacityRampFromProgress:a9, v38, a11, v49, a13, a24, a25];
    v62 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:a2];
    [v62 setColorSpace:v33];
    v70.a = 0.0;
    return [objc_msgSend(*(v29 + 984) startTaskToRender:v61 fromRect:v62 toDestination:0 atPoint:a9 error:{v38, a11, v49, a9, v38), "waitUntilCompletedAndReturnError:", &v70}];
  }

  return result;
}

- (uint64_t)_renderHDRPixelBufferToSDR:(uint64_t)a3 toOutputPixelBuffer:(float)a4 progress:
{
  if (result)
  {
    v7 = result;
    v9 = MEMORY[0x1E695E118];
    v10 = *MEMORY[0x1E695FA28];
    v28[0] = *MEMORY[0x1E695F9C0];
    v8 = v28[0];
    v28[1] = v10;
    v29[0] = MEMORY[0x1E695E118];
    v29[1] = MEMORY[0x1E695E118];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v26 = v8;
    v27 = v9;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v13 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a2 options:v12];
    [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a2 options:v11];
    v14 = OUTLINED_FUNCTION_111();
    Width = CVPixelBufferGetWidth(v14);
    Height = CVPixelBufferGetHeight(a2);
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_55_2();
    v21 = [(BWPreviewStitcherNode *)v7 _featheredImageWithNarrowerCameraImage:v11 widerCameraImage:v13 narrowerCameraClipRect:0 widerCameraClipRect:0 zoomingIn:1 progress:0 featherEdges:0 rampCameraTransition:v17 renderEnhancedFeathering:v18 narrowerCameraEdgeExpansionRamp:Width qsubToQsumEdgeOpacityRamp:Height qsubToQsumEdgeOpacityRampFromProgress:v19, v20, Width, Height, a4, 0, 0.0];
    v22 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:a3];
    [v13 colorSpace];
    [OUTLINED_FUNCTION_4() setColorSpace:?];
    v25 = 0;
    v23 = OUTLINED_FUNCTION_58_4();
    return [objc_msgSend(v24 startTaskToRender:v21 fromRect:v22 toDestination:0 atPoint:v23) error:{"waitUntilCompletedAndReturnError:", &v25}];
  }

  return result;
}

- (void)_initCameraTransitionCIContextWithColorManagementEnabled:(void *)a1
{
  if (a1 && !a1[123])
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E695F910]];
    [v9 setObject:v4 forKeyedSubscript:*MEMORY[0x1E695F870]];
    [v9 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E695F7F0]];
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695F848]];
    [+[BWMemoryPool sharedMemoryPool](BWMemoryPool poolIdentifier];
    [v9 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithUnsignedLongLong:"), @"kCIContextIOSurfaceMemoryPoolID"}];
    if ((a2 & 1) == 0)
    {
      v5 = [MEMORY[0x1E695DFB0] null];
      [v9 setObject:v5 forKeyedSubscript:*MEMORY[0x1E695F868]];
    }

    v6 = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
    v7 = a1[231];
    if (!v7)
    {
      v7 = OUTLINED_FUNCTION_132_0();
      a1[231] = v7;
    }

    [v6 setCompletionQueue:v7];
    v8 = a1[232];
    if (!v8)
    {
      v8 = OUTLINED_FUNCTION_132_0();
      a1[232] = v8;
    }

    [v6 setSubmissionQueue:v8];
    a1[123] = [MEMORY[0x1E695F620] contextWithMTLCommandQueue:v6 options:v9];
  }
}

- (double)_scaleFactorAppliedForPixelBuffer:(void *)a3 usedSourceRect:(double)result primaryCaptureRectAspectRatio:(double)a5 metadata:(double)a6
{
  if (!a1)
  {
    return 0.0;
  }

  if (a2)
  {
    v15 = *ymmword_1AD046EE0;
    CGRectMakeWithDictionaryRepresentation([a3 objectForKeyedSubscript:*off_1E798A5C8], &v15);
    CVPixelBufferGetWidth(a2);
    CVPixelBufferGetHeight(a2);
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v15.origin.x, v15.origin.y, v15.size.width, v15.size.height);
    result = 1.0;
    if (v11 / v12 < a8)
    {
      result = a8 / (v11 / v12);
    }

    v13 = a7 * result;
    v14 = vabdd_f64(a7 * result, v12);
    LODWORD(result) = 1.0;
    if (v14 > 2.0)
    {
      result = v13 / v12;
      *&result = v13 / v12;
    }
  }

  else
  {
    LODWORD(result) = 1.0;
  }

  return result;
}

- (void)_callDelegateWithAppliedWiderCameraShift:(CVPixelBufferRef)a3 narrowerCameraShift:(int)a4 widerCameraScaleFactor:(int)a5 narrowerCameraScaleFactor:(int)a6 widerCameraPixelBuffer:(int)a7 narrowerCameraPixelBuffer:(int)a8 widerCameraNondisruptiveSwitchingZoomFactor:(uint64_t)a9 narrowerCameraNondisruptiveSwitchingZoomFactor:(uint64_t)a10 widerCameraPortType:narrowerCameraPortType:inSuperWideMacroMode:widerCameraShiftAtBaseZoom:
{
  if (!a1 || (*(a1 + 1746) & 1) != 0 || (*(a1 + 472) & 1) != 0)
  {
    OUTLINED_FUNCTION_127();
  }

  else
  {
    if (pixelBuffer)
    {
      CVPixelBufferGetWidth(pixelBuffer);
      CVPixelBufferGetHeight(pixelBuffer);
    }

    if (a3)
    {
      CVPixelBufferGetWidth(a3);
      CVPixelBufferGetHeight(a3);
    }

    OUTLINED_FUNCTION_127();

    [v12 previewStitcher:? didApplyWiderCameraShift:? widerCameraScaleFactor:? forWiderCameraPortType:? narrowerCameraShift:? narrowerCameraScaleFactor:? forNarrowerCameraPortType:? inSuperWideMacroMode:? widerCameraShiftAtBaseZoom:?];
  }
}

- (void)_updateUprightExifOrientationOnSampleBufferIfNeeded:(uint64_t)a1
{
  if (a1)
  {
    v4 = [OUTLINED_FUNCTION_71_0(a2) intValue];
    if (*(a1 + 136) || (*(a1 + 140) & 1) != 0)
    {
      v5 = 0;
      if (!v4)
      {
        return;
      }
    }

    else
    {
      v5 = *(a1 + 141) ^ 1;
      if (!v4)
      {
        return;
      }
    }

    if ((v5 & 1) == 0)
    {
      v12 = 0;
      v6 = FigCaptureRotationDegreesAndMirroringFromExifOrientation(v4, &v12);
      v11 = 0;
      v7 = ptn_rotationDegreesAndMirroringFromLiveConfiguration(*(a1 + 136), *(a1 + 140), *(a1 + 141), &v11);
      if (v12 != v11 && (v7 == 270 || v7 == 90))
      {
        v6 += 180;
      }

      v8 = v12 != v11;
      v9 = FigCaptureNormalizeAngle(v6 - v7);
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{FigCaptureExifOrientationFromRotationDegreesAndMirroring(v9, v8)}];
      CMSetAttachment(a2, @"UprightExifOrientation", v10, 1u);
    }
  }
}

- (uint64_t)_featheredImageWithNarrowerCameraImage:(uint64_t)a3 widerCameraImage:(int)a4 narrowerCameraClipRect:(int)a5 widerCameraClipRect:(int)a6 zoomingIn:(int)a7 progress:(void *)a8 featherEdges:(double)a9 rampCameraTransition:(double)a10 renderEnhancedFeathering:(CGFloat)a11 narrowerCameraEdgeExpansionRamp:(CGFloat)a12 qsubToQsumEdgeOpacityRamp:(double)a13 qsubToQsumEdgeOpacityRampFromProgress:(double)a14
{
  if (!a1)
  {
    return 0;
  }

  if (!a8)
  {
    if (a4)
    {
      v35 = *(a1 + 1100);
      v36 = *(a1 + 1108);
      if ((a7 & 1) == 0)
      {
        v39 = *(a1 + 1104);
        v40 = *(a1 + 1112);
        goto LABEL_29;
      }

      v37 = &OBJC_IVAR___BWPreviewStitcherNode__zoomInFeatheringInnerRadiusInterim;
      v38 = &OBJC_IVAR___BWPreviewStitcherNode__zoomInFeatheringOuterRadiusInterim;
    }

    else
    {
      v35 = *(a1 + 1116);
      v36 = *(a1 + 1124);
      v37 = &OBJC_IVAR___BWPreviewStitcherNode__zoomOutFeatheringInnerRadiusEnd;
      v38 = &OBJC_IVAR___BWPreviewStitcherNode__zoomOutFeatheringOuterRadiusEnd;
    }

    v39 = *(a1 + *v37);
    v40 = *(a1 + *v38);
    if (a18 && a7)
    {
      v41 = a19;
      if (a17 <= 1.0)
      {
        v42 = a17;
      }

      else
      {
        v42 = 1.0;
      }

      if (v42 < 0.0)
      {
        v42 = 0.0;
      }

      v43 = v42 + 1.0;
      if (a19 > 1.0)
      {
        v41 = 1.0;
      }

      if (v41 < 0.0)
      {
        v41 = 0.0;
      }

      v32 = (v35 + ((v39 - v35) * v41)) / v43;
      v34 = (v36 + ((v40 - v36) * v41)) / v43;
      goto LABEL_34;
    }

LABEL_29:
    v44 = 1.0;
    if (a17 <= 1.0)
    {
      v44 = a17;
    }

    if (v44 < 0.0)
    {
      v44 = 0.0;
    }

    v32 = v35 + ((v39 - v35) * v44);
    v34 = v36 + ((v40 - v36) * v44);
    goto LABEL_34;
  }

  v27 = *(a1 + 1132);
  v28 = *(a1 + 1140);
  v29 = *(a1 + 1136);
  v30 = *(a1 + 1144);
  [a8 currentValue];
  if (v31 > 1.0)
  {
    v31 = 1.0;
  }

  if (v31 < 0.0)
  {
    v31 = 0.0;
  }

  v32 = v27 + ((v28 - v27) * v31);
  [a8 currentValue];
  if (v33 > 1.0)
  {
    v33 = 1.0;
  }

  if (v33 < 0.0)
  {
    v33 = 0.0;
  }

  v34 = v29 + ((v30 - v29) * v33);
LABEL_34:
  v168 = v34;
  if (a6)
  {
    v45 = 1.0 - a17;
    if (a4)
    {
      v45 = a17;
    }

    if (a5)
    {
      v46 = 0.0;
    }

    else
    {
      v46 = v45;
    }

    v47 = v45;
  }

  else
  {
    v47 = 1.0;
    v46 = 0.0;
    if (a18 && a7)
    {
      [a18 currentValue];
      v46 = v48;
    }
  }

  v49 = [MEMORY[0x1E695F648] radialGradientFilter];
  v231.origin.x = OUTLINED_FUNCTION_120();
  v231.size.width = a11;
  v231.size.height = a12;
  MidX = CGRectGetMidX(v231);
  v232.origin.x = OUTLINED_FUNCTION_120();
  v232.size.width = a11;
  v232.size.height = a12;
  [v49 setCenter:{MidX, CGRectGetMidY(v232)}];
  if (a11 >= a12)
  {
    v51 = a12;
  }

  else
  {
    v51 = a11;
  }

  v52 = v51 * v32 * 0.5;
  *&v52 = v52;
  [v49 setRadius0:v52];
  v53 = v51 * v168 * 0.5;
  *&v53 = v53;
  [v49 setRadius1:v53];
  v54 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  [MEMORY[0x1E695F610] colorWithRed:v54 green:v47 blue:v47 colorSpace:v47];
  [OUTLINED_FUNCTION_7() setColor0:?];
  [MEMORY[0x1E695F610] colorWithRed:v54 green:v46 blue:v46 colorSpace:v46];
  [OUTLINED_FUNCTION_7() setColor1:?];
  v55 = [v49 outputImage];
  CGColorSpaceRelease(v54);
  v56 = fmax(a11 / v51 * 0.949999988, 1.0);
  v57 = fmax(a12 / v51 * 0.949999988, 1.0);
  v159 = *(MEMORY[0x1E695EFD0] + 16);
  v228 = *MEMORY[0x1E695EFD0];
  v169 = v228;
  v229 = v159;
  v230 = *(MEMORY[0x1E695EFD0] + 32);
  v150 = v230;
  [v49 center];
  v59 = -v58;
  [v49 center];
  Translation = CGAffineTransformMakeTranslation(&v227, v59, -v60);
  OUTLINED_FUNCTION_128_1(Translation, v62, v63, v64, v65, v66, v67, v68, v150, v116, v121, *&a13, *&a14, *&a15, *&a16, v150.n128_i64[0], v150.n128_i64[1], v159, *(&v159 + 1), v169, *(&v169 + 1), *&a11, *&a12, *&a10, *&a9, v202, v207, v210, v215, v218, v223, v169, *(&v169 + 1), v159, *(&v159 + 1), v69, *&v226.tx);
  Scale = CGAffineTransformMakeScale(&v226, v56, v57);
  v78 = OUTLINED_FUNCTION_12_11(Scale, v71, v72, v73, v74, v75, v76, v77, v117, v122, v127, v133, v139, v145, v151, v155, v160, v164, v170, v174, v179, v185, v191, v197, v203, v211, v219, *&v226.a, *&v226.b, *&v226.c, *&v226.d, *&v226.tx, *&v226.ty, *&v227.a);
  [v49 center];
  v88 = v87;
  [v49 center];
  v90 = CGAffineTransformMakeTranslation(&v226, v88, v89);
  v98 = OUTLINED_FUNCTION_12_11(v90, v91, v92, v93, v94, v95, v96, v97, v119, v124, v129, v135, v141, v147, v153, v157, v162, v166, v172, v176, v181, v187, v193, v199, v205, v213, v221, *&v226.a, *&v226.b, *&v226.c, *&v226.d, *&v226.tx, *&v226.ty, *&v227.a);
  [v55 imageByApplyingTransform:{OUTLINED_FUNCTION_60_3(v98, v99, v100, v101, v102, v103, v104, v105, v120, v125, v130, v136, v142, v148, v154, v158, v163, v167, v173, v177, v182, v188, v194, v200, v206, v209, v214, v217, v222, v225, *&v226.a, *&v226.b, *&v226.c, *&v226.d, *&v226.tx, *&v226.ty, *&v227.a, *&v227.c, v106).n128_f64[0]}];
  v107 = OUTLINED_FUNCTION_120();
  v109 = [v108 imageByCroppingToRect:v107];
  v110 = [MEMORY[0x1E695F648] blendWithMaskFilter];
  [v110 setInputImage:a2];
  [v110 setMaskImage:v109];
  [v110 setBackgroundImage:a3];
  v111 = [v110 outputImage];
  OUTLINED_FUNCTION_33();
  if (v112)
  {
    OUTLINED_FUNCTION_33();
    if (v112)
    {
      if ((*(a1 + 1572) & 1) == 0)
      {
        v113 = *(a1 + 1628);
        [*(a1 + 1536) currentValue];
        return psn_imageWithBlurredEdges(v111, *(a1 + 1632), v201, v195, v183, v189, v131, v137, v143, v149, v113, v114);
      }
    }
  }

  return v111;
}

- (void)_coreImageMetalLibraryURL
{
  if (result)
  {
    v1 = result;
    result = result[124];
    if (!result)
    {
      objc_opt_class();
      result = [objc_msgSend(OUTLINED_FUNCTION_4() "bundleForClass:{"URLForResource:withExtension:", @"BWPreviewStitcherNode.ci", @"metallib"}")];
      v1[124] = result;
    }
  }

  return result;
}

- (uint64_t)_applyBrightnessCompensationToImage:(void *)a3 referenceImage:(double)a4 bounds:(double)a5 compensationLevel:(double)a6
{
  if (!a1)
  {
    return 0;
  }

  v12 = [(BWPreviewStitcherNode *)a1 _coreImageMetalLibraryURL];
  v42 = 0;
  [MEMORY[0x1E695F618] cachedKernelWithFunctionName:@"TwoY" fromMetalLibrary:v12 error:&v42];
  if (!v42)
  {
    [MEMORY[0x1E695F618] cachedKernelWithFunctionName:@"ComputeGamma" fromMetalLibrary:v12 error:&v42];
    if (!v42)
    {
      [MEMORY[0x1E695F618] cachedKernelWithFunctionName:@"AdjustGamma" fromMetalLibrary:v12 error:&v42];
      if (!v42)
      {
        memset(&v41, 0, sizeof(v41));
        CGAffineTransformMakeScale(&v41, 0.25, 0.25);
        v13 = [a2 imageByApplyingTransform:OUTLINED_FUNCTION_88().n128_f64[0] highQualityDownsample:?];
        v14 = [a3 imageByApplyingTransform:OUTLINED_FUNCTION_88().n128_f64[0] highQualityDownsample:?];
        [v13 extent];
        OUTLINED_FUNCTION_21_5();
        [v14 extent];
        OUTLINED_FUNCTION_8_3();
        OUTLINED_FUNCTION_32_2();
        v44 = CGRectIntersection(v43, v45);
        x = v44.origin.x;
        y = v44.origin.y;
        width = v44.size.width;
        height = v44.size.height;
        v44.origin.x = *(a1 + 1188);
        v19 = v44.size.width * v44.origin.x;
        v44.origin.x = v44.size.height * v44.origin.x;
        v20 = v44.origin.x;
        v40[0] = v13;
        v40[1] = v14;
        *&v44.origin.x = v44.size.width;
        v40[2] = [MEMORY[0x1E696AD98] numberWithFloat:v44.origin.x];
        *&v21 = height;
        v40[3] = [MEMORY[0x1E696AD98] numberWithFloat:v21];
        *&v22 = x;
        v40[4] = [MEMORY[0x1E696AD98] numberWithFloat:v22];
        *&v23 = y;
        v40[5] = [MEMORY[0x1E696AD98] numberWithFloat:v23];
        *&v24 = v19;
        v40[6] = [MEMORY[0x1E696AD98] numberWithFloat:v24];
        *&v25 = v20;
        v40[7] = [MEMORY[0x1E696AD98] numberWithFloat:v25];
        [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:8];
        v26 = [OUTLINED_FUNCTION_7() applyWithExtent:x arguments:{y, width, height}];
        v38 = *MEMORY[0x1E695FAA8];
        v27 = MEMORY[0x1E695F688];
        [v26 extent];
        v39 = [v27 vectorWithCGRect:?];
        v28 = [v26 imageByApplyingFilter:@"CIAreaAverage" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v39, &v38, 1)}];
        *&width = width * height / (width * height - (width + v19 * -2.0) * (height + v20 * -2.0));
        [v28 extent];
        OUTLINED_FUNCTION_76_0();
        v37[0] = v28;
        LODWORD(v29) = LODWORD(width);
        v37[1] = [MEMORY[0x1E696AD98] numberWithFloat:v29];
        [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
        OUTLINED_FUNCTION_8();
        v30 = OUTLINED_FUNCTION_13_11();
        v32 = [objc_msgSend(v31 applyWithExtent:v30) arguments:"imageByClampingToExtent"];
        [a2 extent];
        OUTLINED_FUNCTION_21_5();
        v36[0] = a2;
        v36[1] = v32;
        *&v33 = a8;
        v36[2] = [MEMORY[0x1E696AD98] numberWithFloat:v33];
        [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_32_2();
        return [v34 applyWithExtent:? arguments:?];
      }
    }
  }

  return a2;
}

- (uint64_t)_rectangularFeatheredImageWithNarrowerCameraImage:(uint64_t)a3 widerCameraImage:(int)a4 narrowerCameraClipRect:(int)a5 zoomingIn:(void *)a6 progress:(CGFloat)a7 rampCameraTransition:(CGFloat)a8 narrowerCameraEdgeExpansionRamp:(CGFloat)a9
{
  if (result)
  {
    v20 = result;
    if (a11 <= 1.0)
    {
      v21 = a11;
    }

    else
    {
      v21 = 1.0;
    }

    v22 = &OBJC_IVAR___BWPreviewStitcherNode__cameraTransitionEdgeFeatheringZoomOutStartSigma;
    if (v21 < 0.0)
    {
      v21 = 0.0;
    }

    if (a4)
    {
      v22 = &OBJC_IVAR___BWPreviewStitcherNode__cameraTransitionEdgeFeatheringZoomInStartSigma;
      v23 = &OBJC_IVAR___BWPreviewStitcherNode__cameraTransitionEdgeFeatheringZoomInEndSigma;
    }

    else
    {
      v23 = &OBJC_IVAR___BWPreviewStitcherNode__cameraTransitionEdgeFeatheringZoomOutEndSigma;
    }

    v24 = *(result + *v22);
    v25 = v24 + ((*(result + *v23) - v24) * v21);
    if (a6)
    {
      [a6 currentValue];
      v25 = OUTLINED_FUNCTION_46_3(v26) * v25;
    }

    v27 = v25 * *(v20 + 1168);
    v28 = 1.0 - a11;
    if (a4)
    {
      v28 = a11;
    }

    v29 = v28;
    v30 = [MEMORY[0x1E695F648] blurredRectangleGeneratorFilter];
    v37.origin.x = a7;
    v37.origin.y = a8;
    v37.size.width = a9;
    v37.size.height = a10;
    v38 = CGRectInset(v37, v27, v27);
    [v30 setExtent:{v38.origin.x, v38.origin.y, v38.size.width, v38.size.height}];
    *&v31 = v25;
    [v30 setSigma:v31];
    v32 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
    v33 = 1.0;
    if (a5)
    {
      v33 = v29;
    }

    [v30 setColor:{objc_msgSend(MEMORY[0x1E695F610], "colorWithRed:green:blue:colorSpace:", v32, v33, v33, v33)}];
    v34 = [v30 outputImage];
    if (v32)
    {
      CFRelease(v32);
    }

    v35 = [MEMORY[0x1E695F648] blendWithMaskFilter];
    [v35 setInputImage:a2];
    [v35 setMaskImage:v34];
    [v35 setBackgroundImage:a3];

    return [v35 outputImage];
  }

  return result;
}

void __49__BWPreviewStitcherNode__preheatCIRenderingAsync__block_invoke(uint64_t a1)
{
  v10 = objc_autoreleasePoolPush();
  v11 = [(int32x2_t *)[(BWPreviewStitcherNode *)*(a1 + 32) _cameraTransitionPool] newPixelBuffer];
  v12 = [(int32x2_t *)[(BWPreviewStitcherNode *)*(a1 + 32) _cameraTransitionPool] newPixelBuffer];
  v13 = [(int32x2_t *)[(BWPreviewStitcherNode *)*(a1 + 32) _cameraTransitionPool] newPixelBuffer];

  *(*(a1 + 32) + 968) = 0;
  v14 = *(a1 + 32);
  if (v14[1291] == 1 && v14[1833] == 1)
  {
    [(BWPreviewStitcherNode *)v14 _renderHDRPixelBufferToSDR:v12 toOutputPixelBuffer:v13 progress:0.5];
    v14 = *(a1 + 32);
  }

  if (v14[1290] == 1)
  {
    VTFillPixelBufferWithBlack();
    VTFillPixelBufferWithBlack();
    VTFillPixelBufferWithBlack();
  }

  v15 = psn_pixelBufferRect(v13);
  FigCaptureMetadataUtilitiesScaleRect2D(v15, v16, v17, v18, 0.9);
  OUTLINED_FUNCTION_2_3();
  v19 = psn_pixelBufferRect(v13);
  FigCaptureMetadataUtilitiesScaleRect2D(v19, v20, v21, v22, 0.8);
  OUTLINED_FUNCTION_26_2();
  v23 = OUTLINED_FUNCTION_3();
  acpr_conformRectForMSR420vf(v23, v24, v25, v26);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_73();
  acpr_conformRectForMSR420vf(v27, v28, v29, v30);
  OUTLINED_FUNCTION_26_2();
  v31 = *(a1 + 32);
  if (v31)
  {
    v32 = *(v31 + 1185);
  }

  else
  {
    v32 = 0;
  }

  v77 = v32 & 1;
  v75 = *MEMORY[0x1E695EFF8];
  v76 = *(MEMORY[0x1E695EFF8] + 8);
  v33 = OUTLINED_FUNCTION_3();
  [(BWPreviewStitcherNode *)v34 _renderCameraTransitionRampToPixelBuffer:v13 bounds:v11 withWiderCameraPixelBuffer:v12 narrowerCameraPixelBuffer:1 zoomingIn:1 progress:1 narrowerCameraBounds:v35 narrowerCameraShift:v33 featherEdges:v36 rampCameraTransition:v37 renderEnhancedFeathering:v38 narrowerCameraEdgeExpansionRamp:v39 qsubToQsumEdgeOpacityRamp:v40 qsubToQsumEdgeOpacityRampFromProgress:v41 renderBrightnessCompensation:v42, v5, v6, v7, v8, v75, v76, 0, 0, 0.0, v77];
  v43 = *(a1 + 32);
  if (*(v43 + 1656) == 1)
  {
    v44 = OUTLINED_FUNCTION_3();
    psn_blurPixelBufferBorder(v45, v46, v44, v47, v48, v49, v50);
    v43 = *(a1 + 32);
  }

  if (*(v43 + 1149) != 1)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v51 = OUTLINED_FUNCTION_3();
  v56 = FigCaptureMetadataUtilitiesScaleRect2D(v51, v52, v53, v54, v55);
  v73 = v57;
  v74 = v58;
  v71 = *&v56;
  v72 = v59;
  OUTLINED_FUNCTION_73();
  [(BWPreviewStitcherNode *)v60 _compensateForMissingFOVUsingPixelBuffer:v61 sourceRect:v13 destinationContainingRect:v62 destinationInsetRect:v63 outputPixelBuffer:v64, v65, v66, v67, v68, v69, v70, v1, v2, v3, v4, v71, v72, v73, v74];
  if (v11)
  {
LABEL_12:
    CFRelease(v11);
  }

LABEL_13:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  objc_autoreleasePoolPop(v10);
}

- (uint64_t)_cameraDisplayTransitionFrameCountForCameraFallbackChange:(float)a3 currentFrameRate:
{
  if (!a1)
  {
    return 0;
  }

  v6 = [a1 displaysWidestCameraOnly];
  if (a2)
  {
    if (*(a1 + 1575) != 1 || (*(a1 + 944) & 1) != 0 || *(a1 + 1572) == *(a1 + 1544))
    {
      if (*(a1 + 1491) == 1)
      {
        v7 = 22;
        if (*(a1 + 944) == 1)
        {
          if (*(a1 + 1488) == *(a1 + 1489))
          {
            v7 = 22;
          }

          else
          {
            v7 = 15;
          }
        }
      }

      else
      {
        v7 = 22;
      }
    }

    else
    {
      v7 = 16;
    }

    if (*(a1 + 200) == 1 && ((v6 | *(a1 + 1572)) & 1) == 0)
    {
      v11 = *(a1 + 944) ^ 1;
    }

    else
    {
      v11 = 0;
    }

    if (*(a1 + 1488))
    {
      if (v11)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v11)
      {
LABEL_33:
        v13 = OUTLINED_FUNCTION_98_0();
        goto LABEL_34;
      }

      if (*(a1 + 944))
      {
        OUTLINED_FUNCTION_33();
        if (v12)
        {
          v13 = OUTLINED_FUNCTION_98_0();
          v20 = 1;
LABEL_34:
          v7 = [(BWPreviewStitcherNode *)v13 _scaleCameraTransitionFrameCount:v14 forCameraFallbackFromWideToTele:v20 recenteringShiftOffset:v15 recenteringStrength:v16 registrationShiftOffset:v17, v18, v19];
        }
      }
    }
  }

  else if ((*(a1 + 217) & 1) != 0 && *(a1 + 218) == 1 && *(a1 + 912) == *(a1 + 228))
  {
    v7 = 13;
  }

  else
  {
    v8 = *(a1 + 912);
    if (v8 == 0.0 || vabds_f32(1.0, *(a1 + 916) / v8) < 0.1)
    {
      OUTLINED_FUNCTION_123_0();
      OUTLINED_FUNCTION_44_3();
      v7 = (v9 + v10);
    }

    else
    {
      v7 = 9;
    }
  }

  if (a3 <= 0.0)
  {
    return v7;
  }

  OUTLINED_FUNCTION_33();
  if (!v12)
  {
    return v7;
  }

  v21 = OUTLINED_FUNCTION_33_5();

  return FigCaptureRoundFloatToMultipleOf(v21, v22);
}

- (unint64_t)_scaleCameraTransitionFrameCount:(int)a3 forCameraFallbackFromWideToTele:(double)a4 recenteringShiftOffset:(double)a5 recenteringStrength:(float)a6 registrationShiftOffset:(double)a7
{
  if (result)
  {
    v10 = (a8 - a5 / (1.0 - a6)) * (a8 - a5 / (1.0 - a6)) + (a7 - a4 / (1.0 - a6)) * (a7 - a4 / (1.0 - a6));
    v11 = sqrtf(v10);
    v12 = [objc_msgSend(objc_msgSend(*(result + 8) "primaryMediaProperties")];
    v13 = v11 / v12;
    v14 = 0.13;
    if (v13 <= 0.13)
    {
      v14 = v11 / v12;
    }

    if (v14 >= 0.035)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0.035;
    }

    if (a3)
    {
      if (v13 > 0.035)
      {
        v13 = 0.035;
      }

      if (v13 < 0.009)
      {
        v13 = 0.009;
      }

      v16 = v13 + -0.009;
      v17 = 0.026;
    }

    else
    {
      v16 = v15 + -0.035;
      v17 = 0.095;
    }

    return llroundf((((v16 / v17) * 1.3) + 1.0) * a2);
  }

  return result;
}

- (uint64_t)initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end